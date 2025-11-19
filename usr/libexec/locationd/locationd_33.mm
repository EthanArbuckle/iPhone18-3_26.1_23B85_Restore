void sub_100235988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_1002359B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 56);
  v58 = a1 + 56;
  (*(v10 + 16))();
  v60 = 256;
  sub_100235DCC(a1, v57);
  sub_1002414D8((a1 + 72), v57, a2, v54, a5);
  sub_100236C0C(v53, v54[0], v54[1]);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_100198F4C(a1, v53, a3, &v51, a5);
  v11 = v52;
  if (v51 != v52)
  {
    v12 = (v51 + 24);
    do
    {
      v13 = *(v12 - 24);
      v48 = *(v12 - 1);
      v47 = v13;
      if (*(v12 + 23) < 0)
      {
        sub_100007244(&__p, *v12, *(v12 + 1));
      }

      else
      {
        v14 = *v12;
        v50 = *(v12 + 2);
        __p = v14;
      }

      v15 = v12 - 24;
      if (*(v12 + 24) == 1)
      {
        sub_1012625C4(a1, &v38);
        v16 = a4[1];
        v17 = a4[2];
        if (v16 >= v17)
        {
          v25 = *a4;
          v26 = v16 - *a4;
          v27 = 0x8E38E38E38E38E39 * (v26 >> 4) + 1;
          if (v27 > 0x1C71C71C71C71C7)
          {
            sub_10028C64C();
          }

          v28 = 0x8E38E38E38E38E39 * ((v17 - v25) >> 4);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0xE38E38E38E38E3)
          {
            v27 = 0x1C71C71C71C71C7;
          }

          if (v27)
          {
            sub_100241440(a4, v27);
          }

          v29 = (16 * (v26 >> 4));
          *v29 = v38;
          v30 = v39;
          v31 = v40;
          v32 = v42;
          v29[3] = v41;
          v29[4] = v32;
          v29[1] = v30;
          v29[2] = v31;
          v33 = v43;
          v34 = v44;
          v35 = v46;
          v29[7] = v45;
          v29[8] = v35;
          v29[5] = v33;
          v29[6] = v34;
          v24 = v29 + 9;
          v36 = v29 - v26;
          memcpy(v29 - v26, v25, v26);
          v37 = *a4;
          *a4 = v36;
          a4[1] = v24;
          a4[2] = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v16 = v38;
          v18 = v39;
          v19 = v40;
          v20 = v42;
          v16[3] = v41;
          v16[4] = v20;
          v16[1] = v18;
          v16[2] = v19;
          v21 = v43;
          v22 = v44;
          v23 = v46;
          v16[7] = v45;
          v16[8] = v23;
          v16[5] = v21;
          v16[6] = v22;
          v24 = v16 + 9;
        }

        a4[1] = v24;
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p);
      }

      v12 = (v12 + 56);
    }

    while (v15 + 56 != v11);
  }

  *&v38 = &v51;
  sub_100199B08(&v38);
  sub_100199B5C(v53, v53[1]);
  *&v38 = &v56;
  sub_100236AE4(&v38);
  *&v38 = &v55;
  sub_100236AE4(&v38);
  *&v38 = v54;
  sub_100236AE4(&v38);
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (HIBYTE(v60) == 1)
  {
    if (v60)
    {
      pthread_mutex_unlock(v59);
    }

    else
    {
      (*(*v58 + 24))(v58);
    }
  }
}

void sub_100235D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, char *a42)
{
  v45 = *v42;
  if (*v42)
  {
    *(v42 + 8) = v45;
    operator delete(v45);
  }

  sub_100199B5C(&a41, a42);
  sub_101264B68((v43 - 224));
  v46 = *(v43 - 152);
  if (v46)
  {
    *(v43 - 144) = v46;
    operator delete(v46);
  }

  sub_1017EC98C(v43 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_100235DCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 56);
  (*(*(a1 + 56) + 16))(a1 + 56);
  sub_1002365D0(v3[5], a2);
  return ((*v3)[3])(v3);
}

void sub_100235E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100235E78(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 104);
  if (v3 && sub_100023B68(v3))
  {
    *(&v22.__r_.__value_.__s + 23) = 7;
    strcpy(&v22, "SELECT ");
    sub_1002365D8(__p);
    if ((v21 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v5 = v21;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::string::append(&v22, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v19 = 6;
    strcpy(__s, " FROM ");
    v8 = std::string::append(&v23, __s, 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = std::string::append(&v24, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26 = v13->__r_.__value_.__r.__words[2];
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v26 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    sub_1000388D8(*(a1 + 104), v15);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v16 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192AFA8(buf);
    LOWORD(v24.__r_.__value_.__l.__data_) = 0;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<CLWifiTileHeaderEntry> CLWifiTileHeaderDatabase::selectAll()", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_100236478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v54 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002365D8(uint64_t a1@<X8>)
{
  v2 = &qword_102659A78;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = 17;
  do
  {
    if (*(v2 + 2) != 4)
    {
      v4 = *(a1 + 23);
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(a1 + 8);
      }

      if (v4)
      {
        *(&v11.__r_.__value_.__s + 23) = 2;
        strcpy(&v11, ", ");
        v5 = strlen(*v2);
        v6 = std::string::append(&v11, *v2, v5);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v13 = v6->__r_.__value_.__r.__words[2];
        *__p = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        if (v13 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v13 >= 0)
        {
          v9 = HIBYTE(v13);
        }

        else
        {
          v9 = __p[1];
        }

        std::string::append(a1, v8, v9);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = strlen(*v2);
        std::string::append(a1, *v2, v10);
      }
    }

    v2 += 6;
    --v3;
  }

  while (v3);
}

void sub_100236708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100236764(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_100242100(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((v7 + 24), *(a2 + 3), *(a2 + 4));
    v7 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 24);
    *(48 * v2 + 0x28) = *(a2 + 5);
    *(48 * v2 + 0x18) = v9;
    v10 = 48 * v2;
  }

  *&v19 = v10 + 48;
  v11 = *(a1 + 8);
  v12 = v7 + *a1 - v11;
  sub_100241F7C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1002368FC(&v17);
  return v16;
}

void sub_1002368B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002368FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002368C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10046F2DC(a1);
  }

  return a1;
}

uint64_t sub_1002368FC(uint64_t a1)
{
  sub_100236934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100236934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_100236990(uint64_t a1, uint64_t a2)
{
  result = *sub_1000897E8(a1, &v3, a2);
  if (!result)
  {
    sub_100242040();
  }

  return result;
}

uint64_t sub_100236A10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100236A98(result, a4);
  }

  return result;
}

void sub_100236A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100236AE4(&a9);
  _Unwind_Resume(a1);
}

void sub_100236A98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100242100(a1, a2);
  }

  sub_10028C64C();
}

void sub_100236AE4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100236B38(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100236B38(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_100236B88(void *a1, void *a2, uint64_t a3)
{
  result = *sub_1002422A4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100242040();
  }

  return result;
}

void *sub_100236C0C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100236B88(a1, v4, v6);
      v6 += 48;
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_100236C90(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_1001AF614())
  {
    if (a3 && ([a3 isValid] & 1) != 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31C74();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        [a3 getBasicInfo];
        v6 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136380675;
        v39 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, local store valid, %{private}s", buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A3267C();
      }

      __p[0].__r_.__value_.__r.__words[0] = 0x7FEFFFFFFFFFFFFFLL;
      sub_1001ACAE0(buf, a1, __p);
      if (sub_101208234(buf))
      {
        sub_10018F0D0(__p);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0].__r_.__value_.__r.__words[0];
        }

        v8 = [NSString stringWithUTF8String:v7];
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(NSString *)v8 UTF8String];
          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136380675;
          *(__p[0].__r_.__value_.__r.__words + 4) = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it is detected as moving using GPS harvest samples!", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A3277C(__p);
          LODWORD(v28) = 136380675;
          *(&v28 + 4) = [(NSString *)v8 UTF8String];
          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v23);
          if (v23 != __p)
          {
            free(v23);
          }
        }

        [a3 deleteRecordByMacString:v8];
      }

      else
      {
        sub_1001AD9CC(buf, &v28);
        if (fabs(*&v28) <= 90.0 && fabs(*(&v28 + 1)) <= 180.0)
        {
          sub_1001A7094(__p);
          (*(*__p[0].__r_.__value_.__l.__data_ + 48))(&v46);
          if (__p[0].__r_.__value_.__l.__size_)
          {
            sub_100008080(__p[0].__r_.__value_.__l.__size_);
          }

          if (v46)
          {
            sub_100199FB0(v46);
            sub_1001E0C88(v46);
            v14 = v46;
            sub_1001970F8(__p, v36, v34, v33, 0, v30, -1, *&v28, *(&v28 + 1), v29, v31, v32, v35);
            v45 = v37;
            Current = CFAbsoluteTimeGetCurrent();
            v16 = sub_1001E0C90(v14, __p, Current);
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_101A31D8C();
            }

            v17 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#warning, movingApDetector is null", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A3277C(__p);
              v27 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL isBadClientSideCentroidByMovingApDetector(const CLWifiAccessPoint &)", "%s\n", v27);
              if (v27 != __p)
              {
                free(v27);
              }
            }

            v16 = 0;
          }

          if (*(&v46 + 1))
          {
            sub_100008080(*(&v46 + 1));
          }

          if (v16)
          {
            sub_10018F0D0(__p);
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0].__r_.__value_.__r.__words[0];
            }

            v19 = [NSString stringWithUTF8String:v18];
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101A31D8C();
            }

            v20 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(NSString *)v19 UTF8String];
              LODWORD(__p[0].__r_.__value_.__l.__data_) = 136380675;
              *(__p[0].__r_.__value_.__r.__words + 4) = v21;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it fails to pass cross-check with GPS/Cell!", __p, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A3277C(__p);
              v25 = [(NSString *)v19 UTF8String];
              LODWORD(v46) = 136380675;
              *(&v46 + 4) = v25;
              v26 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v26);
              if (v26 != __p)
              {
                free(v26);
              }
            }

            [a3 deleteRecordByMacString:v19];
          }

          else
          {
            v22 = sub_10024338C(buf);
            sub_1002434B8(v22);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101A31D8C();
          }

          v13 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it does not have a valid centroid!", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A3277C(__p);
            LOWORD(v46) = 0;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v24);
            if (v24 != __p)
            {
              free(v24);
            }
          }
        }
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31C74();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as the store is invalid", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A327C0();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it is disabled by settings", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A325A0();
    }
  }
}

void sub_1002374CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v60 = *(v58 - 88);
  if (v60)
  {
    sub_100008080(v60);
  }

  sub_100C42C30(&a25);
  _Unwind_Resume(a1);
}

const __CFString *sub_10023756C(uint64_t **a1, int a2)
{
  __src = 0;
  v20 = 0;
  v21 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      if (v5 >= v21)
      {
        v7 = __src;
        v8 = v5 - __src;
        v9 = (v5 - __src) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v11 = v21 - __src;
        if ((v21 - __src) >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1000B9708(&__src, v12);
        }

        v13 = (v5 - __src) >> 3;
        v14 = (8 * v9);
        v15 = (8 * v9 - 8 * v13);
        *v14 = v6;
        v5 = (v14 + 1);
        memcpy(v15, v7, v8);
        v16 = __src;
        __src = v15;
        v20 = v5;
        v21 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      v20 = v5;
      v3 += 14;
    }

    while (v3 != v4);
  }

  v17 = sub_1002376D4(a2, &__src);
  if (__src)
  {
    v20 = __src;
    operator delete(__src);
  }

  return v17;
}

void sub_1002376B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_1002376D4(int a1, uint64_t *a2)
{
  if (a1 < 1)
  {
    return &stru_1025052F8;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return &stru_1025052F8;
  }

  v5 = v3 - v2;
  v6 = (v3 - v2) >> 3;
  if (v6 <= a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = rand() % (v6 - a1 + 1);
  }

  *(&v18.__r_.__value_.__s + 23) = 0;
  v18.__r_.__value_.__s.__data_[0] = 0;
  if (v7 >= v6)
  {
    v15 = &v18;
  }

  else
  {
    v9 = 8 * v7;
    v10 = v7 + 1;
    v11 = 1;
    do
    {
      if (v11 != 1)
      {
        std::string::append(&v18, ", ", 2uLL);
      }

      sub_10018F0D0(&__p);
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
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v18, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v10 >= (v5 >> 3))
      {
        break;
      }

      v9 += 8;
      ++v10;
    }

    while (v11++ < a1);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }
  }

  v8 = [NSString stringWithCString:v15 encoding:4];
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_100237850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002378A4(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v8 = *(a1 + 24);
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_100199EB8(v8, Current);
  if (result)
  {
    if (*a3)
    {
      return sub_100237C4C(a1, a2, a3, a4) == 0;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101968930();
      }

      v11 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", v12, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101969688();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100237998(uint64_t a1, double *a2, double a3)
{
  if (!sub_10019A2D4(a2))
  {
    return 3;
  }

  v6 = *(a1 + 24);
  Current = CFAbsoluteTimeGetCurrent();
  if (!sub_100199EB8(v6, Current))
  {
    return 2;
  }

  sub_1001AB7A0(a2, v16);
  v18 = a3;
  v17 = 0;
  v8 = sub_1001D3D90(*(a1 + 24), v16);
  v9 = sub_1001D3D90(*(a1 + 40), v16);
  sub_1002386C0((a1 + 168), v8, v9);
  if (qword_1025D4620 != -1)
  {
    sub_1019688C4();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002386FC(a2, &v25);
    v11 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
    *buf = 136643331;
    v20 = v11;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v8;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid: %{sensitive}s, Rejected by Cell Only IM: %d, Rejected by GPS IM: %d", buf, 0x18u);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019688C4();
    }

    sub_1002386FC(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v25.__r_.__value_.__l.__data_) = 136643331;
    *(v25.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(v25.__r_.__value_.__r.__words[1]) = 1024;
    *(&v25.__r_.__value_.__r.__words[1] + 6) = v9;
    WORD1(v25.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v25.__r_.__value_.__r.__words[2]) = v8;
    v14 = _os_log_send_and_compose_impl();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CrossCheckOutcome CLMovingApDetector::crossCheckCentroid(const CLWifiAPLocation &, const CFAbsoluteTime)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  return v8 ^ 1u;
}

uint64_t sub_100237C4C(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v8 = sub_100237998(a1, a2, a4);
  v9 = v8;
  if (v8 == 1)
  {
    sub_1002380A8(a1, a2, a3, a4);
  }

  else if (!v8)
  {
    sub_1008DB7FC(a1, a2, a3);
  }

  return v9;
}

uint64_t sub_100237CC8@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v13);
  v2 = sub_100038730(&v14, "latlon ", 7);
  v3 = *v2;
  *(v2 + *(*v2 - 24) + 16) = 7;
  *(v2 + *(v3 - 24) + 8) = *(v2 + *(v3 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v4 = sub_100038730(&v14, ",", 1);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 16) = 7;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v6 = sub_100038730(&v14, ", acc ", 6);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 16) = 0;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v9 = v17;
    }

    locale = v16[4].__locale_;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v8 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v16[1].__locale_;
    v9 = v16[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a1[23] = v8;
  if (v8)
  {
    memmove(a1, locale, v8);
  }

LABEL_14:
  a1[v8] = 0;
  v14 = v11;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100238074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1002380A8(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4)
{
  sub_1002382B8(a1 + 168, a2);
  v8 = sub_10023854C(*(a1 + 24), a4);
  if (v8 <= *(sub_1001CCA30() + 1))
  {
    v9 = *a3;
    if (*a3)
    {
      v16 = *a2;
      sub_10018C8C0(v9, __p);
      if (v15 == 1)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, __p);
          v11 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136642819;
          v18 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid %{sensitive}s was previously detected as bad. Mark it as valid again.", buf, 0xCu);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969494();
        }

        sub_1006C077C(*a3);
        sub_1008DB6B0(v12, a3);
        sub_10121C224(a1 + 168, &v16);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101968930();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10196959C();
      }
    }
  }
}

void sub_1002382B8(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 4);
  v2 = *(a1 + 104);
  v3[0] = *(a1 + 96);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100238350((a1 + 160), v3, a2);
  if (v2)
  {

    sub_100008080(v2);
  }
}

void sub_100238338(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t sub_100238350(float64x2_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1001AB7A0(a3, v16);
  v5 = *a2;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_10019B6E0(v5, Current))
  {
    v7 = sub_100238438(*a2, v16);
    v8.f64[0] = a1->f64[0];
    v8.f64[1] = v7;
    v9.f64[1] = a1->f64[1];
    v9.f64[0] = v7;
    *a1 = vbslq_s8(vornq_s8(vcgtq_f64(v8, v9), vcgezq_f64(*a1)), vdupq_laneq_s64(v8, 1), *a1);
  }

  v10 = *a2;
  v11 = CFAbsoluteTimeGetCurrent();
  if (sub_10019B77C(v10, v11))
  {
    v13 = sub_10120BD38(*a2, v16);
    v14.f64[0] = a1[1].f64[0];
    v14.f64[1] = v13;
    v15.f64[1] = a1[1].f64[1];
    v15.f64[0] = v13;
    result = vbslq_s8(vornq_s8(vcgtq_f64(v14, v15), vcgezq_f64(a1[1])), vdupq_laneq_s64(v14, 1), a1[1]);
    a1[1] = result;
  }

  return result;
}

double sub_100238438(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_10023849C(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

double sub_10023849C(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (!*(a1 + 160))
  {
    return NAN;
  }

  v5 = *(a1 + 152);
  v6 = *(*(a1 + 128) + 8 * (v5 / 0x1A));
  v7 = v5 % 0x1A;
  if (vabdd_f64(Current, *(v6 + 156 * v7 + 76)) >= 900.0)
  {
    return NAN;
  }

  sub_1001097CC(a1, v6 + 156 * v7, a2);
  return result;
}

double sub_10023854C(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 160))
  {
    v4 = vabdd_f64(a2, *(*(*(a1 + 128) + 8 * (*(a1 + 152) / 0x1AuLL)) + 156 * (*(a1 + 152) % 0x1AuLL) + 76));
  }

  else
  {
    v4 = 1.79769313e308;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

uint64_t sub_1002385DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664858))
  {
    unk_102664850 = sub_101226EA4();
    __cxa_guard_release(&qword_102664858);
  }

  v2 = &unk_102664850;
  if (!byte_102664851)
  {
    v2 = (a1 + 141);
  }

  return *v2;
}

uint64_t sub_10023866C@<X0>(BOOL *a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (a2 <= 0)
  {
    if (a2 == -1)
    {
      return a1[115];
    }

    else if (!a2)
    {
      return sub_101226920(a1);
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        a3 = a1[112];
        break;
      case 2:
        a3 = a1[113];
        break;
      case 3:
        a3 = a1[114];
        break;
    }
  }

  return a3;
}

_DWORD *sub_1002386C0(_DWORD *result, int a2, int a3)
{
  if (a2 == a3)
  {
    ++result[8];
  }

  else if (a2)
  {
    ++result[9];
  }

  else
  {
    ++result[10];
  }

  return result;
}

void sub_1002386FC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v12 = *a1;
  sub_10018F0D0(&v13);
  v4 = std::string::append(&v13, ", ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1001AB7A0(a1, v9);
  sub_100237CC8(v10);
  if ((v11 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v10[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v10[1];
  }

  v8 = std::string::append(&v14, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1002387F8(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*v1);
  }

  if (*(v2 - 41) < 0)
  {
    operator delete(v1[7]);
  }

  if (*(v2 - 65) < 0)
  {
    operator delete(v1[4]);
  }

  _Unwind_Resume(exception_object);
}

double sub_100238844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100690();
  if (sub_1001E49C8(v4))
  {
    v6 = sub_100100690();
    if (sub_1002385DC(v6))
    {
      result = fabs(*a2);
      if (result <= 90.0)
      {
        result = fabs(*(a2 + 8));
        if (result <= 180.0)
        {
          *(a1 + 712) = *(a2 + 16);
          result = *(a2 + 40);
          *(a1 + 736) = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002388C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100242FF4(result, a4);
  }

  return result;
}

void sub_100238928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1002394D8(&a9);
  _Unwind_Resume(a1);
}

void sub_100238948(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1A41A41A41A41A5)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1002389A4(uint64_t result, int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = 1;
      if (a2 <= 4)
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            ++*(v4 + 72);
          }

          else
          {
            ++*(v4 + 76);
          }

          return result;
        }

        if (a2 == 1)
        {
          ++*(v4 + 64);
          return result;
        }

        if (a2 == 2)
        {
          ++*(v4 + 68);
          return result;
        }
      }

      else
      {
        if (a2 <= 6)
        {
          if (a2 == 5)
          {
            ++*(v4 + 80);
          }

          else
          {
            ++*(v4 + 84);
          }

          return result;
        }

        switch(a2)
        {
          case 7:
            ++*(v4 + 88);
            return result;
          case 8:
            ++*(v4 + 92);
            return result;
          case 9:
            ++*(v4 + 96);
            return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

void sub_100238AEC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v20);
    v6 = sub_100038730(&v21, "SELECT * FROM ", 14);
    v7 = *(a1 + 255);
    if (v7 >= 0)
    {
      v8 = a1 + 232;
    }

    else
    {
      v8 = *(a1 + 232);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 255);
    }

    else
    {
      v9 = *(a1 + 240);
    }

    sub_100038730(v6, v8, v9);
    if (*a2 == 1)
    {
      v10 = sub_100239F0C((a2 + 8));
      {
        v11 = sub_100038730(&v21, " WHERE ", 7);
        v12 = "MAC";
        v13 = 3;
      }

      else
      {
        if ((*a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        v16 = sub_100239F0C((a2 + 8));
        {
          goto LABEL_22;
        }

        v11 = sub_100038730(&v21, " WHERE ", 7);
        v12 = "CKRecordName";
        v13 = 12;
      }

      v14 = sub_100038730(v11, v12, v13);
      sub_100038730(v14, " = ?", 4);
    }

LABEL_22:
    sub_100073518(v20, __p);
    if (v19 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    sub_1000388D8(a1 + 64, v17);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A4C3D8();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiAssociatedApCentroidDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A4C534();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_1002392F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1002394D8(&a66);
  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a31);
  _Unwind_Resume(a1);
}

void sub_1002393EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2[0] = 0;
  sub_100238AEC(a1, v2, a2);
  if (v2[0] == 1)
  {
    sub_100239D74(&v3);
  }
}

void sub_100239460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  if (a9 == 1)
  {
    sub_100239D74(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100239484(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1002388C0(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  return a1;
}

void sub_1002394D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100243224(v4 - 112);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1002395C8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1002393EC(a1, v3);
  sub_100239484(v4, v3);
  v5 = v3;
  sub_1002394D8(&v5);
  sub_100239658(v4, a2);
  v3[0] = v4;
  sub_1002394D8(v3);
}

void sub_100239630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002394D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100239658@<X0>(uint64_t **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v25);
  v5 = *a1;
  v4 = a1[1];
  sub_100038730(&v26, "count: ", 7);
  std::ostream::operator<<();
  if (v4 != v5)
  {
    v6 = sub_100038730(&v26, ", samples: ", 11);
    v7 = [(__CFString *)sub_10023756C(a1 UTF8String];
    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v24 = v8;
    if (v8)
    {
      memmove(__p, v7, v8);
    }

    *(__p + v9) = 0;
    if ((v24 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = __p[1];
    }

    sub_100038730(v6, v10, v11);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = sub_100038730(&v26, ", average age: ", 15);
    v13 = *v12;
    *(v12 + *(*v12 - 24) + 16) = 2;
    *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFEFB | 4;
    sub_100243270(a1);
    v14 = std::ostream::operator<<();
    sub_100038730(v14, "h", 1);
    v15 = sub_100038730(&v26, ", oldest age: ", 14);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 16) = 2;
    *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
    sub_100243328(a1);
    v17 = std::ostream::operator<<();
    sub_100038730(v17, "h", 1);
  }

  if ((v33 & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v19 = v29;
    }

    locale = v28[4].__locale_;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v18 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v28[1].__locale_;
    v19 = v28[3].__locale_;
  }

  v18 = v19 - locale;
  if ((v19 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (v18)
  {
    memmove(a2, locale, v18);
  }

LABEL_30:
  a2[v18] = 0;
  v26 = v21;
  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100239AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100239B3C(uint64_t a1@<X0>, void ****a2@<X1>, _BYTE *a3@<X8>)
{
  v12 = *a2;
  LODWORD(v11) = 0;
  v13 = 0;
  sub_100239D0C(v14, &v11);
  v13 = 1;
  sub_100239D74(&v11);
  v9[0] = 0;
  if (v13 == 1)
  {
    sub_100239DCC(v10, v14);
    v9[0] = 1;
  }

  sub_100238AEC(a1, v9, &v11);
  if (v9[0] == 1)
  {
    sub_100239D74(v10);
    v9[0] = 0;
  }

  v6 = v11;
  v7 = v12;
  while (1)
  {
    if (v6 == v7)
    {
      v8 = &v11;
      sub_1002394D8(&v8);
      *a3 = 0;
      a3[112] = 0;
      goto LABEL_11;
    }

    v8 = *v6;
    if (sub_100195A00(&v8, a2))
    {
      break;
    }

    v6 += 14;
  }

  sub_100237568(a3, v6);
  a3[112] = 1;
  v8 = &v11;
  sub_1002394D8(&v8);
LABEL_11:
  if (v13 == 1)
  {
    sub_100239D74(v14);
  }
}

void sub_100239CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  a9 = &a15;
  sub_1002394D8(&a9);
  if (a19 == 1)
  {
    sub_100239D74(v19 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100239D0C(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = *a2 ^ (*a2 >> 31);
  if (v3 == 1)
  {
    v4 = *v2;
    *(result + 24) = *(a2 + 24);
    *(result + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v2 = 0;
    v3 = *a2 ^ (*a2 >> 31);
  }

  else
  {
    if (v3)
    {
      sub_10053508C();
    }

    *(result + 8) = *v2;
  }

  *result = v3;
  return result;
}

void sub_100239D74(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10053508C();
    }

    if (*(a1 + 31) < 0)
    {
      v2 = *(a1 + 8);

      operator delete(v2);
    }
  }
}

uint64_t sub_100239DCC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      *(a1 + 8) = *v2;
      break;
    case 1:
      if (*(a2 + 31) < 0)
      {
        sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v5 = *v2;
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v5;
      }

      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

_UNKNOWN **sub_100239F0C(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      break;
    default:
      sub_10053508C();
  }

  return result;
}

_DWORD *sub_10023A004(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
      result = 0;
      break;
    default:
      sub_10053508C();
  }

  return result;
}

_BYTE *sub_10023A0F0(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &off_1024A5018;
    sub_100CB6C0C(&v2);
  }

  return a1 + 8;
}

void sub_10023A188(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1002393EC(a1, v7);
  sub_100239484(v8, v7);
  v9 = v7;
  sub_1002394D8(&v9);
  sub_10023A230(v8, a2, a3, a4);
  v7[0] = v8;
  sub_1002394D8(v7);
}

void sub_10023A208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002394D8(va);
  _Unwind_Resume(a1);
}

void sub_10023A230(uint64_t *a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      if (sub_1008613B4(v4, a3) > *a2)
      {
        v9 = a4[1];
        if (v9 >= a4[2])
        {
          v10 = sub_100ADEA74(a4, v4);
        }

        else
        {
          sub_100237568(a4[1], v4);
          v10 = v9 + 112;
        }

        a4[1] = v10;
      }

      v4 += 112;
    }

    while (v4 != v5);
  }
}

void sub_10023A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_1002394D8(&a10);
  _Unwind_Resume(a1);
}

NSString *sub_10023A2FC()
{
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = [NSString stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_10023A368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023A384(uint64_t a1, double a2)
{
  if (sub_10023A7D0(a1, a2))
  {
    if (sub_10023AB68(a1, a1 + 320))
    {
      if (sub_10023ABE4(a1, a1 + 264, *(a1 + 632), *(a1 + 640)))
      {
        v3 = *(a1 + 632) - *(a1 + 952);
        if (v3 > *(a1 + 32))
        {
          *(a1 + 888) = 0u;
          *(a1 + 904) = 0x4063A28C59D5433BLL;
          *(a1 + 912) = xmmword_101CE3F20;
          sub_10023A9A4(a1);
          __asm { FMOV            V1.2D, #-1.0 }

          *(a1 + 928) = xmmword_101CE3F50;
          *(a1 + 944) = _Q1;
          *(a1 + 960) = 0xBFF0000000000000;
          if (qword_1025D4600 != -1)
          {
            sub_1003121A4();
          }

          v9 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 32);
            *buf = 134349312;
            *&buf[4] = v3;
            *&buf[12] = 2050;
            *&buf[14] = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::updateCalibrationFilter time since last filter update, %{public}.3f, greater than threshold, %{public}.3f, resetting calibration filter parameters.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DD1EC((a1 + 32), v3);
          }
        }

        *buf = xmmword_101CE3F60;
        *&buf[16] = xmmword_101CE3F30;
        if (sub_1002534A8(a1, buf) && (sub_100A9DFFC(a1, buf) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_1019DC4B0();
          }

          v11 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *v24 = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::updateAlignmentParametersFilter unsuccessful, resetting calibration filter parameters.", v24, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DD300();
          }

          *(a1 + 888) = 0u;
          *(a1 + 904) = 0x4063A28C59D5433BLL;
          *(a1 + 912) = xmmword_101CE3F20;
          sub_10023A9A4(a1);
          __asm { FMOV            V1.2D, #-1.0 }

          *(a1 + 928) = xmmword_101CE3F50;
          *(a1 + 944) = _Q1;
          *(a1 + 960) = 0xBFF0000000000000;
        }
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1003121A4();
        }

        v19 = (a1 + 632);
        v20 = (a1 + 640);
        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          v22 = *v19;
          v23 = *v20;
          *buf = 134349312;
          *&buf[4] = v22;
          *&buf[12] = 2050;
          *&buf[14] = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::computeIOStatisticsForInterval failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1019DD0E8();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v16 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 632);
        v18 = *(a1 + 640);
        *buf = 134349312;
        *&buf[4] = v17;
        *&buf[12] = 2050;
        *&buf[14] = v18;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::computeLocationStatistics failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019DCFF0();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 632);
      v15 = *(a1 + 640);
      *buf = 134349312;
      *&buf[4] = v14;
      *&buf[12] = 2050;
      *&buf[14] = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::propagateAlignmentParametersFilterState failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019DCEF8();
    }
  }
}

BOOL sub_10023A7D0(double *a1, double a2)
{
  v3 = a1[118];
  if (v3 < 0.0)
  {
    v3 = a2 - a1[4];
    a1[118] = v3;
  }

  v4 = a2 - v3;
  if (a2 - v3 <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      v12 = v4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for timeSinceLastUpdate_seconds, %{public}.3f.", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DD3DC();
    }
  }

  else
  {
    a1[118] = a2;
    a1[111] = a1[111] + a1[112] * v4;
    v5 = a1[115];
    v6 = a1[114];
    a1[113] = a1[113] + (v5 + v5) * v4 + v4 * v6 * v4 + v4 * 0.001142;
    a1[115] = v5 + v6 * v4;
    a1[114] = v6 + v4 * 0.0000000052885;
    sub_10023A9A4(a1);
    v7 = a1[117];
    if (v7 < 0.001)
    {
      v7 = 0.001;
    }

    if (v7 > 1000.0)
    {
      v7 = 1000.0;
    }

    v8 = log10(v7) * 10.0 + v4 * 0.016;
    if (v8 < -40.0)
    {
      v8 = -40.0;
    }

    if (v8 > 40.0)
    {
      v8 = 40.0;
    }

    a1[117] = __exp10(v8 / 10.0);
  }

  return v4 > 0.0;
}

void sub_10023A9A4(uint64_t a1)
{
  v2 = (a1 + 904);
  if (*(a1 + 904) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = v2->f64[0];
      v11 = 134349056;
      v12 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for fCalibrationFilter.rotationToTrueNorthVar_rad2, %{public}.3f.", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DDB48();
    }
  }

  if (*(a1 + 912) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 912);
      v11 = 134349056;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for fCalibrationFilter.rotationRateToTrueNorthVar_rad2_s2, %{public}.3f.", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DDC34();
    }
  }

  v7 = vmaxnmq_f64(vminnmq_f64(*v2, xmmword_101CE3FA0), 0);
  *v2 = v7;
  v8 = vsqrtq_f64(v7);
  v9 = vmulq_laneq_f64(v8, v8, 1).f64[0];
  v10 = -v9;
  if (*(a1 + 920) < v9)
  {
    v9 = *(a1 + 920);
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  *(a1 + 920) = v9;
}

BOOL sub_10023AB68(float64x2_t *a1, uint64_t a2)
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0;
  v3 = sub_1001063B0(a1 + 12, &v7, &v6, &v5, *(a2 + 4), *(a2 + 12), *(a2 + 28), *(a2 + 160), *(a2 + 168), *(a2 + 184));
  *(a2 + 328) = hypot(v7, v6);
  *(a2 + 336) = hypot(*(a2 + 20), *(a2 + 176));
  return v3;
}

uint64_t sub_10023ABE4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(a1 + 160);
  if (!v5)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v9 = sub_1001EBD50(v5, &v31, &v30, a3, a4);
  if (v9)
  {
    v20 = 0uLL;
    v21 = 0xBFF0000000000000;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = xmmword_101CE3F00;
    v26 = xmmword_101CE3F10;
    v27 = 257;
    v28 = 0;
    v29 = 0;
    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    v10 = v31;
    v19 = v31;
    v11 = sub_100252CF0(*(a1 + 160), &v30);
    v12 = 0;
    if (v10 != v11)
    {
      v13 = v11;
      do
      {
        v14 = sub_100252EBC(*(a1 + 160), &v20, v10);
        v15 = sub_100252CF0(*(a1 + 160), &v19);
        v10 = v15;
        v19 = v15;
        if (v14 && *(&v20 + 1) >= *(a1 + 632) && *(&v20 + 1) <= *(a1 + 640))
        {
          v16 = v29;
          v17.i32[0] = 1;
          v17.i32[1] = v29 & 1;
          v17.u64[1] = vbic_s8(0x100000001, vceqz_s32(vand_s8(vdup_n_s32(v29), 0x400000002)));
          *(a2 + 16) = vaddq_s32(*(a2 + 16), v17);
          if (v16)
          {
            *(a2 + 32) = vaddq_f64(*(a2 + 32), vcvtq_f64_f32(*(&v22 + 4)));
          }
        }
      }

      while (v15 != v13);
      v12 = *(&v20 + 1);
    }

    *(a2 + 48) = hypot(*(a2 + 32), *(a2 + 40));
    *a2 = v12;
    *(a2 + 8) = a4 - a3;
  }

  return v9;
}

void sub_10023ADAC(uint64_t a1, uint64_t a2)
{
  v4 = *a2 - *(a1 + 72);
  if (v4 >= (*(**(a1 + 32) + 56))(*(a1 + 32)))
  {
    *(a1 + 72) = *a2;
    v5 = (*(**(a1 + 16) + 136))(*(a1 + 16));
    v6 = objc_alloc_init(CLPIndoorEvent);
    [v6 setType:1];
    [v6 setCmAttitude:objc_alloc_init(CLPIndoorCMAttitude)];
    [objc_msgSend(v6 "cmAttitude")];
    LODWORD(v5) = *(a2 + 40);
    v7 = [v6 cmAttitude];
    LODWORD(v8) = LODWORD(v5);
    [v7 setMagneticAccuracy:v8];
    [objc_msgSend(v6 "cmAttitude")];
    [objc_msgSend(v6 "cmAttitude")];
    if (*(a2 + 72) < 0.0)
    {
      v9 = -1.0;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = *(a2 + 80) * v9;
    v11 = [objc_msgSend(v6 "cmAttitude")];
    *&v12 = v10;
    [v11 setX:v12];
    v13 = v9 * *(a2 + 88);
    v14 = [objc_msgSend(v6 "cmAttitude")];
    *&v15 = v13;
    [v14 setY:v15];
    v16 = v9 * *(a2 + 96);
    v17 = [objc_msgSend(v6 "cmAttitude")];
    *&v18 = v16;
    [v17 setZ:v18];
    [*(a1 + 48) addObject:v6];

    sub_100063090(a1);
  }
}

void sub_10023AF90(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onCompass", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onCompass, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(**(a2 + 304) + 16))(*(a2 + 304), a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10023B174(uint64_t a1, uint64_t a2)
{
  if (!sub_100062F64(a1 - 352))
  {

    sub_10023ADAC(a1 + 256, a2);
  }
}

uint64_t sub_10023B1D0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) < 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 24) > 60.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 32) >= *(a1 + 24))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A80650();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 16);
      *buf = 68289282;
      *&buf[4] = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Tried to take power assertion that has already timed out, AssertionIdentifier:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101A80664();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = *(a1 + 16);
      *buf = 68289282;
      *&buf[4] = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Tried to take power assertion that has already timed out", "{msg%{public}.0s:Tried to take power assertion that has already timed out, AssertionIdentifier:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v8 = *(a1 + 8);
  if (v8 < 1)
  {
LABEL_24:
    v14 = a2;
    if (*(a2 + 23) < 0)
    {
      v14 = *a2;
    }

    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@(%s)", *(a1 + 16), v14);
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    *buf = 0;
    v18 = objc_alloc_init(NSMutableDictionary);
    [v18 setObject:@"PreventUserIdleSystemSleep" forKeyedSubscript:@"AssertType"];
    [v18 setObject:v15 forKeyedSubscript:@"AssertName"];
    [v18 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v17), @"Category"}];
    if (v16 <= 60.0)
    {
      [v18 setObject:&off_10254FB30 forKeyedSubscript:@"AssertLevel"];
    }

    else
    {
      [v18 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v16), @"TimeoutSeconds"}];
      [v18 setObject:@"TimeoutActionRelease" forKeyedSubscript:@"TimeoutAction"];
    }

    v19 = IOPMAssertionCreateWithProperties(v18, buf) != 0;
    v20 = *buf;

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = 1;
      *(a1 + 12) = v20;
      *(a1 + 32) = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *(a1 + 48) = [[CLOSTransaction alloc] initWithDescription:a2];
    }

    v22 = *(a1 + 8);
    v13 = v22 > 0;
    if (qword_1025D48A0 != -1)
    {
      sub_101A8068C();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v24 = v22 <= 0 ? "Fail" : "Took";
      sub_1000238CC(v15, buf);
      v25 = (v42 & 0x80000000) == 0 ? buf : *buf;
      *__p = 136315394;
      *&__p[4] = v24;
      *&__p[12] = 2080;
      *&__p[14] = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "%s, %s", __p, 0x16u);
      if (SBYTE3(v42) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      if (v22 <= 0)
      {
        v27 = "Fail";
      }

      else
      {
        v27 = "Took";
      }

      sub_1000238CC(v15, __p);
      if (__p[23] >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = *__p;
      }

      *v33 = 136315394;
      *&v33[4] = v27;
      v34 = 2080;
      v35 = v28;
      v29 = _os_log_send_and_compose_impl();
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::takePowerAssertion(std::string)", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    CFRelease(v15);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    if (qword_1025D48A0 != -1)
    {
      sub_101A8068C();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), __p);
      if (__p[23] >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      v12 = a2;
      if (*(a2 + 23) < 0)
      {
        v12 = *a2;
      }

      *buf = 67109634;
      *&buf[4] = v10;
      v39 = 2080;
      v40 = v11;
      v41 = 2080;
      v42 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Took, inc ref, %d, %s, thisReason, %s", buf, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      v30 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), v33);
      if (v36 >= 0)
      {
        v31 = v33;
      }

      else
      {
        v31 = *v33;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *__p = 67109634;
      *&__p[4] = v30;
      *&__p[8] = 2080;
      *&__p[10] = v31;
      *&__p[18] = 2080;
      *&__p[20] = a2;
      v32 = _os_log_send_and_compose_impl();
      if (v36 < 0)
      {
        operator delete(*v33);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::takePowerAssertion(std::string)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    return 1;
  }

  return v13;
}

void sub_10023BAC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageRequestAuthorization", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 1;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestAuthorization, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  if (*(v3 + 72) != 1)
  {
    os_activity_scope_leave(&state);
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10023BCC0(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
LABEL_11:
    sub_100008080(v4);
    return;
  }

  os_activity_scope_leave(&state);
}

void sub_10023BCC0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageStatusKey"];
  v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessagePurposeIdentifierKey"];
  if (v9)
  {
    sub_10000EC00(v33, [v9 UTF8String]);
  }

  else
  {
    sub_10000EC00(v33, "");
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v8 intValue];
    v11 = sub_10001A3E8();
    if ((**v11)(v11) && *(a1 + 88) == 1)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v12 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        v13 = *(a1 + 48);
        buf = 68289282;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:WatchKit-1.0 client requesting authorization on companion, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }
      }

      v14 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v15 = *(a1 + 48);
        buf = 68289282;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = v15;
        v16 = "WatchKit-1.0 client requesting authorization on companion";
        v17 = "{msg%{public}.0s:WatchKit-1.0 client requesting authorization on companion, ClientKeyPath:%{public, location:escape_only}@}";
LABEL_21:
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, &buf, 0x1Cu);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if ((*(a1 + 90) & (v10 == 3)) != 0)
    {
      v21 = 4;
    }

    else
    {
      v21 = v10;
    }

    if (v21 == 4)
    {
      v22 = *(a1 + 74) == 0;
      v23 = 1;
    }

    else
    {
      if (v21 != 3)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v25 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          v26 = *(a1 + 48);
          buf = 68289282;
          v36 = 2082;
          v37 = "";
          v38 = 2114;
          v39 = v26;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Malformed authorization status, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }
        }

        v27 = qword_1025D4798;
        if (os_signpost_enabled(qword_1025D4798))
        {
          v28 = *(a1 + 48);
          buf = 68289282;
          v36 = 2082;
          v37 = "";
          v38 = 2114;
          v39 = v28;
          _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthPrompt Malformed authorization status", "{msg%{public}.0s:#AuthPrompt Malformed authorization status, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
        }

        v24 = 0;
        goto LABEL_40;
      }

      v22 = *(a1 + 74) == 0;
      v23 = 3;
    }

    if (v22)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = v23;
    }

LABEL_40:
    v29 = *(a1 + 48);
    if (SHIBYTE(v34) < 0)
    {
      sub_100007244(__p, v33[0], v33[1]);
    }

    else
    {
      *__p = *v33;
      v31 = v34;
    }

    sub_10023C2AC(v32, v24, v29, 0, __p);
    sub_10023C350(a1, v32, 0, 1);
    sub_10023DF30(v32);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_45;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v19 = *(a1 + 48);
    buf = 68289282;
    v36 = 2082;
    v37 = "";
    v38 = 2114;
    v39 = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Malformed authorization request, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }
  }

  v14 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v20 = *(a1 + 48);
    buf = 68289282;
    v36 = 2082;
    v37 = "";
    v38 = 2114;
    v39 = v20;
    v16 = "#AuthPrompt Malformed authorization request";
    v17 = "{msg%{public}.0s:#AuthPrompt Malformed authorization request, ClientKeyPath:%{public, location:escape_only}@}";
    goto LABEL_21;
  }

LABEL_45:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

uint64_t sub_10023C2AC(uint64_t a1, int a2, uint64_t a3, void *a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a5, *(a5 + 1));
  }

  else
  {
    v7 = *a5;
    *(a1 + 32) = *(a5 + 2);
    *(a1 + 16) = v7;
  }

  v8 = [a4 copy];
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!v8)
  {
    *(a1 + 40) = [&stru_102470718 copy];
  }

  v9 = *(a1 + 8);
  return a1;
}

void sub_10023C334(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10023C350(uint64_t a1, unsigned int *a2, NSDictionary *a3, int a4)
{
  if (*(a1 + 72) == 1 && (*(a1 + 104) & 1) == 0)
  {
    sub_1000F7D18(*(a1 + 16), *(a1 + 48), 1);
  }

  if (((*(*a1 + 80))(a1) & 1) != 0 || [*(a1 + 48) isAuthLimited])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 48);
      v10 = *a2;
      *buf = 68289538;
      *v118 = 2082;
      *&v118[2] = "";
      *&v118[10] = 2114;
      *&v118[12] = v9;
      *&v118[20] = 2050;
      *&v118[22] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt System services may not request authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }
    }

    v11 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v12 = *(a1 + 48);
      v13 = *a2;
      *buf = 68289538;
      *v118 = 2082;
      *&v118[2] = "";
      *&v118[10] = 2114;
      *&v118[12] = v12;
      *&v118[20] = 2050;
      *&v118[22] = v13;
      v14 = "#AuthPrompt System services may not request authorization";
      v15 = "{msg%{public}.0s:#AuthPrompt System services may not request authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
LABEL_13:
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, 0x26u);
      return;
    }

    return;
  }

  if (([*(a1 + 112) inUseLevelIsAtLeast:5] & 1) == 0)
  {
    if (*(a1 + 369) == 1)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1019EEFF0();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        v18 = *a2;
        [*(a1 + 112) inUseLevel];
        v19 = [*(a1 + 112) inUseLevel];
        *buf = 68289794;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v17;
        *&v118[20] = 2050;
        *&v118[22] = v18;
        *&v118[30] = 2050;
        v119 = v19;
        v20 = "{msg%{public}.0s:#AuthPrompt Permitting authorization request placed by client entitled to specially request prompts despite being insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}";
LABEL_28:
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, v20, buf, 0x30u);
      }
    }

    else
    {
      sub_10000EC00(buf, "com.apple.locationd.prompt_from_background");
      v21 = (*(*a1 + 40))(a1, buf);
      if ((v118[15] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (!v21)
      {
        if (a4)
        {
          v40 = *(a1 + 408);
          v39 = *(a1 + 416);
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100008080(v39);
          }

          *buf = 0;
          *v118 = buf;
          *&v118[8] = 0x7812000000;
          *&v118[16] = sub_1000478A0;
          *&v118[24] = sub_100048554;
          sub_1007AAEE4(&v120, a2);
          v41 = *(a1 + 32);
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3321888768;
          v105[2] = sub_100B22000;
          v105[3] = &unk_102494D90;
          v105[6] = a1;
          v105[7] = v40;
          v106 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v105[4] = a3;
          v105[5] = buf;
          [v41 afterInterval:v105 async:3.0];
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v42 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 48);
            v44 = *a2;
            [*(a1 + 112) inUseLevel];
            v45 = [*(a1 + 112) inUseLevel];
            *v107 = 68289794;
            v108 = 0;
            v109 = 2082;
            v110 = "";
            v111 = 2114;
            v112 = v43;
            v113 = 2050;
            v114 = v44;
            v115 = 2050;
            v116 = v45;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Warning Delaying authorization request placed while insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}", v107, 0x30u);
          }

          if (v106)
          {
            std::__shared_weak_count::__release_weak(v106);
          }

          _Block_object_dispose(buf, 8);
          sub_10023DF30(&v120);
          if (v39)
          {
            std::__shared_weak_count::__release_weak(v39);
          }
        }

        else
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v59 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v61 = *(a1 + 112);
            v60 = (a1 + 112);
            v62 = *(v60 - 8);
            v63 = *a2;
            [v61 inUseLevel];
            v64 = [*v60 inUseLevel];
            *buf = 68289794;
            *&buf[4] = 0;
            *v118 = 2082;
            *&v118[2] = "";
            *&v118[10] = 2114;
            *&v118[12] = v62;
            *&v118[20] = 2050;
            *&v118[22] = v63;
            *&v118[30] = 2050;
            v119 = v64;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Warning Dropping authorization request placed while insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}", buf, 0x30u);
          }

          sub_10023D820(a2, @"App is in the background");
        }

        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 48);
        v23 = *a2;
        [*(a1 + 112) inUseLevel];
        v24 = [*(a1 + 112) inUseLevel];
        *buf = 68289794;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v22;
        *&v118[20] = 2050;
        *&v118[22] = v23;
        *&v118[30] = 2050;
        v119 = v24;
        v20 = "{msg%{public}.0s:#AuthPrompt #widgetkit Permitting authorization request placed by client entitled to specially request prompts for Widgets, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}";
        goto LABEL_28;
      }
    }
  }

  v25 = *a2 - 1;
  if (v25 < 0xB && ((0x50Fu >> v25) & 1) != 0)
  {
    v26 = qword_101CECD18[v25];
    v27 = sub_10023D76C(*(a1 + 16), *(a1 + 48));
    if (!v27)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v28 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 48);
        v30 = *(a1 + 80);
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v29;
        *&v118[20] = 1026;
        *&v118[22] = v30;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #AuthPrompt CLCM:allowableAuthMask in invalid, considering fSupportedAuthMaskBuilder, ClientKeyPath:%{public, location:escape_only}@, fSupportedAuthMaskBuilder:%{public}d}", buf, 0x22u);
      }

      v27 = *(a1 + 80);
    }

    if ((v27 | v26) != 0xFFFFFFFFFFFFFFFFLL)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v31 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *a2;
        v33 = *(a1 + 48);
        *buf = 68289794;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2050;
        *&v118[12] = v32;
        *&v118[20] = 2114;
        *&v118[22] = v33;
        *&v118[30] = 2050;
        v119 = v27;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization value requested by client ignored because not in its allowable mask, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@, authMaskAllowable:%{public}lu}", buf, 0x30u);
      }

      sub_10023D820(a2, @"Requested authorization level isn't supported by the app");
      return;
    }

    if (sub_10023D7E4(*(a1 + 16)) && !sub_10076CC80(*(a1 + 48)))
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v70 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *a2;
        v72 = *(a1 + 48);
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2050;
        *&v118[12] = v71;
        *&v118[20] = 2114;
        *&v118[22] = v72;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization request ignored, at lock-screen, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
      }

      sub_10023D820(a2, @"App is requesting authorization prompt while the screen is locked");
      return;
    }

    if (sub_10023D7EC(*(a1 + 16)))
    {
      v46 = sub_1007A3F2C(*(a1 + 16));
      [*(a1 + 32) currentLatchedAbsoluteTimestamp];
      v48 = v47 - v46;
      if (v48 < 900.0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v77 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *a2;
          v79 = (a1 + 16);
          sub_100774024(*(a1 + 16));
          v80 = sub_100774024(*(a1 + 16));
          v81 = *(a1 + 48);
          v82 = sub_10077403C(*v79);
          *buf = 68290306;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2050;
          *&v118[12] = v78;
          *&v118[20] = 2050;
          *&v118[22] = v80;
          *&v118[30] = 2114;
          v119 = v81;
          v120 = 2114;
          v121 = *&v82;
          v122 = 2050;
          v123 = v48;
          _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization request ignored because another authorization effort is already in flight, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, existingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@, existingClientKey:%{public, location:escape_only}@, InflightRequestSquattingDurationSeconds:%{public}ld}", buf, 0x44u);
        }

        sub_10023D820(a2, @"Outstanding authorization prompt detected.");
        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v49 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a1 + 48);
        v51 = sub_10077403C(*(a1 + 16));
        sub_100774024(*(a1 + 16));
        v52 = sub_100774024(*(a1 + 16));
        *buf = 68290050;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v50;
        *&v118[20] = 2114;
        *&v118[22] = v51;
        *&v118[30] = 2050;
        v119 = v52;
        v120 = 2050;
        v121 = v48 / 60.0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown, ClientKeyPath:%{public, location:escape_only}@, squattingClient:%{public, location:escape_only}@, squattingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, InflightRequestSquattingDurationMinutes:%{public}.2f}", buf, 0x3Au);
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }
      }

      v53 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v54 = *(a1 + 48);
        v55 = sub_10077403C(*(a1 + 16));
        sub_100774024(*(a1 + 16));
        v56 = sub_100774024(*(a1 + 16));
        *buf = 68290050;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v54;
        *&v118[20] = 2114;
        *&v118[22] = v55;
        *&v118[30] = 2050;
        v119 = v56;
        v120 = 2050;
        v121 = v48 / 60.0;
        _os_signpost_emit_with_name_impl(dword_100000000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown", "{msg%{public}.0s:#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown, ClientKeyPath:%{public, location:escape_only}@, squattingClient:%{public, location:escape_only}@, squattingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, InflightRequestSquattingDurationMinutes:%{public}.2f}", buf, 0x3Au);
      }

      sub_10079EDEC(*(a1 + 16), 1, 0);
    }

    if ([*(a1 + 112) transientAwareRegistrationResult] == 4)
    {
      if (*a2 == 9)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v57 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 48);
          *buf = 68289282;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v58;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request for temporary precise from app with no authorization yet, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_10023D820(a2, @"App's authorization status is not yet determined. App needs to ask for authorization before asking for temporary precise upgrade.");
        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v83 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(a1 + 48);
        v85 = *a2;
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v84;
        *&v118[20] = 2050;
        *&v118[22] = v85;
        v86 = "{msg%{public}.0s:#AuthPrompt Allowing standard prompt because no auth yet, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
        v87 = v83;
        v88 = 38;
LABEL_136:
        _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEFAULT, v86, buf, v88);
      }
    }

    else
    {
      if ([*(a1 + 112) registrationResult] == 1 && *a2 == 4 && sub_1007A4E58(*(a1 + 16), *(a1 + 48)))
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v65 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 48);
          v67 = *a2;
          v68 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v66;
          *&v118[20] = 2050;
          *&v118[22] = v67;
          *&v118[30] = 2082;
          v119 = v68;
          _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Allowing one-shot upgrade attempt, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        *buf = 0;
        *v118 = buf;
        *&v118[8] = 0x7812000000;
        *&v118[16] = sub_1000478A0;
        *&v118[24] = sub_100048554;
        sub_1007AAEE4(&v120, a2);
        v69 = *(a1 + 48);
        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_100B22108;
        v104[3] = &unk_102494DC8;
        v104[4] = buf;
        sub_10000EC00(__p, "");
        sub_10023C2AC(v107, 7, v69, v104, __p);
        sub_1007AAF48(a2, v107);
        sub_10023DF30(v107);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        _Block_object_dispose(buf, 8);
        sub_10023DF30(&v120);
        goto LABEL_137;
      }

      if ([*(a1 + 112) registrationResult] == 2 && (*(a1 + 369) & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v93 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v94 = *(a1 + 48);
          *buf = 68289282;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v94;
          _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Client is denied.  Asking client manager to consider doing a big switch prompt, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v95 = *(a1 + 48);
        sub_10000EC00(v100, "");
        sub_10023C2AC(buf, 10, v95, 0, v100);
        sub_1007AAF48(a2, buf);
        sub_10023DF30(buf);
        if (v101 < 0)
        {
          operator delete(v100[0]);
        }

        goto LABEL_137;
      }

      if (*a2 == 9 && ([*(a1 + 112) isAuthorizedForServiceType:12] & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v96 = qword_1025D4798;
        if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_137;
        }

        v97 = *(a1 + 48);
        *buf = 68289282;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v97;
        v86 = "{msg%{public}.0s:#AuthPrompt Allowing no-auth-change auth request because this #compensation client wants temporary precise, ClientKeyPath:%{public, location:escape_only}@}";
        v87 = v96;
        v88 = 28;
        goto LABEL_136;
      }

      if ((*(a1 + 369) & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v89 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v90 = *(a1 + 48);
          v91 = *a2;
          v92 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v90;
          *&v118[20] = 2050;
          *&v118[22] = v91;
          *&v118[30] = 2082;
          v119 = v92;
          _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring authorization request due to existing authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        sub_10023D820(a2, @"The user has already made a decision about the app's authorization");
        return;
      }

      if ([*(a1 + 112) registrationResult] != 2)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v73 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v74 = *(a1 + 48);
          v75 = *a2;
          v76 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v74;
          *&v118[20] = 2050;
          *&v118[22] = v75;
          *&v118[30] = 2082;
          v119 = v76;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring special-reprompt authorization request due to existing authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        return;
      }
    }

LABEL_137:
    v98 = *(a1 + 16);
    sub_1007AAEE4(v99, a2);
    sub_1007845CC(v98, a1, v99, a3);
    sub_10023DF30(v99);
    return;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v34 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v35 = *a2;
    v36 = *(a1 + 48);
    *buf = 68289538;
    *v118 = 2082;
    *&v118[2] = "";
    *&v118[10] = 2050;
    *&v118[12] = v35;
    *&v118[20] = 2114;
    *&v118[22] = v36;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Unrecognized authorization value, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }
  }

  v11 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v37 = *a2;
    v38 = *(a1 + 48);
    *buf = 68289538;
    *v118 = 2082;
    *&v118[2] = "";
    *&v118[10] = 2050;
    *&v118[12] = v37;
    *&v118[20] = 2114;
    *&v118[22] = v38;
    v14 = "#AuthPrompt Unrecognized authorization value";
    v15 = "{msg%{public}.0s:#AuthPrompt Unrecognized authorization value, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}";
    goto LABEL_13;
  }
}

void sub_10023D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  sub_10023DF30(&a45);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v46 - 240), 8);
  sub_10023DF30(v45 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_10023D76C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0];
  v5 = [*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:a2 defaultValue:0];
  v6 = v4 & 0xFFFFFFFB;
  if (!v5)
  {
    return v4;
  }

  return v6;
}

const char *sub_10023D7FC(unsigned int a1)
{
  if (a1 > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10245A088[a1];
  }
}

void sub_10023D820(unsigned int *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = NSDebugDescriptionErrorKey;
    v5 = a2;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  }

  else
  {
    v3 = 0;
  }

  [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:v3];
  sub_10023DC84(a1);
}

void sub_10023D948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D960(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000EC00(__p, "");
  sub_100018918(v2, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10023D9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10023D9E8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10023DB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10023DC84(unsigned int *a1)
{
  if (*(a1 + 5))
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 1);
      v4 = *a1;
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v3;
      v19 = 2050;
      v20 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt AuthorizationRequest completion, ClientKey:%{public, location:escape_only}@, RequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    (*(*(a1 + 5) + 16))();

    *(a1 + 5) = 0;
    *a1 = 0;

    *(a1 + 1) = 0;
    v5 = *(a1 + 6);
    if (v5)
    {
      *(a1 + 6) = 0;
      v6 = sub_100107858();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007ABC20;
      block[3] = &unk_102449A78;
      block[4] = v5;
      CFRunLoopPerformBlock(v6, kCFRunLoopCommonModes, block);
    }

    v9 = *(a1 + 7);
    v8 = a1 + 14;
    v7 = v9;
    if (v9)
    {
    }

    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Request was completed multiple times}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Request was completed multiple times", "{msg%{public}.0s:Request was completed multiple times}", buf, 0x12u);
    }
  }
}

uint64_t sub_10023DF30(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:0];
    sub_10023DC84(a1);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_10023DFA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }

    if (*(i - 177) < 0)
    {
      operator delete(*(i - 200));
    }

    if (*(i - 201) < 0)
    {
      operator delete(*(i - 224));
    }

    if (*(i - 225) < 0)
    {
      operator delete(*(i - 248));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10023E050(void *a1)
{
  switch([a1 type])
  {
    case 1u:
      v3 = [a1 cmAttitude];
      goto LABEL_23;
    case 2u:
      v3 = [a1 cmPedometer];
      goto LABEL_23;
    case 3u:
      v3 = [a1 location];
      goto LABEL_23;
    case 4u:
      v3 = [a1 motionActivity];
      goto LABEL_23;
    case 5u:
      v3 = [a1 pressure];
      goto LABEL_23;
    case 6u:
      v3 = [a1 wifiScan];
      goto LABEL_23;
    case 7u:
      v3 = [a1 bundleId];
      goto LABEL_23;
    case 8u:
    case 9u:
      v2 = [objc_msgSend(a1 "vioEstimation")];

      [v2 cfAbsoluteTimeS];
      return;
    case 0xAu:
      v3 = [a1 workoutUpdateMotionActivity];
      goto LABEL_23;
    case 0xBu:
      v3 = [a1 inertialOdometry];
      goto LABEL_23;
    case 0xCu:
      v3 = [a1 outdoorUpdate];
      goto LABEL_23;
    case 0xDu:
      v3 = [a1 cellConnectivity];
LABEL_23:

      [v3 timestamp];
      break;
    default:
      if (qword_1025D47D0 != -1)
      {
        sub_101907C84();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Attempting to retrieve timestamp for unknown event type!", v5, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101907C98();
      }

      break;
  }
}

void *sub_10023E224(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_10023E450(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 type];
  switch(result)
  {
    case 4:
      result = [objc_msgSend(objc_msgSend(a3 "motionActivity")];
      if (result == 4)
      {
LABEL_9:
        v10 = [a3 type];
        v11 = &v10;
        result = sub_10006BEC4((a2 + 16), &v10);
        ++*(result + 5);
      }

      break;
    case 0xB:
      v10 = [a3 type];
      v11 = &v10;
      v6 = sub_10006BEC4((a2 + 16), &v10);
      ++*(v6 + 5);
      result = [objc_msgSend(a3 "inertialOdometry")];
      if (result)
      {
        result = [objc_msgSend(a3 "inertialOdometry")];
        if (result)
        {
          [objc_msgSend(a3 "inertialOdometry")];
          v8 = v7 * v7;
          result = [objc_msgSend(a3 "inertialOdometry")];
          *(a2 + 104) = *(a2 + 104) + sqrt(v8 + v9 * v9);
          ++*(a2 + 112);
        }
      }

      break;
    case 6:
      goto LABEL_9;
    default:
      break;
  }

  ++*(a2 + 56);
  return result;
}

void sub_10023E5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 8);
  v7 = [*(a1 + 8) pipelinedSeeded];
  if (v7 == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Shutdown not permitted by pipelined - ignoring: request to turn off due to %s", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C960();
    }
  }

  else if (v7)
  {
    v12 = sub_10037EB40(a1, a2);
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      *__p = 136446466;
      *&__p[4] = v14;
      v37 = 2082;
      v38 = sub_10038693C(v12);
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@IndoorFlow, turnoff, %{public}s, %{public}s", __p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186CB48(a3, v12, v15, v16, v17, v18, v19, v20);
    }

    if (v12)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@ClxIndoor, state, 0, required", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186CC78();
      }

      if (sub_10001CF04())
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v22 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@ClxWifi2, state, 0, required", __p, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186CD5C();
        }
      }

      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 23) >= 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = *a3;
        }

        v25 = sub_10038693C(v12);
        *__p = 136315394;
        *&__p[4] = v24;
        v37 = 2080;
        v38 = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "%s - must stop indoor immediately (no debounce): %s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186CE40(a3, v12, v26, v27, v28, v29, v30, v31);
      }

      v32 = *(a1 + 24);
      sub_10000EC00(__p, "stop required");
      (*(*v32 + 16))(v32, __p);
      if (v39 < 0)
      {
        operator delete(*__p);
      }

      sub_10037EF8C(a1);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v33 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 23) >= 0)
        {
          v34 = a3;
        }

        else
        {
          v34 = *a3;
        }

        v35 = sub_10017F5D4([*v6 pipelinedSeeded]);
        *__p = 136315394;
        *&__p[4] = v34;
        v37 = 2080;
        v38 = v35;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "%s and %s; but no need to turn off at this time", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186CF70();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Not seeded - ignoring: request to turn off due to %s", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186CA54();
    }
  }
}

void sub_10023EA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023EAA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (*(v4 + 388) & 0x80000000) != 0 || [*(a1 + 32) count] < *(v4 + 388) || (*(v4 + 440))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100260340();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000183C0(v4);
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = sub_1000183C0(v4);
      v15 = 2117;
      v16 = [a2 formattedText];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvest-Collect, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, event:%{sensitive, location:escape_only}@}", &v9, 0x26u);
    }

    [*(a1 + 32) writeSecondaryObject:a2 toField:2];
    ++*(v4 + 208);
    *(v4 + 904) = (*(**(v4 + 56) + 64))(*(v4 + 56));
    (*(**(v4 + 1400) + 56))(*(v4 + 1400), a2);
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100260340();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000183C0(v4);
      v7 = sub_1000183C0(v4);
      v8 = *(v4 + 388);
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v7;
      v15 = 1025;
      LODWORD(v16) = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:max scans exceeded, removing from cache, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxEvents:%{private}d}", &v9, 0x22u);
    }
  }
}

id sub_10023ED00(uint64_t a1, void *a2)
{
  v3 = (*(*a1 + 168))(a1);

  return sub_10023ED58(v3, a2);
}

id sub_10023ED58(uint64_t a1, void *a2)
{
  sub_10023E050(a2);
  v5 = v4;
  result = [a2 type];
  if (result == 2)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) == 1)
  {
    v7 = v5 - *(a1 + 32);
    (*(**(a1 + 56) + 128))(&v14);
    v8 = *(&v15 + 1);
    sub_1004906DC(v25);
    sub_1004906DC(v24);
    result = sub_1004906DC(v23);
    if (v7 < v8)
    {
      *(a1 + 48) = 1;
      return result;
    }
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = 1;
  v9 = *(a1 + 16);
  if (!*(v9 - 64))
  {
    *(v9 - 120) = v5;
    v10 = (v9 - 112);
    goto LABEL_13;
  }

  v10 = (v9 - 112);
  v11 = *(v9 - 120);
  if (v5 > *(v9 - 112))
  {
    v12 = v5 - v11;
    (*(**(a1 + 56) + 128))(&v14);
    v13 = *&v16;
    sub_1004906DC(v25);
    sub_1004906DC(v24);
    sub_1004906DC(v23);
    if (v12 > v13)
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v17 = 1065353216;
      v18 = 0;
      v19[0] = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_10023F584(v19, v9 - 56);
      sub_10023F6FC((a1 + 8), &v14);
      sub_10023ED58(a1, a2);
      if (v20 == 1)
      {
        sub_100246AA8(v19);
      }

      result = sub_1004906DC(&v15);
      goto LABEL_15;
    }

    if (v5 <= *v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = (v9 - 120);
  if (v5 < v11)
  {
LABEL_13:
    *v10 = v5;
  }

LABEL_14:
  result = (*(*a1 + 32))(a1, v9 - 120, a2);
LABEL_15:
  ++*(a1 + 52);
  return result;
}

void *sub_10023F024(void *result)
{
  if (result)
  {
    v1 = [objc_msgSend(result "lastPathComponent")];
    if ([v1 count] >= 3)
    {
      [objc_msgSend(v1 objectAtIndex:{1), "doubleValue"}];
      v3 = v2;
      [objc_msgSend(v1 objectAtIndex:{2), "intValue"}];
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10023F124(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = objc_alloc_init(CLPIndoorEvent);
  [v7 setType:3];
  v8 = [CLPLocation alloc];
  v9 = *(a3 + 112);
  v33[6] = *(a3 + 96);
  v33[7] = v9;
  v34[0] = *(a3 + 128);
  *(v34 + 12) = *(a3 + 140);
  v10 = *(a3 + 48);
  v33[2] = *(a3 + 32);
  v33[3] = v10;
  v11 = *(a3 + 80);
  v33[4] = *(a3 + 64);
  v33[5] = v11;
  v12 = *(a3 + 16);
  v33[0] = *a3;
  v33[1] = v12;
  v13 = [v8 initWithDaemonLocation:v33];
  [v13 timestamp];
  [v13 setTimestamp:v14 - *(a1 + 64)];
  [v13 setIsFromLocationController:a4 == 0];
  [v13 setProvider:*(a3 + 96)];
  if (*(a3 + 124) != 0x7FFFFFFF)
  {
    [v13 setFloor:?];
  }

  v15 = *(a3 + 200);
  if (v15 != *(sub_10023F4FC() + 10))
  {
    LODWORD(v16) = *(a3 + 200);
    [v13 setHorzUncSemiMaj:v16];
  }

  v17 = *(a3 + 204);
  if (v17 != *(sub_10023F4FC() + 11))
  {
    LODWORD(v18) = *(a3 + 204);
    [v13 setHorzUncSemiMin:v18];
  }

  v19 = *(a3 + 208);
  if (v19 != *(sub_10023F4FC() + 12))
  {
    LODWORD(v20) = *(a3 + 208);
    [v13 setHorzUncSemiMajAz:v20];
  }

  if (a4 == 1)
  {
    v21 = *(a3 + 680);
    if (v21)
    {
      if (*v21 != v21[1])
      {
        v22 = objc_alloc_init(CLPSatelliteReport);
        [v22 setGps:{sub_100F26608(*(a3 + 680), 0)}];
        [v22 setGlonass:{sub_100F26608(*(a3 + 680), 1)}];
        [v22 setQzss:{sub_100F26608(*(a3 + 680), 4)}];
        [v22 setGalileo:{sub_100F26608(*(a3 + 680), 3)}];
        [v13 setSatReport:v22];
      }
    }
  }

  if ((*(a3 + 96) & 0xFFFFFFFE) == 0xA)
  {
    v23 = objc_alloc_init(CLPPipelineDiagnosticReport);
    v24 = v23;
    v25 = *(a3 + 1184);
    if (v25 - 1 >= 3)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    [v23 setYieldType:v26];
    [v24 setPrbPipelinedSaysYield:*(a3 + 1192)];
    [v24 setPrbCoarseIndoorSaysIndoor:*(a3 + 1200)];
    [v24 setPrbWifiSaysIndoor:*(a3 + 1208)];
    [v24 setPrbGpsSaysIndoor:*(a3 + 1216)];
    [v24 setPrbParticleFilterSaysYield:*(a3 + 1224)];
    [v24 setPrbOnFloorsEstimate:*(a3 + 1232)];
    for (i = 0; i != 40; i += 8)
    {
      if (*(a3 + 1240 + i) >= 0.0)
      {
        [v24 addPrbOnFloorEstimate:?];
      }
    }

    [v24 setPrbInlierEstimate:*(a3 + 1280)];
    [v24 setPrbLocalizerIoWrapperSaysWifiOk:*(a3 + 1288)];
    [v24 setPrbInjectionOccupancyRetryLimitOk:*(a3 + 1296)];
    [v24 setPrbInjectionGainRetryLimitOk:*(a3 + 1304)];
    v28 = *(a3 + 1312);
    if (v28 - 1 >= 4)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    [v24 setPfYieldStatusBeforeCalculatePose:v29];
    v30 = *(a3 + 1316);
    if (v30 - 1 >= 4)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    [v24 setYieldStatusBeforeCalculatePose:v31];
    [v13 setPipelineDiagnosticReport:v24];
  }

  [v7 setLocation:v13];
  [*(a1 + 48) addObject:v7];
  return sub_100063090(a1);
}

__n128 sub_10023F454@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10023EFB0();
  v3 = *(v2 + 3);
  v5 = *v2;
  v4 = *(v2 + 1);
  *(a1 + 32) = *(v2 + 2);
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  v7 = *(v2 + 5);
  v6 = *(v2 + 6);
  v8 = *(v2 + 4);
  *(a1 + 112) = *(v2 + 14);
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 64) = v8;
  sub_100218494(a1 + 120, (v2 + 30));
  sub_100218494(a1 + 160, (v2 + 40));
  sub_100218494(a1 + 200, (v2 + 50));
  result = *(v2 + 15);
  *(a1 + 255) = *(v2 + 255);
  *(a1 + 240) = result;
  return result;
}

void sub_10023F4D8(_Unwind_Exception *a1)
{
  sub_1004906DC(v1 + 160);
  sub_1004906DC(v1 + 120);
  _Unwind_Resume(a1);
}

void *sub_10023F4FC()
{
  if ((atomic_load_explicit(&qword_10265C768, memory_order_acquire) & 1) == 0)
  {
    sub_1019EE6B4();
  }

  return &unk_10265C770;
}

id sub_10023F53C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 48) enumerateObjectsUsingBlock:a2];
  v3 = *(a1 + 48);

  return [v3 removeAllObjects];
}

uint64_t sub_10023F584(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return sub_1006A8A5C(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = sub_100246AA8(result);
    *(v2 + 32) = 0;
  }

  else
  {
    result = sub_1002469FC(result, a2);
    *(v2 + 32) = 1;
  }

  return result;
}

_BYTE *sub_10023F5F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_10023F684(v4 + 16, a2 + 16);
  *(v4 + 56) = *(a2 + 56);
  result = sub_100246B2C((v4 + 64), a2 + 64);
  v6 = *(a2 + 104);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 104) = v6;
  *(a1 + 8) = v4 + 120;
  return result;
}

void sub_10023F664(_Unwind_Exception *a1)
{
  sub_1004906DC(v2 + 16);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_10023F684(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1004904B0(a1, i + 4);
  }

  return a1;
}

uint64_t sub_10023F6FC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006A8BDC(a1, a2);
  }

  else
  {
    sub_10023F5F8(a1, a2);
    result = v3 + 120;
  }

  a1[1] = result;
  return result;
}

double sub_10023F778@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  memcpy(a2, &unk_101CE6D78, 0x230uLL);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v4;
  *&v4 = *(a1 + 40);
  *(a2 + 4) = *(a1 + 32);
  *(a2 + 5) = v4;
  *(a2 + 12) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  *(a2 + 14) = *(a1 + 56);
  a2[4] = *(a1 + 64);
  *&v4 = *(a1 + 88);
  *(a2 + 10) = *(a1 + 80);
  *(a2 + 11) = v4;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v5 = *(a1 + 280);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 280) = v5;
  *(a2 + 248) = *(a1 + 248);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 296) = *(a1 + 296);
  *(a2 + 78) = *(a1 + 312);
  *(a2 + 79) = *(a1 + 316);
  v6 = *(a1 + 336);
  a2[20] = *(a1 + 320);
  a2[21] = v6;
  *(a2 + 88) = *(a1 + 352);
  *(a2 + 356) = *(a1 + 356);
  *(a2 + 45) = *(a1 + 360);
  v7 = *(a1 + 384);
  a2[23] = *(a1 + 368);
  a2[24] = v7;
  a2[25] = *(a1 + 400);
  *(a2 + 52) = *(a1 + 416);
  *(a2 + 424) = *(a1 + 424);
  *(a2 + 425) = *(a1 + 425);
  a2[27] = *(a1 + 432);
  *(a2 + 56) = *(a1 + 448);
  *(a2 + 114) = *(a1 + 456);
  v8 = *(a1 + 480);
  a2[29] = *(a1 + 464);
  a2[30] = v8;
  a2[31] = *(a1 + 496);
  v9 = *(a1 + 576);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
  }

  *(a2 + 128) = v10;
  *(a2 + 65) = *(a1 + 584);
  *(a2 + 66) = *(a1 + 592);
  result = *(a1 + 616);
  *(a2 + 67) = result;
  *(a2 + 68) = *(a1 + 624);
  *(a2 + 552) = *(a1 + 640);
  return result;
}

double sub_10023F928(uint64_t a1, double *a2)
{
  sub_1000A2B60((a1 + 32), a2);
  v4 = *(a1 + 72);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 64);
    v6 = *(*(*(a1 + 40) + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 24) - v6 * v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 64) = v5 + 1;
    *(a1 + 72) = v4 - 1;
    sub_1000A2BE8(a1 + 32, 1);
  }

  v9 = *(a1 + 24);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + *a2 * *a2;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10023F9C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x15)
  {
    a2 = 1;
  }

  if (v2 < 0x2A)
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
    *(a1 + 32) -= 21;
  }

  return v4 ^ 1u;
}

__n128 sub_10023FA24@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10023FAF4(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4032;
    }

    v12 = *v17 + 4032;
    v11 = a2;
  }

  sub_10023FAF4(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10023FAF4@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (&a4[-v10] >> 6);
      if ((0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 6)) < v12)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 6);
      }

      v11 -= 192 * v12;
      a4 -= 192 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 192 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 4032);
    }

    if ((*v6 + 4032) == a4)
    {
      v15 = v6[1];
      ++v6;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void sub_10023FBD8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void sub_10023FC28(uint64_t a1, uint64_t *a2)
{
  if (sub_10018E854(a1) && sub_10018F858(a1, a2))
  {
    v4 = *a2;
    sub_10018F1F0(a1, __p);
    v4 = *a2;
    sub_100242B68(__p, &v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_10023FCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FDC0(uint64_t a1, char a2, uint64_t a3)
{
  v3[0] = 75;
  v3[1] = a2;
  v4 = a3;
  sub_10023FF4C(a1 + 192, v3, 0);
}

void sub_10023FE18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10023FE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10023FED0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_101264BC0(a1);
  }

  return a1;
}

void sub_10023FF4C(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_100240098;
    v8[4] = nullsub_83;
    v8[5] = &unk_10238AE8B;
    v8[6] = *a2;
    v9 = *(a2 + 8);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002400AC;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_100240080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100240098(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_1002400AC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 75;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 10);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

uint64_t sub_10024012C(uint64_t a1, __int128 *a2)
{
  v16 = 0;
  v8 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[5];
  v13 = a2[4];
  v14 = v4;
  v15 = a2[6];
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  v6 = a2[3];
  v11 = a2[2];
  LOBYTE(v16) = *(a2 + 112);
  v12 = v6;
  return sub_100013B00(a1, 49, &v8, 128);
}

uint64_t sub_1002401BC(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_100240250(uint64_t a1, unint64_t *a2)
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100240E54(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    v3 = +[NSMutableDictionary dictionary];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    obj = [a2 allKeys];
    v4 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          v8 = [a2 objectForKeyedSubscript:v7];
          v16[0] = @"radius";
          [v8 radius];
          v17[0] = [NSNumber numberWithFloat:?];
          v16[1] = @"radialDisplacement";
          [v8 radialDisplacement];
          v17[1] = [NSNumber numberWithFloat:?];
          v16[2] = @"duration";
          [v8 duration];
          v17[2] = [NSNumber numberWithDouble:?];
          [v3 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v17, v16, 3), v7}];
        }

        v4 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
      }

      while (v4);
    }

    v14 = CMPedestrianFenceStatus;
    v15 = v3;
    [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    sub_1002410CC();
  }

  return result;
}

void sub_100241090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100241140(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100241198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002411B4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100241140((a1 + 3), a2);
  return a1;
}

void sub_100241210(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(qword_1026592F8, memory_order_acquire) & 1) == 0)
  {
    sub_10191BDB0();
  }

  if (qword_102659110 != -1)
  {
    sub_10191BE14();
  }

  if (byte_102659387 < 0)
  {
    v2 = xmmword_102659370;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_102659370;
    *(a1 + 16) = unk_102659380;
  }
}

void sub_1002412B0(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1026592E0, memory_order_acquire) & 1) == 0)
  {
    sub_10191BC5C();
  }

  if (qword_1026590F0 != -1)
  {
    sub_10191BCC0();
  }

  if (byte_10265933F < 0)
  {
    v2 = xmmword_102659328;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_102659328;
    *(a1 + 16) = unk_102659338;
  }
}

void sub_100241350(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1026592E8, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_10191BCD4();
    a1 = v3;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007181A0;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_1026590F8 != -1)
  {
    dispatch_once(&qword_1026590F8, block);
  }

  if (byte_102659357 < 0)
  {
    sub_100007244(a2, xmmword_102659340, *(&xmmword_102659340 + 1));
  }

  else
  {
    *a2 = xmmword_102659340;
    *(a2 + 16) = unk_102659350;
  }
}

void sub_100241440(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10024149C(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a9;
  *(result + 16) = a10;
  *(result + 24) = a11;
  *(result + 32) = a12;
  *(result + 40) = a13;
  *(result + 48) = a14;
  *(result + 56) = a15;
  *(result + 64) = a16;
  *(result + 72) = a4;
  *(result + 80) = a5;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = a17;
  *(result + 112) = a18;
  *(result + 120) = a8;
  *(result + 132) = 0;
  *(result + 124) = 0;
  return result;
}

void sub_1002414D8(int *a1@<X0>, double **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    sub_100244008(v10, buf);
    sub_100244050(&v53, buf);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p);
    }

    v10 += 18;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v43[0] = 0;
  v43[1] = 0;
  v12 = *(a3 + 20);
  v42 = v43;
  if (v12 <= 0.0 || a5 - *(a3 + 76) >= (3600.0 >> 1))
  {
    if (*a1 <= 25)
    {
      v15 = *a2;
      for (i = a2[1]; v15 != i; v15 += 18)
      {
        sub_100244008(v15, buf);
        v17 = v48;
        if (v48 >= v49)
        {
          v48 = sub_101266AC8(&v47, buf);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v18 = *buf;
          *(v48 + 16) = *&buf[16];
          *v17 = v18;
          v19 = __p;
          *(v17 + 40) = v70;
          *(v17 + 24) = v19;
          v48 = v17 + 48;
        }
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }

      v13 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "invalid location provided and complete miss, will not return any tiles to search", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B82B18(buf);
        *v65 = 0;
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B825A8();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *a1 > 25;
      *buf = 134349824;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 4);
      *&buf[12] = 2050;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 4);
      *&buf[22] = 2050;
      *&__p = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 4);
      WORD4(__p) = 1026;
      *(&__p + 10) = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, 0, completemiss, %{public}d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B825D0(buf);
      v33 = *a1 > 25;
      *v65 = 134349824;
      *&v65[4] = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 4);
      *&v65[12] = 2050;
      *&v65[14] = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 4);
      *&v65[22] = 2050;
      *&v66 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 4);
      WORD4(v66) = 1026;
      *(&v66 + 10) = v33;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    sub_1002421C8(a4, &v50, &v47, &v44);
  }

  else
  {
    *buf = 0;
    sub_1000850D0(v65, buf);
    sub_10008511C(v65, -1, *(a3 + 4), *(a3 + 12), 0.05, 0.05);
    if (v54 != sub_10008535C(&v53, v65))
    {
      sub_100241F3C(&v50, v65);
      sub_100236990(&v42, v65);
    }

    v38 = *v65;
    v39 = *&v65[16];
    if (SHIBYTE(v67) < 0)
    {
      sub_100007244(&v40, v66, *(&v66 + 1));
    }

    else
    {
      v40 = v66;
      v41 = v67;
    }

    v37 = sub_10008535C(&v53, v65);
    v23 = 8;
    v24 = &byte_101D1C30D;
    do
    {
      v25 = *v24;
      v26 = *(v24 - 1);
      *buf = v38;
      *&buf[16] = v39;
      if (SHIBYTE(v41) < 0)
      {
        sub_100007244(&__p, v40, *(&v40 + 1));
      }

      else
      {
        __p = v40;
        v70 = v41;
      }

      v22.i32[0] = 1028443341;
      sub_100085AC4(buf, v25, v26, 0.05, v22);
      if (v54 == sub_10008535C(&v53, buf))
      {
        sub_100241F3C(&v44, buf);
      }

      else if (v43 != sub_10008535C(&v42, &v38))
      {
        sub_100241F3C(&v50, buf);
        sub_100236990(&v42, buf);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p);
      }

      v24 += 2;
      --v23;
    }

    while (v23);
    if (*a1 <= 25)
    {
      v27 = v53;
      if (v53 != v54)
      {
        do
        {
          if (v43 == sub_10008535C(&v42, (v27 + 4)))
          {
            sub_100236990(&v42, (v27 + 4));
            sub_100241F3C(&v47, v27 + 2);
          }

          v28 = v27[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v27[2];
              v30 = *v29 == v27;
              v27 = v29;
            }

            while (!v30);
          }

          v27 = v29;
        }

        while (v29 != v54);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B825A8();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *a1 > 25;
      *buf = 134350080;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 4);
      *&buf[12] = 2050;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 4);
      *&buf[22] = 2050;
      *&__p = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 4);
      WORD4(__p) = 1026;
      *(&__p + 10) = v54 != v37;
      HIWORD(__p) = 1026;
      LODWORD(v70) = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, %{public}d, completemiss, %{public}d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B825D0(buf);
      v35 = *a1 > 25;
      v55 = 134350080;
      v56 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 4);
      v57 = 2050;
      v58 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 4);
      v59 = 2050;
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 4);
      v61 = 1026;
      v62 = v54 != v37;
      v63 = 1026;
      v64 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    sub_1002421C8(a4, &v50, &v47, &v44);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }
  }

  sub_100199B5C(&v42, v43[0]);
  *buf = &v44;
  sub_100236AE4(buf);
  *buf = &v47;
  sub_100236AE4(buf);
  *buf = &v50;
  sub_100236AE4(buf);
  sub_100199B5C(&v53, v54[0]);
}

void sub_100241E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, char *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, char *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_100199B5C(&a23, a24);
  a53 = &a26;
  sub_100236AE4(&a53);
  a53 = &a29;
  sub_100236AE4(&a53);
  a53 = &a32;
  sub_100236AE4(&a53);
  sub_100199B5C(&a35, a36);
  _Unwind_Resume(a1);
}

uint64_t sub_100241F3C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100236764(a1, a2);
  }

  else
  {
    sub_100242158(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100241F7C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      v5 += 6;
    }
  }

  return sub_1002368C4(v10);
}

void sub_1002420E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1008600CC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100242100(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_100242158(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 47) < 0)
  {
    result = sub_100007244((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  v2[1] = v3 + 48;
  return result;
}

void *sub_1002421C8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100236A10(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_100236A10((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100236A10((a1 + 6), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  return a1;
}

void sub_100242278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100236AE4(va);
  sub_100236AE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002422A4(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000857B4(a5, (a2 + 4)))
  {
    if (!sub_1000857B4((a2 + 4), a5))
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
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000857B4(a5, (v15 + 4)))
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
      return v12 + 1;
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
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000857B4((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000897E8(a1, a3, a5);
}

uint64_t sub_100242438(uint64_t a1)
{
  sub_10023FE74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100242470(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      *(a4 + 48) = *(v6 + 48);
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 = (v5 + 56);
    }
  }

  return sub_10023FED0(v10);
}

uint64_t sub_10024253C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 && sub_100023B68(v2))
  {
    *(&v25.__r_.__value_.__s + 23) = 7;
    strcpy(&v25, "SELECT ");
    v3 = std::string::append(&v25, "AccessTimestamp", 0xFuLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v26, " FROM ", 6uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = std::string::append(&v27, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v28, " WHERE ", 7uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v29, "TileX", 5uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v30, " = ? AND ", 9uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v31, "TileY", 5uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v34, " = ?", 4uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v33 = v20->__r_.__value_.__r.__words[2];
    v32 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v33 >= 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32;
    }

    sub_1000388D8(*(a1 + 104), v22);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v23 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v34.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B680();
  }

  return 0;
}

void sub_100242A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_100242B68(uint64_t a1, uint64_t a2)
{
  sub_1001A7094(&v5);
  v4 = sub_1001AB6B4(v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_100236C90(a1, a2, v4);
}

void sub_100242BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100242BE4(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, double *a5, double *a6, void *a7, uint64_t a8, void *a9)
{
  v9 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v10 = v9 + 1;
  if ((v9 + 1) > 0x249249249249249)
  {
    sub_10028C64C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v10)
  {
    v10 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v13 = 0x249249249249249;
  }

  else
  {
    v13 = v10;
  }

  v23 = a1;
  if (v13)
  {
    sub_100242D7C(a1, v13);
  }

  v20 = 0;
  v21 = 112 * v9;
  v22 = (112 * v9);
  sub_100242F30(112 * v9, a2, a3, *a4, *a7, a8, *a9, *a5, *a6);
  *&v22 = 112 * v9 + 112;
  v14 = a1[1];
  v15 = 112 * v9 + *a1 - v14;
  sub_100242F34(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_100242FA4(&v20);
  return v19;
}

void sub_100242D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100242FA4(va);
  _Unwind_Resume(a1);
}

void sub_100242D7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100242DD8(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, const std::string *a6, uint64_t a7, double a8, double a9)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a3 + 4);
  *(a1 + 24) = vextq_s8(*(a3 + 20), *(a3 + 20), 8uLL);
  *(a1 + 40) = *(a3 + 36);
  *(a1 + 48) = a4;
  *(a1 + 56) = a8;
  *(a1 + 64) = a5;
  *(a1 + 72) = a9;
  std::string::operator=((a1 + 80), a6);
  *(a1 + 104) = a7;
  return a1;
}

void sub_100242F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 103) < 0)
  {
    operator delete(*(v15 + 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100242F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_100860E8C(a4, v7);
      v7 += 112;
      a4 = v8 + 112;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_100243224(v6);
      v6 += 112;
    }
  }
}

uint64_t sub_100242FA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_100243224(i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100242FF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_100242D7C(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100243044(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  std::string::operator=((a1 + 80), (a2 + 80));
  v4 = *(a1 + 104);
  if (v4)
  {

    *(a1 + 104) = 0;
  }

  if (*(a2 + 104))
  {
    v5 = [[NSData alloc] initWithData:*(a2 + 104)];
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 104) = v5;
  return a1;
}

void sub_100243170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002431A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100237568(a4, v6);
      v6 += 112;
      a4 += 112;
      v7 -= 112;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100243200(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 112;
    do
    {
      v4 = sub_100243224(v4) - 112;
      v2 += 112;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100243228(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

void sub_100243270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = 0.0;
    do
    {
      Current = CFAbsoluteTimeGetCurrent();
      v3 = v3 + sub_10024330C(v1, &Current);
      v1 += 112;
    }

    while (v1 != v2);
  }
}

double sub_100243328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = -1.0;
  while (v1 != v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = sub_10024330C(v1, &Current);
    if (v3 < v4)
    {
      v3 = v4;
    }

    v1 += 112;
  }

  return v3;
}

CLWifiAssociatedApCentroidDO *sub_10024338C(uint64_t a1)
{
  v2 = [CLWifiAssociatedApCentroidDO alloc];
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [NSString stringWithUTF8String:p_p];
  v5 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v5 = *v5;
  }

  v6 = [(CLWifiAssociatedApCentroidDO *)v2 initWithMac:v4 latitude:*(a1 + 52) longitude:[NSString stringWithUTF8String:?]verticalAccuracy:*a1 reach:*(a1 + 8) stationaryTimeInSeconds:*(a1 + 16) loiType:*(a1 + 32) lastUpdated:*(a1 + 40), *(a1 + 160), CFAbsoluteTimeGetCurrent()];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_10024349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002434B8(void *a1)
{
  if (sub_1001AF614())
  {
    sub_1001A7094(&__p);
    v2 = sub_1001AB6B4(__p);
    if (*(&__p + 1))
    {
      sub_100008080(*(&__p + 1));
    }

    if (v2 && ([v2 isValid] & 1) != 0)
    {
      v3 = [a1 mac];
      v4 = [v2 fetchRecord:v3];
      v5 = sub_100243A70(a1, v4);

      if (v5)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v6 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v3 UTF8String];
          LODWORD(__p) = 136380675;
          *(&__p + 4) = v7;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s", &__p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A321B0(v3);
        }

        [v2 deleteRecordByMacString:v3];
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v8 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [objc_msgSend(a1 "description")];
          LODWORD(__p) = 136642819;
          *(&__p + 4) = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, adding record: %{sensitive}s", &__p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A322B8(a1);
        }

        [v2 addRecord:a1];
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          [v2 getBasicInfo];
          if (v15 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136380675;
          v17 = p_p;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, %{private}s", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A323C4();
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31D8C();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as the store is invalid", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A324C4();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it is disabled by settings", &__p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A320D4();
    }
  }
}

void sub_100243834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10024385C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", p_p), @"mac"}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 8)), @"latitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 16)), @"longitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 24)), @"altitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 32)), @"horizontalAccuracy"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 40)), @"verticalAccuracy"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(a1 + 48)), @"reach"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 56)), @"stationaryTimeInSeconds"}];
  sub_10023788C(*(a1 + 64), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &__p;
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v2 setObject:v5 forKey:@"loiType"];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 72)), @"lastUpdated"}];
  return v2;
}

void sub_100243A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100243A70(void *a1, void *a2)
{
  v4 = [a1 mac];
  if (!a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      v36 = [v4 UTF8String];
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as there is no existing record for associated AP %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31FD4(v4);
    }

    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A31C74();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136642819;
    v36 = [objc_msgSend(a2 "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, existing local store record: %{sensitive}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A31C88(a2);
  }

  [a1 latitude];
  v7 = v6;
  [a1 longitude];
  v9 = v8;
  [a2 latitude];
  v11 = v10;
  [a2 longitude];
  v13 = sub_100109D18(v28, v7, v9, v11, v12, 0.0);
  if (v13 > *(sub_1001CBE20() + 10))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 UTF8String];
      *buf = 136380931;
      v36 = v15;
      v37 = 2048;
      v38 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as associated AP %{private}s has moved more than %.1fm", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31EC4(v4);
    }

    return 1;
  }

  [a1 lastUpdated];
  v18 = v17;
  [a2 lastUpdated];
  v20 = vabdd_f64(v18, v19);
  if (v20 > *(sub_100100690() + 16))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v4 UTF8String];
      *buf = 136380931;
      v36 = v22;
      v37 = 2048;
      v38 = v20;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as associated AP %{private}s has not been updated more than %.1fs", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31DB4(v4);
    }

    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A31D8C();
  }

  v24 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v4 UTF8String];
    *buf = 136381187;
    v36 = v25;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v20;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "WifiAssociatedApCentroidStore, skip updating local store for associated AP %{private}s, distance %.1fm, last updated %.1fs ago", buf, 0x20u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v26 = [v4 UTF8String];
    v29 = 136381187;
    v30 = v26;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v20;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLWifiAssociatedApCentroidStoreUpdateManager::shouldUpdateSyncedDataStore(CLWifiAssociatedApCentroidDO *, CLWifiAssociatedApCentroidDO *)", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }

    return 0;
  }

  return result;
}

double sub_100244008@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v3 = sub_1000850D0(a2, &v5);
  result = *a1;
  *(v3 + 4) = *a1;
  *(v3 + 16) = -1;
  return result;
}

uint64_t sub_100244050(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1000897E8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100244138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      v7 = *(v6 - 24);
      *(v4 + 16) = *(v6 - 1);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        sub_100007244((v4 + 24), *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v8 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v8;
      }

      v9 = v6 - 24;
      v4 += 48;
      v14 = v4;
      v6 += 3;
    }

    while (v9 + 48 != a3);
  }

  v12 = 1;
  sub_1002368C4(v11);
  return v4;
}

void *sub_100244238(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_100008080(v5);
  }

  return a1;
}

void *sub_100244294(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100D73398(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 152 * (v11 % 0x1A);
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1000B9760(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 3952;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14 + 16;
        result = v14;
        do
        {
          v21 = *(a3 + 8);
          *result = *a3;
          result[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
          }

          result[2] = off_1024DE5F8;
          v22 = *(a3 + 24);
          v23 = *(a3 + 40);
          v24 = *(a3 + 56);
          *(result + 9) = *(a3 + 72);
          *(result + 7) = v24;
          *(result + 5) = v23;
          *(result + 3) = v22;
          v25 = *(a3 + 88);
          v26 = *(a3 + 104);
          v27 = *(a3 + 120);
          result[17] = *(a3 + 136);
          *(result + 15) = v27;
          *(result + 13) = v26;
          *(result + 11) = v25;
          *(result + 36) = 4;
          *(result + 36) = *(a3 + 144);
          *(result + 74) = *(a3 + 148);
          a3 += 152;
          if (a3 - *a2 == 3952)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 += 152;
          result += 19;
        }

        while (result != v19);
      }

      a1[5] -= 0x79435E50D79435E5 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void sub_1002444A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a4 + 76) <= *(a1 + 464))
  {
    v6 = *(a4 + 20);
    if (v6 >= 0.0)
    {
      if (v6 <= 1000.0)
      {
        v9 = [CLPLocation alloc];
        v10 = *(a4 + 112);
        v45 = *(a4 + 96);
        v46 = v10;
        v47[0] = *(a4 + 128);
        *(v47 + 12) = *(a4 + 140);
        v11 = *(a4 + 48);
        *&v41[32] = *(a4 + 32);
        v42 = v11;
        v12 = *(a4 + 80);
        v43 = *(a4 + 64);
        v44 = v12;
        v13 = *(a4 + 16);
        *v41 = *a4;
        *&v41[16] = v13;
        v14 = [v9 initWithDaemonLocation:v41];
        v15 = [CLPMotionActivity alloc];
        v16 = (*(**(a1 + 56) + 80))(*(a1 + 56));
        *v41 = *v16;
        v17 = *(v16 + 64);
        v19 = *(v16 + 16);
        v18 = *(v16 + 32);
        v42 = *(v16 + 48);
        v43 = v17;
        *&v41[16] = v19;
        *&v41[32] = v18;
        v21 = *(v16 + 96);
        v20 = *(v16 + 112);
        v22 = *(v16 + 80);
        *&v47[0] = *(v16 + 128);
        v45 = v21;
        v46 = v20;
        v44 = v22;
        [v14 setRawMotionActivity:{objc_msgSend(v15, "initWithCLMotionActivity:", v41)}];
        v23 = [CLPMotionActivity alloc];
        v24 = (*(**(a1 + 56) + 88))(*(a1 + 56));
        *v41 = *v24;
        v25 = *(v24 + 64);
        v27 = *(v24 + 16);
        v26 = *(v24 + 32);
        v42 = *(v24 + 48);
        v43 = v25;
        *&v41[16] = v27;
        *&v41[32] = v26;
        v29 = *(v24 + 96);
        v28 = *(v24 + 112);
        v30 = *(v24 + 80);
        *&v47[0] = *(v24 + 128);
        v45 = v29;
        v46 = v28;
        v44 = v30;
        [v14 setMotionActivity:{objc_msgSend(v23, "initWithCLMotionActivity:", v41)}];
        v31 = [CLPMotionActivity alloc];
        v32 = (*(**(a1 + 56) + 96))(*(a1 + 56));
        *v41 = *v32;
        v33 = *(v32 + 64);
        v35 = *(v32 + 16);
        v34 = *(v32 + 32);
        v42 = *(v32 + 48);
        v43 = v33;
        *&v41[16] = v35;
        *&v41[32] = v34;
        v37 = *(v32 + 96);
        v36 = *(v32 + 112);
        v38 = *(v32 + 80);
        *&v47[0] = *(v32 + 128);
        v45 = v37;
        v46 = v36;
        v44 = v38;
        [v14 setDominantMotionActivity:{objc_msgSend(v31, "initWithCLMotionActivity:", v41)}];
        [*(a1 + 416) addObject:v14];
        if (qword_1025D47D0 != -1)
        {
          sub_1002E8D80();
        }

        v39 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v40 = [*(a1 + 416) count];
          *v41 = 68289539;
          *&v41[8] = 2082;
          *&v41[10] = "";
          *&v41[18] = 2050;
          *&v41[20] = 9;
          *&v41[28] = 2049;
          *&v41[30] = v40;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:adding location to buffer, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, bufferedLocationCount:%{private}lu}", v41, 0x26u);
        }

        sub_1002448F8(a1);
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101881678();
        }

        v7 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 68289282;
          *&v41[8] = 2082;
          *&v41[10] = "";
          *&v41[18] = 2050;
          *&v41[20] = 9;
          v8 = "{msg%{public}.0s:ignoring inaccurate location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
          goto LABEL_12;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101881678();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *v41 = 68289282;
        *&v41[8] = 2082;
        *&v41[10] = "";
        *&v41[18] = 2050;
        *&v41[20] = 9;
        v8 = "{msg%{public}.0s:ignoring invalid location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_12:
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, v8, v41, 0x1Cu);
      }
    }
  }
}

void sub_1002448F8(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 456);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    *&v6 = 68289282;
    v22 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v27 = [v10 triggerType];
        *buf = &v27;
        v11 = *(sub_100403DD0(a1 + 432, &v27) + 6);
        [v10 triggerTimestamp];
        if (v11 + v12 <= v3)
        {
          [v2 addObject:v10];
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v16 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            *&buf[4] = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2050;
            v37 = 9;
            v14 = v16;
            v15 = "{msg%{public}.0s:found ready transaction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
            goto LABEL_15;
          }
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v13 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            *&buf[4] = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2050;
            v37 = 9;
            v14 = v13;
            v15 = "{msg%{public}.0s:found non-ready transaction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_15:
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x1Cu);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v2);
        }

        v21 = *(*(&v23 + 1) + 8 * i);
        sub_100402BAC(a1, v21);
        [*(a1 + 456) removeObject:v21];
        sub_1002CEC90(a1);
      }

      v18 = [v2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v18);
  }

  sub_100244C54(a1);
  sub_100244FA8(a1);
  sub_1004029D8(a1);
}

void sub_100244C54(uint64_t a1)
{
  v2 = sub_100244E28(a1);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 416);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 timestamp];
        if (v10 < v2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v6);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1002E8D80();
  }

  v11 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 count];
    *buf = 68289539;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = 9;
    v23 = 2049;
    v24 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Pruning locations, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, prunedLocationCount:%{private}lu}", buf, 0x26u);
  }

  [*(a1 + 416) removeObjectsInArray:v3];
}

double sub_100244E28(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 464);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 456);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 triggerTimestamp];
        v10 = v9;
        v13 = [v8 triggerType];
        v18 = &v13;
        v11 = sub_100403DD0(a1 + 432, &v13);
        if (v2 >= v10 - *(v11 + 5))
        {
          v2 = v10 - *(v11 + 5);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100244FA8(uint64_t a1)
{
  v2 = sub_100244E28(a1);
  v3 = objc_opt_new();
  v4 = *(a1 + 408);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100248618;
  v5[3] = &unk_102450EF8;
  *&v5[5] = v2;
  v5[4] = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  [*(a1 + 408) removeObjectsForKeys:v3];
}

void sub_100245058(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  ++*(a1 + 204);
  if (a3 && a3 != 5)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018E0DE4();
    }

    v13 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    v14 = "{msg%{public}.0s:Received non-location locationProvider notification, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_30:
    v23 = v13;
    v24 = 28;
LABEL_31:
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, v14, buf, v24);
    return;
  }

  v35 = *(a4 + 4);
  v5 = *(a4 + 20);
  v33 = *(a4 + 28);
  v34 = *a4;
  v6 = *(a4 + 44);
  v31 = *(a4 + 52);
  *v32 = *(a4 + 68);
  *&v32[12] = a4[5];
  v7 = *(a4 + 24);
  v30 = *(a4 + 148);
  v28 = *(a4 + 116);
  v29 = *(a4 + 132);
  v27 = *(a4 + 100);
  v8 = *(a4 + 57);
  v9 = *(a4 + 58);
  v10 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v11 = 0;
  v12 = v6 < 19.4444 && v6 >= 0.0;
  if (v7 == 1 && v8 != 0.0 && v5 >= 0.0 && v10 - *(a1 + 376) > 60.0)
  {
    if (*(a1 + 372) & v12)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 373);
    }
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DE4();
  }

  v15 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 373);
    v17 = v10 - *(a1 + 376);
    v18 = *(a1 + 372);
    *buf = 68291587;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    LOWORD(v38) = 2049;
    *(&v38 + 2) = v7;
    WORD5(v38) = 1025;
    HIDWORD(v38) = v16;
    *v39 = 2049;
    *&v39[2] = v8;
    *&v39[10] = 2049;
    *&v39[12] = v9;
    *&v39[20] = 2049;
    *&v39[22] = v17;
    *&v39[30] = 2049;
    *&v39[32] = 0x404E000000000000;
    *&v39[40] = 1025;
    *&v39[42] = v18;
    *&v39[46] = 1025;
    *&v39[48] = v12;
    LOWORD(v40[0]) = 1025;
    *(v40 + 2) = v11 & 1;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onLocation, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, locationType:%{private, location:CLLocationType}lld, allowingStationaryHarvest:%{private}hhd, pressureValue:%{private}f, pressureStd:%{private}f, timeSinceLastSample_s:%{private}.09f, minGapTime_s:%{private}.09f, isDriving:%{private}hhd, isValidSpeed:%{private}hhd, willHarvest:%{private}hhd}", buf, 0x66u);
  }

  if ((v11 & 1) == 0)
  {
    return;
  }

  *(a1 + 376) = v10;
  if (((*(**(a1 + 56) + 160))(*(a1 + 56)) & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018E0DBC();
    }

    v13 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    v14 = "{msg%{public}.0s:harvesting is not allowed, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_30;
  }

  if ((*(a1 + 368) & 0x80000000) != 0 || (*(*a1 + 168))(a1) < *(a1 + 368))
  {
    v19 = objc_alloc_init(CLPPressureCollectionRequest);
    [v19 setMeta:{+[CLPMeta meta](CLPMeta, "meta")}];
    v20 = [CLPLocation alloc];
    *buf = v34;
    *&buf[16] = v35;
    v37 = *&v5;
    v38 = v33;
    *v39 = v6;
    *&v39[8] = v31;
    *&v39[24] = *v32;
    *&v39[36] = *&v32[12];
    v40[0] = v7;
    v43 = v30;
    v42 = v29;
    v41 = v28;
    *&v40[1] = v27;
    v21 = [v20 initWithDaemonLocation:buf];
    [v19 setPressureLocation:v21];

    v22 = [[CLPPressure alloc] initWithPressure:v8 stdDeviation:v9 timestamp:v10];
    [v19 setPressure:v22];

    [objc_msgSend(*(a1 + 72) archiveForHarvester:{8), "overwritePrimaryObject:", v19}];
    ++*(a1 + 208);
    sub_1002CEC90(a1);
    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v25 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 368);
    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    LOWORD(v38) = 1025;
    *(&v38 + 2) = v26;
    v14 = "{msg%{public}.0s:max scans exceeded, not submitting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxHarvestPointCount:%{private}d}";
    v23 = v25;
    v24 = 34;
    goto LABEL_31;
  }
}

void sub_1002455CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a3;
  ++*(a1 + 204);
  if (*(a1 + 88) != 1 || a3 != 5 && a3)
  {
    return;
  }

  v6 = *(a4 + 96);
  if (v6 == 10 && !sub_100245A20(a1) && (*(a1 + 776) == 1.79769313e308 || (*(**(a1 + 56) + 64))(*(a1 + 56)) >= *(a1 + 776)))
  {
    sub_100C1960C(a1);
    v8 = 1;
    goto LABEL_11;
  }

  v7 = sub_100245A20(a1);
  v8 = 0;
  v9 = 0;
  if (v7)
  {
LABEL_11:
    sub_10023F124(a1 + 464, &v10, a4, 0);
    v9 = v8;
  }

  if (v6 == 10 && (v9 & 1) == 0)
  {
    sub_100C19874(a1);
  }
}

void sub_1002456D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a3;
  ++*(a1 + 204);
  if (*(a1 + 88) == 1 && (a3 == 5 || !a3))
  {
    sub_100062F64(a1);
    v6 = *(a4 + 20);
    v7 = v6 > 0.0 && v6 < 200.0;
    if (v7 && !sub_100062E38(a1))
    {
      if (*(a1 + 440) == 1)
      {
        sub_100245B44(a1, a1 + 1360);
      }

      else
      {
        if (sub_100245B44(a1, a1 + 944))
        {
          v8 = a1;
          v9 = 0;
        }

        else
        {
          v8 = a1;
          v9 = 1;
        }

        sub_100246344(v8, v9);
      }
    }

    if (sub_100062E38(a1))
    {
      sub_10023F124(a1 + 608, &v10, a4, 0);
    }

    sub_1002457C4(a1);
  }
}

void sub_1002457C4(uint64_t a1)
{
  if (sub_100245B3C(a1 + 608))
  {
    if ((*(**(a1 + 56) + 160))(*(a1 + 56)))
    {
      v2 = *(a1 + 1400);
      if (v2)
      {
        v3 = (*(*v2 + 40))(v2);
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_10023EAA4;
        v5[3] = &unk_1024A0AE8;
        v5[4] = v3;
        v5[5] = a1;
        sub_10023F53C(a1 + 608, v5);
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100260340();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000183C0(a1);
        *buf = 68289282;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = sub_1000183C0(a1);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvesting is not allowed, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }
    }
  }
}

double *sub_10024596C(double *result, uint64_t a2, uint64_t a3, double a4)
{
  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    v4 = *(a2 + 20);
    v5 = v4 < 0 || ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v5 || (v4 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v7 = *(a2 + 76);
      if (v7 >= 0 && ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v12 = result;
        result = sub_10023F4FC();
        v13 = *(a3 + 24);
        if (result[3] != v13)
        {
          v12[31] = v13;
          v12[32] = a4;
        }
      }
    }
  }

  return result;
}

BOOL sub_100245A20(uint64_t a1)
{
  if (*(a1 + 768) != 1 || sub_100062D7C(a1 + 464))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    return 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A29F2C();
  }

  v3 = qword_1025D47D8;
  result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1000183C0(a1);
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = sub_1000183C0(a1);
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning: Harvesting was turned off but we're still checking for active traces, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t sub_100245B44(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  sub_100246B2C(v10, a1 + 1408);
  v5 = (*(*a2 + 16))(a2, v10, v4);
  if (v10[32] == 1)
  {
    sub_100246AA8(v10);
  }

  if (v5)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A36FF0();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v7 = (*(*a2 + 112))(a2);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@TraceHarvest, %@ starting trace", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A37124(a2);
    }

    *(a1 + 912) = 1;
    *(a1 + 1400) = a2;
    sub_100F26520(a1 + 608);
    sub_100F26828((a1 + 608));
    if (qword_1025D47D0 != -1)
    {
      sub_101A36FF0();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@TraceHarvest, harvesting cached serving cells at trace start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A37258();
    }

    sub_100C53498(a1);
  }

  return v5;
}

void sub_100245D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_100246AA8(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100245DA0(uint64_t a1, uint64_t a2, double a3)
{
  sub_100246B2C(v17, a2);
  v6 = (*(*a1 + 128))(a1, v17, a3);
  if (v17[32] == 1)
  {
    sub_100246AA8(v17);
  }

  if (v6 & 1) == 0 || ((*(**(a1 + 48) + 80))(*(a1 + 48)))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    [*(a1 + 32) setArchive:{objc_msgSend(*(a1 + 40), "archiveForHarvester:withSuffix:", 10, (*(*a1 + 136))(a1, objc_msgSend(v8, "index")))}];
    if (qword_1025D47D0 != -1)
    {
      sub_101A601EC();
    }

    v9 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) index];
      *buf = 67240192;
      v19 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "startTraceIfEligible, overwriting-index, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60214((a1 + 32));
    }
  }

  else
  {
    v11 = [*(a1 + 8) count];
    v12 = -[CLHarvestScoredRequestArchive initWithArchive:index:]([CLHarvestScoredRequestArchive alloc], "initWithArchive:index:", [*(a1 + 40) archiveForHarvester:10 withSuffix:{(*(*a1 + 136))(a1, v11)}], v11);
    *(a1 + 32) = v12;
    [*(a1 + 8) addObject:v12];
    if (qword_1025D47D0 != -1)
    {
      sub_101A601EC();
    }

    v13 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v19 = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "startTraceIfEligible, generate-archive-with-index, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60338(v11);
    }
  }

  [objc_msgSend(*(a1 + 32) "archive")];
  v14 = (*(*a1 + 168))(a1);
  v15 = *(a1 + 48);
  sub_100246B2C(v16, a2);
  (*(*v14 + 16))(v14, v15, v16);
  if (v16[32] == 1)
  {
    sub_100246AA8(v16);
  }

  *(a1 + 24) = a3;
  (*(*a1 + 144))(a1);
  return 1;
}

void sub_100246140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a13)
  {
    sub_100246AA8(&a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100246178(uint64_t a1, uint64_t a2, double a3)
{
  sub_100246B2C(v8, a2);
  v5 = (*(*a1 + 104))(a1, v8);
  if (v8[32] == 1)
  {
    sub_100246AA8(v8);
  }

  if (v5)
  {
    sub_10103005C(*(a1 + 72), 1, a3);
    return 0;
  }

  else
  {
    v7 = *(a1 + 96);
    return v7 <= a3 || v7 == 1.79769313e308;
  }
}

void sub_100246234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_100246AA8(&a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100246254(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  (*(*a1 + 176))(v6);
  if ((*(a2 + 32) & 1) == 0)
  {
    sub_100173BA0();
  }

  if (*(a2 + 24) == 1)
  {
    v3 = sub_1002D3834(v6, a2);
  }

  else
  {
    v3 = v6[3];
  }

  v4 = v3 != 0;
  sub_1004906DC(v6);
  return v4;
}

void sub_1002462FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100246344(uint64_t a1, int a2)
{
  if (a2 <= 5)
  {
    sub_1002463C8(__p, 6uLL);
    *(__p[0] + a2) = 1;
    sub_100246440(*(a1 + 928), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1002463AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002463C8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10038EBB4(result, a2);
  }

  return result;
}

void sub_100246424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100246440(uint64_t a1, void *a2)
{
  if (a2[1] - *a2 >= 0x18uLL)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_1002464C8(uint64_t a1)
{
  v3[0] = @"triggeredByLocation";
  v4[0] = [NSNumber numberWithInt:***(a1 + 32)];
  v3[1] = @"triggeredByLocationOfInterest";
  v4[1] = [NSNumber numberWithInt:*(**(a1 + 32) + 8)];
  v3[2] = @"triggeredByWalking";
  v4[2] = [NSNumber numberWithInt:*(**(a1 + 32) + 16)];
  v3[3] = @"triggeredByLocationFailed";
  v4[3] = [NSNumber numberWithInt:*(**(a1 + 32) + 4)];
  v3[4] = @"triggeredByLocationOfInterestFailed";
  v4[4] = [NSNumber numberWithInt:*(**(a1 + 32) + 12)];
  v3[5] = @"triggeredByWalkingFailed";
  v4[5] = [NSNumber numberWithInt:*(**(a1 + 32) + 20)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

id sub_100246610(uint64_t a1, double *a2)
{
  if (*a2 == 1.79769313e308)
  {
    v3 = *(a1 + 1704);

    return sub_10021D3CC(v3);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *a2;
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v8 = Current + v7;
    v9 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      v11[0] = 68289538;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = v8;
      v16 = 2050;
      v17 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Setting active mode timer to fire, fireTime:%{public}0.2f, delay:%{public}0.2f}", v11, 0x26u);
    }

    return sub_100073BF8(*(a1 + 1704), v8);
  }
}

id sub_10024677C(void *a1)
{
  if (*(a1 + 44) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101ACB5AC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 10);
      v6 = 68289282;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:trace ending, unsubscribing from trace notifications, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v6, 0x1Cu);
    }

    (*(**a1 + 32))(*a1, *(a1 + 10), 2);
    (*(**a1 + 32))(*a1, *(a1 + 10), 8);
    v4 = a1[2];
    LODWORD(v6) = 0;
    (*(*v4 + 56))(v4, &v6);
    (*(*a1[2] + 72))(a1[2], 30);
    (*(*a1[2] + 88))(a1[2], 0);
    if ((*(*a1[4] + 152))(a1[4]))
    {
      (*(*a1[2] + 104))(a1[2]);
    }

    if ((*(*a1[4] + 160))(a1[4]))
    {
      (*(*a1[2] + 120))(a1[2]);
    }

    *(a1 + 44) = 0;
  }

  return [a1[6] removeAllObjects];
}

uint64_t sub_1002469FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100246A44(a1, a2);
  return a1;
}

uint64_t sub_100246A44(uint64_t a1, uint64_t a2)
{
  result = sub_100246AA8(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_10246A9C0 + v5))(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100246AA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (*(&off_10246A9A0 + v2))(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void *sub_100246B00(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100007244(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

_BYTE *sub_100246B2C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_1002469FC(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_100246B74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_100246AA8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100246B94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_100246BA8(uint64_t a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  v48[0] = 0;
  if (*a2 > 0x16 || ((1 << *a2) & 0x400019) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_100048D98(*a2);
      *buf = 136446210;
      v39 = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "@WifiLoc, miscunregister, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v23 = sub_100048D98(*a2);
      v28 = 136446210;
      v29 = v23;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v16);
LABEL_40:
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v28 = 0;
      v7 = sub_10000608C(a1, &v28, 1);
      v28 = 3;
      v8 = sub_10000608C(a1, &v28, 1);
      v28 = 4;
      v9 = sub_10000608C(a1, &v28, 1);
      v28 = 22;
      v10 = sub_10000608C(a1, &v28, 1);
      *buf = 136447234;
      v39 = v6;
      v40 = 1026;
      v41 = v7;
      v42 = 1026;
      v43 = v8;
      v44 = 1026;
      v45 = v9;
      v46 = 1026;
      v47 = v10;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, unregister, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v11 = sub_100048D98(*a2);
      v26 = 0;
      v12 = sub_10000608C(a1, &v26, 1);
      v26 = 3;
      v13 = sub_10000608C(a1, &v26, 1);
      v26 = 4;
      v14 = sub_10000608C(a1, &v26, 1);
      v26 = 22;
      v15 = sub_10000608C(a1, &v26, 1);
      v28 = 136447234;
      v29 = v11;
      v30 = 1026;
      v31 = v12;
      v32 = 1026;
      v33 = v13;
      v34 = 1026;
      v35 = v14;
      v36 = 1026;
      v37 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v16);
      goto LABEL_40;
    }
  }

  v19 = *a2;
  if (!*a2)
  {
    goto LABEL_19;
  }

  if (v19 == 22)
  {
    (*(**(a1 + 120) + 64))(*(a1 + 120), 12);
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 3;
      if (!sub_10000608C(a1, buf, 1))
      {
        (*(**(a1 + 120) + 80))(*(a1 + 120), 3);
        (*(**(a1 + 120) + 80))(*(a1 + 120), 2);
        (*(**(a1 + 120) + 80))(*(a1 + 120), 1);
        (*(**(a1 + 120) + 88))(*(a1 + 120), 6);
      }
    }
  }

  else if (v19 == 3)
  {
LABEL_19:
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      (*(**(a1 + 120) + 96))(*(a1 + 120), 7);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v20 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WifiEntry, unregister for odometer notification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(buf);
        LOWORD(v28) = 0;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 3;
      if (!sub_10000608C(a1, buf, 1))
      {
        (*(**(a1 + 120) + 72))(*(a1 + 120), 0);
        *buf = 22;
        if (!sub_10000608C(a1, buf, 1))
        {
          (*(**(a1 + 120) + 80))(*(a1 + 120), 3);
          (*(**(a1 + 120) + 80))(*(a1 + 120), 1);
          (*(**(a1 + 120) + 88))(*(a1 + 120), 6);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018FC728();
        }

        v21 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@WifiEntry, noregistrants", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FCB90(buf);
          LOWORD(v28) = 0;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }
    }

    *buf = *a2;
    sub_1002476A0(v48, buf);
    sub_100105B70(v27, v48);
    sub_1000FFE90();
  }

  sub_1001039FC(v48);
  return 1;
}

BOOL sub_1002474C4(uint64_t a1, const char *a2, const __CFString *a3)
{
  v4 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (v6)
  {
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v7 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEBUG))
    {
      if ((v4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v4->__r_.__value_.__r.__words[0];
      }

      v13[0] = 68289538;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v8;
      v18 = 2114;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Telling timed the time zone, timezone:%{public, location:escape_only}s, source:%{public, location:escape_only}@}", v13, 0x26u);
    }

    off_1025D9768(a3, v6);
    v9 = CFStringCompare(a3, @"LocationBorder", 0);
    v10 = 96;
    if (v9)
    {
      v11 = 120;
    }

    else
    {
      v10 = 152;
      v11 = 176;
    }

    std::string::operator=((a1 + v10), v4);
    *(a1 + v11) = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 1665) == 1)
    {
      sub_100246610(a1, (a1 + 1824));
    }

    CFRelease(v6);
  }

  return v6 != 0;
}

void sub_1002476A0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_100247750(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 26;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_100247734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100247750(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x1A)
  {
    if (v4 <= 29)
    {
      if ((v4 - 27) < 3)
      {
        return result;
      }

      if (v4 == 26)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 > 38)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

NSDictionary *sub_100247C7C(unsigned int *a1)
{
  v3[0] = @"clients";
  v4[0] = [NSNumber numberWithInt:a1[8]];
  v4[1] = @"unregister";
  v3[1] = @"trigger";
  v3[2] = @"sum";
  v4[2] = [NSNumber numberWithInt:a1[9]];
  v3[3] = @"bin";
  v4[3] = [NSNumber numberWithInt:a1[10]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100247D50(char *a1, int a2, int *a3)
{
  v6 = sub_100247DC8(a1, a2, a3);
  sub_100186B70(a1, a2, a3, 0);
  (*(*a1 + 216))(a1);
  return v6;
}

uint64_t sub_100247DC8(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10189A8F8();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10189A8F8();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLOdometerNotifier_Type::Notification, CLOdometerNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLOdometerNotifier_Type::Notification, NotificationData_T = CLOdometerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

double *sub_1002481B4(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = *(a2 - 1);
  if (v3 <= v4)
  {
    v8 = a1 + 1;
    do
    {
      v5 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
      v9 = *v5;
    }

    while (v3 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[1];
      ++v5;
      v7 = v6;
    }

    while (v3 <= v7);
  }

  if (v5 < a2)
  {
    do
    {
      v10 = *--a2;
      v11 = v10;
    }

    while (v3 > v11);
  }

  if (v5 < a2)
  {
    v12 = *v5;
    v13 = *a2;
    do
    {
      *v5 = v13;
      *a2 = v12;
      do
      {
        v14 = v5[1];
        ++v5;
        v12 = v14;
        v15 = v14;
      }

      while (v3 <= v15);
      do
      {
        v16 = *--a2;
        v13 = v16;
        v17 = v16;
      }

      while (v3 > v17);
    }

    while (v5 < a2);
  }

  if (v5 - 1 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

BOOL sub_100248280(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = v8;
      v10 = *a1;
      v11 = *(a2 - 1);
      v12 = v11;
      if (v9 <= v10)
      {
        if (v12 > v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v8;
          v33 = *a1;
          v32 = a1[1];
          v34 = v32;
          v35 = *a1;
          if (v34 > v35)
          {
            *a1 = v32;
            *(a1 + 1) = v33;
          }
        }

        return 1;
      }

      if (v12 <= v9)
      {
        *a1 = v8;
        a1[1] = v7;
        v47 = *(a2 - 1);
        v48 = v47;
        if (v48 <= v10)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_100248674(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = v23;
    v27 = *a1;
    v28 = *a1;
    v29 = v25;
    if (v26 <= v28)
    {
      if (v29 > v26)
      {
        *v22 = v25;
        *v24 = v23;
        v30 = a1;
        v31 = a1 + 1;
        if (v29 <= v28)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v29 > v26)
      {
        v30 = a1;
        v31 = a1 + 2;
        v26 = *a1;
        v23 = *a1;
LABEL_44:
        *v30 = v25;
        *v31 = v27;
LABEL_46:
        v49 = *(a2 - 1);
        v50 = v49;
        if (v26 < v50)
        {
          *v24 = v49;
          *(a2 - 1) = v23;
          v51 = *v24;
          v52 = *v24;
          v53 = *v22;
          v54 = *v22;
          if (v52 > v54)
          {
            a1[1] = v51;
            a1[2] = v53;
            v55 = *a1;
            v56 = *a1;
            if (v52 > v56)
            {
              *a1 = v51;
              a1[1] = v55;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v27;
      v30 = a1 + 1;
      v31 = a1 + 2;
      v26 = v28;
      v23 = v27;
      if (v29 > v28)
      {
        goto LABEL_44;
      }
    }

    v26 = v25;
    v23 = v25;
    goto LABEL_46;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = v3;
    v5 = *a1;
    v6 = *a1;
    if (v4 > v6)
    {
      *a1 = v3;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[2];
  v15 = a1[1];
  v16 = v15;
  v17 = *a1;
  v18 = *a1;
  v19 = v14;
  if (v16 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v16)
    {
      *a1 = v15;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v14;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 > v16)
  {
    a1[1] = v14;
    *v13 = v15;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 24; ; i += 8)
  {
    v39 = *v36;
    v40 = *v36;
    v41 = *v13;
    v42 = *v13;
    if (v40 > v42)
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v45 = v41;
        v43 -= 8;
        if (v40 <= v45)
        {
          v46 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v46 = a1;
LABEL_34:
      *v46 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v13 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}