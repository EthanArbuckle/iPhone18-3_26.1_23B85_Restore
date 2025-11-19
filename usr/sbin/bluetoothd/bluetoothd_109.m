uint64_t sub_1007F0570()
{
  v0 = sub_10000C798();
  if ((*(*v0 + 360))(v0))
  {
    return 2;
  }

  else
  {
    v2 = sub_10000C798();
    v1 = 2;
    if (((*(*v2 + 368))(v2) & 1) == 0)
    {
      v3 = sub_10000C798();
      if ((*(*v3 + 456))(v3))
      {
        return 2;
      }

      else
      {
        return -1;
      }
    }
  }

  return v1;
}

uint64_t sub_1007F063C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"com.apple.locationd"])
  {
    v4 = 156;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.icloud.searchpartyd"];
    v4 = 158;
    if (v5)
    {
      v4 = 156;
    }
  }

  v6 = *(a1 + v4);

  return v6;
}

uint64_t sub_1007F06B8(uint64_t a1)
{
  result = *(a1 + 160);
  if (!result)
  {
    return sub_1007F0570();
  }

  return result;
}

uint64_t sub_1007F06C8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (sub_1007F0738(v1))
    {
      v3 = 1;
    }

    else if (sub_1007F0794(v2))
    {
      v3 = 15;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1007F0738(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 localizedCaseInsensitiveContainsString:@"com.apple.healthkit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1007F0794(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 localizedCaseInsensitiveContainsString:@"com.dexcom."] & 1) != 0 || (objc_msgSend(v2, "localizedCaseInsensitiveContainsString:", @"com.medtronic."))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 localizedCaseInsensitiveContainsString:@"com.senseonics."];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1007F0820(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 localizedCaseInsensitiveContainsString:@"com.apple.bluetoothd-central"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1007F087C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134217984;
      *&__p[4] = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accept provided connection use type %ld", __p, 0xCu);
    }

    v10 = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    sub_100018384(a1, __p);
    v12 = v23;
    v13 = *__p;
    v14 = +[NSString defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v13;
    }

    v10 = [NSString stringWithCString:v15 encoding:v14];
    if (v23 < 0)
    {
      operator delete(*__p);
    }

    if (sub_1007F0820(v10))
    {
      v16 = v7;
      if (!v7)
      {
        v16 = v8;
        if (!v8)
        {
          a4 = 0;
LABEL_21:
          v19 = qword_100BCE9F8;
          if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 138543618;
            *&__p[4] = v10;
            v21 = 2048;
            v22 = a4;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "getConnectionUseCase directConnectionClientString %{public}@ connectionUseCase %ld", __p, 0x16u);
          }

          goto LABEL_5;
        }
      }

      v17 = sub_1007F06C8(v16);
    }

    else
    {
      v17 = sub_1007F06C8(v10);
    }

    a4 = v17;
    goto LABEL_21;
  }

  v18 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_ERROR))
  {
    sub_10087BD08(v18);
  }

  v10 = 0;
  a4 = 0;
LABEL_5:

  return a4;
}

void sub_1007F0AC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a3;
  v7 = a4;
  v41[0] = 0;
  v41[1] = 0;
  sub_100007F88(v41, a1 + 16);
  v8 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = uu1;
    sub_100018384(a2, uu1);
    if (v44 < 0)
    {
      v9 = *uu1;
    }

    v10 = [v7 clientBundleID];
    if (v10)
    {
      v11 = [v7 clientBundleID];
    }

    else
    {
      v11 = @"NoClientBundleID";
    }

    v12 = [v7 clientProcessID];
    if (v12)
    {
      v13 = [v7 clientProcessID];
    }

    else
    {
      v13 = @"NoClientProcessID";
    }

    v14 = [v7 connectionUseCase];
    v15 = [v7 maxAllowedConnectionDelay];
    *buf = 138544642;
    *&buf[4] = v36;
    v46 = 2082;
    v47 = v9;
    v48 = 2114;
    v49 = v11;
    v50 = 2112;
    *v51 = v13;
    *&v51[8] = 2048;
    *&v51[10] = v14;
    v52 = 2048;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connect Requested for device %{public}@ by session %{public}s with options clientBundleID %{public}@ clientProcessID %@ connectionUseCase %ld maxAllowedConnectionDelay %ld", buf, 0x3Eu);
    if (v12)
    {
    }

    if (v10)
    {
    }

    if (v44 < 0)
    {
      operator delete(*uu1);
    }
  }

  v16 = [v7 clientBundleID];
  v17 = [v7 clientProcessID];
  v18 = sub_1007F087C(a2, v16, v17, [v7 connectionUseCase]);

  v20 = v18 == 15 || v18 == 1;
  sub_10004DFB4(buf, v36);
  *uu1 = buf;
  v21 = [NSMutableSet setWithSet:*(sub_1007F2060(a1 + 128, buf) + 48)];
  v22 = [v7 connectingClients];
  v23 = v22 == 0;

  if (v23)
  {
    sub_100018384(a2, buf);
    if (v48 >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    v29 = [NSString stringWithUTF8String:v28];
    [v21 addObject:v29];

    if (SHIBYTE(v48) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [v7 connectingClients];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [v21 addObject:*(*(&v37 + 1) + 8 * i)];
        }

        v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v25);
    }
  }

  sub_10004DFB4(buf, v36);
  *uu1 = buf;
  v30 = sub_1007F2060(a1 + 128, buf);
  objc_storeStrong((v30 + 48), v21);
  v31 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v7 connectionUseCase];
    if (v20)
    {
      v33 = 5;
    }

    else
    {
      v33 = 0;
    }

    sub_10004DFB4(uu1, v36);
    v41[3] = uu1;
    v34 = *(sub_1007F2060(a1 + 128, uu1) + 48);
    *buf = 138544386;
    *&buf[4] = v36;
    v46 = 2048;
    v47 = v32;
    v48 = 2048;
    v49 = v18;
    v50 = 1024;
    *v51 = v33;
    *&v51[4] = 2114;
    *&v51[6] = v34;
    v35 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connectionUseCase (req %ld computed %ld) priority %hhu bundleIDs %{public}@", buf, 0x30u);
  }

  sub_1000088CC(v41);
}

void sub_1007F0F98(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  if (v13)
  {
  }

  if (*(v16 - 177) < 0)
  {
    operator delete(*(v16 - 200));
  }

  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007F1090(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v33 = a4;
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, a1 + 16);
  sub_10004DFB4(__p, v7);
  *uu1 = __p;
  v8 = [NSMutableSet setWithSet:*(sub_1007F2060(a1 + 128, __p) + 48)];
  v9 = [v33 connectingClients];
  LODWORD(a4) = v9 == 0;

  if (a4)
  {
    sub_100018384(a2, __p);
    if (v43 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    v15 = [NSString stringWithUTF8String:v14];
    [v8 removeObject:v15];

    if (SHIBYTE(v43) < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v33 connectingClients];
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [v8 removeObject:*(*(&v34 + 1) + 8 * i)];
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v11);
    }
  }

  if ([v8 count])
  {
    sub_10004DFB4(__p, v7);
    *uu1 = __p;
    v16 = sub_1007F2060(a1 + 128, __p);
    objc_storeStrong((v16 + 48), v8);
  }

  v17 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v33 connectionUseCase];
    sub_10004DFB4(uu1, v7);
    v38[3] = uu1;
    v19 = *(sub_1007F2060(a1 + 128, uu1) + 48);
    *__p = 138543874;
    *&__p[4] = v7;
    v41 = 2048;
    v42 = v18;
    v43 = 2114;
    v44 = v19;
    v20 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connectionUseCase (req %ld) bundleIDs %{public}@", __p, 0x20u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087BD4C();
  }

  v21 = off_100B508C8;
  sub_100018384(a2, __p);
  v22 = SHIBYTE(v43);
  v23 = *__p;
  v24 = +[NSString defaultCStringEncoding];
  if (v22 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = v23;
  }

  v26 = [NSString stringWithCString:v25 encoding:v24];
  sub_10078C53C(v21, v7, v26);

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*__p);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087BD4C();
  }

  v27 = off_100B508C8;
  sub_100018384(a2, __p);
  v28 = SHIBYTE(v43);
  v29 = *__p;
  v30 = +[NSString defaultCStringEncoding];
  if (v28 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = v29;
  }

  v32 = [NSString stringWithCString:v31 encoding:v30];
  sub_10078C334(v27, v7, v32);

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*__p);
  }

  sub_1000088CC(v38);
}

void sub_1007F1498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_1007F1548(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[1] = 0;
  v11 = v5;
  v10[0] = 0;
  sub_100007F88(v10, a1 + 16);
  v6 = *(a1 + 104);
  if (v6 != (a1 + 112))
  {
    while (![v5 isEqual:v6[4]])
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 112))
      {
        goto LABEL_11;
      }
    }

    sub_1003C4E3C((a1 + 104), v6);
  }

LABEL_11:
  if (a3)
  {
    *v12 = &v11;
    sub_10050741C(a1 + 104, &v11)[5] = a3;
  }

  else
  {
    sub_10004DFB4(v12, v5);
    sub_1007F2248((a1 + 128), v12);
  }

  sub_1000088CC(v10);
}

void sub_1007F1690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, id a12)
{
  sub_1000088CC(&a10);

  _Unwind_Resume(a1);
}

void sub_1007F16C8(void *a1)
{
  v2 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ BT Resource Manager -------------------", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Max Connections for use case:", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  v3 = 0;
  v4 = a1 + 11;
  do
  {
    v5 = dword_100B550B8[v3];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1007F024C(a1, v5);
      v7 = a1[11];
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = a1 + 11;
      do
      {
        v9 = *(v7 + 28);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v8 = v7;
        }

        v7 = *(v7 + 8 * v11);
      }

      while (v7);
      if (v8 == v4 || v5 < *(v8 + 7))
      {
LABEL_15:
        v8 = a1 + 11;
      }

      v12 = v8 == v4;
      *buf = 67109634;
      v13 = "YES";
      if (v12)
      {
        v13 = "NO";
      }

      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      *&buf[14] = 2082;
      *&buf[16] = v13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:  useCase:%d maxConnections:%d (override:%{public}s)", buf, 0x18u);
      v2 = qword_100BCE9F8;
    }

    ++v3;
  }

  while (v3 != 11);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: current device states and use cases:", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  v14 = a1[13];
  if (v14 != a1 + 14)
  {
    do
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14[5];
        v16 = "unknown";
        if (v15 <= 3)
        {
          v16 = off_100B0EA78[v15];
        }

        v17 = v14[4];
        if (qword_100B508D0 != -1)
        {
          sub_10087BD4C();
        }

        v18 = sub_100788D8C(off_100B508C8, v14[4]);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2082;
        *&buf[14] = v16;
        *&buf[22] = 1024;
        *&buf[24] = v18;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:  device:%{public}@ state:%{public}s usecase:%u", buf, 0x1Cu);
        v2 = qword_100BCE9F8;
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v14[2];
          v12 = *v20 == v14;
          v14 = v20;
        }

        while (!v12);
      }

      v14 = v20;
    }

    while (v20 != a1 + 14);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: current device connect request bundleIDs:", buf, 2u);
  }

  v21 = a1[16];
  if (v21 != (a1 + 17))
  {
    do
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      memset(v49, 0, sizeof(v49));
      memset(buf, 0, sizeof(buf));
      sub_100007AD0(buf);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = *(v21 + 6);
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v23)
      {
        v24 = *v40;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v22);
            }

            strlen([*(*(&v39 + 1) + 8 * i) UTF8String]);
            v26 = sub_100007774(&buf[16]);
            sub_100007774(v26);
          }

          v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v23);
      }

      v27 = qword_100BCE9F8;
      if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v21 + 32, out);
        sub_100007E30(__p, out);
        v28 = v38;
        v29 = __p[0];
        std::stringbuf::str();
        v30 = __p;
        if (v28 < 0)
        {
          v30 = v29;
        }

        v31 = out;
        if (out[23] < 0)
        {
          v31 = *out;
        }

        *v43 = 136446466;
        v44 = v30;
        v45 = 2082;
        v46 = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump:  device:%{public}s connectRequestBundleIDs:%{public}s", v43, 0x16u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }

        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *buf = v36;
      *&buf[*(v36 - 24)] = v35;
      *&buf[16] = v34;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(*(&v50 + 1));
      }

      std::locale::~locale(v49);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v32 = *(v21 + 1);
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = *(v21 + 2);
          v12 = *v33 == v21;
          v21 = v33;
        }

        while (!v12);
      }

      v21 = v33;
    }

    while (v33 != a1 + 17);
  }
}

void sub_1007F1DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

id sub_1007F1E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 16);
  sub_10004DFB4(uu2, v3);
  if (a1 + 136 == sub_10004E34C(a1 + 128, uu2))
  {
    v4 = [NSSet setWithObject:@"com.unknown"];
  }

  else
  {
    sub_10004DFB4(uu2, v3);
    v7[3] = uu2;
    v4 = *(sub_1007F2060(a1 + 128, uu2) + 48);
  }

  v5 = v4;
  sub_1000088CC(v7);

  return v5;
}

void sub_1007F1F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007F1F64(uint64_t a1)
{
  sub_1007F22CC(a1);

  operator delete();
}

void sub_1007F1F9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007F1F9C(a1, *a2);
    sub_1007F1F9C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1007F2060(uint64_t a1, unsigned __int8 *uu1)
{
  v7 = 0;
  v2 = *sub_10004A7D0(a1, &v7, uu1);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007F2114();
  }

  return v2;
}

uint64_t sub_1007F2194(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1007F2248(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007F2290(a1, v3);
  return 1;
}

uint64_t *sub_1007F2290(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t sub_1007F22CC(uint64_t a1)
{
  *a1 = &off_100B0EA28;
  sub_1007F1F9C(a1 + 128, *(a1 + 136));
  sub_10005CFE4(a1 + 104, *(a1 + 112));
  sub_10000CEDC(a1 + 80, *(a1 + 88));
  sub_10007A068(a1 + 16);
  return a1;
}

void *sub_1007F2338(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = +[BTVCHciManager sharedManager];
  v3 = qword_100BCED60;
  qword_100BCED60 = v2;

  return a1;
}

uint64_t sub_1007F2384()
{
  v0 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "registerCallbacks";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s", &v2, 0xCu);
  }

  return sub_1002F1040(off_100B550E8);
}

BOOL sub_1007F2438(void *a1, int *a2)
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v12 = 136315394;
    v13 = "TransportCreate";
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s interface: %d", &v12, 0x12u);
  }

  v6 = *a2;
  if (*a2 == 5)
  {
    if (!a1[2])
    {
      v9 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "TransportCreate";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: HCI LMP transport", &v12, 0xCu);
      }

      operator new();
    }
  }

  else if (v6 == 3)
  {
    if (!a1[1])
    {
      v8 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "TransportCreate";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: HCI data transport", &v12, 0xCu);
      }

      operator new();
    }
  }

  else if (v6 == 2)
  {
    if (!*a1)
    {
      v7 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "TransportCreate";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: HCI commabnd/event transport", &v12, 0xCu);
      }

      operator new();
    }
  }

  else
  {
    v10 = qword_100BCEA70;
    result = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10087BD74(a2, v10);
  }

  return 0;
}

BOOL sub_1007F27D8(void **a1, void **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a1;
  if (v2 == *a1)
  {
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "TransportFree";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Link Controller Invalidate", &v12, 0xCu);
    }

    [qword_100BCED60 invalidate];
    v7 = qword_100BCEA70;
    if (!os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = 136315138;
    v13 = "TransportFree";
    v10 = "%s: free HciTransportCommand";
    goto LABEL_17;
  }

  v5 = a1 + 1;
  if (v2 == a1[1])
  {
    v11 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "TransportFree";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: free HciTransportData", &v12, 0xCu);
    }

    v4 = v5;
    goto LABEL_18;
  }

  v4 = a1 + 2;
  v6 = a1[2];
  v7 = qword_100BCEA70;
  result = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (v2 != v6)
  {
    if (!result)
    {
      return result;
    }

    v12 = 136315138;
    v13 = "TransportFree";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalidate Link Controller faile, invalid handle", &v12, 0xCu);
    return 0;
  }

  if (result)
  {
    v12 = 136315138;
    v13 = "TransportFree";
    v10 = "%s: free HciTransportLmp";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
  }

LABEL_18:
  sub_10042F92C(*v4);
  free(*v4);
  *v4 = 0;
  *a2 = 0;
  return 1;
}

id sub_1007F2A30(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  if (*a1 == a2)
  {
    v9 = qword_100BCED60;

    return [v9 transportWriteCmd:a3 length:a4 amountWritten:a5 dtor:a7];
  }

  else
  {
    if (a1[1] != a2)
    {
      v7 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "TransportWrite";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalidate transport handle", &v11, 0xCu);
      }

      return 0;
    }

    v10 = qword_100BCED60;

    return [v10 transportWriteData:a3 length:a4 amountWritten:a5 dtor:a7];
  }
}

void sub_1007F2B88()
{
  if (qword_100B54A88 != -1)
  {
    sub_10087BE04();
  }
}

BOOL sub_1007F2BB4(int *a1)
{
  if (qword_100B54A88 != -1)
  {
    sub_10087BE04();
  }

  v2 = off_100B54A80;

  return sub_1007F2438(v2, a1);
}

BOOL sub_1007F2C10(void **a1)
{
  if (qword_100B54A88 != -1)
  {
    sub_10087BE04();
  }

  v2 = off_100B54A80;

  return sub_1007F27D8(v2, a1);
}

id sub_1007F2C64(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B54A88 != -1)
  {
    sub_10087BE04();
  }

  v11 = off_100B54A80;

  return sub_1007F2A30(v11, a1, a2, a3, a4, a6, a6);
}

BOOL sub_1007F2CE8(uint64_t a1)
{
  if (qword_100B54A88 != -1)
  {
    sub_10087BE04();
    if (a1)
    {
      return *off_100B54A80 == a1 || *(off_100B54A80 + 1) == a1 || *(off_100B54A80 + 2) == a1;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  return *off_100B54A80 == a1 || *(off_100B54A80 + 1) == a1 || *(off_100B54A80 + 2) == a1;
}

id sub_1007F2EFC(uint64_t a1, void *a2)
{
  v3 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'favorites changed' notification", v5, 2u);
  }

  [a2 _incrementPrimaryFolderVersionForAddressBook:8];
  return [a2 _incrementSecondaryFolderVersionForAddressBook:8];
}

void *sub_1007F3CD0(void *a1)
{
  *a1 = off_100B0EAE0;
  a1[1] = 0;
  v2 = objc_alloc_init(AddressBookObserver);
  v3 = a1[1];
  a1[1] = v2;

  return a1;
}

void sub_1007F3D94(uint64_t a1)
{

  operator delete();
}

uint64_t sub_1007F3DE0(uint64_t a1)
{
  *a1 = off_100B0EB58;
  *(a1 + 8) = &off_100B0EC80;
  *(a1 + 16) = off_100B0EC98;
  *(a1 + 24) = &off_100B0ED08;
  *(a1 + 32) = off_100B0ED20;
  *(a1 + 40) = off_100B0EDE0;
  *(a1 + 48) = &off_100B0EE40;
  *(a1 + 56) = &off_100B0EE58;
  *(a1 + 64) = off_100B0EE70;
  *(a1 + 72) = off_100B0EED0;
  *(a1 + 80) = off_100B0EF00;
  *(a1 + 88) = off_100B0EF30;
  sub_100044BBC(a1 + 96);
  *(a1 + 184) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 279) = 0u;
  *(a1 + 352) = a1 + 360;
  *(a1 + 384) = 0u;
  *(a1 + 376) = a1 + 384;
  *(a1 + 408) = 0u;
  *(a1 + 400) = a1 + 408;
  *(a1 + 432) = 0u;
  *(a1 + 424) = a1 + 432;
  *(a1 + 456) = 0u;
  *(a1 + 448) = a1 + 456;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  v17 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "CoexManager");
  sub_100007E30(__p, "Disable");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v17);
  v4 = v17;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v3 & v4;
  if (v16 < 0)
  {
    operator delete(*buf);
    if (v5)
    {
LABEL_5:
      v6 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Disabling WCM interface because of override default", buf, 2u);
      }

      return a1;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  if (&WCMEnabled)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", 0, 0);
    *(a1 + 160) = mach_service;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001479C;
    handler[3] = &unk_100AEB340;
    handler[4] = a1;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(*(a1 + 160));
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087BE18();
  }

  *(a1 + 170) = 0;
  v11 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "BTUCM");
  sub_100007E30(__p, "BTUCMForceFacetimeWifiCoexOverride");
  *(a1 + 170) = (*(*v8 + 88))(v8, buf, __p, &v11);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 170))
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 172) = v9;
  *(a1 + 176) = 0;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void sub_1007F424C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  v25 = v22;
  v26 = v22 - 8;
  v27 = v25;
  v28 = *(v25 + 152);
  if (v28)
  {
    *(v21 + 520) = v28;
    operator delete(v28);
  }

  sub_10000CEDC(v27 + 88, *(v21 + 456));
  sub_10000CEDC(v27 + 64, *(v21 + 432));
  sub_10000CEDC(v27 + 40, *(v21 + 408));
  sub_10000CEDC(v27 + 16, *(v21 + 384));
  sub_10000CEDC(v26, *(v21 + 360));
  sub_10007A068(v21 + 96);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F4308(uint64_t a1)
{
  *a1 = off_100B0EB58;
  *(a1 + 8) = &off_100B0EC80;
  *(a1 + 16) = off_100B0EC98;
  *(a1 + 24) = &off_100B0ED08;
  *(a1 + 32) = off_100B0ED20;
  *(a1 + 40) = off_100B0EDE0;
  *(a1 + 48) = &off_100B0EE40;
  *(a1 + 56) = &off_100B0EE58;
  *(a1 + 64) = off_100B0EE70;
  *(a1 + 72) = off_100B0EED0;
  *(a1 + 80) = off_100B0EF00;
  *(a1 + 88) = off_100B0EF30;
  if (&WCMEnabled)
  {
    xpc_release(*(a1 + 160));
  }

  v2 = *(a1 + 512);
  if (v2)
  {
    *(a1 + 520) = v2;
    operator delete(v2);
  }

  sub_10000CEDC(a1 + 448, *(a1 + 456));
  sub_10000CEDC(a1 + 424, *(a1 + 432));
  sub_10000CEDC(a1 + 400, *(a1 + 408));
  sub_10000CEDC(a1 + 376, *(a1 + 384));
  sub_10000CEDC(a1 + 352, *(a1 + 360));
  sub_10007A068(a1 + 96);
  return a1;
}

void sub_1007F4518(_Unwind_Exception *a1)
{
  v3 = *(v1 + 512);
  if (v3)
  {
    *(v1 + 520) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(v1 + 448, *(v1 + 456));
  sub_10000CEDC(v1 + 424, *(v1 + 432));
  sub_10000CEDC(v1 + 400, *(v1 + 408));
  sub_10000CEDC(v1 + 376, *(v1 + 384));
  sub_10000CEDC(v1 + 352, *(v1 + 360));
  sub_10007A068(v1 + 96);
  _Unwind_Resume(a1);
}

void sub_1007F4584(uint64_t a1)
{
  sub_1007F4308(a1);

  operator delete();
}

uint64_t sub_1007F45BC(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  sub_1007F4620(a1 + 504, a2);
  return sub_1000088CC(v5);
}

void sub_1007F4620(uint64_t a1, uint64_t a2)
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
    sub_1007FBDAC((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_1007F46AC(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  sub_10007A3F0(a1 + 504, a2);
  return sub_1000088CC(v5);
}

void sub_1007F4710(uint64_t a1)
{
  if (&WCMEnabled)
  {
    sub_1007F49DC(a1);
    if (qword_100B50AC0 != -1)
    {
      sub_10087BF50();
    }

    sub_1005907D4(off_100B50AB8, a1 + 8);
    if (qword_100B512C8 != -1)
    {
      sub_10087BF64();
    }

    sub_10036EF4C(off_100B512C0 + 80, a1 + 24);
    if (qword_100B508B0 != -1)
    {
      sub_10087BF78();
    }

    sub_100749B80(off_100B508A8, a1 + 32, 0);
    if (qword_100B50910 != -1)
    {
      sub_10087BF8C();
    }

    sub_1005BB5D4(off_100B50908, a1 + 40);
    v2 = sub_100017E6C();
    sub_100312B50(v2 + 304, a1 + 48);
    if (qword_100B54398 != -1)
    {
      sub_10087BFA0();
    }

    sub_100603290(off_100B54390, a1 + 56);
    if (qword_100B51078 != -1)
    {
      sub_10087BFB4();
    }

    sub_1000DB5D8(off_100B51070 + 1896, a1 + 64);
    if (qword_100B508F0 != -1)
    {
      sub_10087BFC8();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 72);
    if (qword_100B50C68 != -1)
    {
      sub_10087BFDC();
    }

    sub_10072A35C(off_100B50C60, a1 + 88);
    if (qword_100B50AA0 != -1)
    {
      sub_10087BFF0();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 80);
    *&v3 = -1;
    *(&v3 + 1) = -1;
    *(a1 + 184) = v3;
    *(a1 + 248) = v3;
    *(a1 + 264) = v3;
    *(a1 + 216) = v3;
    *(a1 + 232) = v3;
    *(a1 + 200) = v3;
    v4 = *(a1 + 496);
    *(a1 + 496) = @"XZ";

    if (qword_100B50910 != -1)
    {
      sub_10087BF8C();
    }

    sub_1005BC0B8(off_100B50908, *(a1 + 496));
    *(a1 + 297) = 0;
    *(a1 + 328) = 1;
    *(a1 + 316) = 0;
    *(a1 + 320) = 0;
    *(a1 + 340) = 0;
    *(a1 + 332) = 0;
    *(a1 + 348) = 0;
    v5 = sub_100017F4C();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F4A84;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v5, v6);
    sub_1007F4B44(a1);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C004();
  }
}

void sub_1007F49DC(uint64_t a1)
{
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking in with WCM", v4, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kWCMRegisterProcess_ProcessId", 4uLL);
  sub_1000AD59C(a1, 1uLL, v3);
  xpc_release(v3);
}

uint64_t sub_1007F4A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v2 = sub_100017E6C();
  result = (*(*v2 + 56))(v2, &v8 + 1, &v8, &v7 + 1, &v7, &v6, &v5);
  if (!result)
  {
    *(v1 + 476) = v7;
    v4 = HIBYTE(v8);
    if (HIBYTE(v8) != 1)
    {
      if (v8 == 1)
      {
        v4 = 2;
      }

      else
      {
        if (HIBYTE(v7) != 1)
        {
          *(v1 + 480) = 0;
          return result;
        }

        v4 = 3;
      }
    }

    *(v1 + 480) = v4;
  }

  return result;
}

void sub_1007F4B44(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_10087BF64();
  }

  v2 = sub_10000EE78(off_100B512C0);
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2 == 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SendLocalDeviceState with state %d", v5, 8u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "kWCMBTLocalDeviceState", v2 == 1);
  sub_1000AD59C(a1, 0x1FAuLL, v4);
  xpc_release(v4);
}

void sub_1007F4C64(uint64_t a1)
{
  v2 = a1 + 456;
  sub_10000CEDC(a1 + 448, *(a1 + 456));
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = v2;
  if (&WCMEnabled)
  {
    v3 = sub_10000C7D0();
    sub_10041332C(v3, a1 + 16);
    if (qword_100B50AC0 != -1)
    {
      sub_10087BF50();
    }

    sub_1005908D4(off_100B50AB8, a1 + 8);
    if (qword_100B512C8 != -1)
    {
      sub_10087BF64();
    }

    sub_10007A3F0(off_100B512C0 + 80, a1 + 24);
    if (qword_100B508B0 != -1)
    {
      sub_10087BF78();
    }

    sub_100749C8C(off_100B508A8, a1 + 32);
    if (qword_100B50910 != -1)
    {
      sub_10087BF8C();
    }

    sub_1005BB668(off_100B50908, a1 + 40);
    if (qword_100B54398 != -1)
    {
      sub_10087BFA0();
    }

    sub_100603324(off_100B54390, a1 + 56);
    if (qword_100B51078 != -1)
    {
      sub_10087BFB4();
    }

    sub_10007A3F0(off_100B51070 + 1896, a1 + 64);
    if (qword_100B508F0 != -1)
    {
      sub_10087BFC8();
    }

    sub_10007A3F0(off_100B508E8 + 240, a1 + 72);
    if (qword_100B50C68 != -1)
    {
      sub_10087BFDC();
    }

    sub_10072A3C8(off_100B50C60, a1 + 88);
    if (qword_100B50AA0 != -1)
    {
      sub_10087BFF0();
    }

    v4 = off_100B50A98 + 64;

    sub_10007A3F0(v4, a1 + 80);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C040();
  }
}

void sub_1007F4E6C(uint64_t a1)
{
  sub_1007F49DC(a1);
  sub_1007F4B44(a1);
  sub_1007F4EBC(a1);
  sub_1007F508C(a1);

  sub_1007F52AC(a1);
}

void sub_1007F4EBC(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_10087C07C();
  }

  sub_1000ADA24(off_100B50F60, &v8);
  v2 = v8;
  v3 = v9;
  if (v8 != v9)
  {
    do
    {
      v4 = sub_100542124(*v2);
      v5 = 1;
      do
      {
        if ((v5 & v4) != 0)
        {
          sub_1007F89EC(a1, (*(*v2 + 128) << 40) | (*(*v2 + 129) << 32) | (*(*v2 + 130) << 24) | (*(*v2 + 131) << 16) | (*(*v2 + 132) << 8) | *(*v2 + 133), v5, 0xBu, 0);
        }

        v5 *= 2;
      }

      while ((v5 & 0x80000000) == 0);
      v7 = *(*v2 + 1384);
      if ((v7 & 0x10) != 0)
      {
        v6 = *v2;
        sub_1007F8DE0(a1, (v6[128] << 40) | (v6[129] << 32) | (v6[130] << 24) | (v6[131] << 16) | (v6[132] << 8) | v6[133], 2uLL, 16, 201, 0, 1u);
      }

      if (v7)
      {
        sub_1007F8DE0(a1, (*(*v2 + 128) << 40) | (*(*v2 + 129) << 32) | (*(*v2 + 130) << 24) | (*(*v2 + 131) << 16) | (*(*v2 + 132) << 8) | *(*v2 + 133), 1uLL, 1, 101, 0, 1u);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v8;
  }

  if (v2)
  {
    v9 = v2;
    operator delete(v2);
  }
}

void sub_1007F5064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F508C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10087BF78();
  }

  sub_100029630(off_100B508A8);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if (qword_100B508B0 != -1)
        {
          sub_10087C090();
        }

        v7 = off_100B508A8;
        sub_10004DFB4(v13, v6);
        if (sub_10074E724(v7, v13))
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087C0B8();
          }

          v8 = sub_100046458(off_100B508C8, v6, 0);
          sub_1007F89EC(a1, v8, 0x8000u, 0xBu, 0);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v3);
  }

  if (qword_100B50910 != -1)
  {
    sub_10087C0E0();
  }

  if (*(off_100B50908 + 207) == 1)
  {
    sub_1007F8DE0(a1, 1uLL, 3uLL, 0x10000, 801, 0, 1u);
  }
}

void sub_1007F52AC(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = (a1 + 432);
  if (v1 != (a1 + 432))
  {
    do
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v4, "kWCMBTLeDiscoveryScan_State", 1);
      xpc_dictionary_set_int64(v4, "kWCMBTLeDiscoveryScan_UseCase", 1);
      v5 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_10003069C(*(v1 + 7));
        *buf = 136315138;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendLEScanningUseCaseInfo: Sending Notification to WiFi for CBUseCase %s", buf, 0xCu);
      }

      sub_1000AD59C(a1, 0x206uLL, v4);
      v7 = v1[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

uint64_t sub_1007F5420(int a1, xpc_object_t xdict)
{
  if (xpc_dictionary_get_uint64(xdict, "kMessageArgs"))
  {
    if (qword_100B512C8 != -1)
    {
      sub_10087BF64();
    }

    sub_100579C50(off_100B512C0);
  }

  else
  {
    if (qword_100B512C8 != -1)
    {
      sub_10087BF64();
    }

    sub_10057A03C(off_100B512C0);
  }

  return 1;
}

uint64_t sub_1007F548C(int a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMBTPreferredRole");
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = uint64 == 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Setting preferred role to : %d", v5, 8u);
  }

  LOBYTE(v5[0]) = 0;
  sub_1000216B4(v5);
  sub_100247BB4(uint64 == 0);
  sub_100022214(v5);
  sub_10002249C(v5);
  return 1;
}

uint64_t sub_1007F5594(int a1, xpc_object_t xdict)
{
  v16 = 0;
  length = 0;
  v15 = 0;
  data = xpc_dictionary_get_data(xdict, "kMessageArgs", &length);
  if (data)
  {
    v3 = length >= 0xA;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 1;
  }

  for (i = 0; i != 10; ++i)
  {
    *(&v15 + i) = data[i];
  }

  if (qword_100B512C8 != -1)
  {
    sub_10087C27C();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    v13 = 0;
    sub_1000216B4(&v13);
    v11 = sub_10024DE9C(sub_1007F86A0, &v15, v5, v6, v7, v8, v9, v10);
    sub_100022214(&v13);
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C2A4();
      }
    }

    sub_10002249C(&v13);
    return 1;
  }

  return 202;
}

uint64_t sub_1007F56E0(int a1, xpc_object_t xdict)
{
  v21 = 0;
  v20 = 0;
  length = 0;
  data = xpc_dictionary_get_data(xdict, "kMessageArgs", &length);
  if (!data)
  {
    v12 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "WCMBLESetChannelMap message is not in expected format";
      v14 = v12;
      v15 = 2;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }

    return 1;
  }

  v3 = length;
  if (length != 5)
  {
    v16 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v3;
      v13 = "WCMBLESetChannelMap message has unexpected AFH map with length %zu";
      v14 = v16;
      v15 = 12;
      goto LABEL_17;
    }

    return 1;
  }

  if (qword_100B512C8 != -1)
  {
    sub_10087C27C();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    for (i = 0; i != 5; ++i)
    {
      *(&v20 + i) = data[i];
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v11 = sub_100018960(180, sub_1007F8854, v5, v6, v7, v8, v9, v10, &v20);
    sub_100022214(buf);
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C2E0();
      }

      v11 = 1;
    }

    sub_10002249C(buf);
  }

  else
  {
    v18 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WCMBLESetChannelMap message cannot be handled as the power state is OFF", buf, 2u);
    }

    return 202;
  }

  return v11;
}

void sub_1007F5904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F5920(uint64_t a1, void *a2)
{
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received MWS Channel Parameters", buf, 2u);
  }

  v10 = 0;
  *buf = 0;
  value = xpc_dictionary_get_value(a2, "kMessageArgs");
  if (value)
  {
    v5 = value;
    buf[0] = xpc_dictionary_get_uint64(value, "kWCMBTSetMWSChannelParameters_Enable");
    *&buf[2] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSChannelParameters_RxCenterFrequency");
    *&buf[4] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSChannelParameters_TxCenterFrequency");
    *&buf[6] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSChannelParameters_RxChannelBandwidth");
    LOWORD(v10) = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSChannelParameters_TxChannelBandwidth");
    BYTE2(v10) = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSChannelParameters_Type");
    if (qword_100B50AA0 != -1)
    {
      sub_10087C31C();
    }

    sub_1005A95DC(off_100B50A98, 12, buf);
  }

  else
  {
    v6 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Invalid argument for Channel Parameters", v8, 2u);
    }
  }

  return 1;
}

uint64_t sub_1007F5A98(int a1, xpc_object_t xdict)
{
  memset(&v13[3], 0, 98);
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received MWS External Frame Config", v12, 2u);
  }

  if (!value)
  {
    return 1;
  }

  v13[0] = xpc_dictionary_get_uint64(value, "kWCMBTSetMWSExternalConfig_ExtFrameDuration");
  v13[1] = xpc_dictionary_get_int64(value, "kWCMBTSetMWSExternalConfig_ExtFrameSyncAssertOffset");
  v13[2] = xpc_dictionary_get_uint64(value, "kWCMBTSetMWSExternalConfig_ExtFrameSyncAssertJitter");
  uint64 = xpc_dictionary_get_uint64(value, "kWCMBTSetMWSExternalConfig_ExtNumPeriods");
  LOBYTE(v13[3]) = uint64;
  v5 = xpc_dictionary_get_value(value, "kWCMBTSetMWSExternalConfig_ExtPeriodDuration");
  v6 = xpc_dictionary_get_value(value, "kWCMBTSetMWSExternalConfig_ExtPeriodType");
  if (uint64 - 1 >= 0x20)
  {
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C344();
    }

    return 1;
  }

  if (!v5 || (v7 = v6) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C3BC();
    }

    return 1;
  }

  count = xpc_array_get_count(v5);
  if (count != uint64)
  {
    v11 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C3F8(uint64, v5, v11);
    }

    return 1;
  }

  if (xpc_array_get_count(v7) != count)
  {
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C498();
    }

    return 1;
  }

  v9 = 0;
  do
  {
    v13[v9 + 4] = xpc_array_get_uint64(v5, v9);
    *(&v13[36] + v9) = xpc_array_get_uint64(v7, v9);
    ++v9;
  }

  while (v9 < uint64);
  if (qword_100B50AA0 != -1)
  {
    sub_10087C31C();
  }

  sub_1005A93F8(off_100B50A98, 104, v13);
  return 0;
}

uint64_t sub_1007F5D30(uint64_t a1, void *a2)
{
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    v7[0] = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received MWS Signaling Command", v7, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kMessageArgs");
  if (value)
  {
    v5 = value;
    v7[0] = xpc_dictionary_get_int64(value, "kWCMBTSetMWSSignaling_MWSRxAssertOffset");
    v7[1] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSRxAssertJitter");
    v7[2] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSRxDeAssertOffset");
    v7[3] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSRxDeAssertJitter");
    v7[4] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSTxAssertOffset");
    v7[5] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSTxAssertJitter");
    v7[6] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSTxDeAssertOffset");
    v7[7] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSTxDeAssertJitter");
    v7[8] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSPatternAssertOffset");
    v7[9] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSPatternAssertJitter");
    v7[10] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSInactivityAssertOffset");
    v7[11] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSInactivityAssertJitter");
    v7[12] = xpc_dictionary_get_int64(v5, "kWCMBTSetMWSSignaling_MWSScanFrequencyAssertOffset");
    v7[13] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSScanFrequencyAssertJitter");
    v7[14] = xpc_dictionary_get_uint64(v5, "kWCMBTSetMWSSignaling_MWSPriorityAssertOffsetRequest");
    if (qword_100B50AA0 != -1)
    {
      sub_10087C31C();
    }

    sub_1005A9880(off_100B50A98, 30, v7);
  }

  return 1;
}

uint64_t sub_1007F5F0C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    v3 = value;
    xpc_dictionary_get_uint64(value, "kWCMBTSetWCI2Mode_ReceiveMessage");
    xpc_dictionary_get_uint64(v3, "kWCMBTSetWCI2Mode_SendMessage");
    v4 = *sub_10000C7D0();
    (*(v4 + 488))();
  }

  return 1;
}

uint64_t sub_1007F5FB4(int a1, xpc_object_t xdict)
{
  v5 = 0;
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  xpc_retain(value);
  if (value)
  {
    LOBYTE(v5) = xpc_dictionary_get_uint64(value, "kWCMBTTriggerWCI2Message_MessageId");
    HIBYTE(v5) = xpc_dictionary_get_uint64(value, "kWCMBTTriggerWCI2Message_Value1");
  }

  xpc_release(value);
  v3 = sub_10000C7D0();
  (*(*v3 + 512))(v3, 2, &v5);
  return 1;
}

uint64_t sub_1007F6064(uint64_t a1, void *a2)
{
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set Clock Alignment\n", v7, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kMessageArgs");
  if (value)
  {
    xpc_dictionary_get_uint64(value, "WCMBTSetMWSClockAlignment_Enable");
    v5 = *sub_10000C7D0();
    (*(v5 + 1608))();
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C4D4();
  }

  return 1;
}

uint64_t sub_1007F6164(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v4 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting LTE Link Quality Mode", buf, 2u);
  }

  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTSetLinkQuality_Duration");
    v19 = xpc_dictionary_get_uint64(value, "kWCMBTSetLinkQuality_EventType");
    v5 = xpc_dictionary_get_uint64(value, "kWCMBTSetLinkQuality_Mode");
    v6 = v5;
    v20 = v5;
    v21 = xpc_dictionary_get_uint64(value, "kWCMBTSetLinkQuality_RxThreshold");
    v22 = xpc_dictionary_get_uint64(value, "kWCMBTSetLinkQuality_TxThreshold");
    v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(value, "kWCMBTSetLinkQuality_DeviceAddress")];
    v8 = v7;
    if (v6)
    {
      v9 = sub_100777FF4(v7);
      if (!v9 && os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C510();
      }

      if (qword_100B508F0 != -1)
      {
        sub_10087C580();
      }

      v10 = sub_1000504C8(off_100B508E8, v9, 0);
      if (v10)
      {
        v11 = sub_10000C7D0();
        sub_1004132C4(v11, a1 + 16);
        v12 = sub_10000C7D0();
        (*(*v12 + 520))(v12, 8, &uint64, v10);
      }

      else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C5A8();
      }
    }

    else
    {
      v14 = sub_10000C7D0();
      sub_10041332C(v14, a1 + 16);
    }
  }

  else
  {
    v13 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invalid argument for LTE Link Quality Mode", v16, 2u);
    }
  }

  return 1;
}

uint64_t sub_1007F63DC(int a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kMessageArgs");
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    v4 = "Enabled";
    if (!uint64)
    {
      v4 = "Disabled";
    }

    v7 = 136446210;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Setting sleep mode to %{public}s", &v7, 0xCu);
  }

  v5 = sub_10000C7D0();
  (*(*v5 + 528))(v5, uint64);
  return 1;
}

void sub_1007F64E0(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (v3)
  {
    v4 = v3;
    uint64 = xpc_dictionary_get_uint64(v3, "kWCMBTAntennaAction");
    v6 = xpc_dictionary_get_uint64(v4, "kWCMBTAntennaConfiguration");
    v7 = xpc_dictionary_get_uint64(v4, "kWCMBTAntennaParam1");
    v8 = xpc_dictionary_get_uint64(v4, "kWCMBTAntennaParam2");
    value[0] = 0;
    value[1] = 0;
    v20 = 16;
    v9 = sub_10000C7D0();
    if (uint64 >= 6 && (*(v9 + 800) - 1) <= 0x15)
    {
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C618();
      }

      return;
    }

    if (uint64)
    {
      v10 = uint64 == 10;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 4095;
    }

    else
    {
      v11 = 0;
    }

    v12 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = uint64;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending antenna preference action %llu", buf, 0xCu);
    }

    v13 = sub_10000C7D0();
    (*(*v13 + 896))(v13, v11, uint64, v6, v7, v8, &v20, value);
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v20)
    {
      v16 = LOBYTE(value[0]);
      if (uint64 == 2 || uint64 == 1)
      {
        xpc_dictionary_set_uint64(v14, "kWCMBTCurrentAntenna", BYTE1(value[0]));
        v17 = BYTE2(value[0]);
        v18 = "kWCMBTPreviousAntenna";
        goto LABEL_27;
      }

      if (!uint64)
      {
        v17 = BYTE1(value[0]);
        v18 = "kWCMBTCurrentAntenna";
LABEL_27:
        xpc_dictionary_set_uint64(v15, v18, v17);
LABEL_29:
        xpc_dictionary_set_uint64(v15, "kWCMBTStatus", v16);
        xpc_dictionary_set_uint64(v15, "kWCMBTAntennaAction", uint64);
        sub_1000AD59C(a1, 0x1FEuLL, v15);
        xpc_release(v15);
        return;
      }
    }

    else
    {
      v16 = 255;
    }

    if (uint64 == 3)
    {
      v19 = sub_10000C7D0();
      if (v6 != 1 || v16)
      {
        sub_10041332C(v19, a1 + 16);
      }

      else
      {
        sub_1004132C4(v19, a1 + 16);
      }
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C688();
  }
}

uint64_t sub_1007F67BC(uint64_t a1, void *a2)
{
  v3 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received MWS Set Scan Freq Table", v15, 2u);
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  value = xpc_dictionary_get_value(a2, "kMessageArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTNumScanFrequencies");
    LOBYTE(v15[0]) = uint64;
    v7 = xpc_dictionary_get_value(v5, "kWCMBTScanFrequencies");
    if (uint64 >= 0x20u)
    {
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087C700();
      }

      return 1;
    }

    v8 = v7;
    v9 = uint64 & 0x1F;
    if (xpc_array_get_count(v7) != v9 && os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C6C4();
      if (uint64)
      {
LABEL_10:
        v10 = 0;
        v11 = &v15[2] + 1;
        do
        {
          v12 = xpc_array_get_value(v8, v10);
          *(v11 - 16) = xpc_array_get_uint64(v12, 0);
          v13 = xpc_array_get_value(v8, v10);
          *v11++ = xpc_array_get_uint64(v13, 1uLL);
          ++v10;
        }

        while (v10 < v9);
      }
    }

    else if (uint64)
    {
      goto LABEL_10;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10087C31C();
    }

    sub_1005A9B78(off_100B50A98, 66, v15);
  }

  return 1;
}

void sub_1007F6968(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTCoexRxGainModeEnable");
    v4 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = uint64;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BT coex rx mode value: %d", v6, 8u);
    }

    v5 = sub_10000C7D0();
    (*(*v5 + 1928))(v5, uint64);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C778();
  }
}

void sub_1007F6A90(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBT5GHzWiFiRatesLow");
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = uint64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BT coex LowWifiRat state is: %d", buf, 8u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F7E34;
    v6[3] = &unk_100B0EF50;
    v7 = uint64;
    sub_100014E2C(a1 + 504, v6);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C7B4();
  }
}

void sub_1007F6BE8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTAWDLRTGActive");
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = uint64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BT coex AWDLRTG active state is: %d", buf, 8u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F7E6C;
    v6[3] = &unk_100B0EF50;
    v7 = uint64;
    sub_100014E2C(a1 + 504, v6);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C7F0();
  }
}

void sub_1007F6D40(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTUWB5GHzActive");
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = uint64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BT coex UWB 5g active state is: %d", buf, 8u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F7EA4;
    v6[3] = &unk_100B0EF50;
    v7 = uint64;
    sub_100014E2C(a1 + 504, v6);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C82C();
  }
}

void sub_1007F6E98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBT5GHzHostAPActive");
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = uint64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BT coex 5Ghz Host AP active state is: %d", buf, 8u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1007F7EDC;
    v6[3] = &unk_100B0EF50;
    v7 = uint64;
    sub_100014E2C(a1 + 504, v6);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C868();
  }
}

void sub_1007F6FF0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    v4 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTCoexScanIntervalReason");
    v6 = xpc_dictionary_get_uint64(v4, "kWCMBTCoexScanIntervalState");
    v7 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = uint64;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetBTCoexParameters reason:%llu state:%llu", &v8, 0x16u);
    }

    if (!uint64)
    {
      *(a1 + 168) = 1;
      *(a1 + 169) = v6 != 0;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C8A4();
  }
}

void sub_1007F712C(uint64_t a1, void *a2)
{
  if (MGGetBoolAnswer())
  {
    value = xpc_dictionary_get_value(a2, "kMessageArgs");
    if (value)
    {
      v5 = value;
      v6 = xpc_dictionary_get_BOOL(value, "kWCMBTRC2GrantEnable");
      uint64 = xpc_dictionary_get_uint64(v5, "kWCMBTRC2TimingT3");
      v8 = xpc_dictionary_get_uint64(v5, "kWCMBTRC2TimingT4");
      v9 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109632;
        v12[1] = v6;
        v13 = 1024;
        v14 = uint64;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received UCM GrantRC2MEdium and BT Suppression msg: enable: %d, t3Interval: %u, t4Interval: %u", v12, 0x14u);
      }

      if (*(a1 + 472) != v6)
      {
        *(a1 + 472) = v6;
        v10 = sub_10000C7D0();
        (*(*v10 + 3984))(v10, v6);
        v11 = *sub_10000C7D0();
        (*(v11 + 3976))();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C91C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C8E0();
  }
}

void sub_1007F7338(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    v4 = xpc_dictionary_get_BOOL(value, "kWCMAirplayCritical");
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WifiAirplayCriticalBuffering state: %d", &v10, 8u);
    }

    v6 = sub_10000C7D0();
    if ((*(*v6 + 3064))(v6))
    {
      v7 = *(a1 + 168);
      if (*(a1 + 168))
      {
        v8 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 169);
          v10 = 67109376;
          v11 = v7;
          v12 = 1024;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding current CoexParameter state of Parameter: %d, State: %d", &v10, 0xEu);
        }
      }

      *(a1 + 168) = 2;
      *(a1 + 169) = v4;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C958();
  }
}

void sub_1007F74E0(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "kMessageArgs", &length);
  if (data && length > 0x5F)
  {
    v4 = data;
    if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u)
    {
      for (i = 0; i != 96; ++i)
      {
        *(a1 + 184 + i) = byte_1008C5820[i] & v4[i];
      }
    }

    else
    {
      for (j = 0; j != 96; ++j)
      {
        *(a1 + 184 + j) = v4[j];
      }
    }

    v91 = 412948512;
    v90 = 0x17A31725165D141ELL;
    v88 = *aE_0;
    v89 = 8192125;
    v7 = &v64;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v8 = 184;
    v64 = -1;
    do
    {
      *v7 = *(a1 + v8);
      v7 = (v7 + 63);
      v8 += 16;
    }

    while (v8 != 280);
    v9 = vcntq_s8(*(a1 + 264));
    v10 = vmovl_high_u8(v9);
    v11 = vmovl_u8(*v9.i8);
    v12 = vcntq_s8(*(a1 + 248));
    v13 = vmovl_high_u8(v12);
    v14 = vmovl_u8(*v12.i8);
    v15 = vcntq_s8(*(a1 + 232));
    v16 = vmovl_high_u8(v15);
    v17 = vmovl_u8(*v15.i8);
    v18 = vcntq_s8(*(a1 + 216));
    v19 = vmovl_high_u8(v18);
    v20 = vmovl_u8(*v18.i8);
    v21 = vcntq_s8(*(a1 + 200));
    v22 = vmovl_high_u8(v21);
    v23 = vmovl_u8(*v21.i8);
    v24 = vcntq_s8(*(a1 + 184));
    v25 = vmovl_high_u8(v24);
    v26 = vmovl_u8(*v24.i8);
    v26.i32[0] = vaddvq_s32(vaddq_s32(vaddq_s32(vaddl_u16(*v26.i8, *v25.i8), vaddl_high_u16(v26, v25)), xmmword_1008C5810));
    v23.i32[0] = vaddvq_s32(vaddq_s32(vaddq_s32(vaddl_u16(*v23.i8, *v22.i8), vaddl_high_u16(v23, v22)), xmmword_1008C5800));
    v14.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v14.i8, *v13.i8), vaddl_high_u16(v14, v13)));
    v11.i32[0] = vaddvq_s32(vaddq_s32(vaddq_s32(vaddl_u16(*v11.i8, *v10.i8), vaddl_high_u16(v11, v10)), xmmword_1008C57E0));
    v42 = v26.i32[0];
    v43 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddl_u16(*v20.i8, *v19.i8), vaddl_high_u16(v20, v19)), xmmword_1008C57F0));
    v44 = v23.i32[0];
    v61 = __PAIR64__(v23.u32[0], v26.u32[0]);
    v62 = 0;
    v10.i32[0] = v43;
    v40 = v14.i32[0];
    v41 = vaddvq_s32(vaddq_s32(vaddl_u16(*v17.i8, *v16.i8), vaddl_high_u16(v17, v16)));
    v10.i32[1] = v41;
    v10.i64[1] = __PAIR64__(v11.u32[0], v14.u32[0]);
    v39 = v11.i32[0];
    v63 = v10;
    v27 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      v48 = v42;
      v49 = 1024;
      v50 = v44;
      v51 = 1024;
      v52 = 0;
      v53 = 1024;
      v54 = v43;
      v55 = 1024;
      v56 = v41;
      v57 = 1024;
      v58 = v40;
      v59 = 1024;
      v60 = v39;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PurpleCoexManager: TotalUniChannels received from cellular: unii1 %d, unii3 %d, unii4 %d, unii5a %d, unii5b %d, unii5c %d, unii5d %d", buf, 0x2Cu);
    }

    v28 = 0;
    v29 = 0;
    while (1)
    {
      v30 = *(&v61 + v28);
      if (v30 <= 19)
      {
        *(a1 + v28 + 287) = 0;
      }

      else
      {
        ++v29;
        v31 = 1;
        *(a1 + v28 + 287) = 1;
        if (v30 > 0x31)
        {
          goto LABEL_23;
        }
      }

      v31 = 0;
LABEL_23:
      *(a1 + v28++ + 280) = v31;
      if (v28 == 7)
      {
        if (v29)
        {
          if (v29 == 6)
          {
            v32 = sub_10000C7D0();
            (*(*v32 + 1752))(v32, 3, &v90, &v88, &v64, 1);
            v33 = *sub_10000C7D0();
            (*(v33 + 1752))();
          }

          else
          {
            v34 = 0;
            v35 = &v64;
            v36 = &v88;
            v37 = &v90;
            do
            {
              if (*(a1 + 287 + v34) == 1)
              {
                v38 = sub_10000C7D0();
                (*(*v38 + 1752))(v38, 1, v37, v36, v35, 1);
              }

              ++v34;
              v35 += 63;
              v36 = (v36 + 2);
              v37 = (v37 + 2);
            }

            while (v34 != 7);
          }
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1007F8708;
        v45[3] = &unk_100B0EF70;
        v45[4] = a1;
        sub_100014E2C(a1 + 504, v45);
        sub_1007F873C(a1, (a1 + 184));
        return;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C994();
  }
}

uint64_t sub_1007F7AA0(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_BOOL(xdict, "kMessageArgs");
  *(a1 + 295) = v3;
  v4 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disabled";
    if (v3)
    {
      v5 = "Enabled";
    }

    v8 = 136315394;
    v9 = "void BT::PurpleCoexManager::SetMWSTxIndHRBEnable(xpc_object_t)";
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, MWSTxIndHRBEnable set to %s", &v8, 0x16u);
  }

  v6 = sub_10000C7D0();
  return (*(*v6 + 3528))(v6, 0, 49, (*(a1 + 295) & 1) == 0, 1);
}

void sub_1007F7BDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007F8820;
  v4[3] = &unk_100B0EF90;
  v4[4] = xpc_dictionary_get_uint64(value, "kWCMBTWiFiChannel");
  v4[5] = xpc_dictionary_get_uint64(value, "kWCMBTWiFiChannelBandwidth");
  v4[6] = xpc_dictionary_get_uint64(value, "kWCMBTWiFiRegulatoryBand");
  sub_100014E2C(a1 + 504, v4);
}

void sub_1007F7CB0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    v4 = value;
    xpc_dictionary_get_uint64(value, "kWCMBTAccessoryCoex_AccessoryType");
    xpc_dictionary_get_uint64(v4, "kWCMBTAccessoryCoex_Cell_RAT");
    xpc_dictionary_get_uint64(v4, "kWCMBTAccessoryCoex_Cell_Band");
    v5 = *sub_10000C7D0();
    (*(v5 + 1136))();
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kWCMBTStatus", 0);
    sub_1000AD59C(a1, 0x1FEuLL, v6);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087C688();
  }
}

const char *sub_1007F7F14(unint64_t a1)
{
  if (a1 > 6)
  {
    return "NA";
  }

  else
  {
    return off_100B0F1B0[a1];
  }
}

void sub_1007F7F38(uint64_t a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a2 > 95)
  {
    if (a2 == 96)
    {
      v11 = 3;
      goto LABEL_20;
    }

    if (a2 != 144)
    {
      if (a2 == 480)
      {
        v11 = 6;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (a3 == 48)
    {
      v11 = 4;
      goto LABEL_20;
    }

    if (a3 == 16)
    {
      v11 = 5;
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087CB30();
    }
  }

  else
  {
    if (!a2)
    {
      v11 = 0;
      goto LABEL_20;
    }

    if (a2 != 48)
    {
      if (a2 == 64)
      {
        v11 = 2;
        goto LABEL_20;
      }

LABEL_12:
      v11 = -1;
      goto LABEL_20;
    }
  }

  v11 = 1;
LABEL_20:
  v13 = byte_100BC7DA8 != a4 || v11 != byte_100BC7DA9;
  byte_100BC7DA8 = a4;
  byte_100BC7DA9 = v11;
  v14 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    if (v13)
    {
      v15 = ">";
    }

    else
    {
      v15 = "-";
    }

    v16 = sub_1007F7F14(v11);
    v17 = "NA";
    v18 = "NA";
    if (a4 <= 2)
    {
      v18 = off_100B0F1E8[a4];
    }

    v19 = "kWCMWiFiStateBand5G";
    if (a5 == 2)
    {
      v20 = "kWCMWiFiStateBand5G";
    }

    else
    {
      v20 = "NA";
    }

    if (a5 == 1)
    {
      v20 = "kWCMWiFiStateBand2_4G";
    }

    v21 = *(a1 + 178);
    if (v21 != 2)
    {
      v19 = "NA";
    }

    if (v21 == 1)
    {
      v19 = "kWCMWiFiStateBand2_4G";
    }

    v22 = *(a1 + 176);
    if (v22 <= 2u)
    {
      v17 = off_100B0F200[v22 & 3];
    }

    v24 = 136317186;
    v25 = v15;
    v26 = 2080;
    v27 = v16;
    v28 = 1024;
    v29 = a2;
    v30 = 2080;
    v31 = v18;
    v32 = 1024;
    v33 = a4;
    v34 = 2080;
    v35 = v20;
    v36 = 2080;
    v37 = v19;
    v38 = 2080;
    v39 = v17;
    v40 = 2048;
    v41 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "WCMBTLeConnect(-%s) %s(0x%x) %s(%d) BT:%s WiFi:%s %s kWCMBTLeConnect_Duration:%llums", &v24, 0x54u);
  }

  if (v13)
  {
    v23 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v23, "kWCMBTLeConnect_DC", v11);
    xpc_dictionary_set_uint64(v23, "kWCMBTLeConnect_OverrideReason", a4);
    xpc_dictionary_set_uint64(v23, "kWCMBTLeConnect_Band", 0);
    xpc_dictionary_set_uint64(v23, "kWCMBTLeConnect_Duration", a6);
    sub_1000AD59C(a1, 0x6CuLL, v23);
    xpc_release(v23);
  }
}

uint64_t sub_1007F8238(uint64_t a1)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 96);
  v2 = sub_10000E92C();
  sub_100007E30(buf, "COEXDEBUG");
  sub_100007E30(v18, "Enabled");
  (*(*v2 + 72))(v2, buf, v18, a1 + 296);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 296) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PurpleCoexManager::debugWifiStateUpdate COEXDEBUG", buf, 2u);
    }

    v17 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "COEXDEBUG");
    sub_100007E30(v18, "wifiStatePower");
    v5 = (*(*v4 + 72))(v4, buf, v18, &v17);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (v21 < 0)
    {
      operator delete(*buf);
    }

    if (v17)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if (v6 == 1)
    {
      *(a1 + 176) = 0;
      *(a1 + 182) = 0;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1007F8638;
      v16[3] = &unk_100B0EF70;
      v16[4] = a1;
      sub_100014E2C(a1 + 504, v16);
    }

    else
    {
      v15 = 0;
      v7 = sub_10000E92C();
      sub_100007E30(buf, "COEXDEBUG");
      sub_100007E30(v18, "wifiStateBand");
      v8 = (*(*v7 + 88))(v7, buf, v18, &v15);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(*buf);
      }

      if (v8)
      {
        *(a1 + 178) = v15;
      }

      v14 = 0;
      v9 = sub_10000E92C();
      sub_100007E30(buf, "COEXDEBUG");
      sub_100007E30(v18, "UCMWifiStateBitmap");
      v10 = (*(*v9 + 144))(v9, buf, v18, &v14);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(*buf);
      }

      if (v10)
      {
        v11 = v14 != 0;
        *(a1 + 182) = v14;
        *(a1 + 176) = 2 * v11;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007F866C;
      v13[3] = &unk_100B0EF70;
      v13[4] = a1;
      sub_100014E2C(a1 + 504, v13);
    }
  }

  return sub_1000088CC(v22);
}

void sub_1007F85C0(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  sub_1000088CC(v1 - 32);
  _Unwind_Resume(a1);
}

void sub_1007F86A0()
{
  v0 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Set AFH CB", v1, 2u);
  }
}

void sub_1007F873C(uint64_t a1, const void *a2)
{
  v4 = qword_100BCE8E0;
  if (!a2 && os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error: BT is trying to send an empty map to UCM", buf, 2u);
    v4 = qword_100BCE8E0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT Sending HRB AFH MAP to WCM", v6, 2u);
  }

  v5 = xpc_data_create(a2, 0x60uLL);
  sub_1000AD59C(a1, 0x205uLL, v5);
  xpc_release(v5);
}

void sub_1007F8854(int a1)
{
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set LE AFH CB status = %{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

uint64_t sub_1007F88F8(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  *a2 = *(result + 168);
  *a3 = *(result + 169);
  return result;
}

uint64_t sub_1007F890C(uint64_t a1)
{
  v2 = sub_10000C798();
  if (((*(*v2 + 384))(v2) & 1) == 0)
  {
    v3 = sub_10000C798();
    if (((*(*v3 + 392))(v3) & 1) == 0)
    {
      v4 = sub_10000C798();
      if (((*(*v4 + 456))(v4) & 1) == 0)
      {
        *(a1 + 172) = 0;
      }
    }
  }

  return *(a1 + 172);
}

void sub_1007F89EC(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (a3 == 0x8000)
  {
    v8 = sub_100063D0C();
    string = [v8 UTF8String];

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = sub_1007774DC();
    string = [v15 UTF8String];

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (a4 == 11 && !a5)
    {
      *buf = 0;
      v16 = sub_1002D3618(a2);
      v25 = v16;
      v26 = WORD2(v16);
      v24 = 0;
      sub_1000216B4(&v24);
      v17 = sub_10023DC68(&v25, buf);
      sub_100022214(&v24);
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
        {
          sub_10087CBB0();
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v13 = buf[0];
        v9 = buf[1];
        v10 = buf[2];
        v11 = *&buf[4];
        v12 = *&buf[6];
      }

      sub_10002249C(&v24);
    }

    if (qword_100B508F0 != -1)
    {
      sub_10087C580();
    }

    v18 = sub_1000504C8(off_100B508E8, a2, 0);
    v14 = v18;
    if (v18)
    {
      if (sub_10053CB50(v18))
      {
        v14 = 1;
      }

      else if (sub_10053CB5C(v14))
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v19, "kWCMBTConnectionConfiguration_Address", string);
  xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_ServiceId", a3);
  xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_EventId", a4);
  xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_Result", a5);
  if (a3 != 0x8000)
  {
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_DeviceType", v13);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_Role", v9);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_Mode", v10);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_ConnTo", v11);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_ConnIntrvl", v12);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_Latncy", 0);
    xpc_dictionary_set_uint64(v19, "kWCMBTConnectionConfiguration_RequiresRC2CoExType", v14);
  }

  v20 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317698;
    *&buf[4] = string;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = a5;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v40 = 2048;
    v41 = v11;
    v42 = 2048;
    v43 = v12;
    v44 = 2048;
    v45 = 0;
    v46 = 2048;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending Connection Config: Address: %s, ServiceId: %u, EventId: %u, Result: %d, DeviceType: %llu, Role: %llu, Mode: %llu, ConnTo: %llu, ConnIntrv: %llu, Latency: %llu, RC2CoExType: %llu", buf, 0x64u);
  }

  sub_1000AD59C(a1, 0x1F4uLL, v19);
  xpc_release(v19);
}

void sub_1007F8DE0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7)
{
  v39 = a2;
  if (a4 == 0x10000 || a4 == 0x400000)
  {
    v7 = sub_100063D0C();
    v14 = [v7 UTF8String];
  }

  else
  {
    v8 = sub_1007774DC();
    v14 = [v8 UTF8String];
  }

  if (a4 == 0x400000 || a4 == 0x10000)
  {

    v15 = 0;
    v16 = 0;
    goto LABEL_46;
  }

  v38 = 0;
  v37 = 0;
  v17 = sub_1002D3618(v39);
  v35 = v17;
  v36 = WORD2(v17);
  v34 = 0;
  sub_1000216B4(&v34);
  if (sub_10023DC68(&v35, &v38))
  {
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087CC20();
    }

    v16 = 0;
  }

  else
  {
    v16 = BYTE1(v38);
  }

  v15 = 0;
  if (a5 > 109)
  {
    if (a5 == 110)
    {
      v28 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "set packetype to 1 for BT_SERVICE_A2DP_LOW_LATENCY_ON", buf, 2u);
      }

      v15 = 1;
      goto LABEL_45;
    }

    if (a5 == 111)
    {
      v24 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "set packetype to 2 for BT_SERVICE_A2DP_LOW_LATENCY_OFF";
        v15 = 2;
        v26 = v24;
        v27 = 2;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        goto LABEL_45;
      }

      v15 = 2;
    }

LABEL_45:
    sub_100022214(&v34);
    sub_10002249C(&v34);
LABEL_46:
    v31 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v31, "kWCMBTAudioConfiguration_Address", v14);
    xpc_dictionary_set_uint64(v31, "kWCMBTAudioConfiguration_ConnectionState", a7);
    xpc_dictionary_set_uint64(v31, "kWCMBTAudioConfiguration_Type", a3);
    if (a4 != 0x10000 && a4 != 0x400000)
    {
      xpc_dictionary_set_uint64(v31, "kWCMBTAudioConfiguration_Role", v16);
      xpc_dictionary_set_uint64(v31, "kWCMBTAudioConfiguration_PacketType", v15);
    }

    v32 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      *&buf[4] = v14;
      v41 = 1024;
      *v42 = a7;
      *&v42[4] = 2048;
      *&v42[6] = a3;
      v43 = 1024;
      v44 = a4;
      v45 = 1024;
      v46 = a5;
      v47 = 1024;
      v48 = a6;
      v49 = 2048;
      v50 = v16;
      v51 = 2048;
      v52 = v15;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending Audio Config: Address: %s, Connection: %d, Type: %llu, ServiceId: %u, Event: %u, Result: %d, Role: %llu, PacketType: %llu", buf, 0x42u);
    }

    sub_1000AD59C(a1, 0x1F5uLL, v31);
    xpc_release(v31);
    return;
  }

  if (a5 != 101)
  {
    if (a5 == 102)
    {
      v18 = *(a1 + 456);
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = a1 + 456;
      do
      {
        v20 = *(v18 + 32);
        v21 = v20 >= v39;
        v22 = v20 < v39;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 != a1 + 456 && v39 >= *(v19 + 32))
      {
        *buf = &v39;
        v15 = sub_1007755E4(a1 + 448, &v39)[5];
        v30 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = v14;
          v41 = 2048;
          *v42 = v15;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found device %{public}s in fScoPacketTypeMap. Sending packet type %llu", buf, 0x16u);
        }

        sub_100075DC4((a1 + 448), &v39);
      }

      else
      {
LABEL_24:
        v23 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = v14;
          v41 = 2048;
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Did not find device %{public}s in fScoPacketTypeMap. Sending packet type %llu", buf, 0x16u);
        }

        v15 = 0;
      }
    }

    goto LABEL_45;
  }

  if (!sub_10023DCE0(&v35, &v37))
  {
    v15 = v37;
    *buf = &v39;
    sub_1007755E4(a1 + 448, &v39)[5] = v15;
    v29 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = v15;
      v41 = 2082;
      *v42 = v14;
      v25 = "Got voice connection info. Sending packet type %llu for device %{public}s";
      v26 = v29;
      v27 = 22;
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087CC90();
  }

  sub_10002249C(&v34);
}

uint64_t sub_1007F93C0(uint64_t a1, unsigned int a2, char a3)
{
  v35[0] = 0;
  v35[1] = 0;
  v6 = sub_100007F88(v35, a1 + 96);
  v7 = *(a1 + 348);
  if (a3)
  {
    if (v7 == a2)
    {
      v8 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Warning: Bandwidth: Received a connection that is currently active!";
        v10 = v8;
        v11 = 2;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        return sub_1000088CC(v35);
      }

      return sub_1000088CC(v35);
    }

    v17 = *(a1 + 408);
    if (v17)
    {
      v18 = a1 + 408;
      do
      {
        v19 = *(v17 + 28);
        v15 = v19 >= a2;
        v20 = v19 < a2;
        if (v15)
        {
          v18 = v17;
        }

        v17 = *(v17 + 8 * v20);
      }

      while (v17);
      if (v18 != a1 + 408 && *(v18 + 28) <= a2)
      {
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
        {
          sub_10087CD70();
        }

        return sub_1000088CC(v35);
      }
    }

    v21 = sub_1007F976C(v6, a2);
    *buf = a2;
    v37 = v21;
    v22 = sub_1007FC494(a1 + 400, buf);
LABEL_29:
    if (!*(a1 + 416) || (v24 = *(a1 + 400), v24 == (a1 + 408)))
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        v26 = *(v24 + 8);
        v22 = sub_1007F976C(v22, v25);
        if (v26 > v22)
        {
          v25 = *(v24 + 7);
        }

        v27 = v24[1];
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
            v28 = v24[2];
            v29 = *v28 == v24;
            v24 = v28;
          }

          while (!v29);
        }

        v24 = v28;
      }

      while (v28 != (a1 + 408));
    }

    *(a1 + 316) -= sub_1007F97D4(v22, *(a1 + 344));
    *(a1 + 344) = v25;
    if (!v25)
    {
      *(a1 + 304) = 0;
    }

    v30 = qword_100BCE8E0;
    v31 = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      *buf = 67109120;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Bandwidth: Audio connection 0x%1X, is the current Active Audio Profile", buf, 8u);
      v25 = *(a1 + 344);
    }

    *(a1 + 316) += sub_1007F97D4(v31, v25);
    *(a1 + 348) = *(a1 + 344);
    v32 = sub_100017F4C();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1007F983C;
    v34[3] = &unk_100ADF8F8;
    v34[4] = a1;
    sub_10000CA94(v32, v34);
    return sub_1000088CC(v35);
  }

  if (v7)
  {
    v12 = *(a1 + 408);
    if (!v12)
    {
      goto LABEL_52;
    }

    v13 = a1 + 408;
    do
    {
      v14 = *(v12 + 28);
      v15 = v14 >= a2;
      v16 = v14 < a2;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == a1 + 408 || *(v13 + 28) > a2)
    {
LABEL_52:
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087CD00();
      }

      return sub_1000088CC(v35);
    }

    sub_10002717C((a1 + 400), v13);
    operator delete(v13);
    goto LABEL_29;
  }

  v23 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v37 = a2;
    v9 = "Warning: Bandwidth: Tried removing connection 0x%1X from the map, but there was no active audio connection!";
    v10 = v23;
    v11 = 8;
    goto LABEL_27;
  }

  return sub_1000088CC(v35);
}

void sub_1007F974C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F976C(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2;
  LODWORD(v3) = a2;
  v2 = v3 >> 8;
  if (v2 < 0xB)
  {
    return dword_1008C58A4[v2];
  }

  result = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10087CDE0();
    return 0;
  }

  return result;
}

uint64_t sub_1007F97D4(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2;
  LODWORD(v3) = a2;
  v2 = v3 >> 8;
  if (v2 < 0xB)
  {
    return dword_1008C58D0[v2];
  }

  result = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10087CE1C();
    return 0;
  }

  return result;
}

uint64_t sub_1007F9844(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  if (*(a1 + 300) == 1)
  {
    sub_1007FA818(a1);
  }

  v2 = *(a1 + 316);
  v3 = *(a1 + 324);
  v4 = *(a1 + 344);
  if (v2 >= 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = *(a1 + 316);
  }

  v6 = v4 | v3 | v5;
  if (*(a1 + 328) != v6)
  {
    *(a1 + 328) = v6;
    v7 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 332);
      v9 = *(a1 + 336);
      v10 = *(a1 + 340);
      v11 = *(a1 + 392);
      v12 = *(a1 + 368);
      *buf = 67111424;
      v17 = v4 | v3 | v5;
      v18 = 1024;
      v19 = v3;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v2;
      v26 = 1024;
      v27 = v8;
      v28 = 1024;
      v29 = v9;
      v30 = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = v11;
      v34 = 1024;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bandwidth: Sending 32bit hex value 0x%08X to UCM. ActiveNonAudioTasks 0x%08X, ActiveAudioTask is 0x%04X, BTLoadValue sent was 0x%02X actual decimal btload value %d, HighConnections bits 20-21 value %d, IrregularConnections bits 22-23 value %d, NormalConnection bits 24-25 %d, numLeConnections = %d, numClassicHids = %d", buf, 0x3Eu);
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "kWCMBTWirelessLoadValue", v4 | v3 | v5);
    sub_1000AD59C(a1, 0x57EuLL, v13);
    xpc_release(v13);
  }

  return sub_1000088CC(v15);
}

uint64_t sub_1007F9A24(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v48 = a4;
  v49 = a3;
  v47[0] = 0;
  v47[1] = 0;
  sub_100007F88(v47, a1 + 96);
  if (a3 == 16)
  {
    if (a4 <= 110)
    {
      switch(a4)
      {
        case 11:
          if ((*(a1 + 297) & 1) == 0)
          {
            *(a1 + 316) += 27;
            *(a1 + 297) = 1;
LABEL_58:
            sub_1007F9844(a1);
            return sub_1000088CC(v47);
          }

          break;
        case 12:
          if (*(a1 + 297) == 1)
          {
            *(a1 + 316) -= 27;
            *(a1 + 297) = 0;
            goto LABEL_58;
          }

          break;
        case 110:
          *(a1 + 304) = a2;
          sub_1007F93C0(a1, 0x400u, 1);
          return sub_1000088CC(v47);
        default:
          break;
      }

LABEL_63:
      v33 = qword_100BCE8E0;
      if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v47);
      }

      v34 = sub_100597C30(&v48);
      *buf = 136315394;
      v51 = *&v34;
      v52 = 1024;
      LODWORD(v53) = a5;
      v35 = "Bandwidth: A2DP event %s, not counted as bandwidth. BTResult %d";
      goto LABEL_67;
    }

    if (a4 != 111)
    {
      if (a4 == 201)
      {
        if ((*(a1 + 298) & 1) == 0)
        {
          *(a1 + 304) = a2;
          *(a1 + 298) = 1;
          sub_1007F93C0(a1, 0x300u, 1);
          if ((*(a1 + 297) & 1) == 0)
          {
            *(a1 + 316) += 27;
            *(a1 + 297) = 1;
          }

          return sub_1000088CC(v47);
        }

        if (a2)
        {
          if (*(a2 + 1042))
          {
            sub_1007F93C0(a1, 0x800u, 1);
          }

          else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
          {
            sub_10087CE58();
          }

          return sub_1000088CC(v47);
        }

        goto LABEL_63;
      }

      if (a4 != 202 || *(a1 + 298) != 1)
      {
        goto LABEL_63;
      }

      v18 = *(a1 + 408);
      if (v18)
      {
        v19 = (a1 + 408);
        v20 = a1 + 408;
        v21 = *(a1 + 408);
        do
        {
          v22 = *(v21 + 28);
          v23 = v22 >= 0x800;
          v24 = v22 < 0x800;
          if (v23)
          {
            v20 = v21;
          }

          v21 = *(v21 + 8 * v24);
        }

        while (v21);
        if (v20 != v19 && *(v20 + 28) < 0x801u)
        {
          v25 = 2048;
LABEL_55:
          sub_1007F93C0(a1, v25, 0);
          return sub_1000088CC(v47);
        }

        v40 = a1 + 408;
        v41 = *(a1 + 408);
        do
        {
          v42 = *(v41 + 28);
          v23 = v42 >= 0x300;
          v43 = v42 < 0x300;
          if (v23)
          {
            v40 = v41;
          }

          v41 = *(v41 + 8 * v43);
        }

        while (v41);
        if (v40 != v19 && *(v40 + 28) <= 0x300u)
        {
          sub_1007F93C0(a1, 0x300u, 0);
          v18 = *v19;
        }

        if (v18)
        {
          v44 = a1 + 408;
          do
          {
            v45 = *(v18 + 28);
            v23 = v45 >= 0x400;
            v46 = v45 < 0x400;
            if (v23)
            {
              v44 = v18;
            }

            v18 = *(v18 + 8 * v46);
          }

          while (v18);
          if (v44 != v19 && *(v44 + 28) <= 0x400u)
          {
            sub_1007F93C0(a1, 0x400u, 0);
          }
        }
      }

      *(a1 + 298) = 0;
      return sub_1000088CC(v47);
    }

    v25 = 1024;
    goto LABEL_55;
  }

  if (a3 == 1)
  {
    if ((a4 - 11) < 2)
    {
      return sub_1000088CC(v47);
    }

    if (!a5 && a4 == 101)
    {
      if (qword_100B50AD0 != -1)
      {
        sub_10087CE94();
      }

      v10 = sub_1005D09A8(off_100B50AC8, a2);
      if (v10)
      {
        v11 = sub_100321004(v10 + 400);
        *(a1 + 304) = a2;
        v12 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v51 = v11 * 0.625;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bandwidth: HFP Connection has a transmission rate of %fMS", buf, 0xCu);
        }

        if (v11 == 12)
        {
          v13 = 512;
        }

        else
        {
          v13 = 256;
        }

        if (v11 <= 12)
        {
          v14 = v13;
        }

        else
        {
          v14 = 2560;
        }

        sub_1007F93C0(a1, v14, 1);
      }

      else
      {
        sub_1007F93C0(a1, 0x100u, 1);
        v38 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            sub_1000E5A58(a2, buf);
            sub_10087CEBC();
          }

          else
          {
            sub_10087CF18(v56, v38, v39);
          }
        }
      }

      return sub_1000088CC(v47);
    }

    if (!a5 && a4 == 102)
    {
      v26 = 0;
      v27 = (a1 + 408);
      do
      {
        v28 = *v27;
        if (*v27)
        {
          v29 = dword_1008C5898[v26];
          v30 = a1 + 408;
          do
          {
            v31 = *(v28 + 28);
            v23 = v31 >= v29;
            v32 = v31 < v29;
            if (v23)
            {
              v30 = v28;
            }

            v28 = *(v28 + 8 * v32);
          }

          while (v28);
          if (v30 != v27 && v29 >= *(v30 + 28))
          {
            sub_1007F93C0(a1, v29, 0);
          }
        }

        ++v26;
      }

      while (v26 != 3);
      return sub_1000088CC(v47);
    }

    v33 = qword_100BCE8E0;
    if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v47);
    }

    v36 = sub_100597C30(&v48);
    *buf = 136315394;
    v51 = *&v36;
    v52 = 1024;
    LODWORD(v53) = a5;
    v35 = "Bandwidth: HFP event %s, not counted as bandwidth. BTResult %d";
LABEL_67:
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
    return sub_1000088CC(v47);
  }

  v15 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_100597A38(&v49);
    v17 = sub_100597C30(&v48);
    *buf = 136315650;
    v51 = *&v16;
    v52 = 2080;
    v53 = v17;
    v54 = 1024;
    v55 = a5;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Bandwidth: No matching bandwidth item for serviceID %s, eventID %s, BTResult %d", buf, 0x1Cu);
  }

  return sub_1000088CC(v47);
}

void sub_1007F9FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007FA004(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 96);
  if (a3 == 0x10000)
  {
    if (a4 == 802)
    {
      if (*(a1 + 299) == 1)
      {
        *(a1 + 299) = 0;
        v11 = *(a1 + 344);
        if (v11 == 1280 || v11 == 1792 || v11 == 1536)
        {
          sub_1007F93C0(a1, v11, 0);
        }

        else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
        {
          sub_10004D9B0();
          sub_10087CF5C();
        }
      }
    }

    else if (a4 == 801 && (*(a1 + 299) & 1) == 0)
    {
      if (qword_100B50920 != -1)
      {
        sub_10087CFB8();
      }

      v7 = sub_1006480F8(qword_100B50918);
      v8 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004D9B0();
        v9 = v16 >= 0 ? &__p : __p;
        *buf = 136315394;
        v19 = v9;
        v20 = 2048;
        v21 = v7 * 1.25;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bandwidth: LEA Streaming Connection for device %s, connectionInterval %fms", buf, 0x16u);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      if (v7 != 3)
      {
        if (v7 == 6)
        {
          v10 = 1792;
          goto LABEL_28;
        }

        if (v7 == 4)
        {
          v10 = 1536;
LABEL_28:
          sub_1007F93C0(a1, v10, 1);
          *(a1 + 299) = 1;
          goto LABEL_29;
        }

        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
        {
          sub_10087CFE0();
        }
      }

      v10 = 1280;
      goto LABEL_28;
    }
  }

LABEL_29:
  v12 = sub_100017F4C();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007FA2BC;
  v14[3] = &unk_100ADF8F8;
  v14[4] = a1;
  sub_10000CA94(v12, v14);
  return sub_1000088CC(v17);
}

void sub_1007FA294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007FA2C4(uint64_t a1, void *a2, int a3, int a4)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 96);
  if (a2)
  {
    if (a4)
    {
      if (a3)
      {
        v8 = *(a1 + 360);
        if (!v8)
        {
          goto LABEL_12;
        }

        v9 = a1 + 360;
        do
        {
          v10 = *(v8 + 32);
          v11 = v10 >= a2;
          v12 = v10 < a2;
          if (v11)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * v12);
        }

        while (v8);
        if (v9 != a1 + 360 && *(v9 + 32) <= a2)
        {
          if (*(v9 + 40) == a3)
          {
            return sub_1000088CC(v25);
          }

          *(v9 + 40) = a3;
        }

        else
        {
LABEL_12:
          __p = a2;
          v23 = a3;
          sub_1007FC630(a1 + 352, &__p);
        }

        goto LABEL_32;
      }

      v17 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(a2, &__p);
        v18 = v24 >= 0 ? &__p : __p;
        *buf = 136315138;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Bandwidth: Not adding Classic Connection %s to Classic Connection Map, waiting on an update", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v13 = *(a1 + 360);
      if (v13)
      {
        v14 = (a1 + 360);
        do
        {
          v15 = v13[4];
          v11 = v15 >= a2;
          v16 = v15 < a2;
          if (v11)
          {
            v14 = v13;
          }

          v13 = v13[v16];
        }

        while (v13);
        if (v14 != (a1 + 360) && v14[4] <= a2)
        {
          sub_10002717C((a1 + 352), v14);
          operator delete(v14);
LABEL_32:
          if (a3 <= 24)
          {
            *(a1 + 300) = 1;
            v19 = sub_100017F4C();
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_1007FA540;
            v21[3] = &unk_100ADF8F8;
            v21[4] = a1;
            sub_10000CA94(v19, v21);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087D01C();
  }

  return sub_1000088CC(v25);
}

void sub_1007FA51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007FA548(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 96);
  if (v7)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10087C0B8();
    }

    v8 = sub_100046458(off_100B508C8, v7, 0);
    if (a4)
    {
      if (a3)
      {
        v9 = *(a1 + 384);
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = a1 + 384;
        do
        {
          v11 = *(v9 + 32);
          v12 = v11 >= v8;
          v13 = v11 < v8;
          if (v12)
          {
            v10 = v9;
          }

          v9 = *(v9 + 8 * v13);
        }

        while (v9);
        if (v10 != a1 + 384 && v8 >= *(v10 + 32))
        {
          if (*(v10 + 40) == a3)
          {
            goto LABEL_36;
          }

          *(v10 + 40) = a3;
        }

        else
        {
LABEL_14:
          __p = v8;
          v23 = a3;
          sub_1007FC764(a1 + 376, &__p);
        }

        goto LABEL_34;
      }

      v18 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004D9B0();
        v19 = v24 >= 0 ? &__p : __p;
        *buf = 136315138;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bandwidth: Not adding Le Connection %s to Le Connection Map, waiting on an update", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v14 = *(a1 + 384);
      if (v14)
      {
        v15 = (a1 + 384);
        do
        {
          v16 = v14[4];
          v12 = v16 >= v8;
          v17 = v16 < v8;
          if (v12)
          {
            v15 = v14;
          }

          v14 = v14[v17];
        }

        while (v14);
        if (v15 != (a1 + 384) && v8 >= v15[4])
        {
          sub_10002717C((a1 + 376), v15);
          operator delete(v15);
LABEL_34:
          if (a3 <= 12)
          {
            *(a1 + 300) = 1;
            v20 = sub_100017F4C();
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_1007FA810;
            v21[3] = &unk_100ADF8F8;
            v21[4] = a1;
            sub_10000CA94(v20, v21);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087D058();
  }

LABEL_36:
  sub_1000088CC(v25);
}

void sub_1007FA7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007FA818(uint64_t a1)
{
  *(a1 + 336) = 0;
  *(a1 + 332) = 0;
  *(a1 + 324) = 0;
  *(a1 + 316) -= *(a1 + 320);
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bandwidth: Calculating all non audio connections", buf, 2u);
  }

  v3 = (a1 + 332);
  v4 = *(a1 + 376);
  if (v4 == (a1 + 384))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 10);
      if (v6 > 8)
      {
        if (v6 == 9)
        {
          v10 = qword_100BCE8E0;
          if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004D9B0();
            v11 = buf;
            if (v43 < 0)
            {
              v11 = *buf;
            }

            v12 = *(v4 + 10) * 1.25;
            *v44 = 136315394;
            v45 = v11;
            v46 = 2048;
            v47 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bandwidth: Le Connection %s with interval %fms logged", v44, 0x16u);
            if (v43 < 0)
            {
              operator delete(*buf);
            }
          }

          v5 += 128;
          ++*(a1 + 336);
        }

        else
        {
          v13 = qword_100BCE8E0;
          v14 = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT);
          if (v6 < 0xD)
          {
            if (v14)
            {
              sub_10004D9B0();
              v17 = buf;
              if (v43 < 0)
              {
                v17 = *buf;
              }

              v18 = *(v4 + 10) * 1.25;
              *v44 = 136315394;
              v45 = v17;
              v46 = 2048;
              v47 = v18;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bandwidth: Le Connection %s with interval %fms logged", v44, 0x16u);
              if (v43 < 0)
              {
                operator delete(*buf);
              }
            }

            v5 += 42;
            ++*(a1 + 340);
          }

          else if (v14)
          {
            sub_10004D9B0();
            v15 = buf;
            if (v43 < 0)
            {
              v15 = *buf;
            }

            v16 = *(v4 + 10) * 1.25;
            *v44 = 136315394;
            v45 = v15;
            v46 = 2048;
            v47 = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Bandwidth: Le connection %s with interval %fms, has a greater interval than 15ms.  Not counting as bandwidth", v44, 0x16u);
            if (v43 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      else
      {
        v7 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004D9B0();
          v8 = buf;
          if (v43 < 0)
          {
            v8 = *buf;
          }

          v9 = *(v4 + 10) * 1.25;
          *v44 = 136315394;
          v45 = v8;
          v46 = 2048;
          v47 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bandwidth: Le Connection %s with interval %fms logged", v44, 0x16u);
          if (v43 < 0)
          {
            operator delete(*buf);
          }
        }

        v5 += 170;
        ++v3->i32[0];
      }

      v19 = v4[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v4[2];
          v21 = *v20 == v4;
          v4 = v20;
        }

        while (!v21);
      }

      v4 = v20;
    }

    while (v20 != (a1 + 384));
  }

  v22 = *(a1 + 352);
  if (v22 != (a1 + 360))
  {
    do
    {
      v23 = *(v22 + 10);
      if (v23 > 17)
      {
        if (v23 == 18)
        {
          v27 = qword_100BCE8E0;
          if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v22[4], buf);
            v28 = buf;
            if (v43 < 0)
            {
              v28 = *buf;
            }

            v29 = *(v22 + 10) * 0.625;
            *v44 = 136315394;
            v45 = v28;
            v46 = 2048;
            v47 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Bandwidth: Classic Connection %s with interval %fms logged", v44, 0x16u);
            if (v43 < 0)
            {
              operator delete(*buf);
            }
          }

          v5 += 128;
          ++*(a1 + 336);
        }

        else
        {
          v30 = qword_100BCE8E0;
          v31 = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT);
          if (v23 < 0x19)
          {
            if (v31)
            {
              sub_1000C23E0(v22[4], buf);
              v34 = buf;
              if (v43 < 0)
              {
                v34 = *buf;
              }

              v35 = *(v22 + 10) * 0.625;
              *v44 = 136315394;
              v45 = v34;
              v46 = 2048;
              v47 = v35;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Bandwidth: Classic Connection %s with interval %fms logged", v44, 0x16u);
              if (v43 < 0)
              {
                operator delete(*buf);
              }
            }

            v5 += 42;
            ++*(a1 + 340);
          }

          else if (v31)
          {
            sub_1000C23E0(v22[4], buf);
            v32 = buf;
            if (v43 < 0)
            {
              v32 = *buf;
            }

            v33 = *(v22 + 10) * 0.625;
            *v44 = 136315394;
            v45 = v32;
            v46 = 2048;
            v47 = v33;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Bandwidth: Classic Connection %s with interval %fms, has a greater interval than 15ms.  Not counting as bandwidth", v44, 0x16u);
            if (v43 < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      else
      {
        v24 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v22[4], buf);
          v25 = buf;
          if (v43 < 0)
          {
            v25 = *buf;
          }

          v26 = *(v22 + 10) * 0.625;
          *v44 = 136315394;
          v45 = v25;
          v46 = 2048;
          v47 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bandwidth: Classic Connection %s with interval %fms logged", v44, 0x16u);
          if (v43 < 0)
          {
            operator delete(*buf);
          }
        }

        v5 += 170;
        ++v3->i32[0];
      }

      v36 = v22[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v22[2];
          v21 = *v37 == v22;
          v22 = v37;
        }

        while (!v21);
      }

      v22 = v37;
    }

    while (v37 != (a1 + 360));
  }

  *(a1 + 316) += v5;
  *(a1 + 320) = v5;
  v38 = *v3;
  v39 = vmin_u32(*v3, 0x300000003);
  *v3 = v39;
  v40 = *(a1 + 340);
  if (v40 >= 3)
  {
    v41 = 3;
  }

  else
  {
    v41 = *(a1 + 340);
  }

  *(a1 + 340) = v41;
  if (v38.i32[0])
  {
    *(a1 + 324) |= v39.i32[0] << 20;
  }

  if (v38.i32[1])
  {
    *(a1 + 324) |= v39.i32[1] << 22;
  }

  if (v40)
  {
    *(a1 + 324) |= v41 << 24;
  }

  *(a1 + 300) = 0;
}

void sub_1007FAF08(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending Desense State %d WCM", v6, 8u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "kWCMBTUSBDesenseState", a2);
  sub_1000AD59C(a1, 0x204uLL, v5);
  xpc_release(v5);
}

void sub_1007FAFF4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendPhyReport: %d, %d", v8, 0xEu);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "kWCMBTPhyReport_LE_PHY_RATE", a3);
  xpc_dictionary_set_uint64(v7, "kWCMBTPhyReport_CLASSIC_PHY_RATE", a2);
  sub_1000AD59C(a1, 0x201uLL, v7);
  xpc_release(v7);
}

void sub_1007FB104(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int a4, int a5)
{
  v8 = a2;
  if (a2)
  {
    a2 = ((a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133]);
  }

  if (a4 > 109)
  {
    if (a4 > 200)
    {
      if (a4 != 201)
      {
        if (a4 == 202)
        {
          v10 = 2;
          v11 = a3;
          v12 = 202;
          goto LABEL_15;
        }

LABEL_31:
        if ((a4 - 3) > 0xFFFFFFFD)
        {
          return;
        }

        goto LABEL_26;
      }

      v10 = 2;
      v11 = a3;
      v12 = 201;
    }

    else if (a4 == 110)
    {
      v10 = 4;
      v11 = a3;
      v12 = 110;
    }

    else
    {
      if (a4 != 111)
      {
        goto LABEL_31;
      }

      v10 = 4;
      v11 = a3;
      v12 = 111;
    }

LABEL_24:
    v13 = a5;
    v14 = 1;
    goto LABEL_25;
  }

  if ((a4 - 11) >= 2)
  {
    if (a4 != 101)
    {
      if (a4 == 102)
      {
        v10 = 1;
        v11 = a3;
        v12 = 102;
LABEL_15:
        v13 = a5;
        v14 = 0;
LABEL_25:
        sub_1007F8DE0(a1, a2, v10, v11, v12, v13, v14);
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    v10 = 1;
    v11 = a3;
    v12 = 101;
    goto LABEL_24;
  }

  sub_1007F89EC(a1, a2, a3, a4, a5);
  if (!v8 || a3 != 32)
  {
LABEL_26:
    if (a3 == 16 || a3 == 1)
    {

      sub_1007F9A24(a1, v8, a3, a4, a5);
    }

    return;
  }

  v15 = sub_1000E35FC(v8);
  v16 = *(*a1 + 72);

  v16(a1, v8, v15, a4 == 11);
}

void sub_1007FB32C(uint64_t a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007FB3A8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1007FB3B8(id a1)
{
  v4 = @"NUMBER_OF_LE_CONNECTIONS";
  if (qword_100B50910 != -1)
  {
    sub_10087BF8C();
  }

  v1 = [NSNumber numberWithInt:*(off_100B50908 + 42)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"com.apple.bluetooth.leconnection" object:0 userInfo:v2];
}

void sub_1007FB4E0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_100017F4C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007FB5B4;
  v8[3] = &unk_100AE1228;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

uint64_t sub_1007FB5B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_10087D094();
  }

  v3 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
  sub_1007F89EC(v2, v3, 0x8000u, 0xBu, *(a1 + 48));
  v4 = sub_100017F4C();
  sub_10000CA94(v4, &stru_100B0EFC0);
  if (qword_100B508B0 != -1)
  {
    sub_10087BF78();
  }

  v5 = off_100B508A8;
  sub_10004DFB4(v8, *(a1 + 32));
  v6 = sub_10074F2BC(v5, v8);
  return (*(*v2 + 88))(v2, *(a1 + 32), v6, 1);
}

void sub_1007FB6DC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_100017F4C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007FB7B0;
  v8[3] = &unk_100AE1228;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

uint64_t sub_1007FB7B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_10087D094();
  }

  v3 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
  sub_1007F89EC(v2, v3, 0x8000u, 0xCu, *(a1 + 48));
  v4 = sub_100017F4C();
  sub_10000CA94(v4, &stru_100B0EFC0);
  v5 = *(a1 + 32);
  v6 = *(*v2 + 88);

  return v6(v2, v5, 0, 0);
}

void sub_1007FB870(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v5 = a2;
  v6 = a1;
  if (a4 == 4)
  {
    if (a3)
    {
      v10 = 803;
    }

    else
    {
      v10 = 804;
    }

    v8 = 4;
    v9 = 0x400000;
  }

  else
  {
    if (a4 != 3)
    {
      return;
    }

    if (a3)
    {
      v7 = 801;
    }

    else
    {
      v7 = 802;
    }

    sub_1007FA004(a1, a2, 0x10000, v7);
    a1 = v6;
    a2 = v5;
    v8 = 3;
    v9 = 0x10000;
    v10 = v7;
  }

  sub_1007F8DE0(a1, a2, v8, v9, v10, 0, a3);
}

uint64_t sub_1007FB944(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 476) = a2;
  *(result + 484) = a3;
  return result;
}

uint64_t sub_1007FB950(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 428) = a2;
  *(result + 436) = a3;
  return result;
}

void sub_1007FB964(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v13 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kWCMBTLeDiscoveryScan_State", a3);
  xpc_dictionary_set_int64(v6, "kWCMBTLeDiscoveryScan_UseCase", 1);
  v7 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_10003069C(a2);
    v9 = "false";
    if (a3)
    {
      v9 = "true";
    }

    *buf = 136315394;
    v15 = v8;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Notification to WiFi for CBUseCase %s Scanning Started %s", buf, 0x16u);
  }

  sub_1000AD59C(a1, 0x206uLL, v6);
  v10 = *(a1 + 432);
  if (a3)
  {
    for (; v10; v10 = *v10)
    {
      v11 = *(v10 + 7);
      if (v11 <= a2)
      {
        if (v11 >= a2)
        {
          return;
        }

        ++v10;
      }
    }

    sub_10003650C(a1 + 424, &v13);
  }

  else
  {
    while (v10)
    {
      v12 = *(v10 + 7);
      if (v12 <= a2)
      {
        if (v12 >= a2)
        {
          sub_1007FC898(a1 + 424, &v13);
          return;
        }

        ++v10;
      }

      v10 = *v10;
    }
  }
}

void sub_1007FBB08(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "kWCMBTLeADVePAStateChange", a2);
  v5 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "False";
    if (a2)
    {
      v6 = "True";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "leEpaUseCaseEnabled: Sending Notification to WRM for LE ePA Use Case Enabled: %s", &v7, 0xCu);
  }

  sub_1000AD59C(a1, 0x207uLL, v4);
}

void sub_1007FBC0C(uint64_t a1)
{
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Coex Manager -------------------", __p, 2u);
    v2 = qword_100BCE8E0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000151C0(a1 + 476);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = *__p;
    }

    *buf = 136446210;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(*__p);
    }

    v2 = qword_100BCE8E0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Disabled";
    if (*(a1 + 472))
    {
      v4 = "Enabled";
    }

    *__p = 136446210;
    *&__p[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Grant RC2 State: %{public}s", __p, 0xCu);
  }
}

char *sub_1007FBDAC(void *a1, char *__src, char *a3)
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

void sub_1007FBF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007FC494(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

void *sub_1007FC630(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *sub_1007FC764(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_1007FC898(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_1007FC91C(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

ctu::TextConverter *ctu::TextConverter::TextConverter(ctu::TextConverter *this)
{
  v2 = operator new(0x38uLL);
  v2[2] = 0;
  *(v2 + 2) = 0;
  *(v2 + 24) = 0;
  *v2 = &off_100B0F638;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = 0;
  *this = v2;
  *(this + 1) = v2;
  return this;
}

void ctu::TextConverter::~TextConverter(ctu::TextConverter *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = v2[2];
      (*(*v2 + 8))(v2);
      v2 = *this;
    }

    while (*this);
  }
}

uint64_t ctu::TextConverter::setSource(uint64_t this, const char *a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + 8) = a3;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  v4 = *this;
  if (*this)
  {
    do
    {
      this = (*(*v4 + 24))(v4);
      v4 = v4[2];
    }

    while (v4);
  }

  return this;
}

_DWORD *ctu::TextConverter::pushConversion(void *a1, int a2, int a3, int a4, int a5)
{
  switch(a2)
  {
    case 0:
      result = operator new(0x28uLL);
      v9 = *a1;
      result[2] = 0;
      *(result + 2) = v9;
      *(result + 24) = 0;
      v10 = &off_100B0F228;
      goto LABEL_4;
    case 1:
      result = operator new(0x20uLL);
      v24 = *a1;
      result[2] = 0;
      *(result + 2) = v24;
      *(result + 24) = 0;
      v13 = &off_100B0F258;
      goto LABEL_29;
    case 2:
      result = operator new(0x20uLL);
      v19 = *a1;
      result[2] = 0;
      *(result + 2) = v19;
      *(result + 24) = 0;
      v13 = &off_100B0F288;
      goto LABEL_29;
    case 3:
      result = operator new(0x40uLL);
      v22 = *a1;
      result[2] = 0;
      *(result + 2) = v22;
      *(result + 24) = 0;
      *result = &off_100B0F2B8;
      result[13] = 0;
      result[14] = 0;
      goto LABEL_30;
    case 4:
      result = operator new(0x28uLL);
      v16 = *a1;
      result[2] = 0;
      *(result + 2) = v16;
      *(result + 24) = 0;
      *result = &off_100B0F318;
      result[7] = 0;
      result[8] = 0;
      result[9] = (7 - a3) % 7;
      goto LABEL_30;
    case 5:
      result = operator new(0x30uLL);
      v26 = *a1;
      result[2] = 0;
      *(result + 2) = v26;
      *(result + 24) = 0;
      *result = &off_100B0F2E8;
      result[7] = a3;
      *(result + 4) = 0;
      goto LABEL_22;
    case 6:
      result = operator new(0x30uLL);
      v28 = *a1;
      result[2] = 0;
      *(result + 2) = v28;
      *(result + 24) = 0;
      result[7] = a3;
      *(result + 4) = 0;
      *(result + 20) = 0;
      v13 = &off_100B0F348;
      goto LABEL_29;
    case 7:
      result = operator new(0x28uLL);
      v23 = *a1;
      result[2] = 0;
      *(result + 2) = v23;
      *(result + 24) = 0;
      *result = &off_100B0F468;
      result[7] = -1;
      result[8] = a3;
      goto LABEL_30;
    case 8:
      result = operator new(0x28uLL);
      v32 = *a1;
      result[2] = 0;
      *(result + 2) = v32;
      *(result + 24) = 0;
      *result = &off_100B0F498;
      result[7] = a3;
      result[8] = a5;
      goto LABEL_30;
    case 9:
      result = operator new(0x20uLL);
      v18 = *a1;
      result[2] = 0;
      *(result + 2) = v18;
      *(result + 24) = 0;
      v13 = &off_100B0F548;
      goto LABEL_29;
    case 10:
      result = operator new(0x30uLL);
      v30 = *a1;
      result[2] = 0;
      *(result + 2) = v30;
      *(result + 24) = 0;
      *result = &off_100B0F578;
      *(result + 4) = 0;
      result[10] = 0;
      goto LABEL_30;
    case 11:
      result = operator new(0x20uLL);
      v14 = *a1;
      result[2] = 0;
      *(result + 2) = v14;
      *(result + 24) = 0;
      v15 = &off_100B0F5A8;
      goto LABEL_9;
    case 12:
      result = operator new(0x20uLL);
      v17 = *a1;
      result[2] = 0;
      *(result + 2) = v17;
      *(result + 24) = 0;
      v15 = &off_100B0F5D8;
LABEL_9:
      *result = v15;
      *(result + 13) = a3;
      goto LABEL_30;
    case 13:
      result = operator new(0x20uLL);
      v27 = *a1;
      result[2] = 0;
      *(result + 2) = v27;
      *(result + 24) = 0;
      v13 = &off_100B0F518;
      goto LABEL_29;
    case 14:
      result = operator new(0x20uLL);
      v12 = *a1;
      result[2] = 0;
      *(result + 2) = v12;
      *(result + 24) = 0;
      v13 = &off_100B0F608;
      goto LABEL_29;
    case 15:
      result = operator new(0x30uLL);
      v20 = *a1;
      result[2] = 0;
      *(result + 2) = v20;
      *(result + 24) = 0;
      *result = &off_100B0F378;
      result[7] = 0;
      result[8] = 0;
      if (a3 <= 0)
      {
        v21 = -(-a3 & 7);
      }

      else
      {
        v21 = a3 & 7;
      }

      result[9] = v21;
LABEL_22:
      *(result + 40) = 0;
      goto LABEL_30;
    case 16:
      result = operator new(0x28uLL);
      v11 = *a1;
      result[2] = 0;
      *(result + 2) = v11;
      *(result + 24) = 0;
      v10 = &off_100B0F3A8;
LABEL_4:
      *result = v10;
      result[7] = 0;
      result[8] = 0;
      goto LABEL_30;
    case 17:
      result = operator new(0x20uLL);
      v25 = *a1;
      result[2] = 0;
      *(result + 2) = v25;
      *(result + 24) = 0;
      v13 = &off_100B0F3D8;
      goto LABEL_29;
    case 18:
      result = operator new(0x20uLL);
      v29 = *a1;
      result[2] = 0;
      *(result + 2) = v29;
      *(result + 24) = 0;
      v13 = &off_100B0F408;
      goto LABEL_29;
    case 19:
      result = operator new(0x20uLL);
      v33 = *a1;
      result[2] = 0;
      *(result + 2) = v33;
      *(result + 24) = 0;
      v13 = &off_100B0F438;
LABEL_29:
      *result = v13;
LABEL_30:
      *a1 = result;
      break;
    default:
      result = *a1;
      break;
  }

  result[2] = a4;
  return result;
}

void ctu::TextConverter::readChars(ctu::TextConverter *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = (*(**this + 16))();
      if (v6 == -1)
      {
        break;
      }

      std::string::push_back(a3, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1007FD148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FD164(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  result = *(a1 + 28);
  if (result == -1)
  {
    return result;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 32) = v4 - 1;
    if (v4 != 2)
    {
      return a0123456789abcd_2[result & 0xF];
    }
  }

  else
  {
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    *(a1 + 28) = result;
    if (result == -1)
    {
      return result;
    }

    *(a1 + 32) = 1;
  }

  LODWORD(result) = result >> 4;
  return a0123456789abcd_2[result & 0xF];
}

uint64_t sub_1007FD218(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FD224(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (v3 == -1 || v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 - 65 >= 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 - 55;
  }

  if (v3 - 97 <= 5)
  {
    v7 = v3 - 87;
  }

  if (v3 - 48 <= 9)
  {
    v7 = v3 - 48;
  }

  v8 = 16 * v7;
  if (v4 - 65 >= 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 - 55;
  }

  if (v4 - 97 <= 5)
  {
    v9 = v4 - 87;
  }

  if (v4 - 48 <= 9)
  {
    v9 = v4 - 48;
  }

  return (v9 + v8);
}

uint64_t sub_1007FD340(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v4 = v3;
  if (v3 != -1 && (v3 & 0x80) != 0)
  {
    if ((v3 & 0x20) == 0)
    {
      v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v5 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5 & 0x3F | ((v4 & 0x1F) << 6);
      }
    }

    if ((v3 & 0x10) == 0)
    {
      v6 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v7 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v6 != -1 && v7 != -1)
      {
        return ((v4 & 0xF) << 12) | ((v6 & 0x3F) << 6) | v7 & 0x3F;
      }

      return 0xFFFFFFFFLL;
    }

    if ((v3 & 8) != 0)
    {
      if ((v3 & 4) != 0)
      {
        if ((v3 & 2) != 0)
        {
          return 0;
        }

        v21 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v22 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v23 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v24 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v11 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        if (v21 == -1 || v22 == -1 || v23 == -1 || v24 == -1 || v11 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = ((v21 & 0x3F) << 24) | (v4 << 30) | ((v22 & 0x3F) << 18) | ((v23 & 0x3F) << 12) | ((v24 & 0x3F) << 6);
      }

      else
      {
        v15 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v16 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v17 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        v11 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        if (v15 == -1 || v16 == -1 || v17 == -1 || v11 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = ((v4 & 3) << 24) | ((v15 & 0x3F) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
      }
    }

    else
    {
      v9 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v10 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v11 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v9 == -1 || v10 == -1 || v11 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v14 = ((v4 & 7) << 18) | ((v9 & 0x3F) << 12) | ((v10 & 0x3F) << 6);
    }

    v30 = v14 & 0xFFFFFFC0 | v11 & 0x3F;
    v31 = v30 - 0x10000;
    v32 = v30 - 64513;
    if (v31 >= 0)
    {
      v32 = v31;
    }

    return ((v32 >> 10 << 16) - 671088640) | (v31 - (v32 & 0xFFFFFC00) + 56320);
  }

  return v4;
}

uint64_t sub_1007FD73C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = *(a1 + 52);
  if (*(a1 + 56) == v3)
  {
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (result == -1)
    {
      return result;
    }

    v5 = ((result >> 6) & 0x36FFC00) + result - 56613888;
    if (result >> 26 != 54)
    {
      v5 = result;
    }

    if ((v5 & 0x7C000000) != 0)
    {
      *(a1 + 28) = vorrq_s8(vandq_s8(vshlq_u32(vdupq_n_s32(v5), xmmword_1008C5900), xmmword_1008C5910), xmmword_1008C5920);
      *(a1 + 44) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 6;
      v8 = 48;
    }

    else if ((v5 & 0x3E00000) != 0)
    {
      *(a1 + 28) = HIBYTE(v5) | 0xF8;
      *(a1 + 32) = *&vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFF4FFFFFFEELL), 0x3F0000003FLL) | 0x8000000080;
      *(a1 + 40) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 5;
      v8 = 44;
    }

    else if ((v5 & 0x1F0000) != 0)
    {
      *(a1 + 28) = vorr_s8(vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFF4FFFFFFEELL), 0x3F00000007), 0x80000000F0);
      *(a1 + 36) = (v5 >> 6) & 0x3F | 0x80;
      v6 = v5 & 0x3F | 0x80;
      v7 = 4;
      v8 = 40;
    }

    else if ((v5 & 0xF800) != 0)
    {
      *(a1 + 28) = vorr_s8(vand_s8(vshl_u32(vdup_n_s32(v5), 0xFFFFFFFAFFFFFFF4), 0x3F0000000FLL), 0x80000000E0);
      v6 = v5 & 0x3F | 0x80;
      v7 = 3;
      v8 = 36;
    }

    else if ((v5 & 0x780) != 0)
    {
      *(a1 + 28) = (v5 >> 6) & 0x1F | 0xC0;
      v6 = v5 & 0x3F | 0x80;
      v7 = 2;
      v8 = 32;
    }

    else
    {
      v6 = v5 & 0x7F;
      v7 = 1;
      v8 = 28;
    }

    v3 = 0;
    *(a1 + v8) = v6;
    *(a1 + 56) = v7;
  }

  *(a1 + 52) = v3 + 1;
  return *(a1 + 4 * v3 + 28);
}

uint64_t sub_1007FD970(uint64_t result)
{
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FD97C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 36);
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    *(a1 + 32) = v4;
    if (v4 != -1)
    {
      goto LABEL_7;
    }

    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = 0;
LABEL_7:
  v3 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  *(a1 + 36) = v3;
  *(a1 + 40) = 1;
LABEL_8:
  v5 = *(a1 + 32);
  if (v5 == -1 && v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 28);
  v8 = v5 >> v7;
  v9 = (v3 << (7 - v7));
  if (v3 == -1)
  {
    v9 = 0;
  }

  v10 = v9 | v8;
  *(a1 + 28) = v7 + 1;
  if (v7 == 6)
  {
    *(a1 + 28) = 0;
    v11 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    *(a1 + 32) = v11;
    if (v11 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *(a1 + 32) = v3;
  if (v3 != -1)
  {
LABEL_19:
    v11 = (*(**(a1 + 16) + 16))(*(a1 + 16));
LABEL_20:
    *(a1 + 36) = v11;
  }

  return v10;
}

uint64_t sub_1007FDAFC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 28) = 0;
  *(result + 33) = 0;
  return result;
}

uint64_t sub_1007FDB0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = *(a1 + 32);
  if (v3 >= 7)
  {
    v6 = *(a1 + 28);
LABEL_10:
    result = v6 & 0x7F;
    *(a1 + 28) = v6 >> 7;
    *(a1 + 32) = v3 - 7;
  }

  else
  {
    while (1)
    {
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (result == -1)
      {
        break;
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 28) | (result << v5);
      v3 = v5 + 8;
      *(a1 + 28) = v6;
      *(a1 + 32) = v3;
      v7 = *(a1 + 36);
      if (v7)
      {
        v6 >>= v7;
        v3 -= v7;
        *(a1 + 28) = v6;
        *(a1 + 32) = v3;
      }

      if (v3 >= 7)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1007FDBD0(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FDBDC(uint64_t a1)
{
  result = sub_1007FD97C(a1);
  if (result != -1)
  {
    if (*(a1 + 32) == -1)
    {
      if ((result & 0xFFFFFFFE) == 0x1A && (*(a1 + 41) & 1) == 0)
      {
        *(a1 + 32) = 13;
      }
    }

    else if (*(a1 + 36) == -1 && *(a1 + 28) == 6)
    {
      *(a1 + 36) = 13;
      *(a1 + 41) = 1;
    }
  }

  return result;
}

uint64_t sub_1007FDC5C(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 28) = 0;
  *(result + 33) = 0;
  return result;
}

uint64_t sub_1007FDC6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v1 - 1;
  *(a1 + 8) = v3;
  if ((*(a1 + 40) & 1) == 0 && *(a1 + 36))
  {
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    *(a1 + 28) = result;
    if (result == -1)
    {
      return result;
    }

    *(a1 + 32) = 8 - *(a1 + 36);
  }

  *(a1 + 40) = 1;
  v5 = *(a1 + 32);
  if (v5 >= 7)
  {
    v6 = *(a1 + 28);
  }

  else
  {
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (result == -1)
    {
      return result;
    }

    v5 = *(a1 + 32) + 8;
    v6 = result | (*(a1 + 28) << 8);
    *(a1 + 28) = v6;
  }

  v7 = v5 - 7;
  result = (v6 >> v7) & 0x7F;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1007FDD74(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FDD84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = *(a1 + 32);
  if (v3 >= 8)
  {
    v7 = *(a1 + 28);
LABEL_8:
    v9 = v3 - 8;
    result = (v7 >> v9);
    *(a1 + 32) = v9;
  }

  else
  {
    while (1)
    {
      v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v5 = *(a1 + 28);
      if (v4 == -1)
      {
        break;
      }

      v6 = *(a1 + 32);
      v3 = v6 + 7;
      v7 = v4 & 0x7F | (v5 << 7);
      *(a1 + 28) = v7;
      *(a1 + 32) = v6 + 7;
      if (v6 >= 1)
      {
        goto LABEL_8;
      }
    }

    result = (v5 << (8 - *(a1 + 32)));
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1007FDE4C(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FDE58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result != -1 && result >= 0x80)
  {
    *(a1 + 24) = 1;
    return 32;
  }

  return result;
}

uint64_t sub_1007FDED8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  return (*(**(a1 + 16) + 16))();
}

uint64_t sub_1007FDF18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  return (*(**(a1 + 16) + 16))();
}

uint64_t sub_1007FDF58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  result = *(a1 + 28);
  if (result != -1)
  {
    *(a1 + 28) = -1;
    return result;
  }

  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result == -1)
  {
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 32);
  if (result < 0x100 || (result <= 0x17F ? (v5 = v4 == 2) : (v5 = 0), v5))
  {
    if (v4 == 3)
    {
      v4 = 0;
    }

    v7 = *(&off_100B0F860 + v4) + result;
  }

  else
  {
    if ((result - 896) > 0x4F || v4 != 3)
    {
      if ((result - 912) <= 0x1F)
      {
        v7 = &unk_1008C5F1B + (result - 912);
        goto LABEL_22;
      }

      if (result == 8364)
      {
        LOBYTE(result) = -27;
        goto LABEL_24;
      }

LABEL_28:
      *(a1 + 24) = 1;
      return 32;
    }

    v7 = &unk_1008C5ECB + (result - 896);
  }

LABEL_22:
  result = *v7;
  if (result == 255)
  {
    goto LABEL_28;
  }

  if ((result & 0x80) != 0)
  {
LABEL_24:
    *(a1 + 28) = result & 0x7F;
    return 27;
  }

  return result;
}

uint64_t sub_1007FE08C(uint64_t result)
{
  *(result + 28) = -1;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FE09C(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 8) = v2 - 1;
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (result == -1)
    {
      return result;
    }
  }

  while ((result & 0x80) != 0);
  v4 = *(&off_100B0F4B8 + *(a1 + 32));
  if (result != 27)
  {
    return *(v4 + 2 * result);
  }

  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result != -1)
  {
    v5 = off_100B0F4E0[*(a1 + 28)][result];
    if (v5 == 32)
    {
      LOWORD(v5) = *(v4 + 2 * result);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1007FE17C(uint64_t a1)
{
  v2 = a1;
  do
  {
    if (*(v2 + 24))
    {
      return 0xFFFFFFFFLL;
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v3 - 1;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result != -1 && (result & 0x80) != 0)
  {
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1007FE204(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (v3 != -1)
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (v4 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = v4 | (v3 << 8);
    if (v3 >> 10 == 54)
    {
      v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v5 != -1)
      {
        v6 = v5;
        v7 = (*(**(a1 + 16) + 16))(*(a1 + 16));
        if (v7 != -1)
        {
          return (v6 << 8) | (v3 << 16) | v7;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t sub_1007FE32C(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = result;
  *(result + 8) = v1 - 1;
  v3 = *(result + 32);
  if (!v3)
  {
    result = (*(**(result + 16) + 16))(*(result + 16));
    *(v2 + 40) = result;
    if (result == -1)
    {
      return result;
    }

    if (result >> 27 == 27)
    {
      *(v2 + 32) = 3;
      return BYTE3(result);
    }

    *(v2 + 32) = 1;
    return BYTE1(result);
  }

  *(result + 32) = v3 - 1;
  LODWORD(result) = *(result + 40);
  if (v3 == 2)
  {
    return BYTE1(result);
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      return result;
    }

    return BYTE3(result);
  }

  return BYTE2(result);
}

uint64_t sub_1007FE400(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FE410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result != -1)
  {
    if (result > 255)
    {
      v4 = result - *(a1 + 26);
      if (v4 >= 128)
      {
        return 32;
      }

      else
      {
        return v4 | 0x80u;
      }
    }

    else
    {
      return byte_1008C5960[result];
    }
  }

  return result;
}

uint64_t sub_1007FE4B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result == -1)
  {
    return result;
  }

  if (result > 127)
  {
    return (result & 0x7F) + *(a1 + 26);
  }

  if (result == 27)
  {
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (result == -1)
    {
      return result;
    }

    v4 = asc_1008C5B60;
  }

  else
  {
    v4 = &unk_1008C5A60;
  }

  return v4[result];
}

uint64_t sub_1007FE590(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v3 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = -86;
  bytes = v3;
  if (v3 >= 128)
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    if (v4 != -1)
    {
      v11 = v4;
      v5 = 2;
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 1;
LABEL_8:
  v7 = CFStringCreateWithBytes(kCFAllocatorDefault, &bytes, v5, 0x422u, 0);
  if (!v7)
  {
    return 9633;
  }

  v8 = v7;
  CharacterAtIndex = CFStringGetCharacterAtIndex(v7, 0);
  CFRelease(v8);
  return CharacterAtIndex;
}

uint64_t sub_1007FE698(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(a1 + 40) = v3 + 1;
  return *(v2 + v3);
}

uint64_t sub_1007FE6C4(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1007FF1CC(void *a1)
{
  [a1 count];
  mach_absolute_time();
  UpTicksToMilliseconds();
  return LogPrintF_safe();
}

void *sub_1007FF350(void *result)
{
  if (result)
  {
    v1 = result;
    result = CBErrorF();
    *v1 = result;
  }

  return result;
}

void sub_1007FF494(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  LogPrintF_safe();
}

void sub_1007FF4F4(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  LogPrintF_safe();
}

uint64_t sub_1007FF594(uint64_t a1, _BYTE *a2)
{
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = 0;
  return result;
}

void sub_1007FF61C()
{
  if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    v0 = CUPrintNSError();
    LogPrintF_safe();
  }
}

void sub_1007FF77C()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_1007FF818()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

uint64_t sub_1007FFB68(uint64_t result)
{
  v1 = result;
  if (dword_100B507C8 <= 90)
  {
    if (dword_100B507C8 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

void sub_1007FFCC0()
{
  sub_1000E0A4C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1007FFD38()
{
  sub_1000E0A4C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100800F80()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100801014()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080108C()
{
  if (dword_100B50958 <= 30)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void sub_100801104()
{
  if (dword_100B50958 <= 30)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void sub_1008011BC()
{
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    CUPrintDurationDouble();
    objc_claimAutoreleasedReturnValue();
    sub_10003F440();
    LogPrintF_safe();
  }
}

void sub_100801274()
{
  if (dword_100B50958 <= 30)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void sub_1008012EC()
{
  if (dword_100B50958 <= 30)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void sub_100801364()
{
  if (dword_100B50958 <= 30)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void sub_1008013DC()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100801594()
{
  CUPrintErrorCode();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_1008015FC()
{
  CUPrintErrorCode();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_100801664()
{
  CUPrintErrorCode();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_1008016CC()
{
  CUPrintErrorCode();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_100801734()
{
  CUPrintErrorCode();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void *sub_10080179C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 425) & 1) == 0)
  {
    v2 = result;
    state64 = 0;
    result = notify_get_state(*(v1 + 232), &state64);
    if (!result && !state64 && *(v2[4] + 236))
    {
      if (dword_100B509C8 <= 15 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      *(v2[4] + 236) = state64 != 0;
      return [v2[4] scheduleUpdateImmediate:1];
    }
  }

  return result;
}

void sub_10080186C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    v11 = v2;
    LogPrintF_safe();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 40) + 560);
    sub_10009E0B8();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(8 * i) activatedController];
          v10 = [v9 tipiChangedHandler];

          if (v10)
          {
            (v10)[2](v10, v2);
          }
        }

        sub_10009E0B8();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

void sub_100802B7C()
{
  v0 = CUPrintErrorCode();
  LogPrintF_safe();
}

void sub_100802BD8()
{
  v0 = CUPrintErrorCode();
  LogPrintF_safe();
}

void sub_100802C6C()
{
  v0 = CUPrintFlags32();
  LogPrintF_safe();
}

void sub_1008030DC(uint64_t a1)
{
  sub_10003F44C(a1);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10003F078();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_1001048E0();
  LogPrintF_safe();
}

void sub_10080314C(uint64_t a1)
{
  sub_10003F44C(a1);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10003F078();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_1001048E0();
  LogPrintF_safe();
}

void sub_1008034F0()
{
  v1 = CUPrintFlags32();
  v0 = CUPrintFlags32();
  LogPrintF_safe();
}

void sub_1008035EC()
{
  v0 = CUPrintErrorCode();
  LogPrintF_safe();
}

void sub_100803670(uint64_t a1)
{
  sub_10003F44C(a1);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10003F078();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_1001048E0();
  LogPrintF_safe();
}

uint64_t sub_1008036E0()
{
  sub_1001048A0();
  v0 = CUPrintNSDataHex();
  sub_1001048C0(v0);
  return LogPrintF_safe();
}

void sub_100803750(uint64_t a1)
{
  sub_10003F44C(a1);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10003F078();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_1001048E0();
  LogPrintF_safe();
}

uint64_t sub_1008037C0()
{
  sub_1001048A0();
  v0 = CUPrintNSDataHex();
  sub_1001048C0(v0);
  return LogPrintF_safe();
}

void sub_100803848()
{
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_10006DC08();
  }
}

void sub_1008038A8()
{
  if (dword_100B509C8 <= 35 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B70A4();
  }
}

void sub_100803908()
{
  if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

uint64_t sub_100803968()
{
  if (dword_100B509C8 > 90)
  {
    return 1;
  }

  if (dword_100B509C8 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v0 = CUPrintNSError();
  sub_1001048C0(v0);
  LogPrintF_safe();
  return 0;
}

void sub_100803A08()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF_safe();
}

void sub_100803AC4()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100803BC4()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF_safe();
}

void sub_100803C2C()
{
  v0 = CUPrintNSDataAddress();
  v1 = CUPrintFlags32();
  v2 = CUPrintNSObjectOneLine();
  v3 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

uint64_t sub_100803DE0(void *a1)
{
  [a1 lastSeenTicks];
  UpTicksToSeconds();
  return LogPrintF_safe();
}

void sub_100803E3C()
{
  v0 = CUPrintFlags64();
  v1 = CBDiscoveryTypesToString();
  LogPrintF_safe();
}

void sub_100803FDC()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

void sub_100804080()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v1 || _LogCategory_Initialize())
    {
      sub_1000FB9D0(*(v0 + 40));
      LogPrintF_safe();
    }
  }
}

void sub_100804100()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

void sub_1008041A4()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v1 || _LogCategory_Initialize())
    {
      sub_1000FB9D0(*(v0 + 32));
      LogPrintF_safe();
    }
  }
}

uint64_t sub_1008042CC(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_1000B6EE0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000B6EE0();
    }
  }

  return result;
}

void sub_100804324()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

uint64_t sub_1008043F8(id *a1)
{
  [a1[13] count];
  [a1[58] count];
  [a1[56] count];
  return LogPrintF_safe();
}

uint64_t sub_1008044B0(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  return LogPrintF_safe();
}

void sub_100804774()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_1008047EC()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_1008048DC()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

void sub_100804938(uint64_t a1)
{
  [*(a1 + 40) unsignedIntValue];
  sub_1000E3FF8();
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_1008049B8(uint64_t a1)
{
  [*(a1 + 40) unsignedIntValue];
  sub_1000E3FF8();
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100804A38(void *a1)
{
  v1 = [a1 remoteDevice];
  v2 = [v1 identifier];
  LogPrintF_safe();
}

void sub_100804B5C(void *a1, uint64_t a2, uint64_t *a3)
{
  *a3 = [a1 identifier];
  v4 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100804BD8()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100804CBC(void *a1)
{
  if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintNSError();
    LogPrintF_safe();
  }
}

void sub_100804D50()
{
  if (dword_100B509C8 <= 35 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B70A4();
  }
}

void sub_100804DB0()
{
  if (dword_100B509C8 <= 35 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B70A4();
  }
}

void sub_100804E10()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

void sub_100804EB4()
{
  if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_100804F14()
{
  if (dword_100B509C8 <= 90)
  {
    sub_1000F52B4();
    if (!v0 || _LogCategory_Initialize())
    {
      v1 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

void sub_1008052B8()
{
  sub_1001048A0();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

uint64_t sub_100805314()
{
  sub_1001048A0();
  v0 = CUPrintNSDataHex();
  sub_1001048C0(v0);
  return LogPrintF_safe();
}

void sub_100805368(uint64_t a1)
{
  v2 = CBErrorF();
  (*(a1 + 16))(a1, 0, v2);
}

uint64_t sub_1008053D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setUserController:0];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100805474()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

void sub_100805508()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

void sub_100805574()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_1008055EC()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

void sub_100805658()
{
  v0 = CUPrintFlags64();
  LogPrintF_safe();
}

void sub_100805A8C(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  LogPrintF_safe();
}

void sub_100805B88(void *a1, void *a2, uint64_t a3)
{
  [a1 bleRSSI];
  v5 = [a2 objectForKeyedSubscript:a3];
  LogPrintF_safe();
}

void sub_10080603C(unsigned __int8 a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Advanced Sniff mode change ignored, duplicate mode: %d, maxAge %d", v3, 0xEu);
}

void sub_1008061B4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100806344()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008063B4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100806530(int *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  *a2 = 67109120;
  *(a2 + 4) = v3;
  sub_10006DC24(&_mh_execute_header, a2, a3, "### _set_user_dir_suffix failed: %d", a2);
}

void sub_100806570(int *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  *a2 = 67109120;
  *(a2 + 4) = v3;
  sub_10006DC24(&_mh_execute_header, a2, a3, "### _CS_DARWIN_USER_TEMP_DIR failed: %d", a2);
}

void sub_1008065B0(void *a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E0A78(&_mh_execute_header, v2, v3, "%s: No valid serial port found (tried cu.bluetooth and uart.bluetooth)\n", v4, v5, v6, v7, 2u);
  }

  *a1 = "%s: No valid serial port found (tried cu.bluetooth and uart.bluetooth)\n";
}

void sub_100806658(void *a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E0A78(&_mh_execute_header, v2, v3, "%s: Not a valid MAC address (all 00s).\n", v4, v5, v6, v7, 2u);
  }

  *a1 = "%s: Not a valid MAC address (all 00s).\n";
}

void sub_1008067AC(uint64_t a1, int a2, NSObject *a3)
{
  *a1 = 67109120;
  *(a1 + 4) = a2;
  sub_10006DC24(&_mh_execute_header, a2, a3, "Failed to update Dynamic Store. BTLocalDeviceGetModulePower returned %d", a1);
}

void sub_1008067E8(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Update Dynamic Store failed with error %s", &v2, 0xCu);
}

void sub_100806860(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Unable to match bluetooth service in device tree.\n", &v2, 0xCu);
}

uint64_t sub_1008069AC(uint64_t a1, uint64_t a2)
{
  [*(*(*(a2 + 64) + 8) + 40) scanScreenOnCount];
  [*(*(*(a2 + 64) + 8) + 40) scanScreenOffCount];
  return LogPrintF_safe();
}

void sub_100806B90(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100806BE4()
{
  v0 = CUPrintFlags64();
  LogPrintF_safe();
}

void sub_100806C7C()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100806CF4(void *a1, void *a2, id *a3, uint64_t a4)
{
  objc_sync_exit(a3);

  v7 = objc_retainBlock(a3[7]);
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, a4);
    v7 = v8;
  }
}

void sub_100806D74()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

uint64_t sub_100806DE0(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10006DC08();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10006DC08();
    }
  }

  return result;
}

void sub_100806E34()
{
  if (dword_100B50DC0 <= 90 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_100806E94(uint64_t a1)
{
  v1 = sub_100119550(*(a1 + 56));
  LogPrintF_safe();
}

void sub_100806EF4()
{
  if (dword_100B50DC0 <= 90 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_100806F54()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100806FB0()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100807008(uint64_t a1)
{
  v1 = sub_100119550(*(a1 + 56));
  LogPrintF_safe();
}

void sub_100807D20()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_100807E10()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100807F40()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

uint64_t sub_100808070()
{
  if (dword_100B50E30 <= 90)
  {
    if (dword_100B50E30 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

uint64_t sub_1008081D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (dword_100B50E30 <= 30)
  {
    if (dword_100B50E30 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a4 = a3;
  return result;
}

void sub_100808268(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10003F478();
  v4 = CUPrintNSDataHex();
  [a3 advertisingRate];
  LogPrintF_safe();
}

void sub_1008083C4()
{
  sub_10003F478();
  v1 = CUPrintNSDataHex();
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_10080860C()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100808680()
{
  sub_10003F478();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10009C5E0();
  LogPrintF_safe();
}

void sub_1008087A0()
{
  sub_10003F478();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10009C5E0();
  LogPrintF_safe();
}

void sub_1008088C0()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080893C()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  sub_10003F478();
  v1 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100808B68()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100808C14(uint64_t a1, int a2)
{
  sub_10003F478();
  v3 = CUPrintNSDataHex();
  sub_1001252F4(a2);
  LogPrintF_safe();
}

void sub_100808D5C(uint64_t a1, int a2)
{
  sub_10003F478();
  v3 = CUPrintNSDataHex();
  sub_1001252F4(a2);
  LogPrintF_safe();
}

void sub_100808EA4()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_100808F04(int a1)
{
  sub_1001252F4(a1);
  sub_10003F478();
  v1 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100809050(int a1, uint64_t a2, int a3)
{
  sub_1001252F4(a1);
  sub_10003F478();
  v4 = CUPrintNSDataHex();
  sub_100123840(a3);
  LogPrintF_safe();
}

void sub_1008090F4()
{
  v1 = CUPrintNSObjectOneLine();
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

void sub_100809234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CUPrintNSObjectOneLine();
  v4 = CUPrintNSObjectOneLine();
  sub_100121948(*(a3 + 96));
  LogPrintF_safe();
}

void sub_1008092C8()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

uint64_t sub_100809328()
{
  if (dword_100B50E30 <= 90)
  {
    if (dword_100B50E30 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

uint64_t sub_1008093DC()
{
  if (dword_100B50E30 <= 30)
  {
    if (dword_100B50E30 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

void sub_1008094F8()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_1008095F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CUPrintNSObjectOneLine();
  sub_100123840(*(a3 + 924));
  LogPrintF_safe();
}

void sub_100809698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CUPrintNSObjectOneLine();
  sub_100123840(*(a3 + 924));
  LogPrintF_safe();
}

void sub_10080973C()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_1008097B8()
{
  sub_10003F478();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10009C5E0();
  LogPrintF_safe();
}

void sub_1008098D8()
{
  sub_10003F478();
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  sub_10009C5E0();
  LogPrintF_safe();
}

void sub_1008099F8()
{
  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_100809A74()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  sub_10003F478();
  v1 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100809CA0()
{
  sub_10003F478();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

void sub_100809EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "### No accessoryID or groupID found for %@, details %@", &v5, 0x16u);
  }
}

void sub_100809F74()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "### Power source has incorrect identifier format, skipping: %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A068(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "### StackDeviceInfoChanged init power source failed: %@", buf, 0xCu);
}

void sub_10080A190()
{
  sub_10003F0D8();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StackPairingComplete found no identifier for device: %s", v4, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10080A2C8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "### StackUSBStateChanged init power source failed: %@", buf, 0xCu);
}

void sub_10080A388()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "Publish power source is missing accessoryID %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A480()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "### Power source has incorrect identifier format, skipping: %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A50C()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "### Notify source is missing accessoryID and groupID: %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A650(void **a1, void *a2, void ***a3)
{
  if (a1)
  {
    v5 = a2;
    objc_sync_enter(v5);
    v6 = dispatch_time(0, 3000000000);
    v7 = v5[11];
    *a3 = _NSConcreteStackBlock;
    a3[1] = 3221225472;
    a3[2] = sub_10012CF88;
    a3[3] = &unk_100AE0B60;
    a3[4] = v5;
    a3[5] = a1;
    dispatch_after(v6, v7, a3);
    objc_sync_exit(v5);
  }
}

void sub_10080A6FC()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "Remove flags source is missing accessoryID %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A788()
{
  v1 = sub_100058928();
  if (sub_10009C5EC(v1))
  {
    sub_10012E950();
    sub_10006DC40(&_mh_execute_header, v2, v3, "### Info change device is an aggregate component without a groupID: %@", v4, v5, v6, v7, v8);
  }
}

void sub_10080A814()
{
  sub_10003F0D8();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "### Skipping Apple MID connected with no serial number: %s", v4, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

uint64_t sub_10080AAF8(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10006DC08();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10006DC08();
    }
  }

  return result;
}

void sub_10080C784(unsigned int *a1)
{
  sub_1000B6EF4(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080C7EC(uint64_t a1)
{
  sub_10003F0F0(a1);
  v1 = CUPrintPID();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080C89C(void *a1)
{
  v2 = a1;
  if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v3 = _LogCategory_Initialize(), v2 = a1, v3))
    {
      LogPrintF_safe();
      v2 = a1;
    }
  }
}

void sub_10080C928()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080C994()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

void sub_10080C9F0()
{
  v0 = CUPrintPID();
  LogPrintF_safe();
}

void sub_10080CA90()
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

uint64_t sub_10080CAE4(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

void sub_10080CB44()
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080CB98(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = CBErrorF();
  [a1 _xpcSendReplyError:v8 request:a2];
}

void sub_10080CC08()
{
  sub_10003F0FC();
  v2 = CBErrorF();
  [v1 _xpcSendReplyError:v2 request:v0];
}

void sub_10080CCA0()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080CD50(uint64_t a1, void *a2)
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10014CF84();
  v3 = CUPrintNSError();
  sub_10003F4A0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

void sub_10080CDC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CBErrorF();
  [v2 _xpcSendReplyError:v3 request:*(a1 + 40)];
}

void sub_10080CE30(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    [v6 _xpcSendReplyError:a3 request:v5];
  }

  else
  {
    v7 = CBErrorF();
    [v4 _xpcSendReplyError:v7 request:*(a1 + 40)];
  }
}

void sub_10080CEC4(uint64_t a1, void *a2)
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10014CF84();
  v3 = CUPrintNSError();
  sub_10003F4A0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

void sub_10080CF40(uint64_t a1)
{
  sub_10003F0F0(a1);
  v13 = CUPrintPID();
  v2 = [*v1 identifier];
  sub_10003F4A0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF_safe();
}

void sub_10080D034()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080D094()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

uint64_t sub_10080D0F0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_1000B6EE0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000B6EE0();
    }
  }

  return result;
}

void sub_10080D148()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080D1A8(uint64_t a1, void *a2)
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10014CF84();
  v3 = CUPrintNSError();
  sub_10003F4A0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

void sub_10080D224()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080D280()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

void sub_10080D2DC()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080D33C()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

uint64_t sub_10080D398(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_1000B6EE0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000B6EE0();
    }
  }

  return result;
}

void sub_10080D3F0()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080D450(uint64_t a1)
{
  sub_10003F0F0(a1);
  v1 = CUPrintPID();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080D4C0(uint64_t a1)
{
  sub_10003F0F0(a1);
  v1 = CUPrintPID();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080D530(uint64_t a1)
{
  sub_10003F0F0(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10009E0C4();
  LogPrintF_safe();
}

void sub_10080D588()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080D5F0()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080D644()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080D6F0()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080D79C(uint64_t a1)
{
  sub_10003F0F0(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10009E0C4();
  LogPrintF_safe();
}

void sub_10080D7F4()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080D85C()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080D8B0()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080D90C()
{
  sub_10003F0FC();
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  *v0 = v1;
}

void sub_10080D980()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080D9DC()
{
  sub_10003F0FC();
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  *v0 = v1;
}

void sub_10080DA50()
{
  CUPrintNSObjectOneLine();
  objc_claimAutoreleasedReturnValue();
  sub_10014CF84();
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080DAD8()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080DB38()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080DBA8()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080DC80()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080DD58()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080DEF0()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void sub_10080DF90()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080DFE4()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080E0F0()
{
  sub_1000B700C();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080E178()
{
  sub_1000B700C();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080E200()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080E260()
{
  sub_1000B700C();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080E2E8()
{
  sub_1000B700C();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080E370()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080E430()
{
  sub_10003F0FC();
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  *v0 = v1;
}

void sub_10080E4A4()
{
  if (dword_100B510A0 <= 90)
  {
    sub_10003F0FC();
    if (v1 != -1 || _LogCategory_Initialize())
    {
      CUPrintNSError();
      objc_claimAutoreleasedReturnValue();
      sub_10009E0C4();
      LogPrintF_safe();
    }
  }
}

void sub_10080E53C()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10009C604();
  LogPrintF_safe();
}

void sub_10080E590(uint64_t a1)
{
  sub_10003F0F0(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10003F440();
  LogPrintF_safe();
}

void sub_10080E5F8()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080E660(uint64_t a1)
{
  sub_10003F0F0(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10009E0C4();
  LogPrintF_safe();
}

void sub_10080E6B8()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080E768()
{
  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

uint64_t sub_10080E8C8(uint64_t a1)
{
  [*(a1 + 16) count];
  [*(a1 + 24) count];
  return LogPrintF_safe();
}

uint64_t sub_10080EB7C()
{
  if (dword_100B511E0 <= 90)
  {
    if (dword_100B511E0 != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

void sub_10080F0EC()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000B6EE0();
  }
}

void sub_10080F14C()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F238()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F2A0()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F308()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F370()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F3D8()
{
  if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void sub_10080F604()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10080F6C8()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10003F4C4();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10080F7A0()
{
  sub_10000C0FC();
  sub_10006DC60();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_10080F8A4(uint8_t *buf, unsigned __int8 *a2, int *a3, os_log_t log)
{
  v4 = *a2 + 1;
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "applebt_rx_main: resetting next seq_num to %d\n", buf, 8u);
}

void sub_10080F8F8(int a1, int a2, NSObject *a3)
{
  v5 = 136315394;
  v6 = sub_10025A388(a1);
  v7 = 2080;
  v8 = sub_10025A388(a2);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "applebt_rx_main: applebt_hci_read failures, read result=%s pipes result=%s\n", &v5, 0x16u);
}

void sub_10080F9A8()
{
  sub_10003F0B4();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "applebt_rx_main: applebt_hci_read returned fatal error, read result=0x%08X pipes result=0x%08X - closing HCI device and aborting\n", v2, 0xEu);
}