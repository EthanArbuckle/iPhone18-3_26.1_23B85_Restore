void sub_10009E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E064(uint64_t a1, char **a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  v3 = off_100B50F80;

  return sub_10009DB3C(v3, a2);
}

void sub_10009E0D0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

id sub_10009E0EC(uint64_t a1)
{
  v2 = *(*a1 + 8);

  return v2;
}

void sub_10009E108(float a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 8) = 2082;
  *(a4 + 10) = v6;
}

BOOL sub_10009E12C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_10009E14C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 **a4, char a5)
{
  v56 = a3;
  [*(a1 + 240) removeAllObjects];
  sub_100079510(a1 + 248, *(a1 + 256));
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
  [*(a1 + 272) removeAllObjects];
  *(a1 + 281) = a5;
  v58 = +[NSMutableDictionary dictionary];
  v59 = +[NSMutableString string];
  v7 = *a4;
  v8 = a4[1];
  if (*a4 == v8)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      sub_10003B85C(v7, buf);
      if (v85 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = [NSString stringWithFormat:@"%@ ", v12];
      [v59 appendString:v13];

      if (v85 < 0)
      {
        operator delete(*buf);
      }

      v15 = *v7;
      v7 += 20;
      v14 = v15;
      if (v15 == 16)
      {
        ++v10;
      }

      if (v14 == 2)
      {
        ++v9;
      }
    }

    while (v7 != v8);
  }

  [v58 setObject:v59 forKeyedSubscript:@"ServiceUUID"];
  v16 = [NSNumber numberWithUnsignedShort:v9];
  [v58 setObject:v16 forKeyedSubscript:@"NumberOf16bitUUID"];

  v17 = [NSNumber numberWithUnsignedShort:v10];
  [v58 setObject:v17 forKeyedSubscript:@"NumberOf128bitUUID"];

  [v58 setObject:*(a1 + 88) forKeyedSubscript:@"BundleID"];
  v18 = [NSNumber numberWithBool:a4[1] != *a4];
  [v58 setObject:v18 forKeyedSubscript:@"registerForSpecificGATTServices"];

  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v56 count] != 0);
  [v58 setObject:v19 forKeyedSubscript:@"registerForSpecificDevices"];

  v20 = sub_100007EE8();
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10009F5C4;
  v75[3] = &unk_100ADF820;
  v55 = v58;
  v76 = v55;
  sub_10000CA94(v20, v75);
  if (*(a1 + 281) != 1)
  {
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v21 = v56;
    v27 = [v21 countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (!v27)
    {
      goto LABEL_58;
    }

    v28 = *v68;
    while (1)
    {
      v29 = 0;
      do
      {
        if (*v68 != v28)
        {
          objc_enumerationMutation(v21);
        }

        v30 = *(*(&v67 + 1) + 8 * v29);
        v31 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v32 = off_100B508C8;
        sub_100007E30(__p, "IsAppleWatch");
        v33 = sub_10004EB40(v32, v30, __p);
        v34 = v33;
        if (v66 < 0)
        {
          operator delete(__p[0]);
          if (v34)
          {
LABEL_45:
            v35 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Not adding watch to connection options", buf, 2u);
            }

            goto LABEL_56;
          }
        }

        else if (v33)
        {
          goto LABEL_45;
        }

        v36 = *(a1 + 240);
        v37 = [ConnectOptions alertOptionsWithConnectionAlerts:1 disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:0];
        [v36 setObject:v37 forKey:v30];

        if (qword_100B50F78 != -1)
        {
          sub_10083B1A8();
        }

        if (sub_100052A90(qword_100B50F70, v30))
        {
          v38 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ is already connected ! firing event now", buf, 0xCu);
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B84C8(off_100B512F0, a2, a1, v30, 1u);
        }

LABEL_56:
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v21 countByEnumeratingWithState:&v67 objects:v82 count:16];
      if (!v27)
      {
        goto LABEL_58;
      }
    }
  }

  v73 = 0uLL;
  v74 = 0uLL;
  v71 = 0uLL;
  v72 = 0uLL;
  if (qword_100B50900 != -1)
  {
    sub_10083B180();
  }

  v21 = sub_10009FBE4(qword_100B508F8);
  v22 = [v21 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v22)
  {
    v23 = *v72;
    do
    {
      v24 = 0;
      do
      {
        if (*v72 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v71 + 1) + 8 * v24);
        if (qword_100B50F78 != -1)
        {
          sub_10083B1A8();
        }

        if (sub_100052A90(qword_100B50F70, v25))
        {
          v26 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "registerForConnectionEventsWithOptionsforApp - notifyConnectionEventDidOccur - Device:%{public}@", buf, 0xCu);
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B84C8(off_100B512F0, a2, a1, v25, 1u);
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v22);
  }

LABEL_58:

  v39 = *a4;
  v40 = a4[1];
  if (*a4 != v40)
  {
    v41 = 0;
    while (1)
    {
      v42 = *v39;
      v81 = *(v39 + 4);
      v80 = v42;
      v43 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_10003B85C(&v80, buf);
        v44 = buf;
        if (v85 < 0)
        {
          v44 = *buf;
        }

        *v78 = 136446210;
        v79 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Parsing %{public}s", v78, 0xCu);
        if (v85 < 0)
        {
          operator delete(*buf);
        }
      }

      if (v41 > 3)
      {
        break;
      }

      v45 = [ConnectOptions alertOptionsWithConnectionAlerts:1 disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:0];
      *buf = &v80;
      v46 = sub_10009F344(a1 + 248, &v80);
      v47 = *(v46 + 56);
      *(v46 + 56) = v45;

      ++v41;
      v39 += 20;
      if (v39 == v40)
      {
        goto LABEL_70;
      }
    }

    v48 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 4;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Exceeded the number of allowed services (%d)", buf, 8u);
    }
  }

LABEL_70:
  if (qword_100B50900 != -1)
  {
    sub_10083B180();
  }

  sub_10009F454(qword_100B508F8, a4);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v49 = v62 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v50)
  {
    v51 = *v62;
    do
    {
      v52 = 0;
      do
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v61 + 1) + 8 * v52);
        if (qword_100B50F78 != -1)
        {
          sub_10083B1A8();
        }

        if (sub_100052A90(qword_100B50F70, v53) && sub_1004F9DBC(a1, v53))
        {
          v54 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ is already connected and has an existing service, firing event now", buf, 0xCu);
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B84C8(off_100B512F0, a2, a1, v53, 1u);
        }

        v52 = v52 + 1;
      }

      while (v50 != v52);
      v50 = [v49 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v50);
  }
}

void sub_10009ECF0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 176) == 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857998();
    }
  }

  else if (*(a1 + 178) == 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085795C();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = xpc_dictionary_get_value(value, "kCBMsgArgOptions");
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v24 = sub_100066200(v4, "kCBConnectionEventMatchingOptionPeripheralUUIDs");
    v22 = v4;
    v23 = sub_100013CA4(v4, 0, v5, v6, v7, v8, v9, v10, "kCBConnectionEventMatchingOptionServiceUUIDs");
    v11 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handleRegisterForConnectionEventsWithOptionsMsg peripherals:%@", &buf, 0xCu);
    }

    buf = 0uLL;
    v35 = 0;
    v18 = v23;
    if (*(a1 + 80) > 0 || (v19 = sub_10000C798(), (*(*v19 + 416))(v19)))
    {
      v18 = sub_100013CA4(v22, 0, v12, v13, v14, v15, v16, v17, "kCBConnectionEventMatchingOptionAllPeripherals");
      v20 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 134217984;
        *&v33[4] = v29;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "handleRegisterForConnectionEventsWithOptionsMsg allPeripherals:%lld", v33, 0xCu);
      }
    }

    if (!v18 && (*(&buf + 1) != buf || v29 || v24 && [v24 count]))
    {
      v21 = sub_100007EE8();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3321888768;
      v25[2] = sub_10009F1E4;
      v25[3] = &unk_100B04B38;
      v27 = a1;
      v26 = v24;
      sub_10000CB74(__p, &buf);
      __p[3] = v29;
      sub_10000D334(v21, v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }
}

void sub_10009F168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void sub_10009F1E4(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  sub_10000CB74(__p, a1 + 6);
  sub_10009F298(v3, v4, v5, __p, a1[9] != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10009F27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009F298(uint64_t a1, unint64_t a2, void *a3, unsigned __int8 **a4, char a5)
{
  v9 = a3;
  v10 = sub_10005D040(a1, a2, 0);
  if (v10)
  {
    sub_10009E14C(v10, a2, v9, a4, a5);
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_1008246E4();
  }
}

uint64_t sub_10009F344(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_1000994CC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10009F408(uint64_t a1)
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

id sub_10009F454(uint64_t a1, unsigned __int8 **a2)
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 216);
  if (v5 != (a1 + 224))
  {
    do
    {
      v6 = sub_10004DF60(v5 + 32);
      v11 = 0;
      v12 = 0;
      sub_10004DFB4(v13, v6);
      sub_10070B42C(a1, v13, 0, &v11);
      if (v11 && sub_1005B370C(v11, a2))
      {
        [v4 addObject:v6];
      }

      if (v12)
      {
        sub_100117644(v12);
      }

      v7 = *(v5 + 1);
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
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (a1 + 224));
  }

  return v4;
}

void sub_10009F58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009F5C4()
{
  v0 = *(*sub_10000F034() + 376);

  return v0();
}

void sub_10009F630(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgUUIDs"))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_10000CB74(&v23, &v27);
    v28 = v27;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008573D0();
    }

    v12 = v23;
    v13 = v24;
    if (v23 != v24)
    {
      do
      {
        sub_10003B85C(v12, __p);
        if (v22 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        v15 = [NSString stringWithUTF8String:v14];
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_10009F93C(off_100B512F0, *(a1 + 128), v15))
        {
          sub_10000CDB8(&v27, v12);
        }

        v12 = (v12 + 20);
      }

      while (v12 != v13);
      v12 = v23;
    }

    if (v12)
    {
      v24 = v12;
      operator delete(v12);
    }

    v16 = sub_100007EE8();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3321888768;
    v19[2] = sub_10009FCB4;
    v19[3] = &unk_100B04C40;
    v19[4] = a1;
    v19[5] = v26;
    sub_10000CB74(v20, &v27);
    v20[3] = v4;
    sub_10000D334(v16, v19);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }

  reply = xpc_dictionary_create_reply(a2);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v18);
    xpc_release(v18);
  }

  xpc_release(v4);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_10009F8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 112);
  if (v33)
  {
    *(v31 - 104) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009F93C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    goto LABEL_14;
  }

  v8 = *(a1 + 232);
  v7 = a1 + 232;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2 && !(*(**(v9 + 40) + 16))(*(v9 + 40)))
    {
      v14 = *(v9 + 40);
      if (v14)
      {
        v13 = sub_10009FA18(v14, v5);
        goto LABEL_15;
      }

LABEL_14:
      v13 = 1;
      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

uint64_t sub_10009FA18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && (_os_feature_enabled_impl() & 1) == 0 || !*(a1 + 200) || ![v3 length])
  {
LABEL_19:
    v8 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(a1 + 200);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * v7) isEqualToString:{v3, v10}])
          {

            goto LABEL_19;
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083BC40();
    }

    v8 = 0;
  }

  return v8;
}

id sub_10009FBE4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 216);
  v4 = (a1 + 224);
  if (v3 != (a1 + 224))
  {
    do
    {
      v5 = sub_10004DF60(v3 + 32);
      [v2 addObject:v5];

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return v2;
}

void sub_10009FCB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  v3 = sub_10009FBE4(qword_100B508F8);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (qword_100B50F78 != -1)
        {
          sub_10085A8C0();
        }

        if (sub_100052A90(qword_100B50F70, v7))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if ((sub_10004FF0C(off_100B508C8, v7, *(v2 + 96), *(v2 + 48)) & 1) == 0)
          {
            v9 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            v10 = *(v2 + 96);
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = v7;
            v11 = v9;
            v12 = "Bundle %@ is not allowed to access device %@";
            v13 = 22;
LABEL_29:
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
            goto LABEL_26;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if ((sub_1003AF1AC(off_100B512F0, *(v2 + 128), v7) & 1) == 0)
          {
            v14 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            v21 = v7;
            v11 = v14;
            v12 = "Session cannot access device %@";
            v13 = 12;
            goto LABEL_29;
          }

          if (*(a1 + 40) && *(a1 + 48) == *(a1 + 56))
          {
            goto LABEL_22;
          }

          if (qword_100B50900 != -1)
          {
            sub_10085771C();
          }

          if (sub_10070BFF0(qword_100B508F8, v7, (a1 + 48), *(v2 + 184), *(v2 + 200), 0))
          {
LABEL_22:
            v8 = sub_10005201C(v7, *(v2 + 168), *(v2 + 80));
            xpc_array_append_value(*(a1 + 72), v8);
            xpc_release(v8);
          }
        }

LABEL_26:
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v15 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v4 = v15;
    }

    while (v15);
  }
}

void sub_10009FFCC(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 1560) = 256;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "kIOMessageCanSystemSleep";
    v8 = "unknown";
    if (a2 == -536870272)
    {
      v8 = "kIOMessageSystemWillSleep";
    }

    if (a2 == -536870144)
    {
      v9 = "kIOMessageSystemHasPoweredOn";
    }

    else
    {
      v9 = v8;
    }

    if (a2 != -536870288)
    {
      v7 = v9;
    }

    *buf = 67109378;
    *&buf[4] = a2;
    *&buf[8] = 2080;
    *&buf[10] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "powerManagementEventSystemSleep msgType:%x(%s)", buf, 0x12u);
  }

  if (a2 == -536870144)
  {
    *(a1 + 1561) = sub_1000A2CA4(a1, 2u, 0);
    if (*(a1 + 1496) == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v10 = v12 - *(a1 + 1496);
    }

    *(a1 + 1496) = 0;
  }

  else
  {
    v10 = 0.0;
    if (a2 == -536870272)
    {
      *(a1 + 1561) = sub_1000A2CA4(a1, 1u, 0);
      *(a1 + 1428) = 0;
      +[NSDate timeIntervalSinceReferenceDate];
      *(a1 + 1496) = v11;
    }

    else
    {
      if (a2 != -536870288)
      {
        goto LABEL_21;
      }

      if ((*(a1 + 1428) & 1) == 0)
      {
        *(a1 + 1561) = sub_1000A2CA4(a1, 0, 0);
        *(a1 + 1428) = 1;
      }
    }

    *(a1 + 1560) = 1;
  }

LABEL_21:
  *(a1 + 1568) = a3;
  v13 = qword_100BCE8D8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    switch(a2)
    {
      case -536870288:
        v14 = "kIOMessageCanSystemSleep";
        break;
      case -536870144:
        v14 = "kIOMessageSystemHasPoweredOn";
        break;
      case -536870272:
        v14 = "kIOMessageSystemWillSleep";
        break;
      default:
        v14 = "unknown";
        break;
    }

    if (*(a1 + 1560))
    {
      v15 = 89;
    }

    else
    {
      v15 = 78;
    }

    if (*(a1 + 1561))
    {
      v16 = 89;
    }

    else
    {
      v16 = 78;
    }

    v17 = *(a1 + 1568);
    v18 = sub_10000C798();
    v19 = (*(*v18 + 1048))(v18);
    *buf = 136316418;
    if (v19)
    {
      v20 = 89;
    }

    else
    {
      v20 = 78;
    }

    *&buf[4] = v14;
    *&buf[12] = 1024;
    if (a2 == -536870272)
    {
      v21 = 89;
    }

    else
    {
      v21 = 78;
    }

    *&buf[14] = v15;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    *&buf[24] = 2048;
    *&buf[26] = v17;
    *&buf[34] = 1024;
    *&buf[36] = v20;
    *&buf[40] = 1024;
    *&buf[42] = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "powerManagementMessage %s fPendingSleepAck:%c fPendingSleepAllow:%c fPendingSleepAckMessageArgument:%p requiresWillSleepWorkaround:%c canDefer:%c", buf, 0x2Eu);
  }

  v22 = sub_10000C798();
  if (((a2 == -536870272) & (*(*v22 + 1048))(v22)) == 1)
  {
    v23 = sub_100017F4C();
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_1004A518C;
    v94[3] = &unk_100AE15D8;
    v94[4] = a1;
    v95 = a2 == -536870272;
    sub_10000CA94(v23, v94);
  }

  else
  {
    sub_1000A11BC(a1, a2 == -536870272);
  }

  v24 = sub_10000C798();
  if (v10 <= (*(*v24 + 504))(v24))
  {
    return;
  }

  v25 = sub_10000C7D0();
  (*(*v25 + 1296))(v25);
  v26 = sub_10000C798();
  v27 = (*(*v26 + 424))(v26) ^ 1;
  if (a2 != -536870144)
  {
    LOBYTE(v27) = 1;
  }

  if (v27)
  {
    return;
  }

  v28 = *(sub_10000C7D0() + 800);
  if (v28 - 2000 > 0x7CF)
  {
    if (v28 - 1 > 0x7CE)
    {
      if (v28 - 5000 > 0x3E7)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100831798();
        }

        return;
      }

      if (!(*(*a1 + 184))(a1, 0))
      {
        return;
      }

      v113 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      memset(v103, 0, sizeof(v103));
      memset(buf, 0, sizeof(buf));
      v36 = sub_10000C7D0();
      v37 = (*(*v36 + 1208))(v36, 0, buf);
      v31 = v37;
      v38 = 0;
      if (*&buf[12])
      {
        v39 = v37 == 0;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
    }

    else
    {
      *v98 = 0;
      *v97 = 0;
      WORD2(v93) = 0;
      LOWORD(v93) = 0;
      if ((*(*a1 + 184))(a1, 0))
      {
        if (v28 < 0x13)
        {
          v43 = sub_10000C7D0();
          v31 = (*(*v43 + 1200))(v43, 0, v98, v97, &v93 + 4, &v93);
        }

        else
        {
          v113 = 0;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v104 = 0u;
          memset(v103, 0, sizeof(v103));
          memset(buf, 0, sizeof(buf));
          v35 = sub_10000C7D0();
          v31 = (*(*v35 + 1208))(v35, 0, buf);
          if (!v31)
          {
            *v98 = *&buf[4];
            WORD2(v93) = *&buf[12];
          }
        }
      }

      else
      {
        v31 = 205;
      }

      v38 = 0;
      v40 = WORD2(v93) != 0;
    }
  }

  else
  {
    *v97 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    HIDWORD(v87) = 0;
    if ((*(*a1 + 184))(a1, 0))
    {
      v29 = qword_100BCE8D8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = HIDWORD(v92);
        *&buf[8] = 1024;
        *&buf[10] = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Calling PPS - durationSleep %d, controllerDidSleep %d", buf, 0xEu);
      }

      if (v28 < 0xBB8)
      {
        v41 = sub_10000C7D0();
        v31 = (*(*v41 + 1232))(v41, v97, &v93 + 4, &v93, &v92 + 4, &v92, &v91 + 4, &v91, &v90 + 4, &v90, &v89 + 4, &v89, &v88 + 4, &v88, &v87 + 4);
        v42 = qword_100BCE8D8;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67112704;
          *&buf[4] = v31;
          *&buf[8] = 1024;
          *&buf[10] = *v97;
          *&buf[14] = 1024;
          *&buf[16] = HIDWORD(v93);
          *&buf[20] = 1024;
          *&buf[22] = v93;
          *&buf[26] = 1024;
          *&buf[28] = HIDWORD(v92);
          *&buf[32] = 1024;
          *&buf[34] = v92;
          *&buf[38] = 1024;
          *&buf[40] = HIDWORD(v91);
          *&buf[44] = 1024;
          *&buf[46] = v91;
          *&buf[50] = 1024;
          *&buf[52] = HIDWORD(v90);
          *&buf[56] = 1024;
          *&buf[58] = v90;
          *&buf[62] = 1024;
          v103[0] = HIDWORD(v89);
          LOWORD(v103[1]) = 1024;
          *(&v103[1] + 2) = v89;
          HIWORD(v103[2]) = 1024;
          v103[3] = HIDWORD(v88);
          LOWORD(v103[4]) = 1024;
          *(&v103[4] + 2) = v88;
          HIWORD(v103[5]) = 1024;
          v103[6] = HIDWORD(v87);
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "PPS completed with result %d durationTotal %d, durationActive %d, durationIdle %d, durationSleep %d disableCounter %d, iPATxBT %d, ePATxBT %d, iPATxLE %d, ePATxLE %d, connectedRxBT %d, connectedRxLE %d, scanRxBT %d scanRxLE %d, totalPHYCal %d", buf, 0x5Cu);
        }

        v38 = HIDWORD(v92) == 0;
      }

      else
      {
        memset(v103, 0, 28);
        memset(buf, 0, sizeof(buf));
        v30 = sub_10000C7D0();
        v31 = (*(*v30 + 1648))(v30, 0, buf);
        if (v31)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
        }

        else
        {
          v34 = *&buf[12];
          v33 = *&buf[40];
          v32 = LOWORD(v103[1]);
          HIDWORD(v92) = *&buf[12];
        }

        v44 = qword_100BCE8D8;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 67109632;
          *&v98[4] = v34;
          *&v98[8] = 1024;
          *&v98[10] = v33;
          v99 = 1024;
          v100 = v32;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Enhanced PPS completed - mainCoreSleepPercentage %d - secondaryCoreSleepPercentage %d - scanCoreSleepPercentage %d", v98, 0x14u);
        }

        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
      v31 = 205;
    }

    v45 = HIDWORD(v92);
    v40 = HIDWORD(v92) != 0;
    v46 = qword_100BCE8D8;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v31;
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(v92);
      *&buf[14] = 1024;
      *&buf[16] = v45 != 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "result %d, durationSleep %d, controllerDidSleep %d", buf, 0x14u);
    }
  }

  if (v31)
  {
    return;
  }

  if (v40)
  {
    return;
  }

  v47 = sub_10000C798();
  if (((*(*v47 + 352))(v47) & 1) == 0)
  {
    v48 = sub_10000C798();
    if (!(*(*v48 + 368))(v48))
    {
      return;
    }
  }

  if (qword_100B50910 != -1)
  {
    sub_1008317CC();
  }

  v49 = *(off_100B50908 + 42) + *(off_100B50908 + 41);
  if (v49)
  {
    v50 = sub_10000C798();
    if (!(*(*v50 + 368))(v50))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008317F4();
      }

      return;
    }
  }

  v51 = qword_100BCE8D8;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218752;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v49;
    *&buf[18] = 1024;
    *&buf[20] = 0;
    *&buf[24] = 1024;
    *&buf[26] = v38;
    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Detected that BT did not sleep during AP sleep of %lld seconds.  Restarting nb connections: %d, controllerDidSleep: %d, retry: %d", buf, 0x1Eu);
  }

  v52 = sub_10000C7D0();
  v53 = sub_1004106D0(v52, 0xBB8u);
  v54 = v53;
  if (v53)
  {
    v55 = qword_100BCE8D8;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Disabling abort after PPS completed", buf, 2u);
    }
  }

  if (!v38 || (v56 = sub_10000C798(), !(*(*v56 + 368))(v56)))
  {
    if (v54)
    {
      return;
    }

    goto LABEL_107;
  }

  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v57 = sub_10000C7D0();
  v58 = (*(*v57 + 1232))(v57, &v93 + 4, &v93, &v92 + 4, &v92, &v91 + 4, &v91, &v90 + 4, &v90, &v89 + 4, &v89, &v88 + 4, &v88, &v87 + 4, &v87);
  v59 = qword_100BCE8D8;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v58;
    *&buf[8] = 1024;
    *&buf[10] = v92;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Retry PPS completed with result %d, durationSleep %d", buf, 0xEu);
  }

  if (v58)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831878();
    }

    return;
  }

  if (v92)
  {
    return;
  }

  if (qword_100B50910 != -1)
  {
    sub_1008317CC();
  }

  v61 = *(off_100B50908 + 41);
  v62 = *(off_100B50908 + 42);
  v63 = v62 + v61;
  if (!(v62 + v61))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831A58();
    }

    goto LABEL_107;
  }

  if (v61 > 0 || v62 >= 1)
  {
    memset(buf, 0, 24);
    if (qword_100B50F68 != -1)
    {
      sub_1008318EC();
    }

    sub_1000ADA24(off_100B50F60, buf);
    v64 = *buf;
    v65 = *&buf[8];
    if (*buf == *&buf[8])
    {
LABEL_126:
      if (qword_100B508B0 != -1)
      {
        sub_100831988();
      }

      sub_100029630(off_100B508A8);
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      obj = v83 = 0u;
      v70 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
      v79 = v63;
      v71 = 0;
      if (v70)
      {
        v72 = *v83;
        do
        {
          v73 = 0;
          do
          {
            if (*v83 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v74 = *(*(&v82 + 1) + 8 * v73);
            if (qword_100B508D0 != -1)
            {
              sub_1008319B0();
            }

            if (sub_100788ED8(off_100B508C8, v74))
            {
              v75 = qword_100BCE8D8;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                *v98 = 138412290;
                *&v98[4] = v74;
                _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "LE companion found %@", v98, 0xCu);
              }

              ++v71;
            }

            v73 = v73 + 1;
          }

          while (v70 != v73);
          v70 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v70);
      }

      v76 = v79 == v71;
      if (v79 == v71)
      {
        v77 = qword_100BCE8D8;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1008319D8();
        }
      }
    }

    else
    {
      while (1)
      {
        v66 = *v64;
        v86 = 0;
        v67 = sub_1000BE4B4();
        sub_100007E30(v98, "HasTS");
        v68 = (*(*v67 + 784))(v67, v66, v98, &v86) != 0;
        v69 = v86;
        if (v101 < 0)
        {
          operator delete(*v98);
        }

        if ((v68 & v69) != 0)
        {
          break;
        }

        if (++v64 == v65)
        {
          goto LABEL_126;
        }
      }

      v78 = qword_100BCE8D8;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v66, v98);
        sub_100831914(v98, v97, v78);
      }

      v76 = 1;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v76)
    {
LABEL_107:
      if (qword_100B50AA0 != -1)
      {
        sub_100831A8C();
      }

      v60 = off_100B50A98;
      sub_100007E30(&__p, "");
      sub_100007E30(buf, "");
      sub_1005A24D4(v60, 653, &__p, 1, 6, 0, buf);
    }
  }
}

void sub_1000A1104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000A11BC(uint64_t a1, int a2)
{
  if (*(a1 + 1560) != 1)
  {
LABEL_39:
    LOBYTE(v5) = 0;
    goto LABEL_42;
  }

  v4 = sub_10000C798();
  v5 = (*(*v4 + 1048))(v4) & a2;
  if (v5 == 1)
  {
    if (*(a1 + 1576) == 1)
    {
      v6 = *(a1 + 1577);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 1576);
    v9 = *(a1 + 1577);
    LODWORD(v24) = 67109888;
    if (a2)
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    HIDWORD(v24) = v6 & 1;
    v25 = 1024;
    *v26 = v8;
    *&v26[4] = 1024;
    *&v26[6] = v9;
    *v27 = 1024;
    *&v27[2] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "respondToSleepIfPossible canRespond:%d fLeScanStateStable:%d fLeAdvStateStable:%d canDefer:%c", &v24, 0x1Au);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11 - *(a1 + 1496);
  if ((v6 & 1) == 0)
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 1561))
      {
        v19 = 89;
      }

      else
      {
        v19 = 78;
      }

      if (*(a1 + 1577))
      {
        v20 = 89;
      }

      else
      {
        v20 = 78;
      }

      v21 = *(a1 + 1576);
      HIDWORD(v24) = v19;
      v25 = 2048;
      LODWORD(v24) = 67110146;
      if (v21)
      {
        v22 = 89;
      }

      else
      {
        v22 = 78;
      }

      *v26 = v12;
      if (a2)
      {
        v23 = "YES";
      }

      else
      {
        v23 = "NO";
      }

      *&v26[8] = 1024;
      *v27 = v20;
      *&v27[4] = 1024;
      v28 = v22;
      v29 = 2080;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "respondToSleepIfPossible cannot respond allow:%c Sleep:%fsec LeAdvStable:%c LeScanStable:%c canDefer:%s", &v24, 0x28u);
    }

    goto LABEL_39;
  }

  if (v5)
  {
    LOBYTE(v5) = *(a1 + 1561);
  }

  v13 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 1561))
    {
      v14 = 89;
    }

    else
    {
      v14 = 78;
    }

    LODWORD(v24) = 67109632;
    if (a2)
    {
      v15 = 89;
    }

    else
    {
      v15 = 78;
    }

    HIDWORD(v24) = v14;
    v25 = 2048;
    *v26 = v12;
    *&v26[8] = 1024;
    *v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "respondToSleepIfPossible responding allow:%c willSleep:%fsec canDefer:%c", &v24, 0x18u);
  }

  v16 = *(a1 + 1412);
  v17 = *(a1 + 1568);
  if (*(a1 + 1561) == 1)
  {
    IOAllowPowerChange(v16, v17);
  }

  else
  {
    IOCancelPowerChange(v16, v17);
  }

  *(a1 + 1560) = 0;
  *(a1 + 1568) = 0;
LABEL_42:
  if (*(a1 + 1720) == 1)
  {
    LOBYTE(v24) = 0;
    sub_1000216B4(&v24);
    sub_100256EF0(v5 & 1);
    sub_100022214(&v24);
    sub_10002249C(&v24);
  }
}

uint64_t sub_1000A14E8(uint64_t a1)
{
  if ((*(*a1 + 408))(a1))
  {
    return 60;
  }

  else
  {
    return 180;
  }
}

uint64_t sub_1000A1538(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  if (a3 == -469794804 && a4 != 0)
  {
    return off_100B6D1E8(*a4, *(a4 + 1));
  }

  return result;
}

void sub_1000A1568(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4)
{
  v4 = sub_1000124E8(a1, a2, a3, a4);
  *v4 = off_100AEE6C0;
  v4[17] = 0;
  v4[16] = v4 + 17;
  v4[18] = 0;
  operator new();
}

void sub_1000A198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  sub_10000CEDC(v6, *(v5 + 136));
  sub_10007A588(v5);
  _Unwind_Resume(a1);
}

id sub_1000A1A4C(uint64_t a1)
{
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A1AC4();
  }

  *(*(a1 + 32) + 236) = 1;
  v2 = *(a1 + 32);

  return [v2 scheduleDiscoveryUpdateImmediate:1];
}

void *sub_1000A1AE4(void *a1, uint64_t a2)
{
  *a1 = &off_100AF7B80;
  sub_100044BBC(a1 + 1);
  a1[9] = a2;
  return a1;
}

void *sub_1000A1B30(void *a1, uint64_t a2)
{
  *sub_1000A1AE4(a1, a2) = &off_100AF7B30;
  if (qword_100B6E2E0 != -1)
  {
    sub_10082E894();
  }

  return a1;
}

void *sub_1000A1B94(void *a1, uint64_t a2)
{
  v3 = sub_1000A1AE4(a1, a2);
  *v3 = &off_100AF7E40;
  v3[12] = 0;
  v3[11] = 0;
  v3[10] = v3 + 11;
  *(v3 + 104) = 0;
  *(v3 + 106) = 0;
  if (qword_100B6E2E8 != -1)
  {
    sub_10082FC04();
  }

  return a1;
}

void *sub_1000A1C0C(void *a1, uint64_t a2)
{
  v3 = sub_1000A1AE4(a1, a2);
  *v3 = &off_100B073F8;
  v3[11] = 0;
  v3[12] = 0;
  v3[10] = v3 + 11;
  *(v3 + 52) = 0;
  if (qword_100BC7000 != -1)
  {
    sub_10085ED38();
  }

  return a1;
}

void *sub_1000A1C80(void *a1, uint64_t a2)
{
  v3 = sub_1000A1AE4(a1, a2);
  *v3 = &off_100AF9228;
  v3[11] = 0;
  v3[12] = 0;
  v3[10] = v3 + 11;
  *(v3 + 104) = 0;
  if (qword_100B6E818 != -1)
  {
    sub_1008325F8();
  }

  return a1;
}

void *sub_1000A1CF4(void *a1, uint64_t a2)
{
  v3 = sub_1000A1AE4(a1, a2);
  *v3 = &off_100B00448;
  v3[12] = 0;
  v3[11] = 0;
  v3[10] = v3 + 11;
  if (qword_100B6F658 != -1)
  {
    sub_10084B510();
  }

  return a1;
}

void *sub_1000A1D64(void *a1, uint64_t a2)
{
  v3 = sub_1000A1AE4(a1, a2);
  *v3 = &off_100AFE460;
  v3[12] = 0;
  v3[11] = 0;
  v3[10] = v3 + 11;
  if (qword_100B6F0E0 != -1)
  {
    sub_1008464F0();
  }

  return a1;
}

uint64_t **sub_1000A1DD0(uint64_t **result, unint64_t *a2, unint64_t *a3)
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

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_100083B10(v8);
      while (a2 != a3)
      {
        sub_1003834AC(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = sub_100083B10(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_100084E60(&v10);
  }

  while (a2 != a3)
  {
    result = sub_1000452CC(v5, a2++);
  }

  return result;
}

void sub_1000A1EC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1ED8(char *__s)
{
  if (qword_100B50B88 != -1)
  {
    sub_1000A2C90();
  }

  v2 = qword_100B50B80;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  v5 = sub_100044414(v2, &__dst);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return v5;
}

void sub_1000A1FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000A1FFC(uint64_t a1, unint64_t *a2)
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

uint64_t **sub_1000A20CC(void *a1, uint64_t a2)
{
  v4 = sub_100059420(&v17, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void sub_1000A2348(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  memset(&v51[1], 0, 32);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].val[0] = 138412290;
    *&buf[0].val[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTSessionMsgHandler::handleAttachMsg name:%@", buf, 0xCu);
  }

  xpc_connection_get_audit_token();
  buf[0] = *&v51[1];
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, buf);
  v8 = v7;
  if (v7)
  {
    v9 = SecTaskCopySigningIdentifier(v7, 0);
    v10 = v9;
    if (v9)
    {
      v11 = CFEqual(v9, @"com.apple.dmd");
      v12 = v11 != 0;
      if (!v11)
      {
        v13 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1000A2798(v13, v14, v15, v16, v17, v18, v19, v20);
        }
      }

      CFRelease(v10);
    }

    else
    {
      v21 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10082E8A8(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v12 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = 0;
  }

  bzero(buf, 0x400uLL);
  v29 = *(a1 + 72);
  v30 = (v29 + 56);
  if (*(v29 + 79) < 0)
  {
    v30 = *v30;
  }

  v31 = v5;
  snprintf(buf, 0x400uLL, "%s-unique-id-%s", v30, [v5 UTF8String]);
  v51[0] = 0;
  v32 = sub_1000A1ED8(buf);
  if (v32)
  {
    v33 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10082E8E0(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    v41 = 0;
  }

  else
  {
    v41 = v51[0];
    if (qword_100B50B88 != -1)
    {
      sub_10082E918();
    }

    v42 = sub_1000117DC(qword_100B50B80, v51[0]);
    if (v42)
    {
      *(v42 + 136) = 1;
      sub_1000A27D0(v42, off_100B543B0, *(a1 + 72));
      v43 = *(a1 + 72);
      v44 = *(v43 + 40);
      asid = xpc_connection_get_asid(*(v43 + 16));
      if (qword_100B50B88 != -1)
      {
        sub_10082E918();
      }

      sub_1000A2854(qword_100B50B80, v51[0], v44, asid);
      *(*(a1 + 72) + 152) = v41;
      if (v12)
      {
        v46 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Session has Managed Config Bundle ID", v52, 2u);
        }

        if (qword_100B50B88 != -1)
        {
          sub_10082E918();
        }

        sub_1006192E4(qword_100B50B80, v51[0]);
      }

      v32 = 0;
    }

    else
    {
      sub_1006144A0(v51);
      v32 = 100;
    }
  }

  v47 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 134218240;
    v53 = v41;
    v54 = 1024;
    v55 = v32;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending the reply now sessionID:%llx result:%d", v52, 0x12u);
  }

  reply = xpc_dictionary_create_reply(xdict);
  v49 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgSessionID", v41);
    xpc_dictionary_set_uint64(v49, "kCBMsgArgResult", v32);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v49);
    xpc_release(v49);
  }

  v50 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Done sending the reply now", v52, 2u);
  }
}

uint64_t sub_1000A27D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[1] = 0;
  v7[0] = a2;
  v6[0] = 0;
  sub_100007F88(v6, a1);
  v7[2] = v7;
  sub_1000A1FFC(a1 + 104, v7)[5] = a3;
  return sub_1000088CC(v6);
}

void sub_1000A2840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2854(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v19[1] = 0;
  v20 = a2;
  v19[0] = 0;
  sub_100007F88(v19, a1 + 40);
  v10 = *(a1 + 224);
  v9 = a1 + 224;
  v8 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v9;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * v14);
  }

  while (v8);
  if (v11 != v9 && *(v11 + 32) <= a2)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100853A74();
    }

    v17 = sub_1000117DC(qword_100B50B80, a2);
    if (v17 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v17, &v18);
      sub_100853B20();
    }
  }

  else
  {
LABEL_9:
    v18 = &v20;
    v15 = sub_1000A29C8(v9 - 8, &v20);
    *(v15 + 10) = a3;
    *(v15 + 11) = a4;
  }

  return sub_1000088CC(v19);
}

void sub_1000A29A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_1000A29C8(uint64_t a1, unint64_t *a2)
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

BOOL sub_1000A2A98(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCE6C8, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_10058E2A0(&xmmword_100BCE6C8, &v11);
    v7 = v6[4];
    v8 = v6[5];
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    (v7)(v9, xdict);
  }

  return v5 != 0;
}

BOOL sub_1000A2B94(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCE828, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_1005CD53C(&xmmword_100BCE828, &v11);
    v7 = v6[4];
    v8 = v6[5];
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    (v7)(v9, xdict);
  }

  return v5 != 0;
}

uint64_t sub_1000A2CA4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 >= 3)
    {
      v7 = "systemWillShutDown";
      if (a2 == 3)
      {
        v7 = "systemWillPowerOn";
      }
    }

    else
    {
      v7 = (&off_100AEF2E0)[a2];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PowerManagement event: %{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2020000000;
  v16 = 1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A2F2C;
  v11[3] = &unk_100AEEFE0;
  v11[4] = &buf;
  v12 = a2;
  v13 = a3;
  sub_1000A2E60(a1 + 384, v11);
  if (a2 == 1)
  {
    v8 = sub_10000C7D0();
    (*(*v8 + 3880))(v8);
  }

  v9 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v9;
}

void sub_1000A2E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A2E60(uint64_t a1, void *a2)
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

uint64_t sub_1000A2F2C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 40);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *(*a2 + 8);
        v5 = a2;

        return v4(v5);
      }

      return result;
    }

    result = (**a2)(a2);
LABEL_11:
    *(*(*(v2 + 32) + 8) + 24) &= result;
    return result;
  }

  if (v3 == 2)
  {
    v4 = *(*a2 + 16);
    v5 = a2;

    return v4(v5);
  }

  if (v3 == 4)
  {
    result = (*(*a2 + 24))(a2, *(result + 44));
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000A3064()
{
  v0 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v2[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LPMManager::powerManagementEventSystemWokeUp", v2, 2u);
  }

  v2[0] = 0;
  v2[1] = 0;
  sub_100007F88(v2, &unk_100BCE440);
  byte_100BCE439 = 0;
  sub_10002286C(&stru_100BCE480);
  return sub_1000088CC(v2);
}

id sub_1000A31B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1672);
  v3 = [*(v1 + 1584) screenOn];

  return [v2 screenStateChanged:v3];
}

void sub_1000A3784(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = "off";
    if (a2)
    {
      v5 = "on";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Screen state is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A3C8C;
  v6[3] = &unk_100AEF120;
  v7 = a2;
  sub_1000A3A58(a1 + 744, v6);
}

void sub_1000A3A58(uint64_t a1, void *a2)
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

void sub_1000A3CBC(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A3F54;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1000A3D54(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 120);
  if (*(a1 + 184) == 1 && *(a1 + 352))
  {
    sub_100760A88(a1);
  }

  return sub_1000088CC(v3);
}

void sub_1000A3DC4(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A4028;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1000A3E50(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A40B8;
  v8[3] = &unk_100AE15D8;
  v8[4] = a1;
  v9 = a2;
  sub_10000CA94(v4, v8);
  if (*(a1 + 2277) == 1)
  {
    sub_1007A4E78(a1);
    sub_1007A5954(a1);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = *(a1 + 2760);
  if (Current > v6 && Current - v6 > 604800.0)
  {
    sub_10079CB54(a1);
  }

  v7 = *(a1 + 3264);
  if (Current > v7 && Current - v7 > 604800.0)
  {
    sub_10079CC0C(a1);
  }
}

uint64_t sub_1000A3F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 383) = v2;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::screenStateChanged screenState:%d", v5, 8u);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return sub_10009D6F0(v1);
  }

  return result;
}

uint64_t sub_1000A4028(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 48) = *(result + 40);
  if (*(v1 + 16962) == 1)
  {
    v2 = qword_100BCE9B0;
    if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Screen state changed, updating advertisers", v3, 2u);
    }

    return sub_100086C20();
  }

  return result;
}

int32x4_t sub_1000A40B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 144) = v2;
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 1867);
    if (v2)
    {
      v5 = "On";
    }

    else
    {
      v5 = "Off";
    }

    v6 = [*(v1 + 2136) count];
    v7 = *sub_10000C798();
    v8 = (*(v7 + 744))();
    *buf = 67110402;
    *v93 = v4;
    *&v93[4] = 2082;
    *&v93[6] = v5;
    *&v93[14] = 1024;
    *&v93[16] = v6;
    *&v93[20] = 1024;
    *&v93[22] = v8;
    *&v93[26] = 1024;
    *v94 = sub_10002529C(v1);
    *&v94[4] = 1024;
    *&v94[6] = sub_10007CF9C(v1);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "screenStateChanged fMatchBufferExpectedEntries:0x%d fScreenState:%{public}s fMatchActionTableRulesCount:%d supportedADVBuffers:%d haveAnyHwObjectDiscoveryRequests:%d haveAnyHwAOPBTBufferRequests:%d", buf, 0x2Au);
    if ((*(v1 + 144) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1000677F8(v1, 1);
    sub_1000A4EF8(v1);
    goto LABEL_12;
  }

  if (v2)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ([*(v1 + 2136) count])
  {
    v9 = sub_10000C798();
    if ((*(*v9 + 744))(v9))
    {
      if (*(v1 + 1867) == 255)
      {
        v45 = sub_1007A2D08(v1, 1);
        if (v45)
        {
          v46 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v93 = v45;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "enableMatchActionRulesBuffering failed with result %d", buf, 8u);
          }
        }
      }
    }
  }

  sub_10007AB18(v1);
  sub_10007CD50(v1);
LABEL_12:
  if (sub_1000A5154(v1))
  {
    *(v1 + 1856) = 1;
    v10 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v1 + 1984);
      *buf = 67109120;
      *v93 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Restarting scans since the screen is transitioning while there is a request for active scans fState:%d", buf, 8u);
    }
  }

  v12 = *(v1 + 2064);
  if (v12 == (v1 + 2072))
  {
LABEL_37:
    v23 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v12[5] + 8);
      if (*(v14 + 192))
      {
        break;
      }

      v15 = *(v14 + 216);
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v88 objects:v126 count:16];
      if (v17)
      {
        v18 = *v89;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v89 != v18)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v88 + 1) + 8 * i) intValue])
            {
              v13 = 1;
              goto LABEL_28;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v88 objects:v126 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_28:

      v20 = v12[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v12[2];
          v22 = *v21 == v12;
          v12 = v21;
        }

        while (!v22);
      }

      v12 = v21;
      if (v21 == (v1 + 2072))
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_37;
        }

        break;
      }
    }

    v23 = 1;
    *(v1 + 1856) = 1;
    v24 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v1 + 1984);
      *buf = 67109120;
      *v93 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Restarting scans since the screen is transitioning while there are scan agents with specific usecases fState:%d", buf, 8u);
    }
  }

  if (*(v1 + 1988) != 2 && ((v23 & 1) != 0 || *(v1 + 1856) == 1))
  {
    sub_100017DE0(v1, 1);
  }

  v26 = sub_10000C798();
  if ((*(*v26 + 704))(v26))
  {
    v27 = sub_10000C7D0();
    if ((*(*v27 + 712))(v27, 1))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5408();
      }
    }
  }

  else
  {
    v29 = sub_10000C798();
    if (((*(*v29 + 664))(v29) & 1) != 0 || (v30 = sub_10000C798(), (*(*v30 + 688))(v30)))
    {
      v31 = sub_10000C798();
      v32 = (*(*v31 + 696))(v31);
      v33 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(v1 + 1984);
        *buf = 67109120;
        *v93 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Call LP Core statistic VSC scren:%d", buf, 8u);
      }

      v87 = 0;
      v86 = 0;
      v85 = 0;
      v84 = 0;
      v83 = 0;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0;
      v78 = 0;
      v77 = 0;
      v76 = 0;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = 0;
      v71 = 0;
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v68 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 0;
      v64 = 0;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v59 = 0;
      v35 = sub_10000C7D0();
      v36 = (*(*v35 + 704))(v35, v32, &v87 + 4, &v87, &v86 + 4, &v86, &v85 + 4, &v85, &v84 + 4, &v84, &v83 + 4, &v83, &v82 + 4, &v82, &v81 + 4, &v81, &v80 + 4, &v80, &v79 + 4, &v79, &v78 + 4, &v78, &v77 + 4, &v77, &v76 + 4, &v76, &v75 + 4, &v75, &v74 + 4, &v74, &v73 + 4, &v73, &v72 + 4, &v72, &v71 + 4, &v71, &v70 + 4, &v70, &v69 + 4, &v69, &v68 + 4, &v68, &v67 + 4, &v67, &v66 + 4, &v66, &v65 + 4, &v65, &v64 + 4, &v64, &v63 + 4, &v63, &v62 + 4, &v62, &v61 + 4, &v61, &v60 + 4, &v60, &v59);
      v37 = qword_100BCE918;
      if (v36 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v93 = v36;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error reading getLPCoreStats %{bluetooth:OI_STATUS}u", buf, 8u);
        v37 = qword_100BCE918;
      }

      v38 = *(v1 + 2168) + v84;
      *(v1 + 2168) = v38;
      v39 = *(v1 + 2160) + HIDWORD(v83);
      *(v1 + 2160) = v39;
      v40 = *(v1 + 2184) + v85;
      *(v1 + 2184) = v40;
      v41 = *(v1 + 2176) + HIDWORD(v84);
      *(v1 + 2176) = v41;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134224896;
        *v93 = v38;
        *&v93[8] = 2048;
        *&v93[10] = v39;
        *&v93[18] = 2048;
        *&v93[20] = v40;
        *v94 = 2048;
        *&v94[2] = v41;
        *&v94[10] = 1024;
        *v95 = HIDWORD(v82);
        *&v95[4] = 1024;
        *v96 = v82;
        *&v96[4] = 1024;
        *v97 = HIDWORD(v81);
        *&v97[4] = 1024;
        *v98 = v81;
        *&v98[4] = 1024;
        *v99 = HIDWORD(v80);
        *&v99[4] = 1024;
        *v100 = v80;
        *&v100[4] = 1024;
        *v101 = HIDWORD(v79);
        *&v101[4] = 1024;
        *v102 = v79;
        *&v102[4] = 1024;
        *v103 = HIDWORD(v78);
        *&v103[4] = 1024;
        *v104 = v78;
        *&v104[4] = 1024;
        *v105 = HIDWORD(v77);
        *&v105[4] = 1024;
        *v106 = v77;
        *&v106[4] = 1024;
        *v107 = HIDWORD(v76);
        *&v107[4] = 1024;
        *v108 = v76;
        *&v108[4] = 1024;
        *v109 = HIDWORD(v75);
        *&v109[4] = 1024;
        *v110 = v75;
        *&v110[4] = 1024;
        v111 = HIDWORD(v74);
        v112 = 1024;
        v113 = v74;
        v114 = 1024;
        v115 = HIDWORD(v73);
        v116 = 1024;
        v117 = v73;
        v118 = 1024;
        v119 = HIDWORD(v72);
        v120 = 1024;
        v121 = v72;
        v122 = 1024;
        v123 = HIDWORD(v71);
        v124 = 1024;
        v125 = v71;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LEStats: BMC:%lld LP:%lld, MC: %lld  %lld  ]  RxL:%05d:%05d:%05d  EAdv:%04d:%04d:%04d LeLR:%04d:%04d:%04d Aux:%04d:%04d:%04d Arsp:%04d:%04d:%04d cd:%04d:%04d:%04d aCrc:%05d:%05d:%05d def:%04d:%04d:%04d", buf, 0xBAu);
        v37 = qword_100BCE918;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67114752;
        *v93 = HIDWORD(v70);
        *&v93[4] = 1024;
        *&v93[6] = v70;
        *&v93[10] = 1024;
        *&v93[12] = HIDWORD(v69);
        *&v93[16] = 1024;
        *&v93[18] = v69;
        *&v93[22] = 1024;
        *&v93[24] = HIDWORD(v68);
        *v94 = 1024;
        *&v94[2] = v68;
        *&v94[6] = 1024;
        *&v94[8] = HIDWORD(v67);
        *v95 = 1024;
        *&v95[2] = v67;
        *v96 = 1024;
        *&v96[2] = HIDWORD(v66);
        *v97 = 1024;
        *&v97[2] = v66;
        *v98 = 1024;
        *&v98[2] = HIDWORD(v65);
        *v99 = 1024;
        *&v99[2] = v65;
        *v100 = 1024;
        *&v100[2] = HIDWORD(v64);
        *v101 = 1024;
        *&v101[2] = v64;
        *v102 = 1024;
        *&v102[2] = HIDWORD(v63);
        *v103 = 1024;
        *&v103[2] = v63;
        *v104 = 1024;
        *&v104[2] = HIDWORD(v62);
        *v105 = 1024;
        *&v105[2] = v62;
        *v106 = 1024;
        *&v106[2] = HIDWORD(v61);
        *v107 = 1024;
        *&v107[2] = v61;
        *v108 = 1024;
        *&v108[2] = HIDWORD(v60);
        *v109 = 1024;
        *&v109[2] = v60;
        *v110 = 1024;
        *&v110[2] = v59;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LEStats2: Rxa=%04d tSr=%04d tASr=%04d rSr=%04d tCi=%04d tCr=%04d rsRsp=%04d rsi=%04d rcr=%04d nba=%04d:%04d:%04d:%04d tot:%04d:%04d cden=%04d:%04d:%04d:%04d totAdv=%04d:%04d:%04d:%04d", buf, 0x8Cu);
        v37 = qword_100BCE918;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(v1 + 2780);
        v48 = *(v1 + 2784);
        v49 = *(v1 + 2788);
        *buf = 67110400;
        *v93 = v47;
        *&v93[4] = 1024;
        *&v93[6] = v48;
        *&v93[10] = 1024;
        *&v93[12] = v49;
        *&v93[16] = 1024;
        *&v93[18] = v85 + v47;
        *&v93[22] = 1024;
        *&v93[24] = v84 + v48;
        *v94 = 1024;
        *&v94[2] = v87 + v49;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
        v37 = qword_100BCE918;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(v1 + 2792);
        v51 = *(v1 + 2796);
        v52 = *(v1 + 2800);
        *buf = 67110400;
        *v93 = v50;
        *&v93[4] = 1024;
        *&v93[6] = v51;
        *&v93[10] = 1024;
        *&v93[12] = v52;
        *&v93[16] = 1024;
        *&v93[18] = HIDWORD(v84) + v50;
        *&v93[22] = 1024;
        *&v93[24] = HIDWORD(v83) + v51;
        *v94 = 1024;
        *&v94[2] = HIDWORD(v86) + v52;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
        v37 = qword_100BCE918;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(v1 + 2804);
        v54 = *(v1 + 2808);
        v55 = *(v1 + 2812);
        *buf = 67110400;
        *v93 = v53;
        *&v93[4] = 1024;
        *&v93[6] = v54;
        *&v93[10] = 1024;
        *&v93[12] = v55;
        *&v93[16] = 1024;
        *&v93[18] = v61 + v53;
        *&v93[22] = 1024;
        *&v93[24] = v60 + v54;
        *v94 = 1024;
        *&v94[2] = v64 + v55;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
        v37 = qword_100BCE918;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(v1 + 2816);
        v57 = *(v1 + 2820);
        v58 = *(v1 + 2824);
        *buf = 67110400;
        *v93 = v56;
        *&v93[4] = 1024;
        *&v93[6] = v57;
        *&v93[10] = 1024;
        *&v93[12] = v58;
        *&v93[16] = 1024;
        *&v93[18] = HIDWORD(v60) + v56;
        *&v93[22] = 1024;
        *&v93[24] = v59 + v57;
        *v94 = 1024;
        *&v94[2] = HIDWORD(v63) + v58;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
      }

      v42.i64[0] = __PAIR64__(v84, v85);
      v42.i64[1] = __PAIR64__(HIDWORD(v84), v87);
      v43.i64[0] = __PAIR64__(HIDWORD(v86), HIDWORD(v83));
      v43.i64[1] = __PAIR64__(v60, v61);
      v44 = vaddq_s32(*(v1 + 2796), v43);
      *(v1 + 2780) = vaddq_s32(*(v1 + 2780), v42);
      *(v1 + 2796) = v44;
      v42.i64[0] = __PAIR64__(HIDWORD(v60), v64);
      v42.i64[1] = __PAIR64__(HIDWORD(v63), v59);
      result = vaddq_s32(*(v1 + 2812), v42);
      *(v1 + 2812) = result;
    }
  }

  return result;
}

void sub_1000A4EF8(uint64_t a1)
{
  if (sub_10007D074(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_10007D0DC(a1);
  }

  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1888);
    v8[0] = 67109376;
    v8[1] = v2;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "tryReadAOPBTProxCtxBuffers AOPBTProxContextBufferRequests:%d fAOPBTProxCtxBufferReadInProgress:%d", v8, 0xEu);
  }

  if (*(a1 + 1888) == 1)
  {
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AOPBTProxCtxBuffers already being read, skipping", v8, 2u);
    }
  }

  else if (v2)
  {
    if (!sub_10007D074(a1))
    {
      goto LABEL_27;
    }

    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AOPBTProxCtxBuffer read in progress, pause match All Types match table", v8, 2u);
    }

    if (sub_1000C5CF0(a1, 0, 0))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008752EC();
      }
    }

    else
    {
      if (!sub_10007D0DC(a1))
      {
        goto LABEL_22;
      }

LABEL_27:
      v7 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AOPBTProxCtxBuffer read in progress, pause Proximity Pairing match table", v8, 2u);
      }

      if (sub_1000C5CF0(a1, 7, 0))
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100875354();
        }
      }

      else
      {
LABEL_22:
        *(a1 + 1888) = 1;
        if (qword_100B51098 != -1)
        {
          sub_1008746E4();
        }

        sub_100488120(qword_100B51090);
      }
    }
  }
}

uint64_t sub_1000A5154(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  while (1)
  {
    result = sub_100070B10(v1[5]);
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
    if (v5 == v2)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_1000A51D4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100499A48;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4D8 != -1)
  {
    dispatch_once(&qword_100B6E4D8, block);
  }

  return byte_100B6E4D0;
}

uint64_t sub_1000A5264(uint64_t a1, char a2)
{
  v4 = (*(*a1 + 2608))(a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D7BD4;
  v6[3] = &unk_100AF2330;
  v7 = a2;
  v8 = v4;
  return sub_10002173C(a1, 262, 1, v6, 0);
}

uint64_t sub_1000A5320(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 - 5000 < 0x3E8)
  {
    return 0;
  }

  if (v1 - 1 > 0x7CE)
  {
    return 2 * (v1 - 3000 < 0x3E8);
  }

  if (v1 > 0x16)
  {
    return 2;
  }

  if (v1 == 22)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 - 3000 < 0x3E8);
  }
}

void sub_1000A5378(uint64_t a1, NSObject *a2)
{
  v3 = 136446210;
  v4 = sub_100020304(a1, a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Stack is not ready, cannot send %{public}s", &v3, 0xCu);
}

uint64_t sub_1000A5B88(_BYTE *a1, unsigned int a2, const void *a3, signed int a4, unsigned int a5)
{
  v5 = a2 - 13;
  if (a2 >= 0xD && (byte_100B5C6E6 != 1 || a5 - 250 < 4 || a5 <= 1))
  {
    *a1 = 0;
    a1[1] = (a4 + 9) >> 16;
    a1[2] = (a4 + 9) >> 8;
    a1[3] = a4 + 9;
    if (byte_100B5C820 == 1)
    {
      v11 = qword_100B5C8D0;
    }

    else
    {
      v11 = sub_1001C5474();
    }

    v17 = 0;
    sub_100016250(&v17);
    v12 = v17 + v11;
    v13 = 1000 * (SWORD2(v17) + ((v11 >> 16) >> 16));
    if (v13 > 0xF423F)
    {
      ++v12;
    }

    a1[4] = HIBYTE(v12);
    a1[5] = BYTE2(v12);
    a1[6] = BYTE1(v12);
    a1[7] = v12;
    if (v13 <= 0xF423F)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 - 1000000;
    }

    a1[8] = HIBYTE(v14);
    a1[9] = BYTE2(v14);
    a1[10] = BYTE1(v14);
    a1[11] = v14;
    a1[12] = a5;
    if (v5 < a4)
    {
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
      {
        sub_100812FEC();
      }

      return 0;
    }

    memcpy(a1 + 13, a3, a4);
    if (byte_100B5C6E6 != 1 || a5 - 250 < 4)
    {
      return (a4 + 13);
    }

    if (a5)
    {
      if (a5 == 1 && (sub_1001A81A8(a1, a2) & 1) != 0)
      {
        return (a4 + 13);
      }
    }

    else if (sub_1001A9E78(a1, a2))
    {
      return (a4 + 13);
    }
  }

  return 0;
}

void sub_1000A5D64(uint64_t a1)
{
  v2 = dword_100B52010;
  if (dword_100B52010 == -1)
  {
    goto LABEL_42;
  }

  if (qword_100B5C818 <= dword_100B52008)
  {
LABEL_41:
    write(v2, *(a1 + 32), *(a1 + 48));
    qword_100B5C818 += *(a1 + 48);
LABEL_42:
    sub_1000C522C(*(a1 + 40), *(a1 + 50));
    goto LABEL_43;
  }

  v3 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Rotate log file", buf, 2u);
    v2 = dword_100B52010;
  }

  bzero(buf, 0x400uLL);
  close(v2);
  v4 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  CFDateFormatterSetFormat(v4, @"yyyy-MM-dd_HH-mm-ss");
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(kCFAllocatorDefault, Current);
  StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v4, v6);
  CFRelease(v6);
  CFRelease(v4);
  if (byte_100B5C6E6)
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/bluetoothd-hcilite-%@.pklg", byte_100B5C708, StringWithDate);
  }

  else
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/bluetoothd-hci-%@.pklg", byte_100B5C708, StringWithDate);
  }

  v9 = v8;
  CFStringGetCString(v8, buf, 1024, 0x8000100u);
  rename(qword_100B5C700, buf, v10);
  if (v11 && os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
  {
    sub_100813138();
  }

  CFRelease(v9);
  CFRelease(StringWithDate);
  memset(&v24, 0, sizeof(v24));
  chdir(byte_100B5C708);
  v12 = opendir(byte_100B5C708);
  if (v12)
  {
    v13 = v12;
    memset(v25, 0, 255);
    v14 = readdir(v12);
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      st_ino = 0;
      tv_sec = 0;
      while (1)
      {
        if (stat(v15->d_name, &v24) < 0)
        {
          v19 = qword_100B5C6D8;
          if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
          {
            sub_1008131EC(&v22, v23, v19);
          }

          goto LABEL_24;
        }

        if (!strncmp(v15->d_name, "bluetoothd-hci", 0xEuLL))
        {
          break;
        }

LABEL_24:
        v15 = readdir(v13);
        if (!v15)
        {
          goto LABEL_29;
        }
      }

      if (st_ino)
      {
        if (tv_sec <= v24.st_birthtimespec.tv_sec)
        {
LABEL_23:
          ++v16;
          goto LABEL_24;
        }

        st_ino = v24.st_ino;
        tv_sec = v24.st_birthtimespec.tv_sec;
      }

      else
      {
        st_ino = v24.st_ino;
        tv_sec = v24.st_birthtimespec.tv_sec;
      }

      __strlcpy_chk();
      goto LABEL_23;
    }

    v16 = 0;
LABEL_29:
    if (v16 > dword_100B5200C && dword_100B5200C)
    {
      snprintf(buf, 0x400uLL, "%s/%s", byte_100B5C708, v25);
      remove(buf, v20);
    }

    closedir(v13);
  }

  else if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
  {
    sub_100812EA0();
  }

  v21 = open(qword_100B5C700, 521, 420);
  dword_100B52010 = v21;
  if (v21 != -1)
  {
    qword_100B5C818 = 0;
    if (off_100BC9C10)
    {
      off_100BC9C10();
      v2 = dword_100B52010;
    }

    else
    {
      v2 = v21;
    }

    if (word_100B5C808)
    {
      write(v2, qword_100B5C810, word_100B5C808);
      qword_100B5C818 += word_100B5C808;
      v2 = dword_100B52010;
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
  {
    sub_10081322C();
  }

LABEL_43:
  free(*(a1 + 32));
  free(*(a1 + 40));
}

BOOL sub_1000A61B8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_1000A6224(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = qword_100B5F6B8;
  if (qword_100B5F6B8)
  {
    v4 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v7 = result;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(v3 + v8);
        if (v10)
        {
          result = v10(v7, a2, *(v3 + v8 + 8), a3);
          v3 = qword_100B5F6B8;
          v4 = qword_100BCDFC8;
        }

        ++v9;
        v8 += 16;
      }

      while (v9 < *(v4 + 7));
    }
  }

  return result;
}

void sub_1000A62C8(unsigned __int8 *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vsc.c", 293, "pData");
    }

    v23 = a1;
    v24 = a2;
    v27 = 1;
    v25 = a2;
    if (a2 == 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vsc.c", 297, "ByteStream_NumReadBytesAvail(bs) >= 1");
    }

    v7 = *a1;
    v26 = 2;
    if (a2 - 2 != a1[1])
    {
      sub_1000D660C();
    }

    switch(v7)
    {
      case 14:
        if (a2 <= 5)
        {

          sub_1000D660C();
        }

        break;
      case 255:
        if (a2 <= 2)
        {
          sub_1000D660C();
        }

        if (off_100B60F20)
        {
          off_100B60F20(&v23, a4);
        }

        break;
      case 15:
        if (a2 != 6)
        {
          sub_1000D660C();
          if (a2 <= 2)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vsc.c", 316, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          if (a2 == 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vsc.c", 317, "ByteStream_NumReadBytesAvail(bs) >= 1");
          }

          if (a2 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vsc.c", 318, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }
        }

        v8 = *(a1 + 2);
        v9 = sub_100022244(a1[2]);
        if (v8 == -133)
        {
          v10 = v9;
          if (v9)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Advanced Create Connection failed for %:, sending dummy Connection Complete Event", v11, v12, v13, v14, v15, v16, v17, &dword_100B61148);
              v18 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            v19 = sub_1000E1FE8(&dword_100B61148);
            sub_10023C0C0(v10, v19, &dword_100B61148, 1, 0, v20, v21, v22);
          }
        }

        break;
    }
  }
}

void sub_1000A64E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_626;
  }

  v4 = (a1 + 12);
  v3 = *(a1 + 12);
  v5 = *(a1 + 10);
  if (v5 <= v3)
  {
LABEL_626:
    v294 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_628;
  }

  if (*(a1 + 14) != 1)
  {
    v294 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_628:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1401, v294);
  }

  v6 = a2;
  v7 = *a1;
  v8 = v3 + 1;
  *(a1 + 12) = v3 + 1;
  v9 = *(v7 + v3);
  if (v9 > 0xBA)
  {
    if (*(v7 + v3) > 0xCCu)
    {
      switch(*(v7 + v3))
      {
        case 0xCD:
          v308 = 0uLL;
          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1464, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v19 = *(v7 + v8);
          *(a1 + 12) = v3 + 3;
          v20 = sub_1000ABB80(v19);
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v21 = *(a1 + 10);
            v22 = *(a1 + 12);
            if (v21 - v22 > 3)
            {
              if (*(a1 + 14) == 1)
              {
                v23 = *a1;
                *(a1 + 12) = v22 + 4;
                if ((v21 - (v22 + 4)) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1467, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                *v4 = v22 + 8;
                if ((v21 - (v22 + 8)) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1468, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                *v4 = v22 + 12;
                if ((v21 - (v22 + 12)) <= 3)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1469, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                }

                v24 = 0;
                v25 = v22 + 16;
                *v4 = v25;
                v26 = v25;
                do
                {
                  if (v26 >= v21)
                  {
                    goto LABEL_630;
                  }

                  v27 = v26 + 1;
                  *v4 = v26 + 1;
                  *(&v309[-1] + v24++) = *(v23 + v26++);
                }

                while (v24 != 16);
                if (v21 <= v27)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1476, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                *v4 = v27 + 1;
                if (v21 <= (v27 + 1))
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1477, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                *v4 = v27 + 2;
                if (v21 <= (v27 + 2))
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1478, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                *v4 = v27 + 3;
                if ((v21 - (v27 + 3)) <= 1)
                {
                  *(a1 + 15) = 1;
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  *v4 = v27 + 5;
                  if (v21 > (v27 + 5))
                  {
                    *v4 = v27 + 6;
                    if (v20)
                    {
                      if (off_100B5FF70)
                      {
                        off_100B5FF70(v20);
                      }

                      goto LABEL_609;
                    }

                    if (!sub_10000C240())
                    {
                      goto LABEL_609;
                    }

                    sub_10000AF54("updateBTControllerClockCB size is zero", v182, v183, v184, v185, v186, v187, v188, v303);
                    v189 = sub_10000C050(0x54u);
                    if (!os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_609;
                    }

                    goto LABEL_412;
                  }
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1480, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              v296 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_654:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1466, v296);
            }
          }

          v296 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
          goto LABEL_654;
        case 0xCF:
          v34 = off_100B5FEA8;
          if (!off_100B5FEA8)
          {
            goto LABEL_609;
          }

          v103 = v5 - v8;
          if (v103 == 123)
          {
            v104 = v7 + v8;
            goto LABEL_381;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("BT_VSE_PHY_STATISTIC_DUAL_CORE - Invalid data size %lu", v191, v192, v193, v194, v195, v196, v197, v103);
            v198 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_572;
            }
          }

          goto LABEL_609;
        case 0xD5:
          v99 = qword_100B60008;
          if (!qword_100B60008)
          {
            goto LABEL_609;
          }

          BYTE9(v308) = 0;
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2407, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          LOBYTE(v308) = *(v7 + v8);
          if (v5 <= (v3 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2408, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          BYTE1(v308) = *(v7 + v3 + 2);
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2409, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE2(v308) = *(v7 + v3 + 3);
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2410, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          BYTE3(v308) = *(v7 + v3 + 4);
          if (v5 <= (v3 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2411, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 6;
          BYTE4(v308) = *(v7 + v3 + 5);
          if (v5 <= (v3 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2412, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 7;
          BYTE5(v308) = *(v7 + v3 + 6);
          if (v5 <= (v3 + 7))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2413, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 8;
          BYTE6(v308) = *(v7 + v3 + 7);
          if (v5 <= (v3 + 8))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2414, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 9;
          BYTE7(v308) = *(v7 + v3 + 8);
          if (v5 <= (v3 + 9))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2415, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 10;
          BYTE8(v308) = *(v7 + v3 + 9);
          if (v5 <= (v3 + 10))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2416, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 11;
          BYTE9(v308) = *(v7 + v3 + 10);
          goto LABEL_301;
        case 0xD6:
          v99 = off_100B60000;
          if (!off_100B60000)
          {
            goto LABEL_609;
          }

          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2397, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          LOBYTE(v308) = *(v7 + v8);
          if (v5 <= (v3 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2398, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          BYTE1(v308) = *(v7 + v3 + 2);
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2399, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE2(v308) = *(v7 + v3 + 3);
          goto LABEL_301;
        case 0xD9:
          if (qword_100B60010)
          {
            v325 = 0;
            v323 = 0u;
            v324 = 0u;
            v322 = 0u;
            v320 = 0u;
            memset(v321, 0, sizeof(v321));
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            memset(v309, 0, sizeof(v309));
            v308 = 0u;
            if (sub_1002ED79C(a1, &v308))
            {
              (qword_100B60010)(&v308);
            }
          }

          goto LABEL_609;
        case 0xDA:
          if (off_100B60018)
          {
            v314 = 0u;
            v315 = 0u;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            memset(v309, 0, sizeof(v309));
            v308 = 0u;
            if (sub_1002EDC0C(a1, &v308))
            {
              (off_100B60018)(&v308);
            }
          }

          goto LABEL_609;
        case 0xE5:
          v118 = off_100B5FEE0;
          if (!off_100B5FEE0)
          {
            goto LABEL_609;
          }

          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1859, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v119 = *(v7 + v8);
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1860, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1861, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v120 = *(v7 + (v3 + 3));
          *v4 = v3 + 5;
          v121 = *(v7 + (v3 + 4));
          v122 = v119;
          goto LABEL_334;
        case 0xE6:
          v99 = qword_100B5FFF8;
          if (!qword_100B5FFF8)
          {
            goto LABEL_609;
          }

          *&v310 = 0;
          memset(v309, 0, sizeof(v309));
          v308 = 0u;
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2374, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          LOBYTE(v308) = *(v7 + v8);
          if (v5 - (v3 + 2) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2375, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v308) = *(v7 + v3 + 2);
          *v4 = v3 + 6;
          if (v5 <= (v3 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2376, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 7;
          BYTE8(v308) = *(v7 + (v3 + 6));
          if ((v5 - (v3 + 7)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2377, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v308) = *(v7 + (v3 + 7));
          *v4 = v3 + 11;
          if ((v5 - (v3 + 11)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2378, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v309[0]) = *(v7 + (v3 + 11));
          *v4 = v3 + 15;
          if ((v5 - (v3 + 15)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2379, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v309[0]) = *(v7 + (v3 + 15));
          *v4 = v3 + 19;
          if ((v5 - (v3 + 19)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2380, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v309[0]) = *(v7 + (v3 + 19));
          *v4 = v3 + 23;
          if ((v5 - (v3 + 23)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2381, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v309[0]) = *(v7 + (v3 + 23));
          *v4 = v3 + 27;
          if ((v5 - (v3 + 27)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2382, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v309[1]) = *(v7 + (v3 + 27));
          *v4 = v3 + 31;
          if ((v5 - (v3 + 31)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2383, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v309[1]) = *(v7 + (v3 + 31));
          *v4 = v3 + 35;
          if ((v5 - (v3 + 35)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2384, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v309[1]) = *(v7 + (v3 + 35));
          *v4 = v3 + 39;
          if ((v5 - (v3 + 39)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2385, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v309[1]) = *(v7 + (v3 + 39));
          *v4 = v3 + 43;
          if ((v5 - (v3 + 43)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2386, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v310) = *(v7 + (v3 + 43));
          *v4 = v3 + 47;
          if (v5 <= (v3 + 47))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2387, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 48;
          BYTE4(v310) = *(v7 + (v3 + 47));
          if (v5 <= (v3 + 48))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2388, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 49;
          BYTE5(v310) = *(v7 + (v3 + 48));
          if (v5 <= (v3 + 49))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2389, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 50;
          BYTE6(v310) = *(v7 + (v3 + 49));
LABEL_301:
          v99(&v308);
          goto LABEL_609;
        case 0xE8:
          v28 = qword_100B5FEE8;
          if (!qword_100B5FEE8)
          {
            goto LABEL_609;
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v105 = *(a1 + 10);
            if ((v105 - v8) > 1)
            {
              v106 = (v7 + v8);
              v31 = *v106;
              v32 = v106[1];
              v33 = v3 + 3;
              *v4 = v3 + 3;
              if (v105 <= (v3 + 3))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1875, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              goto LABEL_258;
            }
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1874, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        case 0xE9:
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1576, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v100 = v3 + 2;
          *v4 = v3 + 2;
          v101 = *(v7 + v8);
          if (v101 > 10)
          {
            if (v101 == 11)
            {
              if ((v5 - v100) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1335, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v229 = *(v7 + (v3 + 2));
              *v4 = v3 + 6;
              if ((v5 - (v3 + 6)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1336, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v230 = *(v7 + (v3 + 6));
              *v4 = v3 + 10;
              v231 = off_100B5FE30;
              if (!off_100B5FE30)
              {
                goto LABEL_609;
              }
            }

            else
            {
              if (v101 != 12)
              {
                if (v101 == 33)
                {
                  if (v5 <= v100)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1376, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v3 + 3;
                  if (v5 <= (v3 + 3))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1377, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  v168 = *(v7 + (v3 + 2));
                  *v4 = v3 + 4;
                  if (v5 - (v3 + 4) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1378, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v169 = *(v7 + v3 + 3);
                  v170 = *(v7 + v3 + 4);
                  *v4 = v3 + 6;
                  if ((v5 - (v3 + 6)) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1379, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v171 = (v7 + (v3 + 6));
                  v172 = *v171;
                  v173 = v171[1];
                  *v4 = v3 + 8;
                  if (off_100B5FF28)
                  {
                    off_100B5FF28(v168, v169, v170, v172 | (v173 << 8));
                  }
                }

                goto LABEL_609;
              }

              if ((v5 - v100) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1352, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              v235 = *(v7 + (v3 + 2));
              *v4 = v3 + 4;
              if (v5 <= (v3 + 4))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1353, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              *v4 = v3 + 5;
              v236 = *(v7 + (v3 + 4));
              if (off_100B60050)
              {
                off_100B60050(v235, v236);
              }

              if (!v236)
              {
                goto LABEL_609;
              }

              v231 = qword_100B5FE38;
              if (!qword_100B5FE38)
              {
                goto LABEL_609;
              }

              v229 = v235;
              v230 = v236;
            }

            v231(v229, v230);
            goto LABEL_609;
          }

          if (v101 != 1)
          {
            if (v101 != 2)
            {
              if (v101 != 7)
              {
                goto LABEL_609;
              }

              v102 = v5 - v100;
              if ((v102 & 0x1FFFE) != 0)
              {
                if (off_100B5FE20)
                {
                  off_100B5FE20(v7 + v100, (v102 >> 1), v7 + v100 + (v102 >> 1), (v102 >> 1));
                }

                goto LABEL_609;
              }

              if (!sub_10000C240())
              {
                goto LABEL_609;
              }

              sub_10000AF54("LostDevice size is zero", v260, v261, v262, v263, v264, v265, v266, v303);
              v267 = sub_10000C050(0x54u);
              if (!os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_609;
              }

LABEL_572:
              sub_1000E09C0();
              goto LABEL_609;
            }

            if ((v5 - v100) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1313, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v232 = *(v7 + (v3 + 2));
            *v4 = v3 + 4;
            if (!sub_1000ABB80(v232))
            {
              if (!sub_10000C240())
              {
                goto LABEL_609;
              }

              sub_10000AF54("RSSI Prox alert: ACL handle invalid", v268, v269, v270, v271, v272, v273, v274, v303);
              v275 = sub_10000C050(0x54u);
              if (!os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_609;
              }

              goto LABEL_572;
            }

            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            }

            else
            {
              v233 = *(a1 + 10);
              v234 = *(a1 + 12);
              if (v233 > v234)
              {
                if (*(a1 + 14) == 1)
                {
                  *(a1 + 12) = v234 + 1;
                  if (v233 <= v234 + 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1318, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v234 + 2;
                  if (off_100B5FE28)
                  {
                    off_100B5FE28();
                  }

                  goto LABEL_609;
                }

                v300 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_825:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1317, v300);
              }
            }

            v300 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_825;
          }

          v224 = (v5 - v100);
          if (v224 < 8)
          {
            if (!sub_10000C240())
            {
              goto LABEL_609;
            }

            sub_10000AF54("Sensor state report event returned invalid length %d of data", v252, v253, v254, v255, v256, v257, v258, v224);
            v259 = sub_10000C050(0x54u);
            if (!os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_609;
            }

            goto LABEL_572;
          }

          if (!off_100B5FFA0)
          {
            goto LABEL_609;
          }

          WORD2(v308) = 0;
          LODWORD(v308) = 0;
          if (v5 - v100 <= 5)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1277, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
          }

          sub_1000075EC(&v308, v7 + v100, 6uLL);
          v225 = *(a1 + 12);
          *(a1 + 12) = v225 + 6;
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v226 = *(a1 + 10);
            if (v226 > (v225 + 6))
            {
              if (*(a1 + 14) == 1)
              {
                v227 = *a1;
                *(a1 + 12) = v225 + 7;
                if (v226 <= (v225 + 7))
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1279, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                v228 = *(v227 + (v225 + 6));
                *v4 = v225 + 8;
                off_100B5FFA0(v308 | (WORD2(v308) << 32), v228, *(v227 + (v225 + 7)), v6);
                goto LABEL_609;
              }

              v302 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_889:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1278, v302);
            }
          }

          v302 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_889;
        case 0xEB:
          v107 = off_100B601F8;
          if (!off_100B601F8)
          {
            goto LABEL_609;
          }

          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2216, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v133 = (v7 + v8);
          v134 = *v133;
          v135 = v133[1];
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2217, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v136 = v134 | (v135 << 8);
          *v4 = v3 + 4;
          v137 = *(v7 + (v3 + 3)) != 0;
          goto LABEL_323;
        case 0xEC:
          if (!off_100B5FE98)
          {
            goto LABEL_609;
          }

          v123 = *(a1 + 12) + off_100B5FE98(v7 + v8, (v5 - v8));
          *(a1 + 12) = v123;
          if (*(a1 + 15))
          {
            goto LABEL_384;
          }

          if (*(a1 + 10) != v123)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1675, "ByteStream_NumReadBytesAvail(*pBs) == 0");
          }

          return;
        case 0xED:
          v51 = qword_100B5FFD0;
          if (!qword_100B5FFD0)
          {
            goto LABEL_609;
          }

          v124 = v5 - v8;
          if (v124 > 0x26)
          {
LABEL_385:
            v52 = v7 + v8;
            goto LABEL_415;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("BT_VSE_HID_LATENCY_STATISTICS - Invalid data size %lu", v125, v126, v127, v128, v129, v130, v131, v124);
            v132 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_572;
            }
          }

          goto LABEL_609;
        case 0xEE:
          if (!off_100B5FFE8)
          {
            goto LABEL_609;
          }

          v308 = 0uLL;
          *(v309 + 7) = 0;
          *&v309[0] = 0;
          WORD2(buf) = 0;
          LODWORD(buf) = 0;
          if ((v5 - v8) < 2)
          {
            *(a1 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            v199 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v199 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2324, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v112 = 0;
          }

          else
          {
            v112 = *(v7 + v8);
            *v4 = v3 + 3;
            if (v5 > (v3 + 3))
            {
              *(a1 + 12) = v3 + 4;
              v113 = *(v7 + (v3 + 3));
              if (*(a1 + 10) - (v3 + 4) > 1)
              {
                v114 = *(*a1 + (v3 + 4));
                *(a1 + 12) = v3 + 6;
                if (*(a1 + 10) - (v3 + 6) > 1)
                {
                  v115 = *(*a1 + (v3 + 6));
                  *(a1 + 12) = v3 + 8;
                  if (*(a1 + 10) > (v3 + 8))
                  {
                    v116 = *a1;
                    *(a1 + 12) = v3 + 9;
                    v117 = *(v116 + (v3 + 8)) << 48;
                    if (*(a1 + 10) - (v3 + 9) >= 6)
                    {
                      sub_1000075EC(&buf, *a1 + (v3 + 9), 6uLL);
                      *(a1 + 12) += 6;
                      goto LABEL_495;
                    }

LABEL_494:
                    *(a1 + 15) = 1;
LABEL_495:
                    if (!v114)
                    {
                      goto LABEL_502;
                    }

                    if (*(a1 + 14) == 1)
                    {
                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        v223 = 0;
                      }

                      else
                      {
                        v223 = *(a1 + 10) - *(a1 + 12);
                      }

                      if (v223 >= v114)
                      {
                        __memmove_chk();
                        *v4 += v114;
LABEL_502:
                        off_100B5FFE8(v112, v113, v114, v115, v117 | (buf << 40) | (BYTE1(buf) << 32) | (BYTE2(buf) << 24) | (BYTE3(buf) << 16) | (BYTE4(buf) << 8) | BYTE5(buf), &v308);
                        goto LABEL_609;
                      }

                      v299 = "ByteStream_NumReadBytesAvail(*pBs) >= (length)";
                    }

                    else
                    {
                      v299 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2329, v299);
                  }

                  *(a1 + 15) = 1;
LABEL_493:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  v117 = 0;
                  goto LABEL_494;
                }

                *(a1 + 15) = 1;
LABEL_491:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v222 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v222 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2327, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v115 = 0;
                goto LABEL_493;
              }

              *(a1 + 15) = 1;
LABEL_489:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              v221 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v221 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2326, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v114 = 0;
              goto LABEL_491;
            }

            *(a1 + 15) = 1;
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          v220 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v220 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2325, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v113 = 0;
          goto LABEL_489;
        case 0xEF:
          sub_1002EC850(a1, a2);
          goto LABEL_609;
        case 0xF0:
          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1555, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v139 = *(v7 + v8);
          *v4 = v3 + 3;
          if (v139 == 768)
          {
            if ((v5 - (v3 + 3)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1558, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            v140 = *(v7 + (v3 + 3));
            *v4 = v3 + 7;
            if (off_100B5FE10)
            {
              off_100B5FE10(0, v140);
              off_100B5FE10 = 0;
            }
          }

          goto LABEL_609;
        case 0xF7:
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1585, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          if (v5 <= (v3 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1586, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v97 = *(v7 + v8);
          v8 = v3 + 3;
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1587, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v98 = *(v7 + v3 + 2);
          *v4 = v3 + 4;
          if (v97 || v98 != 146)
          {
            goto LABEL_609;
          }

          goto LABEL_368;
        case 0xFA:
          v67 = qword_100B5FEF0;
          if (!qword_100B5FEF0)
          {
            goto LABEL_609;
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (*(a1 + 10) > v8)
          {
LABEL_230:
            *v4 = v3 + 2;
            v67(*(v7 + v8));
            goto LABEL_609;
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1886, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        case 0xFB:
          v107 = qword_100B5FED8;
          if (!qword_100B5FED8)
          {
            goto LABEL_609;
          }

          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1844, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v138 = (v7 + v8);
          v109 = *v138;
          v110 = v138[1];
          v111 = v3 + 3;
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1845, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          goto LABEL_322;
        case 0xFD:
          v118 = qword_100B5FED0;
          if (!qword_100B5FED0)
          {
            goto LABEL_609;
          }

          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1829, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          if (v5 - (v3 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1830, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v122 = *(v7 + v8);
          v141 = (v7 + v3 + 2);
          v142 = *v141;
          v143 = v141[1];
          *v4 = v3 + 4;
          if ((v5 - (v3 + 4)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1831, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v120 = v142 | (v143 << 8);
          v121 = *(v7 + (v3 + 4));
          *v4 = v3 + 8;
LABEL_334:
          v118(v122, v120, v121);
          goto LABEL_609;
        case 0xFE:
          v107 = qword_100B5FEC8;
          if (!qword_100B5FEC8)
          {
            goto LABEL_609;
          }

          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1813, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v108 = (v7 + v8);
          v109 = *v108;
          v110 = v108[1];
          v111 = v3 + 3;
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1814, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

LABEL_322:
          v136 = v109 | (v110 << 8);
          *v4 = v3 + 4;
          v137 = *(v7 + v111);
LABEL_323:
          v107(v136, v137);
          goto LABEL_609;
        default:
          goto LABEL_609;
      }
    }

    if (v9 == 187)
    {
      v34 = qword_100B5FF60;
      if (!qword_100B5FF60)
      {
        goto LABEL_609;
      }

LABEL_380:
      v104 = v7 + v8;
LABEL_381:
      v34(v104);
      goto LABEL_609;
    }

    if (v9 == 192)
    {
      if (off_100B5FF68)
      {
        v167 = *(a1 + 12) + off_100B5FF68(v7 + v8, (v5 - v8));
        *(a1 + 12) = v167;
        if (!*(a1 + 15))
        {
          if (*(a1 + 10) != v167)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1689, "ByteStream_NumReadBytesAvail(*pBs) == 0");
          }

          return;
        }

LABEL_384:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      goto LABEL_609;
    }

    if (v9 != 193)
    {
      goto LABEL_609;
    }

    if (v5 <= v8)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1417, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    *v4 = v3 + 2;
    if (v5 - (v3 + 2) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1418, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v35 = *(v7 + v8);
    v36 = *(v7 + v3 + 2);
    *(a1 + 12) = v3 + 4;
    v37 = sub_1000ABB80(v36);
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v38 = *(a1 + 10);
      v39 = *(a1 + 12);
      if (v38 - v39 > 3)
      {
        if (*(a1 + 14) == 1)
        {
          v40 = *a1;
          v41 = *(*a1 + v39);
          *(a1 + 12) = v39 + 4;
          if (v38 - (v39 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1421, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v42 = *(v40 + (v39 + 4));
          *v4 = v39 + 8;
          if (v38 - (v39 + 8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1422, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v43 = *(v40 + (v39 + 8));
          *v4 = v39 + 10;
          if (v38 - (v39 + 10) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1423, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v44 = v37;
          v45 = *(v40 + (v39 + 10));
          *v4 = v39 + 12;
          if ((v45 & (v35 == 10)) != 0)
          {
            v35 = -118;
          }

          LODWORD(v308) = 0;
          LODWORD(buf) = 0;
          sub_1000D42DC(&v308, &buf);
          v46 = v35 >= 2u && v44 == 0;
          if (!v46 && v35 != 10)
          {
            if (off_100B5FF78)
            {
              off_100B5FF78(v44, v35, v41, v42, v43, v308, buf);
            }

            goto LABEL_609;
          }

          if (!sub_10000C240())
          {
            goto LABEL_609;
          }

          sub_10000AF54("updateBTControllerClockCB size is zero", v174, v175, v176, v177, v178, v179, v180, v303);
          v181 = sub_10000C050(0x54u);
          if (!os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_609;
          }

LABEL_412:
          sub_1000E09C0();
          goto LABEL_609;
        }

        v297 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_676:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1420, v297);
      }
    }

    v297 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_676;
  }

  if (*(v7 + v3) > 0x85u)
  {
    if (*(v7 + v3) <= 0xAEu)
    {
      switch(*(v7 + v3))
      {
        case 0x86:
          v320 = 0u;
          memset(v321, 0, 27);
          v318 = 0u;
          v319 = 0u;
          v316 = 0u;
          v317 = 0u;
          v314 = 0u;
          v315 = 0u;
          v312 = 0u;
          v313 = 0u;
          v310 = 0u;
          v311 = 0u;
          memset(v309, 0, sizeof(v309));
          v308 = 0u;
          if ((v5 - v8) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1755, "ByteStream_NumReadBytesAvail(*pBs) >= (2)");
          }

          *v4 = v3 + 3;
          __strlcpy_chk();
          if (sub_10000C240())
          {
            sub_10000AF54("controller debug - %s", v10, v11, v12, v13, v14, v15, v16, &v308);
            v17 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = sub_10000C0FC();
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
            }
          }

          goto LABEL_609;
        case 0x88:
          if (!off_100B5FE80)
          {
            goto LABEL_609;
          }

          v68 = *(a1 + 12) + off_100B5FE80(v7 + v8, (v5 - v8));
          *(a1 + 12) = v68;
          if (*(a1 + 15))
          {
            goto LABEL_384;
          }

          if (*(a1 + 10) != v68)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1647, "ByteStream_NumReadBytesAvail(*pBs) == 0");
          }

          return;
        case 0x8C:
          if (!off_100B5FFD8)
          {
            goto LABEL_609;
          }

          v310 = 0u;
          v311 = 0u;
          memset(v309, 0, sizeof(v309));
          v308 = 0u;
          if (v5 <= v8)
          {
            *(a1 + 15) = 1;
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            *v4 = v3 + 2;
            if (v5 - (v3 + 2) > 1)
            {
              v63 = *(v7 + v8);
              v64 = *(v7 + v3 + 2);
              *v4 = v3 + 4;
              if (v5 <= (v3 + 4))
              {
                *(a1 + 15) = 1;
                memset(v307, 0, 7);
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else
              {
                *v4 = v3 + 5;
                memset(v307, 0, 7);
                if (v5 > (v3 + 5))
                {
                  *v4 = v3 + 6;
                  LOBYTE(v307[0]) = *(v7 + (v3 + 5));
                  v65 = LOBYTE(v307[0]);
                  v66 = (v307[0] & 0xFE) == 2;
                  if (LOBYTE(v307[0]) == 3)
                  {
                    v65 = 1;
                    LOBYTE(v307[0]) = 1;
                  }

                  else if (LOBYTE(v307[0]) == 2)
                  {
                    v65 = 0;
                    LOBYTE(v307[0]) = 0;
                  }

                  if (*(a1 + 14) == 1)
                  {
                    v276 = *(a1 + 12);
                    if (*(a1 + 10) - v276 >= 6)
                    {
                      sub_1000075EC(v307 + 1, *a1 + v276, 6uLL);
                      *(a1 + 12) += 6;
                      v65 = LOBYTE(v307[0]);
                      v190 = (BYTE1(v307[0]) << 40) | (BYTE2(v307[0]) << 32) | (HIBYTE(v307[0]) << 24) | (LOBYTE(v307[1]) << 16) | (BYTE1(v307[1]) << 8) | BYTE2(v307[1]);
LABEL_423:
                      *(v306 + 3) = 0;
                      v306[0] = 0;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2262, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v200 = *(a1 + 12);
                        if (*(a1 + 10) - v200 >= 6)
                        {
                          sub_1000075EC(v306 + 1, *a1 + v200, 6uLL);
                          *(a1 + 12) += 6;
                          goto LABEL_442;
                        }
                      }

                      *(a1 + 15) = 1;
LABEL_442:
                      LOBYTE(v306[0]) = 1;
                      *(&v309[0] + 1) = (BYTE2(v306[0]) << 32) | (BYTE1(v306[0]) << 40) | (HIBYTE(v306[0]) << 24) | (LOBYTE(v306[1]) << 16) | (BYTE1(v306[1]) << 8) | BYTE2(v306[1]) | 0x1000000000000;
                      *(v305 + 3) = 0;
                      v305[0] = 0;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2267, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      v201 = v190 | (v65 << 48);
                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      }

                      else
                      {
                        v202 = *(a1 + 12);
                        if (*(a1 + 10) - v202 >= 6)
                        {
                          sub_1000075EC(v305 + 1, *a1 + v202, 6uLL);
                          *(a1 + 12) += 6;
                          goto LABEL_448;
                        }
                      }

                      *(a1 + 15) = 1;
LABEL_448:
                      v203 = BYTE2(v305[0]) << 32;
                      v204 = v203 | (BYTE1(v305[0]) << 40) | (HIBYTE(v305[0]) << 24) | (LOBYTE(v305[1]) << 16) | (BYTE1(v305[1]) << 8) | BYTE2(v305[1]) | 0x1000000000000;
                      if (v66)
                      {
                        v205 = v203 | (BYTE1(v305[0]) << 40) | (HIBYTE(v305[0]) << 24) | (LOBYTE(v305[1]) << 16) | (BYTE1(v305[1]) << 8) | BYTE2(v305[1]) | 0x1000000000000;
                      }

                      else
                      {
                        v205 = v201;
                      }

                      if (!v66)
                      {
                        v204 = 0;
                      }

                      *&v309[0] = v205;
                      *&v309[1] = v204;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2273, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        v206 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v206 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2274, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }
                      }

                      else
                      {
                        v207 = *(a1 + 12);
                        if (*(a1 + 10) - v207 > 1)
                        {
                          WORD4(v309[1]) = *(*a1 + v207);
                          *(a1 + 12) = v207 + 2;
                          if (*(a1 + 10) - (v207 + 2) > 1)
                          {
                            WORD5(v309[1]) = *(*a1 + (v207 + 2));
                            *(a1 + 12) = v207 + 4;
                            if (*(a1 + 10) - (v207 + 4) > 1)
                            {
                              WORD6(v309[1]) = *(*a1 + (v207 + 4));
                              v208 = v207 + 6;
                              *(a1 + 12) = v207 + 6;
                              if (*(a1 + 10) > (v207 + 6))
                              {
                                v209 = *a1;
                                v210 = v207 + 7;
                                *(a1 + 12) = v210;
                                BYTE14(v309[1]) = *(v209 + v208);
                                if (*(a1 + 10) > v210)
                                {
                                  v211 = v210;
                                  v212 = *a1;
                                  v213 = v210 + 1;
                                  *(a1 + 12) = v213;
                                  HIBYTE(v309[1]) = *(v212 + v211);
                                  if (*(a1 + 10) - v213 > 1)
                                  {
                                    v214 = v213;
                                    v215 = *a1;
                                    LOWORD(v310) = *(*a1 + v214);
                                    *(a1 + 12) = v214 + 2;
                                    if (*(a1 + 10) - (v214 + 2) > 1)
                                    {
                                      WORD1(v310) = *(v215 + (v214 + 2));
                                      v216 = v214 + 4;
                                      *(a1 + 12) = v216;
                                      v217 = 8;
                                      BYTE12(v310) = 8;
                                      v218 = *(a1 + 10) - v216;
LABEL_539:
                                      if (v218 >= v217)
                                      {
                                        __memmove_chk();
                                        v243 = *(a1 + 12) + BYTE12(v310);
                                        *(a1 + 12) = v243;
                                        if (*(a1 + 14) != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2285, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        if (*(a1 + 15))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                          v244 = *(a1 + 14);
                                          *(a1 + 15) = 1;
                                          if (v244 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2286, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }
                                        }

                                        else
                                        {
                                          if (*(a1 + 10) > v243)
                                          {
                                            v245 = *a1;
                                            *(a1 + 12) = v243 + 1;
                                            BYTE13(v310) = *(v245 + v243);
                                            if (*(a1 + 10) > (v243 + 1))
                                            {
                                              v246 = *a1;
                                              *(a1 + 12) = v243 + 2;
                                              BYTE14(v310) = *(v246 + (v243 + 1));
                                              if (*(a1 + 10) - (v243 + 2) > 1)
                                              {
                                                LOWORD(v311) = *(*a1 + (v243 + 2));
                                                *(a1 + 12) = v243 + 4;
                                                if (*(a1 + 10) - (v243 + 4) > 1)
                                                {
                                                  WORD1(v311) = *(*a1 + (v243 + 4));
                                                  *(a1 + 12) = v243 + 6;
                                                  if (*(a1 + 10) - (v243 + 6) > 1)
                                                  {
                                                    WORD2(v311) = *(*a1 + (v243 + 6));
                                                    *(a1 + 12) = v243 + 8;
                                                    if (*(a1 + 10) - (v243 + 8) > 1)
                                                    {
                                                      WORD3(v311) = *(*a1 + (v243 + 8));
                                                      *(a1 + 12) = v243 + 10;
                                                      if (*(a1 + 10) - (v243 + 10) >= 2)
                                                      {
                                                        WORD4(v311) = *(*a1 + (v243 + 10));
                                                        *(a1 + 12) = v243 + 12;
LABEL_560:
                                                        *&v308 = sub_1000ABB80(v64);
                                                        v328 = v309[1];
                                                        v329 = v310;
                                                        v330 = v311;
                                                        buf = v308;
                                                        v327 = v309[0];
                                                        off_100B5FFD8(v63, &buf);
                                                        goto LABEL_609;
                                                      }

LABEL_559:
                                                      *(a1 + 15) = 1;
                                                      goto LABEL_560;
                                                    }

                                                    *(a1 + 15) = 1;
LABEL_558:
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                    goto LABEL_559;
                                                  }

                                                  *(a1 + 15) = 1;
LABEL_557:
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                  v251 = *(a1 + 14);
                                                  *(a1 + 15) = 1;
                                                  if (v251 != 1)
                                                  {
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2291, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                  }

                                                  goto LABEL_558;
                                                }

                                                *(a1 + 15) = 1;
LABEL_556:
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                                v250 = *(a1 + 14);
                                                *(a1 + 15) = 1;
                                                if (v250 != 1)
                                                {
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2290, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                }

                                                goto LABEL_557;
                                              }

                                              *(a1 + 15) = 1;
LABEL_555:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                              v249 = *(a1 + 14);
                                              *(a1 + 15) = 1;
                                              if (v249 != 1)
                                              {
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2289, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                              }

                                              goto LABEL_556;
                                            }

                                            *(a1 + 15) = 1;
LABEL_554:
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                            v248 = *(a1 + 14);
                                            *(a1 + 15) = 1;
                                            if (v248 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2288, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }

                                            goto LABEL_555;
                                          }

                                          *(a1 + 15) = 1;
                                        }

                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                        v247 = *(a1 + 14);
                                        *(a1 + 15) = 1;
                                        if (v247 != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2287, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        goto LABEL_554;
                                      }

                                      v298 = "ByteStream_NumReadBytesAvail(*pBs) >= (params.featuresLength)";
LABEL_755:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2283, v298);
                                    }

                                    *(a1 + 15) = 1;
                                    BYTE12(v310) = 8;
LABEL_538:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                    v218 = 0;
                                    v217 = BYTE12(v310);
                                    goto LABEL_539;
                                  }

                                  *(a1 + 15) = 1;
LABEL_537:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                  v242 = *(a1 + 14);
                                  *(a1 + 15) = 1;
                                  BYTE12(v310) = 8;
                                  if (v242 != 1)
                                  {
                                    v298 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                                    goto LABEL_755;
                                  }

                                  goto LABEL_538;
                                }

                                *(a1 + 15) = 1;
LABEL_536:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                                v241 = *(a1 + 14);
                                *(a1 + 15) = 1;
                                if (v241 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2280, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                goto LABEL_537;
                              }

                              *(a1 + 15) = 1;
LABEL_535:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              v240 = *(a1 + 14);
                              *(a1 + 15) = 1;
                              if (v240 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2279, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_536;
                            }

                            *(a1 + 15) = 1;
LABEL_534:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            v239 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v239 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2278, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            goto LABEL_535;
                          }

                          *(a1 + 15) = 1;
LABEL_533:
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v238 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v238 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2276, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          goto LABEL_534;
                        }

                        *(a1 + 15) = 1;
                      }

                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v237 = *(a1 + 14);
                      *(a1 + 15) = 1;
                      if (v237 != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2275, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      goto LABEL_533;
                    }

LABEL_422:
                    v190 = 0;
                    *(a1 + 15) = 1;
                    goto LABEL_423;
                  }

                  goto LABEL_687;
                }
              }

              *(a1 + 15) = 1;
              if (*(a1 + 14) == 1)
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v66 = 0;
                v65 = 0;
                goto LABEL_422;
              }

LABEL_687:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2258, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2239, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        case 0x8E:
          v51 = qword_100B5FEA0;
          if (!qword_100B5FEA0)
          {
            goto LABEL_609;
          }

          v53 = v5 - v8;
          if (v53 > 0xCD || v53 == 39)
          {
            goto LABEL_385;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("BT_VSE_PHY_STATISTIC - Invalid data size %lu", v54, v55, v56, v57, v58, v59, v60, v53);
            v61 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_572;
            }
          }

          goto LABEL_609;
        case 0x8F:
          if (!off_100B5FE88)
          {
            goto LABEL_609;
          }

          v62 = *(a1 + 12) + off_100B5FE88(v7 + v8, (v5 - v8));
          *(a1 + 12) = v62;
          if (*(a1 + 15))
          {
            goto LABEL_384;
          }

          if (*(a1 + 10) != v62)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1661, "ByteStream_NumReadBytesAvail(*pBs) == 0");
          }

          return;
        case 0x99:
          v51 = qword_100B5FF30;
          if (!qword_100B5FF30)
          {
            goto LABEL_609;
          }

          if (!*(a1 + 15))
          {
            goto LABEL_413;
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          v69 = 0;
          v7 = *a1;
          LOWORD(v8) = *(a1 + 12);
          v51 = qword_100B5FF30;
          goto LABEL_414;
        case 0x9A:
          v34 = qword_100B5FF50;
          if (!qword_100B5FF50)
          {
            goto LABEL_609;
          }

          goto LABEL_380;
        case 0x9B:
          v34 = qword_100B5FF38;
          if (!qword_100B5FF38)
          {
            goto LABEL_609;
          }

          goto LABEL_380;
        case 0x9D:
          v51 = qword_100B5FEB0;
          if (!qword_100B5FEB0)
          {
            goto LABEL_609;
          }

          v52 = v7 + v8;
          goto LABEL_415;
        case 0x9E:
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2038, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v70 = v3 + 2;
          *v4 = v3 + 2;
          v71 = *(v7 + v8);
          if (v71 <= 1)
          {
            if (v71)
            {
              v72 = off_100B5FF90;
              if (!off_100B5FF90)
              {
                goto LABEL_609;
              }

              LODWORD(v322) = 0;
              memset(v321, 0, sizeof(v321));
              v319 = 0u;
              v320 = 0u;
              v317 = 0u;
              v318 = 0u;
              v315 = 0u;
              v316 = 0u;
              v314 = 0u;
              v312 = 0u;
              v313 = 0u;
              v310 = 0u;
              v311 = 0u;
              memset(v309, 0, sizeof(v309));
              v308 = 0u;
              if ((v5 - v70) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2070, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v308) = *(v7 + (v3 + 2));
              *v4 = v3 + 6;
              if ((v5 - (v3 + 6)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2071, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v308) = *(v7 + (v3 + 6));
              *v4 = v3 + 10;
              if ((v5 - (v3 + 10)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2072, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v308) = *(v7 + (v3 + 10));
              *v4 = v3 + 14;
              if ((v5 - (v3 + 14)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2073, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v308) = *(v7 + (v3 + 14));
              *v4 = v3 + 18;
              if ((v5 - (v3 + 18)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2074, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v309[0]) = *(v7 + (v3 + 18));
              *v4 = v3 + 22;
              if ((v5 - (v3 + 22)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2075, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v309[0]) = *(v7 + (v3 + 22));
              *v4 = v3 + 26;
              if ((v5 - (v3 + 26)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2076, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v309[0]) = *(v7 + (v3 + 26));
              *v4 = v3 + 30;
              if ((v5 - (v3 + 30)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2077, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v309[0]) = *(v7 + (v3 + 30));
              *v4 = v3 + 34;
              if ((v5 - (v3 + 34)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2078, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v309[1]) = *(v7 + (v3 + 34));
              *v4 = v3 + 38;
              if ((v5 - (v3 + 38)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2079, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v309[1]) = *(v7 + (v3 + 38));
              *v4 = v3 + 42;
              v73 = v5 - (v3 + 42);
              if ((v73 & 0x1FFFE) == 0)
              {
                goto LABEL_485;
              }

              if (v73 <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2083, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v309[1]) = *(v7 + (v3 + 42));
              *v4 = v3 + 46;
              if ((v5 - (v3 + 46)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2084, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v309[1]) = *(v7 + (v3 + 46));
              *v4 = v3 + 50;
              if ((v5 - (v3 + 50)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2085, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v310) = *(v7 + (v3 + 50));
              *v4 = v3 + 54;
              if ((v5 - (v3 + 54)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2086, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v310) = *(v7 + (v3 + 54));
              *v4 = v3 + 58;
              if ((v5 - (v3 + 58)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2087, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v310) = *(v7 + (v3 + 58));
              *v4 = v3 + 62;
              if ((v5 - (v3 + 62)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2088, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v310) = *(v7 + (v3 + 62));
              *v4 = v3 + 66;
              if ((v5 - (v3 + 66)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2089, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v311) = *(v7 + (v3 + 66));
              *v4 = v3 + 70;
              if ((v5 - (v3 + 70)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2090, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v311) = *(v7 + (v3 + 70));
              *v4 = v3 + 74;
              if ((v5 - (v3 + 74)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2091, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v311) = *(v7 + (v3 + 74));
              *v4 = v3 + 78;
              if ((v5 - (v3 + 78)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2093, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v311) = *(v7 + (v3 + 78));
              *v4 = v3 + 82;
              if ((v5 - (v3 + 82)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2094, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v312) = *(v7 + (v3 + 82));
              *v4 = v3 + 86;
              if ((v5 - (v3 + 86)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2095, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v312) = *(v7 + (v3 + 86));
              *v4 = v3 + 90;
              if ((v5 - (v3 + 90)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2096, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v312) = *(v7 + (v3 + 90));
              *v4 = v3 + 94;
              if ((v5 - (v3 + 94)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2097, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v312) = *(v7 + (v3 + 94));
              *v4 = v3 + 98;
              if ((v5 - (v3 + 98)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2098, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v313) = *(v7 + (v3 + 98));
              *v4 = v3 + 102;
              if ((v5 - (v3 + 102)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2099, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v313) = *(v7 + (v3 + 102));
              *v4 = v3 + 106;
              if ((v5 - (v3 + 106)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2100, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v313) = *(v7 + (v3 + 106));
              *v4 = v3 + 110;
              if ((v5 - (v3 + 110)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2101, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v313) = *(v7 + (v3 + 110));
              *v4 = v3 + 114;
              if ((v5 - (v3 + 114)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2102, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v314) = *(v7 + (v3 + 114));
              *v4 = v3 + 118;
              if ((v5 - (v3 + 118)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2103, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v314) = *(v7 + (v3 + 118));
              *v4 = v3 + 122;
              if ((v5 - (v3 + 122)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2104, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v314) = *(v7 + (v3 + 122));
              *v4 = v3 + 126;
              if ((v5 - (v3 + 126)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2105, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v314) = *(v7 + (v3 + 126));
              *v4 = v3 + 130;
              if ((v5 - (v3 + 130)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2106, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v315) = *(v7 + (v3 + 130));
              *v4 = v3 + 134;
              if ((v5 - (v3 + 134)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2107, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v315) = *(v7 + (v3 + 134));
              *v4 = v3 + 138;
              if ((v5 - (v3 + 138)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2108, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v315) = *(v7 + (v3 + 138));
              *v4 = v3 + 142;
              if ((v5 - (v3 + 142)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2109, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v315) = *(v7 + (v3 + 142));
              *v4 = v3 + 146;
              if ((v5 - (v3 + 146)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2110, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v316) = *(v7 + (v3 + 146));
              *v4 = v3 + 150;
              if ((v5 - (v3 + 150)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2111, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v316) = *(v7 + (v3 + 150));
              *v4 = v3 + 154;
              if ((v5 - (v3 + 154)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2112, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v316) = *(v7 + (v3 + 154));
              *v4 = v3 + 158;
              if ((v5 - (v3 + 158)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2113, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v316) = *(v7 + (v3 + 158));
              *v4 = v3 + 162;
              if ((v5 - (v3 + 162)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2114, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v317) = *(v7 + (v3 + 162));
              *v4 = v3 + 166;
              if ((v5 - (v3 + 166)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2115, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v317) = *(v7 + (v3 + 166));
              *v4 = v3 + 170;
              if ((v5 - (v3 + 170)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2116, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v317) = *(v7 + (v3 + 170));
              *v4 = v3 + 174;
              if ((v5 - (v3 + 174)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2117, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              HIDWORD(v317) = *(v7 + (v3 + 174));
              *v4 = v3 + 176;
              if ((v5 - (v3 + 176)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2118, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              LODWORD(v318) = *(v7 + (v3 + 176));
              *v4 = v3 + 178;
              if ((v5 - (v3 + 178)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2119, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              DWORD1(v318) = *(v7 + (v3 + 178));
              *v4 = v3 + 180;
              if ((v5 - (v3 + 180)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2120, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              DWORD2(v318) = *(v7 + (v3 + 180));
              *v4 = v3 + 182;
              if ((v5 - (v3 + 182)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2121, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v318) = *(v7 + (v3 + 182));
              *v4 = v3 + 186;
              if ((v5 - (v3 + 186)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2122, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              LODWORD(v319) = *(v7 + (v3 + 186));
              *v4 = v3 + 190;
              if ((v5 - (v3 + 190)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2123, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              DWORD1(v319) = *(v7 + (v3 + 190));
              *v4 = v3 + 192;
              if ((v5 - (v3 + 192)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2124, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              DWORD2(v319) = *(v7 + (v3 + 192));
              *v4 = v3 + 194;
              if ((v5 - (v3 + 194)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2125, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              HIDWORD(v319) = *(v7 + (v3 + 194));
              *v4 = v3 + 196;
              if ((v5 - (v3 + 196)) <= 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2126, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
              }

              LODWORD(v320) = *(v7 + (v3 + 196));
              *v4 = v3 + 198;
              if ((v5 - (v3 + 198)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2127, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD1(v320) = *(v7 + (v3 + 198));
              *v4 = v3 + 202;
              if ((v5 - (v3 + 202)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2128, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              DWORD2(v320) = *(v7 + (v3 + 202));
              *v4 = v3 + 206;
              if ((v5 - (v3 + 206)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2129, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              HIDWORD(v320) = *(v7 + (v3 + 206));
              *v4 = v3 + 210;
              if ((v5 - (v3 + 210)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2130, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[0] = *(v7 + (v3 + 210));
              *v4 = v3 + 214;
              if ((v5 - (v3 + 214)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2131, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[1] = *(v7 + (v3 + 214));
              *v4 = v3 + 218;
              if ((v5 - (v3 + 218)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2132, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[2] = *(v7 + (v3 + 218));
              *v4 = v3 + 222;
              if ((v5 - (v3 + 222)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2133, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[3] = *(v7 + (v3 + 222));
              *v4 = v3 + 226;
              if ((v5 - (v3 + 226)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2134, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[4] = *(v7 + (v3 + 226));
              *v4 = v3 + 230;
              if ((v5 - (v3 + 230)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2135, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[5] = *(v7 + (v3 + 230));
              *v4 = v3 + 234;
              if ((v5 - (v3 + 234)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2136, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[6] = *(v7 + (v3 + 234));
              *v4 = v3 + 238;
              if ((v5 - (v3 + 238)) <= 3)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2137, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v321[7] = *(v7 + (v3 + 238));
              *(a1 + 12) = v3 + 242;
              if (*(a1 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (*(a1 + 10) - (v3 + 242) > 3)
              {
                if (*(a1 + 14) == 1)
                {
                  LODWORD(v322) = *(*a1 + (v3 + 242));
                  *(a1 + 12) = v3 + 246;
LABEL_485:
                  v72(&v308);
                  goto LABEL_609;
                }

                v301 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_884:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2138, v301);
              }

              v301 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
              goto LABEL_884;
            }

            if (!qword_100B5FF88)
            {
              goto LABEL_609;
            }

            v308 = 0uLL;
            LOWORD(v309[0]) = 0;
            if (*(a1 + 14) != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2046, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              v219 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v219 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2047, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }
            }

            else
            {
              if (*(a1 + 10) - v70 > 1)
              {
                LOWORD(v308) = *(*a1 + v70);
                *(a1 + 12) = v3 + 4;
                if (*(a1 + 10) - (v3 + 4) >= 6)
                {
                  sub_1000075EC(&v308 + 2, *a1 + (v3 + 4), 6uLL);
                  *(a1 + 12) += 6;
                  goto LABEL_586;
                }

LABEL_585:
                *(a1 + 15) = 1;
LABEL_586:
                if (*(a1 + 14) != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2048, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                if (*(a1 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  v277 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v277 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2049, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }
                }

                else
                {
                  v278 = *(a1 + 12);
                  if (*(a1 + 10) > v278)
                  {
                    v279 = *a1;
                    *(a1 + 12) = v278 + 1;
                    BYTE8(v308) = *(v279 + v278);
                    if (*(a1 + 10) > (v278 + 1))
                    {
                      v280 = *a1;
                      *(a1 + 12) = v278 + 2;
                      BYTE9(v308) = *(v280 + (v278 + 1));
                      if (*(a1 + 10) > (v278 + 2))
                      {
                        v281 = *a1;
                        *(a1 + 12) = v278 + 3;
                        BYTE10(v308) = *(v281 + (v278 + 2));
                        if (*(a1 + 10) > (v278 + 3))
                        {
                          v282 = *a1;
                          *(a1 + 12) = v278 + 4;
                          BYTE11(v308) = *(v282 + (v278 + 3));
                          if (*(a1 + 10) - (v278 + 4) > 1)
                          {
                            v283 = (v278 + 4);
                            WORD6(v308) = *(*a1 + v283);
                            *(a1 + 12) = v278 + 6;
                            if (*(a1 + 10) - (v278 + 6) > 1)
                            {
                              HIWORD(v308) = *(*a1 + (v278 + 6));
                              v284 = v278 + 8;
                              *(a1 + 12) = v283 + 4;
                              if (*(a1 + 10) > (v283 + 4))
                              {
                                v285 = *a1;
                                v286 = v283 + 5;
                                *(a1 + 12) = v286;
                                LOBYTE(v309[0]) = *(v285 + v284);
                                if (*(a1 + 10) > v286)
                                {
                                  v287 = *a1;
                                  *(a1 + 12) = v286 + 1;
                                  BYTE1(v309[0]) = *(v287 + v286);
LABEL_608:
                                  (qword_100B5FF88)(&v308);
                                  goto LABEL_609;
                                }

LABEL_607:
                                *(a1 + 15) = 1;
                                goto LABEL_608;
                              }

                              *(a1 + 15) = 1;
LABEL_606:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                              goto LABEL_607;
                            }

                            *(a1 + 15) = 1;
LABEL_605:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                            v293 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v293 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2055, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            goto LABEL_606;
                          }

                          *(a1 + 15) = 1;
LABEL_604:
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          v292 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v292 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2054, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          goto LABEL_605;
                        }

                        *(a1 + 15) = 1;
LABEL_603:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        v291 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v291 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2053, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        goto LABEL_604;
                      }

                      *(a1 + 15) = 1;
LABEL_602:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                      v290 = *(a1 + 14);
                      *(a1 + 15) = 1;
                      if (v290 != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2052, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      goto LABEL_603;
                    }

                    *(a1 + 15) = 1;
LABEL_601:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    v289 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v289 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2051, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_602;
                  }

                  *(a1 + 15) = 1;
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                v288 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v288 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2050, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                goto LABEL_601;
              }

              *(a1 + 15) = 1;
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            goto LABEL_585;
          }

          if (v71 == 2)
          {
            v72 = qword_100B5FFA8;
            if (!qword_100B5FFA8)
            {
              goto LABEL_609;
            }

            LODWORD(v309[1]) = 0;
            if ((v5 - v70) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2175, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v308) = *(v7 + (v3 + 2));
            *v4 = v3 + 6;
            if ((v5 - (v3 + 6)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2176, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD1(v308) = *(v7 + (v3 + 6));
            *v4 = v3 + 10;
            if ((v5 - (v3 + 10)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2177, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD2(v308) = *(v7 + (v3 + 10));
            *v4 = v3 + 14;
            if ((v5 - (v3 + 14)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2178, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v308) = *(v7 + (v3 + 14));
            *v4 = v3 + 18;
            if ((v5 - (v3 + 18)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2179, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            LODWORD(v309[0]) = *(v7 + (v3 + 18));
            *v4 = v3 + 22;
            if ((v5 - (v3 + 22)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2180, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD1(v309[0]) = *(v7 + (v3 + 22));
            *v4 = v3 + 26;
            if ((v5 - (v3 + 26)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2181, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            DWORD2(v309[0]) = *(v7 + (v3 + 26));
            *v4 = v3 + 30;
            if ((v5 - (v3 + 30)) <= 3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2182, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }

            HIDWORD(v309[0]) = *(v7 + (v3 + 30));
            *v4 = v3 + 34;
            if (v5 <= (v3 + 34))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2183, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 35;
            LOBYTE(v309[1]) = *(v7 + (v3 + 34));
            goto LABEL_485;
          }

          if (v71 == 3)
          {
            v72 = qword_100B5FF98;
            if (qword_100B5FF98)
            {
              v308 = 0u;
              memset(v309, 0, 28);
              if (v5 <= v70)
              {
                *(a1 + 15) = 1;
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else
              {
                *v4 = v3 + 3;
                LOBYTE(v308) = *(v7 + (v3 + 2));
                if (v5 - (v3 + 3) > 3)
                {
                  DWORD1(v308) = *(v7 + v3 + 3);
                  *v4 = v3 + 7;
                  if ((v5 - (v3 + 7)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2156, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  DWORD2(v308) = *(v7 + (v3 + 7));
                  *v4 = v3 + 11;
                  if ((v5 - (v3 + 11)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2157, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  HIDWORD(v308) = *(v7 + (v3 + 11));
                  *v4 = v3 + 15;
                  if ((v5 - (v3 + 15)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2158, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  LODWORD(v309[0]) = *(v7 + (v3 + 15));
                  *v4 = v3 + 19;
                  if ((v5 - (v3 + 19)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2159, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  DWORD1(v309[0]) = *(v7 + (v3 + 19));
                  *v4 = v3 + 23;
                  if ((v5 - (v3 + 23)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2160, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  DWORD2(v309[0]) = *(v7 + (v3 + 23));
                  *v4 = v3 + 27;
                  if ((v5 - (v3 + 27)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2161, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  HIDWORD(v309[0]) = *(v7 + (v3 + 27));
                  *v4 = v3 + 31;
                  if ((v5 - (v3 + 31)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2162, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  LODWORD(v309[1]) = *(v7 + (v3 + 31));
                  *v4 = v3 + 35;
                  if ((v5 - (v3 + 35)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2163, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  DWORD1(v309[1]) = *(v7 + (v3 + 35));
                  *v4 = v3 + 39;
                  if ((v5 - (v3 + 39)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2164, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  DWORD2(v309[1]) = *(v7 + (v3 + 39));
                  *v4 = v3 + 43;
                  goto LABEL_485;
                }
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2155, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
            }
          }

          goto LABEL_609;
        case 0x9F:
          v67 = off_100B5FF40;
          if (!off_100B5FF40)
          {
            goto LABEL_609;
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
            goto LABEL_683;
          }

          if (*(a1 + 10) <= v8)
          {
LABEL_683:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1995, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          goto LABEL_230;
        case 0xA2:
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1623, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          if (v5 - (v3 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1624, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v74 = *(v7 + v3 + 2);
          *v4 = v3 + 4;
          if ((v5 - (v3 + 4)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1625, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v75 = *(v7 + (v3 + 4));
          *v4 = v3 + 6;
          if ((v5 - (v3 + 6)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1626, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v76 = *(v7 + (v3 + 6));
          *v4 = v3 + 8;
          if ((v5 - (v3 + 8)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1627, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v77 = *(v7 + (v3 + 8));
          *v4 = v3 + 10;
          if ((v5 - (v3 + 10)) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1628, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v78 = (v7 + (v3 + 10));
          v79 = *v78;
          v80 = v78[1];
          *v4 = v3 + 12;
          if (off_100B5FE40)
          {
            off_100B5FE40(v74, v75, v76, v77, v79 | (v80 << 8));
          }

          goto LABEL_609;
        case 0xA3:
          v81 = off_100B5FFF0;
          if (!off_100B5FFF0)
          {
            goto LABEL_609;
          }

          if (v5 <= v8)
          {
            *(a1 + 15) = 1;
          }

          else
          {
            v82 = v3 + 2;
            *(a1 + 12) = v3 + 2;
            if (!*(a1 + 15))
            {
              v83 = *(a1 + 10);
              if ((v83 - v82) > 1)
              {
                v84 = *(v7 + v8);
                v85 = *(v7 + v82);
                *v4 = v3 + 4;
                if ((v83 - (v3 + 4)) <= 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2347, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                }

                v86 = *(v7 + (v3 + 4));
                *v4 = v3 + 6;
                if (v83 <= (v3 + 6))
                {
                  v87 = 0;
                  *(a1 + 15) = 1;
                  v308 = 0u;
                  memset(v309, 0, 24);
                }

                else
                {
                  *v4 = v3 + 7;
                  v87 = *(v7 + (v3 + 6));
                  v308 = 0u;
                  memset(v309, 0, 24);
                  if (v87)
                  {
                    v304 = v84;
                    v88 = &v308;
                    v89 = v87;
                    while (1)
                    {
                      WORD2(buf) = 0;
                      LODWORD(buf) = 0;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2354, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        break;
                      }

                      v91 = *(a1 + 12);
                      if (*(a1 + 10) <= v91)
                      {
                        *(a1 + 15) = 1;
LABEL_217:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                        v96 = 0;
LABEL_218:
                        *(a1 + 15) = 1;
                        goto LABEL_219;
                      }

                      v92 = *a1;
                      v93 = v91 + 1;
                      *(a1 + 12) = v91 + 1;
                      v94 = *(v92 + v91);
                      v95 = v94 << 48;
                      if (v94 == 2)
                      {
                        v95 = 0;
                      }

                      if (v94 == 3)
                      {
                        v96 = 0x1000000000000;
                      }

                      else
                      {
                        v96 = v95;
                      }

                      if (*(a1 + 10) - v93 <= 5)
                      {
                        goto LABEL_218;
                      }

                      sub_1000075EC(&buf, *a1 + v93, 6uLL);
                      *(a1 + 12) += 6;
LABEL_219:
                      *v88++ = v96 | (buf << 40) | (BYTE1(buf) << 32) | (BYTE2(buf) << 24) | (BYTE3(buf) << 16) | (BYTE4(buf) << 8) | BYTE5(buf);
                      if (!--v89)
                      {
                        (off_100B5FFF0)(v304, v86, v85, v87, &v308);
                        goto LABEL_609;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    v90 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v90 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2362, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_217;
                  }
                }

                (v81)(v84, v86, v85, v87, &v308);
                goto LABEL_609;
              }

LABEL_686:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2346, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          goto LABEL_686;
        default:
          goto LABEL_609;
      }
    }

    if (*(v7 + v3) <= 0xB5u)
    {
      if (v9 != 175)
      {
        if (v9 == 181)
        {
          if (v5 <= v8)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1715, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 2;
          if (v5 <= (v3 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1716, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v49 = *(v7 + v8);
          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1717, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v50 = *(v7 + v3 + 2);
          *v4 = v3 + 4;
          if (off_100B5FEB8)
          {
            off_100B5FEB8(v49, v50, *(v7 + v3 + 3), v7 + v3 + 4, (v5 - (v3 + 4)));
          }
        }

        goto LABEL_609;
      }

      v51 = off_100B5FEC0;
      if (!off_100B5FEC0)
      {
        goto LABEL_609;
      }

      v52 = v7 + v8;
      a2 = (v5 - v8);
    }

    else
    {
      if (v9 == 182)
      {
        if (qword_100B60020)
        {
          *&v316 = 0;
          v314 = 0u;
          v315 = 0u;
          v312 = 0u;
          v313 = 0u;
          v310 = 0u;
          v311 = 0u;
          memset(v309, 0, sizeof(v309));
          v308 = 0u;
          if (sub_1002EDE84(a1, &v308))
          {
            (qword_100B60020)(&v308);
          }
        }

        goto LABEL_609;
      }

      if (v9 != 184)
      {
        if (v9 != 185)
        {
          goto LABEL_609;
        }

        v34 = qword_100B5FF48;
        if (!qword_100B5FF48)
        {
          goto LABEL_609;
        }

        goto LABEL_380;
      }

      v51 = qword_100B5FF20;
      if (!qword_100B5FF20)
      {
        goto LABEL_609;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
        v69 = 0;
        v51 = qword_100B5FF20;
        v7 = *a1;
        LOWORD(v8) = *(a1 + 12);
      }

      else
      {
LABEL_413:
        v69 = *(a1 + 10) - v8;
      }

LABEL_414:
      v52 = v7 + v8;
      a2 = v69;
    }

LABEL_415:
    v51(v52, a2);
    goto LABEL_609;
  }

  if (*(v7 + v3) <= 0x1Au)
  {
    if (v9 == 18)
    {
      if (!off_100B5FEF8)
      {
        goto LABEL_609;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v157 = *(a1 + 10);
        if (v157 > v8)
        {
          *v4 = v3 + 2;
          if (v157 - (v3 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1904, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v158 = *(v7 + v8);
          v159 = *(v7 + v3 + 2);
          *v4 = v3 + 4;
          if (v157 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1905, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          if ((v157 - (v3 + 5)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1906, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v160 = *(v7 + (v3 + 4));
          v161 = *(v7 + (v3 + 5));
          *v4 = v3 + 9;
          if ((v157 - (v3 + 9)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1907, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v162 = *(v7 + (v3 + 9));
          *v4 = v3 + 13;
          if (v157 <= (v3 + 13))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1908, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 14;
          if (v157 <= (v3 + 14))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1909, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v163 = *(v7 + (v3 + 13));
          *v4 = v3 + 15;
          v164 = *(v7 + (v3 + 14));
          if (v157 - (v3 + 15) < 2)
          {
            v166 = -1;
          }

          else
          {
            v165 = (v3 + 15);
            if (v157 - v165 <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1911, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v166 = *(v7 + v165);
            *v4 = v3 + 17;
          }

          off_100B60110(v158, v159, v160, v161, v162, v163, v164, v166);
          off_100B5FEF8(v158, v159, v160, v161, v162, v163, v164, v166);
          goto LABEL_609;
        }
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1903, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    if (v9 == 19)
    {
      v144 = off_100B5FF00;
      if (!off_100B5FF00)
      {
        goto LABEL_609;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
      }

      else
      {
        v145 = *(a1 + 10);
        if (v145 - v8 > 1)
        {
          v146 = *(v7 + v8);
          *v4 = v3 + 3;
          if (v145 - (v3 + 3) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1934, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v147 = *(v7 + (v3 + 3));
          *v4 = v3 + 5;
          if (v145 - (v3 + 5) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1935, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v148 = *(v7 + (v3 + 5));
          *v4 = v3 + 9;
          if (v145 - (v3 + 9) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1936, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v149 = *(v7 + (v3 + 9));
          *v4 = v3 + 13;
          (v144)(v146, v147, v148, v149);
          goto LABEL_609;
        }
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1933, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    if (v9 != 20)
    {
      goto LABEL_609;
    }

    v28 = off_100B5FF08;
    if (!off_100B5FF08)
    {
      goto LABEL_609;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v29 = *(a1 + 10);
      if ((v29 - v8) > 1)
      {
        v30 = (v7 + v8);
        v31 = *v30;
        v32 = v30[1];
        v33 = v3 + 3;
        *v4 = v3 + 3;
        if (v29 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1950, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

LABEL_258:
        *v4 = v3 + 4;
        (v28)(v31 | (v32 << 8), *(v7 + v33));
        goto LABEL_609;
      }
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1949, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  switch(v9)
  {
    case 0x1Bu:
      if (v5 <= v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1605, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 2;
LABEL_368:
      if (*(v7 + v8) == 3)
      {
        sub_1001BBD6C(v7, *(a1 + 8));
        if ((byte_100B60248 & 1) == 0)
        {
          byte_100B60248 = 1;
        }
      }

      break;
    case 0x5Au:
      if (v5 <= v8)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1532, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 2;
      v150 = *(v7 + v8);
      if (*(v7 + v8))
      {
        v151 = 0;
        while (!*(a1 + 15))
        {
          v152 = *(a1 + 10);
          v153 = *(a1 + 12);
          if (v152 - v153 <= 1)
          {
            goto LABEL_634;
          }

          if (*(a1 + 14) != 1)
          {
            v295 = "(*pBs).__RWFlag == BYTESTREAM_READ";
            goto LABEL_635;
          }

          v154 = (*a1 + v153);
          v155 = *v154;
          v156 = v154[1];
          *(a1 + 12) = v153 + 2;
          if (v152 - (v153 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1537, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          *v4 = v153 + 4;
          if (sub_1000ABB80(v155 | (v156 << 8)) && off_100B5FE18)
          {
            off_100B5FE18();
          }

          if (++v151 >= v150)
          {
            goto LABEL_609;
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_634:
        v295 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_635:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1536, v295);
      }

      break;
    case 0x80u:
      if ((v5 - v8) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1699, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v47 = *(v7 + v8);
      *v4 = v3 + 3;
      if (v5 <= (v3 + 3))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1700, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 4;
      if (v5 <= (v3 + 4))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1701, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v48 = *(v7 + (v3 + 3));
      *v4 = v3 + 5;
      if (off_100B5FE48)
      {
        off_100B5FE48(v47, v48, *(v7 + (v3 + 4)));
      }

      break;
  }

LABEL_609:
  if (*(a1 + 15))
  {
    sub_1000C52F4(136);
LABEL_630:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 1473, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }
}

uint64_t sub_1000AB51C()
{
  v0 = *(*sub_10000C7D0() + 3640);

  return v0();
}

uint64_t sub_1000AB584(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 202);
      v7 = *(a2 + 204);
      *buf = 67109376;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhyStats caused system to wake up -- Classic connection handle = 0x%02x, LE connection handle = 0x%02x", buf, 0xEu);
    }

    v8 = sub_10000E92C();
    if ((*(*v8 + 8))(v8))
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 202);
        v11 = *(a2 + 204);
        *buf = 67109376;
        *&buf[4] = v10;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhyStats caused system to wake up -- Classic connection handle = 0x%02x, LE connection handle = 0x%02x -- getting ABCSnapshot ", buf, 0xEu);
      }

      sub_10057930C("PhyStats", "parseWakeupCause", 60.0);
    }
  }

  if (*(a1 + 1386) == 1 && *(a2 + 18))
  {
    *(a2 + 18) = *(a1 + 1388);
  }

  if (*(a1 + 1387) == 1 && *(a2 + 16))
  {
    *(a2 + 16) = *(a1 + 1390);
  }

  v12 = sub_10000C7D0();
  if ((sub_1000ABD54(v12) & 1) == 0)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10082788C(v13);
    }
  }

  v14 = sub_10000C7D0();
  result = sub_1000ABD54(v14);
  if (result)
  {
    v16 = *(a2 + 176);
    v88 = *(a2 + 160);
    v89[0] = v16;
    *(v89 + 14) = *(a2 + 190);
    v17 = *(a2 + 112);
    v84 = *(a2 + 96);
    v85 = v17;
    v18 = *(a2 + 144);
    v86 = *(a2 + 128);
    v87 = v18;
    v19 = *(a2 + 48);
    v80 = *(a2 + 32);
    v81 = v19;
    v20 = *(a2 + 80);
    v82 = *(a2 + 64);
    v83 = v20;
    v21 = *(a2 + 16);
    *buf = *a2;
    v79 = v21;
    if (*(a1 + 1385) == 1)
    {
      sub_1000ABE4C(0, buf);
      v22 = v89[0];
      *(a1 + 1576) = v88;
      *(a1 + 1592) = v22;
      *(a1 + 1606) = *(v89 + 14);
      v23 = v85;
      *(a1 + 1512) = v84;
      *(a1 + 1528) = v23;
      v24 = v87;
      *(a1 + 1544) = v86;
      *(a1 + 1560) = v24;
      v25 = v81;
      *(a1 + 1448) = v80;
      *(a1 + 1464) = v25;
      v26 = v83;
      *(a1 + 1480) = v82;
      *(a1 + 1496) = v26;
      v27 = v79;
      *(a1 + 1416) = *buf;
      *(a1 + 1432) = v27;
      *(a1 + 1408) = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      return 0;
    }

    v48 = 0;
    if (sub_1000ABD5C(buf, &v48))
    {
      v28 = v89[0];
      *(a1 + 1576) = v88;
      *(a1 + 1592) = v28;
      *(a1 + 1606) = *(v89 + 14);
      v29 = v85;
      *(a1 + 1512) = v84;
      *(a1 + 1528) = v29;
      v30 = v87;
      *(a1 + 1544) = v86;
      *(a1 + 1560) = v30;
      v31 = v81;
      *(a1 + 1448) = v80;
      *(a1 + 1464) = v31;
      v32 = v83;
      *(a1 + 1480) = v82;
      *(a1 + 1496) = v32;
      v33 = v79;
      *(a1 + 1416) = *buf;
      *(a1 + 1432) = v33;
      *(a1 + 1408) = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      sub_1000AD030(a1, a2);
      v34 = sub_100017F4C();
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v75 = v87;
      v76 = v88;
      v77[0] = v89[0];
      *(v77 + 14) = *(v89 + 14);
      v71 = v83;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v67 = v79;
      v68 = v80;
      v69 = v81;
      v70 = v82;
      v64[2] = sub_1000AD3BC;
      v64[3] = &unk_100AF2690;
      v66 = *buf;
      v65 = v48;
      sub_10000CA94(v34, v64);
      return 0;
    }

    v35 = sub_10000C798();
    if (!(*(*v35 + 360))(v35) || !*(a2 + 204))
    {
LABEL_28:
      v46 = 0;
      v45 = 0;
      if (*(a2 + 202))
      {
        v40 = sub_1000ABB80(*(a2 + 202));
        if (sub_1000B8B5C(v40))
        {
          v41 = sub_100255A78(v40);
          v45 = *v41;
          v46 = *(v41 + 4);
        }
      }

      v42 = sub_100017F4C();
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3321888768;
      v59 = v87;
      v60 = v88;
      *v61 = v89[0];
      *&v61[14] = *(v89 + 14);
      v55 = v83;
      v56 = v84;
      v57 = v85;
      v58 = v86;
      v51 = v79;
      v52 = v80;
      v53 = v81;
      v54 = v82;
      v49[2] = sub_1003E1AC0;
      v49[3] = &unk_100AF26B0;
      v49[4] = a1;
      v50 = *buf;
      v62 = v45;
      v63 = v46;
      sub_10000CA94(v42, v49);
      if (sub_10000F034())
      {
        v43 = sub_10000F034();
        (*(*v43 + 600))(v43, a2);
      }

      return 0;
    }

    v36 = sub_1000ABB80(*(a2 + 204));
    if (sub_1000ABD24(v36))
    {
      v37 = sub_100255A20(v36);
      if (v37)
      {
        v38 = (v37[1] << 40) | (v37[2] << 32) | (v37[3] << 24) | (v37[4] << 16) | (v37[5] << 8) | v37[6] | (*v37 << 48);
        if (v38)
        {
          v39 = sub_100017F4C();
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_1003E1AB8;
          v47[3] = &unk_100AEC130;
          v47[4] = a1;
          v47[5] = a2;
          v47[6] = v38;
          sub_10000CA94(v39, v47);
          goto LABEL_28;
        }
      }
    }

    v44 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No BT address to update PhyStats", &v45, 2u);
    }

    return 1;
  }

  return result;
}

__int128 *sub_1000ABB80(int a1)
{
  result = qword_100B5FBD0;
  if (qword_100B5FBD0)
  {
    while (*(result + 54) == 7 || *result != a1)
    {
      result = *(result + 5);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = qword_100B5FBE0;
    if (qword_100B5FBE0)
    {
      while (*result != a1)
      {
        result = *(result + 5);
        if (!result)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      result = qword_100B5FBF0;
      if (qword_100B5FBF0)
      {
        while (*result != a1)
        {
          result = *(result + 5);
          if (!result)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        result = qword_100B5FC00;
        if (qword_100B5FC00)
        {
          while (*result != a1)
          {
            result = *(result + 5);
            if (!result)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          result = qword_100B5FC10;
          if (qword_100B5FC10)
          {
            while (*result != a1)
            {
              result = *(result + 5);
              if (!result)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:
            result = qword_100B5FC20;
            if (qword_100B5FC20)
            {
              while (*result != a1)
              {
                result = *(result + 5);
                if (!result)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
LABEL_20:
              result = &xmmword_100B5F8D8;
              if (xmmword_100B5F8D8 != a1)
              {
                if (xmmword_100B5FA50 == a1)
                {
                  return &xmmword_100B5FA50;
                }

                else
                {
                  return 0;
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

uint64_t sub_1000ABC7C(unsigned int a1, uint64_t *a2)
{
  if (a1 > 0x3F)
  {
    v4 = a1;
    if (a1 <= 0xFF)
    {
      v4 = a1 - 64;
    }

    if (word_100B60268 > v4)
    {
      if (qword_100B60260)
      {
        i = qword_100B60260 + 144 * v4;
        if (*i)
        {
          if (*(i + 4) == a1)
          {
LABEL_15:
            result = 0;
            *a2 = i;
            return result;
          }
        }
      }
    }
  }

  else
  {
    v2 = word_100B60268;
    if (word_100B60268)
    {
      for (i = qword_100B60260; !qword_100B60260 || !*i || *(i + 4) != a1; i += 144)
      {
        if (!--v2)
        {
          return 404;
        }
      }

      goto LABEL_15;
    }
  }

  return 404;
}

BOOL sub_1000ABD24(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    for (i = qword_100B5FBF0; i; i = *(i + 40))
    {
      v1 = i == a1;
      if (i == a1)
      {
        break;
      }
    }
  }

  return v1;
}

uint64_t sub_1000ABD5C(uint64_t a1, _DWORD *a2)
{
  if (!dword_100BC9C74)
  {
    return 0;
  }

  v4 = 0;
  for (i = qword_100BC9CB0; !*i || !sub_1000ABD24(*i) || *(a1 + 204) != **i; i += 134)
  {
    if (++v4 >= dword_100BC9C74)
    {
      return 0;
    }
  }

  v7 = sub_1000ABE4C(*i, a1);
  *(i + 47) = *(a1 + 18);
  v8 = *(a1 + 144);
  v9 = *(a1 + 160);
  v10 = *(a1 + 176);
  *(i + 422) = *(a1 + 190);
  *(i + 49) = v9;
  *(i + 51) = v10;
  *(i + 47) = v8;
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v13 = *(a1 + 128);
  *(i + 43) = *(a1 + 112);
  *(i + 45) = v13;
  *(i + 39) = v11;
  *(i + 41) = v12;
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 64);
  *(i + 35) = *(a1 + 48);
  *(i + 37) = v16;
  *(i + 33) = v15;
  *(i + 31) = v14;
  *(i + 29) = *a1;
  if (a2)
  {
    *a2 = v7;
  }

  return 1;
}

uint64_t sub_1000ABE4C(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  if (word_100B5A19A)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v36 = 0;
    do
    {
      v5 = *(&xmmword_100B5A1A0 + v2);
      if (*v5 && (*v5 == a1 || byte_100B5A914 == 1))
      {
        v31 = v4;
        v32 = v3;
        if (*(v5 + 16))
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = sub_1000ABC7C(*(*(v5 + 8) + v6 + 52), &v36);
            v5 = *(&xmmword_100B5A1A0 + v2);
            if (!v10)
            {
              v11 = *(v5 + 8) + v6;
              v13 = *(v36 + 80);
              v12 = *(v36 + 84);
              v15 = *(v11 + 72);
              v14 = *(v11 + 76);
              v16 = v12 - v14;
              v17 = v13 - v15;
              if (v13 != v15 || v12 != v14)
              {
                sub_1000BE2D0(a1, &v35 + 1, &v35);
                if (sub_10000C240())
                {
                  sub_10000AF54("Pipe[ 0x%4x, p %2d, le 0x%4x, cl 0x%4x] Tx[ %4d kbps, %7d B, %2d%% %3d, %2d%% %3d ] Rx[ %4d kbps, %7d B, %2d%% %3d, %2d%% %3d ] Cl[ r %3d, c %3d, t %3d ] Le[ r %3d, c %3d, t %3d ] av [ %d, %d ] vse %d le %d, cl %d", 100 * *(a2 + 36) / (*(a2 + 34) + *(a2 + 36)), 100 * *(a2 + 27) / (*(a2 + 25) + *(a2 + 27)), *(a2 + 34), v35, *(a2 + 25), *(a2 + 16), *(a2 + 14), *(*(*(&xmmword_100B5A1A0 + v2) + 8) + v6 + 52));
                  v19 = sub_10000C050(0x51u);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = sub_10000C0FC();
                    *buf = 136446210;
                    v38 = v20;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                  }
                }
              }

              v8 += v17;
              v9 = (v16 + v9);
              v5 = *(&xmmword_100B5A1A0 + v2);
              *(*(v5 + 8) + v6 + 72) = *(v36 + 80);
            }

            ++v7;
            v6 += 88;
          }

          while (v7 < *(v5 + 16));
        }

        else
        {
          v9 = 0;
          v8 = 0;
        }

        if (sub_100084230() >= 0x13 && v8 | v9)
        {
          if (*(a2 + 202))
          {
            if (*(a2 + 202) != 0xFFFF)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("LinkCl AvSNR [0x%4x] [ %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d ] ", *(a2 + 149), *(a2 + 150), *(a2 + 151), *(a2 + 152), *(a2 + 153), *(a2 + 154), *(a2 + 155), *(a2 + 202));
                v21 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = sub_10000C0FC();
                  *buf = 136446210;
                  v38 = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("LinkLe AvSNR [0x%4x] [ %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d ] minSNR [%3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d ]", *(a2 + 59), *(a2 + 46), *(a2 + 49), *(a2 + 65), *(a2 + 67), *(a2 + 69), *(a2 + 71), *(a2 + 204));
            v23 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = sub_10000C0FC();
              *buf = 136446210;
              v38 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("LinkLe AvgRSSI [0x%4x] [ %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d ] LinkCl [0x%4x] AvgRSSI[ %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d ]", *(a2 + 167), *(a2 + 166), v9, v25, *(a2 + 161), *(a2 + 94), *(a2 + 95), *(a2 + 204));
            v26 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = sub_10000C0FC();
              *buf = 136446210;
              v38 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("LinkLe PktCnt [0x%4x] [ 1M %3d %3d, 2M %3d %3d ] LinkCl [0x%4x] PktCnt[ DH1 %3d %3d, DH3 %3d %3d, DH5 %3d %3d, 2/4DH1 %3d %3d, 2/4DH3 %3d %3d, 2/4DH5 %3d %3d, 3/8DH1 %3d %3d, 3/8DH3 %3d %3d, 3/8Dh5 %3d %3d ]", *(a2 + 189), *(a2 + 190), *(a2 + 191), *(a2 + 192), *(a2 + 193), *(a2 + 194), *(a2 + 195), *(a2 + 204));
            v28 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = sub_10000C0FC();
              *buf = 136446210;
              v38 = v29;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }

        v3 += v8;
        v4 = v9 + v31;
        sub_1000AC810(a1, *(a2 + 20), *(a2 + 29), v8 + v32, v9 + v31, *(a2 + 12), *(a2 + 14), (100 * *(a2 + 23) / (*(a2 + 21) + *(a2 + 23))), 100 * *(a2 + 27) / (*(a2 + 25) + *(a2 + 27)), *(a2 + 18), 100 * *(a2 + 32) / (*(a2 + 30) + *(a2 + 32)), 100 * *(a2 + 36) / (*(a2 + 34) + *(a2 + 36)), *(a2 + 16), 0, *(a2 + 38));
      }

      ++v2;
    }

    while (v2 < word_100B5A19A);
  }

  return 0;
}

void sub_1000AC810(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char a10, unsigned __int8 a11, unsigned __int8 a12, char a13, char a14, char a15)
{
  if (!dword_100BC9C74)
  {
    return;
  }

  v20 = 0;
  for (i = qword_100BC9CB0; ; i += 134)
  {
    if (*i != a1)
    {
      goto LABEL_9;
    }

    v22 = *(i + 76);
    if (v22 == 2)
    {
      break;
    }

    if (v22 == 1)
    {
      *(i + 113) = a2;
      *(i + 114) += a4;
      *(i + 115) += a5;
      v32 = a6;
      *(i + 234) += a6;
      v33 = 570;
      v34 = a10;
      v35 = -a10 / 0xAu - 2;
      if (a10 < 0xFFFFFF92)
      {
        LOBYTE(v35) = 9;
      }

      v36 = 470;
      if (a10 <= -30)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      if (a10 <= -30)
      {
        v33 = 570;
      }

      v38 = a8;
      v39 = a9;
      goto LABEL_28;
    }

    if (sub_10000C240())
    {
      v23 = sub_1000CC6B0(*(i + 76));
      sub_10000AF54("Unexpected transport : %s. Don't collect stats", v24, v25, v26, v27, v28, v29, v30, v23);
      v31 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10081427C();
      }
    }

LABEL_9:
    if (++v20 >= dword_100BC9C74)
    {
      return;
    }
  }

  *(i + 168) = a3;
  *(i + 169) += a4;
  *(i + 170) += a5;
  v33 = 790;
  v36 = 690;
  *(i + 344) += a7;
  if (a13 >= 0xFFFFFF92)
  {
    v40 = -a13 / 0xAu - 2;
  }

  else
  {
    v40 = 9;
  }

  if (a13 > -30)
  {
    v37 = 0;
  }

  else
  {
    v36 = 690;
    v37 = v40;
  }

  if (a13 <= -30)
  {
    v33 = 790;
  }

  v38 = a11;
  v39 = a12;
  v32 = a6;
  v34 = a10;
LABEL_28:
  v41 = v36 + 10 * ((205 * v38) >> 11) + v37;
  ++*(i + v41);
  v42 = v33 + 10 * ((205 * v39) >> 11) + v37;
  ++*(i + v42);
  if (a15 == 2)
  {
    v53 = *(i + 1062);
    v54 = i + 4 * v53;
    *(v54 + 446) = v32;
    v54[894] = v34;
    *(i + 1062) = v53 + 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect BT_TS_SetTransportMetrics. leCoexDenials = %u; leRSSI = %u", v55, v56, v57, v58, v59, v60, v61, v32);
      v52 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
LABEL_35:
        *buf = 136446210;
        v66 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else if (a15 == 1)
  {
    v43 = *(i + 1063);
    v44 = i + 4 * v43;
    *(v44 + 486) = a7;
    v44[974] = a13;
    *(i + 1063) = v43 + 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect BT_TS_SetTransportMetrics. coexDenials = %u; classicRSSI = %u", v45, v46, v47, v48, v49, v50, v51, a7);
      v52 = sub_10000C050(0x56u);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }
    }
  }

  *(i + 1062) %= 0x14u;
  *(i + 1063) %= 0x14u;
}

uint64_t sub_1000ACC38(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 52);
  v4 = *(a1 + 54);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return sub_1000ACC9C(v2, v6, v3, v4, v5, v7, v8);
}

uint64_t sub_1000ACC9C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 120);
  v14 = sub_1000ACEE4(a1, a2);
  if (v14)
  {
    sub_10004DFB4(buf, v14);
    if (sub_1000ACFBC(a1, buf))
    {
      v15 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v27 = v14;
        v28 = 1024;
        v29 = a3;
        v30 = 1024;
        v31 = a4;
        v32 = 1024;
        v33 = a5;
        v34 = 2048;
        v35 = a6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a Bluetooth Usage Event max:%d min:%d  audioStream=%d timeStamp=%llu", buf, 0x28u);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100764160;
      v18[3] = &unk_100B0B760;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v19 = v14;
      v20 = a6;
      v21 = a7;
      sub_10074063C(a1, v18);
    }
  }

  else
  {
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = a2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
    }
  }

  return sub_1000088CC(v25);
}

void sub_1000ACEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_1000ACEE4(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 120);
  v4 = *(a1 + 384);
  if (v4 == (a1 + 392))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (*(v4 + 6) != a2)
    {
      v5 = *(v4 + 1);
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
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == (a1 + 392))
      {
        goto LABEL_9;
      }
    }

    v8 = sub_10004DF60(v4 + 32);
  }

  sub_1000088CC(v10);

  return v8;
}

BOOL sub_1000ACFBC(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 672 != sub_10004E34C(a1 + 664, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_1000AD030(uint64_t a1, _WORD *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v25 = a2[9];
  v26 = *(a2 + 21);
  v23 = *(a2 + 23);
  v24 = *(a2 + 27);
  v27 = *(a2 + 25);
  v28 = a2[15];
  v8 = a2[16];
  v29 = a2[17];
  v9 = a2[18];
  *(a1 + 1408) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_100B50910 != -1)
  {
    sub_100827668();
  }

  v10 = v6 + v4;
  v11 = v7 + v5;
  v12 = sub_1000AD270(off_100B50908);
  if ((*(a1 + 1626) & 1) != 0 || (v13 = v11 + v10, v13 > *(a1 + 1622)) || v13 < *(a1 + 1624))
  {
    if (qword_100B508B0 != -1)
    {
      sub_1008272AC();
    }

    v14 = off_100B508A8;
    v15 = sub_1000ABB80(a2[102]);
    sub_1000AD29C(v14, v15, v10, v11, v12, *(a1 + 1408), 0);
  }

  if (*(a1 + 1627) == 1)
  {
    v16 = *(a1 + 1630);
    v17 = (v16 + 1) <= 0xFFF0u ? v16 + 1 : 0;
    *(a1 + 1630) = v17;
    if (!(v17 % *(a1 + 1628)))
    {
      v18 = 100 * v9 / (v9 + v29);
      v19 = *(a1 + 1408);
      if (qword_100B508B0 != -1)
      {
        sub_1008272AC();
      }

      v20 = off_100B508A8;
      v21 = sub_1000ABB80(a2[102]);
      LOWORD(v30) = v25;
      WORD1(v30) = 100 * v23 / (v23 + v26);
      WORD2(v30) = v26;
      WORD3(v30) = 100 * v8 / (v8 + v28);
      WORD4(v30) = v28;
      WORD5(v30) = 100 * v24 / (v24 + v27);
      WORD6(v30) = v27;
      HIWORD(v30) = v18;
      v31 = v29;
      v32 = 0;
      v33 = 0;
      v34 = v19;
      sub_10076CBC4(v20, v21, &v30, 0);
    }
  }

  return 0;
}

uint64_t sub_1000AD270(_BYTE *a1)
{
  if (a1[205] & 1) != 0 || (a1[206] & 1) != 0 || (a1[208])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[212];
  }

  return v1 & 1;
}

void sub_1000AD29C(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, char a5, uint64_t a6, int a7)
{
  v13 = sub_100007EE8();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ACC38;
  v14[3] = &unk_100AEB3F0;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v14[4] = a2;
  v14[5] = a6;
  v15 = a7;
  sub_10000CA94(v13, v14);
}

uint64_t sub_1000AD34C()
{
  result = sub_1000154A8();
  if (result)
  {
    v1 = *(*result + 32);

    return v1();
  }

  return result;
}

uint64_t sub_1000AD3BC()
{
  if (qword_100B54100 != -1)
  {
    sub_100827910();
  }

  return sub_1000AD34C();
}

void sub_1000AD414(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReport_Classic_RSSI", *(a2 + 16));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReport_LE_RSSI", *(a2 + 18));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportLeSuccessfulTxCount", *(a2 + 21));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportLeReTxCount", *(a2 + 23));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportLeSuccessfulRxCount", *(a2 + 25));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportLeRxErrorCount", *(a2 + 27));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportClassicSuccessfulTxCount", *(a2 + 30));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportClassicReTxCount", *(a2 + 32));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportClassicSuccessfulRxCount", *(a2 + 34));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportClassicRxErrorCount", *(a2 + 36));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportLeCoexDenialCount", *(a2 + 12));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReportClassicCoexDenialCount", *(a2 + 14));
  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReport_flushCount", a3);
  if (*(a2 + 29))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  xpc_dictionary_set_uint64(v6, "kWCMBTMetricsReport_Active_PHY", v7);
  sub_1000AD59C(a1, 0x200uLL, v6);

  xpc_release(v6);
}

void sub_1000AD59C(uint64_t a1, uint64_t value, void *a3)
{
  if (&WCMEnabled)
  {
    *keys = *&off_100B0EFB0;
    object[0] = xpc_uint64_create(value);
    object[1] = a3;
    v5 = xpc_dictionary_create(keys, object, 2uLL);
    xpc_connection_send_message(*(a1 + 160), v5);
    xpc_release(object[0]);
    xpc_release(v5);
  }

  else
  {
    v6 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_INFO))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WCM not enabled, discarding message", keys, 2u);
    }
  }
}

void sub_1000AD6A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  __chkstk_darwin(v6, 8 * v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830398();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_1000AD864(uint64, v8, &v15, v6);
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

uint64_t sub_1000AD864(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = sub_1000AD9D8(v8, &__p);
  if (!v9)
  {
    v10 = 0;
    if (a4)
    {
      v11 = __p;
      while (v11 != v16)
      {
        v12 = *v11;
        if (qword_100B508F0 != -1)
        {
          sub_10084001C();
        }

        v13 = sub_10056A4C4(off_100B508E8, a1, v12);
        if (!v13)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840044();
          }

          v9 = 7;
          goto LABEL_18;
        }

        *(a2 + 8 * v10++) = v13;
        ++v11;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
  }

LABEL_18:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1000AD9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AD9D8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_1000ADA24(off_100B50F60, a2);
  return 0;
}

uint64_t sub_1000ADA24(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 56);
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  while (v5 != v4)
  {
    v6 = *v5;
    if (**v5 == 2 || v6[6])
    {
      v8 = *(v6 + 1);
      sub_1000C2484(a2, &v8);
      v4 = *(a1 + 128);
    }

    ++v5;
  }

  return sub_1000088CC(v9);
}

void sub_1000ADAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1000ADAC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__s = 0u;
  v7 = 0u;
  if (qword_100B50B88 != -1)
  {
    sub_100863EC4();
  }

  sub_1000ADBF0(qword_100B50B80, *(a1 + 48), __s, 0x64uLL);
  os_unfair_lock_lock(v2 + 34);
  __p[0] = (*(*(a1 + 32) + 8) + 48);
  v3 = sub_1000ADCCC(&v2[28], __p[0]);
  sub_100007E30(__p, __s);
  sub_100071970(v3 + 56, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(v2 + 34);
}

void sub_1000ADBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000ADBF0(uint64_t a1, int a2, char *a3, size_t a4)
{
  if (!a4)
  {
    return 0;
  }

  *v10 = 0xE00000001;
  v11 = 1;
  v12 = a2;
  bzero(v8, 0x288uLL);
  v7 = 648;
  if (sysctl(v10, 4u, v8, &v7, 0, 0))
  {
    *a3 = 0;
  }

  else
  {
    strlcpy(a3, v9, a4);
  }

  return a3;
}

uint64_t sub_1000ADCCC(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_1000867EC(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1000D5D94();
  }

  return v2;
}

id sub_1000ADD80(unsigned __int8 *a1, uint64_t a2)
{
  for (i = [[NSMutableString alloc] initWithString:@"0x"]; a2; --a2)
  {
    v5 = *a1++;
    [i appendFormat:@"%02x", v5];
  }

  return i;
}

void sub_1000ADE1C(uint64_t a1, unsigned int a2)
{
  if (qword_100BC7D58 != -1)
  {
    sub_100877884();
  }

  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_1000AE7E4(&v22, a1 + 104);
  v4 = v22;
  if (v22 != v23)
  {
    do
    {
      if ((*(*(v4 + 7) + 8 * (a2 >> 6) + 168) & (1 << a2)) != 0)
      {
        sub_1000AEAB0((a1 + 104), v4 + 32);
      }

      v5 = *(v4 + 1);
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
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v23);
  }

  if (byte_100BC7D50)
  {
    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: clearAdvDataCacheForAppleType before removal", buf, 2u);
    }

    sub_1007B44D8(&v22, a2);
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump: clearAdvDataCacheForAppleType after removal", buf, 2u);
    }

    sub_1007B44D8((a1 + 104), a2);
    v10 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: clearAdvDataCacheForAppleType removed items with type %d", buf, 8u);
    }

    v11 = v22;
    if (v22 != v23)
    {
      do
      {
        if (a1 + 112 == sub_10004E34C(a1 + 104, v11 + 32))
        {
          v12 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0u;
            memset(v33, 0, sizeof(v33));
            uuid_unparse_upper(v11 + 32, buf);
            sub_100007E30(__p, buf);
            v13 = v21;
            v14 = __p[0];
            sub_10004BA6C(*(v11 + 7));
            v15 = __p;
            if (v13 < 0)
            {
              v15 = v14;
            }

            v16 = buf;
            if (v33[7] < 0)
            {
              v16 = *buf;
            }

            v17 = (*(*(v11 + 7) + 8 * (a2 >> 6) + 168) & (1 << a2)) != 0;
            *v24 = 136315906;
            v25 = v15;
            v26 = 2080;
            v27 = v16;
            v28 = 1024;
            v29 = a2;
            v30 = 1024;
            v31 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump:    %s:%s hasType(%d):%d", v24, 0x22u);
            if ((v33[7] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v18 = *(v11 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v11 + 2);
            v7 = *v19 == v11;
            v11 = v19;
          }

          while (!v7);
        }

        v11 = v19;
      }

      while (v19 != v23);
    }
  }

  sub_10002708C(&v22, v23[0]);
}

void sub_1000AE1E8(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 111, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857DB0();
    }
  }

  v18 = sub_100013CA4(v22, 0, v12, v13, v14, v15, v16, v17, "kCBScanOptionRemoveMultipleDupFilterEntryPacketType");
  if (v18)
  {
    sub_1005B2CE4(a1, 111, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857E20();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v19 = sub_100007EE8();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000AE378;
    v20[3] = &unk_100AE0860;
    v20[4] = a1;
    v20[5] = v21;
    sub_10000D334(v19, v20);
  }
}

void sub_1000AE378(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_1000AE3D4(v3, v4, v5);
}

void sub_1000AE3D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10005D040(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    sub_1000AE4B0(v5, a2, a3);
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 88);
      v9 = 138543618;
      v10 = v8;
      v11 = 1024;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clearDuplicateFilterCache for session %{public}@ type %d", &v9, 0x12u);
    }
  }
}

uint64_t sub_1000AE4B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100B51078 != -1)
  {
    sub_10083AE3C();
  }

  v5 = off_100B51070;

  return sub_1000AE50C(v5, a2, a3);
}

uint64_t sub_1000AE50C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a1 + 1984))
  {
    return 105;
  }

  v4 = *(a1 + 2072);
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = a1 + 2072;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == a1 + 2072 || *(v6 + 32) > a2)
  {
LABEL_25:
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875C40();
    }

    return 401;
  }

  v12 = *(v6 + 40);
  if (((*(*(v12 + 8) + ((a3 >> 3) & 0x18) + 280) >> a3) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7AFC();
    }

    return 401;
  }

  sub_1000ADE1C(v12, a3);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v13 = *sub_10000C798();
  if ((*(v13 + 640))())
  {
    v14 = sub_10000C7D0();
    v10 = (*(*v14 + 736))(v14, v17, 0, 1, a3);
    if (v10 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875BD8();
    }
  }

  else
  {
    v15 = sub_100007EE8();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1007A677C;
    v16[3] = &unk_100ADF8F8;
    v16[4] = a1;
    sub_10000CA94(v15, v16);
    return 0;
  }

  return v10;
}

uint64_t sub_1000AE754(void *a1, uint64_t *a2, unsigned __int8 *uu2)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1000AE8C4(a1, a2, &v5, &v4, uu2);
  if (!result)
  {
    sub_1000AEB58();
  }

  return result;
}

void *sub_1000AE7E4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000AE83C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1000AE83C(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000AE754(v5, v5 + 1, v4 + 32);
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

const unsigned __int8 *sub_1000AE8C4(void *a1, uint64_t *a2, const unsigned __int8 **a3, uint64_t *a4, unsigned __int8 *uu2)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || uuid_compare(uu2, a2 + 32) < 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
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

      if ((uuid_compare(v12 + 32, uu2) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

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

  if ((uuid_compare(a2 + 32, uu2) & 0x80000000) == 0)
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
    v19 = a2;
    do
    {
      v15 = *(v19 + 2);
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if (uuid_compare(uu2, v15 + 32) < 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_10004A7D0(a1, a3, uu2);
}

uint64_t sub_1000AEA58(uint64_t a1, uint64_t a2)
{
  uuid_copy(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100AE0AB8;
  *(a1 + 24) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  return a1;
}

uint64_t sub_1000AEAB0(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1000AEAF8(a1, v3);
  return 1;
}

uint64_t *sub_1000AEAF8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  a2[6] = &off_100AE0AB8;
  v4 = a2[7];
  if (v4)
  {
    sub_10000C808(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_1000AEBD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000533E0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AEBEC()
{
  if (qword_100B6E520 != -1)
  {
    sub_100831404();
  }

  return byte_100B6E518;
}

uint64_t sub_1000AEC24(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AED74;
  v7[3] = &unk_100AF2230;
  v7[4] = a2;
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF2A4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  return sub_10002173C(a1, 258, 1, v7, v6);
}

uint64_t sub_1000AECE8()
{
  if (off_100B60770)
  {
    v0 = off_100B60770();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000AED9C(uint64_t a1, unsigned int a2, char a3, char a4, uint64_t (*a5)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (!result)
  {
    if (HIBYTE(v37))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v11 = WORD2(v37);
      if (WORD1(v37) > WORD2(v37))
      {
        if (BYTE6(v37) == 2)
        {
          ++WORD2(v37);
          *(v36 + v11) = 77;
          if (HIBYTE(v37))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v12 = WORD2(v37);
            if (WORD1(v37) > WORD2(v37))
            {
              if (BYTE6(v37) == 2)
              {
                ++WORD2(v37);
                *(v36 + v12) = a2;
                if (!a2)
                {
LABEL_18:
                  v20 = a2;
                  v21 = a1 - a2 + 8 * a2 + 1;
                  v22 = v20 - 8;
                  while (!HIBYTE(v37))
                  {
                    v23 = WORD2(v37);
                    if (WORD1(v37) <= WORD2(v37))
                    {
                      goto LABEL_41;
                    }

                    if (BYTE6(v37) != 2)
                    {
                      v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_42;
                    }

                    v24 = *(v21 - 1);
                    ++WORD2(v37);
                    *(v36 + v23) = v24;
                    if (HIBYTE(v37))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_37:
                      v28 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3985, v28);
                    }

                    if (WORD1(v37) - WORD2(v37) <= 5)
                    {
                      goto LABEL_37;
                    }

                    if (BYTE6(v37) != 2)
                    {
                      v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_38;
                    }

                    sub_1000075EC((v36 + WORD2(v37)), v21, 6uLL);
                    WORD2(v37) += 6;
                    v21 += 7;
                    if (__CFADD__(v22++, 1))
                    {
                      goto LABEL_27;
                    }
                  }

                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_41:
                  v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_42:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3984, v29);
                }

                v13 = a2;
                v14 = a1 + 1;
                while (!HIBYTE(v37))
                {
                  v15 = WORD2(v37);
                  if (WORD1(v37) <= WORD2(v37))
                  {
                    goto LABEL_49;
                  }

                  if (BYTE6(v37) != 2)
                  {
                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_50;
                  }

                  v16 = *(v14 - 1);
                  ++WORD2(v37);
                  *(v36 + v15) = v16;
                  if (HIBYTE(v37))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_45:
                    v30 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_46:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3981, v30);
                  }

                  if (WORD1(v37) - WORD2(v37) <= 5)
                  {
                    goto LABEL_45;
                  }

                  if (BYTE6(v37) != 2)
                  {
                    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_46;
                  }

                  sub_1000075EC((v36 + WORD2(v37)), v14, 6uLL);
                  WORD2(v37) += 6;
                  v14 += 7;
                  if (!--v13)
                  {
                    if (a2 <= 7)
                    {
                      goto LABEL_18;
                    }

LABEL_27:
                    if (HIBYTE(v37))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                    }

                    else
                    {
                      v26 = WORD2(v37);
                      if (WORD1(v37) > WORD2(v37))
                      {
                        if (BYTE6(v37) == 2)
                        {
                          ++WORD2(v37);
                          *(v36 + v26) = a3;
                          if (HIBYTE(v37))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                          }

                          else
                          {
                            v27 = WORD2(v37);
                            if (WORD1(v37) > WORD2(v37))
                            {
                              if (BYTE6(v37) == 2)
                              {
                                ++WORD2(v37);
                                *(v36 + v27) = a4;
                                return sub_100020078(233, v36, BYTE4(v37), a5, sub_100022AD0, v17, v18, v19);
                              }

                              v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3988, v35);
                            }
                          }

                          v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                          goto LABEL_66;
                        }

                        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3987, v34);
                      }
                    }

                    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                    goto LABEL_62;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
LABEL_49:
                v31 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_50:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3980, v31);
              }

              v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_58:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3978, v33);
            }
          }

          v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_58;
        }

        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_54:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3977, v32);
      }
    }

    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_1000AF254(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x102u);
}

void sub_1000AF2D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = [v7 isEqualToString:v9];

    if (v8)
    {
      sub_100055FD8(a3, v5);
    }

    v5 += 14;
  }
}