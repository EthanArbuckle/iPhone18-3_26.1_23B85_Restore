void sub_1006FFFB0(void *a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100865EA4();
  }

  *buf = *a2;
  LOWORD(v19) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  v7 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v17;
    v9 = __p[0];
    v10 = sub_10057E30C(a1, v6);
    v11 = __p;
    *buf = 136446722;
    if (v8 < 0)
    {
      v11 = v9;
    }

    v19 = v11;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from device %{public}s getHandleForDevice %d, linkHandle %d", buf, 0x18u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10057DFAC(a1, v6) && !sub_10057E30C(a1, v6))
  {
    v13 = sub_1002EFBAC(sub_1006FFEB8, a3, 1);
    if (!v13)
    {
      sub_10057E218(a1, v6, a3);
      sub_10057D9B0(a1, v6);
    }

    v14 = 1;
    goto LABEL_14;
  }

  v12 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", buf, 2u);
  }

  v13 = sub_1002EFBAC(sub_1006FFEB8, a3, 0);
  if (v13)
  {
    v14 = 0;
LABEL_14:
    v15 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865EB8(v14, v13, v15);
    }
  }
}

void sub_1007001FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100700220(void *a1, int a2, uint64_t a3)
{
  v5 = sub_10057E420(a1, a2);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, __p);
        v9 = v11 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v13 = v9;
        v14 = 1024;
        v15 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100865F58();
      }

      v8 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v6, v8);
    }

    sub_10057DA84(a1, v5, 0);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866060();
  }
}

_BYTE *sub_100700530(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  sub_1000216B4(&v17);
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = sub_10057E420(v2, v4);
  sub_100022214(&v17);
  if (!v5)
  {
    return sub_10002249C(&v17);
  }

  sub_1000BE6F8((v5 + 128), __p);
  if (v21 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x600u);
  if (v21 < 0)
  {
    operator delete(*__p);
  }

  Connection = acc_transportClient_createConnection();
  if (v7)
  {
    CFRelease(v7);
  }

  if (!Connection)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008660D8();
    }

    goto LABEL_21;
  }

  v16[5] = _NSConcreteStackBlock;
  v16[6] = 3221225472;
  v16[7] = sub_10070091C;
  v16[8] = &unk_100AEC180;
  v16[9] = v2;
  v16[10] = v5;
  Endpoint = acc_transportClient_createEndpoint();
  v10 = qword_100BCE8C8;
  if (!Endpoint)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10086609C();
    }

LABEL_21:
    sub_1000618AC(&v17);
    (*(*v2 + 80))(v2, v5);
    return sub_10002249C(&v17);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138412546;
    *&__p[4] = Connection;
    v19 = 2112;
    v20 = Endpoint;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[iAP CONNECTED] CONNUUID: %@ and ENDPOINTUUID: %@", __p, 0x16u);
  }

  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, v3);
  CFDictionarySetValue(*(v2 + 520), Connection, v11);
  CFRelease(v11);
  v12 = objc_opt_new();
  [v12 setConnectionUUID:Connection];

  [v12 setEndpointUUID:Endpoint];
  v13 = *(v2 + 528);
  v14 = [NSNumber numberWithUnsignedShort:*v3];
  [v13 setObject:v12 forKey:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100700980;
  v16[3] = &unk_100ADF8F8;
  v16[4] = v2;
  if (qword_100BC7058 != -1)
  {
    dispatch_once(&qword_100BC7058, v16);
  }

  return sub_10002249C(&v17);
}

uint64_t sub_10070091C(uint64_t a1, int a2, int a3, CFDataRef theData)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return sub_1003FD79C(v6 + 256, v5, BytePtr, Length, 1);
}

void sub_100700A04(id a1, __CFString *a2, BOOL a3)
{
  v3 = a3;
  v5 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "acc_transportClient_setConnectionAuthStatusDidChangeHandler - connUID:%@", &v6, 0xCu);
  }

  if (qword_100B54EC0 != -1)
  {
    sub_100866114();
  }

  sub_100700AE0(off_100B54EB8, a2, v3);
}

void sub_100700AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "authStatusDidChange - connUUID: %@", &v14, 0xCu);
  }

  v7 = sub_100701640(a1, a2);
  v8 = sub_10057E420(a1, v7);
  if (v8)
  {
    v9 = a1[66];
    v10 = [NSNumber numberWithUnsignedShort:v7];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v11 endpointUUID];
    v13 = acc_transportClient_copyPropertiesForEndpointWithUUID();

    if (v13)
    {
      LOBYTE(v14) = 0;
      if (sub_100701784(v13, &v14))
      {
        if (qword_100B547A0 != -1)
        {
          sub_10086613C();
        }

        (*(*off_100B54798 + 240))(off_100B54798, v8, a3, v14);
      }

      CFRelease(v13);
    }
  }
}

void sub_100700CB8(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  if (sub_100700D70(*(a1 + 32), a2))
  {
    if (qword_100B54EC0 != -1)
    {
      sub_100865CB8();
    }

    v9 = off_100B54EB8;

    sub_100700E2C(v9, v8, a3, a4, a5);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866164();
  }
}

uint64_t sub_100700D70(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 512);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007018C4;
    block[3] = &unk_100AE0EB8;
    block[5] = a1;
    block[6] = a2;
    block[4] = &v6;
    dispatch_sync(v2, block);
    v3 = *(v7 + 12);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_100700E2C(void *a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v8 = sub_100701640(a1, a5);
  result = sub_10057E420(a1, v8);
  if (a3)
  {
    v10 = result;
    if (result)
    {
      result = acc_transportClient_isConnectionAuthenticated();
      if (result)
      {
        result = sub_100701784(a4, 0);
        if ((result & 1) == 0)
        {
          v11 = 0;
          result = sub_100701784(a3, &v11);
          if (result)
          {
            if (qword_100B547A0 != -1)
            {
              sub_10086613C();
            }

            return (*(*off_100B54798 + 240))(off_100B54798, v10, 1, v11);
          }
        }
      }
    }
  }

  return result;
}

void sub_100700F08(void *a1, int a2)
{
  v2 = a2;
  v4 = sub_10057E420(a1, a2);
  sub_10057E710(a1, v4, 0);
  if (v4)
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    sub_1000C2364(v4, &v10 + 1, &v10, &v9, &v8);
    if (v10 == 7563 && (v9 & 0xFFFFFFFD) == 0xC008)
    {
      if (qword_100B50910 != -1)
      {
        sub_100865F80();
      }

      sub_1005BC588(off_100B50908, 0, (v4[128] << 40) | (v4[129] << 32) | (v4[130] << 24) | (v4[131] << 16) | (v4[132] << 8) | v4[133]);
    }
  }

  sub_1003FD414((a1 + 32), v4);
  v5 = a1[64];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100701064;
  v6[3] = &unk_100AEB940;
  v6[4] = a1;
  v7 = v2;
  dispatch_async(v5, v6);
}

void sub_100701064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 528);
  v4 = [NSNumber numberWithUnsignedShort:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 connectionUUID];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[iAP DISCONNECTED] connectionUUID: %@", &v13, 0xCu);
  }

  if (v5)
  {
    v8 = [v5 connectionUUID];
    acc_transportClient_destroyConnection();

    v9 = *(v2 + 520);
    v10 = [v5 connectionUUID];
    CFDictionaryRemoveValue(v9, v10);

    v11 = *(v2 + 528);
    v12 = [NSNumber numberWithUnsignedShort:*(a1 + 40)];
    [v11 removeObjectForKey:v12];
  }
}

void sub_10070121C(void *a1, int a2, const UInt8 *a3, unsigned int a4)
{
  v6 = a2;
  if (sub_10057E420(a1, a2))
  {
    v8 = CFDataCreate(kCFAllocatorDefault, a3, a4);
    v9 = a1[64];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100701300;
    block[3] = &unk_100AE0EF8;
    v11 = v6;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v9, block);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008661D8();
  }
}

void sub_100701300(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 528);
  v3 = [NSNumber numberWithUnsignedShort:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 endpointUUID];
  v6 = acc_transportClient_processIncomingData();

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & 1) == 0 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866214();
  }
}

void sub_1007013EC(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  if (v3)
  {

    sub_1003FD9B4((a1 + 32), v3);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866250();
  }
}

BOOL sub_100701460(void *a1, unint64_t a2, char *a3, int a4)
{
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109120;
    v12[1] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending %d bytes of WiAP data to stack", v12, 8u);
  }

  v9 = sub_10057E30C(a1, a2);
  LOBYTE(v12[0]) = 0;
  sub_1000216B4(v12);
  v10 = sub_1002EF8B0(sub_1007015B4, v9, a3, a4);
  if (v10 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10086628C();
  }

  sub_10002249C(v12);
  return v10 == 0;
}

void sub_1007015B4(int a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008662FC();
  }

  if (qword_100B54EC0 != -1)
  {
    sub_100866114();
  }

  sub_1007013EC(off_100B54EB8, a1);
}

uint64_t sub_100701640(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getLinkForConnectionUUID - connectionUUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v5 = *(a1 + 512);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007017EC;
    block[3] = &unk_100AE0EB8;
    block[5] = a1;
    block[6] = a2;
    block[4] = &buf;
    dispatch_sync(v5, block);
    v6 = *(*(&buf + 1) + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&buf, 8);
  return v6;
}

const __CFDictionary *sub_100701784(const __CFDictionary *result, _BYTE *a2)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, kCFACCProperties_Endpoint_Bluetooth_HIDFunction);
    valuePtr = 0;
    if (result)
    {
      result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
      if (result)
      {
        if (a2)
        {
          *a2 = valuePtr;
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_1007017EC(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 520), *(a1 + 48));
  v3 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = Value;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getLinkForConnectionUUID - linkCF: %@", &v4, 0xCu);
  }

  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt16Type, (*(*(a1 + 32) + 8) + 24));
  }
}

void sub_1007018C4(void *a1)
{
  v2 = a1[5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(v2 + 528);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(v2 + 528) objectForKeyedSubscript:{v7, v11}];
        v9 = a1[6];
        v10 = [v8 endpointUUID];
        LODWORD(v9) = CFStringCompare(v9, v10, 0) == kCFCompareEqualTo;

        if (v9)
        {
          CFNumberGetValue(v7, kCFNumberSInt16Type, (*(a1[4] + 8) + 24));
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100701A68(int a1)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v2 = off_100B54EB8;

  sub_100700F08(v2, a1);
}

void sub_100701AC4(int a1, const UInt8 *a2, unsigned int a3)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v6 = off_100B54EB8;

  sub_10070121C(v6, a1, a2, a3);
}

uint64_t sub_100701EA4(uint64_t a1)
{
  *sub_100589578(a1, "WiAPSinkService", 0x20000) = &off_100B09F78;
  if (qword_100B54ED0 != -1)
  {
    sub_10086636C();
  }

  sub_100589880(a1, off_100B54EC8);
  return a1;
}

void sub_100701F38(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_100701F78()
{
  if (qword_100B54ED0 != -1)
  {
    sub_10086636C();
  }

  v0 = *(*(off_100B54EC8 + 32) + 16);

  return v0();
}

void sub_100701FF0(uint64_t a1, uint64_t a2)
{
  v20 = unk_100B0A078;
  v21 = unk_100B0A068;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_10053C3E8(a2))
  {
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_10053A020(a2, &v21, 4u);
  v5 = sub_10053A020(a2, &v20, 4u);
  v6 = v5;
  if (!v4 && !v5)
  {
    v7 = 1;
    goto LABEL_22;
  }

  if (v4)
  {
    if (sub_10053BFB4(a2, &v21, 0x301u, &__p))
    {
      goto LABEL_11;
    }
  }

  else if (v5)
  {
    v6 = sub_10053BFB4(a2, &v20, 0x301u, &__p);
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  v8 = __p;
  if (__p == v18)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*v8 != 1)
    {
      v10 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100866380(&v15, v16, v10);
      }

      goto LABEL_18;
    }

    if (*(v8 + 1) == 4)
    {
      break;
    }

    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100866380(&buf, v14, v9);
    }

LABEL_18:
    v8 += 16;
    if (v8 == v18)
    {
      goto LABEL_21;
    }
  }

  sub_100542814(a2, *(v8 + 2));
LABEL_21:
  v7 = 4;
LABEL_22:
  v11 = *(a1 + 32);
  v22 = 0;
  sub_100016250(&v22);
  *&v12 = v22;
  *(&v12 + 1) = SWORD2(v22);
  sub_100539554(a2, v11, v7, &v12, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1007021D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100702200(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v12 = 0;
  v17 = xmmword_1008A5380;
  memset(v18, 0, sizeof(v18));
  v10 = unk_100B0A098;
  v11 = unk_100B0A088;
  v15 = xmmword_1008C5060;
  v16 = xmmword_1008A5390;
  v14 = xmmword_1008C5070;
  *a3 = 0;
  if (sub_10054BE34(a2, v18, &v13) && v13 && ((result = sub_10024AB64(v18, &v17, &v12, v5), !result) || (result = sub_10024AB64(v18, &v16, &v12, v7), !result) || (result = sub_10024AB64(v18, &v15, &v12, v8), !result) || (result = sub_10024AB64(v18, &v14, &v12, v9), !result)) || (result = sub_10053C3E8(a2), result) && ((result = sub_10053A020(a2, &v11, 4u), (result & 1) != 0) || (result = sub_10053A020(a2, &v10, 4u), result)))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1007023F4(uint64_t a1)
{
  *sub_100589578(a1, "WiAPService", 128) = &off_100B0A0D8;
  if (qword_100B54EC0 != -1)
  {
    sub_1008663C0();
  }

  sub_100589880(a1, off_100B54EB8);
  return a1;
}

void sub_100702488(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1007024C8()
{
  if (qword_100B54EC0 != -1)
  {
    sub_1008663C0();
  }

  v0 = *(*(off_100B54EB8 + 32) + 16);

  return v0();
}

void sub_100702540(uint64_t a1, uint64_t a2)
{
  v20 = unk_100B0A1D8;
  v21 = unk_100B0A1C8;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_10053C3E8(a2))
  {
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_10053A020(a2, &v21, 4u);
  v5 = sub_10053A020(a2, &v20, 4u);
  v6 = v5;
  if (!v4 && !v5)
  {
    sub_100543938(a2, 0);
    v7 = 1;
    goto LABEL_22;
  }

  if (v4)
  {
    sub_100543938(a2, 1u);
    if (sub_10053BFB4(a2, &v21, 0x301u, &__p))
    {
      goto LABEL_11;
    }
  }

  else if (v5)
  {
    sub_100543938(a2, 2u);
    v6 = sub_10053BFB4(a2, &v20, 0x301u, &__p);
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  v8 = __p;
  if (__p == v18)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*v8 != 1)
    {
      v10 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100866380(&v15, v16, v10);
      }

      goto LABEL_18;
    }

    if (*(v8 + 1) == 4)
    {
      break;
    }

    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100866380(&buf, v14, v9);
    }

LABEL_18:
    v8 += 16;
    if (v8 == v18)
    {
      goto LABEL_21;
    }
  }

  sub_100542814(a2, *(v8 + 2));
LABEL_21:
  v7 = 4;
LABEL_22:
  v11 = *(a1 + 32);
  v22 = 0;
  sub_100016250(&v22);
  *&v12 = v22;
  *(&v12 + 1) = SWORD2(v22);
  sub_100539554(a2, v11, v7, &v12, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_10070274C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100702774(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v12 = 0;
  v17 = xmmword_1008A5380;
  memset(v18, 0, sizeof(v18));
  v10 = unk_100B0A1D8;
  v11 = unk_100B0A1C8;
  v15 = xmmword_1008C5080;
  v16 = xmmword_1008A5390;
  v14 = xmmword_1008C5070;
  *a3 = 0;
  if (sub_10054BE34(a2, v18, &v13) && v13 && ((result = sub_10024AB64(v18, &v17, &v12, v5), !result) || (result = sub_10024AB64(v18, &v16, &v12, v7), !result) || (result = sub_10024AB64(v18, &v15, &v12, v8), !result) || (result = sub_10024AB64(v18, &v14, &v12, v9), !result)) || (result = sub_10053C3E8(a2), result) && ((result = sub_10053A020(a2, &v11, 4u), (result & 1) != 0) || (result = sub_10053A020(a2, &v10, 4u), result)))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_100702968(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003A1C64(a1, 1952539500);
  *v8 = &off_100B0A218;
  sub_100508E60((v8 + 50), a2, a3);
  *(a1 + 776) = a4;
  *(a1 + 784) = 0;
  return a1;
}

uint64_t sub_1007029F8(void *a1)
{
  *a1 = &off_100B0A218;
  sub_100508ECC((a1 + 50));

  return sub_1003A1D74(a1);
}

void sub_100702A50(void *a1)
{
  *a1 = &off_100B0A218;
  sub_100508ECC((a1 + 50));
  sub_1003A1D74(a1);

  operator delete();
}

void sub_100702AC4(uint64_t a1, char *__s1, const __CFBoolean *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyGameOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 48);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyExpanseOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 56);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyVoiceOverOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 64);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyDynamicLatencyAudioAndInputAggregationOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 112);

    goto LABEL_43;
  }

  if (strcmp(__s1, "kBTAudioMsgPropertyWSModeEnabled"))
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyEnableSoftwareVolume"))
    {
      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 120);
    }

    else if (!strcmp(__s1, "kBTAudioMsgPropertyPMEOnBuds"))
    {
      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 128);
    }

    else
    {
      if (!strcmp(__s1, "kBTAudioMsgPropertySpatialOn"))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          (*(**(a1 + 776) + 80))(*(a1 + 776), a1, 1);
        }

        else
        {
          v8 = **(a1 + 776);
          if ((valuePtr & 2) != 0)
          {
            (*(v8 + 72))();
          }

          else
          {
            (*(v8 + 80))();
            (*(**(a1 + 776) + 72))(*(a1 + 776), a1, 0);
          }
        }

        return;
      }

      if (strcmp(__s1, "kBTAudioMsgPropertySpatialAudioActive"))
      {
        if (!strcmp(__s1, "kBTAudioMsgPropertySpatialAudioAppBasedMode"))
        {
          value = 0;
          valuePtr = 0;
          BOOLean = 0;
          LODWORD(number) = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialBundleID", &valuePtr))
          {
            v9 = [valuePtr copy];
          }

          else
          {
            v9 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialMode", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &number);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyHeadTrack", &BOOLean))
          {
            if (CFBooleanGetValue(BOOLean))
            {
              v12 = 0xFFFFFFFFLL;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0xFFFFFFFFLL;
          }

          (*(**(a1 + 776) + 160))(*(a1 + 776), a1, v9, number, v12);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyAdaptiveVolumeRampEnd"))
        {
          BOOLean = 0;
          value = 0;
          number = 0;
          LODWORD(v18) = 0;
          v19 = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeCurrentVolume", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &v18);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeAudioCategory", &BOOLean))
          {
            v10 = [(__CFBoolean *)BOOLean copy];
          }

          else
          {
            v10 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeRampEndReason", &number))
          {
            CFNumberGetValue(number, kCFNumberSInt32Type, &v19);
            v13 = v19;
          }

          else
          {
            v13 = 0;
          }

          v14 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(valuePtr) = 67109634;
            HIDWORD(valuePtr) = v18;
            v24 = 2112;
            v25 = v10;
            v26 = 1024;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Volume ramp ended with currentVolume: %d audioCategory %@ rampEndReason %d", &valuePtr, 0x18u);
            v13 = v19;
          }

          (*(**(a1 + 776) + 96))(*(a1 + 776), a1, v18, v10, v13);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyManualVolumeUpdate"))
        {
          BOOLean = 0;
          value = 0;
          number = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateNewVolume", &number))
          {
            CFNumberGetValue(number, kCFNumberSInt32Type, &v19);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentVolume", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &v17 + 4);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentAudioCategory", &BOOLean))
          {
            v11 = [(__CFBoolean *)BOOLean copy];
          }

          else
          {
            v11 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateRampInProgress", &v18))
          {
            CFNumberGetValue(v18, kCFNumberSInt32Type, &v17);
            v15 = v17;
          }

          else
          {
            v15 = 0;
          }

          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(valuePtr) = 67109890;
            HIDWORD(valuePtr) = BYTE4(v17);
            v24 = 2112;
            v25 = v11;
            v26 = 1024;
            v27 = v19;
            v28 = 1024;
            v29 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Manual Volume update received currentVolume: %d audioCategory %@ newVolume %d isRampInProgress %d", &valuePtr, 0x1Eu);
            v15 = v17;
          }

          (*(**(a1 + 776) + 88))(*(a1 + 776), a1, HIDWORD(v17), v11, v19, v15 != 0);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyFrameCount"))
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          (*(**(a1 + 776) + 176))(*(a1 + 776), a1, valuePtr);
        }

        else
        {

          sub_1003A432C(a1, __s1, a3);
        }

        return;
      }

      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 168);
    }

LABEL_43:
    v6();
    return;
  }

  CFBooleanGetValue(a3);
  v7 = *(**(a1 + 776) + 104);

  v7();
}

uint64_t sub_100703548(uint64_t a1)
{
  result = (***(a1 + 776))(*(a1 + 776), a1);
  *(a1 + 784) = 1;
  return result;
}

void sub_100703758(uint64_t a1, int a2, float a3)
{
  valuePtr = a3;
  v7 = a2;
  *keys = *off_100B0A328;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v7);
  values[0] = v4;
  values[1] = v5;
  v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertySamplingSpeedParams", v6);
  CFRelease(v4);
  CFRelease(v5);
  CFRelease(v6);
}

void sub_100703900(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  sub_1003A3724(a1, "kBTAudioMsgPropertySpatialPerAppModeMap", MutableCopy);

  CFRelease(MutableCopy);
}

void sub_100703964(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  sub_1003A3724(a1, "kBTAudioMsgPropertyAdaptiveVolumeMap", MutableCopy);

  CFRelease(MutableCopy);
}

uint64_t sub_1007039D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = *(a1 + 660);
  LOBYTE(v4) = *(a1 + 652);
  v9 = sub_1005095A4(a1 + 400);
  LODWORD(v3) = vcvtps_s32_f32(a3 / v4);
  if (*(a1 + 396) == 1 && (v10 = qword_100BCE8D0, os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG)))
  {
    v13 = 134218496;
    v14 = a3;
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v8;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "A2DPAudioDevice readHandler called on data of size %lu (%d frames) with maxFrame count of %d", &v13, 0x18u);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else if (v9)
  {
LABEL_4:
    v3 = 0;
    return (*(**(a1 + 776) + 16))(*(a1 + 776), a1, a2, a3, v3, v9);
  }

  if (v8 < v3)
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_1008663D4(v3, v8, v11);
    }
  }

  return (*(**(a1 + 776) + 16))(*(a1 + 776), a1, a2, a3, v3, v9);
}

uint64_t sub_100703B78(uint64_t a1)
{
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_100AF0C10;
  sub_100044BBC(a1 + 8);
  *(a1 + 72) = 0;
  *a1 = off_100B0A348;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 80) = 2;
  return a1;
}

uint64_t sub_100703C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 88));
  return sub_1000088CC(v5);
}

uint64_t sub_100703CC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 112));
  return sub_1000088CC(v5);
}

uint64_t sub_100703D28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 136));
  return sub_1000088CC(v5);
}

uint64_t sub_100703D8C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 160);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100703DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100704E14(a2, a1 + 168);
  return sub_1000088CC(v5);
}

uint64_t sub_100703E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100705158(a2, (a1 + 192));
  return sub_1000088CC(v5);
}

uint64_t sub_100703E9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100705380(a2, a1 + 216);
  return sub_1000088CC(v5);
}

uint64_t sub_100703F00(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 264);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100703F48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_1007054FC(a2, (a1 + 240));
  return sub_1000088CC(v5);
}

void sub_100703FAC(uint64_t a1, void *a2)
{
  v40[0] = 0;
  v40[1] = 0;
  v35 = a2;
  sub_100007F88(v40, a1 + 8);
  objc_storeStrong((a1 + 72), a2);
  v4 = [*(a1 + 72) getLocalFileUrl];
  v5 = [NSURL URLWithString:@"MobileBluetoothConfig.plist" relativeToURL:v4];

  v39 = 0;
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5 error:&v39];
  v34 = v39;
  v33 = [v6 valueForKey:@"denylistedAVRCPSubstrings"];
  sub_1007044A4(v33, &v36);
  v7 = a1 + 120;
  sub_10004B61C(a1 + 112, *(a1 + 120));
  v8 = v37;
  *(a1 + 112) = v36;
  *(a1 + 120) = v8;
  v9 = v38;
  *(a1 + 128) = v38;
  if (v9)
  {
    *(v8 + 2) = v7;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v8 = 0;
  }

  else
  {
    *(a1 + 112) = v7;
  }

  sub_10004B61C(&v36, v8);
  v32 = [v6 valueForKey:@"denylistedCATTSubstrings"];
  sub_1007044A4(v32, &v36);
  v10 = a1 + 144;
  sub_10004B61C(a1 + 136, *(a1 + 144));
  v11 = v37;
  *(a1 + 136) = v36;
  *(a1 + 144) = v11;
  v12 = v38;
  *(a1 + 152) = v38;
  if (v12)
  {
    *(v11 + 2) = v10;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v11 = 0;
  }

  else
  {
    *(a1 + 136) = v10;
  }

  sub_10004B61C(&v36, v11);
  v13 = [v6 valueForKey:@"denylistedPBAPSubstrings"];
  sub_1007044A4(v13, &v36);
  v14 = a1 + 96;
  sub_10004B61C(a1 + 88, *(a1 + 96));
  v15 = v37;
  *(a1 + 88) = v36;
  *(a1 + 96) = v15;
  v16 = v38;
  *(a1 + 104) = v38;
  if (v16)
  {
    *(v15 + 2) = v14;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v15 = 0;
  }

  else
  {
    *(a1 + 88) = v14;
  }

  sub_10004B61C(&v36, v15);
  v17 = [v6 valueForKey:@"triesteDenylistedAutomationDongles"];
  sub_100704624(v17, &v36);
  v18 = a1 + 200;
  sub_10004B61C(a1 + 192, *(a1 + 200));
  v19 = v37;
  *(a1 + 192) = v36;
  *(a1 + 200) = v19;
  v20 = v38;
  *(a1 + 208) = v38;
  if (v20)
  {
    *(v19 + 2) = v18;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v19 = 0;
  }

  else
  {
    *(a1 + 192) = v18;
  }

  sub_10004B61C(&v36, v19);
  v21 = [v6 valueForKey:@"exposureNotificationState"];
  *(a1 + 160) = [v21 unsignedIntValue];
  v22 = [v6 valueForKey:@"maxFindMyLEConnections"];
  sub_1007047B8(v22, &v36);
  v23 = a1 + 224;
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  v24 = v37;
  *(a1 + 216) = v36;
  *(a1 + 224) = v24;
  v25 = v38;
  *(a1 + 232) = v38;
  if (v25)
  {
    *(v24 + 2) = v23;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v24 = 0;
  }

  else
  {
    *(a1 + 216) = v23;
  }

  sub_10000CEDC(&v36, v24);
  v26 = [v6 valueForKey:@"maxFindMyLETransientConnections"];
  *(a1 + 264) = [v26 unsignedCharValue];
  v27 = [v6 valueForKey:@"maxSharingNearbyInvitationsHostLEConnections"];
  sub_1007048E4(v27, &v36);
  v29 = *(a1 + 248);
  v28 = (a1 + 248);
  sub_10004B61C((v28 - 1), v29);
  v30 = v37;
  *(v28 - 1) = v36;
  *v28 = v30;
  v31 = v38;
  v28[1] = v38;
  if (v31)
  {
    *(v30 + 2) = v28;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v30 = 0;
  }

  else
  {
    *(v28 - 1) = v28;
  }

  sub_10004B61C(&v36, v30);

  sub_1000088CC(v40);
}

void sub_1007043CC(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007044A4(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        sub_100007E30(__p, [*(*(&v10 + 1) + 8 * v7) UTF8String]);
        sub_100071970(a2, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1007045D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10004B61C(v15, *(v15 + 8));

  _Unwind_Resume(a1);
}

void sub_100704624(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v4 = [v3 objectEnumerator];
  while (1)
  {
    v5 = [v4 nextObject];
    v6 = v5;
    if (!v5)
    {
      break;
    }

    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v7 = [v5 valueForKey:@"friendlyName"];
    sub_100007E30(__p, [v7 UTF8String]);

    v8 = [v6 valueForKey:@"chipsetManufacturerNameID"];
    LOWORD(v7) = [v8 unsignedIntValue];

    v11 = __p;
    *(sub_100705724(a2, __p) + 56) = v7;
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100704754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10004B61C(v16, *(v16 + 8));

  _Unwind_Resume(a1);
}

void sub_1007047B8(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = sub_100042458;
  v9 = sub_1000426A0;
  v10 = "";
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100704A10;
  v4[3] = &unk_100B0A368;
  v4[4] = &v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  sub_100705380(a2, (v6 + 6));
  _Block_object_dispose(&v5, 8);
  sub_10000CEDC(&v11, v12[0]);
}

void sub_1007048BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_10000CEDC(v22 + 48, a21);

  _Unwind_Resume(a1);
}

void sub_1007048E4(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = sub_100704B80;
  v9 = sub_100704BBC;
  v10 = "";
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100704BC8;
  v4[3] = &unk_100B0A368;
  v4[4] = &v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  sub_1007054FC(a2, v6 + 6);
  _Block_object_dispose(&v5, 8);
  sub_10004B61C(&v11, v12[0]);
}

void sub_1007049E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_10004B61C(v22 + 48, a21);

  _Unwind_Resume(a1);
}

void sub_100704A10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"legacyBCMChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v8 = *(*(a1 + 32) + 8);
    v12 = 0;
    v13 = &v12;
    v9 = sub_1003FA174(v8 + 48, &v12);
LABEL_7:
    *(v9 + 32) = v7;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"modernBCMChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v10 = *(*(a1 + 32) + 8);
    v12 = 1;
    v13 = &v12;
    v9 = sub_1003FA174(v10 + 48, &v12);
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"aciChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v11 = *(*(a1 + 32) + 8);
    v12 = 2;
    v13 = &v12;
    v9 = sub_1003FA174(v11 + 48, &v12);
    goto LABEL_7;
  }

LABEL_8:
}

void *sub_100704B80(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void sub_100704BC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 unsignedCharValue];
  v8 = *(*(a1 + 32) + 8);
  sub_100007E30(__p, [v5 UTF8String]);
  v11 = __p;
  *(sub_1003C5428(v8 + 48, __p) + 56) = v7;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100704C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100704CAC(uint64_t a1)
{
  sub_10004B61C(a1 + 240, *(a1 + 248));
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  sub_10004B61C(a1 + 192, *(a1 + 200));
  sub_10000CEDC(a1 + 168, *(a1 + 176));
  sub_10004B61C(a1 + 136, *(a1 + 144));
  sub_10004B61C(a1 + 112, *(a1 + 120));
  sub_10004B61C(a1 + 88, *(a1 + 96));
  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);
  return a1;
}

void sub_100704D50(uint64_t a1)
{
  sub_10004B61C(a1 + 240, *(a1 + 248));
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  sub_10004B61C(a1 + 192, *(a1 + 200));
  sub_10000CEDC(a1 + 168, *(a1 + 176));
  sub_10004B61C(a1 + 136, *(a1 + 144));
  sub_10004B61C(a1 + 112, *(a1 + 120));
  sub_10004B61C(a1 + 88, *(a1 + 96));
  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);

  operator delete();
}

void *sub_100704E14(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100704E6C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100704E6C(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100704EF4(v5, (v5 + 8), v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100704EF4(uint64_t **a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100704F90(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100704F90(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = *(a2 + 7);
  if (*a5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v13 = *a4 == v17;
        v17 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v18 = *(a4 + 7);
      if (v5 >= v18 && (v18 < v5 || a5[1] >= *(a4 + 8)))
      {
        return sub_1007050F4(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }

    return a4;
  }

  v15 = a5[1];
  v16 = *(a2 + 8);
  if (v15 >= v16)
  {
    if (v16 >= v15)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = *(v9 + 7);
    if (v14 >= *a5 && (*a5 < v14 || *(v9 + 8) >= a5[1]))
    {
      return sub_1007050F4(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *sub_1007050F4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void *sub_100705158(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007051B0(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1007051B0(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100705238(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100705238(void *a1, uint64_t a2, const void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100086A74(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1007052C8();
  }

  return result;
}

void sub_100705364(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100705380(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007053D8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007053D8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100705460(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100705460(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100588944(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1007054FC(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100705554(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_100705554(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007055DC(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1007055DC(void *a1, uint64_t a2, const void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100086A74(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10070566C();
  }

  return result;
}

void sub_100705708(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100705724(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_1007057C8();
  }

  return result;
}

void sub_100705864(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100705880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 432);
  if (v5)
  {
    v6 = *(a3 + 424) / v5;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = *(a3 + 352);
  v8 = *(a3 + 360);
  if (v7 == v8)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = v12 - 1;
    if ((v12 - 1) < 0x64)
    {
      ++v10;
    }

    if (v13 >= 0x64)
    {
      v11 = 0;
    }

    v9 += v11;
  }

  while (v7 != v8);
  if (!v10)
  {
LABEL_13:
    v14 = 0;
  }

  else
  {
    v14 = v9 / v10;
  }

  v15 = *(a3 + 336);
  if (*(a3 + 328) == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = **(v15 - 8);
  }

  if (*(a3 + 479) >= 0)
  {
    v17 = a3 + 456;
  }

  else
  {
    v17 = *(a3 + 456);
  }

  v18 = [NSString stringWithUTF8String:v17];
  v19 = [v18 containsString:@"Spatial"];
  if ((v19 & 1) == 0)
  {
    v19 = [v18 containsString:@"Game"];
  }

  v21 = *(a3 + 504);
  __chkstk_darwin(v19, v20);
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v28 = v6;
  v29 = v14;
  v30 = 0;
  v31 = v16;
  v32 = 0;
  v33 = v22;
  v34 = 0;
  v35 = v23;
  v36 = 0;
  v37 = v21;
  v38 = 0;
  v24 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v40 = "A2DP";
    v41 = 1024;
    v42 = v6;
    v43 = 1024;
    v44 = v14;
    v45 = 2112;
    v46 = v18;
    v47 = 2048;
    v48 = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u audioCategory %@ overWaitCount %llu", buf, 0x2Cu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a2, 72, &v25);
}

uint64_t sub_100705B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 432);
  if (v4)
  {
    v5 = *(a3 + 424) / v4;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = *(a3 + 352);
  v7 = *(a3 + 360);
  if (v6 == v7)
  {
    v13 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *v6++;
      v10 = v11;
      v12 = v11 - 1;
      if ((v11 - 1) < 0x64)
      {
        ++v9;
      }

      if (v12 >= 0x64)
      {
        v10 = 0;
      }

      v8 += v10;
    }

    while (v6 != v7);
    v13 = v8 / v9;
  }

  __chkstk_darwin(a1, a2);
  v16 = 3;
  v17 = 0;
  v18 = 0;
  v19 = v5;
  v20 = v13;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "A2DPPackFlush";
    v26 = 1024;
    v27 = v5;
    v28 = 1024;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u", buf, 0x18u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  return sub_100518EC4(off_100B508D8, a2, 72, &v16);
}

void sub_100705CB0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v26 = 0u;
  memset(v27, 0, 28);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  LOBYTE(v22) = 5;
  v5 = [v4 objectForKeyedSubscript:@"ErrorCode"];
  DWORD1(v22) = [v5 integerValue];

  v6 = [v4 objectForKeyedSubscript:@"ErrorReason"];
  v7 = [v6 UTF8String];

  v8 = strlen(v7);
  if (v8 <= 0x63)
  {
    v10 = v8;
    v11 = [v4 objectForKeyedSubscript:@"ErrorReason"];
    strncpy(&v22 + 8, [v11 UTF8String], v10);
  }

  __chkstk_darwin(v8, v9);
  v14[4] = v26;
  *v15 = v27[0];
  *&v15[12] = *(v27 + 12);
  v14[0] = v22;
  v14[1] = v23;
  v14[2] = v24;
  v14[3] = v25;
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (v22 > 6uLL)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_100B0A3C8[v22];
    }

    *buf = 136315650;
    v17 = v13;
    v18 = 2080;
    v19 = &v22 + 8;
    v20 = 1024;
    v21 = DWORD1(v22);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorReason %s errorCode %d", buf, 0x1Cu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a3, 108, v14);
}

uint64_t sub_100705F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 200);
  if (v4)
  {
    v5 = *(a3 + 192) / v4;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = *(a3 + 164);
  v7 = *(a3 + 220);
  __chkstk_darwin(a1, a2);
  v12 = 2;
  v13 = 0;
  v14 = 0;
  v15 = v5;
  v16 = v7;
  v17 = 0;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v8;
  v23 = 0;
  v24 = 0;
  v25 = v9;
  v26 = 0;
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "HFP";
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    v32 = v7;
    v33 = 2048;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u duration %llus", buf, 0x22u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  return sub_100518EC4(off_100B508D8, a2, 72, &v12);
}

void sub_1007060B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Result"];
  v6 = [v5 integerValue];

  if (qword_100B508F0 != -1)
  {
    sub_100866484();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 0);
  v9 = v7;
  if (v7)
  {
    __chkstk_darwin(v7, v8);
    v12 = (v6 << 32) | 6;
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "Pairing";
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorCode %d", buf, 0x12u);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10086645C();
    }

    sub_100518EC4(off_100B508D8, v9, 8, &v12);
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "Pairing";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s failed. Can't find bt device", buf, 0xCu);
    }
  }
}

void sub_1007062CC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"Status"];
  v6 = [v5 integerValue];

  __chkstk_darwin(v7, v8);
  v10 = (v6 << 32) | 4;
  v9 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "MagicPairing";
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorCode %d", buf, 0x12u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a3, 8, &v10);
}

uint64_t sub_10070651C(uint64_t a1)
{
  *a1 = off_100B0A410;
  *(a1 + 8) = &off_100B0A480;
  v21 = a1 + 16;
  *(a1 + 16) = off_100B0A498;
  v20 = a1 + 24;
  *(a1 + 24) = off_100B0A4C8;
  v19 = a1 + 32;
  *(a1 + 32) = off_100B0A4F8;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  v2 = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  v22 = a1 + 120;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 144) = a1 + 152;
  v3 = a1 + 144;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 30;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *__p = xmmword_1008A4B48;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4B5C;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4D28;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4D50;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4D64;
  v25 = -805294830;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4D78;
  v25 = -587704915;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4D8C;
  v25 = -1765695659;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4DC8;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4EA8;
  v25 = 1880579407;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4DB4;
  v25 = -1171415960;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4E40;
  v25 = 1729713604;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4EE4;
  v25 = -815610143;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4EF8;
  v25 = 1323364242;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4F0C;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4F34;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4F5C;
  v25 = -1079296166;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4E94;
  v25 = -2130188885;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  v31 = 0uLL;
  v32 = 0;
  *buf = xmmword_1008C5090;
  sub_10006A0FC(buf, 16, 0, &v31);
  *__p = v31;
  v25 = v32;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4E18;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf);
  *__p = xmmword_1008A4E54;
  v25 = 2027922698;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v22, buf);
  *__p = xmmword_1008A4E04;
  v25 = 0;
  sub_10000D03C(buf, __p);
  __p[0] = buf;
  v4 = sub_1004F27E4(v3, buf);
  v29 = xmmword_1008A4EBC;
  v30 = 295542594;
  sub_10000D03C(__p, &v29);
  sub_100051F7C(v4 + 56, __p);
  *__p = xmmword_1008A4E04;
  v25 = 0;
  sub_10000D03C(buf, __p);
  __p[0] = buf;
  v5 = sub_1004F27E4(v3, buf);
  v29 = xmmword_1008A4ED0;
  v30 = 312319810;
  sub_10000D03C(__p, &v29);
  sub_100051F7C(v5 + 56, __p);
  LODWORD(v29) = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxUnpairedDatabasesCached");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v29);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v29;
  v9 = qword_100BCE910;
  if (v29 < 1)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866498();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of unpaired databases to be cached", buf, 8u);
      LOWORD(v8) = v29;
    }

    *(a1 + 240) = v8;
  }

LABEL_13:
  v23 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(buf, "GATT");
  sub_100007E30(__p, "MTU");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v23);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
  }

  v12 = v23;
  if (v23)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Using Gatt MTU override of %d", buf, 8u);
      LOWORD(v12) = v23;
    }

    *(a1 + 242) = v12;
  }

  *(a1 + 244) = 0;
  v15 = sub_10000E92C();
  if ((*(*v15 + 8))(v15))
  {
    v16 = sub_10000E92C();
    sub_100007E30(buf, "GATT");
    sub_100007E30(__p, "StartInitSequenceOnConnectionComplete");
    if ((*(*v16 + 72))(v16, buf, __p, a1 + 244))
    {
      v17 = *(a1 + 244);
    }

    else
    {
      v17 = 0;
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866508();
    }
  }

LABEL_36:
  if (qword_100B50AA0 != -1)
  {
    sub_100866544();
  }

  sub_100312650(off_100B50A98 + 64, v21);
  if (qword_100B50F78 != -1)
  {
    sub_10086656C();
  }

  sub_100580E68(qword_100B50F70, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100866594();
  }

  sub_1000F0D9C(off_100B508E8 + 240, v20);
  if (qword_100B508C0 != -1)
  {
    sub_1008665BC();
  }

  sub_1007BF384(off_100B508B8, v19);
  return a1;
}

uint64_t sub_100707120(uint64_t a1)
{
  *a1 = off_100B0A410;
  *(a1 + 8) = &off_100B0A480;
  v2 = a1 + 16;
  *(a1 + 16) = off_100B0A498;
  v3 = a1 + 24;
  *(a1 + 24) = off_100B0A4C8;
  v4 = a1 + 32;
  *(a1 + 32) = off_100B0A4F8;
  if (qword_100B50AA0 != -1)
  {
    sub_1008665E4();
  }

  sub_10007A3F0(off_100B50A98 + 64, v2);
  if (qword_100B50F78 != -1)
  {
    sub_1008665F8();
  }

  sub_100580EFC(qword_100B50F70, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086660C();
  }

  sub_10007A3F0(off_100B508E8 + 240, v3);
  if (qword_100B508C0 != -1)
  {
    sub_100866620();
  }

  sub_1007BF4C0(off_100B508B8, v4);
  sub_10007A490(a1 + 248, *(a1 + 256));
  sub_100712EBC(a1 + 216, *(a1 + 224));
  sub_100712E14(a1 + 192, *(a1 + 200));
  sub_10007A490(a1 + 168, *(a1 + 176));
  sub_1004F2678(a1 + 144, *(a1 + 152));
  sub_10000CEDC(a1 + 120, *(a1 + 128));
  sub_10000CEDC(a1 + 96, *(a1 + 104));
  sub_10000CEDC(a1 + 72, *(a1 + 80));
  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_100707300(_Unwind_Exception *a1)
{
  sub_10007A490(v1 + 248, *(v1 + 256));
  sub_100712EBC(v1 + 216, *(v1 + 224));
  sub_100712E14(v1 + 192, *(v1 + 200));
  sub_10007A490(v1 + 168, *(v1 + 176));
  sub_1004F2678(v1 + 144, *(v1 + 152));
  sub_10000CEDC(v1 + 120, *(v1 + 128));
  sub_10000CEDC(v1 + 96, *(v1 + 104));
  sub_10000CEDC(v1 + 72, *(v1 + 80));
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100707380(uint64_t a1)
{
  sub_100707120(a1);

  operator delete();
}

_BYTE *sub_1007073B8(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1002D359C())
  {
    if (sub_1002D442C() && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866634();
    }

    sub_1002B554C(sub_100707494, 0);
    sub_1002B5528(sub_100707700);
    if (*(a1 + 242))
    {
      sub_1002BA558(*(a1 + 242));
    }

    sub_100022214(&v3);
  }

  return sub_10002249C(&v3);
}

void sub_100707494(uint64_t a1, __int16 a2, const void *a3, unsigned int a4, char a5, uint64_t a6)
{
  v22 = 0;
  v23 = 0;
  sub_10000C704(&v22, a3, a4);
  v10 = sub_100364070();
  if (sub_1000ABD24(a1))
  {
    v11 = sub_100255A20(a1);
    if (v11)
    {
      v12 = (v11[1] << 40) | (v11[2] << 32) | (v11[3] << 24) | (v11[4] << 16) | (v11[5] << 8) | v11[6] | (*v11 << 48);
LABEL_8:
      v14 = sub_100007EE8();
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3321888768;
      v15[2] = sub_1007115B8;
      v15[3] = &unk_100B0A668;
      v15[4] = a1;
      v15[5] = v12;
      v20 = a2;
      v16 = &off_100AE0A78;
      v17 = v23;
      if (v23)
      {
        sub_10000C69C(v23);
      }

      v21 = a5;
      v18 = a6;
      v19 = v10;
      sub_10000CA94(v14, v15);
      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }

      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (sub_1000B8B5C(a1))
  {
    v13 = sub_100255A78(a1);
    if (v13)
    {
      v12 = (*v13 << 40) | (v13[1] << 32) | (v13[2] << 24) | (v13[3] << 16) | (v13[4] << 8) | v13[5];
      goto LABEL_8;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008666A4();
  }

LABEL_14:
  v22 = &off_100AE0A78;
  if (v23)
  {
    sub_10000C808(v23);
  }
}

void sub_1007076A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 80) = &off_100AE0A78;
  v19 = *(v17 - 72);
  if (v19)
  {
    sub_10000C808(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707700()
{
  v0 = sub_100007EE8();

  sub_10000CA94(v0, &stru_100B0A648);
}

_BYTE *sub_100707738(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GattGateway::stackWillStop enter", buf, 2u);
  }

  v7 = 0;
  sub_1000216B4(&v7);
  if (sub_1002D359C())
  {
    sub_1002B5584(sub_100707494);
    sub_1002D43E8();
    sub_100022214(&v7);
    v3 = sub_100007EE8();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10070788C;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000D334(v3, v6);
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GattGateway::stackWillStop exit", buf, 2u);
    }
  }

  return sub_10002249C(&v7);
}

void sub_10070788C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100712E14(v1 + 192, *(v1 + 200));
  *(v1 + 192) = v1 + 200;
  *(v1 + 200) = 0;
  v2 = *(v1 + 224);
  v1 += 224;
  *(v1 - 16) = 0;
  sub_100712EBC(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
  sub_10007A490(v1 + 24, *(v1 + 32));
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = v1 + 32;
}

void sub_1007078FC(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO) && ((sub_1000E5A58(a2, __p), v19 >= 0) ? (v7 = __p) : (v7 = __p[0]), *buf = 136446466, v21 = v7, v22 = 1024, LODWORD(v23) = a3, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "deviceInfoChanged device %{public}s infoChanged:%d", buf, 0x12u), v19 < 0))
  {
    operator delete(__p[0]);
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
LABEL_7:
    v8 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
    v9 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5A58(a2, __p);
      v12 = v19;
      v13 = __p[0];
      v14 = sub_1007774DC();
      v15 = v14;
      v16 = __p;
      if (v12 < 0)
      {
        v16 = v13;
      }

      *buf = 136446466;
      v21 = v16;
      v22 = 2114;
      v23 = v14;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "deviceInfoChanged device %{public}s address %{public}@", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 4099)
    {
      v10 = sub_100007EE8();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100707B94;
      v17[3] = &unk_100AE0860;
      v17[4] = a1;
      v17[5] = v8;
      sub_10000CA94(v10, v17);
    }

    return;
  }

  v11 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "deviceInfoChanged invalid device", __p, 2u);
  }
}

void sub_100707B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707B94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  *uu = 0;
  v17 = 0;
  sub_1000498D4(off_100B508C8, *(a1 + 40), 0, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v4 = v11;
      v5 = __p[0];
      v6 = sub_1007774DC();
      v7 = v6;
      v8 = __p;
      if (v4 < 0)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v13 = v8;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deviceInfoChanged Clearing device DB for device %{public}s (%{public}@)", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_10004DF60(uu);
    sub_100707D50(v2, v9);
  }
}

void sub_100707D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707D50(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(&v6, v3);
  v4 = sub_10004E34C(a1 + 216, &v6);
  if ((a1 + 224) != v4)
  {
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing database cache for device %{public}@", &v6, 0xCu);
    }

    sub_100714C8C((a1 + 216), v4);
  }
}

void sub_100707E60(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GattGateway device %@ paired with result %d", buf, 0x12u);
  }

  if (!a3)
  {
    v7 = sub_100007EE8();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100707FC0;
    v8[3] = &unk_100AE1200;
    v10 = a1;
    v9 = v5;
    sub_10000CA94(v7, v8);
  }
}

void sub_100707FC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10004DFB4(v3, *(a1 + 32));
  sub_100708044(v2, v3);
  sub_10004DFB4(v3, *(a1 + 32));
  sub_1007093E0(v2, v3);
}

void sub_100708044(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  if (sub_10078DA3C(off_100B508C8, v4))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEBUG))
    {
      sub_100866824();
    }

    goto LABEL_145;
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  *buf = a2;
  v5 = sub_100713C3C(a1 + 248, a2);
  sub_1007134F4(&v106, v5 + 48);
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to detect built in services on device %@", buf, 0xCu);
  }

  v104 = 0;
  v105 = 0;
  sub_10004DFB4(buf, v4);
  sub_10070B42C(a1, buf, 0, &v104);
  v7 = v104;
  if (!v104)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008667B4();
    }

    goto LABEL_142;
  }

  sub_1005B7638(v104, "");
  *v112 = xmmword_1008A4D28;
  *&v112[16] = 0;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v8 = sub_1005B68E8(v7, buf, v112);
  if (_os_feature_enabled_impl())
  {
    *v112 = xmmword_1008A4D28;
    *&v112[16] = 0;
    sub_10000D03C(buf, v112);
    if (sub_10070BD80(a1, buf, v4))
    {
      v8 = 0;
    }
  }

  *v112 = xmmword_1008A4E40;
  *&v112[16] = 1729713604;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v9 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4E54;
  *&v112[16] = 2027922698;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v84 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4D14;
  *&v112[16] = 0;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v81 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4D3C;
  *&v112[16] = 0;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v80 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4E94;
  *&v112[16] = -2130188885;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v83 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4E2C;
  *&v112[16] = 0;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v82 = sub_1005B68E8(v7, buf, v112);
  *v112 = xmmword_1008A4D00;
  *&v112[16] = 0;
  sub_10000D03C(buf, v112);
  sub_10003A364(v112);
  v85 = sub_1005B68E8(v7, buf, v112);
  sub_10004DFB4(buf, v4);
  v10 = sub_10070EB84(a1, buf);
  v11 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "disabled";
    if (v10)
    {
      v12 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LE Audio is %s.", buf, 0xCu);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_28;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  v13 = off_100B508C8;
  v14 = sub_10004DF60(a2);
  v15 = sub_100046458(v13, v14, 0);

  if (qword_100B508F0 != -1)
  {
    sub_100866594();
  }

  v16 = sub_1000504C8(off_100B508E8, v15, 0);
  if (v16)
  {
    v79 = v16;
    if (sub_1005399A0(v16))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      v17 = off_100B508C8;
      sub_100007E30(__p, "_CATT_");
      sub_10078787C(v17, v4, __p);
      if (v103 < 0)
      {
        operator delete(__p[0]);
      }

      v78 = 0;
      goto LABEL_30;
    }
  }

  else
  {
LABEL_28:
    v79 = 0;
  }

  v78 = 1;
LABEL_30:
  if (sub_10070E714(a1, &xmmword_1008A4D28, a2))
  {
    if (v8)
    {
      v18 = *(v8 + 8);
      v19 = *(v18 + 20);
      *buf = *(v18 + 4);
      v110 = v19;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v20, buf))
      {
        v21 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "The device %@ supports HID", buf, 0xCu);
        }

        v22 = sub_100432610();
        (*(*v22 + 24))(v22, v4);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_10078DE78(off_100B508C8, v4);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_100785F60(off_100B508C8, v4, 0);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v23 = off_100B508C8;
        sub_100007E30(v100, "_HID_DEVICE_");
        sub_10078787C(v23, v4, v100);
        if (v101 < 0)
        {
          operator delete(v100[0]);
        }

        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        sub_100747A10(off_100B508A8, v4, 1);
        sub_10070E940(a1, &xmmword_1008A4D28, a2);
        *v112 = 0;
        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        v24 = off_100B508A8;
        sub_10004DFB4(buf, v4);
        if (sub_1000C4FCC(v24, buf, v112))
        {
          buf[0] = 0;
          sub_1000216B4(buf);
          v25 = sub_100255698(*v112);
          if ((sub_1001C4E34(v25 & 0xFFF, **(v8 + 8), *(v8 + 48)) & 1) == 0)
          {
            v26 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              v27 = sub_10004DF60(a2);
              sub_100866744(v27, v115, v26);
            }
          }

          sub_10002249C(buf);
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E40, a2))
  {
    if (v9)
    {
      v28 = *(v9 + 8);
      v29 = *(v28 + 20);
      *buf = *(v28 + 4);
      v110 = v29;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v30, buf))
      {
        v31 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "The device %@ supports DOAP", buf, 0xCu);
        }

        v32 = sub_100432610();
        (*(*v32 + 56))(v32, v4);
        sub_10070E940(a1, &xmmword_1008A4E40, a2);
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E54, a2))
  {
    if (v84)
    {
      v33 = *(v84 + 8);
      v34 = *(v33 + 20);
      *buf = *(v33 + 4);
      v110 = v34;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v35, buf))
      {
        *buf = xmmword_1008A4E54;
        v110 = 2027922698;
        sub_10000D03C(&v113, buf);
        v36 = a1 + 128 != sub_10007C324(a1 + 120, &v113);
        if (sub_10070C2D0(v4, v36))
        {
          v37 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "The device %@ supports UARP", buf, 0xCu);
          }

          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v38 = off_100B508C8;
          sub_100007E30(v98, "_UARP_");
          sub_10078787C(v38, v4, v98);
          if (v99 < 0)
          {
            operator delete(v98[0]);
          }

          v39 = sub_100432610();
          (*(*v39 + 64))(v39, v4);
          sub_10070E940(a1, &xmmword_1008A4E54, a2);
        }
      }
    }
  }

  if (((v10 | !sub_10070E714(a1, &xmmword_1008A4E94, a2)) & 1) == 0)
  {
    if (v83)
    {
      v40 = *(v83 + 8);
      v41 = *(v40 + 20);
      *buf = *(v40 + 4);
      v110 = v41;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v42, buf))
      {
        v43 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "The device %@ supports MFi", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v44 = off_100B508C8;
        sub_100007E30(v96, "needsMFiAuthentication4.0");
        sub_10078787C(v44, v4, v96);
        if (v97 < 0)
        {
          operator delete(v96[0]);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v45 = off_100B508C8;
        sub_100007E30(v94, "MFi-Generic");
        sub_10078787C(v45, v4, v94);
        if (v95 < 0)
        {
          operator delete(v94[0]);
        }

        v46 = sub_100432610();
        (*(*v46 + 80))(v46, v4);
        sub_10070E940(a1, &xmmword_1008A4E94, a2);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (sub_10070E714(a1, &xmmword_1008A4D14, a2))
    {
      if (v81)
      {
        v47 = *(v81 + 8);
        v48 = *(v47 + 20);
        *buf = *(v47 + 4);
        v110 = v48;
        sub_10000D03C(v112, buf);
        *buf = xmmword_1008C50C4;
        v110 = 0;
        if (sub_10004E15C(v49, buf))
        {
          v50 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "The device %@ supports CATT Battery Service", buf, 0xCu);
          }

          v51 = v78;
          if (!v79)
          {
            v51 = 1;
          }

          if ((v51 & 1) == 0)
          {
            sub_100540800(v79, 1);
            v52 = sub_100432610();
            (*(*v52 + 48))(v52, v4);
            sub_10070E940(a1, &xmmword_1008A4D14, a2);
          }
        }
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (sub_10070E714(a1, &xmmword_1008A4D3C, a2))
    {
      if (v80)
      {
        v53 = *(v80 + 8);
        v54 = *(v53 + 20);
        *buf = *(v53 + 4);
        v110 = v54;
        sub_10000D03C(v112, buf);
        *buf = xmmword_1008C50C4;
        v110 = 0;
        if (sub_10004E15C(v55, buf))
        {
          v56 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "The device %@ supports GHS", buf, 0xCu);
          }

          v57 = sub_100432610();
          (*(*v57 + 24))(v57, v4);
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v58 = off_100B508C8;
          sub_100007E30(v92, "_GHS_DEVICE_");
          sub_10078787C(v58, v4, v92);
          if (v93 < 0)
          {
            operator delete(v92[0]);
          }

          sub_10070E940(a1, &xmmword_1008A4D3C, a2);
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          sub_100785F60(off_100B508C8, v4, 0);
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E2C, a2))
  {
    if (v82)
    {
      v59 = *(v82 + 8);
      v60 = *(v59 + 20);
      *buf = *(v59 + 4);
      v110 = v60;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v61, buf))
      {
        v62 = sub_10004DF60(a2);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        if (sub_100788D8C(off_100B508C8, v62) == 21)
        {
          v63 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "The device %{public}@ supports CCC, disabling autopairing now", buf, 0xCu);
          }

          *v112 = 0;
          if (qword_100B508B0 != -1)
          {
            sub_10086671C();
          }

          v64 = off_100B508A8;
          sub_10004DFB4(buf, v62);
          if (sub_1000C4FCC(v64, buf, v112))
          {
            buf[0] = 0;
            sub_1000216B4(buf);
            sub_1002D69D8(*v112, 0);
            sub_10002249C(buf);
          }
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4D00, a2))
  {
    if (v85)
    {
      v65 = *(v85 + 8);
      v66 = *(v65 + 20);
      *buf = *(v65 + 4);
      v110 = v66;
      sub_10000D03C(v112, buf);
      *buf = xmmword_1008C50C4;
      v110 = 0;
      if (sub_10004E15C(v67, buf))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v68 = sub_100046458(off_100B508C8, v4, 0);
        if ((v68 & 0xFFFFFFFFFFFFLL) != 0)
        {
          v69 = sub_100017F4C();
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_10070F3C0;
          v86[3] = &unk_100B04A18;
          v88 = a1;
          v89 = v68;
          v87 = v4;
          v90 = a2;
          v91 = v85;
          sub_10000CA94(v69, v86);
        }
      }
    }
  }

  *buf = a2;
  v70 = sub_100713C3C(a1 + 248, a2);
  v71 = *(v70 + 48);
  v72 = (v70 + 56);
  if (v71 != (v70 + 56))
  {
    do
    {
      v113 = *(v71 + 28);
      v114 = *(v71 + 11);
      v73 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        sub_10003B85C(&v113, buf);
        v74 = v111 >= 0 ? buf : *buf;
        *v112 = 136315394;
        *&v112[4] = v74;
        *&v112[12] = 2112;
        *&v112[14] = v4;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Detected service %s on device %@ and notified", v112, 0x16u);
        if (v111 < 0)
        {
          operator delete(*buf);
        }
      }

      v75 = v71[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v71[2];
          v77 = *v76 == v71;
          v71 = v76;
        }

        while (!v77);
      }

      v71 = v76;
    }

    while (v76 != v72);
  }

LABEL_142:
  if (v105)
  {
    sub_100117644(v105);
  }

  sub_10000CEDC(&v106, v107);
LABEL_145:
}

void sub_100709238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  sub_10002249C((v48 - 224));
  if (a47)
  {
    sub_100117644(a47);
  }

  sub_10000CEDC(v48 - 248, *(v48 - 240));

  _Unwind_Resume(a1);
}

void sub_1007093E0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIDI: Trying to detect built in MIDI service on device %@", buf, 0xCu);
  }

  v35 = 0;
  v36 = 0;
  sub_10004DFB4(buf, v4);
  sub_10070B42C(a1, buf, 0, &v35);
  v6 = v35;
  if (v35)
  {
    sub_1005B7638(v35, "");
    v39 = xmmword_1008A4E80;
    v40 = 13091918;
    sub_10000D03C(buf, &v39);
    sub_10003A364(&v39);
    v7 = sub_1005B68E8(v6, buf, &v39);
    if (sub_10070E714(a1, &xmmword_1008A4E80, a2))
    {
      v8 = _os_feature_enabled_impl();
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1 && (v10 = *(v7 + 8), v11 = *(v10 + 20), *buf = *(v10 + 4), *&buf[16] = v11, sub_10000D03C(&v39, buf), *buf = xmmword_1008C50C4, *&buf[16] = 0, sub_10004E15C(&v39, buf)))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        if (sub_1007913E4(off_100B508C8, v4))
        {
          goto LABEL_16;
        }

        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        v12 = off_100B508A8;
        sub_10004DFB4(buf, v4);
        if (sub_10074E9A4(v12, buf))
        {
LABEL_16:
          v13 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI, but it's Apple device - No AutoConnect", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v16 = sub_10078E828(off_100B508C8, v4);
        v17 = v16;
        if (!v16)
        {
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_1008668FC();
          }

          goto LABEL_35;
        }

        v18 = [v16 localizedCaseInsensitiveContainsString:@"Apple"];
        v19 = qword_100BCE910;
        v20 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v20)
          {
            *buf = 138412546;
            *&buf[4] = v4;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI, but it's %@ manufacturer - No AutoConnect", buf, 0x16u);
          }

LABEL_35:

          goto LABEL_24;
        }

        if (v20)
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v21 = off_100B508C8;
        v22 = sub_10004DF60(a2);
        sub_10078D4F4(v21, v22, 1);

        if (qword_100B508C0 != -1)
        {
          sub_1008665BC();
        }

        if (sub_10004EE74(off_100B508B8, v4))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v23 = off_100B508C8;
          sub_100007E30(__p, "_MIDI_DEVICE_");
          sub_10078787C(v23, v4, __p);
          if (v34 < 0)
          {
            operator delete(__p[0]);
          }

          v24 = [NSData dataWithBytes:&xmmword_1008A4E80 + 4 length:16];
          v25 = [CBUUID UUIDWithData:v24];

          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          sub_10004FFDC(off_100B508C8, v4, buf);
          if (v38 >= 0)
          {
            v26 = buf;
          }

          else
          {
            v26 = *buf;
          }

          v27 = [NSString stringWithUTF8String:v26];
          if (v38 < 0)
          {
            operator delete(*buf);
          }

          v28 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "MIDI: Starting MIDI service %@ on paired device %@", buf, 0x16u);
          }

          v29 = sub_100432610();
          (*(*v29 + 24))(v29, v4);
          v30 = gCBDaemonServer;
          v31 = [NSArray arrayWithObject:v25];
          [v30 notifyConnectedDeviceUUID:v4 name:v27 servicesUUIDs:v31];

          sub_10070E940(a1, &xmmword_1008A4E80, a2);
        }

        else
        {
          v32 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "MIDI: %@ is not paired - No AutoConnect", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          v15 = _os_feature_enabled_impl();
          sub_1008668A0(v15, v7, buf, v14);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866864();
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100866938();
  }

LABEL_24:
  if (v36)
  {
    sub_100117644(v36);
  }
}

void sub_100709A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    sub_100117644(a17);
  }

  _Unwind_Resume(a1);
}

void sub_100709B34(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GattGateway init on device %{public}@ with mtu %d", buf, 0x12u);
  }

  v7 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  sub_10078B32C(off_100B508C8, v5, &v7);
  sub_10004DFB4(buf, v5);
  sub_100709C80(a1, buf);
}

void sub_100709C80(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning init sequence for device %{public}s", out, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *out = 0;
  operator new();
}

void sub_100709FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    sub_100713478(&a10, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070A054(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_10004DFB4(buf, v5);
  v6 = sub_10004E34C(a1 + 192, buf);
  v7 = qword_100BCE910;
  if (a1 + 200 != v6 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "fCommandSchedulerMap.find(device) == fCommandSchedulerMap.end()";
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
    v7 = qword_100BCE910;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is connected with Gatt handle 0x%x", buf, 0x12u);
  }

  *v11 = 0;
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_10004DFB4(buf, v5);
  *&buf[16] = 0;
  memset(v18, 0, sizeof(v18));
  memset(v12, 0, sizeof(v12));
  memset(v19, 0, sizeof(v19));
  memset(v13, 0, sizeof(v13));
  v20 = *&v13[32];
  v22 = 0;
  v21 = 0;
  v23 = &v15;
  v24[0] = v15;
  v24[1] = v16;
  if (v16)
  {
    v15[2] = v24;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v23 = v24;
  }

  sub_100713124(a1 + 192, buf);
  sub_10037505C(&v23, v24[0]);
  sub_100712CCC(v19);
  sub_100712CCC(v18);
  sub_10037505C(&v14, v15);
  sub_100712CCC(v13);
  sub_100712CCC(v12);
  sub_10004DFB4(buf, v5);
  v8 = sub_10070A400(a1 + 192, buf);
  *v8 = a3;
  *buf = 0;
  *&buf[8] = 0;
  sub_10004DFB4(buf, v5);
  sub_100713334((a1 + 248), buf);
  v9 = sub_10000E92C();
  if ((*(*v9 + 8))(v9) && *(a1 + 244) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    if ((sub_10078D924(off_100B508C8, v5) & 1) == 0)
    {
      v10 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "GattGateway initSqequence on deviceConnected", v11, 2u);
      }

      *(v8 + 105) = 1;
      sub_100709B34(a1, v5, 24);
    }
  }
}

void sub_10070A3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100712C4C(&a27);
  sub_100712C8C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10070A400(uint64_t a1, unsigned __int8 *uu1)
{
  v4 = 0;
  v2 = *sub_10004A7D0(a1, &v4, uu1);
  if (!v2)
  {
    abort();
  }

  return v2 + 48;
}

void sub_10070A43C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 138543362;
    *(&v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is disconnected", &v5, 0xCu);
  }

  sub_10070A560(a1, v3);
  sub_10004DFB4(&v5, v3);
  sub_10071337C((a1 + 192), &v5);
  sub_10070A66C(a1, v3);
  v5 = 0uLL;
  sub_10004DFB4(&v5, v3);
  sub_100713334((a1 + 248), &v5);
}

void sub_10070A560(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(uu2, v3);
  if (a1 + 176 != sub_10004E34C(a1 + 168, uu2))
  {
    sub_10004DFB4(uu2, v3);
    v4 = sub_10071380C(a1 + 168, uu2);
    v5 = (v4 + 56);
    sub_10000CEDC(v4 + 48, *(v4 + 56));
    *v5 = 0;
    v5[1] = 0;
    *(v5 - 1) = v5;
    sub_10004DFB4(uu2, v3);
    sub_100713334((a1 + 168), uu2);
  }
}

void sub_10070A66C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B50F78 != -1)
  {
    sub_1008665F8();
  }

  v3 = sub_100580920(qword_100B50F70, v2);
  v48 = 0;
  v49 = 0;
  sub_10004DFB4(&v56, v2);
  sub_10070B42C(a1, &v56, 0, &v48);
  v4 = v48;
  if (v48)
  {
    *__p = xmmword_1008A4B5C;
    LODWORD(v55) = 0;
    sub_10000D03C(&v56, __p);
    *buf = xmmword_1008A4BAC;
    LODWORD(v51) = 0;
    sub_10000D03C(__p, buf);
    v5 = sub_1005B68E8(v4, &v56, __p);
    v56 = 0uLL;
    v57 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v55 = 0;
    if (!sub_1005B38CC(v4, 0, __p))
    {
      v6 = __p[0];
      if (__p[0] != __p[1])
      {
        v45 = v3;
        do
        {
          v7 = *v6;
          *buf = *(*v6 + 72);
          LODWORD(v51) = *(v7 + 88);
          sub_10000D03C(v52, buf);
          v8 = v56.n128_u64[1];
          if (v56.n128_u64[1] >= v57)
          {
            v11 = 0xCCCCCCCCCCCCCCCDLL * ((v56.n128_u64[1] - v56.n128_u64[0]) >> 2);
            v12 = v11 + 1;
            if (v11 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              sub_1000C7698();
            }

            if (0x999999999999999ALL * ((v57 - v56.n128_u64[0]) >> 2) > v12)
            {
              v12 = 0x999999999999999ALL * ((v57 - v56.n128_u64[0]) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v57 - v56.n128_u64[0]) >> 2) >= 0x666666666666666)
            {
              v13 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_100018404(&v56, v13);
            }

            v14 = 4 * ((v56.n128_u64[1] - v56.n128_u64[0]) >> 2);
            v15 = *v52;
            *(v14 + 16) = v53;
            *v14 = v15;
            v17 = v56.n128_u64[1];
            v16 = v56.n128_u64[0];
            v18 = 20 * v11 + v56.n128_u64[0] - v56.n128_u64[1];
            if (v56.n128_u64[0] != v56.n128_u64[1])
            {
              v19 = v14 + v56.n128_u64[0] - v56.n128_u64[1];
              do
              {
                v20 = *v16;
                *(v19 + 16) = v16[4];
                *v19 = v20;
                v19 += 20;
                v16 += 5;
              }

              while (v16 != v17);
              v16 = v56.n128_u64[0];
            }

            v10 = v14 + 20;
            v56.n128_u64[0] = v18;
            v56.n128_u64[1] = v14 + 20;
            v57 = 0;
            if (v16)
            {
              operator delete(v16);
            }
          }

          else
          {
            v9 = *v52;
            *(v56.n128_u64[1] + 16) = v53;
            *v8 = v9;
            v10 = v8 + 20;
          }

          v56.n128_u64[1] = v10;
          if (*v6)
          {
            (*(**v6 + 8))(*v6);
          }

          ++v6;
        }

        while (v6 != __p[1]);
        v6 = __p[0];
        v3 = v45;
      }

      __p[1] = v6;
      memset(buf, 0, sizeof(buf));
      v51 = 0;
      sub_100579774(buf, v2, &v56);
      if (qword_100B541F8 != -1)
      {
        sub_1008669A8();
      }

      sub_10000EFDC();
    }

    if (v3)
    {
      v21 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Keeping database for paired device %{public}@", buf, 0xCu);
      }

      v22 = v48;
      *v52 = xmmword_1008A4D14;
      v53 = 0;
      sub_10000D03C(buf, v52);
      sub_1005B7478(v22, buf);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      v24 = sub_100046458(off_100B508C8, v2, 0);
      if (v5 || BYTE6(v24) && (BYTE6(v24) != 1 || (~v24 & 0xC00000000000) != 0))
      {
        sub_100707D50(a1, v2);
      }

      else
      {
        v25 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Keeping database for public/static device %{public}@", buf, 0xCu);
        }

        memset(buf, 0, sizeof(buf));
        uuid_clear(buf);
        v26 = 0;
        v27 = (a1 + 224);
        v28 = 0x7FFFFFFF;
        while (1)
        {
          v29 = *(a1 + 216);
          if (v29 != v27)
          {
            do
            {
              if (qword_100B50F78 != -1)
              {
                sub_10086656C();
              }

              v30 = qword_100B50F70;
              v31 = sub_10004DF60(v29 + 32);
              LOBYTE(v30) = sub_100580920(v30, v31);

              if ((v30 & 1) == 0)
              {
                if (qword_100B50F78 != -1)
                {
                  sub_10086656C();
                }

                v32 = qword_100B50F70;
                v33 = sub_10004DF60(v29 + 32);
                LOBYTE(v32) = sub_100052A90(v32, v33);

                ++v26;
                if ((v32 & 1) == 0)
                {
                  v47 = 0;
                  if (qword_100B50F78 != -1)
                  {
                    sub_10086656C();
                  }

                  v34 = qword_100B50F70;
                  sub_10004DFB4(v52, v2);
                  if (!sub_1005807A8(v34, v52, &v47))
                  {
                    if (v47 == 1)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_1008666F4();
                      }

                      v38 = off_100B508C8;
                      v39 = sub_10004DF60(v29 + 32);
                      v37 = sub_100786A14(v38, v39);
                    }

                    else if (v47 == 2)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_1008666F4();
                      }

                      v35 = off_100B508C8;
                      v36 = sub_10004DF60(v29 + 32);
                      v37 = sub_100786988(v35, v36);
                    }

                    else
                    {
                      v40 = qword_100BCE910;
                      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
                      {
                        *v52 = 138543362;
                        *&v52[4] = v2;
                        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot update last connected time for device %{public}@ as no transport was found", v52, 0xCu);
                      }

                      v37 = 0;
                    }

                    if (uuid_is_null(buf) || v37 < v28)
                    {
                      uuid_copy(buf, v29 + 32);
                      v28 = v37;
                    }
                  }
                }
              }

              v41 = *(v29 + 1);
              if (v41)
              {
                do
                {
                  v42 = v41;
                  v41 = *v41;
                }

                while (v41);
              }

              else
              {
                do
                {
                  v42 = *(v29 + 2);
                  v43 = *v42 == v29;
                  v29 = v42;
                }

                while (!v43);
              }

              v29 = v42;
            }

            while (v42 != v27);
          }

          if (*(a1 + 240) >= v26 || uuid_is_null(buf))
          {
            break;
          }

          v44 = sub_10004DF60(buf);
          sub_100707D50(a1, v44);
        }
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v56.n128_u64[0])
    {
      v56.n128_u64[1] = v56.n128_u64[0];
      operator delete(v56.n128_u64[0]);
    }
  }

  else
  {
    v23 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v56.n128_u32[0] = 138543362;
      *(v56.n128_u64 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Database not found for device %{public}@", &v56, 0xCu);
    }
  }

  if (v49)
  {
    sub_100117644(v49);
  }
}

void sub_10070ADC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 128);
  if (v29)
  {
    *(v27 - 120) = v29;
    operator delete(v29);
  }

  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10070AE94(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = v7;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is ready with mtu %d", &v20, 0x12u);
  }

  sub_10004DFB4(&v20, v7);
  if (a1 + 200 == sub_10004E34C(a1 + 192, &v20))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866A40();
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086671C();
    }

    v12 = off_100B508A8;
    sub_10004DFB4(&v20, v7);
    if (sub_10074CD90(v12, &v20, 3u) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866A80();
    }
  }

  else
  {
    sub_10004DFB4(&v20, v7);
    v9 = sub_10070A400(a1 + 192, &v20);
    if (*v9)
    {
      if (a3)
      {
        v10 = *(a1 + 242);
        if (*(a1 + 242))
        {
          v11 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 67109120;
            LODWORD(v21) = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: MTU override to %d", &v20, 8u);
          }

          a4 = v10;
        }
      }

      else
      {
        a4 = 0;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      if (sub_10078D924(off_100B508C8, v7))
      {
        v14 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          v21 = v7;
          v15 = "Device %{public}@ connected, LE GATT disabled, blocking all GATT client communications";
          v16 = v14;
          v17 = 12;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
        }
      }

      else
      {
        v18 = sub_10000E92C();
        if (!(*(*v18 + 8))(v18) || *(a1 + 244) != 1)
        {
          *(v9 + 105) = 1;
          sub_100709B34(a1, v7, a4);
        }

        v19 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          v15 = "GattGateway initSqequence on deviceConnected, skipping for linkReady ";
          v16 = v19;
          v17 = 2;
          goto LABEL_27;
        }
      }
    }

    else
    {
      v13 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v20) = 0;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Gatt session handle is invalid", &v20, 2u);
        v13 = qword_100BCE910;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1008669D0();
      }
    }
  }
}

void sub_10070B220(uint64_t a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_10004DFB4(&v20, v5);
  v18 = 0;
  v19 = 0;
  sub_10070B42C(a1, &v20, 0, &v18);
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_1005B381C(v18, &v20);
    v6 = v20;
    if (v21 != v20)
    {
      sub_10070B5B4(a3, v21 - v20);
      v6 = v20;
      if (v20 != v21)
      {
        v7 = a3[1];
        do
        {
          v8 = *v6;
          v9 = a3[2];
          if (v7 >= v9)
          {
            v10 = (v7 - *a3) >> 3;
            if ((v10 + 1) >> 61)
            {
              sub_1000C7698();
            }

            v11 = v9 - *a3;
            v12 = v11 >> 2;
            if (v11 >> 2 <= (v10 + 1))
            {
              v12 = v10 + 1;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFF8)
            {
              v13 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_100008108(a3, v13);
            }

            v14 = (8 * v10);
            *v14 = v8;
            v7 = (8 * v10 + 8);
            v15 = a3[1] - *a3;
            v16 = v14 - v15;
            memcpy(v14 - v15, *a3, v15);
            v17 = *a3;
            *a3 = v16;
            a3[1] = v7;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v7 = v8;
            v7 += 8;
          }

          a3[1] = v7;
          ++v6;
        }

        while (v6 != v21);
        v6 = v20;
      }
    }

    if (v6)
    {
      v21 = v6;
      operator delete(v6);
    }
  }

  if (v19)
  {
    sub_100117644(v19);
  }
}

void sub_10070B3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100117644(a10);
  }

  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070B42C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  result = sub_10004E34C(a1 + 216, a2);
  if (a1 + 224 == result)
  {
    if (a3)
    {
      sub_100714AF8();
    }
  }

  else
  {
    v10 = *(result + 48);
    v9 = *(result + 56);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *a4 = v10;
    a4[1] = v9;
    if (v10)
    {
      *&v11 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10086671C();
      }

      result = sub_1000C4FCC(off_100B508A8, a2, &v11);
      if (result)
      {
        LOBYTE(v12) = 0;
        sub_1000216B4(&v12);
        *(v10 + 146) = sub_100255698(v11);
        return sub_10002249C(&v12);
      }

      else
      {
        *(v10 + 146) = 0;
      }
    }
  }

  return result;
}

void sub_10070B570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10070B5B4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100008108(result, a2);
    }

    sub_1000C7698();
  }

  return result;
}

void sub_10070B654(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v7 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_10004DFB4(v28, v7);
  v8 = sub_10070B868(a1, v28);
  if (v8)
  {
    v9 = *(v8 + 112);
    v10 = (v8 + 120);
    if (v9 != (v8 + 120))
    {
      v11 = 0;
      do
      {
        v12 = v9[6];
        if (v12)
        {
          v13 = v9 + 6;
          do
          {
            v14 = v12[4];
            v15 = v14 >= a2;
            v16 = v14 < a2;
            if (v15)
            {
              v13 = v12;
            }

            v12 = v12[v16];
          }

          while (v12);
          if (v13 != v9 + 6 && v13[4] <= a2)
          {
            v17 = a4[2];
            if (v11 >= v17)
            {
              v18 = *a4;
              v19 = v11 - *a4;
              v20 = v19 >> 1;
              if (v19 >> 1 <= -2)
              {
                sub_1000C7698();
              }

              v21 = v17 - v18;
              if (v21 <= v20 + 1)
              {
                v22 = v20 + 1;
              }

              else
              {
                v22 = v21;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v23 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                sub_1003705C4(a4, v23);
              }

              *(2 * v20) = *(v9 + 16);
              v11 = (2 * v20 + 2);
              memcpy(0, v18, v19);
              v24 = *a4;
              *a4 = 0;
              a4[1] = v11;
              a4[2] = 0;
              if (v24)
              {
                operator delete(v24);
              }
            }

            else
            {
              *v11 = *(v9 + 16);
              v11 += 2;
            }

            a4[1] = v11;
          }
        }

        v25 = v9[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v9[2];
            v27 = *v26 == v9;
            v9 = v26;
          }

          while (!v27);
        }

        v9 = v26;
      }

      while (v26 != v10);
    }
  }
}

void sub_10070B838(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070B868(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = sub_10004DF60(a2);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 192, uu2);

  if (a1 + 200 == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 48;
  }
}

uint64_t sub_10070B91C(uint64_t a1, const unsigned __int8 *a2, uint64_t *a3, int a4)
{
  if (!*(*a3 + 24))
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866AF0(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = sub_10070B868(a1, a2);
  if (!v16)
  {
    return 312;
  }

  v17 = v16;
  if (a4)
  {
    if (*(v16 + 104) == 1)
    {
      if (!*(v16 + 48))
      {
        v18 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_100866B68(v18, v19, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = *(v17 + 16);
      v27 = (v26 + 8 * (*(v17 + 40) >> 9));
      v28 = *v27 + 8 * (*(v17 + 40) & 0x1FFLL);
      if (*(v17 + 24) == v26)
      {
        v28 = 0;
      }

      v29 = (v28 - *v27) >> 3;
      if (v29 < 0)
      {
        v35 = 510 - v29;
        v31 = &v27[-(v35 >> 9)];
        v32 = *v31;
        v33 = ~v35 & 0x1FFLL;
      }

      else
      {
        v30 = v29 + 1;
        v31 = &v27[v30 >> 9];
        v32 = *v31;
        v33 = v30 & 0x1FF;
      }

      sub_10070FE04((v17 + 8), v31, v32 + 8 * v33, a3);
    }

    else
    {
      sub_1007101BC((v16 + 8), a3);
    }
  }

  else
  {
    sub_100710240((v16 + 8), a3);
  }

  if (*(v17 + 105) == 1)
  {
    v36 = sub_10004DF60(a2);
    sub_1007102CC(a1, v36, v17);
  }

  return 0;
}

BOOL sub_10070BAC0(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a2;
  sub_10004DFB4(&v17, v7);
  v15 = 0;
  v16 = 0;
  sub_10070B42C(a1, &v17, 0, &v15);
  if (v15)
  {
    v8 = sub_1005B6820(v15, a4);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
      v11 = *(v10 + 20);
      v17 = *(v10 + 4);
      LODWORD(v18) = v11;
      sub_10000D03C(&v19, &v17);
      v17 = xmmword_1008C50B0;
      LODWORD(v18) = 0;
      if (sub_10004E15C(&v19, &v17))
      {
        v19 = 0uLL;
        v20 = 0;
        v17 = *(v9 + 76);
        LODWORD(v18) = *(v9 + 92);
        sub_10000D03C(&v19, &v17);
        v12 = sub_100058794(a1 + 144, a3);
        if (a1 + 152 != v12)
        {
          v17 = 0uLL;
          v18 = 0;
          sub_1007134F4(&v17, v12 + 56);
          v13 = (&v17 + 8) != sub_10007C324(&v17, &v19);
          sub_10000CEDC(&v17, *(&v17 + 1));
          goto LABEL_9;
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008667B4();
  }

  v13 = 0;
LABEL_9:
  if (v16)
  {
    sub_100117644(v16);
  }

  return v13;
}

void sub_10070BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, void *a12)
{
  sub_10000CEDC(&a11, a12);
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10070BCBC(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = a2;
  sub_10004DFB4(uu1, v5);
  v6 = sub_10071380C(a1 + 168, uu1);
  sub_100051F7C(v6 + 48, a3);
}

BOOL sub_10070BD80(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v5 = a3;
  sub_10004DFB4(uu2, v5);
  if (a1 + 176 == sub_10004E34C(a1 + 168, uu2) || (sub_10004DFB4(uu1, v5), !*(sub_10071380C(a1 + 168, uu1) + 64)))
  {
    v8 = 0;
  }

  else
  {
    sub_10004DFB4(uu2, v5);
    *uu1 = uu2;
    v6 = sub_10071380C(a1 + 168, uu2);
    v7 = sub_10007C324(v6 + 48, a2);
    sub_10004DFB4(uu1, v5);
    v8 = sub_10071380C(a1 + 168, uu1) + 56 != v7;
  }

  return v8;
}

void sub_10070BEF4(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v7 = a2;
  sub_10004DFB4(v10, v7);
  v8 = 0;
  v9 = 0;
  sub_10070B42C(a1, v10, 0, &v8);
  if (v8)
  {
    sub_1005B6D68(v8, a3, a4);
    if (v9)
    {
      sub_100117644(v9);
    }
  }

  else
  {
    if (v9)
    {
      sub_100117644(v9);
    }

    sub_10003A364(a4);
  }
}

uint64_t sub_10070BFF0(uint64_t a1, void *a2, __int128 **a3, char a4, uint64_t a5, int a6)
{
  v11 = a2;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v12 = *a3;
  for (i = a3[1]; v12 != i; v12 = (v12 + 20))
  {
    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    if (sub_100066E24(qword_100B508F8, v12, a4, v10, v11))
    {
      sub_10000CDB8(&v27, v12);
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v14 = sub_10070C2D0(v11, a6);
  v15 = v27;
  if (v14)
  {
    sub_10003A598(&v24, v27, v28, 0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 2));
  }

  else
  {
    v16 = v28;
    if (v27 != v28)
    {
      do
      {
        if (a1 + 128 == sub_10007C324(a1 + 120, v15))
        {
          sub_10000CDB8(&v24, v15);
        }

        else
        {
          v17 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
          {
            sub_10003B85C(v15, &__p);
            p_p = &__p;
            if (v23 < 0)
            {
              p_p = __p;
            }

            *buf = 136446466;
            v31 = p_p;
            v32 = 2114;
            v33 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "deviceHasAnyService skipping %{public}s because %{public}@ link is not encrypted", buf, 0x16u);
            if (v23 < 0)
            {
              operator delete(__p);
            }
          }
        }

        v15 = (v15 + 20);
      }

      while (v15 != v16);
    }
  }

  __p = 0;
  v22 = 0;
  sub_10004DFB4(buf, v11);
  sub_10070B42C(a1, buf, 0, &__p);
  if (__p)
  {
    v19 = sub_1005B370C(__p, &v24);
  }

  else
  {
    v19 = 0;
  }

  if (v22)
  {
    sub_100117644(v22);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v19;
}

void sub_10070C270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (a13)
  {
    sub_100117644(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070C2D0(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    v9 = 0xFFFF;
    if (qword_100B50F78 != -1)
    {
      sub_1008665F8();
    }

    v4 = qword_100B50F70;
    sub_10004DFB4(v10, v3);
    sub_1005807A8(v4, v10, &v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086671C();
    }

    v5 = off_100B508A8;
    sub_10004DFB4(v10, v3);
    v6 = sub_100050304(v5, v10);
    if (v9 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_10070C3E4(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4)
{
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    v7 = v10 >= 0 ? __p : __p[0];
    out[0] = 136446210;
    *&out[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finding all primary services on device %{public}s", out, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = 0;
  memset(out, 0, sizeof(out));
  sub_100018384(a3, __p);
  v8 = sub_10004DF60(a4);
  sub_10057973C(out, __p, 1, v8, 0);

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008669A8();
  }

  sub_10000EFDC();
  operator new();
}

void sub_10070C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  v17 = a9;
  a9 = 0;
  if (v17)
  {
    sub_100713478(&a9, v17);
  }

  v18 = __p;
  __p = 0;
  if (v18)
  {
    sub_100713478(&__p, v18);
  }

  sub_1003B169C(&a16);
  _Unwind_Resume(a1);
}

void sub_10070C718(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t *a5)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_100007AD0(&v16);
  for (i = *a5; i != a5[1]; i += 20)
  {
    sub_10003B85C(i, out);
    v9 = sub_100007774(v17);
    sub_100007774(v9);
    if (SHIBYTE(out[2]) < 0)
    {
      operator delete(out[0]);
    }
  }

  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &v31;
    std::stringbuf::str();
    if (v32 < 0)
    {
      v11 = v31;
    }

    memset(out, 0, 37);
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136446466;
    v35 = v11;
    v36 = 2082;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finding all primary services with UUID(s) %{public}s on device %{public}s", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }
  }

  memset(out, 0, 56);
  sub_100018384(a3, &v31);
  v13 = sub_10004DF60(a4);
  sub_10057973C(out, &v31, 1, v13, a5);

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008669A8();
  }

  sub_10000EFDC();
  operator new();
}

void sub_10070CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

void sub_10070CCC0(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6)
{
  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a5;
    *&out[8] = 1024;
    *&out[10] = a6;
    *&out[14] = 2082;
    *&out[16] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finding included services in range [0x%04x, 0x%04x] on device %{public}s", out, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070CEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070CF58(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6)
{
  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a5;
    *&out[8] = 1024;
    *&out[10] = a6;
    *&out[14] = 2082;
    *&out[16] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finding all characteristics in range [0x%04x, 0x%04x] on device %{public}s", out, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D1F0(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5)
{
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding all descriptors for characteristic handle 0x%04x on device %{public}s", out, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D490(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6)
{
  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a6;
    *&out[8] = 1024;
    *&out[10] = a5;
    *&out[14] = 2082;
    *&out[16] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reading value for characteristic value handle 0x%04x, char handle 0x%04x on device %{public}s", out, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D728(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5)
{
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reading value for descriptor handle 0x%04x on device %{public}s", out, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D9A4(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, uint64_t a6, int a7)
{
  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v11 = "with";
    }

    else
    {
      v11 = "without";
    }

    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *out = 136446722;
    *&out[4] = v11;
    *&out[12] = 1024;
    *&out[14] = a7;
    *&out[18] = 2082;
    *&out[20] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Writing value %{public}s response to characteristic handle 0x%04x on device %{public}s", out, 0x1Cu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a11;
  a11 = 0;
  if (v16)
  {
    sub_100713478(&a11, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070DC44(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5)
{
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Writing value to descriptor handle 0x%04x on device %{public}s", out, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070DE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070DEB4(uint64_t a1, uint64_t a2, unint64_t a3, const unsigned __int8 *a4, unsigned int a5, int a6)
{
  v28 = a3;
  v27 = a5;
  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a6 ? "Subscribing" : "Unsubscribing";
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    v12 = v26 >= 0 ? __p : __p[0];
    *out = 136446722;
    *&out[4] = v11;
    *&out[12] = 1024;
    *&out[14] = a5;
    *&out[18] = 2082;
    *&out[20] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s to updates of characteristic handle 0x%04x on device %{public}s", out, 0x1Cu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = sub_10070B868(a1, a4);
  if (!v13)
  {
    goto LABEL_28;
  }

  v16 = *(v13 + 120);
  v14 = v13 + 120;
  v15 = v16;
  v17 = (v14 - 8);
  if (!v16)
  {
    goto LABEL_19;
  }

  v18 = v14;
  do
  {
    v19 = *(v15 + 32);
    v20 = v19 >= a5;
    v21 = v19 < a5;
    if (v20)
    {
      v18 = v15;
    }

    v15 = *(v15 + 8 * v21);
  }

  while (v15);
  if (v18 == v14 || *(v18 + 32) > a5)
  {
LABEL_19:
    v18 = v14;
  }

  if (a6)
  {
    *out = &v27;
    v22 = sub_100713AA8(v14 - 8, &v27);
    sub_1000452CC((v22 + 5), &v28);
    goto LABEL_28;
  }

  if (v18 == v14)
  {
LABEL_28:
    operator new();
  }

  sub_100075DC4((v18 + 40), &v28);
  if (!*(v18 + 56))
  {
    sub_100480394(v17, v18);
    goto LABEL_28;
  }

  v23 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *out = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Swallowing unsubscription event as there are other session(s) still subscribed", out, 2u);
  }

  return 913;
}

void sub_10070E228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a9;
  a9 = 0;
  if (v16)
  {
    sub_100713478(&a9, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070E28C(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t *a5)
{
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (*(a5 + 23) >= 0)
    {
      v9 = a5;
    }

    else
    {
      v9 = *a5;
    }

    *out = 136446466;
    *&out[4] = v8;
    *&out[12] = 2080;
    *&out[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting GAP name on device %{public}s to %s", out, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070E4FC(uint64_t a1, const unsigned __int8 *a2, uint64_t *a3)
{
  v6 = qword_100BCE910;
  if (!*(*a3 + 24) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    *out = 136446210;
    *&out[4] = "holder->command";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", out, 0xCu);
    v6 = qword_100BCE910;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v7 = v13 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enqueuing a delayed command for device %{public}s", out, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_10070B868(a1, a2);
  if (!v8)
  {
    return 312;
  }

  v9 = v8;
  sub_100710240((v8 + 56), a3);
  if (*(v9 + 96) == 1)
  {
    *(v9 + 106) = 1;
    *out = 0;
    *&out[8] = 0;
    uuid_copy(out, a2);
    v10 = sub_100007EE8();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3321888768;
    v14[2] = sub_10071038C;
    v14[3] = &unk_100B0A538;
    uuid_copy(v15, out);
    sub_10008E008(v10, 1000, v14);
  }

  return 0;
}

BOOL sub_10070E714(uint64_t a1, uint64_t a2, unsigned __int8 *uu1)
{
  v13 = 0;
  v14[0] = 0;
  v14[1] = 0;
  *out = uu1;
  v5 = sub_100713C3C(a1 + 248, uu1);
  sub_1007134F4(&v13, v5 + 48);
  *buf = *a2;
  *&buf[16] = *(a2 + 16);
  sub_10000D03C(out, buf);
  v6 = sub_10007C324(&v13, out);
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu1, out);
    v8 = __p;
    sub_100007E30(__p, out);
    if (v12 < 0)
    {
      v8 = __p[0];
    }

    v15 = *a2;
    v16 = *(a2 + 16);
    sub_10000D03C(&v17, &v15);
    sub_10003B85C(&v17, out);
    if (out[23] >= 0)
    {
      v9 = out;
    }

    else
    {
      v9 = *out;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v19 = 1024;
    v20 = v14 == v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "shouldNotifyBuiltInService device:%s service:%s notify:%d", buf, 0x1Cu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000CEDC(&v13, v14[0]);
  return v14 == v6;
}

void sub_10070E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10000CEDC(&a15, a16);
  _Unwind_Resume(a1);
}

void sub_10070E940(uint64_t a1, uint64_t a2, unsigned __int8 *uu1)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = 0;
  *out = uu1;
  v6 = sub_100713C3C(a1 + 248, uu1);
  sub_1007134F4(&v11, v6 + 48);
  *__p = *a2;
  v17 = *(a2 + 16);
  sub_10000D03C(out, __p);
  sub_100051F7C(&v11, out);
  *out = uu1;
  v7 = (sub_100713C3C(a1 + 248, uu1) + 48);
  if (v7 != &v11)
  {
    sub_100713D7C(v7, v11, v12);
  }

  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu1, out);
    v9 = __p;
    sub_100007E30(__p, out);
    if (v18 < 0)
    {
      v9 = __p[0];
    }

    v13 = *a2;
    v14 = *(a2 + 16);
    sub_10000D03C(&v15, &v13);
    sub_10003B85C(&v15, out);
    if (out[23] >= 0)
    {
      v10 = out;
    }

    else
    {
      v10 = *out;
    }

    *buf = 136315394;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didNotifyBuiltInService device:%s service:%s", buf, 0x16u);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000CEDC(&v11, v12[0]);
}

void sub_10070EB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10000CEDC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10070EB84(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  sub_10004DFB4(buf, v4);
  v43 = 0;
  v44 = 0;
  sub_10070B42C(a1, buf, 0, &v43);
  v5 = v43;
  if (!v43)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008667B4();
    }

    goto LABEL_58;
  }

  sub_1005B7638(v43, "");
  *v50 = xmmword_1008A4C9C;
  v51 = 0;
  sub_10000D03C(buf, v50);
  sub_10003A364(v50);
  v6 = sub_1005B68E8(v5, buf, v50);
  *v50 = xmmword_1008A4CB0;
  v51 = 0;
  sub_10000D03C(buf, v50);
  sub_10003A364(v50);
  v7 = sub_1005B68E8(v5, buf, v50);
  *v50 = xmmword_1008A4CC4;
  v51 = 0;
  sub_10000D03C(buf, v50);
  sub_10003A364(v50);
  v8 = sub_1005B68E8(v5, buf, v50);
  *v50 = xmmword_1008A4CD8;
  v51 = 0;
  sub_10000D03C(buf, v50);
  sub_10003A364(v50);
  v9 = sub_1005B68E8(v5, buf, v50);
  v10 = v9;
  if (!v6 && !v7 && !v8 && !v9)
  {
    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LE Audio Services not found.", buf, 2u);
    }

    goto LABEL_58;
  }

  v41 = v8;
  v12 = sub_10000C7D0();
  v13 = (*(*v12 + 4336))(v12);
  if (qword_100B50920 != -1)
  {
    sub_100866C08();
  }

  v42 = sub_1006447FC(qword_100B50918, v4);
  v14 = sub_10000E92C();
  v15 = (*(*v14 + 912))(v14);
  v16 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "not supported";
    if (v13)
    {
      v17 = "supported";
    }

    *buf = 136315906;
    *&buf[4] = v17;
    if (v42)
    {
      v18 = "enabled";
    }

    else
    {
      v18 = "disabled";
    }

    *&buf[12] = 2080;
    *&buf[14] = v18;
    v46 = 2080;
    if (v15)
    {
      v19 = "enabled";
    }

    else
    {
      v19 = "disabled";
    }

    v47 = v19;
    v48 = 2080;
    v49 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LE Audio Platform Feature is %s. Hearing Aid: %s. TMAS: %s. Generic Audio: %s.", buf, 0x2Au);
  }

  if ((v13 & (v42 | v15)) != 1)
  {
    goto LABEL_58;
  }

  if (!sub_10070E714(a1, &xmmword_1008A4C9C, a2))
  {
    goto LABEL_37;
  }

  if (v6)
  {
    v20 = *(v6 + 8);
    v21 = *(v20 + 20);
    *buf = *(v20 + 4);
    *&buf[16] = v21;
    sub_10000D03C(v50, buf);
    *buf = xmmword_1008C50C4;
    *&buf[16] = 0;
    v22 = sub_10004E15C(v50, buf);
    if (v7)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!v7)
  {
    goto LABEL_37;
  }

  if (v15)
  {
    v24 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "The device %@ supports CAS or ASCS", buf, 0xCu);
    }

    sub_10070E940(a1, &xmmword_1008A4C9C, a2);
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    sub_10078DF8C(off_100B508C8, v4);
    v25 = 0;
    v26 = &xmmword_1008A4C9C;
    goto LABEL_38;
  }

LABEL_37:
  v26 = 0;
  v25 = 1;
LABEL_38:
  if ((sub_10070E714(a1, &xmmword_1008A4CD8, a2) & v15) != 1)
  {
    goto LABEL_46;
  }

  if (!v10)
  {
LABEL_47:
    v30 = 1;
    goto LABEL_48;
  }

  v27 = *(v10 + 1);
  v28 = *(v27 + 20);
  *buf = *(v27 + 4);
  *&buf[16] = v28;
  sub_10000D03C(v50, buf);
  *buf = xmmword_1008C50C4;
  *&buf[16] = 0;
  if (!sub_10004E15C(v50, buf))
  {
LABEL_46:
    v10 = 0;
    goto LABEL_47;
  }

  v29 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "The device %@ supports TMAS", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  sub_10078E094(off_100B508C8, v4);
  v30 = 0;
  v10 = &xmmword_1008A4CD8;
LABEL_48:
  if ((sub_10070E714(a1, &xmmword_1008A4CC4, a2) & v42) == 1)
  {
    if (v8)
    {
      v31 = *(v8 + 8);
      v32 = *(v31 + 20);
      *buf = *(v31 + 4);
      *&buf[16] = v32;
      sub_10000D03C(v50, buf);
      *buf = xmmword_1008C50C4;
      *&buf[16] = 0;
      if (sub_10004E15C(v50, buf))
      {
        v33 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "The device %@ supports HAS", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_10078E010(off_100B508C8, v4);
        v10 = &xmmword_1008A4CC4;
        goto LABEL_62;
      }
    }
  }

  if ((v30 & 1) == 0)
  {
LABEL_62:
    sub_10070E940(a1, v10, a2);
    v26 = v10;
    goto LABEL_63;
  }

  if (v25)
  {
LABEL_58:
    v34 = 0;
    goto LABEL_59;
  }

LABEL_63:
  *buf = 0;
  *&buf[8] = 0;
  sub_10007A978(buf, v26, 1);
  v36 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Launching LE Audio Services", v50, 2u);
  }

  v37 = +[BluetoothAudiodConnection sharedInstance];
  v38 = [[NSUUID alloc] initWithUUIDBytes:buf];
  [v37 deviceConnected:v4 withServiceUUID:v38];

  if (sub_10004E15C(v26, &xmmword_1008A4CC4))
  {
    v39 = qword_100BCE910;
    v40 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Notify LE audio device connection", v50, 2u);
    }

    sub_10070F874(v40, v4, 4u);
  }

  v34 = 1;
LABEL_59:
  if (v44)
  {
    sub_100117644(v44);
  }

  return v34;
}

void sub_10070F340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100117644(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10070F3C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508F0 != -1)
  {
    sub_10086660C();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 48), 0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000E2140(v3, 12);
    LOBYTE(v4) = sub_1000E2140(v4, 31);
    v6 = sub_100007EE8();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10070F4E8;
    v10[3] = &unk_100B0A518;
    v12 = v2;
    v16 = v5;
    v7 = *(a1 + 32);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = v7;
    v13 = v8;
    v14 = v9;
    v15 = *(a1 + 64);
    v17 = v4;
    sub_10000CA94(v6, v10);
  }
}

void sub_10070F4E8(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    goto LABEL_24;
  }

  v2 = *(a1 + 40);
  v3 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    buf.n128_u32[0] = 138412290;
    *(buf.n128_u64 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The device %@ supports Classic HRM", &buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  v5 = off_100B508C8;
  v6 = *(a1 + 32);
  sub_100007E30(__p, "BlockCATTHRM");
  v7 = sub_10004EB40(v5, v6, __p);
  v8 = v7;
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_10:
    v9 = sub_100432610();
    (*(*v9 + 72))(v9, *(a1 + 32));
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    v10 = off_100B508C8;
    v11 = *(a1 + 32);
    sub_100007E30(v22, "HKQuantityTypeIdentifierHeartRate");
    sub_10078787C(v10, v11, v22);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    v12 = off_100B508C8;
    v13 = *(a1 + 32);
    sub_100007E30(v20, "FitnessClassic");
    sub_10078787C(v12, v13, v20);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    sub_10070E940(v2, &xmmword_1008A4D00, *(a1 + 48));
    goto LABEL_19;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  v19 = 0;
  sub_1000216B4(&v19);
  v14 = sub_1002D3618(*(a1 + 56));
  LODWORD(v26) = v14;
  WORD2(v26) = WORD2(v14);
  v15 = sub_100255934(&v26);
  if (v15)
  {
    v16 = sub_100255698(v15);
    if ((sub_1001C4E94(v16 & 0xFFF, **(*(a1 + 64) + 8), *(*(a1 + 64) + 48)) & 1) == 0)
    {
      v17 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_10004DF60(*(a1 + 48));
        buf.n128_u32[0] = 138412290;
        *(buf.n128_u64 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to redact HRM reports for device %@", &buf, 0xCu);
      }
    }
  }

  sub_10002249C(&v19);
LABEL_24:
  if (*(a1 + 73) == 1)
  {
    buf = 0uLL;
    v29 = 0;
    v26 = xmmword_1008A4D00;
    v27 = 0;
    sub_10000D03C(&buf, &v26);
    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    sub_10070BCBC(qword_100B508F8, *(a1 + 32), &buf);
  }
}

void sub_10070F874(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = a2;
  v6 = v4;
  if (qword_100B512F8 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100866C30();
    v5 = v6;
  }

  sub_1003AE530(off_100B512F0, v5, a3);
}

void sub_10070F8FC(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a3, out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning GAP name update sequence for device %{public}s", out, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070FB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070FB80(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a3, out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning delete bond sequence for device %{public}s", out, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070FDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10070FE04(int64x2_t *a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v10 - *v9) >> 3);
  }

  v12 = a1[2].i64[1];
  v13 = v12 - v11;
  if (v11 < v12 - v11)
  {
    if (v6)
    {
      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100714098(a1);
      if (v11)
      {
LABEL_10:
        v14 = a1[2].u64[0];
        v15 = a1->i64[1];
        v16 = (v15 + 8 * (v14 >> 9));
        if (a1[1].i64[0] == v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = (*v16 + 8 * (a1[2].i64[0] & 0x1FF));
        }

        v58.n128_u64[0] = v15 + 8 * (v14 >> 9);
        v58.n128_u64[1] = v17;
        sub_1007142E0(v16, v17);
        v32 = *v17;
        *v17 = 0;
        *v33 = v32;
        a1[2] = vaddq_s64(a1[2], xmmword_1008C50A0);
        if (v11 != 1)
        {
          v34 = (v17 - *v16) >> 3;
          if (v34 < 0)
          {
            v45 = 510 - v34;
            v36 = &v16[-(v45 >> 9)];
            v37 = &(*v36)[~v45 & 0x1FF];
          }

          else
          {
            v35 = v34 + 1;
            v36 = &v16[v35 >> 9];
            v37 = &(*v36)[v35 & 0x1FF];
          }

          v46 = sub_100361350(&v58, v11);
          v59 = v58;
          sub_100714508(v36, v37, v46, v47, &v59);
          v17 = v59.n128_u64[1];
          v58 = v59;
        }

        v48 = *a4;
        *a4 = 0;
        v49 = *v17;
        *v17 = v48;
        if (v49)
        {
          v50 = v17;
LABEL_46:
          sub_100713478(v50, v49);
          goto LABEL_47;
        }

        goto LABEL_47;
      }
    }

    v26 = a1[2].u64[0];
    v27 = a1->i64[1];
    v28 = (v27 + 8 * (v26 >> 9));
    if (a1[1].i64[0] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 8 * (a1[2].i64[0] & 0x1FF);
    }

    if (v29 == *v28)
    {
      v29 = *(v28 - 1) + 4096;
    }

    v30 = *a4;
    *a4 = 0;
    *(v29 - 8) = v30;
    v31 = a1[2].i64[1] + 1;
    a1[2].i64[0] = v26 - 1;
    a1[2].i64[1] = v31;
    goto LABEL_47;
  }

  if (v8 == v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v8 - v7) << 6) - 1;
  }

  if (v18 == v12 + v6)
  {
    sub_100714334(a1);
    v12 = a1[2].i64[1];
    v13 = v12 - v11;
  }

  if (v12 == v11)
  {
    v19 = a1[2].i64[0] + v11;
    v20 = *(a1->i64[1] + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8));
    v21 = *a4;
    *a4 = 0;
    *(v20 + 8 * (v19 & 0x1FF)) = v21;
    a1[2].i64[1] = v11 + 1;
    goto LABEL_47;
  }

  v22 = a1[2].i64[0] + v12;
  v23 = a1->i64[1];
  v24 = (v23 + 8 * (v22 >> 9));
  if (a1[1].i64[0] == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = (*v24 + 8 * (v22 & 0x1FF));
  }

  v38 = sub_1007142E0(v24, v25);
  v40 = *v39;
  *v39 = 0;
  *v25 = v40;
  ++a1[2].i64[1];
  if (v13 >= 2)
  {
    v41 = v39;
    v42 = ((v25 - *v24) >> 3) - v13;
    if (v42 < 1)
    {
      v51 = 511 - v42;
      v43 = &v24[-(v51 >> 9)];
      v44 = (*v43 + 8 * (~v51 & 0x1FF));
    }

    else
    {
      v43 = &v24[v42 >> 9];
      v44 = (*v43 + 8 * (v42 & 0x1FF));
    }

    v59 = 0u;
    v60 = 0u;
    sub_10071470C(v43, v44, v38, v41, v24, v25, &v59);
    v25 = *(&v60 + 1);
    v24 = v60;
  }

  if (v25 == *v24)
  {
    v25 = (*(v24 - 1) + 4096);
  }

  v52 = *a4;
  *a4 = 0;
  v54 = *(v25 - 1);
  v53 = v25 - 1;
  v49 = v54;
  *v53 = v52;
  if (v54)
  {
    v50 = v53;
    goto LABEL_46;
  }

LABEL_47:
  v55 = a1->i64[1];
  if (a1[1].i64[0] == v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v55 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v59.n128_u64[0] = v55 + 8 * (a1[2].i64[0] >> 9);
  v59.n128_u64[1] = v56;
  return sub_100361350(&v59, v11);
}

const void **sub_1007101BC(const void **result, uint64_t *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = sub_100714098(result);
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

  v8 = *a2;
  *a2 = 0;
  *(v7 - 8) = v8;
  v9 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v9;
  return result;
}

void *sub_100710240(void *result, uint64_t *a2)
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
    result = sub_100714334(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
  v10 = *a2;
  *a2 = 0;
  *(v9 + 8 * (v8 & 0x1FF)) = v10;
  v3[5] = v7 + 1;
  return result;
}

void sub_1007102CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a3 + 105) & 1) == 0)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866C44(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a3 + 48))
  {
    v14 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866CBC(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if ((*(a3 + 104) & 1) == 0)
  {
    sub_10071056C(a1, v5, a3);
  }
}

void sub_10071038C(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100866D34();
  }

  v2 = qword_100B508F8;

  sub_1007103E0(v2, (a1 + 32));
}

void sub_1007103E0(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = sub_10070B868(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 96))
    {
      if (*(v4 + 105) != 1 || *(v4 + 106) != 1 || (sub_100710240((v4 + 8), (*(*(v4 + 64) + ((*(v4 + 88) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v4 + 88) & 0x1FFLL))), sub_1007106A4((v5 + 56)), sub_10004DF60(a2), v6 = objc_claimAutoreleasedReturnValue(), sub_1007102CC(a1, v6, v5), v6, *(v5 + 96)))
      {
        *(v5 + 106) = 1;
        memset(dst, 0, sizeof(dst));
        uuid_copy(dst, a2);
        v7 = sub_100007EE8();
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_10071071C;
        v8[3] = &unk_100B0A538;
        uuid_copy(v9, dst);
        sub_10008E008(v7, 1000, v8);
      }
    }
  }
}

void sub_10071056C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a3 + 104) & 1) != 0 || !*(a3 + 48))
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866D48(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(*(*(*(a3 + 16) + ((*(a3 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a3 + 40) & 0x1FFLL)) + 24);
  sub_10004DFB4(v17, v5);
  sub_10070B42C(a1, v17, 1, &v15);
  sub_1006EF22C(v14, v5, &v15, *a3);
  if (v16)
  {
    sub_100117644(v16);
  }

  *(a3 + 104) = 1;
  *(a3 + 106) = 0;
}

void sub_100710678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007106A4(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[1] + ((v2 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v2 & 0x1FF));
  v4 = *v3;
  *v3 = 0;
  if (v4)
  {
    sub_100713478(v3, v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return sub_100374F94(a1, 1);
}

uint64_t sub_10071071C(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100866D34();
  }

  v2 = qword_100B508F8;

  return sub_1007103E0(v2, a1 + 32);
}

void sub_100710770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  *src = 0;
  v16 = 0;
  sub_10004DFB4(src, *(a2 + 16));
  v7 = *(a2 + 40);
  v8 = sub_100007EE8();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1007108B8;
  v10[3] = &unk_100B0A570;
  v12 = a1;
  uuid_copy(v14, src);
  v13 = v7;
  v9 = v5;
  v11 = v9;
  sub_10000CA94(v8, v10);

  objc_autoreleasePoolPop(v6);
}

unsigned __int16 *sub_1007108B8(uint64_t a1)
{
  result = sub_10070B868(*(a1 + 40), (a1 + 50));
  if (result && *result == *(a1 + 48))
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void sub_100710930(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100007F20(&v12, a4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100710A70;
  v7[3] = &unk_100B0A5A0;
  v7[4] = a1;
  v7[5] = a2;
  v11 = a3;
  __dst = 0;
  v10 = 0;
  __p = 0;
  if (v13 != v12)
  {
    sub_1000080CC(&__p, (v13 - v12) >> 3);
  }

  sub_100710770(a1, a2, v7);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_100710A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *(v17 - 72);
  if (v19)
  {
    *(v17 - 64) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100710A70(uint64_t a1)
{
  sub_100710AE8(*(a1 + 32), *(a1 + 40), *(a1 + 72), (a1 + 48));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(a1 + 56);
    }

    ++v3;
  }
}

void sub_100710AE8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = *(a2 + 16);
  if (a3)
  {
    if (a3 > 255)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100866DC0();
      }

      v9 = 1;
    }

    else
    {
      v9 = (a3 + 1000);
    }
  }

  else
  {
    if (*a4 != a4[1])
    {
      *uu1 = 0;
      v30 = 0;
      sub_10004DFB4(v28, v8);
      sub_10070B42C(a1, v28, 0, uu1);
      if (*uu1)
      {
        sub_1005B7638(*uu1, "");
      }

      if (v30)
      {
        sub_100117644(v30);
      }
    }

    v9 = 0;
  }

  sub_10004DFB4(uu1, v8);
  v10 = sub_10070A400(a1 + 192, uu1);
  if (!*(v10 + 48))
  {
    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866CBC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(*(*(v10 + 16) + ((*(v10 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v10 + 40) & 0x1FFLL));
  if (v19[3] != a2)
  {
    v20 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866E30(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (*v19)
  {
    (***v19)(*v19, v8, v19[1], v9, a4, v19[2]);
  }

  sub_1007106A4((v10 + 8));
  *(v10 + 104) = 0;
  if (*(v10 + 48))
  {
    sub_10071056C(a1, v8, v10);
  }
}

void sub_100710CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100117644(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100710D3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100710D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100710E28;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_100710E34(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100710FAC;
  v4[3] = &unk_100B0A5D8;
  v5 = a2;
  v3 = v5;
  sub_100710EE0(a1 + 40, v4);
}

void sub_100710EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_100710FDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007110B0;
  v8[3] = &unk_100AE0BC0;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

void sub_1007110C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100711170;
  v6[3] = &unk_100B0A600;
  v7 = a2;
  v8 = a3;
  v5 = v7;
  sub_100710EE0(a1 + 40, v6);
}

void sub_1007111A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10071126C;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10071126C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100711308;
  v2[3] = &unk_100B0A5D8;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  sub_100710EE0(v1 + 40, v2);
}

void sub_100711338(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v6 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10071140C;
  v8[3] = &unk_100AF9820;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

void sub_10071141C(uint64_t a1, void *a2, __int16 a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007114D0;
  v6[3] = &unk_100B0A628;
  v7 = a2;
  v8 = a3;
  v5 = v7;
  sub_100710EE0(a1 + 40, v6);
}

void sub_100711504(id a1)
{
  if (qword_100B50900 == -1)
  {
  }

  else
  {
    sub_100866D34();
  }

  sub_10071154C();
}

uint64_t sub_10071154C()
{
  if (qword_100B512F8 != -1)
  {
    sub_100866C30();
  }

  v0 = *(*off_100B512F0 + 280);

  return v0();
}

void sub_1007115B8(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100866EA8();
  }

  v2 = sub_1000ACEE4(off_100B508A8, *(a1 + 32));
  if (v2)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_13;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  sub_1000498D4(off_100B508C8, *(a1 + 40), 0, 1u, 0, 0, &v6);
  v2 = sub_10004DF60(&v6);
  if (v2)
  {
LABEL_4:
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dispatching indication for device %{public}@", &v6, 0xCu);
    }

    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    sub_100711790(qword_100B508F8, v2, *(a1 + 80), a1 + 48, v4, *(a1 + 82), *(a1 + 72));
  }

  else
  {
LABEL_13:
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "incoming indication from a device that is no longer connected. Ignoring.", &v6, 2u);
    }

    v2 = 0;
  }
}

void sub_100711790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v10 = a2;
  if (v10)
  {
    v68 = 0;
    v69 = 0;
    sub_10004DFB4(&v73, v10);
    sub_10070B42C(a1, &v73, 0, &v68);
    v11 = v68;
    if (v68)
    {
      v12 = sub_1005B6820(v68, a3);
      v13 = v12;
      if (!v12)
      {
        operator new();
      }

      v14 = *(v12 + 8);
      v15 = *(v14 + 20);
      v73 = *(v14 + 4);
      LODWORD(v74) = v15;
      sub_10000D03C(uu2, &v73);
      v73 = xmmword_1008C50D8;
      LODWORD(v74) = 0;
      if (sub_10004E15C(v16, &v73))
      {
        sub_10000AE20((v13 + 9), a4);
        *uu2 = xmmword_1008A4B5C;
        LODWORD(v91) = 0;
        sub_10000D03C(&v73, uu2);
        *&buf.__r_.__value_.__l.__data_ = xmmword_1008A4BAC;
        LODWORD(buf.__r_.__value_.__r.__words[2]) = 0;
        sub_10000D03C(uu2, &buf);
        v17 = sub_1005B68E8(v11, &v73, uu2);
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        *__p = 0u;
        v78 = 0u;
        memset(v76, 0, sizeof(v76));
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        sub_100007AD0(&v73);
        if (v17 && *(v17 + 74) == a3 && sub_10000C5E0(a4) == 4)
        {
          *uu2 = 0u;
          v91 = 0u;
          v18 = sub_10057C4B4(uu2, 0, a4);
          v19 = sub_10057C598(v18);
          v59 = sub_10057C598(uu2);
          v20 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109890;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v19;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v59;
            HIWORD(buf.__r_.__value_.__r.__words[1]) = 2114;
            buf.__r_.__value_.__r.__words[2] = v10;
            v71 = 1024;
            v72 = a6;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received service changed notification for [0x%04x;0x%04x] for device %{public}@ wakeUp:%d", &buf, 0x1Eu);
          }

          sub_10004DFB4(&buf, v10);
          v21 = v59;
          if (a1 + 200 == sub_10004E34C(a1 + 192, &buf))
          {
            v52 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_100866F40(v19, v59, v52);
            }
          }

          else
          {
            sub_10004DFB4(&buf, v10);
            v22 = sub_10070A400(a1 + 192, &buf);
            v23 = *(v22 + 112);
            v58 = (v22 + 112);
            v24 = (v22 + 120);
            if (v23 != v22 + 120)
            {
              v57 = v10;
              do
              {
                v25 = *(v23 + 32);
                if (v25 < v19 || v25 > v21)
                {
                  v27 = *(v23 + 8);
                  if (v27)
                  {
                    do
                    {
                      v28 = v27;
                      v27 = *v27;
                    }

                    while (v27);
                  }

                  else
                  {
                    do
                    {
                      v28 = *(v23 + 16);
                      v29 = *v28 == v23;
                      v23 = v28;
                    }

                    while (!v29);
                  }
                }

                else
                {
                  v30 = v19;
                  v31 = *(v23 + 40);
                  if (v31 != (v23 + 48))
                  {
                    do
                    {
                      sub_100614BB8(v31[4], &buf);
                      v32 = sub_100007774(&v74);
                      sub_100007774(v32);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      v33 = v31[1];
                      if (v33)
                      {
                        do
                        {
                          v34 = v33;
                          v33 = *v33;
                        }

                        while (v33);
                      }

                      else
                      {
                        do
                        {
                          v34 = v31[2];
                          v29 = *v34 == v31;
                          v31 = v34;
                        }

                        while (!v29);
                      }

                      v31 = v34;
                    }

                    while (v34 != (v23 + 48));
                  }

                  v28 = sub_100480394(v58, v23);
                  v19 = v30;
                  v10 = v57;
                  v21 = v59;
                }

                v23 = v28;
              }

              while (v28 != v24);
            }

            sub_1005B6E60(v11, v19, v21);
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_10071231C;
            v64[3] = &unk_100B0A6A0;
            v65 = v10;
            v66 = v19;
            v67 = v21;
            sub_100710EE0(a1 + 40, v64);
          }

          *&uu2[8] = &off_100AE0A78;
          if (v91)
          {
            sub_10000C808(v91);
          }
        }

        else
        {
          sub_10004DFB4(uu2, v10);
          if (a1 + 200 == sub_10004E34C(a1 + 192, uu2))
          {
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_100867068();
            }
          }

          else
          {
            sub_10004DFB4(uu2, v10);
            v35 = sub_10070A400(a1 + 192, uu2);
            v38 = *(v35 + 120);
            v36 = v35 + 120;
            v37 = v38;
            if (!v38)
            {
              goto LABEL_95;
            }

            v39 = a3 - 1;
            v40 = v36;
            do
            {
              v41 = *(v37 + 32);
              v42 = v41 >= v39;
              v43 = v41 < v39;
              if (v42)
              {
                v40 = v37;
              }

              v37 = *(v37 + 8 * v43);
            }

            while (v37);
            if (v40 != v36 && *(v40 + 32) <= v39)
            {
              if (*(v40 + 56))
              {
                v45 = *(v40 + 40);
                v46 = (v40 + 48);
                if (v45 != (v40 + 48))
                {
                  do
                  {
                    v47 = v45[4];
                    if (qword_100B512F8 != -1)
                    {
                      sub_100866FD0();
                    }

                    sub_1003B7804(off_100B512F0, v10, v47, a3, a4, a7);
                    sub_100614BB8(v47, uu2);
                    v48 = sub_100007774(&v74);
                    sub_100007774(v48);
                    if (SBYTE7(v91) < 0)
                    {
                      operator delete(*uu2);
                    }

                    v49 = v45[1];
                    if (v49)
                    {
                      do
                      {
                        v50 = v49;
                        v49 = *v49;
                      }

                      while (v49);
                    }

                    else
                    {
                      do
                      {
                        v50 = v45[2];
                        v29 = *v50 == v45;
                        v45 = v50;
                      }

                      while (!v29);
                    }

                    v45 = v50;
                  }

                  while (v50 != v46);
                }

                *&buf.__r_.__value_.__l.__data_ = 0uLL;
                std::ostream::sentry::sentry();
                v51 = &v74 + *(v74 - 24);
                if ((v51[32] & 5) == 0)
                {
                  (*(**(v51 + 5) + 32))(uu2);
                  if (v92 == -1)
                  {
                    std::ios_base::clear((&v74 + *(v74 - 24)), *(v76 + *(v74 - 24)) | 4);
                  }
                }

                std::ostream::sentry::~sentry();
                uu2[0] = 0;
                sub_100007774(&v74);
              }
            }

            else
            {
LABEL_95:
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
              {
                sub_100866FF8();
              }
            }
          }
        }

        if (a6)
        {
          v53 = sub_100432718();
          std::stringbuf::str();
          if ((SBYTE7(v91) & 0x80u) == 0)
          {
            v54 = uu2;
          }

          else
          {
            v54 = *uu2;
          }

          v55 = *(a4 + 8);
          v62 = &off_100AE0A78;
          v63 = v55;
          if (v55)
          {
            sub_10000C69C(v55);
          }

          (*(*v53 + 40))(v53, 4, v54, v10, &v62);
          v62 = &off_100AE0A78;
          if (v63)
          {
            sub_10000C808(v63);
          }

          if (SBYTE7(v91) < 0)
          {
            operator delete(*uu2);
          }
        }

        *&v74 = v56;
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p[1]);
        }

        std::locale::~locale(&v75);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else
      {
        v44 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v13, &v73);
          sub_100866EBC(v10, &v73, uu2, v44);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008670D8();
    }

    if (v69)
    {
      sub_100117644(v69);
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100867148();
  }
}

void sub_1007121A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  std::ostream::sentry::~sentry();
  sub_1007FC91C(&a30);
  if (a22)
  {
    sub_100117644(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100712354(void *a1)
{
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------- GATT Gateway --------------------", buf, 2u);
    v1 = qword_100BCE910;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Active commands:", buf, 2u);
  }

  v2 = a1[24];
  v53 = (a1 + 25);
  if (v2 != (a1 + 25))
  {
    do
    {
      if (v2[152] == 1)
      {
        v3 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v2 + 32, buf);
          sub_100007E30(__p, buf);
          v4 = v60 >= 0 ? __p : *__p;
          *buf = 136446210;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
          if (v60 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v53);
  }

  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: Pending commands:", buf, 2u);
  }

  v9 = a1[24];
  if (v9 != v53)
  {
    do
    {
      if (*(v9 + 12))
      {
        v10 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v9 + 32, buf);
          sub_100007E30(__p, buf);
          if (v60 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = *(v9 + 12);
          v13 = "s";
          if (v12 == 1)
          {
            v13 = "";
          }

          if (v9[153])
          {
            v14 = "flowing";
          }

          else
          {
            v14 = "frozen";
          }

          *buf = 136446978;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2082;
          *&buf[24] = v13;
          *&buf[32] = 2082;
          *&buf[34] = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s - %lu command%{public}s (%{public}s)", buf, 0x2Au);
          if (v60 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v15 = *(v9 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v9 + 2);
          v7 = *v16 == v9;
          v9 = v16;
        }

        while (!v7);
      }

      v9 = v16;
    }

    while (v16 != v53);
  }

  v17 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: Device databases:", buf, 2u);
  }

  v18 = a1[27];
  if (v18 != (a1 + 28))
  {
    do
    {
      v19 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v18 + 32, buf);
        sub_100007E30(__p, buf);
        v20 = v60 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (v60 < 0)
        {
          operator delete(*__p);
        }
      }

      sub_1005B7638(*(v18 + 6), "      ");
      v21 = *(v18 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v18 + 2);
          v7 = *v22 == v18;
          v18 = v22;
        }

        while (!v7);
      }

      v18 = v22;
    }

    while (v22 != a1 + 28);
  }

  v23 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: Client subscriptions:", buf, 2u);
  }

  v24 = a1[24];
  if (v24 != v53)
  {
    do
    {
      v25 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v24 + 32, buf);
        sub_100007E30(__p, buf);
        v26 = __p;
        if (v60 < 0)
        {
          v26 = *__p;
        }

        *buf = 136446210;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (v60 < 0)
        {
          operator delete(*__p);
        }
      }

      v27 = *(v24 + 20);
      if (v27 != v24 + 168)
      {
        do
        {
          v28 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v27 + 16);
            *buf = 67109120;
            *&buf[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump:       0x%04x", buf, 8u);
          }

          v30 = *(v27 + 5);
          if (v30 != v27 + 48)
          {
            do
            {
              v31 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
              {
                sub_100018384(*(v30 + 4), buf);
                v32 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *__p = 136446210;
                *&__p[4] = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s", __p, 0xCu);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v33 = *(v30 + 1);
              if (v33)
              {
                do
                {
                  v34 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v34 = *(v30 + 2);
                  v7 = *v34 == v30;
                  v30 = v34;
                }

                while (!v7);
              }

              v30 = v34;
            }

            while (v34 != v27 + 48);
          }

          v35 = *(v27 + 1);
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = *(v27 + 2);
              v7 = *v36 == v27;
              v27 = v36;
            }

            while (!v7);
          }

          v27 = v36;
        }

        while (v36 != v24 + 168);
      }

      v37 = *(v24 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v24 + 2);
          v7 = *v38 == v24;
          v24 = v38;
        }

        while (!v7);
      }

      v24 = v38;
    }

    while (v38 != v53);
  }

  v39 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "statedump: Built-in services detected:", buf, 2u);
  }

  v40 = a1[31];
  if (v40 != (a1 + 32))
  {
    do
    {
      v41 = *(v40 + 6);
      if (v41 != v40 + 56)
      {
        v42 = qword_100BCE910;
        do
        {
          v54 = *(v41 + 28);
          v55 = *(v41 + 11);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            sub_10003B85C(buf, &v54);
            v43 = buf[23];
            v44 = *buf;
            v45 = sub_10004DF60(v40 + 32);
            v46 = v45;
            *__p = 136315394;
            v47 = buf;
            if (v43 < 0)
            {
              v47 = v44;
            }

            *&__p[4] = v47;
            v58 = 2112;
            v59 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Detected service %s on device %@ and notified", __p, 0x16u);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            v42 = qword_100BCE910;
          }

          v48 = *(v41 + 1);
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = *(v41 + 2);
              v7 = *v49 == v41;
              v41 = v49;
            }

            while (!v7);
          }

          v41 = v49;
        }

        while (v49 != v40 + 56);
      }

      v50 = *(v40 + 1);
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = *(v40 + 2);
          v7 = *v51 == v40;
          v40 = v51;
        }

        while (!v7);
      }

      v40 = v51;
    }

    while (v51 != a1 + 32);
  }
}

void sub_100712C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100712C4C(uint64_t a1)
{
  sub_10037505C(a1 + 128, *(a1 + 136));
  sub_100712CCC((a1 + 72));
  sub_100712CCC((a1 + 24));
  return a1;
}

uint64_t sub_100712C8C(uint64_t a1)
{
  sub_10037505C(a1 + 112, *(a1 + 120));
  sub_100712CCC((a1 + 56));
  sub_100712CCC((a1 + 8));
  return a1;
}

uint64_t sub_100712CCC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          sub_100713478(v7, v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10035F858(a1);
}

void sub_100712E14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100712E14(a1, *a2);
    sub_100712E14(a1, a2[1]);
    sub_100712E74(a1, (a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100712E74(uint64_t a1, uint64_t a2)
{
  sub_10037505C(a2 + 128, *(a2 + 136));
  sub_100712CCC((a2 + 72));

  return sub_100712CCC((a2 + 24));
}

void sub_100712EBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100712EBC(a1, *a2);
    sub_100712EBC(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100117644(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_100713124(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007131B0();
  }

  return result;
}

void sub_1007132BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007132D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007132D8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100712E74(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_100713334(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10067D88C(a1, v3);
  return 1;
}

uint64_t sub_10071337C(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007133C4(a1, v3);
  return 1;
}

uint64_t *sub_1007133C4(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_100712E74(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_100713478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    *(a2 + 24) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

void *sub_1007134F4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10071354C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10071354C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007135D4(v5, v5 + 1, v4 + 28);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1007135D4(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100713678(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

unsigned __int8 *sub_100713678(void *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10007C3A8(a5, a2 + 28))
  {
    if (!sub_10007C3A8(a2 + 28, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 2);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10007C3A8(a5, v15 + 28))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 2);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10007C3A8(v12 + 28, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10004E3C8(a1, a3, a5);
}

uint64_t sub_10071380C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007138B0();
  }

  return result;
}

void sub_100713930(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007139E4(void *a1, uint64_t a2, __int16 a3, char a4, uint64_t a5)
{
  v9 = sub_1006EF1B4(a1, a2);
  *v9 = off_100B097A8;
  *(v9 + 48) = &off_100B097E0;
  *(v9 + 56) = a3;
  *(v9 + 58) = a4;
  v10 = *(a5 + 8);
  a1[8] = &off_100AE0A78;
  a1[9] = v10;
  if (v10)
  {
    sub_10000C69C(v10);
  }

  a1[10] = 0;
  return a1;
}

uint64_t *sub_100713AA8(uint64_t a1, unsigned __int16 *a2)
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

uint64_t sub_100713B88(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_1006EF1B4(a1, a2);
  *v5 = off_100B09668;
  v5[6] = &off_100B096A0;
  v5[7] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v6;
  }

  return a1;
}

void sub_100713C18(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v3)
  {
    sub_100867184(v3);
  }

  sub_1006F57F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100713C3C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100713CE0();
  }

  return result;
}

void sub_100713D60(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_100713D7C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_100713F6C();
  }

  return result;
}

void sub_100713ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100713EE8(uint64_t **a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_10007C3A8((a2 + 28), v4 + 28))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = a1 + 1;
  }

LABEL_8:
  sub_10000856C(a1, v5, v6, a2);
  return a2;
}