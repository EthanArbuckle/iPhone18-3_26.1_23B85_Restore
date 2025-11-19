void sub_10005C880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12)
{
  if (*(v13 + 103) < 0)
  {
    operator delete(*(v13 + 80));
  }

  if (*(v13 + 79) < 0)
  {
    operator delete(*v19);
  }

  sub_10005E200(v18, 0);

  _Unwind_Resume(a1);
}

id sub_10005C9F8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v7 = "{msg%{public}.0s:#effManifestEntry,parseManifestEntry,invalidArgs}";
      v8 = v10;
      v9 = 18;
      goto LABEL_11;
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [v1 objectForKey:@"isIgneousEntry"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = "igneousEntry";
      v18 = 2113;
      v19 = v2;
      v7 = "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}";
      v8 = v6;
      v9 = 38;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v4 = [v3 BOOLValue];
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    LODWORD(v17) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,parseManifestEntry, isIgneousEntry:%{private}hhd}", &v12, 0x18u);
  }

LABEL_13:
  return v4;
}

uint64_t sub_10005CC38(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10005BDF0(a1, v3);
  *a1 = off_10013C180;
  *(a1 + 112) = 0xBFF0000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 144) = -1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    v4 = [v3 objectForKey:@"bleUid"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_10001D128((a1 + 152), [v4 UTF8String]);
        v5 = [v3 objectForKey:@"origin_timestamp"];
        if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v16 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 68289539;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            v24 = 2081;
            v25 = "origin_timestamp";
            v26 = 2113;
            v27 = v3;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
          }

          goto LABEL_23;
        }

        [v5 doubleValue];
        *(a1 + 112) = v6 + -978307200.0;
        v7 = [v3 objectForKey:@"epiCenter"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v7 count] == 2)
          {
            v8 = [v7 objectAtIndex:1];
            [v8 doubleValue];
            *(a1 + 120) = v9;

            v10 = [v7 objectAtIndex:0];
            [v10 doubleValue];
            *(a1 + 128) = v11;

            v12 = [v3 objectForKey:@"magnitude"];
            if (v12)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v12 doubleValue];
                *(a1 + 136) = v13;
                v14 = [v3 objectForKey:@"senderID"];
                if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  *(a1 + 144) = [v14 intValue];
                  *(a1 + 104) = 1;
                }

                else
                {

                  v19 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = 68289539;
                    v21 = 0;
                    v22 = 2082;
                    v23 = "";
                    v24 = 2081;
                    v25 = "senderID";
                    v26 = 2113;
                    v27 = v3;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
                  }
                }

                goto LABEL_22;
              }
            }

            v17 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 68289539;
              v21 = 0;
              v22 = 2082;
              v23 = "";
              v24 = 2081;
              v25 = "magnitude";
              v26 = 2113;
              v27 = v3;
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        else
        {

          v7 = 0;
        }

        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 68289539;
          v21 = 0;
          v22 = 2082;
          v23 = "";
          v24 = 2081;
          v25 = "epiCenter";
          v26 = 2113;
          v27 = v3;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
        }

LABEL_22:

LABEL_23:
        goto LABEL_24;
      }
    }

    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = "bleUid";
      v26 = 2113;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
    }
  }

LABEL_24:

  return a1;
}

void sub_10005D188(_Unwind_Exception *a1)
{
  v9 = v8;

  if (*(v1 + 175) < 0)
  {
    operator delete(*v5);
  }

  sub_10005D22C(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_10005D22C(uint64_t a1)
{
  *a1 = off_10013C158;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_10005E200((a1 + 8), 0);
  return a1;
}

void sub_10005D298(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 104);
    v8 = 68290307;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = v3;
    v13 = 2049;
    v14 = v5;
    v15 = 2049;
    v16 = v4;
    v17 = 2081;
    v18 = v6;
    v19 = 1025;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igManifestEntry, serverTime:%{private}0.1f, effective:%{private}0.1f, expires:%{private}0.1f, uid:%{private, location:escape_only}s, fIsValid:%{private}hhd}", &v8, 0x40u);
  }
}

_BYTE *sub_10005D39C(uint64_t a1, void *a2)
{
  v34 = a2;
  sub_10005BDF0(a1, v34);
  *a1 = off_10013C1A8;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  v3 = (a1 + 112);
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  v32 = a1;
  v33 = a1 + 136;
  *(a1 + 152) = 0;
  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    v4 = [v34 objectForKey:@"cmam"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v4;
        v5 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v5)
        {
          v6 = *v39;
          do
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v39 != v6)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v38 + 1) + 8 * i);
              if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v9 = v8;
                v10 = [v9 objectForKey:@"htype"];
                if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v11 = [v9 objectForKey:@"hash"];
                  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v12 = v10;
                    sub_1000060C4(v42, [v10 UTF8String]);
                    v13 = v11;
                    sub_1000060C4(__p, [v11 UTF8String]);
                    if (SHIBYTE(v43) < 0)
                    {
                      sub_100004CEC(buf, v42[0], v42[1]);
                    }

                    else
                    {
                      *buf = *v42;
                      *&buf[16] = v43;
                    }

                    if (SHIBYTE(v37) < 0)
                    {
                      sub_100004CEC(&buf[24], __p[0], __p[1]);
                      if (SHIBYTE(v37) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    else
                    {
                      *&buf[24] = *__p;
                      v46 = v37;
                    }

                    if (SHIBYTE(v43) < 0)
                    {
                      operator delete(v42[0]);
                    }

                    if (!*sub_10004DC10(v33, &v44, buf))
                    {
                      sub_10004DAEC();
                    }

                    if (SHIBYTE(v46) < 0)
                    {
                      operator delete(*&buf[24]);
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  else
                  {

                    v16 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289539;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2081;
                      *&buf[20] = "weaHash";
                      *&buf[28] = 2113;
                      *&buf[30] = v34;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                    }
                  }
                }

                else
                {

                  v15 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289539;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2081;
                    *&buf[20] = "weaHashType";
                    *&buf[28] = 2113;
                    *&buf[30] = v34;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                  }
                }
              }

              else
              {
                v14 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289539;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 2081;
                  *&buf[20] = "cmam";
                  *&buf[28] = 2113;
                  *&buf[30] = v34;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                }
              }
            }

            v5 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v5);
        }

        v17 = [v34 objectForKey:@"sa"];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          v19 = [v17 intValue] != 0;
          v20 = 1;
        }

        else
        {

          v22 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "saPresent";
            *&buf[28] = 2113;
            v23 = v34;
            *&buf[30] = v34;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
            v20 = 0;
            v17 = 0;
            v19 = 0;
            v18 = 1;
LABEL_50:
            v32[106] = v19;
            v24 = [v23 objectForKey:@"igneous"];
            if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v32[105] = [v24 intValue] != 0;
              if (v20)
              {
                v25 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry,#warning,parseFailed,both SA and Igneous keyword exist}", buf, 0x12u);
                }

LABEL_68:
                goto LABEL_69;
              }
            }

            else
            {

              v26 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2081;
                *&buf[20] = "igneousPresent";
                *&buf[28] = 2113;
                *&buf[30] = v34;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
              }

              v32[105] = 0;
              if (v18)
              {
                v27 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry,#warning,parseFailed,none of SA and Igneous keyword exist}", buf, 0x12u);
                }

                goto LABEL_68;
              }

              v24 = 0;
            }

            v28 = [v34 objectForKey:@"weaHandling"];
            if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v29 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2081;
                *&buf[20] = "weaHandling";
                *&buf[28] = 2113;
                *&buf[30] = v34;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
              }

              v28 = @"None";
            }

            v30 = v28;
            sub_10001D128(v3, [(__CFString *)v28 UTF8String]);
            v32[104] = 1;

            goto LABEL_68;
          }

          v20 = 0;
          v17 = 0;
          v19 = 0;
          v18 = 1;
        }

        v23 = v34;
        goto LABEL_50;
      }
    }

    v21 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = "weaHashList";
      *&buf[28] = 2113;
      *&buf[30] = v34;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

LABEL_69:

  return v32;
}

void sub_10005DCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_10004DC98(a12, *(a11 + 144));
  if (*(a11 + 135) < 0)
  {
    operator delete(*a10);
  }

  sub_10005D22C(a11);

  _Unwind_Resume(a1);
}

void sub_10005DE64(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 104);
    *buf = 68290307;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2049;
    v21 = v3;
    v22 = 2049;
    v23 = v5;
    v24 = 2049;
    v25 = v4;
    v26 = 2081;
    v27 = v6;
    v28 = 1025;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry, serverTime:%{private}0.1f, effective:%{private}0.1f, expires:%{private}0.1f, uid:%{private, location:escape_only}s, fIsValid:%{private}hhd}", buf, 0x40u);
  }

  v8 = *(a1 + 136);
  v9 = (a1 + 144);
  if (v8 != (a1 + 144))
  {
    v10 = SALogObjectGeneral;
    do
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = v8 + 4;
        if (*(v8 + 55) < 0)
        {
          v11 = *v11;
        }

        v12 = v8 + 7;
        if (*(v8 + 79) < 0)
        {
          v12 = *v12;
        }

        *buf = 68289539;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2081;
        v21 = v11;
        v22 = 2081;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#capManifestEntry,weaList, weaHashType:%{private, location:escape_only}s, weaHash:%{private, location:escape_only}s}", buf, 0x26u);
        v10 = SALogObjectGeneral;
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }
}

void sub_10005E074(uint64_t a1)
{
  sub_10005E134(a1);

  operator delete();
}

void sub_10005E0B0(uint64_t a1)
{
  sub_10005E194(a1);

  operator delete();
}

uint64_t sub_10005E0F0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10005E134(uint64_t a1)
{
  *a1 = off_10013C180;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  return sub_10005D22C(a1);
}

uint64_t sub_10005E194(uint64_t a1)
{
  *a1 = off_10013C1A8;
  sub_10004DC98(a1 + 136, *(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return sub_10005D22C(a1);
}

id **sub_10005E200(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;

    operator delete();
  }

  return result;
}

uint64_t sub_10005E26C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,getIsRichAlertsEnabled is true}", buf, 0x12u);
  }

  memset(buf, 0, sizeof(buf));
  __asm { FMOV            V1.2D, #-1.0 }

  v37 = 0u;
  v38 = _Q1;
  v39 = _Q1;
  v40 = 0xBFF0000000000000;
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  memset(v43, 0, sizeof(v43));
  v44 = 1065353216;
  v7 = sub_10008E020();
  sub_10008F5B0(v7, buf);
  v8 = *(a1 + 312);
  v9 = sub_10005FF30(*&v43[0], *(&v43[0] + 1), *(a1 + 312));
  if (!v9)
  {
    v22 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 68289283;
      *&v25[4] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1025;
      LODWORD(v29) = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,source Not found, senderId:%{private}d}", v25, 0x18u);
    }

    goto LABEL_21;
  }

  v10 = v9[12];
  v11 = v9[13];
  if (v10 == v11)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v12 = SALogObjectGeneral;
  while (1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      v15 = *v10;
      v16 = *(v10 + 1);
      *v25 = 68290051;
      *&v25[4] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2049;
      v29 = v13;
      v30 = 2049;
      v31 = v14;
      v32 = 2049;
      v33 = v15;
      v34 = 2049;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,mmiBand, minMagnitude:%{private}.1f, maxMagnitude:%{private}.1f, minIntensity:%{private}.1f, maxIntensity:%{private}.1f}", v25, 0x3Au);
      v12 = SALogObjectGeneral;
    }

    v17 = *(a1 + 264);
    if (v17 >= *v10 && v17 < v10[1])
    {
      v19 = *(a1 + 256);
      if (v19 >= v10[2] && v19 < v10[3])
      {
        break;
      }
    }

    v10 += 8;
    if (v10 == v11)
    {
      v21 = 0;
      goto LABEL_22;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 68289026;
    *&v25[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,found}", v25, 0x12u);
  }

  v21 = 1;
LABEL_22:
  v23 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 68289283;
    *&v25[4] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    LODWORD(v29) = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity, result:%{private}hhd}", v25, 0x18u);
  }

  sub_10002D804(v43);
  sub_10002DA28(v41);
  *v25 = &buf[24];
  sub_100005208(v25);
  *v25 = buf;
  sub_100005208(v25);
  return v21;
}

void sub_10005E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002BE00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E5FC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 68289026;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate}", buf, 0x12u);
    v2 = SALogObjectGeneral;
  }

  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = *(a1 + 152);
    if (*(a1 + 175) >= 0)
    {
      v4 = a1 + 152;
    }

    v5 = *(a1 + 352);
    v6 = *(a1 + 384);
    v7 = *(a1 + 184);
    v8 = *(a1 + 192);
    v9 = *(a1 + 200);
    v10 = *(a1 + 208);
    v11 = *(a1 + 216);
    v12 = *(a1 + 320);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "info";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v4;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v5;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v6;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v7;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v8;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v9;
    HIWORD(v235[3]) = 2049;
    v235[4] = v10;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v11;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:validating alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  if (*(a1 + 180) != 4)
  {
    if (*(a1 + 312) >> 10 < 0x3Fu || (*(SAPlatformInfo::instance(v3) + 9) & 1) != 0)
    {
      memset(buf, 0, sizeof(buf));
      __asm { FMOV            V1.2D, #-1.0 }

      v234[0] = _Q1;
      v199 = _Q1;
      v234[1] = _Q1;
      v235[0] = 0xBFF0000000000000;
      memset(&v235[1], 0, 32);
      LODWORD(v236[0]) = 1065353216;
      *&v236[1] = 0u;
      v237 = 0u;
      v238 = 1065353216;
      v31 = sub_10008E020();
      sub_10008F5B0(v31, buf);
      v32 = *(a1 + 312);
      v33 = sub_10005FF30(v236[1], v236[2], *(a1 + 312));
      if (!v33)
      {
        v34 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 152);
          if (*(a1 + 175) >= 0)
          {
            v35 = a1 + 152;
          }

          v36 = *(a1 + 352);
          v37 = *(a1 + 384);
          v38 = *(a1 + 184);
          v39 = *(a1 + 192);
          v40 = *(a1 + 200);
          v41 = *(a1 + 208);
          v42 = *(a1 + 216);
          v43 = *(a1 + 320);
          *v202 = 68292611;
          *&v202[4] = 0;
          v203 = 2082;
          v204 = "";
          v205 = 2081;
          v206 = "warning";
          v207 = 2081;
          v208 = "igAlertFlow";
          v209 = 2081;
          v210 = "igv";
          v211 = 2081;
          v212 = "validateSenderId";
          v213 = 2081;
          v214 = v35;
          v215 = 1025;
          v216 = v36;
          v217 = 1025;
          v218 = v37;
          v219 = 2049;
          v220 = v38;
          v221 = 2049;
          v222 = v39;
          v223 = 2049;
          v224 = v40;
          v225 = 2049;
          v226 = v41;
          v227 = 2049;
          v228 = v42;
          v229 = 2049;
          v230 = v43;
          v231 = 1025;
          v232 = v32;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:senderId not found in sourceConfig, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, senderId:%{private}d}", v202, 0x92u);
        }
      }

      sub_10002D804(&v236[1]);
      sub_10002DA28(&v235[1]);
      *v202 = &buf[3];
      sub_100005208(v202);
      *v202 = buf;
      sub_100005208(v202);
      if (v33)
      {
        if (*(a1 + 184) < 2.22044605e-16 || (v44 = vdupq_n_s64(0x3CB0000000000000uLL), (vaddvq_s32(vandq_s8(vuzp1q_s32(vcgtq_f64(v44, *(a1 + 192)), vcgtq_f64(v44, *(a1 + 208))), xmmword_1000E20A0)) & 0xF) != 0))
        {
          v55 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,time invalid}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v92 = *(a1 + 152);
          v91 = a1 + 152;
          v90 = v92;
          if (*(v91 + 23) >= 0)
          {
            v90 = v91;
          }

          v93 = *(v91 + 200);
          v94 = *(v91 + 232);
          v95 = *(v91 + 32);
          v96 = *(v91 + 40);
          v97 = *(v91 + 48);
          v98 = *(v91 + 56);
          v99 = *(v91 + 64);
          v100 = *(v91 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v90;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v93;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v94;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v95;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v96;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v97;
          HIWORD(v235[3]) = 2049;
          v235[4] = v98;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v99;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v100;
          v68 = "{msg%{public}.0s:time invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        v45 = *(a1 + 240);
        v46 = *(a1 + 248);
        v47 = v45 != 0.0;
        if (v46 != 0.0)
        {
          v47 = 1;
        }

        if (v46 > 180.0 || v46 < -180.0 || v45 > 90.0 || v45 < -90.0 || !v47)
        {
          v55 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,location invalid}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v103 = *(a1 + 152);
          v102 = a1 + 152;
          v101 = v103;
          if (*(v102 + 23) >= 0)
          {
            v101 = v102;
          }

          v104 = *(v102 + 200);
          v105 = *(v102 + 232);
          v106 = *(v102 + 32);
          v107 = *(v102 + 40);
          v108 = *(v102 + 48);
          v109 = *(v102 + 56);
          v110 = *(v102 + 64);
          v111 = *(v102 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v101;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v104;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v105;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v106;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v107;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v108;
          HIWORD(v235[3]) = 2049;
          v235[4] = v109;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v110;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v111;
          v68 = "{msg%{public}.0s:location invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        memset(buf, 0, sizeof(buf));
        v234[0] = v199;
        v234[1] = v199;
        v235[0] = 0xBFF0000000000000;
        memset(&v235[1], 0, 32);
        LODWORD(v236[0]) = 1065353216;
        *&v236[1] = 0u;
        v237 = 0u;
        v238 = 1065353216;
        v48 = sub_10008E020();
        sub_10008F5B0(v48, buf);
        Current = CFAbsoluteTimeGetCurrent();
        v50 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 192);
          *v202 = 68289794;
          *&v202[4] = 0;
          v203 = 2082;
          v204 = "";
          v205 = 2050;
          v206 = *&Current;
          v207 = 2050;
          v208 = v51;
          v209 = 2050;
          v210 = *(&v234[1] + 1);
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,isStaleAlert, nowSeconds:%{public}0.3f, egressTime:%{public}0.3f, ignoreAlertDuration:%{public}0.3f}", v202, 0x30u);
        }

        v52 = vabdd_f64(Current, *(a1 + 192));
        v53 = *(&v234[1] + 1);
        if (v52 > *(&v234[1] + 1))
        {
          v54 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v202 = 68289026;
            *&v202[4] = 0;
            v203 = 2082;
            v204 = "";
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,isStaleAlert,stale alert received}", v202, 0x12u);
          }
        }

        sub_10002D804(&v236[1]);
        sub_10002DA28(&v235[1]);
        *v202 = &buf[3];
        sub_100005208(v202);
        *v202 = buf;
        sub_100005208(v202);
        v55 = SALogObjectGeneral;
        v56 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
        if (v52 > v53)
        {
          if (v56)
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,stale alert}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v59 = *(a1 + 152);
          v58 = a1 + 152;
          v57 = v59;
          if (*(v58 + 23) >= 0)
          {
            v57 = v58;
          }

          v60 = *(v58 + 200);
          v61 = *(v58 + 232);
          v62 = *(v58 + 32);
          v63 = *(v58 + 40);
          v64 = *(v58 + 48);
          v65 = *(v58 + 56);
          v66 = *(v58 + 64);
          v67 = *(v58 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v57;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v60;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v61;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v62;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v63;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v64;
          HIWORD(v235[3]) = 2049;
          v235[4] = v65;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v66;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v67;
          v68 = "{msg%{public}.0s:stale alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        if (v56)
        {
          buf[0] = 68289026;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateAlertSignature}", buf, 0x12u);
        }

        if (*(a1 + 384) == 1)
        {
          *(a1 + 176) = 1;
          v113 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289283;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 1025;
            HIDWORD(buf[2]) = 1;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igbv,validateAlertSignature,APNS, isAuthenticated:%{private}hhd}", buf, 0x18u);
          }

LABEL_78:
          if (*(a1 + 328) != 1 || (v116 = *(a1 + 336)) != 0 && (*(v116 + 8) & 1) != 0)
          {
            v117 = sub_100002DB0();
            if (*(v117 + 147) == 1 && *(v117 + 146) == 1)
            {
              v118 = sub_100002DB0();
              if (*(v118 + 107) == 1 && (*(v118 + 106) & 1) != 0)
              {
                v119 = sub_100002DB0();
                v120 = *v119;
                v121 = *(v119 + 1);
                v122 = *(v119 + 3);
                v123 = [NSNumber numberWithDouble:*(a1 + 248)];
                v200[0] = v123;
                v124 = [NSNumber numberWithDouble:*(a1 + 240)];
                v200[1] = v124;
                v125 = [NSNumber numberWithDouble:*(a1 + 288)];
                v200[2] = v125;
                v126 = [NSArray arrayWithObjects:v200 count:3];
                v201 = v126;
                v127 = [NSArray arrayWithObjects:&v201 count:1];

                if (SAGeometry::isLocationInCircle(v127, v120, v121, v122, v128))
                {
                  v129 = sub_10005E26C(a1);
                  v130 = SALogObjectGeneral;
                  v131 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
                  if (v129)
                  {
                    if (v131)
                    {
                      v134 = *(a1 + 152);
                      v133 = a1 + 152;
                      v132 = v134;
                      if (*(v133 + 23) >= 0)
                      {
                        v132 = v133;
                      }

                      v135 = *(v133 + 200);
                      v136 = *(v133 + 232);
                      v137 = *(v133 + 32);
                      v138 = *(v133 + 40);
                      v139 = *(v133 + 48);
                      v140 = *(v133 + 56);
                      v141 = *(v133 + 64);
                      v142 = *(v133 + 168);
                      buf[0] = 68292355;
                      LOWORD(buf[1]) = 2082;
                      *(&buf[1] + 2) = "";
                      WORD1(buf[2]) = 2081;
                      *(&buf[2] + 4) = "info";
                      WORD2(buf[3]) = 2081;
                      *(&buf[3] + 6) = "igAlertFlow";
                      HIWORD(buf[4]) = 2081;
                      buf[5] = "igv";
                      LOWORD(v234[0]) = 2081;
                      *(v234 + 2) = "validate";
                      WORD5(v234[0]) = 2081;
                      *(v234 + 12) = v132;
                      WORD2(v234[1]) = 1025;
                      *(&v234[1] + 6) = v135;
                      WORD5(v234[1]) = 1025;
                      HIDWORD(v234[1]) = v136;
                      LOWORD(v235[0]) = 2049;
                      *(v235 + 2) = v137;
                      WORD1(v235[1]) = 2049;
                      *(&v235[1] + 4) = v138;
                      WORD2(v235[2]) = 2049;
                      *(&v235[2] + 6) = v139;
                      HIWORD(v235[3]) = 2049;
                      v235[4] = v140;
                      LOWORD(v236[0]) = 2049;
                      *(v236 + 2) = v141;
                      WORD1(v236[1]) = 2049;
                      *(&v236[1] + 4) = v142;
                      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:alert validated, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                    }

                    v25 = 1;
                    goto LABEL_124;
                  }

                  if (v131)
                  {
                    buf[0] = 68289026;
                    LOWORD(buf[1]) = 2082;
                    *(&buf[1] + 2) = "";
                    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,alert received below threshold level}", buf, 0x12u);
                    v130 = SALogObjectGeneral;
                  }

                  if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_123:
                    v25 = 0;
LABEL_124:

                    return v25;
                  }

                  v190 = *(a1 + 152);
                  v189 = a1 + 152;
                  v188 = v190;
                  if (*(v189 + 23) >= 0)
                  {
                    v188 = v189;
                  }

                  v191 = *(v189 + 200);
                  v192 = *(v189 + 232);
                  v193 = *(v189 + 32);
                  v194 = *(v189 + 40);
                  v195 = *(v189 + 48);
                  v196 = *(v189 + 56);
                  v197 = *(v189 + 64);
                  v198 = *(v189 + 168);
                  buf[0] = 68292355;
                  LOWORD(buf[1]) = 2082;
                  *(&buf[1] + 2) = "";
                  WORD1(buf[2]) = 2081;
                  *(&buf[2] + 4) = "warning";
                  WORD2(buf[3]) = 2081;
                  *(&buf[3] + 6) = "igAlertFlow";
                  HIWORD(buf[4]) = 2081;
                  buf[5] = "igv";
                  LOWORD(v234[0]) = 2081;
                  *(v234 + 2) = "validate";
                  WORD5(v234[0]) = 2081;
                  *(v234 + 12) = v188;
                  WORD2(v234[1]) = 1025;
                  *(&v234[1] + 6) = v191;
                  WORD5(v234[1]) = 1025;
                  HIDWORD(v234[1]) = v192;
                  LOWORD(v235[0]) = 2049;
                  *(v235 + 2) = v193;
                  WORD1(v235[1]) = 2049;
                  *(&v235[1] + 4) = v194;
                  WORD2(v235[2]) = 2049;
                  *(&v235[2] + 6) = v195;
                  HIWORD(v235[3]) = 2049;
                  v235[4] = v196;
                  LOWORD(v236[0]) = 2049;
                  *(v236 + 2) = v197;
                  WORD1(v236[1]) = 2049;
                  *(&v236[1] + 4) = v198;
                  v187 = "{msg%{public}.0s:alert received below threshold level, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                }

                else
                {
                  v130 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0] = 68289026;
                    LOWORD(buf[1]) = 2082;
                    *(&buf[1] + 2) = "";
                    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,device not in polygon}", buf, 0x12u);
                    v130 = SALogObjectGeneral;
                  }

                  if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_123;
                  }

                  v178 = *(a1 + 152);
                  v177 = a1 + 152;
                  v176 = v178;
                  if (*(v177 + 23) >= 0)
                  {
                    v176 = v177;
                  }

                  v179 = *(v177 + 200);
                  v180 = *(v177 + 232);
                  v181 = *(v177 + 32);
                  v182 = *(v177 + 40);
                  v183 = *(v177 + 48);
                  v184 = *(v177 + 56);
                  v185 = *(v177 + 64);
                  v186 = *(v177 + 168);
                  buf[0] = 68292355;
                  LOWORD(buf[1]) = 2082;
                  *(&buf[1] + 2) = "";
                  WORD1(buf[2]) = 2081;
                  *(&buf[2] + 4) = "warning";
                  WORD2(buf[3]) = 2081;
                  *(&buf[3] + 6) = "igAlertFlow";
                  HIWORD(buf[4]) = 2081;
                  buf[5] = "igv";
                  LOWORD(v234[0]) = 2081;
                  *(v234 + 2) = "validate";
                  WORD5(v234[0]) = 2081;
                  *(v234 + 12) = v176;
                  WORD2(v234[1]) = 1025;
                  *(&v234[1] + 6) = v179;
                  WORD5(v234[1]) = 1025;
                  HIDWORD(v234[1]) = v180;
                  LOWORD(v235[0]) = 2049;
                  *(v235 + 2) = v181;
                  WORD1(v235[1]) = 2049;
                  *(&v235[1] + 4) = v182;
                  WORD2(v235[2]) = 2049;
                  *(&v235[2] + 6) = v183;
                  HIWORD(v235[3]) = 2049;
                  v235[4] = v184;
                  LOWORD(v236[0]) = 2049;
                  *(v236 + 2) = v185;
                  WORD1(v236[1]) = 2049;
                  *(&v236[1] + 4) = v186;
                  v187 = "{msg%{public}.0s:device not in polygon, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                }

                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, v187, buf, 0x8Cu);
                goto LABEL_123;
              }
            }

            v55 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 68289026;
              LOWORD(buf[1]) = 2082;
              *(&buf[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,invalid location}", buf, 0x12u);
              v55 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            v145 = *(a1 + 152);
            v144 = a1 + 152;
            v143 = v145;
            if (*(v144 + 23) >= 0)
            {
              v143 = v144;
            }

            v146 = *(v144 + 200);
            v147 = *(v144 + 232);
            v148 = *(v144 + 32);
            v149 = *(v144 + 40);
            v150 = *(v144 + 48);
            v151 = *(v144 + 56);
            v152 = *(v144 + 64);
            v153 = *(v144 + 168);
            buf[0] = 68292355;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 2081;
            *(&buf[2] + 4) = "warning";
            WORD2(buf[3]) = 2081;
            *(&buf[3] + 6) = "igAlertFlow";
            HIWORD(buf[4]) = 2081;
            buf[5] = "igv";
            LOWORD(v234[0]) = 2081;
            *(v234 + 2) = "validate";
            WORD5(v234[0]) = 2081;
            *(v234 + 12) = v143;
            WORD2(v234[1]) = 1025;
            *(&v234[1] + 6) = v146;
            WORD5(v234[1]) = 1025;
            HIDWORD(v234[1]) = v147;
            LOWORD(v235[0]) = 2049;
            *(v235 + 2) = v148;
            WORD1(v235[1]) = 2049;
            *(&v235[1] + 4) = v149;
            WORD2(v235[2]) = 2049;
            *(&v235[2] + 6) = v150;
            HIWORD(v235[3]) = 2049;
            v235[4] = v151;
            LOWORD(v236[0]) = 2049;
            *(v236 + 2) = v152;
            WORD1(v236[1]) = 2049;
            *(&v236[1] + 4) = v153;
            v68 = "{msg%{public}.0s:invalid location, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          }

          else
          {
            v55 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 68289026;
              LOWORD(buf[1]) = 2082;
              *(&buf[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,invalid geometry}", buf, 0x12u);
              v55 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            v156 = *(a1 + 152);
            v155 = a1 + 152;
            v154 = v156;
            if (*(v155 + 23) >= 0)
            {
              v154 = v155;
            }

            v157 = *(v155 + 200);
            v158 = *(v155 + 232);
            v159 = *(v155 + 32);
            v160 = *(v155 + 40);
            v161 = *(v155 + 48);
            v162 = *(v155 + 56);
            v163 = *(v155 + 64);
            v164 = *(v155 + 168);
            buf[0] = 68292355;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 2081;
            *(&buf[2] + 4) = "warning";
            WORD2(buf[3]) = 2081;
            *(&buf[3] + 6) = "igAlertFlow";
            HIWORD(buf[4]) = 2081;
            buf[5] = "igv";
            LOWORD(v234[0]) = 2081;
            *(v234 + 2) = "validate";
            WORD5(v234[0]) = 2081;
            *(v234 + 12) = v154;
            WORD2(v234[1]) = 1025;
            *(&v234[1] + 6) = v157;
            WORD5(v234[1]) = 1025;
            HIDWORD(v234[1]) = v158;
            LOWORD(v235[0]) = 2049;
            *(v235 + 2) = v159;
            WORD1(v235[1]) = 2049;
            *(&v235[1] + 4) = v160;
            WORD2(v235[2]) = 2049;
            *(&v235[2] + 6) = v161;
            HIWORD(v235[3]) = 2049;
            v235[4] = v162;
            LOWORD(v236[0]) = 2049;
            *(v236 + 2) = v163;
            WORD1(v236[1]) = 2049;
            *(&v236[1] + 4) = v164;
            v68 = "{msg%{public}.0s:invalid geometry, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          }

LABEL_66:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v68, buf, 0x8Cu);
          return 0;
        }

        v114 = sub_10001FA68();
        v115 = sub_100021484(v114, a1 + 104, (a1 + 128));
        *(a1 + 176) = v115;
        v55 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 68289283;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 1025;
          HIDWORD(buf[2]) = v115;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igbv,validateAlertSignature, isAuthenticated:%{private}hhd}", buf, 0x18u);
          if (*(a1 + 176))
          {
            goto LABEL_78;
          }

          v55 = SALogObjectGeneral;
        }

        else if (v115)
        {
          goto LABEL_78;
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 68289026;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,not authenticated}", buf, 0x12u);
          v55 = SALogObjectGeneral;
        }

        if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v167 = *(a1 + 152);
        v166 = a1 + 152;
        v165 = v167;
        if (*(v166 + 23) >= 0)
        {
          v165 = v166;
        }

        v168 = *(v166 + 200);
        v169 = *(v166 + 232);
        v170 = *(v166 + 32);
        v171 = *(v166 + 40);
        v172 = *(v166 + 48);
        v173 = *(v166 + 56);
        v174 = *(v166 + 64);
        v175 = *(v166 + 168);
        buf[0] = 68292355;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        WORD1(buf[2]) = 2081;
        *(&buf[2] + 4) = "warning";
        WORD2(buf[3]) = 2081;
        *(&buf[3] + 6) = "igAlertFlow";
        HIWORD(buf[4]) = 2081;
        buf[5] = "igv";
        LOWORD(v234[0]) = 2081;
        *(v234 + 2) = "validate";
        WORD5(v234[0]) = 2081;
        *(v234 + 12) = v165;
        WORD2(v234[1]) = 1025;
        *(&v234[1] + 6) = v168;
        WORD5(v234[1]) = 1025;
        HIDWORD(v234[1]) = v169;
        LOWORD(v235[0]) = 2049;
        *(v235 + 2) = v170;
        WORD1(v235[1]) = 2049;
        *(&v235[1] + 4) = v171;
        WORD2(v235[2]) = 2049;
        *(&v235[2] + 6) = v172;
        HIWORD(v235[3]) = 2049;
        v235[4] = v173;
        LOWORD(v236[0]) = 2049;
        *(v236 + 2) = v174;
        WORD1(v236[1]) = 2049;
        *(&v236[1] + 4) = v175;
        v68 = "{msg%{public}.0s:not authenticated, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        goto LABEL_66;
      }
    }

    else
    {
      v69 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 68289026;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateSenderId,not internal install}", buf, 0x12u);
        v69 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 152);
        if (*(a1 + 175) >= 0)
        {
          v70 = a1 + 152;
        }

        v71 = *(a1 + 352);
        v72 = *(a1 + 384);
        v73 = *(a1 + 184);
        v74 = *(a1 + 192);
        v75 = *(a1 + 200);
        v76 = *(a1 + 208);
        v77 = *(a1 + 216);
        v78 = *(a1 + 320);
        buf[0] = 68292355;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        WORD1(buf[2]) = 2081;
        *(&buf[2] + 4) = "warning";
        WORD2(buf[3]) = 2081;
        *(&buf[3] + 6) = "igAlertFlow";
        HIWORD(buf[4]) = 2081;
        buf[5] = "igv";
        LOWORD(v234[0]) = 2081;
        *(v234 + 2) = "validateSenderId";
        WORD5(v234[0]) = 2081;
        *(v234 + 12) = v70;
        WORD2(v234[1]) = 1025;
        *(&v234[1] + 6) = v71;
        WORD5(v234[1]) = 1025;
        HIDWORD(v234[1]) = v72;
        LOWORD(v235[0]) = 2049;
        *(v235 + 2) = v73;
        WORD1(v235[1]) = 2049;
        *(&v235[1] + 4) = v74;
        WORD2(v235[2]) = 2049;
        *(&v235[2] + 6) = v75;
        HIWORD(v235[3]) = 2049;
        v235[4] = v76;
        LOWORD(v236[0]) = 2049;
        *(v236 + 2) = v77;
        WORD1(v236[1]) = 2049;
        *(&v236[1] + 4) = v78;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not internal device, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
      }
    }

    v55 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v81 = *(a1 + 152);
    v80 = a1 + 152;
    v79 = v81;
    if (*(v80 + 23) >= 0)
    {
      v79 = v80;
    }

    v82 = *(v80 + 200);
    v83 = *(v80 + 232);
    v84 = *(v80 + 32);
    v85 = *(v80 + 40);
    v86 = *(v80 + 48);
    v87 = *(v80 + 56);
    v88 = *(v80 + 64);
    v89 = *(v80 + 168);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "warning";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v79;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v82;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v83;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v84;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v85;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v86;
    HIWORD(v235[3]) = 2049;
    v235[4] = v87;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v88;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v89;
    v68 = "{msg%{public}.0s:sender id invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_66;
  }

  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 68289026;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,followup alert valid}", buf, 0x12u);
    v13 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 152);
    v15 = a1 + 152;
    v14 = v16;
    if (*(v15 + 23) >= 0)
    {
      v14 = v15;
    }

    v17 = *(v15 + 200);
    v18 = *(v15 + 232);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);
    v21 = *(v15 + 48);
    v22 = *(v15 + 56);
    v23 = *(v15 + 64);
    v24 = *(v15 + 168);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "info";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v14;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v17;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v18;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v19;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v20;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v21;
    HIWORD(v235[3]) = 2049;
    v235[4] = v22;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v23;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:followup alert valid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  return 1;
}

uint64_t **sub_10005FF30(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 8) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10005FFE0()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igbv,validate,valid}", v2, 0x12u);
  }

  return 1;
}

uint64_t sub_100060098(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  v3 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validate}", buf, 0x12u);
  }

  if ([*SAPlatformInfo::instance(v3) isEqualToString:@"Watch"])
  {
    v4 = sub_100002DB0();
    if (*(v4 + 121) == 1 && *(v4 + 120) == 1)
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v6 = "{msg%{public}.0s:#igav,validate,device is in companion mode reject alert}";
LABEL_58:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
        return 0;
      }

      return 0;
    }
  }

  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validateProductionId}", buf, 0x12u);
  }

  if (*(sub_100042820() + 411) == 1)
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#igav,validateProductionId,bypass production validation}", buf, 0x12u);
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    __asm { FMOV            V1.2D, #-1.0 }

    v46 = 0u;
    v47 = _Q1;
    v48 = _Q1;
    v49 = 0xBFF0000000000000;
    memset(v50, 0, sizeof(v50));
    v51 = 1065353216;
    memset(v52, 0, sizeof(v52));
    v53 = 1065353216;
    v13 = sub_10008E020();
    sub_10008F5B0(v13, buf);
    v14 = *buf;
    v15 = *&buf[8];
    v16 = SALogObjectGeneral;
    if (*buf == *&buf[8])
    {
LABEL_41:
      v28 = 0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 68289026;
        *&v38[4] = 0;
        v39 = 2082;
        v40 = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validateProductionId,invalid}", v38, 0x12u);
        v28 = 0;
      }
    }

    else
    {
      while (1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = v14;
          if (*(v14 + 23) < 0)
          {
            v17 = *v14;
          }

          if (*(a1 + 383) >= 0)
          {
            v18 = a1 + 360;
          }

          else
          {
            v18 = *(a1 + 360);
          }

          *v38 = 68289539;
          *&v38[4] = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2081;
          v42 = v17;
          v43 = 2081;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#igav,validateProductionId, pKey:%{private, location:escape_only}s, AlertKey:%{private, location:escape_only}s}", v38, 0x26u);
          v16 = SALogObjectGeneral;
        }

        v19 = *(v14 + 23);
        v20 = *(a1 + 383);
        v21 = v20 >= 0 ? *(a1 + 383) : *(a1 + 368);
        v22 = v20 >= 0 ? (a1 + 360) : *(a1 + 360);
        v23 = v19 >= 0 ? *(v14 + 23) : v14[1];
        v24 = v19 >= 0 ? v14 : *v14;
        v25 = v23 >= v21 ? v21 : v23;
        v26 = memcmp(v22, v24, v25);
        if (v23 == v21 && v26 == 0)
        {
          break;
        }

        v14 += 3;
        if (v14 == v15)
        {
          goto LABEL_41;
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 68289026;
        *&v38[4] = 0;
        v39 = 2082;
        v40 = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validateProductionId,valid}", v38, 0x12u);
      }

      v28 = 1;
    }

    sub_10002D804(v52);
    sub_10002DA28(v50);
    *v38 = &buf[24];
    sub_100005208(v38);
    *v38 = buf;
    sub_100005208(v38);
    if ((v28 & 1) == 0)
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v6 = "{msg%{public}.0s:#igav,validate,invalid production id}";
        goto LABEL_58;
      }

      return 0;
    }
  }

  v29 = *(a1 + 180);
  v30 = SALogObjectGeneral;
  v31 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v29 == 4)
  {
    if (v31)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validateFollowUpAlert}", buf, 0x12u);
    }

    v32 = *(a1 + 79);
    if ((v32 & 0x80u) != 0)
    {
      v32 = *(a1 + 64);
    }

    if (v32)
    {
      v30 = SALogObjectGeneral;
    }

    else
    {
      v35 = *(a1 + 103);
      if ((v35 & 0x80u) != 0)
      {
        v35 = *(a1 + 88);
      }

      v30 = SALogObjectGeneral;
      if (!v35)
      {
        v34 = 0;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validateFollowUpAlert,text empty}", buf, 0x12u);
          v34 = 0;
        }

        goto LABEL_67;
      }
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v33 = "{msg%{public}.0s:#igav,validateFollowUpAlert,valid}";
      goto LABEL_65;
    }
  }

  else if (v31)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v33 = "{msg%{public}.0s:#igav,validate,other than followUp}";
LABEL_65:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0x12u);
  }

  v34 = 1;
LABEL_67:
  v36 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v34;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igav,validate, validated:%{private}hhd}", buf, 0x18u);
  }

  return v34;
}

void sub_100060788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002BE00(va);
  _Unwind_Resume(a1);
}

void sub_1000607A4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,expirationRequested,stopping}", v3, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 40) = 1;
}

void sub_10006086C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 56);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3);

  objc_autoreleasePoolPop(v2);
}

void sub_1000608D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    *v17 = 0;
    *&v18 = v17;
    *(&v18 + 1) = 0x3020000000;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000607A4;
    v13[3] = &unk_10013C1F8;
    v13[4] = v17;
    [v3 setExpirationHandler:v13];
    if (*(v18 + 40) == 1)
    {
      v12 = 0;
      v5 = [v4 setTaskExpiredWithRetryAfter:&v12 error:0.0];
      v6 = v12;
      if ((v5 & 1) == 0)
      {
        v7 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          *v15 = 2082;
          *&v15[2] = "";
          *&v15[10] = 2113;
          *&v15[12] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,expireManagePreferencesTaskFailed, error:%{private, location:escape_only}@}", buf, 0x1Cu);
        }

        [v4 setTaskCompleted];
      }
    }

    else
    {
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v2;
        if (*(v2 + 23) < 0)
        {
          v10 = *v2;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *v15 = 2082;
        *&v15[2] = "";
        *&v15[10] = 2081;
        *&v15[12] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,runningBackgroundTask, name:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v11 = v2[3];
      *buf = _NSConcreteStackBlock;
      *v15 = 3221225472;
      *&v15[8] = sub_10006086C;
      *&v15[16] = &unk_1001390D0;
      v16 = v2;
      dispatch_async(v11, buf);
      [v4 setTaskCompleted];
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 68289026;
      *&v17[4] = 0;
      LOWORD(v18) = 2082;
      *(&v18 + 2) = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,invalidTask}", v17, 0x12u);
    }
  }
}

void sub_100060BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060BEC(uint64_t *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (v2)
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = [NSString stringWithUTF8String:v3];
    v9 = 0;
    v5 = [v2 cancelTaskRequestWithIdentifier:v4 error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 68289283;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        v14 = 2081;
        v15 = a1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,Failed to cancel background task, name:%{private, location:escape_only}s}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 23) < 0)
      {
        a1 = *a1;
      }

      *buf = 68289283;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,bgTaskCancelFailed,noTaskScheduler, name:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v6 = 0;
  }
}

uint64_t sub_100060DE4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *v69 = 2082;
    *&v69[2] = "";
    *&v69[10] = 2081;
    *&v69[12] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,resume, name:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_17:
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v69 = 2082;
    *&v69[2] = "";
    v7 = "{msg%{public}.0s:#bg,isSettingsValid,identifierNotSet}";
    goto LABEL_25;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_17;
  }

LABEL_7:
  if (!*(a1 + 24))
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v69 = 2082;
    *&v69[2] = "";
    v7 = "{msg%{public}.0s:#bg,isSettingsValid,queueIsInvalid}";
    goto LABEL_25;
  }

  if (!*(a1 + 56))
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v69 = 2082;
    *&v69[2] = "";
    v7 = "{msg%{public}.0s:#bg,isSettingsValid,taskIsInvalid}";
    goto LABEL_25;
  }

  if ((*(a1 + 72) - 1) < 4)
  {
    v4 = sub_100042820();
    if (*(a1 + 72) != 3)
    {
      v5 = 300.0;
      if (*(v4 + 440))
      {
        v5 = 10.0;
      }

      if (*(a1 + 80) < v5)
      {
        v6 = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *v69 = 2082;
        *&v69[2] = "";
        v7 = "{msg%{public}.0s:#bg,isSettingsValid,durationIsInvalid}";
        goto LABEL_25;
      }
    }

    if (*(a1 + 92) != 1)
    {
      v12 = +[BGSystemTaskScheduler sharedScheduler];
      if (v12)
      {
        v13 = a1;
        if (*(a1 + 23) < 0)
        {
          v13 = *a1;
        }

        v14 = [NSString stringWithUTF8String:v13];
        v15 = *(a1 + 24);
        *buf = _NSConcreteStackBlock;
        *v69 = 3221225472;
        *&v69[8] = sub_1000608D8;
        *&v69[16] = &unk_10013C218;
        v70 = a1;
        *(a1 + 92) = [v12 registerForTaskWithIdentifier:v14 usingQueue:v15 launchHandler:buf];

        v16 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v17 = a1;
          if (*(a1 + 23) < 0)
          {
            v17 = *a1;
          }

          v18 = *(a1 + 92);
          v61 = 68289539;
          v62 = 2082;
          v63 = "";
          v64 = 2081;
          v65 = v17;
          v66 = 1025;
          v67 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,isRegistered, name:%{private, location:escape_only}s, status:%{private}hhd}", &v61, 0x22u);
        }

        v19 = *(a1 + 92);

        if (v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v31 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 23) < 0)
          {
            a1 = *a1;
          }

          v61 = 68289283;
          v62 = 2082;
          v63 = "";
          v64 = 2081;
          v65 = a1;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,bgTaskRegisterFailed,noTaskScheduler, name:%{private, location:escape_only}s}", &v61, 0x1Cu);
        }
      }

      v8 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v69 = 2082;
      *&v69[2] = "";
      v9 = "{msg%{public}.0s:#bg,#warning,cannotResume,registerTaskFailed}";
      goto LABEL_28;
    }

LABEL_40:
    v20 = +[BGSystemTaskScheduler sharedScheduler];
    if (v20)
    {
      v21 = a1;
      if (*(a1 + 23) < 0)
      {
        v21 = *a1;
      }

      v22 = [NSString stringWithUTF8String:v21];
      v23 = [v20 taskRequestForIdentifier:v22];

      if (v23)
      {
LABEL_54:

        v28 = *(a1 + 72);
        if (v28 != 4)
        {
LABEL_75:
          if ((v28 - 1) <= 2 && (*(a1 + 91) & 1) == 0 && v23)
          {
            v34 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v69 = 2082;
              *&v69[2] = "";
              v35 = "{msg%{public}.0s:#bg,singleShotTaskUnchanged,doNothing}";
              goto LABEL_80;
            }

            goto LABEL_106;
          }

LABEL_81:
          if (v23)
          {
            v38 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v39 = a1;
              if (*(a1 + 23) < 0)
              {
                v39 = *a1;
              }

              *buf = 68289283;
              *&buf[4] = 0;
              *v69 = 2082;
              *&v69[2] = "";
              *&v69[10] = 2081;
              *&v69[12] = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,cancellingPreviousTask, name:%{private, location:escape_only}s}", buf, 0x1Cu);
            }

            sub_100060BEC(a1);
            v28 = *(a1 + 72);
          }

          if (v28 == 4)
          {
            v40 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v41 = a1;
              if (*(a1 + 23) < 0)
              {
                v41 = *a1;
              }

              *buf = 68289283;
              *&buf[4] = 0;
              *v69 = 2082;
              *&v69[2] = "";
              *&v69[10] = 2081;
              *&v69[12] = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,submitPeriodicRequest, name:%{private, location:escape_only}s}", buf, 0x1Cu);
            }

            v42 = [BGRepeatingSystemTaskRequest alloc];
            v43 = a1;
            if (*(a1 + 23) < 0)
            {
              v43 = *a1;
            }

            v44 = [NSString stringWithUTF8String:v43];
            v45 = [v42 initWithIdentifier:v44];

            [v45 setPriority:*(a1 + 64)];
            [v45 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
            [v45 setRequiresNetworkConnectivity:*(a1 + 90)];
            [v45 setRequiresExternalPower:*(a1 + 88)];
            [v45 setInterval:*(a1 + 80)];
            [v45 setMinDurationBetweenInstances:*(a1 + 80) * 0.8];
            if (*(sub_100042820() + 440) == 1)
            {
              v46 = *(a1 + 96) + 1;
              *(a1 + 96) = v46;
              v10 = 1;
              sub_100061BAC(a1, v46, 1, *(a1 + 80));
LABEL_121:

              goto LABEL_122;
            }

            v53 = v45;
            v54 = +[BGSystemTaskScheduler sharedScheduler];
            v61 = 0;
            v10 = [v54 submitTaskRequest:v53 error:&v61];
            v55 = v61;

            if (v10)
            {
              v56 = "submitRequestSuccess";
            }

            else
            {
              v57 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                *v69 = 2082;
                *&v69[2] = "";
                *&v69[10] = 2113;
                *&v69[12] = v55;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,#warning,submitRequestFailed, error:%{private, location:escape_only}@}", buf, 0x1Cu);
              }

              v56 = "submitRequestFailed";
            }
          }

          else
          {
            if ((v28 - 1) > 2)
            {
              goto LABEL_106;
            }

            v47 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v48 = a1;
              if (*(a1 + 23) < 0)
              {
                v48 = *a1;
              }

              *buf = 68289283;
              *&buf[4] = 0;
              *v69 = 2082;
              *&v69[2] = "";
              *&v69[10] = 2081;
              *&v69[12] = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,submitSingleShotRequest, name:%{private, location:escape_only}s}", buf, 0x1Cu);
            }

            v49 = [BGNonRepeatingSystemTaskRequest alloc];
            v50 = a1;
            if (*(a1 + 23) < 0)
            {
              v50 = *a1;
            }

            v51 = [NSString stringWithUTF8String:v50];
            v45 = [v49 initWithIdentifier:v51];

            [v45 setPriority:*(a1 + 64)];
            [v45 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
            [v45 setRequiresNetworkConnectivity:*(a1 + 90)];
            [v45 setRequiresExternalPower:*(a1 + 88)];
            v52 = *(a1 + 72);
            if (v52 == 1)
            {
              [v45 setTrySchedulingBefore:*(a1 + 80)];
            }

            else if (v52 == 2)
            {
              [v45 setScheduleAfter:*(a1 + 80)];
            }

            if (*(sub_100042820() + 440) == 1)
            {
              v58 = *(a1 + 96) + 2;
              *(a1 + 96) = v58;
              sub_100061BAC(a1, v58, 0, *(a1 + 80));
              v10 = 1;
              goto LABEL_121;
            }

            v53 = v45;
            v59 = +[BGSystemTaskScheduler sharedScheduler];
            v61 = 0;
            v10 = [v59 submitTaskRequest:v53 error:&v61];
            v55 = v61;

            if (v10)
            {
              v56 = "submitRequestSuccess";
            }

            else
            {
              v60 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                *v69 = 2082;
                *&v69[2] = "";
                *&v69[10] = 2113;
                *&v69[12] = v55;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,#warning,submitRequestFailed, error:%{private, location:escape_only}@}", buf, 0x1Cu);
              }

              v56 = "submitRequestFailed";
            }
          }

          sub_100061D10(v53, v56);

          goto LABEL_121;
        }

        if ((*(a1 + 91) & 1) != 0 || !v23)
        {
          goto LABEL_81;
        }

        v29 = v23;
        sub_100061D10(v29, "pastRequest");
        v30 = [v29 priority] != *(a1 + 64) || *(a1 + 89) != objc_msgSend(v29, "requiresInexpensiveNetworkConnectivity") || *(a1 + 88) != objc_msgSend(v29, "requiresExternalPower");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v29;
          v33 = v32;
          if (v30)
          {

LABEL_74:
            v28 = *(a1 + 72);
            goto LABEL_75;
          }

          [v32 interval];
          v37 = v36 != *(a1 + 80);

          if (v37)
          {
            goto LABEL_74;
          }
        }

        else
        {

          if (v30)
          {
            goto LABEL_74;
          }
        }

        v34 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *v69 = 2082;
          *&v69[2] = "";
          v35 = "{msg%{public}.0s:#bg,periodicTaskUnchanged,doNothing}";
LABEL_80:
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
        }

LABEL_106:
        v10 = 0;
LABEL_122:

        return v10;
      }

      v24 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a1;
        if (*(a1 + 23) < 0)
        {
          v25 = *a1;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *v69 = 2082;
        *&v69[2] = "";
        *&v69[10] = 2081;
        *&v69[12] = v25;
        v26 = "{msg%{public}.0s:#bg,taskDoesNotExist, name:%{private, location:escape_only}s}";
LABEL_52:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x1Cu);
      }
    }

    else
    {
      v24 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1;
        if (*(a1 + 23) < 0)
        {
          v27 = *a1;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *v69 = 2082;
        *&v69[2] = "";
        *&v69[10] = 2081;
        *&v69[12] = v27;
        v26 = "{msg%{public}.0s:#bg,bgTaskGetRequestFailed,noTaskScheduler, name:%{private, location:escape_only}s}";
        goto LABEL_52;
      }
    }

    v23 = 0;
    goto LABEL_54;
  }

  v6 = SALogObjectGeneral;
  if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_26;
  }

  *buf = 68289026;
  *&buf[4] = 0;
  *v69 = 2082;
  *&v69[2] = "";
  v7 = "{msg%{public}.0s:#bg,isSettingsValid,scheduleIsInvalid}";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x12u);
LABEL_26:
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v69 = 2082;
    *&v69[2] = "";
    v9 = "{msg%{public}.0s:#bg,#warning,cannotResume,invalidSettings}";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
  }

  return 0;
}

void sub_100061BAC(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 96) == a2)
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      v20 = a3;
      v21 = 1025;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,dispatchTask,usingDispatchQueue, repeated:%{private}hhd, interval:%{private}d}", buf, 0x1Eu);
    }

    v9 = dispatch_time(0, 1000000000 * a4);
    v10 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062110;
    block[3] = &unk_10013C238;
    block[4] = a1;
    v14 = a3;
    v12 = a2;
    v13 = a4;
    dispatch_after(v9, v10, block);
  }
}

void sub_100061D10(void *a1, const char *a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "<empty note>";
        if (a2)
        {
          v6 = a2;
        }

        v29 = v6;
        v7 = [v4 identifier];
        v8 = [v7 UTF8String];
        v9 = [v4 priority];
        v10 = [v4 requiresInexpensiveNetworkConnectivity];
        v11 = [v4 requiresExternalPower];
        v12 = [v4 requiresNetworkConnectivity];
        [v4 scheduleAfter];
        v14 = v13;
        [v4 trySchedulingBefore];
        *buf = 68291075;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2081;
        v35 = v29;
        v36 = 2081;
        v37 = v8;
        v38 = 1025;
        v39 = v9;
        v40 = 1025;
        v41 = v10;
        v42 = 1025;
        v43 = v11;
        v44 = 1025;
        v45 = v12;
        v46 = 2049;
        v47 = v14;
        v48 = 2049;
        v49 = v15;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,nonRepeatingRequest, note:%{private, location:escape_only}s, name:%{private, location:escape_only}s, priority:%{private}d, requiresInexpensiveNetworkConnectivity:%{private}hhd, requiresExternalPower:%{private}hhd, requiresNetworkConnectivity:%{private}hhd, scheduleAfter:%{private}0.1f, trySchedulingBefore:%{private}0.1f}", buf, 0x52u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v3;
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v18 = a2;
        }

        else
        {
          v18 = "<empty note>";
        }

        v19 = [v16 identifier];
        v20 = v19;
        v21 = [v19 UTF8String];
        v22 = [v16 priority];
        v23 = [v16 requiresInexpensiveNetworkConnectivity];
        v24 = [v16 requiresExternalPower];
        v25 = [v16 requiresNetworkConnectivity];
        [v16 interval];
        *buf = 68290819;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2081;
        v35 = v18;
        v36 = 2081;
        v37 = v21;
        v38 = 1025;
        v39 = v22;
        v40 = 1025;
        v41 = v23;
        v42 = 1025;
        v43 = v24;
        v44 = 1025;
        v45 = v25;
        v46 = 2049;
        v47 = v26;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,repeatingRequest, note:%{private, location:escape_only}s, name:%{private, location:escape_only}s, priority:%{private}d, requiresInexpensiveNetworkConnectivity:%{private}hhd, requiresExternalPower:%{private}hhd, requiresNetworkConnectivity:%{private}hhd, interval:%{private}0.1f}", buf, 0x48u);
      }
    }
  }

  else
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "<empty note>";
      if (a2)
      {
        v28 = a2;
      }

      *buf = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2081;
      v35 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,logRequestInvalid, request:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_100062110(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == *(v1 + 96))
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,dispatchTask,scheduledTask}", &v8, 0x12u);
      v3 = SALogObjectGeneral;
    }

    v4 = *(v1 + 56);
    if (v4)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289026;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,dispatchTask,runningTask}", &v8, 0x12u);
        v4 = *(v1 + 56);
        if (!v4)
        {
          sub_1000053C4();
        }
      }

      (*(*v4 + 48))(v4);
      v3 = SALogObjectGeneral;
    }

    v5 = *(a1 + 48);
    v6 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v6)
      {
        v8 = 68289026;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,dispatchTask,setScheduleForNextInterval}", &v8, 0x12u);
        v7 = *(a1 + 48);
      }

      else
      {
        v7 = 1;
      }

      sub_100061BAC(v1, *(a1 + 40), v7 & 1, *(a1 + 44));
    }

    else if (v6)
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bg,dispatchTask,singleShot,stopping}", &v8, 0x12u);
    }
  }
}

void sub_100062358(void *a1)
{
  v1 = a1;
  v2 = *(sub_100042820() + 201);
  v3 = SALogObjectGeneral;
  v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,create,test}", &v5, 0x12u);
    }

    operator new();
  }

  if (v4)
  {
    v5 = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,create,prod}", &v5, 0x12u);
  }

  operator new();
}

void sub_100062584(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 275) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000626C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000627F8(va);
  operator delete();
}

uint64_t sub_100062738(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000627F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1000628A4(uint64_t a1)
{

  operator delete();
}

uint64_t sub_1000628F4(uint64_t a1, __int128 *a2)
{
  v20 = *"__MAG__";
  v21 = 0x700000000000000;
  v23 = 0x600000000000000;
  v22 = *"__ED__";
  v25 = 0x800000000000000;
  v24 = *"__ATTR__";
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_100041140(a1, &v20, &v26, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (*(&v25 + i + 7) < 0)
    {
      operator delete(*(&v24 + i));
    }
  }

  if (*(a2 + 23) < 0)
  {
    sub_100004CEC((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  while (v6 != v7)
  {
    v8 = *(a1 + 47);
    if (v8 < 0)
    {
      v9 = *(a1 + 24);
      v8 = *(a1 + 32);
    }

    else
    {
      v9 = (a1 + 24);
    }

    v10 = v6[23];
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = v6[23];
    }

    else
    {
      v12 = *(v6 + 1);
    }

    if (v12)
    {
      if (v8 >= v12)
      {
        v13 = &v9[v8];
        v14 = *v11;
        v15 = v9;
        do
        {
          v16 = v8 - v12;
          if (v16 == -1)
          {
            break;
          }

          v17 = memchr(v15, v14, v16 + 1);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          if (!memcmp(v17, v11, v12))
          {
            if (v18 == v13 || v18 - v9 == -1)
            {
              break;
            }

            goto LABEL_29;
          }

          v15 = v18 + 1;
          v8 = v13 - (v18 + 1);
        }

        while (v8 >= v12);
      }
    }

    else
    {
LABEL_29:
      sub_1000048B8((a1 + 48), v6);
    }

    v6 += 24;
  }

  return a1;
}

void sub_100062AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005208(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100062B58(std::string *this, char *a2, uint64_t a3, std::string::size_type __pos)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v7 = a2[23];
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = size - __pos;
  if (size < __pos)
  {
    return -1;
  }

  v11 = __pos;
  if (v9)
  {
    if (v10 >= v9)
    {
      v14 = v5 + size;
      v15 = v5 + __pos;
      v16 = *v8;
      while (1)
      {
        v17 = v10 - v9;
        if (v17 == -1)
        {
          break;
        }

        v18 = memchr(v15, v16, v17 + 1);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if (!memcmp(v18, v8, v9))
        {
          if (v19 == v14)
          {
            return -1;
          }

          v11 = v19 - v5;
          goto LABEL_24;
        }

        v15 = v19 + 1;
        v10 = v14 - (v19 + 1);
        if (v10 < v9)
        {
          return -1;
        }
      }
    }

    return -1;
  }

LABEL_24:
  if (v11 == -1)
  {
    return -1;
  }

  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = *(a3 + 8);
  }

  std::string::replace(this, v11, v9, v21, v22);
  v23 = *(a3 + 23);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a3 + 8);
  }

  return v23 + v11;
}

BOOL sub_100062C84(const std::string *a1, void *a2, std::string *this)
{
  std::string::operator=(this, a1 + 1);
  data = a1[2].__r_.__value_.__l.__data_;
  size = a1[2].__r_.__value_.__l.__size_;
  while (data != size)
  {
    v8 = sub_100062E64(a2, data);
    if (!v8)
    {
      v12 = SALogObjectGeneral;
      result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        if (*(data + 23) < 0)
        {
          data = *data;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2081;
        v19 = data;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#fmt,#warning,keyMissing, key:%{private, location:escape_only}s}", buf, 0x1Cu);
        return 0;
      }

      return result;
    }

    v9 = v8;
      ;
    }

    data += 3;
  }

  sub_1000060C4(buf, "::");
  sub_1000060C4(__p, "\n");
    ;
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v19) < 0)
  {
    operator delete(*buf);
  }

  return 1;
}

void sub_100062E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100062E64(void *a1, const void **a2)
{
  v4 = sub_100039B6C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_10004E530(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_100062F60(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  *a1 = 0;
  *(a1 + 2) = 0;
  v6 = v5;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = v6;
  *(a1 + 16) = a3;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 5;
  *(a1 + 232) = 0xBFF0000000000000;
  *(a1 + 240) = 257;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  v9 = v8;
  if (a3 > 0.0)
  {
    v10 = v6;
    if (v9)
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,initializing}", buf, 0x12u);
      v10 = *(a1 + 8);
    }

    sub_10008B894(v10);
  }

  if (v8)
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,initFailed,invalidRollingPeriod}", buf, 0x12u);
  }

  return a1;
}

void sub_10006350C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10003906C(*(v32 + 8));
  sub_10001CAB8(&a26);
  v34 = *(v26 + 264);
  if (v34)
  {
    sub_10002A838(v34);
  }

  sub_10001CB38(v30);
  v35 = *(v26 + 144);
  if (v35)
  {
    sub_10002A838(v35);
  }

  sub_100065DDC(a9);
  sub_100022C98(v29, 0);
  v36 = *(v26 + 80);
  if (v36)
  {
    sub_10002A838(v36);
  }

  v37 = *(v26 + 64);
  if (v37)
  {
    sub_10002A838(v37);
  }

  v38 = *(v26 + 48);
  *(v26 + 48) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  sub_100063D78(v28, 0);
  v39 = *(v26 + 32);
  *(v26 + 32) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *v31;
  *v31 = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  _Unwind_Resume(a1);
}

void sub_1000636F8(void *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,cleanup}", buf, 0x12u);
  }

  v3 = ((time(0) / a1[2] * a1[2]) + -978307200.0);
  v4 = v3 - *(sub_100042820() + 37);
  v5 = v3 - *(sub_100042820() + 38);
  sub_10005548C(a1[17], v4);
  sub_100055780(a1[17], v5);
  v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 10800000000000);
  v7 = a1[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065C2C;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_after(v6, v7, block);
}

void sub_100063888(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v11 = 2082;
    *&v11[2] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,updateBgSysTask}", buf, 0x12u);
  }

  if (*(sub_100042820() + 72))
  {
    v3 = time(0);
    v4 = *(a1 + 16);
    v5 = v3 / v4 * v4;
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289794;
      *&buf[4] = 0;
      *v11 = 2082;
      *&v11[2] = "";
      *&v11[10] = 2050;
      *&v11[12] = v3;
      *&v11[20] = 2050;
      *&v11[22] = (v5 + v4);
      *&v11[30] = 2050;
      v12 = (v4 + v5 - v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,#test,nextFireDelay, now:%{public}0.1f, endOfDay:%{public}0.1f, delay:%{public}0.1f}", buf, 0x30u);
    }

    v7 = dispatch_time(0xFFFFFFFFFFFFFFFELL, ((v4 + v5 - v3) * 1000000000.0));
    v8 = *(a1 + 8);
    *buf = _NSConcreteStackBlock;
    *v11 = 3221225472;
    *&v11[8] = sub_10006425C;
    *&v11[16] = &unk_1001390D0;
    *&v11[24] = a1;
    dispatch_after(v7, v8, buf);
  }

  else
  {
    sub_10001D128((a1 + 152), [@"com.apple.safetyalerts.rm" UTF8String]);
    objc_storeStrong((a1 + 176), *(a1 + 8));
    v9[0] = off_10013C4D0;
    v9[1] = a1;
    v9[3] = v9;
    sub_10001CBD0((a1 + 184), v9);
    *(a1 + 224) = 4;
    *(a1 + 232) = *(a1 + 16);
    *(a1 + 240) = 257;
    *(a1 + 216) = 1;
    sub_100060DE4(a1 + 152);
    sub_10000F274(v9);
  }
}

uint64_t sub_100063B24(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289026;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,~SARollingMetrics}", v14, 0x12u);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 32) = 0;
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 40))
  {
    sub_100063D78((a1 + 40), 0);
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    sub_10002A838(v6);
  }

  sub_10001CB38(a1 + 152);
  v7 = *(a1 + 144);
  if (v7)
  {
    sub_10002A838(v7);
  }

  sub_100065DDC(a1 + 96);
  sub_100022C98((a1 + 88), 0);
  v8 = *(a1 + 80);
  if (v8)
  {
    sub_10002A838(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    sub_10002A838(v9);
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_100063D78((a1 + 40), 0);
  v11 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sub_100063D78(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100097574(result);

    operator delete();
  }

  return result;
}

void sub_100063DC4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,onInitCompleted}", v4, 0x12u);
  }

  *a1 = 1;
  if (*(a1 + 2) == 1)
  {
    sub_100063EA4(a1);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    sub_100097700(v3);
  }
}

void sub_100063EA4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,bgSysTaskCallback}", &v16, 0x12u);
  }

  if ((*a1 & 1) == 0)
  {
    *(a1 + 2) = 1;
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    v15 = "{msg%{public}.0s:#rm,bgSysTaskCallback,init not complete,waiting}";
    goto LABEL_16;
  }

  *(a1 + 2) = 0;
  v3 = sub_100002DB0();
  if (*(v3 + 141) != 1 || (*(v3 + 140) & 1) == 0)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    v15 = "{msg%{public}.0s:#rm,#warning,device not unlocked since boot}";
    goto LABEL_16;
  }

  v4 = sub_10004ECB4();
  v5 = *(a1 + 16);
  v6 = *(v4 + 25);
  v16 = _NSConcreteStackBlock;
  *&v17 = 3221225472;
  *(&v17 + 1) = sub_1000501B8;
  v18 = &unk_10013B568;
  v19 = v4;
  v20 = v5;
  dispatch_async(v6, &v16);
  v7 = sub_100002DB0();
  if (*(v7 + 115) != 1 || (*(v7 + 114) & 1) == 0)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    v15 = "{msg%{public}.0s:#rm,#warning,country not supported}";
    goto LABEL_16;
  }

  v8 = (*(**(a1 + 32) + 24))(*(a1 + 32), -1.0, -1.0);
  v9 = SASettings::instance(v8);
  v10 = (*(*v9 + 32))(v9);
  if (!v10 || (v11 = SASettings::instance(v10), v12 = (*(*v11 + 40))(v11), (v12 & 1) == 0))
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    v15 = "{msg%{public}.0s:#rm,#warning,phoneAnalytics Or SLC is restricted}";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 0x12u);
    return;
  }

  v13 = SASettings::instance(v12);
  if ((*(*v13 + 48))(v13))
  {
    sub_100064264(a1);
    sub_100063888(a1);
    return;
  }

  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 68289026;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    v15 = "{msg%{public}.0s:#rm,#warning,emergencyAlert is disabled}";
    goto LABEL_16;
  }
}

void sub_100064264(uint64_t a1)
{
  if ([*SAPlatformInfo::instance(a1) isEqualToString:@"iPhone"])
  {
    v2 = time(0);
    v3 = sub_100055184(*(a1 + 136), (v2 - *(a1 + 16)), v2) - 1;
    v5 = sub_100055308(*(a1 + 136), (v2 - *(a1 + 16)), v2) - 1 < 2 || v3 < 2;
    v6 = sub_100042820();
    v7 = *(v6 + 81);
    if (SACommonUtils::isLivabiltyEnabled(v6))
    {
      v7 = 100;
    }

    if (v7 < 0)
    {
      v8 = sub_10008E020();
      v7 = sub_10008F280(v8);
    }

    if (v7 == 100)
    {
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf.__r_.__value_.__r.__words[0] = 68289026;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,isParticipatingInEfficacyMetrics,true,allParticipating}", &buf, 0x12u);
      }

      goto LABEL_34;
    }

    v11 = sub_100042820();
    v12 = *(v11 + 65);
    if (SACommonUtils::isLivabiltyEnabled(v11))
    {
      v12 = 100;
    }

    if (v12 < 0)
    {
      v13 = sub_10008E020();
      v12 = sub_10008F240(v13);
    }

    v14 = v7 - v12;
    if (v7 >= v12)
    {
      if (v5)
      {
        v15 = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v16 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_28;
      }

      v14 = vcvtmd_s64_f64(v7 * 100.0 / v12);
    }

    if (v14 <= 0x64)
    {
      v16 = arc4random_uniform(0x64u) <= v14;
LABEL_30:
      v15 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (!v16)
        {
          goto LABEL_97;
        }

        goto LABEL_34;
      }

LABEL_31:
      buf.__r_.__value_.__r.__words[0] = 68290051;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1025;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v7;
      LOWORD(v64) = 1025;
      *(&v64 + 2) = v12;
      HIWORD(v64) = 1025;
      *v65 = v5;
      *&v65[4] = 1025;
      *&v65[6] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,isParticipatingInEfficacyMetrics,, efficacyMetricParticipationPercentage:%{private}d, pushParticipationPercentage:%{private}d, isSubscribed:%{private}hhd, isParticipating:%{private}hhd}", &buf, 0x2Au);
      if (!v16)
      {
        goto LABEL_97;
      }

LABEL_34:
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf.__r_.__value_.__r.__words[0] = 68289026;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,particicapting in eff}", &buf, 0x12u);
      }

      *(a1 + 272) = 1;
      sub_100064CF4(a1, 0);
      v18 = sub_100042820();
      if (*(v18 + 239) < 0)
      {
        sub_100004CEC(&__p, v18[27], v18[28]);
      }

      else
      {
        __p = *(v18 + 9);
      }

      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      LOBYTE(v20) = *(&__p.__r_.__value_.__s + 23);
      size = __p.__r_.__value_.__l.__size_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      if (!v22)
      {
        v23 = sub_10008E020();
        sub_10008F300(v23, &buf);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = buf;
        v19 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        size = buf.__r_.__value_.__l.__size_;
        v20 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      if ((v20 & 0x80u) != 0)
      {
        v19 = size;
      }

      if (v19)
      {
        v24 = *(a1 + 88);
        if (v24 && (*(v24 + 32) & 1) != 0)
        {
          v25 = sub_10008E020();
          sub_10008F438(v25, &v55);
          v26 = v57;
          if ((v57 & 0x80u) != 0)
          {
            v26 = v56;
          }

          if (v26)
          {
            SACommonUtils::getHashForString(&v55, &buf);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v28 = __p.__r_.__value_.__l.__size_;
            }

            v29 = std::string::insert(&buf, 0, p_p, v28);
            v30 = *&v29->__r_.__value_.__l.__data_;
            v54 = v29->__r_.__value_.__r.__words[2];
            *v53 = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v31 = sub_1000060C4(&buf, "/var/mobile/Library/com.apple.safetyalerts/");
            if ((v57 & 0x80u) == 0)
            {
              v32 = &v55;
            }

            else
            {
              v32 = v55;
            }

            if ((v57 & 0x80u) == 0)
            {
              v33 = v57;
            }

            else
            {
              v33 = v56;
            }

            v34 = std::string::append(v31, v32, v33);
            v35 = *&v34->__r_.__value_.__l.__data_;
            v52 = v34->__r_.__value_.__r.__words[2];
            *v51 = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v36 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf.__r_.__value_.__r.__words[0] = 68289026;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,downloadManifest,downloadingManifest}", &buf, 0x12u);
            }

            v37 = *(a1 + 88);
            v38 = *(sub_100042820() + 39);
            buf.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
            buf.__r_.__value_.__l.__size_ = 3321888768;
            buf.__r_.__value_.__r.__words[2] = sub_10006573C;
            v64 = &unk_10013C330;
            *v65 = a1;
            if (SHIBYTE(v52) < 0)
            {
              sub_100004CEC(&v65[8], v51[0], v51[1]);
            }

            else
            {
              *&v65[8] = *v51;
              v66 = v52;
            }

            v68 = 0;
            v67[0] = off_10013A1E8;
            v67[1] = objc_retainBlock(&buf);
            v68 = v67;
            sub_100082E9C(v37, v53, v51, 3, v67, v38);
            sub_10001E0C0(v67);
            if (SHIBYTE(v66) < 0)
            {
              operator delete(*&v65[8]);
            }

            if (SHIBYTE(v52) < 0)
            {
              operator delete(v51[0]);
            }

            if (SHIBYTE(v54) < 0)
            {
              operator delete(v53[0]);
            }
          }

          else
          {
            v41 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf.__r_.__value_.__r.__words[0] = 68289026;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,#warning,downloadManifest,empty manifest file name}", &buf, 0x12u);
            }
          }

          if (v57 < 0)
          {
            operator delete(v55);
          }

          goto LABEL_90;
        }

        v39 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf.__r_.__value_.__r.__words[0] = 68289026;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
          v40 = "{msg%{public}.0s:#rm,#warning,downloadManifest,downloaderNotReady}";
LABEL_78:
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, &buf, 0x12u);
        }
      }

      else
      {
        v39 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf.__r_.__value_.__r.__words[0] = 68289026;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
          v40 = "{msg%{public}.0s:#rm,#warning,downloadManifest,pullCnameUnavailable}";
          goto LABEL_78;
        }
      }

LABEL_90:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 56))
      {
        v42 = time(0);
        v43 = *(a1 + 16);
        v44 = *(a1 + 56);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100064E1C;
        v50[3] = &unk_1001390D0;
        v50[4] = a1;
        v62 = 0;
        v61[0] = off_100138F50;
        v61[1] = objc_retainBlock(v50);
        v62 = v61;
        (*(*v44 + 16))(v44, v61, (v42 % v43 + v43));
        sub_10000F274(v61);
      }

      v45 = time(0);
      v46 = *(a1 + 24);
      if (v46)
      {
        v46 = (*(*v46 + 16))(v46, ((v45 / *(a1 + 16) * *(a1 + 16)) + -978307200.0) - *(a1 + 16));
      }

      v47 = SASettings::instance(v46);
      v48 = *(a1 + 8);
      v60[0] = off_10013C550;
      v60[1] = a1;
      v60[3] = v60;
      (*(*v47 + 96))(v47, v48, v60);
      sub_10001E0C0(v60);
      goto LABEL_97;
    }

LABEL_28:
    v16 = 0;
    goto LABEL_30;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,isParticipatingInEfficacyMetrics,false,not iphone}", &buf, 0x12u);
  }

LABEL_97:
  if (*(a1 + 48))
  {
    sub_100064CF4(a1, 1);
    v49 = *(a1 + 48);
    v59[0] = off_10013C5D0;
    v59[3] = v59;
    (*(*v49 + 16))(v49, v59);
    sub_10001E0C0(v59);
    sub_100065010(a1);
  }
}

void sub_100064C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_10001E0C0(v49 - 120);
  if (*(v49 - 129) < 0)
  {
    operator delete(*(v49 - 152));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_100064CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    v10 = 1;
    v11 = &v10;
    v3 = sub_10006630C((a1 + 96), 1);
    LODWORD(v11) = 2;
    v4 = (v3 + 3);
    v5 = 2;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v6 = sub_10006630C((a1 + 96), 0);
    LODWORD(v11) = 1;
    sub_100066B44((v6 + 3), 1);
    v10 = 0;
    v11 = &v10;
    v7 = sub_10006630C((a1 + 96), 0);
    LODWORD(v11) = 0;
    sub_100066B44((v7 + 3), 0);
    v10 = 0;
    v11 = &v10;
    v8 = sub_10006630C((a1 + 96), 0);
    LODWORD(v11) = 2;
    sub_100066B44((v8 + 3), 2);
    v10 = 0;
    v11 = &v10;
    v9 = sub_10006630C((a1 + 96), 0);
    LODWORD(v11) = 3;
    v4 = (v9 + 3);
    v5 = 3;
  }

  sub_100066B44(v4, v5);
  sub_1000659F0(*(a1 + 112));
}

void sub_100064E1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,biomeCompleted}", v3, 0x12u);
  }

  sub_100064EE8(v1, 0);
  sub_100065010(v1);
}

void sub_100064EE8(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v6 = v2 + 4;
      v5 = v2[4];
      if (v5)
      {
        v7 = v2 + 4;
        v8 = v2[4];
        do
        {
          if (*(v8 + 28) >= a2)
          {
            v7 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < a2));
        }

        while (v8);
        if (v7 != v6 && *(v7 + 7) <= a2)
        {
          v9 = v2 + 4;
          v10 = v2[4];
          do
          {
            if (*(v10 + 28) >= a2)
            {
              v9 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 28) < a2));
          }

          while (v10);
          if (v9 != v6 && *(v9 + 7) <= a2)
          {
            v11 = v9[1];
            v12 = v9;
            if (v11)
            {
              do
              {
                v13 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v13 = v12[2];
                v14 = *v13 == v12;
                v12 = v13;
              }

              while (!v14);
            }

            if (v2[3] == v9)
            {
              v2[3] = v13;
            }

            --v2[5];
            sub_100066C10(v5, v9);
            operator delete(v9);
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
    v15 = *(a1 + 112);
  }

  else
  {
    v15 = 0;
  }

  sub_1000659F0(v15);
}

void sub_100065010(uint64_t a1)
{
  v2 = time(0);
  v3 = *(a1 + 16);
  v4 = ((v2 / v3 * v3) + -978307200.0);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 272);
    *buf = 68289283;
    *&buf[4] = 0;
    LOWORD(v13) = 2082;
    *(&v13 + 2) = "";
    WORD5(v13) = 1025;
    HIDWORD(v13) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,#triggerMetricCollection, fEfficacyInProgress:%{private}hhd}", buf, 0x18u);
  }

  v7 = v4 - v3;
  if (*(a1 + 272) == 1)
  {
    *v10 = 0;
    *buf = v10;
    if (!sub_10006630C((a1 + 96), 0)[5] && sub_100055C38(*(a1 + 136), *(a1 + 16)))
    {
      operator new();
    }
  }

  *v10 = 1;
  *buf = v10;
  if (!sub_10006630C((a1 + 96), 1)[5])
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      if (*(v8 + 16) == 1)
      {
        v13 = 0uLL;
        *buf = &v13;
        sub_100055874(*(a1 + 136) + 800, buf, v7, v4);
        SAGridMetrics::onSlcHistoryCb(*(a1 + 48), buf);
        (*(**(a1 + 48) + 24))(*(a1 + 48), v7, v4);
        v9 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 68289026;
          *&v10[4] = 0;
          v11[0] = 2082;
          *&v11[1] = "";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,triggerMetricCollection,gmComplete}", v10, 0x12u);
        }

        sub_100015A38(buf, v13);
      }
    }
  }
}

void sub_100065674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000659A8(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_10006573C(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v13 = @"status";
  v4 = [NSNumber numberWithInt:a2 ^ 1u];
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v6 = sub_10004ECB4();
  sub_10004FD8C(v6, 1, v5);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v8)
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,#downloadManifestCompleted}", &v9, 0x12u);
    }

    operator new();
  }

  if (v8)
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,#warning,downloadManifestFailed}", &v9, 0x12u);
  }
}

void sub_10006592C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);

  _Unwind_Resume(a1);
}

char *sub_100065968(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100004CEC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_100065994(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t *sub_1000659A8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100026BD0(v2);
    operator delete();
  }

  return a1;
}

void sub_1000659F0(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[3];
      if (v2 != v1 + 4)
      {
        v3 = SALogObjectGeneral;
        do
        {
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
          {
            v4 = *(v1 + 4);
            v5 = *(v2 + 7);
            *buf = 68289539;
            v10 = 0;
            v11 = 2082;
            v12 = "";
            v13 = 1025;
            v14 = v4;
            v15 = 1025;
            v16 = v5;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#rm,printWaitConditions, metrics:%{private}d, condition:%{private}d}", buf, 0x1Eu);
            v3 = SALogObjectGeneral;
          }

          v6 = v2[1];
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
              v7 = v2[2];
              v8 = *v7 == v2;
              v2 = v7;
            }

            while (!v8);
          }

          v2 = v7;
        }

        while (v7 != v1 + 4);
      }

      v1 = *v1;
    }

    while (v1);
  }
}

void sub_100065B4C(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#rm,onEnhancedDeliveryEnabled, isEnhancedDeliveryEnabled:%{public}hhd}", v6, 0x18u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    sub_100097C64(v5, a2);
  }
}

void sub_100065C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a1 + 16) = v2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#rm,updateMaConfig, fRollingPeriodSeconds:%{public}llu}", v4, 0x1Cu);
  }
}

void sub_100065D00(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#rm,onIgneousReceived}", v5, 0x12u);
  }

  if (*(a2 + 180) != 4)
  {
    sub_100056368(*(a1 + 136), a2);
  }
}

uint64_t sub_100065DDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_10003906C(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_100065E5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100065F2C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C3C0;
  a2[1] = v2;
  return result;
}

void sub_100065F58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a2[1] - *a2) >> 5;
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2049;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,OnHistoricalLocationReceivedCb, HistoricalLocationCount:%{private}lu}", v6, 0x1Cu);
  }

  operator new();
}

void sub_1000660F4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_100066124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000661E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C450;
  a2[1] = v2;
  return result;
}

void sub_10006620C()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_1000662C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10006630C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_100066710(_Unwind_Exception *a1)
{
  sub_10003906C(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006679C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C4D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000667D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006688C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C550;
  a2[1] = v2;
  return result;
}

void sub_1000668B8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#rm,prepare,bleEnabledCb, isEnabled:%{private}hhd}", v5, 0x18u);
  }

  *(v3 + 1) = v2;
  sub_100064EE8(v3, 3);
  sub_100065010(v3);
}

uint64_t sub_1000669A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066A78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100066AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100066B44(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_100066C10(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void sub_100066FA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100066FFC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_100067018(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100067054(a1, a2);
  }

  sub_10000509C();
}

void sub_100067054(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10006709C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = (a1 + 8);
  v2 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v1;
  v5 = v2;
  do
  {
    if (*(v5 + 25))
    {
      v4 = v5;
    }

    v5 = v5[*(v5 + 25) == 0];
  }

  while (v5);
  do
  {
    v6 = v2;
    v2 = *v2;
  }

  while (v2);
  LODWORD(v2) = v4 != v1;
  if (v6 == v1 || *(v6 + 25))
  {
LABEL_9:
    v6 = v1;
  }

  v7 = v6 != v1;
  if (v6 == v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 1;
  }

  if ((v2 & v7) != 0)
  {
    LODWORD(v2) = 2;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return 3;
  }
}

void sub_100067128(void *a1)
{
  a1;
  if (*(sub_100042820() + 336) == 1)
  {
    sub_1000671C4();
  }

  sub_1000673B8();
}

void *sub_100067238(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013C710;
  sub_100067330(a1 + 3, a2, a3);
  return a1;
}

void sub_1000672B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100067330(void *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v4;
    *a1 = off_10013C2F0;
    a1[1] = v6;
    sub_10002A838(v5);
  }

  else
  {
    v7 = v4;
    *a1 = off_10013C2F0;
    a1[1] = v7;
  }

  return a1;
}

void *sub_10006742C(void *a1, void **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013C760;
  sub_100067524(a1 + 3, a2, a3);
  return a1;
}

void sub_1000674A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100067524(void *a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10007DD18(a1, v4, v7);
  if (v5)
  {
    sub_10002A838(v5);
  }

  return a1;
}

void sub_100067584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10002A838(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006759C(void *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[10];
    v3 = a1[11];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v3;
    v63 = 2049;
    v64 = v5;
    v65 = 2049;
    v66 = v6;
    v67 = 2049;
    v68 = v4;
    v69 = 2049;
    v70 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,log, FollowUpMessageValidTime:%{private}0.3f, watchHysteresis:%{private}0.3f, PhoneHysteresis:%{private}0.3f, IgnoreDuration:%{private}0.3f, TimeBetweenAlerts:%{private}0.3f}", buf, 0x44u);
  }

  v8 = a1[1];
  v9 = a1[2];
  if (v8 != v9)
  {
    v10 = SALogObjectGeneral;
    do
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v8;
        if (*(v8 + 23) < 0)
        {
          v11 = *v8;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,readIgneousAlertConfigData, ProductionKey:%{private, location:escape_only}s}", buf, 0x1Cu);
        v10 = SALogObjectGeneral;
      }

      v8 += 3;
    }

    while (v8 != v9);
  }

  for (i = a1[14]; i; i = *i)
  {
    v13 = (i + 2);
    if (*(i + 39) < 0)
    {
      v13 = *v13;
    }

    v14 = i[7];
    if (v14)
    {
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = "NULL";
      }

      do
      {
        sub_1000060C4(&v60, v15);
        sub_1000060C4(__p, ":");
        if ((v59 & 0x80u) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if ((v59 & 0x80u) == 0)
        {
          v17 = v59;
        }

        else
        {
          v17 = __p[1];
        }

        v18 = std::string::append(&v60, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v18->__r_.__value_.__l + 2);
        *buf = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = *(v14 + 39);
        if (v20 >= 0)
        {
          v21 = (v14 + 2);
        }

        else
        {
          v21 = v14[2];
        }

        if (v20 >= 0)
        {
          v22 = *(v14 + 39);
        }

        else
        {
          v22 = v14[3];
        }

        v23 = std::string::append(buf, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v59 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v25 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v14 + 5;
          v27 = &v61;
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v61.__r_.__value_.__r.__words[0];
          }

          if (!v27)
          {
            v27 = "NULL";
          }

          v28 = v14[8];
          if (*(v14 + 63) < 0)
          {
            v26 = v14[5];
          }

          if (*(v14 + 87) >= 0)
          {
            v28 = v14 + 8;
          }

          v29 = v14 + 11;
          if (*(v14 + 111) < 0)
          {
            v29 = v14[11];
          }

          *buf = 68290051;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = v27;
          v63 = 2081;
          v64 = v26;
          v65 = 2081;
          v66 = v28;
          v67 = 2081;
          v68 = v29;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,logNotificationConfig, context:%{private, location:escape_only}s, withLocationText:%{private, location:escape_only}s, withoutLocationText:%{private, location:escape_only}s, toneFile:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v14 = *v14;
      }

      while (v14);
    }
  }

  for (j = a1[19]; j; j = *j)
  {
    v31 = *(j + 8);
    v32 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(j + 24);
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1025;
      *&buf[20] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,sourceConfig, valid:%{private}hhd}", buf, 0x18u);
    }

    for (k = j[9]; k; k = *k)
    {
      std::to_string(&v60, v31);
      v35 = std::string::append(&v60, ":", 1uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v35->__r_.__value_.__l + 2);
      *buf = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = *(k + 39);
      if (v37 >= 0)
      {
        v38 = (k + 2);
      }

      else
      {
        v38 = k[2];
      }

      if (v37 >= 0)
      {
        v39 = *(k + 39);
      }

      else
      {
        v39 = k[3];
      }

      v40 = std::string::append(buf, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      v42 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v43 = k + 5;
        v44 = &v61;
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = v61.__r_.__value_.__r.__words[0];
        }

        if (*(k + 63) < 0)
        {
          v43 = *v43;
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v44;
        v63 = 2081;
        v64 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,logAttributionMap, context:%{private, location:escape_only}s, value:%{private, location:escape_only}s}", buf, 0x26u);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v45 = j[12];
    v46 = j[13];
    if (v45 != v46)
    {
      v47 = v45 + 4;
      do
      {
        v48 = SALogObjectGeneral;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          std::to_string(&v61, v31);
          v49 = &v61;
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = v61.__r_.__value_.__r.__words[0];
          }

          v50 = *(v47 + 23);
          if (v50 < 0)
          {
            v52 = "NONE";
            if (v47[1])
            {
              v52 = *v47;
            }
          }

          else
          {
            v51 = v50 == 0;
            v52 = "NONE";
            if (!v51)
            {
              v52 = v47;
            }
          }

          v53 = *(v47 - 2);
          v54 = *(v47 - 1);
          v55 = *(v47 - 4);
          v56 = *(v47 - 3);
          *buf = 68290563;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = v49;
          v63 = 2049;
          v64 = v53;
          v65 = 2049;
          v66 = v54;
          v67 = 2049;
          v68 = v55;
          v69 = 2049;
          v70 = v56;
          v71 = 2081;
          v72 = v52;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,logMmiBandConfig, context:%{private, location:escape_only}s, minMag:%{private}0.1f, maxMag:%{private}0.1f, minInt:%{private}0.1f, maxInt:%{private}0.1f, displayTemplate:%{private, location:escape_only}s}", buf, 0x4Eu);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        v57 = v47 + 4;
        v47 += 8;
      }

      while (v57 != v46);
    }
  }
}

uint64_t sub_100067CD8(uint64_t a1, void *a2)
{
  v2 = a2;
  v141 = v2;
  if (v2)
  {
    v143 = [v2 objectForKey:@"SAEWConfig"];
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v174[0] = 2082;
      *&v174[1] = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,Alert alertConf}", buf, 0x12u);
    }

    if (v143 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v167 = 0;
      SACommonUtils::readStringListFromKey(v143, @"weaTexts", &v167, (a1 + 32));
      v166 = 0;
      SACommonUtils::readStringListFromKey(v143, @"ProductionKey", &v166, (a1 + 8));
      SACommonUtils::readDoubleFromKey(v143, @"ThresholdTimeBetweenAlertsSec", (a1 + 72), v4);
      if (*(a1 + 72) < 900.0)
      {
        *(a1 + 72) = 0x408C200000000000;
      }

      SACommonUtils::readDoubleFromKey(v143, @"FollowUpMessageValidTime", (a1 + 88), v5);
      v6 = sub_100042820();
      if ((sub_1000425BC(v6, @"PhoneChannelSubHysteresisSeconds", (a1 + 64)) & 1) == 0)
      {
        v7 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v174[0] = 2082;
          *&v174[1] = "";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,PhoneChannelSubHysteresisSeconds}", buf, 0x12u);
        }

        SACommonUtils::readDoubleFromKey(v143, @"PhoneChannelSubHysteresisSeconds", (a1 + 64), v8);
      }

      v9 = sub_100042820();
      if ((sub_1000425BC(v9, @"WatchChannelSubHysteresis", (a1 + 56)) & 1) == 0)
      {
        v11 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v174[0] = 2082;
          *&v174[1] = "";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,WatchChannelSubHysteresisSeconds}", buf, 0x12u);
        }

        SACommonUtils::readDoubleFromKey(v143, @"WatchChannelSubHysteresisSeconds", (a1 + 56), v12);
      }

      SACommonUtils::readDoubleFromKey(v143, @"IgnoreAlertSec", (a1 + 80), v10);
      v138 = [(SACommonUtils *)v143 objectForKey:@"displayTemplates"];
      if (v138 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        *v179 = off_10013C8A8;
        *&v179[8] = a1;
        *&v179[24] = v179;
        memset(v159, 0, sizeof(v159));
        v13 = v138;
        __str = v13;
        v14 = unk_10014BCE0(v13, "countByEnumeratingWithState:objects:count:", v159, buf, 16);
        if (v14)
        {
          v15 = (a1 + 96);
          v16 = *v159[2];
          v17 = &IOIteratorNext_ptr;
          v157 = *v159[2];
          do
          {
            v18 = 0;
            v154 = v14;
            do
            {
              if (*v159[2] != v16)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(v159[1] + v18);
              if (v19 && (v20 = v17[264], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v21 = unk_10014BCE8(v13, "objectForKey:", v19);
                v22 = v21;
                if (v21)
                {
                  memset(v176, 0, sizeof(v176));
                  LODWORD(v177) = 1065353216;
                  *v181 = v21;
                  if (!*&v179[24])
                  {
                    sub_1000053C4();
                  }

                  (*(**&v179[24] + 48))(*&v179[24], v181, v176);

                  v23 = v19;
                  sub_1000060C4(&__p, [v19 UTF8String]);
                  v24 = sub_100039B6C(v15, &__p);
                  v25 = v24;
                  v26 = *(a1 + 104);
                  if (!*&v26)
                  {
                    goto LABEL_47;
                  }

                  v27 = vcnt_s8(v26);
                  v27.i16[0] = vaddlv_u8(v27);
                  v28 = v27.u32[0];
                  if (v27.u32[0] > 1uLL)
                  {
                    v29 = v24;
                    if (v24 >= *&v26)
                    {
                      v29 = v24 % *&v26;
                    }
                  }

                  else
                  {
                    v29 = (*&v26 - 1) & v24;
                  }

                  v32 = *(*v15 + 8 * v29);
                  if (!v32 || (v33 = *v32) == 0)
                  {
LABEL_47:
                    operator new();
                  }

                  while (1)
                  {
                    v34 = v33[1];
                    if (v34 == v25)
                    {
                      if (sub_10004E530(v15, v33 + 2, &__p.__r_.__value_.__l.__data_))
                      {
                        v13 = __str;
                        v14 = v154;
                        if (v33 + 5 != v176)
                        {
                          *(v33 + 18) = v177;
                          sub_10006BBE4(v33 + 5, *&v176[16], 0);
                        }

                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        sub_10002DAF8(v176);
                        v16 = v157;
                        v17 = &IOIteratorNext_ptr;
                        goto LABEL_53;
                      }
                    }

                    else
                    {
                      if (v28 > 1)
                      {
                        if (v34 >= *&v26)
                        {
                          v34 %= *&v26;
                        }
                      }

                      else
                      {
                        v34 &= *&v26 - 1;
                      }

                      if (v34 != v29)
                      {
                        goto LABEL_47;
                      }
                    }

                    v33 = *v33;
                    if (!v33)
                    {
                      goto LABEL_47;
                    }
                  }
                }

                v31 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *v176 = 68289026;
                  *&v176[4] = 0;
                  *&v176[8] = 2082;
                  *&v176[10] = "";
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,templateObjInvalid}", v176, 0x12u);
                }

LABEL_53:
              }

              else
              {
                v30 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *v176 = 68289026;
                  *&v176[4] = 0;
                  *&v176[8] = 2082;
                  *&v176[10] = "";
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,KeyInvalid}", v176, 0x12u);
                }
              }

              ++v18;
            }

            while (v18 != v14);
            v14 = unk_10014BCF0(v13, "countByEnumeratingWithState:objects:count:", v159, buf, 16);
          }

          while (v14);
        }

        sub_10006C658(v179);
        v134 = [(SACommonUtils *)v143 objectForKey:@"sourceConfig"];
        if (v134)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v35 = v134;
            v145 = v35;
            v36 = [v35 countByEnumeratingWithState:&v162 objects:v172 count:16];
            if (!v36)
            {
              goto LABEL_237;
            }

            v152 = *v163;
            while (1)
            {
              v158 = 0;
              v155 = v36;
              do
              {
                if (*v163 != v152)
                {
                  objc_enumerationMutation(v35);
                }

                v37 = *(*(&v162 + 1) + 8 * v158);
                LOBYTE(v159[0]) = 0;
                memset(&v159[1], 0, 56);
                v160 = 1065353216;
                memset(v161, 0, 32);
                if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v114 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    v174[0] = 2082;
                    *&v174[1] = "";
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,sourceConfigEntryInvalid}", buf, 0x12u);
                  }

                  goto LABEL_233;
                }

                v148 = [v35 objectForKey:v37];
                if (!v148 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v115 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    v174[0] = 2082;
                    *&v174[1] = "";
                    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,sourceConfigEntryInvalid}", buf, 0x12u);
                  }

                  goto LABEL_232;
                }

                v142 = [v35 objectForKey:v37];
                v144 = [v142 objectForKey:@"senderId"];
                if (!v144 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v116 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    v174[0] = 2082;
                    *&v174[1] = "";
                    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,sourceConfigSenderIdInvalid}", buf, 0x12u);
                  }

                  goto LABEL_231;
                }

                v140 = v144;
                v137 = [v140 intValue];
                v38 = v148;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v135 = v38;
                  v136 = v38;
                  v139 = [v136 objectForKey:@"defaultLanguage"];
                  if (v139 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v39 = v139;
                    sub_10001D128(&v159[1], [v139 UTF8String]);
                    v40 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = &v159[1];
                      if (SHIBYTE(v159[3]) < 0)
                      {
                        v41 = v159[1];
                      }

                      *buf = 68289283;
                      *&buf[4] = 0;
                      v174[0] = 2082;
                      *&v174[1] = "";
                      v174[5] = 2081;
                      v175 = v41;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,defaultLanguage, language:%{private, location:escape_only}s}", buf, 0x1Cu);
                    }

                    v42 = [v136 objectForKey:@"attribution"];
                    *v179 = off_10013C938;
                    *&v179[24] = v179;
                    v43 = v42;
                    v133 = v43;
                    if (v43)
                    {
                      v177 = 0u;
                      v178 = 0u;
                      memset(v176, 0, sizeof(v176));
                      v44 = v43;
                      obj = v44;
                      v45 = [v44 countByEnumeratingWithState:v176 objects:buf count:16];
                      if (v45)
                      {
                        v46 = **&v176[16];
                        do
                        {
                          v47 = 0;
                          v149 = v45;
                          do
                          {
                            if (**&v176[16] != v46)
                            {
                              objc_enumerationMutation(v44);
                            }

                            v48 = *(*&v176[8] + 8 * v47);
                            if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v49 = [v44 objectForKey:v48];
                              v50 = v49;
                              if (v49)
                              {
                                memset(&__p, 0, sizeof(__p));
                                *v181 = v49;
                                if (!*&v179[24])
                                {
                                  sub_1000053C4();
                                }

                                (*(**&v179[24] + 48))(*&v179[24], v181, &__p);

                                v51 = v48;
                                sub_1000060C4(v169, [v48 UTF8String]);
                                v52 = sub_100039B6C(&v159[4], v169);
                                v53 = v52;
                                v54 = v159[5];
                                if (!v159[5])
                                {
                                  goto LABEL_106;
                                }

                                v55 = v46;
                                v56 = vcnt_s8(v159[5]);
                                v56.i16[0] = vaddlv_u8(v56);
                                v57 = v56.u32[0];
                                if (v56.u32[0] > 1uLL)
                                {
                                  v58 = v52;
                                  if (v52 >= v159[5])
                                  {
                                    v58 = v52 % v159[5];
                                  }
                                }

                                else
                                {
                                  v58 = (v159[5] - 1) & v52;
                                }

                                v61 = *(v159[4] + v58);
                                if (!v61 || (v62 = *v61) == 0)
                                {
LABEL_106:
                                  operator new();
                                }

                                while (1)
                                {
                                  v63 = v62[1];
                                  if (v63 == v53)
                                  {
                                    if (sub_10004E530(&v159[4], v62 + 2, v169))
                                    {
                                      v44 = obj;
                                      v46 = v55;
                                      v45 = v149;
                                      std::string::operator=((v62 + 5), &__p);
                                      if (SHIBYTE(v170) < 0)
                                      {
                                        operator delete(v169[0]);
                                      }

                                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(__p.__r_.__value_.__l.__data_);
                                      }

                                      goto LABEL_111;
                                    }
                                  }

                                  else
                                  {
                                    if (v57 > 1)
                                    {
                                      if (v63 >= v54)
                                      {
                                        v63 %= v54;
                                      }
                                    }

                                    else
                                    {
                                      v63 &= v54 - 1;
                                    }

                                    if (v63 != v58)
                                    {
                                      goto LABEL_106;
                                    }
                                  }

                                  v62 = *v62;
                                  if (!v62)
                                  {
                                    goto LABEL_106;
                                  }
                                }
                              }

                              v60 = SALogObjectGeneral;
                              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                              {
                                *v181 = 68289026;
                                *&v181[8] = 2082;
                                *&v181[10] = "";
                                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,templateObjInvalid}", v181, 0x12u);
                              }

LABEL_111:
                            }

                            else
                            {
                              v59 = SALogObjectGeneral;
                              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                              {
                                *v181 = 68289026;
                                *&v181[8] = 2082;
                                *&v181[10] = "";
                                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,KeyInvalid}", v181, 0x12u);
                              }
                            }

                            v47 = v47 + 1;
                          }

                          while (v47 != v45);
                          v45 = [v44 countByEnumeratingWithState:v176 objects:buf count:16];
                        }

                        while (v45);
                      }

                      v43 = v133;
                    }

                    sub_10006C85C(v179);
                    v64 = [v136 objectForKey:@"mmiBandsConfig"];
                    if (v64 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v177 = 0u;
                      v178 = 0u;
                      memset(v176, 0, sizeof(v176));
                      v132 = v64;
                      obja = v64;
                      v65 = [obja countByEnumeratingWithState:v176 objects:buf count:16];
                      v66 = 0;
                      if (v65)
                      {
                        v151 = **&v176[16];
                        v67 = 100.0;
                        while (1)
                        {
                          v68 = 0;
                          v69 = v65;
                          do
                          {
                            if (**&v176[16] != v151)
                            {
                              objc_enumerationMutation(obja);
                            }

                            v70 = *(*&v176[8] + 8 * v68);
                            *(v168 + 3) = 0;
                            v168[0] = 0;
                            v71 = v70;
                            if (!v71 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                            {

                              v87 = 0;
                              v89 = 0;
                              v86 = 0;
                              v88 = 0;
                              v74 = 0.0;
                              v77 = 100.0;
                              v80 = 0.0;
                              v83 = 100.0;
                              goto LABEL_163;
                            }

                            v72 = v71;
                            v73 = [v72 objectForKey:@"minIntensity"];
                            v74 = -1.0;
                            if (v73)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v73 doubleValue];
                                v74 = v75;
                              }
                            }

                            v76 = [v72 objectForKey:@"maxIntensity"];
                            v77 = -1.0;
                            if (v76)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v76 doubleValue];
                                v77 = v78;
                              }
                            }

                            v79 = [v72 objectForKey:@"minMagnitude"];
                            v80 = -1.0;
                            if (v79)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v79 doubleValue];
                                v80 = v81;
                              }
                            }

                            v82 = [v72 objectForKey:@"maxMagnitude"];
                            v83 = -1.0;
                            if (v82)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v82 doubleValue];
                                v83 = v84;
                              }
                            }

                            v85 = [v72 objectForKey:@"displayTemplate"];
                            if (v85 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              SACommonUtils::getStringValue(v85, v179);
                              v86 = *&v179[8];
                              v87 = *v179;
                              v168[0] = *&v179[16];
                              *(v168 + 3) = *&v179[19];
                              v88 = v179[23];
                            }

                            else
                            {
                              v87 = 0;
                              v88 = 0;
                              v86 = 0;
                            }

                            memset(v179, 0, 24);
                            v90 = [v72 objectForKey:@"level"];
                            if (v90 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              SACommonUtils::getStringValue(v90, v181);
                              *v179 = *v181;
                              *&v179[16] = *&v181[16];
                              v91 = HIBYTE(*&v181[16]);
                              v92 = *&v181[8];

                              v93 = v91;
                              v94 = v91;
                              if ((v91 & 0x80u) == 0)
                              {
                                v95 = v91;
                              }

                              else
                              {
                                v95 = v92;
                              }

                              if (v95)
                              {
                                if (!std::string::compare(v179, "action"))
                                {
                                  v89 = 2;
                                  goto LABEL_157;
                                }

                                v93 = v179[23];
                                v92 = *&v179[8];
                                v94 = v179[23];
                              }

                              if (v93 < 0)
                              {
                                v94 = v92;
                              }

                              if (v94)
                              {
                                if (!std::string::compare(v179, "awareness"))
                                {
                                  v89 = 1;
                                }

                                else
                                {
                                  v89 = -1;
                                }

                                goto LABEL_157;
                              }
                            }

                            else
                            {
                            }

                            v89 = -1;
LABEL_157:
                            if ((v179[23] & 0x80000000) != 0)
                            {
                              operator delete(*v179);
                            }

                            if (v89 == 2 && (v89 = 2, v67 > v74))
                            {
                              v66 = 1;
                              v67 = v74;
                            }

                            else
                            {
                              v66 = 1;
                            }

LABEL_163:
                            v96 = v161[1];
                            if (v161[1] >= v161[2])
                            {
                              v97 = (v161[1] - v161[0]) >> 6;
                              if ((v97 + 1) >> 58)
                              {
                                sub_10000509C();
                              }

                              v98 = (v161[2] - v161[0]) >> 5;
                              if (v98 <= v97 + 1)
                              {
                                v98 = v97 + 1;
                              }

                              if (v161[2] - v161[0] >= 0x7FFFFFFFFFFFFFC0uLL)
                              {
                                v99 = 0x3FFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v99 = v98;
                              }

                              v180 = v161;
                              if (v99)
                              {
                                sub_10006B014(v161, v99);
                              }

                              v101 = v97 << 6;
                              *v179 = 0;
                              *&v179[8] = v101;
                              *&v179[16] = v101;
                              *&v179[24] = 0;
                              *v101 = v74;
                              *(v101 + 8) = v77;
                              *(v101 + 16) = v80;
                              *(v101 + 24) = v83;
                              if (v88 < 0)
                              {
                                sub_100004CEC((v101 + 32), v87, v86);
                                v103 = *&v179[16];
                                v102 = *&v179[8];
                              }

                              else
                              {
                                *(v101 + 32) = v87;
                                *(v101 + 40) = v86;
                                *(v101 + 48) = v168[0];
                                *(v101 + 51) = *(v168 + 3);
                                *(v101 + 55) = v88;
                                v102 = v101;
                                v103 = v101;
                              }

                              *(v101 + 56) = v89;
                              *&v179[16] = v103 + 64;
                              v105 = v161[0];
                              v104 = v161[1];
                              *v181 = v161;
                              *&v181[8] = v169;
                              *&v181[16] = &__p;
                              v106 = v161[0];
                              v107 = (v102 + v161[0] - v161[1]);
                              __p.__r_.__value_.__r.__words[0] = v107;
                              v169[0] = v107;
                              v108 = v107;
                              if (v161[0] == v161[1])
                              {
                                v182 = 1;
                              }

                              else
                              {
                                do
                                {
                                  v109 = *(v106 + 16);
                                  *v108 = *v106;
                                  *(v108 + 16) = v109;
                                  v110 = *(v106 + 32);
                                  *(v108 + 48) = *(v106 + 48);
                                  *(v108 + 32) = v110;
                                  *(v106 + 40) = 0;
                                  *(v106 + 48) = 0;
                                  *(v106 + 32) = 0;
                                  *(v108 + 56) = *(v106 + 56);
                                  v106 += 64;
                                  v108 += 64;
                                }

                                while (v106 != v104);
                                __p.__r_.__value_.__r.__words[0] = v108;
                                v182 = 1;
                                do
                                {
                                  if (*(v105 + 55) < 0)
                                  {
                                    operator delete(*(v105 + 32));
                                  }

                                  v105 += 64;
                                }

                                while (v105 != v104);
                              }

                              sub_10006AF94(v181);
                              v111 = v161[0];
                              v112 = v161[2];
                              v161[0] = v107;
                              v150 = *&v179[16];
                              *&v161[1] = *&v179[16];
                              *&v179[16] = v111;
                              *&v179[24] = v112;
                              *v179 = v111;
                              *&v179[8] = v111;
                              sub_10006B0B0(v179);
                              v100 = v150;
                            }

                            else
                            {
                              *v161[1] = v74;
                              *(v96 + 8) = v77;
                              *(v96 + 16) = v80;
                              *(v96 + 24) = v83;
                              if (v88 < 0)
                              {
                                sub_100004CEC((v96 + 32), v87, v86);
                              }

                              else
                              {
                                *(v96 + 32) = v87;
                                *(v96 + 40) = v86;
                                *(v96 + 48) = v168[0];
                                *(v96 + 51) = *(v168 + 3);
                                *(v96 + 55) = v88;
                              }

                              *(v96 + 56) = v89;
                              v100 = v96 + 64;
                            }

                            v161[1] = v100;
                            if (v88 < 0)
                            {
                              operator delete(v87);
                            }

                            v68 = v68 + 1;
                          }

                          while (v68 != v69);
                          v65 = [obja countByEnumeratingWithState:v176 objects:buf count:16];
                          if (!v65)
                          {
                            v113 = v67 + -0.1;
                            goto LABEL_206;
                          }
                        }
                      }

                      v113 = 99.9;
LABEL_206:

                      *&v161[3] = v113;
                      LOBYTE(v159[0]) = v66 & 1;
                      v64 = v132;
                    }

                    else
                    {
                      v118 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289026;
                        *&buf[4] = 0;
                        v174[0] = 2082;
                        *&v174[1] = "";
                        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,mmiBandsInvalid}", buf, 0x12u);
                      }
                    }
                  }

                  else
                  {
                    v117 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289026;
                      *&buf[4] = 0;
                      v174[0] = 2082;
                      *&v174[1] = "";
                      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,defaultLanguageInvalid}", buf, 0x12u);
                    }
                  }

                  v38 = v135;
                }

                if (LOBYTE(v159[0]) != 1)
                {
                  goto LABEL_230;
                }

                v119 = *(a1 + 144);
                if (!v119)
                {
                  goto LABEL_226;
                }

                v120 = vcnt_s8(v119);
                v120.i16[0] = vaddlv_u8(v120);
                if (v120.u32[0] > 1uLL)
                {
                  v121 = v137;
                  v122 = (a1 + 136);
                  if (v119 <= v137)
                  {
                    v121 = v137 % *(a1 + 144);
                  }
                }

                else
                {
                  v121 = (v119 - 1) & v137;
                  v122 = (a1 + 136);
                }

                v123 = *(*v122 + 8 * v121);
                if (!v123 || (v124 = *v123) == 0)
                {
LABEL_226:
                  operator new();
                }

                while (1)
                {
                  v125 = v124[1];
                  if (v125 == v137)
                  {
                    break;
                  }

                  if (v120.u32[0] > 1uLL)
                  {
                    if (v125 >= v119)
                    {
                      v125 %= v119;
                    }
                  }

                  else
                  {
                    v125 &= v119 - 1;
                  }

                  if (v125 != v121)
                  {
                    goto LABEL_226;
                  }

LABEL_225:
                  v124 = *v124;
                  if (!v124)
                  {
                    goto LABEL_226;
                  }
                }

                if (*(v124 + 8) != v137)
                {
                  goto LABEL_225;
                }

                *(v124 + 24) = v159[0];
                std::string::operator=((v124 + 4), &v159[1]);
                if (v124 + 3 != v159)
                {
                  *(v124 + 22) = v160;
                  sub_10006A454(v124 + 7, v159[6], 0);
                  sub_10006AC94(v124 + 12, v161[0], v161[1], (v161[1] - v161[0]) >> 6);
                }

                v124[15] = v161[3];
LABEL_230:

LABEL_231:
LABEL_232:

                v35 = v145;
LABEL_233:
                *buf = v161;
                sub_10002D8AC(buf);
                sub_10002D950(&v159[4]);
                if (SHIBYTE(v159[3]) < 0)
                {
                  operator delete(v159[1]);
                }

                v158 = v158 + 1;
              }

              while (v158 != v155);
              v36 = [v35 countByEnumeratingWithState:&v162 objects:v172 count:16];
              if (!v36)
              {
LABEL_237:

                (*(*a1 + 16))(a1);
                v126 = 1;
                goto LABEL_248;
              }
            }
          }
        }

        v130 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v174[0] = 2082;
          *&v174[1] = "";
          _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,sourceConfigMissingOrInvalid}", buf, 0x12u);
        }

        (*(*a1 + 16))(a1);
        v126 = 0;
LABEL_248:
      }

      else
      {
        v129 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v174[0] = 2082;
          *&v174[1] = "";
          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,displayTemplatesMissingOrInvalid}", buf, 0x12u);
        }

        (*(*a1 + 16))(a1);
        v126 = 0;
      }
    }

    else
    {
      v127 = SALogObjectGeneral;
      v126 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v174[0] = 2082;
        *&v174[1] = "";
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,Alert dictionary Invalid}", buf, 0x12u);
        v126 = 0;
      }
    }
  }

  else
  {
    v128 = SALogObjectGeneral;
    v126 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v174[0] = 2082;
      *&v174[1] = "";
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,dictionary Invalid}", buf, 0x12u);
      v126 = 0;
    }
  }

  return v126;
}

void sub_100069E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_10006B05C(&a45);

  _Unwind_Resume(a1);
}

void sub_10006A1DC(uint64_t a1)
{
  *(a1 + 80) = xmmword_1000E26C0;
  *(a1 + 56) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v3 >= v2)
  {
    v5 = a1 + 8;
    v6 = *(a1 + 8);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v6) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000509C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v6) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v20[4] = a1 + 8;
    if (v10)
    {
      sub_1000050B4(v5, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    v4 = 24 * v7 + 24;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16) - v12;
    v14 = 24 * v7 - v13;
    memcpy((v11 - v13), v12, v13);
    v15 = *(a1 + 8);
    *(a1 + 8) = v14;
    *(a1 + 16) = v4;
    v16 = *(a1 + 24);
    *(a1 + 24) = 0;
    v20[2] = v15;
    v20[3] = v16;
    v20[0] = v15;
    v20[1] = v15;
    sub_10000510C(v20);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  *(a1 + 16) = v4;
  v17 = *(a1 + 104);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      *(*(a1 + 96) + 8 * i) = 0;
    }

    v19 = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    sub_10002DA64(a1 + 96, v19);
  }

  sub_10006B3A4(a1 + 136);
}

void *sub_10006A338(void *a1)
{
  *a1 = off_10013C7B0;
  v2 = (a1 + 4);
  v3 = (a1 + 1);
  sub_10002D804((a1 + 17));
  sub_10002DA28((a1 + 12));
  v5 = v2;
  sub_100005208(&v5);
  v5 = v3;
  sub_100005208(&v5);
  return a1;
}

void sub_10006A3B8(void *a1)
{
  *a1 = off_10013C7B0;
  v2 = (a1 + 4);
  v3 = (a1 + 1);
  sub_10002D804((a1 + 17));
  sub_10002DA28((a1 + 12));
  v4 = v2;
  sub_100005208(&v4);
  v4 = v3;
  sub_100005208(&v4);
  operator delete();
}

void sub_10006A454(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        std::string::operator=((v8 + 40), (v4 + 5));
        v10 = *v8;
        sub_10006A55C(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_10002D98C(a1, v10);
  }

  if (v4 != a3)
  {
    sub_10006AAC4();
  }
}

void sub_10006A52C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10002D98C(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_10006A55C(void *a1, uint64_t a2)
{
  v4 = sub_100039B6C(a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = sub_10006A5B0(a1, v4, (a2 + 16));
  sub_10006A728(a1, a2, v5);
  return a2;
}

const void **sub_10006A5B0(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_10006A810(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_10004E530(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *sub_10006A728(void *result, void *a2, void *a3)
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

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_10006A810(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10006A900(a1, prime);
    }
  }
}

void sub_10006A900(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100004E38();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_10006AB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006ABB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006ABB4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10002D9D0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_10006AC00(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100004CEC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_10006AC78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006AC94(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    sub_10006AE14(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10006AE54(a1, v11);
    }

    sub_10000509C();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        v15 = *(v6 + 16);
        *v8 = *v6;
        *(v8 + 16) = v15;
        std::string::operator=((v8 + 32), (v6 + 32));
        *(v8 + 56) = *(v6 + 56);
        v8 += 64;
        v6 += 64;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      if (*(v12 - 9) < 0)
      {
        operator delete(*(v12 - 32));
      }

      v12 -= 64;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      do
      {
        v14 = *(v6 + 16);
        *v8 = *v6;
        *(v8 + 16) = v14;
        std::string::operator=((v8 + 32), (v6 + 32));
        *(v8 + 56) = *(v6 + 56);
        v6 += 64;
        v8 += 64;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_10006AE90(a1, v13, a3, v12);
  }
}

void sub_10006AE14(uint64_t *a1)
{
  if (*a1)
  {
    sub_10002D900(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10006AE54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_10006B014(a1, a2);
  }

  sub_10000509C();
}

uint64_t sub_10006AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006AF34(v4, v6);
      v6 += 64;
      v4 = v11 + 64;
      v11 += 64;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10006AF94(v8);
  return v4;
}

uint64_t sub_10006AF34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (*(a2 + 55) < 0)
  {
    sub_100004CEC((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_10006AF94(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10006AFCC(a1);
  }

  return a1;
}

void sub_10006AFCC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 64;
  }
}

void sub_10006B014(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10006B05C(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_10002D8AC(&v3);
  sub_10002D950(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10006B0B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10006B114(uint64_t a1)
{
  *&v16[8] = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  v10 = _Q1;
  v11 = _Q1;
  v12 = 0xBFF0000000000000;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v15 = 0u;
  *v16 = 0u;
  *&v16[16] = 1065353216;
  sub_100040B40(a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memset(v8, 0, sizeof(v8));
  sub_100040B40(a1 + 24);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  memset(v9, 0, sizeof(v9));
  v7 = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v7;
  *(a1 + 80) = v12;
  sub_10006B200(a1 + 88, v13);
  sub_10006B300(a1 + 128, &v15);
  sub_10002D804(&v15);
  sub_10002DA28(v13);
  v17 = v9;
  sub_100005208(&v17);
  v17 = v8;
  sub_100005208(&v17);
}

void sub_10006B200(uint64_t a1, uint64_t *a2)
{
  sub_10006B2A4(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10006B2A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10002DA64(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10006B300(uint64_t a1, uint64_t *a2)
{
  sub_10006B3A4(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10006B3A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10002D840(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10006B400(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 96);
    sub_10002D8AC(&v3);
    sub_10002D950(a2 + 56);
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_10006B46C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10006B55C(a1, prime);
    }
  }
}

void sub_10006B55C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100004E38();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_10006B6C0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 111) < 0)
    {
      operator delete(__p[11]);
    }

    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10006B7C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C818;
  a2[1] = v2;
  return result;
}

void sub_10006B7F0(uint64_t a1, id *a2, uint64_t a3)
{
  v4 = *a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v6 = [v5 objectForKey:@"withLocationText"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SACommonUtils::getStringValue(v6, v10);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = *v10;
        *(a3 + 16) = *&v10[16];
      }
    }

    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v7 = [v5 objectForKey:@"withoutLocationText"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SACommonUtils::getStringValue(v7, v10);
        if (*(a3 + 47) < 0)
        {
          operator delete(*(a3 + 24));
        }

        *(a3 + 24) = *v10;
        *(a3 + 40) = *&v10[16];
      }
    }

    if (*(a3 + 71) < 0)
    {
      operator delete(*(a3 + 48));
    }

    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v8 = [v5 objectForKey:@"toneFile"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SACommonUtils::getStringValue(v8, v10);
        if (*(a3 + 71) < 0)
        {
          operator delete(*(a3 + 48));
        }

        *(a3 + 48) = *v10;
        *(a3 + 64) = *&v10[16];
      }
    }
  }

  else
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 68289026;
      *&v10[8] = 2082;
      *&v10[10] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,DictInvalid}", v10, 0x12u);
    }
  }
}

uint64_t sub_10006BACC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006BB18(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10006BB98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10002DAA8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10006BBE4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_10006BCE0((v8 + 16), (v4 + 2));
        v10 = *v8;
        sub_10006A55C(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_10002DB34(a1, v10);
  }

  if (v4 != a3)
  {
    sub_10006BD30();
  }
}

void sub_10006BCB0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10002DB34(v1, v2);
  __cxa_rethrow();
}

std::string *sub_10006BCE0(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=(a1 + 1, a2 + 1);
  std::string::operator=(a1 + 2, a2 + 2);
  std::string::operator=(a1 + 3, a2 + 3);
  return a1;
}

void sub_10006BD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10006B6C0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006BE18(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_10006B6C0(v3, v1);
  _Unwind_Resume(a1);
}

char *sub_10006BE34(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100004CEC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100004CEC(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100004CEC(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  return __dst;
}

void sub_10006BEFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006BFB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C8A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10006BFE4(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v38[0] = off_10013C818;
  v38[1] = v5;
  v39 = v38;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
    v27 = v7;
    if (v9)
    {
      v29 = *v34;
      v28 = v8;
      do
      {
        v30 = v9;
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v12 = [v8 objectForKey:v11];
            v13 = v12;
            if (v12)
            {
              v41 = 0u;
              memset(&v42, 0, sizeof(v42));
              memset(buf, 0, sizeof(buf));
              v37 = v12;
              if (!v39)
              {
                sub_1000053C4();
              }

              (*(*v39 + 48))(v39, &v37, buf);

              v14 = v11;
              sub_1000060C4(__p, [v11 UTF8String]);
              v15 = sub_100039B6C(a3, __p);
              v16 = v15;
              v17 = a3[1];
              if (!*&v17)
              {
                goto LABEL_31;
              }

              v18 = vcnt_s8(v17);
              v18.i16[0] = vaddlv_u8(v18);
              v19 = v18.u32[0];
              if (v18.u32[0] > 1uLL)
              {
                v20 = v15;
                if (v15 >= *&v17)
                {
                  v20 = v15 % *&v17;
                }
              }

              else
              {
                v20 = (*&v17 - 1) & v15;
              }

              v23 = *(*a3 + 8 * v20);
              if (!v23 || (v24 = *v23) == 0)
              {
LABEL_31:
                operator new();
              }

              while (1)
              {
                v25 = v24[1];
                if (v25 == v16)
                {
                  if (sub_10004E530(a3, v24 + 2, __p))
                  {
                    v8 = v28;
                    std::string::operator=((v24 + 5), buf);
                    std::string::operator=((v24 + 8), &buf[24]);
                    std::string::operator=((v24 + 11), &v42);
                    if (SHIBYTE(v32) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v42.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v41) < 0)
                    {
                      operator delete(*&buf[24]);
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }

                    goto LABEL_40;
                  }
                }

                else
                {
                  if (v19 > 1)
                  {
                    if (v25 >= *&v17)
                    {
                      v25 %= *&v17;
                    }
                  }

                  else
                  {
                    v25 &= *&v17 - 1;
                  }

                  if (v25 != v20)
                  {
                    goto LABEL_31;
                  }
                }

                v24 = *v24;
                if (!v24)
                {
                  goto LABEL_31;
                }
              }
            }

            v22 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,templateObjInvalid}", buf, 0x12u);
            }

LABEL_40:
          }

          else
          {
            v21 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#igneous,KeyInvalid}", buf, 0x12u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v9);
    }

    v7 = v27;
  }

  return sub_10006BB18(v38);
}

uint64_t sub_10006C60C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006C658(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10006C760(uint64_t a1, id *a2, uint64_t a3)
{
  v4 = *a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sub_10001D128(a3, [v4 UTF8String]);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_10006C810(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006C85C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10006C8DC(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    *(v4 + 32) = *(a2 + 56);
    sub_10006BBE4(v4, *(a2 + 40), 0);
  }

  return a1;
}

void *sub_10006C930(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10006C9A8((__dst + 3), a2 + 24);
  return __dst;
}

void sub_10006C98C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006C9A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10006B46C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10006CA20(a1, i + 2);
  }

  return a1;
}

const void **sub_10006CA20(void *a1, const void **a2)
{
  v4 = sub_100039B6C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_10006CC80();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10004E530(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10006CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10006B6C0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006CCFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10006B6C0(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10006CD18(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000F1DC(v11, a3);
  *a1 = off_10013FBE0;
  sub_10000F274(v11);
  *a1 = off_10013C9C8;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#regTest,int}", v8, 0x12u);
  }

  return a1;
}

void sub_10006CE70(uint64_t a1)
{
  v1 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (v1 != v18)
  {
    do
    {
      sub_10006E650(&v22, v1);
      v19 = v1;
      v2 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v3 = &v23;
        if (v24 < 0)
        {
          v3 = v23;
        }

        v4 = &v25;
        if (v26 < 0)
        {
          v4 = v25;
        }

        v5 = v29;
        if (!v29)
        {
          v5 = "";
        }

        v6 = &v29;
        if (v30 < 0)
        {
          v6 = v5;
        }

        *buf = 68293379;
        *&buf[4] = 0;
        v49 = 2082;
        v50 = "";
        v51 = 1025;
        *v52 = v22;
        *&v52[4] = 2081;
        *&v52[6] = v3;
        v53 = 2081;
        v54 = v4;
        v55 = 2049;
        v56 = v31;
        v57 = 2049;
        v58 = v32;
        v59 = 2049;
        v60 = v33;
        v61 = 2049;
        v62 = v34;
        v63 = 2049;
        v64 = v35;
        v65 = 2049;
        v66 = v36;
        v67 = 2049;
        v68 = v37;
        v69 = 2049;
        v70 = v38;
        v71 = 2049;
        v72 = v39;
        v73 = 2049;
        v74 = v40;
        v75 = 1025;
        v76 = v41;
        v77 = 2049;
        v78 = (v43 - v42) >> 2;
        v79 = 2049;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
        v81 = 2081;
        v82 = v6;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,log, GridOrTileId:%{private}d, region:%{private, location:escape_only}s, country:%{private, location:escape_only}s, swStartingLat:%{private}0.3f, swStartingLon:%{private}0.3f, gridLatOffset:%{private}0.3f, gridLonOffset:%{private}0.3f, swLat:%{private}0.3f, swLon:%{private}0.3f, neLat:%{private}0.3f, neLon:%{private}0.3f, refreshRate:%{private}0.3f, gridSizeInDegree:%{private}0.3f, gridZoomLevel:%{private}d, NumberOfUnSupportedGrids:%{private}lu, NumberOfNonDitheringChannels:%{private}lu, livabilityChannelPrefix:%{private, location:escape_only}s}", buf, 0xB4u);
      }

      v8 = v45[0];
      v7 = v45[1];
      while (v8 != v7)
      {
        if (*(v8 + 23) < 0)
        {
          sub_100004CEC(__p, *v8, *(v8 + 1));
        }

        else
        {
          v9 = *v8;
          v21 = *(v8 + 2);
          *__p = v9;
        }

        v10 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (v21 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          *buf = 68289283;
          *&buf[4] = 0;
          v49 = 2082;
          v50 = "";
          v51 = 2081;
          *v52 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,printLBChannelInformation, dithChanName:%{private, location:escape_only}s}", buf, 0x1Cu);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = (v8 + 24);
      }

      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v49 = 2082;
        v50 = "";
        v51 = 2050;
        *v52 = v44;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,printLBChannelInformation, ParticipationPercentageOfDitheringChannels:%{public}0.3f}", buf, 0x1Cu);
        v12 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v49 = 2082;
        v50 = "";
        v51 = 2049;
        *v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,printLBChannelInformation, NumberOfNonDitheringChannels:%{private}lu}", buf, 0x1Cu);
      }

      v14 = v46;
      v13 = v47;
      while (v14 != v13)
      {
        if (*(v14 + 23) < 0)
        {
          sub_100004CEC(__p, *v14, *(v14 + 1));
        }

        else
        {
          v15 = *v14;
          v21 = *(v14 + 2);
          *__p = v15;
        }

        v16 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (v21 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 68289283;
          *&buf[4] = 0;
          v49 = 2082;
          v50 = "";
          v51 = 2081;
          *v52 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,printLBChannelInformation, nonDithChanName:%{private, location:escape_only}s}", buf, 0x1Cu);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v14 = (v14 + 24);
      }

      *buf = &v46;
      sub_100005208(buf);
      *buf = v45;
      sub_100005208(buf);
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }

      v1 = v19 + 280;
    }

    while (v19 + 280 != v18);
  }
}

uint64_t sub_10006D380(uint64_t *a1, void *a2)
{
  v2 = a2;
  v65 = 0;
  v48 = v2;
  if (v2)
  {
    v64 = 0;
    SACommonUtils::readArrayFromKey(v2, @"SafetyAlertCoverageDetails_v1", &v65, &v64);
    v50 = v64;
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v68 = 0;
      LOWORD(__p[0]) = 2082;
      *(__p + 2) = "";
      WORD1(__p[1]) = 2050;
      *(&__p[1] + 4) = v65;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,regionSize,size, regionSize:%{public}lu}", buf, 0x1Cu);
    }

    if (v65)
    {
      v5 = 0;
      *&v4 = 68289026;
      v47 = v4;
      do
      {
        *buf = 0;
        v79 = 0;
        v80 = 0;
        v78 = 0;
        memset(__p, 0, sizeof(__p));
        v70 = 0u;
        memset(v71, 0, sizeof(v71));
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0;
        v83 = 0;
        v84 = 0;
        v82 = 0;
        v81 = 0x4059000000000000;
        v85 = 0x4059000000000000;
        v87 = 0;
        v88 = 0;
        v86 = 0;
        v51 = v5;
        v52 = [v50 objectAtIndex:{v47, v48}];
        if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          memset(__p, 0, 24);
          v6 = [(SACommonUtils *)v52 objectForKey:@"Region"];
          if (v6)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              SACommonUtils::getStringValue(v6, v66);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = *v66;
              __p[2] = *&v66[16];
            }
          }

          if (SHIBYTE(__p[5]) < 0)
          {
            operator delete(__p[3]);
          }

          memset(&__p[3], 0, 24);
          v7 = [(SACommonUtils *)v52 objectForKey:@"CountryOfRelevance"];
          if (v7)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              SACommonUtils::getStringValue(v7, v66);
              if (SHIBYTE(__p[5]) < 0)
              {
                operator delete(__p[3]);
              }

              *&__p[3] = *v66;
              __p[5] = *&v66[16];
            }
          }

          SACommonUtils::readDoubleFromKey(v52, @"StartingSWLat", &v72, v8);
          SACommonUtils::readDoubleFromKey(v52, @"StartingSWLon", &v72 + 1, v9);
          *&v73 = 0;
          SACommonUtils::readDoubleFromKey(v52, @"gridLatOffset", &v73, v10);
          *(&v73 + 1) = 0;
          SACommonUtils::readDoubleFromKey(v52, @"gridLonOffset", &v73 + 1, v11);
          SACommonUtils::readDoubleFromKey(v52, @"SWLat", &v74, v12);
          SACommonUtils::readDoubleFromKey(v52, @"SWLon", &v74 + 1, v13);
          SACommonUtils::readDoubleFromKey(v52, @"NELat", &v75, v14);
          SACommonUtils::readDoubleFromKey(v52, @"NELon", &v75 + 1, v15);
          SACommonUtils::readDoubleFromKey(v52, @"GridSizeInDegree", &v76 + 1, v16);
          v77 = -1;
          v17 = [(SACommonUtils *)v52 objectForKey:@"GridZoom"];
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v77 = [v17 intValue];
            }
          }

          SACommonUtils::readDoubleFromKey(v52, @"RefreshRate", &v76, v18);
          if (SHIBYTE(v71[0]) < 0)
          {
            operator delete(v70);
          }

          v70 = 0uLL;
          v71[0] = 0;
          v19 = [(SACommonUtils *)v52 objectForKey:@"ChannelTopic"];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              SACommonUtils::getStringValue(v19, v66);
              if (SHIBYTE(v71[0]) < 0)
              {
                operator delete(v70);
              }

              v70 = *v66;
              v71[0] = *&v66[16];
            }
          }

          if (SHIBYTE(v71[3]) < 0)
          {
            operator delete(v71[1]);
          }

          memset(&v71[1], 0, 24);
          v20 = [(SACommonUtils *)v52 objectForKey:@"LivabilityChannelPrefix"];
          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              SACommonUtils::getStringValue(v20, v66);
              if (SHIBYTE(v71[3]) < 0)
              {
                operator delete(v71[1]);
              }

              *&v71[1] = *v66;
              v71[3] = *&v66[16];
            }
          }

          v63 = 0;
          SACommonUtils::readIntegerListFromKey(v52, @"ListOfUnsupportedGrids", &v63, &v78);
          v62 = 0;
          v61 = 0;
          SACommonUtils::readArrayFromKey(v52, @"SafetyAlertSupportedChannelsForRegion", &v62, &v61);
          v53 = v61;
          v21 = v62;
          v22 = SALogObjectGeneral;
          v23 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            if (!v23)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
LABEL_50:
              v26 = 0;
              while (2)
              {
                v27 = [v53 objectAtIndex:v26];
                v28 = [v27 objectForKey:@"ChannelType"];
                if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v29 = [v28 intValue];
                }

                else
                {
                  v29 = -1;
                }

                v57 = 0;
                SACommonUtils::readDoubleFromKey(v27, @"ParticipationPercentage", &v57, v30);
                v56 = 0;
                if (v29 == 1)
                {
                  v54 = 0uLL;
                  v55 = 0;
                  v32 = sub_100042820();
                  if (sub_100042478(v32, @"ChannelNamePrefix", &v54))
                  {
                    sub_1000048B8(&v82, &v54);
                  }

                  else
                  {
                    SACommonUtils::readStringListFromKey(v27, @"ChannelName", &v56, &v82);
                  }

                  v81 = v57;
                  v38 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *v66 = 68289283;
                    *&v66[4] = 0;
                    *&v66[8] = 2082;
                    *&v66[10] = "";
                    *&v66[18] = 2049;
                    *&v66[20] = 0xAAAAAAAAAAAAAAABLL * (v83 - v82);
                    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,Dithering, channelNameSize:%{private}llu}", v66, 0x1Cu);
                  }

                  v40 = v82;
                  v39 = v83;
                  if (v82 != v83)
                  {
                    v41 = SALogObjectGeneral;
                    do
                    {
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        v42 = v40;
                        if (*(v40 + 23) < 0)
                        {
                          v42 = *v40;
                        }

                        *v66 = 68289283;
                        *&v66[4] = 0;
                        *&v66[8] = 2082;
                        *&v66[10] = "";
                        *&v66[18] = 2081;
                        *&v66[20] = v42;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,nonDithering, channelName:%{private, location:escape_only}s}", v66, 0x1Cu);
                        v41 = SALogObjectGeneral;
                      }

                      v40 += 3;
                    }

                    while (v40 != v39);
                  }

LABEL_83:
                  if (SHIBYTE(v55) < 0)
                  {
                    operator delete(v54);
                  }
                }

                else
                {
                  if (!v29)
                  {
                    v85 = v57;
                    v54 = 0uLL;
                    v55 = 0;
                    v31 = sub_100042820();
                    if (sub_100042478(v31, @"ChannelNamePrefix", &v54))
                    {
                      sub_1000048B8(&v86, &v54);
                    }

                    else
                    {
                      SACommonUtils::readStringListFromKey(v27, @"ChannelName", &v56, &v86);
                    }

                    v33 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *v66 = 68289283;
                      *&v66[4] = 0;
                      *&v66[8] = 2082;
                      *&v66[10] = "";
                      *&v66[18] = 2049;
                      *&v66[20] = 0xAAAAAAAAAAAAAAABLL * (v87 - v86);
                      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,nonDithering, channelNameSize:%{private}llu}", v66, 0x1Cu);
                    }

                    v35 = v86;
                    v34 = v87;
                    if (v86 != v87)
                    {
                      v36 = SALogObjectGeneral;
                      do
                      {
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                        {
                          v37 = v35;
                          if (*(v35 + 23) < 0)
                          {
                            v37 = *v35;
                          }

                          *v66 = 68289283;
                          *&v66[4] = 0;
                          *&v66[8] = 2082;
                          *&v66[10] = "";
                          *&v66[18] = 2081;
                          *&v66[20] = v37;
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,nonDithering, channelName:%{private, location:escape_only}s}", v66, 0x1Cu);
                          v36 = SALogObjectGeneral;
                        }

                        v35 += 3;
                      }

                      while (v35 != v34);
                    }

                    goto LABEL_83;
                  }

                  SACommonUtils::readStringListFromKey(v27, @"ChannelName", &v56, &v58);
                }

                if (++v26 >= v62)
                {
                  goto LABEL_86;
                }

                continue;
              }
            }

            *v66 = 68289283;
            *&v66[4] = 0;
            *&v66[8] = 2082;
            *&v66[10] = "";
            *&v66[18] = 1025;
            *&v66[20] = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,SafetyAlertSupportedChannelsForRegion, channelArrayCount:%{private}d}", v66, 0x18u);
            v58 = 0;
            v59 = 0;
            v60 = 0;
            if (v62)
            {
              goto LABEL_50;
            }

LABEL_86:
            sub_10006E00C(a1 + 1, buf);
            *v66 = &v58;
            sub_100005208(v66);
            v25 = 0;
          }

          else
          {
            if (v23)
            {
              *v66 = v47;
              *&v66[4] = 0;
              *&v66[8] = 2082;
              *&v66[10] = "";
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,nosafetyAlertSupportedChannelsForRegions}", v66, 0x12u);
            }

            v25 = 1;
          }
        }

        else
        {
          v24 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v66 = 68289282;
            *&v66[8] = 2082;
            *&v66[10] = "";
            *&v66[18] = 2050;
            *&v66[20] = v51;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,regionIsNotDictionary, index:%{public}lu}", v66, 0x1Cu);
          }

          v25 = 8;
        }

        *v66 = &v86;
        sub_100005208(v66);
        *v66 = &v82;
        sub_100005208(v66);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (SHIBYTE(v71[3]) < 0)
        {
          operator delete(v71[1]);
        }

        if (SHIBYTE(v71[0]) < 0)
        {
          operator delete(v70);
        }

        if (SHIBYTE(__p[5]) < 0)
        {
          operator delete(__p[3]);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v25 | 8) != 8)
        {
          v44 = 0;
          v43 = v50;
          goto LABEL_105;
        }

        v5 = v51 + 1;
      }

      while (v51 + 1 < v65);
    }

    v43 = v50;
    (*(*a1 + 16))(a1);
    v44 = 1;
  }

  else
  {
    v45 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v68 = 0;
      LOWORD(__p[0]) = 2082;
      *(__p + 2) = "";
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,readRegionConfigFromFile,Dictionary is nil}", buf, 0x12u);
    }

    v43 = 0;
    v44 = 0;
  }

LABEL_105:

  return v44;
}