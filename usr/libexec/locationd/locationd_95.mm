void sub_1006DB620(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  sub_101264804(*(a1 + 672));
  if (!*a3)
  {
    v7 = *a4;

    sub_1006DB440(a1, v7);
  }
}

void sub_1006DB688(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v35 >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Nlp, received %{public}s", buf, 0xCu);
    if (v35 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190EEE0(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(v10, @"kDataStatusNotification"))
  {
    v11 = *a4;
    if (*a4)
    {
      *buf = 0u;
      v37 = 0u;
      v38 = 1065353216;
      if (sub_10116D15C(v11, buf))
      {
        *v26 = 0;
        *__p = v26;
        *(a1 + 612) = *(sub_1006E20E0(buf, v26) + 6);
        if (sub_1000649A0())
        {
          *v26 = 1;
          *__p = v26;
          *(a1 + 616) = *(sub_1006E20E0(buf, v26) + 6);
        }

        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 612);
          v14 = *(a1 + 616);
          *__p = 134349312;
          *&__p[4] = v13;
          v33 = 2050;
          v34 = v14;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Nlp, dataindictor, both, %{public}ld, %{public}ld", __p, 0x16u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_42;
        }

        sub_10190B9FC(__p);
        v15 = *(a1 + 612);
        v16 = *(a1 + 616);
        *v26 = 134349312;
        *&v26[4] = v15;
        v27 = 2050;
        v28 = v16;
        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v17);
        if (v17 == __p)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v21 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          v22 = sub_100072010(a3);
          sub_1000238CC(v22, __p);
          v23 = v35 >= 0 ? __p : *__p;
          *v26 = 136446210;
          *&v26[4] = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "Nlp, invalid, datacopy, %{public}s", v26, 0xCu);
          if (v35 < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_42;
        }

        sub_10190B9FC(__p);
        v24 = sub_100072010(a3);
        sub_1000238CC(v24, v26);
        if (v29 >= 0)
        {
          v25 = v26;
        }

        else
        {
          v25 = *v26;
        }

        v30 = 136446210;
        v31 = v25;
        v17 = _os_log_send_and_compose_impl();
        if (v29 < 0)
        {
          operator delete(*v26);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLNetworkLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v17);
        if (v17 == __p)
        {
          goto LABEL_42;
        }
      }

      free(v17);
LABEL_42:
      sub_1004906DC(buf);
      return;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_100072010(a3);
      sub_1000238CC(v19, __p);
      v20 = v35 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v20;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Nlp, invalid, data, %{public}s", buf, 0xCu);
      if (v35 < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190EFF0(a3);
    }
  }
}

void sub_1006DBBEC(uint64_t a1, double a2)
{
  sub_10001A3E8();
  v4 = sub_10003A088();
  if ((v4 & 0x400) != 0)
  {
    v8 = sub_1006C5194(a1);
    v16 = a2;
    sub_1001B0B4C(*(v8 + 32), &v16);
    v9 = sub_1006C521C(a1);
    v16 = a2;
    sub_1001B0B4C(*(v9 + 32), &v16);
    if ((v4 & 0x800000) == 0)
    {
LABEL_3:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  v10 = sub_1006C5084(a1);
  v16 = a2;
  sub_1001B0B4C(*(v10 + 32), &v16);
  v11 = sub_1006C510C(a1);
  v16 = a2;
  sub_1001B0B4C(*(v11 + 32), &v16);
  if ((v4 & 0x800) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v14 = sub_100090470(a1);
    v16 = a2;
    sub_1001B0B4C(*(v14 + 32), &v16);
    v15 = sub_10007BA1C(a1);
    v16 = a2;
    sub_1001B0B4C(*(v15 + 32), &v16);
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  v12 = sub_1006C52A4(a1);
  v16 = a2;
  sub_1001B0B4C(*(v12 + 32), &v16);
  v13 = sub_1006C532C(a1);
  v16 = a2;
  sub_1001B0B4C(*(v13 + 32), &v16);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0x4000000) != 0)
  {
LABEL_6:
    v5 = sub_1006C53B4(a1);
    v16 = a2;
    sub_1001B0B4C(*(v5 + 32), &v16);
    v6 = sub_1006C543C(a1);
    v16 = a2;
    sub_1001B0B4C(*(v6 + 32), &v16);
  }

LABEL_7:
  Current = CFAbsoluteTimeGetCurrent();
  sub_1012629AC(*(a1 + 672), a2);
  sub_1006DBDD0(a2, Current, a1, (a1 + 168));
  sub_1006DC014(a2, Current, a1, (a1 + 208));
  sub_1006DC258(a2, Current, a1, (a1 + 248));
  sub_1006DC4A4(a2, Current, a1, (a1 + 288));
  sub_1006DC6E8(a2, Current, a1, (a1 + 328));
  sub_1006DC92C(a2, Current, a1, (a1 + 416));
}

void sub_1006DBDD0(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 8);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::Cell, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC014(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 8);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::ScdmaCell, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC258(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 58);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::CdmaCell, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        sub_10064AAB8((v4 + 4));
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC4A4(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 15);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::LteCell, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC6E8(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 16);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::NrCell, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC92C(double a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 5);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v18 = v14;
        v19 = 2048;
        v20 = a1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLMacAddress, double>]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if (v14 >= a1)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DCB70(uint64_t a1)
{
  if (*(a1 + 520))
  {
    sub_10018646C(a1, "onRetryTimer");
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 520);
      v4 = *(a1 + 352);
      v5 = *(a1 + 432);
      v6 = *(a1 + 184);
      v7 = *(a1 + 224);
      v8 = *(a1 + 264);
      v9 = *(a1 + 304);
      v10 = *(a1 + 344);
      v11 = 136317186;
      v12 = "onRetryTimer";
      v13 = 2048;
      v14 = v3;
      v15 = 1024;
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "NETWORK: onRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu", &v11, 0x58u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F108();
    }

    sub_1006D3F7C(a1);
  }
}

void sub_1006DCCE0(uint64_t a1)
{
  if ((*(a1 + 665) & 1) == 0)
  {
    v2 = sub_1000206B4();
    sub_100021668(v2, &v20);
    v3 = std::string::append(&v20, "/lockCache_encryptedA.db", 0x18uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v22 = v3->__r_.__value_.__r.__words[2];
    *v21 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    v5 = SHIBYTE(v22);
    if (v22 >= 0)
    {
      v6 = HIBYTE(v22);
    }

    else
    {
      v6 = v21[1];
    }

    v7 = &v20;
    sub_100070148(&v20, v6 + 8);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v20.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (v5 >= 0)
      {
        v8 = v21;
      }

      else
      {
        v8 = v21[0];
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "-journal");
    v9 = v18;
    sub_100070148(v18, v6 + 4);
    if (v19 < 0)
    {
      v9 = v18[0];
    }

    if (v6)
    {
      if (v5 >= 0)
      {
        v10 = v21;
      }

      else
      {
        v10 = v21[0];
      }

      memmove(v9, v10, v6);
    }

    strcpy(v9 + v6, "-shm");
    sub_100070148(__p, v6 + 4);
    if (v17 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v5 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    if (v6)
    {
      memmove(v11, v12, v6);
    }

    strcpy(v11 + v6, "-wal");
    sub_1004E8E24(v12);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20.__r_.__value_.__r.__words[0];
    }

    sub_1004E8E24(v13);
    if (v19 >= 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v18[0];
    }

    sub_1004E8E24(v14);
    if (v17 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    sub_1004E8E24(v15);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    *(a1 + 665) = 1;
  }
}

void sub_1006DCF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
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

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006DCFA0(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_10004746C;
    v1[4] = sub_1000483F4;
    v1[5] = &unk_10238AE8B;
    sub_1006E23FC();
  }

  return result;
}

void sub_1006DD2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DD4A8(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E271C;
    v1[4] = sub_1006E272C;
    v1[5] = &unk_10238AE8B;
    sub_1006E2764();
  }

  return result;
}

void sub_1006DD800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DD9B0(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E2C68;
    v1[4] = sub_1006E2C78;
    v1[5] = &unk_10238AE8B;
    sub_1006E2CB0();
  }

  return result;
}

void sub_1006DDD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DDEB8(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E2FF0;
    v1[4] = sub_1006E3000;
    v1[5] = &unk_10238AE8B;
    sub_1005BEEC0();
  }

  return result;
}

void sub_1006DE210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1006DE480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1006DE4B0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10246B960;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1006DE594(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10190C160();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190F2D4();
      }
    }
  }
}

BOOL sub_1006DE810(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10190F4D4();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006DE9A4(char *a1, int a2, int *a3)
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
                sub_10190C174();
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
                  sub_10190C174();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

uint64_t sub_1006DED48(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  *a3 = *v8;
  return 1;
}

uint64_t sub_1006DEE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  return (*(*a1 + 152))(a1, a2, v5, a3, a4, 0);
}

void sub_1006DEED0(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1006E1544();
    }
  }
}

void sub_1006DF3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1006DF3CC(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F6E4(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F5D4(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10190C174();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10190C174();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::listClients() [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
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

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_1006DF790(uint64_t a1)
{
  sub_1006E3270(a1);

  operator delete();
}

id sub_1006DF7C8(uint64_t a1, int a2, void *a3)
{
  result = sub_1006E1B40(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1006DF878(uint64_t a1)
{
  sub_1003C93BC(a1 + 240, *(a1 + 248));
  sub_1003C93BC(a1 + 8, *(a1 + 16));
  return a1;
}

__n128 sub_1006DF8B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10038EB38(v4 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v4 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 96) = v7;
  *(v4 + 48) = v5;
  *(v4 + 64) = v6;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 160);
  *(v4 + 144) = *(a2 + 144);
  *(v4 + 160) = v10;
  *(v4 + 112) = v8;
  *(v4 + 128) = v9;
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  *(v4 + 220) = *(a2 + 220);
  *(v4 + 192) = v12;
  *(v4 + 208) = v13;
  *(v4 + 176) = v11;
  if (*(a2 + 263) < 0)
  {
    sub_100007244((v4 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v14 = *(a2 + 240);
    *(v4 + 256) = *(a2 + 256);
    *(v4 + 240) = v14;
  }

  v15 = *(a2 + 264);
  v16 = *(a2 + 296);
  *(v4 + 280) = *(a2 + 280);
  *(v4 + 296) = v16;
  *(v4 + 264) = v15;
  v17 = *(a2 + 312);
  v18 = *(a2 + 328);
  v19 = *(a2 + 360);
  *(v4 + 344) = *(a2 + 344);
  *(v4 + 360) = v19;
  *(v4 + 312) = v17;
  *(v4 + 328) = v18;
  result = *(a2 + 376);
  v21 = *(a2 + 392);
  v22 = *(a2 + 408);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 392) = v21;
  *(v4 + 408) = v22;
  *(v4 + 376) = result;
  *(a1 + 8) = v4 + 432;
  return result;
}

void sub_1006DF9C0(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 16) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1006DF9E8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x97B425ED097B42)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v3;
  }

  v36 = a1;
  if (v6)
  {
    sub_1006DFC0C(a1, v6);
  }

  v7 = 432 * v2;
  v33 = 0;
  v34 = v7;
  v35 = 432 * v2;
  *v7 = *a2;
  v8 = 432 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10038EB38(v8 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v7 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a2 + 96);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  v14 = *(a2 + 160);
  *(v7 + 144) = *(a2 + 144);
  *(v7 + 160) = v14;
  *(v7 + 112) = v12;
  *(v7 + 128) = v13;
  v15 = *(a2 + 176);
  v16 = *(a2 + 192);
  v17 = *(a2 + 208);
  *(v7 + 220) = *(a2 + 220);
  *(v7 + 192) = v16;
  *(v7 + 208) = v17;
  *(v7 + 176) = v15;
  if (*(a2 + 263) < 0)
  {
    sub_100007244((v7 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v18 = *(a2 + 240);
    *(v7 + 256) = *(a2 + 256);
    *(v7 + 240) = v18;
  }

  v19 = *(a2 + 264);
  v20 = *(a2 + 296);
  *(v7 + 280) = *(a2 + 280);
  *(v7 + 296) = v20;
  *(v7 + 264) = v19;
  v21 = *(a2 + 312);
  v22 = *(a2 + 328);
  v23 = *(a2 + 360);
  *(v7 + 344) = *(a2 + 344);
  *(v7 + 360) = v23;
  *(v7 + 312) = v21;
  *(v7 + 328) = v22;
  v24 = *(a2 + 376);
  v25 = *(a2 + 392);
  v26 = *(a2 + 408);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 392) = v25;
  *(v7 + 408) = v26;
  *(v7 + 376) = v24;
  *&v35 = v35 + 432;
  v27 = a1[1];
  v28 = v34 + *a1 - v27;
  sub_1006DFC68(a1, *a1, v27, v28);
  v29 = *a1;
  *a1 = v28;
  v30 = a1[2];
  v32 = v35;
  *(a1 + 1) = v35;
  *&v35 = v29;
  *(&v35 + 1) = v30;
  v33 = v29;
  v34 = v29;
  sub_1006DFD84(&v33);
  return v32;
}

void sub_1006DFBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 16) = v7;
    operator delete(v7);
  }

  sub_1006DFD84(va);
  _Unwind_Resume(a1);
}

void sub_1006DFC0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1006DFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 96);
      v9 = *(v6 + 48);
      v8 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = v7;
      *(a4 + 48) = v9;
      *(a4 + 64) = v8;
      v10 = *(v6 + 160);
      v12 = *(v6 + 112);
      v11 = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = v10;
      *(a4 + 112) = v12;
      *(a4 + 128) = v11;
      v14 = *(v6 + 192);
      v13 = *(v6 + 208);
      v15 = *(v6 + 176);
      *(a4 + 220) = *(v6 + 220);
      *(a4 + 192) = v14;
      *(a4 + 208) = v13;
      *(a4 + 176) = v15;
      *(a4 + 32) = *(v6 + 32);
      v16 = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(a4 + 240) = v16;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(v6 + 240) = 0;
      v17 = *(v6 + 360);
      v19 = *(v6 + 312);
      v18 = *(v6 + 328);
      *(a4 + 344) = *(v6 + 344);
      *(a4 + 360) = v17;
      *(a4 + 312) = v19;
      *(a4 + 328) = v18;
      v20 = *(v6 + 264);
      v21 = *(v6 + 296);
      *(a4 + 280) = *(v6 + 280);
      *(a4 + 296) = v21;
      *(a4 + 264) = v20;
      v23 = *(v6 + 392);
      v22 = *(v6 + 408);
      v24 = *(v6 + 376);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 392) = v23;
      *(a4 + 408) = v22;
      *(a4 + 376) = v24;
      v6 += 432;
      a4 += 432;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_10064AAB8(v5);
      v5 += 432;
    }
  }
}

uint64_t sub_1006DFD84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    sub_10064AAB8(i - 432);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006DFDD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1006DFE30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1006DFE88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_1006DFEE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1006DFEFC(uint64_t a1)
{
  v4[0] = @"recent";
  v5[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[1] = @"onlist";
  v5[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[2] = @"queued";
  v5[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v4[3] = @"usecache";
  v5[3] = [NSNumber numberWithBool:*(a1 + 52)];
  v4[4] = @"type";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v5[4] = [NSString stringWithUTF8String:v2];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
}

void *sub_1006E0068(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10038EBB4(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

__int128 *sub_1006E01CC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v18 = 0xD37A6F4DE9BD37A7 * ((v7 - *a4) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0x1642C8590B21642)
        {
          sub_10028C64C();
        }

        v20 = 0xD37A6F4DE9BD37A7 * ((v8 - *a4) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0xB21642C8590B21)
        {
          v21 = 0x1642C8590B21642;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_10064A6B8(a4, v21);
        }

        v22 = 8 * ((v7 - *a4) >> 3);
        v23 = *v5;
        v24 = v5[1];
        v25 = v5[3];
        *(v22 + 32) = v5[2];
        *(v22 + 48) = v25;
        *v22 = v23;
        *(v22 + 16) = v24;
        v26 = v5[4];
        v27 = v5[5];
        v28 = v5[7];
        *(v22 + 96) = v5[6];
        *(v22 + 112) = v28;
        *(v22 + 64) = v26;
        *(v22 + 80) = v27;
        v29 = v5[8];
        v30 = v5[9];
        v31 = v5[10];
        *(v22 + 176) = *(v5 + 22);
        *(v22 + 144) = v30;
        *(v22 + 160) = v31;
        *(v22 + 128) = v29;
        v7 = 184 * v18 + 184;
        v32 = *(a4 + 8) - *a4;
        v33 = 184 * v18 - v32;
        memcpy((v22 - v32), *a4, v32);
        v34 = *a4;
        *a4 = v33;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[3];
        *(v7 + 32) = v5[2];
        *(v7 + 48) = v11;
        *v7 = v9;
        *(v7 + 16) = v10;
        v12 = v5[4];
        v13 = v5[5];
        v14 = v5[7];
        *(v7 + 96) = v5[6];
        *(v7 + 112) = v14;
        *(v7 + 64) = v12;
        *(v7 + 80) = v13;
        v15 = v5[8];
        v16 = v5[9];
        v17 = v5[10];
        *(v7 + 176) = *(v5 + 22);
        *(v7 + 144) = v16;
        *(v7 + 160) = v17;
        *(v7 + 128) = v15;
        v7 += 184;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 184);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1006E03AC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E03F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E03F8(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E04A8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E04F4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E04F4(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E05A4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E05F0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E05F0(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E06A0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E06EC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E06EC(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006E079C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006E079C(a1, *a2);
    sub_1006E079C(a1, a2[1]);
    sub_10064AAB8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1006E07F8(uint64_t a1, _DWORD *a2)
{
  v2 = *sub_1006E0894(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1006E0894(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E091C(a3, v4 + 8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E091C(v7 + 8, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL sub_1006E091C(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      if (a1[2] == a2[2] && a1[3] == a2[3])
      {
        return 0;
      }

      v6 = a1[2];
      v7 = a2[2];
      v2 = v6 < v7;
      if (v6 == v7)
      {
        return a1[3] < a2[3];
      }
    }
  }

  return v2;
}

uint64_t sub_1006E0988(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1006E0A30(a1, &v4, a2);
  if (!v2)
  {
    sub_1006E0AB8();
  }

  return v2;
}

void *sub_1006E0A30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E0C64(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E0C64((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1006E0BEC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1006E0C18(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E0C18(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10064AAB8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_1006E0C64(uint64_t a1, uint64_t a2)
{
  if (sub_1006E0D20(a1, a2))
  {
    return 0;
  }

  v5 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v6 = *(a1 + 232);
    v7 = *(a2 + 232);
    v5 = v6 < v7;
    if (v6 == v7)
    {
      v8 = *(a1 + 32);
      v9 = *(a2 + 32);
      v5 = v8 < v9;
      if (v8 == v9)
      {
        v10 = *(a1 + 36);
        v11 = *(a2 + 36);
        v5 = v10 < v11;
        if (v10 == v11)
        {
          v12 = *(a1 + 44);
          v13 = *(a2 + 44);
          v5 = v12 < v13;
          if (v12 == v13)
          {
            if (sub_1006E0DE8((a1 + 240), (a2 + 240)))
            {
              return *(a1 + 40) < *(a2 + 40);
            }

            else
            {
              return (sub_100019438((a1 + 240), (a2 + 240)) & 0x80u) != 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

BOOL sub_1006E0D20(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = sub_1006E0DE8((a1 + 240), (a2 + 240));
  if (!result)
  {
    return result;
  }

  return *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56);
}

BOOL sub_1006E0DE8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1006E0E5C(uint64_t a1, _DWORD *a2)
{
  v2 = *sub_1006E0894(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1006E0F0C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1006E0FB8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1006E0FB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E1040(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E1040((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL sub_1006E1040(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v2 = v3 < v4;
    if (v3 == v4)
    {
      if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
      {
        return 0;
      }

      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      v2 = v6 < v7;
      if (v6 == v7)
      {
        return *(a1 + 16) < *(a2 + 16);
      }
    }
  }

  return v2;
}

uint64_t sub_1006E10AC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1006E0C64(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E0C64(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006E1130(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1006E091C((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E091C(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006E11B4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1006E1040(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E1040(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006E1238(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1006E12D0(uint64_t a1, int *a2)
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

uint64_t sub_1006E13A8(uint64_t **a1, _DWORD *a2)
{
  v3 = sub_1006E1130(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1006E13FC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1006E10AC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  sub_10064AAB8((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_1006E1458(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1006E11B4(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1006E14AC(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1006E14F0(uint64_t **a1, void *a2)
{
  v3 = sub_100198C70(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

void sub_1006E15F0(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_1006E1B40(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_1006E19AC(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10190C174();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10190C174();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1006E19AC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1006E1B40(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_1006E1AC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246B8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006E1B20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1006E1B40(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1006E1BDC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1006E1DB4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_1006E1BDC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1006E1FB8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10190F7E0();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190F7F4();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10190F7E0();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190F8FC();
    }
  }

  return 0;
}

id sub_1006E1DB4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10190F7E0();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190FA04();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10190F7E0();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190FB0C();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1006E1FB8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EE70))
  {
    if ([objc_msgSend(a2 "serialized")] != 16)
    {
      sub_10190FC14();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1006E2070(uint64_t a1, int *a2)
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
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1006E14AC(a1, v4);
  return 1;
}

uint64_t *sub_1006E20E0(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1006E2330(uint64_t a1, unint64_t *a2)
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

void sub_1006E24CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2518(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v3 = v2;
  v4 = v2;
  sub_1006AB524(a2);
}

uint64_t sub_1006E271C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E272C(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E2834(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2880(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  sub_10006BB6C(v3);
  sub_100943D50(a2);
}

void sub_1006E2C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E2C68(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E2C78(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E2D80(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2DCC(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = -1;
  v3 = -1;
  v4 = -1;
  v2 = -1;
  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = -1;
  v11 = xmmword_101C7F0A0;
  sub_100CFA3B0(a2);
}

uint64_t sub_1006E2FF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E3000(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E3038(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  ++*(*(*(a1 + 32) + 8) + 24);
  v3 = -1;
  v4 = -1;
  v5 = -1;
  v6 = -1;
  v7 = 0u;
  v8 = -1;
  v9 = -1;
  v10 = -1;
  v11 = 0xFFFFFFFF00000000;
  v12 = 0;
  sub_1007F6274(a2);
}

uint64_t sub_1006E3270(uint64_t a1)
{
  *a1 = off_10246B960;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1006E338C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1006E33AC(void *a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(a1 + 4) = v2;
  *(v5 - 68) = 2082;
  *(a1 + 14) = (v3 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
  *(v5 - 58) = 2050;
  a1[3] = v4;
}

void sub_1006E3404(int a1@<W8>, float a2@<S0>)
{
  *(v8 - 96) = a2;
  *(v8 - 92) = a1;
  *(v8 - 88) = 1024;
  *(v7 + 10) = v2;
  *(v8 - 82) = 1024;
  *(v8 - 80) = v3;
  *(v8 - 76) = 1024;
  *(v7 + 22) = v4;
  *(v8 - 70) = 2053;
  *(v7 + 28) = v5;
  *(v8 - 60) = 2053;
  *(v7 + 38) = v6;
}

void sub_1006E34A0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1006E3558(uint64_t *a1, void *a2)
{
  v2 = a1;
  if (a2)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3020000000;
    v20 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006E3A40;
    v16[3] = &unk_10245D2D0;
    v16[4] = &v17;
    v16[5] = a1;
    [a2 setExpirationHandler:v16];
    if (*(v18 + 40) == 1)
    {
      v15 = 0;
      if (([a2 setTaskExpiredWithRetryAfter:&v15 error:0.0] & 1) == 0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v4 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          v5 = v2;
          if (*(v2 + 23) < 0)
          {
            v5 = *v2;
          }

          *buf = 138412546;
          v26 = v15;
          v27 = 2080;
          v28 = v5;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,runtimeHandler,failed to set task expired,error,%@,name,%s", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4870 != -1)
          {
            sub_1019103B4();
          }

          if (*(v2 + 23) < 0)
          {
            v2 = *v2;
          }

          v21 = 138412546;
          v22 = v15;
          v23 = 2080;
          v24 = v2;
          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLBackgroundSystemTask::runtimeHandler(BGSystemTask *) const", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        [a2 setTaskCompleted];
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v2;
        if (*(v2 + 23) < 0)
        {
          v9 = *v2;
        }

        *buf = 136315138;
        v26 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,runtimeHandler,running background task,name,%s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v11 = v2;
        if (*(v2 + 23) < 0)
        {
          v11 = *v2;
        }

        v21 = 136315138;
        v22 = v11;
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::runtimeHandler(BGSystemTask *) const", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v10 = v2[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006E3B40;
      block[3] = &unk_102449A78;
      block[4] = v2;
      dispatch_async(v10, block);
      [a2 setTaskCompleted];
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = v2;
      if (*(v2 + 23) < 0)
      {
        v7 = *v2;
      }

      *buf = 136315138;
      v26 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,runtimeHandler,invalid task,name,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019103F0();
    }
  }
}

void sub_1006E3A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006E3A40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
    if (v2[23] < 0)
    {
      v4 = *v2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#bg,runtimeHandler,expiration requested,stopping,name,%s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019104F8(v2);
  }

  *(*(*(a1 + 32) + 8) + 40) = 1;
}

void sub_1006E3B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 56);
  if (!v3)
  {
    sub_1000CF05C();
  }

  (*(*v3 + 48))(v3);

  objc_autoreleasePoolPop(v2);
}

id sub_1006E3BAC(void **a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
    }

    v5 = [NSString stringWithUTF8String:v4];
    v6 = a1[3];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006E3EA4;
    v14[3] = &unk_10246B978;
    v14[4] = a1;
    v7 = [v3 registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:v14];
    if (v7)
    {
      *(a1 + 93) = 1;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1;
      if (*(a1 + 23) < 0)
      {
        v9 = *a1;
      }

      *buf = 67109378;
      LODWORD(v20[0]) = v7;
      WORD2(v20[0]) = 2080;
      *(v20 + 6) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,registerTask,isRegistered,%d,name,%s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      if (*(a1 + 23) < 0)
      {
        a1 = *a1;
      }

      v15 = 67109378;
      v16 = v7;
      v17 = 2080;
      v18 = a1;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBackgroundSystemTask::registerTask()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v12 = a1;
      if (*(a1 + 23) < 0)
      {
        v12 = *a1;
      }

      *buf = 136315138;
      v20[0] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#bg,registerTask,no task scheduler,name,%s", buf, 0xCu);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1019105F8(a1);
      return 0;
    }
  }

  return v7;
}

BOOL sub_1006E3EAC(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_1006E3EEC(a1) != 0;
    }
  }

  else if (*(a1 + 23))
  {
    return sub_1006E3EEC(a1) != 0;
  }

  return 0;
}

id sub_1006E3EEC(char *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (!v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v8 = a1;
      if (a1[23] < 0)
      {
        v8 = *a1;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#bg,getSubmittedRequest,no task scheduler,name,%s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019107F8(a1);
    }

    return 0;
  }

  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  result = [v2 taskRequestForIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  if (!result)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1;
      if (a1[23] < 0)
      {
        v6 = *a1;
      }

      v9 = 136315138;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#bg,getSubmittedRequest,task does not exist,name,%s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019106F8();
    }

    return 0;
  }

  return result;
}

void sub_1006E40B4(char *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (v2)
  {
    v9 = 0;
    v3 = a1;
    if (a1[23] < 0)
    {
      v3 = *a1;
    }

    if (([v2 cancelTaskRequestWithIdentifier:+[NSString stringWithUTF8String:](NSString error:{"stringWithUTF8String:", v3), &v9}] & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v4 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v5 = a1;
        if (a1[23] < 0)
        {
          v5 = *a1;
        }

        *buf = 138412546;
        v15 = v9;
        v16 = 2080;
        v17 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,cancelSubmittedRequest,failed,error,%@,name,%s", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        if (a1[23] < 0)
        {
          a1 = *a1;
        }

        v10 = 138412546;
        v11 = v9;
        v12 = 2080;
        v13 = a1;
        v6 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLBackgroundSystemTask::cancelSubmittedRequest() const", "%s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v8 = a1;
      if (a1[23] < 0)
      {
        v8 = *a1;
      }

      *buf = 136315138;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#bg,cancelSubmittedRequest,no task scheduler,name,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019108F8(a1);
    }
  }
}

id sub_1006E4354(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v22 = 136315138;
    v23 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#bg,start,scheduling background system task,name,%s", &v22, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019109F8(a1);
  }

  if (sub_1006E48A4(a1))
  {
    if ((*(a1 + 93) & 1) == 0 && (sub_1006E3BAC(a1) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v19 = a1;
        if (*(a1 + 23) < 0)
        {
          v19 = *a1;
        }

        v22 = 136315138;
        v23 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#bg,start,failed to register task,name,%s", &v22, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101910BF8(a1);
        return 0;
      }

      return result;
    }

    v4 = sub_1006E3EEC(a1);
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 == 4)
    {
      if ((*(a1 + 92) & 1) != 0 || !v4)
      {
        goto LABEL_36;
      }

      if (!sub_1006E4B70(a1, v4))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v20 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
        {
          v21 = a1;
          if (*(a1 + 23) < 0)
          {
            v21 = *a1;
          }

          v22 = 136315138;
          v23 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#bg,start,periodic task unchanged,do nothing,name,%s", &v22, 0xCu);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101910CF8(a1);
          return 0;
        }

        return result;
      }

      v6 = *(a1 + 72);
    }

    if ((v6 - 1) <= 2 && (*(a1 + 92) & 1) == 0 && v5)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1;
        if (*(a1 + 23) < 0)
        {
          v8 = *a1;
        }

        v22 = 136315138;
        v23 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#bg,start,single shot task unchanged,do nothing,name,%s", &v22, 0xCu);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101910DF8(a1);
        return 0;
      }

      return result;
    }

LABEL_36:
    if (v5)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v12 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1;
        if (*(a1 + 23) < 0)
        {
          v13 = *a1;
        }

        v22 = 136315138;
        v23 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#bg,start,cancelling previous task,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101910EF8(a1);
      }

      sub_1006E40B4(a1);
      v6 = *(a1 + 72);
    }

    if (v6 == 4)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1;
        if (*(a1 + 23) < 0)
        {
          v15 = *a1;
        }

        v22 = 136315138;
        v23 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#bg,start,submit periodic request,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019110F8(a1);
      }

      return sub_1006E4D10(a1);
    }

    else
    {
      if ((v6 - 1) > 2)
      {
        return 0;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v16 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1;
        if (*(a1 + 23) < 0)
        {
          v17 = *a1;
        }

        v22 = 136315138;
        v23 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#bg,start,submit single shot request,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101910FF8(a1);
      }

      return sub_1006E4DE0(a1);
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_1019103B4();
  }

  v10 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v11 = a1;
    if (*(a1 + 23) < 0)
    {
      v11 = *a1;
    }

    v22 = 136315138;
    v23 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#bg,start,invalid settings,name,%s", &v22, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101910AF8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1006E48A4(uint64_t *a1)
{
  v2 = a1 + 23;
  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_3;
    }

LABEL_8:
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,identifier not set", &v11, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019114F8();
    return 0;
  }

  if (!a1[1])
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a1[3])
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6 = a1;
      if (*v2 < 0)
      {
        v6 = *a1;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,queue is invalid,name,%s", &v11, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019113F8();
    return 0;
  }

  if (!a1[7])
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v8 = a1;
      if (*v2 < 0)
      {
        v8 = *a1;
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,task is invalid,name,%s", &v11, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019112F8();
    return 0;
  }

  if ((*(a1 + 18) - 1) < 4)
  {
    return 1;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v9 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v10 = a1;
    if (*v2 < 0)
    {
      v10 = *a1;
    }

    v11 = 136315138;
    v12 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,schedule is invalid,name,%s", &v11, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019111F8();
    return 0;
  }

  return result;
}

BOOL sub_1006E4B70(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (*(a1 + 23) < 0)
      {
        v7 = *a1;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,isRequestChanged,invalid request,name,%s", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911604(a1);
    }

    return 1;
  }

  sub_1006E5154(a1, a2, "pastRequest");
  if ([a2 priority] != *(a1 + 64) || *(a1 + 89) != objc_msgSend(a2, "requiresInexpensiveNetworkConnectivity") || *(a1 + 88) != objc_msgSend(a2, "requiresExternalPower") || *(a1 + 90) != objc_msgSend(a2, "requiresNetworkConnectivity") || *(a1 + 91) != objc_msgSend(a2, "resourceIntensive"))
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a2 interval];
  return v4 != *(a1 + 80);
}

id sub_1006E4D10(uint64_t a1)
{
  v2 = [BGRepeatingSystemTaskRequest alloc];
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = [v2 initWithIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  [v4 setPriority:*(a1 + 64)];
  [v4 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
  [v4 setRequiresNetworkConnectivity:*(a1 + 90)];
  [v4 setRequiresExternalPower:*(a1 + 88)];
  [v4 setResourceIntensive:*(a1 + 91)];
  [v4 setInterval:*(a1 + 80)];
  [v4 setMinDurationBetweenInstances:*(a1 + 80) * 0.8];
  v5 = sub_1006E4EBC(a1, v4);

  return v5;
}

id sub_1006E4DE0(uint64_t a1)
{
  v2 = [BGNonRepeatingSystemTaskRequest alloc];
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = [v2 initWithIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  [v4 setPriority:*(a1 + 64)];
  [v4 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
  [v4 setRequiresNetworkConnectivity:*(a1 + 90)];
  [v4 setRequiresExternalPower:*(a1 + 88)];
  [v4 setResourceIntensive:*(a1 + 91)];
  v5 = *(a1 + 72);
  if (v5 == 1)
  {
    [v4 setTrySchedulingBefore:*(a1 + 80)];
  }

  else if (v5 == 2)
  {
    [v4 setScheduleAfter:*(a1 + 80)];
  }

  v6 = sub_1006E5008(a1, v4);

  return v6;
}

id sub_1006E4EBC(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  if (v4)
  {
    v5 = "submitRequestSuccess";
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (*(a1 + 23) < 0)
      {
        v7 = *a1;
      }

      *buf = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,submitRequest,failed,error,%@,name,%s", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911704();
    }

    v5 = "submitRequestFailed";
  }

  sub_1006E5154(a1, a2, v5);
  return v4;
}

id sub_1006E5008(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  if (v4)
  {
    v5 = "submitRequestSuccess";
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (*(a1 + 23) < 0)
      {
        v7 = *a1;
      }

      *buf = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,submitRequest,failed,error,%@,name,%s", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911808();
    }

    v5 = "submitRequestFailed";
  }

  sub_1006E5154(a1, a2, v5);
  return v4;
}

void sub_1006E5154(uint64_t a1, void *a2, int *a3)
{
  if (a2)
  {
    objc_opt_class();
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (objc_opt_isKindOfClass())
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103DC();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "<empty note>";
        if (a3)
        {
          v9 = a3;
        }

        v34 = v9;
        v10 = [objc_msgSend(a2 "identifier")];
        v36 = a3;
        v11 = *(a1 + 72);
        v12 = a1;
        v13 = [a2 priority];
        v14 = [a2 requiresInexpensiveNetworkConnectivity];
        v15 = [a2 requiresExternalPower];
        v16 = [a2 requiresNetworkConnectivity];
        v17 = [a2 resourceIntensive];
        [a2 scheduleAfter];
        v19 = v18;
        [a2 trySchedulingBefore];
        *buf = 136317442;
        v39 = v34;
        v40 = 2080;
        v41 = v10;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v42 = 1024;
        v43 = v11;
        a3 = v36;
        v44 = 1024;
        v45 = v13;
        a1 = v12;
        v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v46 = 1024;
        v47 = v14;
        v48 = 1024;
        v49 = v15;
        v50 = 1024;
        v51 = v16;
        v52 = 1024;
        v53 = v17;
        v54 = 2048;
        v55 = v19;
        v56 = 2048;
        v57 = v20;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,logRequest,nonRepeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,scheduleAfter,%.1f,trySchedulingBefore,%.1f", buf, 0x4Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        [objc_msgSend(a2 "identifier")];
        [a2 priority];
        [a2 requiresInexpensiveNetworkConnectivity];
        [a2 requiresExternalPower];
        [a2 requiresNetworkConnectivity];
        [a2 resourceIntensive];
        [a2 scheduleAfter];
        [a2 trySchedulingBefore];
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::logRequest(BGSystemTaskRequest *, const char *) const", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }

        v7 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (p_info[270] != -1)
      {
        sub_1019103B4();
      }

      v21 = v7[271];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "<empty note>";
        if (a3)
        {
          v22 = a3;
        }

        v37 = v22;
        v23 = [objc_msgSend(a2 "identifier")];
        v35 = *(a1 + 72);
        v24 = [a2 priority];
        v25 = [a2 requiresInexpensiveNetworkConnectivity];
        v26 = [a2 requiresExternalPower];
        v27 = [a2 requiresNetworkConnectivity];
        v28 = [a2 resourceIntensive];
        [a2 interval];
        *buf = 136317186;
        v39 = v37;
        v40 = 2080;
        v41 = v23;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v42 = 1024;
        v43 = v35;
        v44 = 1024;
        v45 = v24;
        v46 = 1024;
        v47 = v25;
        v48 = 1024;
        v49 = v26;
        v50 = 1024;
        v51 = v27;
        v52 = 1024;
        v53 = v28;
        v54 = 2048;
        v55 = v29;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#bg,logRequest,repeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,interval,%.1f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (p_info[270] != -1)
        {
          sub_1019103B4();
        }

        [objc_msgSend(a2 "identifier")];
        [a2 priority];
        [a2 requiresInexpensiveNetworkConnectivity];
        [a2 requiresExternalPower];
        [a2 requiresNetworkConnectivity];
        [a2 resourceIntensive];
        [a2 interval];
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::logRequest(BGSystemTaskRequest *, const char *) const", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v31 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v32 = "<empty note>";
      if (a3)
      {
        v32 = a3;
      }

      *buf = 136315138;
      v39 = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "#bg,logRequest,invalid request,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10191190C(a3);
    }
  }
}

void sub_1006E5878(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 2080;
  *(a1 + 14) = v3;
}

uint64_t sub_1006E652C(uint64_t a1)
{
  *a1 = off_10246B9C8;
  v2 = [objc_msgSend(*(a1 + 128) "vendor")];
  if (*(a1 + 95) < 0)
  {
    sub_100007244(__dst, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__dst = *(a1 + 72);
    v15 = *(a1 + 88);
  }

  if (*(a1 + 119) < 0)
  {
    sub_100007244(&__p, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    __p = *(a1 + 96);
    v17 = *(a1 + 112);
  }

  v18 = *(a1 + 120);
  [v2 checkWeakPersistentClientWithIdentifier:sub_1006E679C(__dst)];
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 240);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v19 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [objc_msgSend(*(a1 + 240) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i)), "invalidate"}];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v19 count:16];
    }

    while (v4);
  }

  sub_1006E6A20(a1 + 200);
  sub_1004906DC(a1 + 160);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1003C93BC(a1 + 24, *(a1 + 32));
  v8 = *(a1 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_1006E6760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    if (a22 < 0)
    {
      operator delete(__p);
    }

    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006E679C(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1006E6AF4;
  v4[3] = &unk_10246BA68;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&v5, *a1, *(a1 + 1));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100007244(&__p, *(a1 + 3), *(a1 + 4));
  }

  else
  {
    __p = *(a1 + 24);
    v8 = *(a1 + 5);
  }

  v9 = *(a1 + 6);
  v2 = [v4 copy];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5);
  }

  return v2;
}

void sub_1006E6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E68CC(uint64_t result)
{
  if (*(result + 248) == 1)
  {
    v1 = result;
    *(result + 248) = 0;
    sub_1006E6C7C((result + 160));
    sub_1003C93BC(v1 + 24, *(v1 + 32));
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 24) = v1 + 32;
    v2 = *(v1 + 48);
    sub_10000E198(&v3, (v1 + 8));
    (*(*v2 + 16))(v2, &v3);
    if (v4)
    {
      sub_100008080(v4);
    }

    return (*(*v1 + 56))(v1);
  }

  return result;
}

void sub_1006E6994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E69AC(uint64_t a1)
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

uint64_t sub_1006E6A20(uint64_t a1)
{
  sub_1006E6A5C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1006E6A5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1006E6AA0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1006E6AA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

char *sub_1006E6AF4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[55] < 0)
  {
    result = sub_100007244(a2, *(result + 4), *(result + 5));
  }

  else
  {
    *a2 = *(result + 2);
    *(a2 + 16) = *(result + 6);
  }

  if (v2[79] < 0)
  {
    result = sub_100007244((a2 + 24), *(v2 + 7), *(v2 + 8));
  }

  else
  {
    *(a2 + 24) = *(v2 + 56);
    *(a2 + 40) = *(v2 + 9);
  }

  *(a2 + 48) = *(v2 + 10);
  return result;
}

void sub_1006E6B70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006E6B8C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100007244(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  *(v3 + 10) = *(a2 + 80);
  return result;
}

void sub_1006E6C08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E6C24(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void *sub_1006E6C7C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_1006E6CE8()
{
  result = sub_100008074();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006E6D88()
{
  if (qword_102658F80 != -1)
  {
    sub_101911A5C();
  }

  return qword_1026371F8;
}

void sub_1006E6DC8(void *a1)
{
  sub_101137710(a1);

  operator delete();
}

double sub_1006E6E00(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Unrecognized interval notification %{public}d", &v11, 8u);
    }

    v5 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_101911A84(a2);
    }
  }

  else
  {
    sub_1011381C4(a1);
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349056;
      v12 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryProximity] Setting update interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101911B74(a3);
    }

    sub_10017A1F4(*(a1 + 32), *a3);
    v5 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }
  }

  return *&v5;
}

double sub_1006E6F9C(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Unrecognized batch notification %{public}d", &v11, 8u);
    }

    v5 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_101911C6C(a2);
    }
  }

  else
  {
    sub_1011381C4(a1);
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349056;
      v12 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryProximity] Setting batch interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101911D5C(a3);
    }

    sub_100179350(*(a1 + 32), *a3);
    v5 = *a3;
  }

  return *&v5;
}

void sub_1006E712C(uint64_t a1, uint64_t a2)
{
  sub_100061FD8(a1, 0, a2, 32);
  if ((*(a1 + 29) & 1) == 0)
  {
    v15 = *"N/A";
    v16 = unk_101C89387;
    v17 = xmmword_101C89397;
    v18 = unk_101C893A7;
    v19 = *"N/A";
    *(a1 + 29) = 1;
    v14 = 0;
    v20 = unk_101C893C7;
    memset(v21, 0, sizeof(v21));
    memset(v22, 0, sizeof(v22));
    if (sub_1011378CC(a1, &v14))
    {
      *buf = 0u;
      memset(v13, 0, sizeof(v13));
      v3 = sub_10026E634(*(a1 + 32));
      if (sub_1012AC674(buf, v3, @"OSCL", 0x25))
      {
        v4 = 0;
        v5 = &v21[5];
        do
        {
          snprintf(v5, 0x25uLL, "%02x", buf[v4++]);
          v5 += 2;
        }

        while (v4 != 37);
      }

      v10 = 0;
      v11[0] = 0;
      *(v11 + 5) = 0;
      v6 = sub_10026E634(*(a1 + 32));
      if (sub_1012AC674(&v10, v6, @"PDTC", 0x15))
      {
        v7 = 0;
        v8 = v22;
        do
        {
          snprintf(v8, 0x15uLL, "%02x", *(&v11[-1] + v7++));
          v8 += 2;
        }

        while (v7 != 21);
      }

      sub_100061FD8(a1, 1, &v14, 224);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_101911E54();
      }

      v9 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Service not found!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101911E7C();
      }
    }
  }
}

void sub_1006E7398(uint64_t a1)
{
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v4 = IntegerValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = IntegerValue;
    v6 = IOHIDEventGetIntegerValue();
    v7 = IOHIDEventGetIntegerValue();
    if (v7 == 65300 && v6 == 3)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v9 = sub_1000080EC(TimeStamp);
      v10 = sub_1012ABB78();
      if (v5 == 10)
      {
        v11 = *(DataValue + 4);
      }

      else
      {
        if (v5 != 8)
        {
          if (qword_1025D4320 != -1)
          {
            sub_101911A70();
          }

          v28 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v32 = 2081;
            *&v32[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4320 != -1)
            {
              sub_101911E54();
            }
          }

          v29 = qword_1025D4328;
          if (os_signpost_enabled(qword_1025D4328))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v32 = 2081;
            *&v32[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_signpost_emit_with_name_impl(dword_100000000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[AccessoryProximity] Incorrect optical and temperature size.", "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4320 != -1)
            {
              sub_101911E54();
            }
          }

          v30 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v32 = 2081;
            *&v32[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          abort_report_np();
        }

        v11 = 0;
      }

      v13 = *DataValue;
      v14 = DataValue[1];
      v15 = *(DataValue + 2);
      v16 = *(DataValue + 1);
      v17 = *(DataValue + 3);
      if (qword_1025D4320 != -1)
      {
        sub_101911A70();
      }

      v18 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        v19 = *DataValue;
        v20 = DataValue[1];
        v21 = DataValue[2];
        v22 = DataValue[3];
        v23 = DataValue[4];
        v24 = DataValue[5];
        v25 = DataValue[6];
        v26 = DataValue[7];
        *buf = 67244032;
        *&buf[4] = v13;
        *&buf[8] = 1026;
        *&buf[10] = v14;
        *&buf[14] = 1026;
        *&buf[16] = v15;
        *&buf[20] = 1026;
        *&buf[22] = v16;
        *&buf[26] = 1026;
        *v32 = v17;
        *&v32[4] = 1026;
        *&v32[6] = v11;
        v33 = 2050;
        v34 = v10;
        v35 = 2050;
        v36 = v9;
        v37 = 1026;
        v38 = v19;
        v39 = 1026;
        v40 = v20;
        v41 = 1026;
        v42 = v21;
        v43 = 1026;
        v44 = v22;
        v45 = 1026;
        v46 = v23;
        v47 = 1026;
        v48 = v24;
        v49 = 1026;
        v50 = v25;
        v51 = 1026;
        v52 = v26;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "[AccessoryProximity] location_id,%{public}d,status,%{public}d,base,%{public}d,peak,%{public}d,temp,%{public}d,seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,raw %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x", buf, 0x6Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_101911E54();
        }

        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryProximity::onEventData(void *, void *, IOHIDEventRef)", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      *buf = v9;
      *&buf[8] = v10;
      buf[16] = v13;
      buf[17] = v14;
      *&buf[20] = v15;
      *&buf[18] = v16;
      *&buf[22] = v17;
      *&buf[24] = v11;
      sub_1006E712C(a1, buf);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_101911A70();
      }

      v12 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349312;
        *&buf[4] = v7;
        *&buf[12] = 2050;
        *&buf[14] = v6;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Invalid usage page/usage: {%{public}ld,%{public}ld}", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101911F88(v7, v6);
      }
    }
  }
}

void sub_1006E7A14(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = vdupq_n_s64(0xFFF0000000000000);
  *(a4 + 1) = v10;
  v11 = (a4 + 2);
  *a4 = 0;
  a4[1] = 0;
  *(a4 + 2) = v10;
  *(a4 + 3) = 0u;
  v12 = a4 + 6;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 24) = 0;
  *(a4 + 13) = v10;
  v13 = a4 + 13;
  *(a4 + 15) = v10;
  *(a4 + 17) = v10;
  *(a4 + 19) = v10;
  *(a4 + 21) = v10;
  *(a4 + 23) = v10;
  *(a4 + 25) = v10;
  *(a4 + 27) = v10;
  *(a4 + 29) = v10;
  a4[31] = 0xFFF0000000000000;
  *(a4 + 76) = 0;
  *(a4 + 17) = 0u;
  *(a4 + 18) = 0u;
  *(a4 + 16) = 0u;
  a4[39] = 0xFFF0000000000000;
  *(a4 + 20) = v10;
  *(a4 + 21) = v10;
  *(a4 + 22) = v10;
  *(a4 + 23) = v10;
  a4[48] = 0xFFF0000000000000;
  v14 = a4 + 49;
  *(a4 + 49) = 0u;
  *(a4 + 51) = 0u;
  *(a4 + 53) = 0u;
  *(a4 + 110) = 0;
  *(a4 + 28) = v10;
  *(a4 + 29) = v10;
  *(a4 + 30) = 0u;
  *(a4 + 31) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 132) = 0;
  a4[67] = 0xFFF0000000000000;
  *(a4 + 34) = v10;
  *(a4 + 35) = v10;
  *(a4 + 36) = v10;
  *(a4 + 37) = v10;
  *(a4 + 38) = v10;
  *(a4 + 39) = v10;
  *(a4 + 40) = v10;
  *(a4 + 41) = v10;
  *(a4 + 42) = v10;
  *(a4 + 43) = v10;
  *(a4 + 44) = v10;
  *(a4 + 45) = v10;
  *(a4 + 46) = v10;
  *(a4 + 47) = v10;
  a4[96] = 0xFFF0000000000000;
  *(a4 + 776) = 0;
  __p = 0;
  v78 = 0;
  v79 = 0;
  sub_100D8C754(a2, a3, buf, a5);
  v15 = v94;
  *(v13 + 6) = v93;
  *(v13 + 7) = v15;
  *(v13 + 8) = v95;
  v13[18] = v96;
  v16 = v90;
  *(v13 + 2) = v89;
  *(v13 + 3) = v16;
  v17 = v92;
  *(v13 + 4) = v91;
  *(v13 + 5) = v17;
  v18 = *&buf[16];
  *v13 = *buf;
  *(v13 + 1) = v18;
  sub_100D8C1C4(a1 + 1, v13, a2, a3, buf, a5);
  v19 = *&buf[16];
  *v12 = *buf;
  *(v12 + 1) = v19;
  *(v12 + 2) = v89;
  *(v12 + 12) = v90;
  if (!*(a4 + 24))
  {
    v20 = v78;
    if (v78 >= v79)
    {
      v22 = (v78 - __p) >> 4;
      v23 = v22 + 1;
      if ((v22 + 1) >> 60)
      {
        goto LABEL_71;
      }

      v24 = v79 - __p;
      if ((v79 - __p) >> 3 > v23)
      {
        v23 = v24 >> 3;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        sub_1003E5FE8(&__p, v25);
      }

      *(16 * v22) = *(a4 + 5);
      v21 = 16 * v22 + 16;
      memcpy((16 * v22 - (v78 - __p)), __p, v78 - __p);
      v26 = __p;
      __p = (16 * v22 - (v78 - __p));
      v78 = v21;
      v79 = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v78 = *(a4 + 5);
      v21 = (v20 + 16);
    }

    v78 = v21;
  }

  sub_100DC7A70(a2, buf, a5);
  v27 = v90;
  *(a4 + 43) = v89;
  *(a4 + 45) = v27;
  *(a4 + 47) = v91;
  v28 = *&buf[16];
  *(a4 + 39) = *buf;
  *(a4 + 41) = v28;
  sub_100DC731C(a1 + 2, (a4 + 39), a2, a3, buf, a5);
  v29 = *&buf[16];
  *(a4 + 16) = *buf;
  *(a4 + 17) = v29;
  *(a4 + 18) = v89;
  *(a4 + 76) = v90;
  if (*(a4 + 76))
  {
    goto LABEL_29;
  }

  v30 = v78;
  if (v78 >= v79)
  {
    v32 = (v78 - __p) >> 4;
    v33 = v32 + 1;
    if (!((v32 + 1) >> 60))
    {
      v34 = v79 - __p;
      if ((v79 - __p) >> 3 > v33)
      {
        v33 = v34 >> 3;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF0)
      {
        v35 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        sub_1003E5FE8(&__p, v35);
      }

      *(16 * v32) = *(a4 + 18);
      v31 = 16 * v32 + 16;
      memcpy((16 * v32 - (v78 - __p)), __p, v78 - __p);
      v36 = __p;
      __p = (16 * v32 - (v78 - __p));
      v78 = v31;
      v79 = 0;
      if (v36)
      {
        operator delete(v36);
      }

      goto LABEL_28;
    }

LABEL_71:
    sub_10028C64C();
  }

  *v78 = *(a4 + 18);
  v31 = (v30 + 16);
LABEL_28:
  v78 = v31;
LABEL_29:
  *(a4 + 2) = sub_10084644C(a5, a1, a2);
  a4[3] = v37;
  a4[4] = v38;
  a4[5] = v39;
  sub_1008462A8(a1, v11);
  *(a4 + 56) = sub_100DBC834(a5, a1 + 3, a2, a3);
  a4[57] = v40;
  a4[58] = v41;
  a4[59] = v42;
  sub_100DBC3A0(a1 + 3, a4 + 28, a2, a3, buf, a5);
  v43 = *&buf[16];
  *v14 = *buf;
  *(v14 + 1) = v43;
  *(v14 + 2) = v89;
  *(v14 + 12) = v90;
  if (!*(a4 + 110))
  {
    v44 = a4 + 53;
    v45 = v78;
    if (v78 >= v79)
    {
      v47 = (v78 - __p) >> 4;
      v48 = v47 + 1;
      if ((v47 + 1) >> 60)
      {
        goto LABEL_72;
      }

      v49 = v79 - __p;
      if ((v79 - __p) >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        sub_1003E5FE8(&__p, v50);
      }

      v51 = (16 * v47);
      *v51 = *v44;
      v46 = 16 * v47 + 16;
      v52 = v51 - (v78 - __p);
      memcpy(v52, __p, v78 - __p);
      v53 = __p;
      __p = v52;
      v78 = v46;
      v79 = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v78 = *v44;
      v46 = (v45 + 16);
    }

    v78 = v46;
  }

  sub_1006EA950(a2, buf, a5);
  v54 = v100;
  *(a4 + 91) = v99;
  *(a4 + 93) = v54;
  *(a4 + 95) = v101;
  v55 = v96;
  *(a4 + 83) = v95;
  *(a4 + 85) = v55;
  v56 = v98;
  *(a4 + 87) = v97;
  *(a4 + 89) = v56;
  v57 = v92;
  *(a4 + 75) = v91;
  *(a4 + 77) = v57;
  v58 = v94;
  *(a4 + 79) = v93;
  *(a4 + 81) = v58;
  v59 = *&buf[16];
  *(a4 + 67) = *buf;
  *(a4 + 69) = v59;
  v60 = v90;
  *(a4 + 71) = v89;
  *(a4 + 73) = v60;
  sub_1006EA1BC(a1 + 4, (a4 + 67), a2, a3, buf, a5);
  v62 = *&buf[16];
  *(a4 + 30) = *buf;
  *(a4 + 31) = v62;
  *(a4 + 32) = v89;
  *(a4 + 132) = v90;
  if (!*(a4 + 132))
  {
    v63 = v78;
    if (v78 < v79)
    {
      *v78 = *(a4 + 32);
      v64 = (v63 + 16);
LABEL_56:
      v78 = v64;
      goto LABEL_57;
    }

    v65 = (v78 - __p) >> 4;
    v66 = v65 + 1;
    if (!((v65 + 1) >> 60))
    {
      v67 = v79 - __p;
      if ((v79 - __p) >> 3 > v66)
      {
        v66 = v67 >> 3;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF0)
      {
        v68 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        sub_1003E5FE8(&__p, v68);
      }

      *(16 * v65) = *(a4 + 32);
      v64 = 16 * v65 + 16;
      memcpy((16 * v65 - (v78 - __p)), __p, v78 - __p);
      v61 = __p;
      __p = (16 * v65 - (v78 - __p));
      v78 = v64;
      v79 = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_56;
    }

LABEL_72:
    sub_10028C64C();
  }

LABEL_57:
  if (!*(a4 + 24) && !*(a4 + 110) && !*(a4 + 76))
  {
    v69 = sub_1006E8218(v61, &__p);
    *a4 = v69;
    sub_1009A37F4(a3, v69);
    a4[1] = v70;
    *(a4 + 776) = 1;
  }

  if (qword_1025D41B0 != -1)
  {
    sub_10191209C();
  }

  v71 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v72 = *a4;
    v73 = a4[1];
    *buf = 134349824;
    *&buf[4] = a5;
    *&buf[12] = 2050;
    *&buf[14] = v72;
    *&buf[22] = 2050;
    *&buf[24] = v73;
    LOWORD(v89) = 2050;
    *(&v89 + 2) = (v78 - __p) >> 4;
    _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "CLMobility::ModelFusion::Result,classificationEnd,%{public}.2f,rawSteadiness,%{public}.2f,walkingSteadiness,%{public}.2f,successfulModelCount,%{public}lu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019120C4(buf);
    v74 = *a4;
    v75 = a4[1];
    v80 = 134349824;
    v81 = a5;
    v82 = 2050;
    v83 = v74;
    v84 = 2050;
    v85 = v75;
    v86 = 2050;
    v87 = (v78 - __p) >> 4;
    v76 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "SteadinessModelFusion::Result CLMobility::SteadinessModelFusion::runSteadinessModel(CFAbsoluteTime, const std::vector<BoutMetrics> &, const CLBodyMetrics &) const", "%s\n", v76);
    if (v76 != buf)
    {
      free(v76);
    }
  }

  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }
}

void sub_1006E81C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006E8218(uint64_t a1, double **a2)
{
  if (qword_1025D41B0 != -1)
  {
    sub_101912108();
  }

  v3 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a2[1] - *a2) >> 4;
    v17 = 134349056;
    v18 = *&v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "fuseLikelihoods using mean log odds fusion rule, modelLikelihoods count,%{public}lu", &v17, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191211C(a2);
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    if (qword_1025D41B0 != -1)
    {
      sub_10191209C();
    }

    v15 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "No component models to fuse likelihoods", &v17, 2u);
    }

    v11 = -1.0;
    if (sub_10000A100(121, 2))
    {
      sub_101912378();
    }
  }

  else
  {
    v7 = 0.0;
    v8 = *a2;
    while (*v8 != 0.0)
    {
      v9 = v8[1];
      if (v9 == 0.0)
      {
        break;
      }

      v7 = v7 + log(*v8 / v9);
      v8 += 2;
      if (v8 == v6)
      {
        v10 = exp(v7 / ((v6 - v5) >> 4));
        return v10 / (v10 + 1.0);
      }
    }

    if (qword_1025D41B0 != -1)
    {
      sub_10191209C();
    }

    v12 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_FAULT))
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      v17 = 134349312;
      v18 = v13;
      v19 = 2050;
      v20 = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Unexpected model likelihood OK,%{public}.2f and/or NotOK,%{public}.2f", &v17, 0x16u);
    }

    v11 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101912248(v8);
    }
  }

  return v11;
}

void sub_1006E84A4(uint64_t a1, uint64_t a2)
{
  sub_1004582A8(v4, a2);
  *a1 = &off_10246BBF8;
  sub_100458228(v4);
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *a1 = off_10246BBA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x404E000000000000;
  *(a1 + 136) = 0;
  sub_1006E9C08((a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  sub_1006E9CB4(&v3);
  operator new();
}

void sub_1006E88C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v3 + 8))(v3);
  sub_1006E9CB4(va);
  sub_10049AC1C(v2);
  _Unwind_Resume(a1);
}

void sub_1006E896C(void *a1, uint64_t a2, double a3)
{
  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v6 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteIntensityEstimator::feedNatalie called, rawMets, %f", &v13, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912498();
  }

  sub_1006E8AF4(a1, a2);
  v7 = a1[7];
  v8 = a1[8];
  v9 = 0.0;
  if (v7 != v8)
  {
    do
    {
      (*(**v7 + 24))();
      v10 = *v7++;
      v11 = *(v10 + 40);
      if (v11 > v9)
      {
        v9 = v11;
      }
    }

    while (v7 != v8);
    v7 = a1[7];
    v8 = a1[8];
  }

  while (v7 != v8)
  {
    v12 = *v7++;
    (*(*v12 + 16))(v12, v9);
  }
}

void sub_1006E8AF4(void *a1, uint64_t a2)
{
  v29[0] = 1.0;
  v28 = 0;
  v27 = 0;
  v4 = *(a2 + 8);
  *&v25 = v4 - (*(a2 + 24) - *(a2 + 16));
  *(&v25 + 1) = v4;
  sub_1006E92F4(a1, a2, v29, &v28);
  v26 = v5;
  *&v27 = v29[0];
  BYTE4(v27) = *(a2 + 248);
  BYTE5(v27) = v28;
  if (v4 < v4 - *&v25)
  {
    if (qword_1025D4490 != -1)
    {
      sub_101912484();
    }

    v6 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v34 = v4;
      v35 = 2048;
      v36 = v4 - *&v25;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Invalid timestamps, natalieModelInput computeTime is less than the duration, computeTime, %.3f, duration, %.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019126D8();
    }

    return;
  }

  if (*&v25 >= v4)
  {
    if (qword_1025D4490 != -1)
    {
      sub_101912484();
    }

    v16 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v34 = *&v25;
      v35 = 2048;
      v36 = v4;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Sample start time is after sample end time, startTime, %.3f, endTime, %.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019125A8();
    }
  }

  else
  {
    v7 = a1[6];
    if (v7 && *&v25 < *(*(a1[2] + (((v7 + a1[5] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v7 + a1[5] - 1) & 0x7F) + 8))
    {
      if (qword_1025D4490 != -1)
      {
        sub_101912484();
      }

      v8 = qword_1025D4498;
      if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[6] + a1[5] - 1;
        v10 = *(*(a1[2] + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F) + 8);
        *buf = 134218240;
        v34 = v10;
        v35 = 2048;
        v36 = *&v25;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Time rolled back, bufferEndTime, %.3f, newSampleStartTime, %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4490 != -1)
        {
          sub_1019126B0();
        }

        v22 = a1[6] + a1[5] - 1;
        v23 = *(*(a1[2] + ((v22 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v22 & 0x7F) + 8);
        v29[1] = 3.8521e-34;
        v30 = v23;
        v31 = 2048;
        v32 = v25;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLExerciseMinuteIntensityEstimator::updateSampleBuffer(double, const CLNatalieModelInput &)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      v11 = a1[2];
      v12 = a1[3];
      a1[6] = 0;
      v13 = (v12 - v11) >> 3;
      if (v13 >= 3)
      {
        do
        {
          operator delete(*v11);
          v14 = a1[3];
          v11 = (a1[2] + 8);
          a1[2] = v11;
          v13 = (v14 - v11) >> 3;
        }

        while (v13 > 2);
      }

      if (v13 == 1)
      {
        v15 = 64;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v15 = 128;
      }

      a1[5] = v15;
LABEL_34:
      sub_1006E941C(a1 + 1, &v25);
      v21 = a1[7];
      v20 = a1[8];
      while (v21 != v20)
      {
        (*(**v21 + 32))();
        v21 += 8;
      }

      return;
    }

    sub_1006E941C(a1 + 1, &v25);
    v17 = a1[6];
    if (v17)
    {
      v18 = *(*(a1[2] + (((v17 + a1[5] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v17 + a1[5] - 1) & 0x7F) + 8) + -310.0;
      do
      {
        v19 = a1[5];
        if (*(*(a1[2] + ((v19 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v19 & 0x7F) + 8) > v18)
        {
          break;
        }

        a1[6] = v17 - 1;
        a1[5] = v19 + 1;
        sub_10051373C((a1 + 1), 1);
        v17 = a1[6];
      }

      while (v17);
    }
  }
}

void sub_1006E9000(uint64_t a1, float *a2)
{
  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v4 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteIntensityEstimator::feedBodyMetrics called", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019127E0();
  }

  sub_1006E9278(a2);
  v13 = v5;
  v14 = v6;
  v7 = 1.0;
  if (v5 > 0.0)
  {
    v7 = 4.40208912 / v5;
  }

  *(a1 + 80) = v7;
  v8 = sub_1000A23E0();
  sub_100E03980(v8, &v13);
  if (qword_1025D4490 != -1)
  {
    sub_1019126B0();
  }

  v9 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 80);
    *buf = 134218496;
    v22 = v13;
    v23 = 2048;
    v24 = v10;
    v25 = 1024;
    v26 = v14;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLExerciseMinuteIntensityEstimator::feedBodyMetrics, threshold, %f, scalingFactor, %f, thresholdSource, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4490 != -1)
    {
      sub_1019126B0();
    }

    v11 = *(a1 + 80);
    v15 = 134218496;
    v16 = v13;
    v17 = 2048;
    v18 = v11;
    v19 = 1024;
    v20 = v14;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLExerciseMinuteIntensityEstimator::feedBodyMetrics(const CLBodyMetrics &)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

double sub_1006E9278(float *a1)
{
  sub_1006E9DE4(a1);
  result = v2;
  v4 = a1[13];
  if (v4 != -1.0 && v2 > v4)
  {
    result = v4;
  }

  if (result < 2.19999981)
  {
    result = 2.19999981;
  }

  if (result > 4.40208912)
  {
    return 4.40208912;
  }

  return result;
}

uint64_t sub_1006E92F4(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  if (((CLMotionActivity::isTypePedestrian() & 1) != 0 || (CLMotionActivity::isTypeIndoorPedestrian() & 1) != 0 || (*(a2 + 48) - 61) <= 1) && (sub_100DBB74C(a2) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 248) == 1)
  {
    v8 = *(a2 + 48);
    if (v8 <= 2100)
    {
      if (v8 != 2022 && v8 != 2024)
      {
LABEL_14:
        v9 = *(a1 + 80);
        *a3 = v9;
      }
    }

    else if (((v8 - 2101) > 0x31 || ((1 << (v8 - 53)) & 0x2000000000011) == 0) && v8 != 15670)
    {
      goto LABEL_14;
    }
  }

  result = sub_10124A8B4(a1 + 88, a2, v11);
  *a4 = v11[0];
  return result;
}

uint64_t sub_1006E941C(void *a1, _OWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006E9F80(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 7));
  v15 = *v14 + 32 * (v12 & 0x7F);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 32;
}

void *sub_1006E94E4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1024553F0;
  sub_1004582A8((a1 + 1), a3);
  a1[5] = 0;
  a1[6] = a2;
  return a1;
}

uint64_t sub_1006E9534(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, double a5)
{
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  v7 = v5[5];
  if (!v7)
  {
    return 0;
  }

  v12 = *a2;
  v13 = v5[1];
  v14 = v5[4] >> 7;
  if (*a2 == 0.0)
  {
    v12 = *(*(v13 + 8 * v14) + 32 * (v5[4] & 0x7FLL));
    *a2 = v12;
    goto LABEL_12;
  }

  if (v12 >= *(*(v13 + 8 * v14) + 32 * (v5[4] & 0x7FLL)))
  {
LABEL_12:
    v18 = v5[4];
    goto LABEL_13;
  }

  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v15 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
  {
    v16 = *a2;
    v17 = *(*(*(*v6 + 8) + ((*(*v6 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(*v6 + 32) & 0x7FLL));
    *buf = 134218240;
    v53 = v16;
    v54 = 2048;
    v55 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "operateOnWindow - windowStartTime is outside of our intensity buffer, windowStartTime, %.3f, bufferStartTime, %.3f", buf, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019128F0(a2, v6);
  }

  v5 = *v6;
  v13 = *(*v6 + 8);
  v18 = *(*v6 + 32);
  v12 = *(*(v13 + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F));
  *a2 = v12;
  v7 = v5[5];
LABEL_13:
  v19 = v18 + v7;
  if (*(*(v13 + (((v19 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v19 - 1) & 0x7F) + 8) - v12 < a5)
  {
    return 0;
  }

  v20 = (v13 + 8 * (v19 >> 7));
  v21 = v5[2];
  if (v21 == v13)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v20 + 32 * (v19 & 0x7F);
  }

  while (1)
  {
    v24 = v5[1];
    v25 = v21 == v24 ? 0 : *(v24 + ((v5[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v5[4] & 0x7FLL);
    if (v25 == v22)
    {
      break;
    }

    v26 = v22;
    if (v22 == *v20)
    {
      v26 = *(v20 - 1) + 4096;
    }

    *a3 = v26 - 32;
    if (v22 == *v20)
    {
      v31 = *(v20 - 1);
      v27 = v31 + 4064;
      v28 = *(v31 + 4064);
      v29 = *a2;
      v30 = v31 + 4096;
      if (v28 <= *a2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = v22 - 32;
      v28 = *(v22 - 32);
      v29 = *a2;
      if (v28 <= *a2)
      {
        v30 = v22;
LABEL_32:
        sub_1006E9B18(a4, v27, *(v30 - 24) - v29);
        v5 = *v6;
        v24 = *(*v6 + 8);
        v21 = *(*v6 + 16);
        break;
      }

      v30 = v22;
    }

    sub_1006E9B18(a4, v27, *(v30 - 24) - v28);
    if (v22 == *v20)
    {
      v32 = *--v20;
      v22 = v32 + 4096;
    }

    v22 -= 32;
    v5 = *v6;
    v21 = *(*v6 + 16);
  }

  v33 = v5[4] + v5[5];
  v34 = (v24 + 8 * (v33 >> 7));
  if (v21 == v24)
  {
    v35 = 0;
  }

  else
  {
    v35 = *v34 + 32 * (v33 & 0x7F);
  }

  v36 = *a2 + a5;
  while (1)
  {
    v37 = v21 == v24 ? 0 : *(v24 + ((v5[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v5[4] & 0x7FLL);
    if (v37 == v35)
    {
      return 1;
    }

    if (v35 == *v34)
    {
      v41 = *(v34 - 1);
      v38 = v41 + 4064;
      v39 = *(v41 + 4064);
      if (v39 >= v36)
      {
        v45 = v41 + 4096;
        goto LABEL_54;
      }

      v40 = *(v41 + 4072);
    }

    else
    {
      v38 = v35 - 32;
      v39 = *(v35 - 32);
      if (v39 >= v36)
      {
        v45 = v35;
LABEL_54:
        sub_1006E9B18(a4, v38, -(*(v45 - 24) - v39));
        goto LABEL_58;
      }

      v40 = *(v35 - 24);
    }

    if (v40 >= v36)
    {
      sub_1006E9B18(a4, v38, v36 - v40);
      return 1;
    }

    if (qword_1025D4490 != -1)
    {
      sub_1019126B0();
    }

    v42 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
    {
      if (v35 == *v34)
      {
        v46 = *(v34 - 1);
        v43 = (v46 + 4064);
        v44 = v46 + 4096;
      }

      else
      {
        v43 = (v35 - 32);
        v44 = v35;
      }

      v47 = *a2;
      v48 = *v43;
      v49 = *(v44 - 24);
      *buf = 134219008;
      v53 = *&v47;
      v54 = 2048;
      v55 = v36;
      v56 = 2048;
      v57 = a5;
      v58 = 2048;
      v59 = v48;
      v60 = 2048;
      v61 = v49;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "operateOnWindow - our window is incomplete, this indicates there is a logic error, windowStartTime, %.3f, windowEndTime, %.3f, windowDuration, %.3f, sampleStartTime, %.3f, sampleEndTime, %.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4490 != -1)
      {
        sub_1019126B0();
      }

      v51 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLExerciseMinuteIntensityEstimatorBase::operateOnWindow(CFTimeInterval, CFAbsoluteTime &, const CLExerciseMinuteIntensitySample *&, std::function<void (const CLExerciseMinuteIntensitySample &, CFTimeInterval)>) const", "%s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }

LABEL_58:
    if (v35 == *v34)
    {
      v50 = *--v34;
      v35 = v50 + 4096;
    }

    v35 -= 32;
    v5 = *v6;
    v24 = *(*v6 + 8);
    v21 = *(*v6 + 16);
  }
}

uint64_t sub_1006E9B18(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1006E9B6C(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_1006E9CB4(&v3);
  sub_10049AC1C((a1 + 8));
  return a1;
}

void sub_1006E9BB0(uint64_t a1)
{
  v2 = (a1 + 56);
  sub_1006E9CB4(&v2);
  sub_10049AC1C((a1 + 8));
  operator delete();
}

void sub_1006E9C08(void **a1)
{
  if (*a1)
  {
    sub_1006E9C48(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_1006E9C48(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1006E9CB4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006E9C48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1006E9D08(uint64_t a1)
{
  sub_1006E9D40(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1006E9D40(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

double sub_1006E9DE4(float *a1)
{
  result = sub_1006E9E64(a1, &v3);
  *&result = result;
  if (*&result >= 1.0)
  {
    v2 = ((*&result * -0.793) + ((*&result * 0.3564) * *&result)) + 3.142;
    if (v2 > 8.0)
    {
      return 8.0;
    }

    return v2;
  }

  return result;
}

double sub_1006E9E64(float *a1, int *a2)
{
  v2 = a1[5];
  v3 = a1[2];
  v4 = dbl_101C89420[v2 <= 13.0];
  v5 = v2 * -0.01 + 1.6;
  v6 = fmin(v3 * 0.5 + 0.225, 1.0);
  if (v4 >= v6)
  {
    v6 = v4;
  }

  v7 = fmax(fmin(v5, 1.0), 0.7);
  v8 = fmax(fmin(a1[3] / (v3 * v3) * -0.0125 + 1.425, 1.0), 0.9);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v9 == 1.0)
  {
    *a2 = 0;
    return 3.2973001;
  }

  else
  {
    v11 = fmax(v7 * v6 * v8, 0.9);
    if (v11 < v9)
    {
      v9 = v11;
    }

    if (v9 == v11)
    {
      v12 = 5;
    }

    else
    {
      v12 = 1;
    }

    if (v9 == v8)
    {
      v13 = 4;
    }

    else
    {
      v13 = v12;
    }

    if (v9 == v6)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    if (v9 == v7)
    {
      v15 = 3;
    }

    else
    {
      v15 = v14;
    }

    *a2 = v15;
    return v9 * 3.2973001;
  }
}

void *sub_1006E9F80(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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

void sub_1006EA108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EA154()
{
  __cxa_atexit(sub_1005A704C, aAcc800fp_2, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_2, dword_100000000);
}

void sub_1006EA1BC(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 16) = a6;
  if (sub_1006EA690(a2->f64))
  {
    v11 = 4;
  }

  else
  {
    if (qword_1025D41B0 != -1)
    {
      sub_101912A40();
    }

    v12 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Rejection: SteadinessModelHarmonic missing required feature inputs", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912A54();
    }

    *(a5 + 48) = 8;
    v11 = 12;
  }

  if ((*(a4 + 57) & 1) == 0)
  {
    *(a5 + 48) = v11;
  }

  sub_1006EA880(a1, a5, a3);
  v13 = sub_1009A3654(a2);
  *(a5 + 24) = v13;
  *(a5 + 32) = sub_1009A37B4(v13);
  *(a5 + 40) = v14;
  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v15 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a5 + 32);
    v17 = *(a5 + 40);
    v18 = *(a5 + 16);
    v19 = *(a5 + 24);
    v20 = *(a5 + 48);
    v21 = *(a5 + 8);
    v22 = *(a5 + 12);
    *buf = 134350593;
    v42 = v18;
    v43 = 2050;
    v44 = v16;
    v45 = 2050;
    v46 = v17;
    v47 = 2049;
    v48 = v19;
    v49 = 1026;
    *v50 = v20;
    *&v50[4] = 1025;
    *&v50[6] = v21;
    LOWORD(v51) = 1025;
    *(&v51 + 2) = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelHarmonic::Result,hkEndTime,%{public}.2f,likelihoodOK,%{public}.2f,likelihoodNotOK,%{public}.2f,rawSteadiness,%{private}.2f,rejectionStatus,%{public}d,numValidBouts7Days,%{private}d,numValidBouts28Days,%{private}d", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D41B0 != -1)
    {
      sub_101912B68();
    }

    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "SteadinessModel::Result CLMobility::SteadinessModelHarmonic::runSteadinessModel(CFAbsoluteTime, const Features &, const std::vector<BoutMetrics> &, const CLBodyMetrics &) const", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v23 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a2->f64[1];
    v42 = a2->f64[0];
    v25 = a2[1].f64[0];
    v26 = a2[1].f64[1];
    v44 = v24;
    v46 = v25;
    v48 = v26;
    v27 = a2[4].f64[0];
    v28 = a2[4].f64[1];
    v55 = a2[3].f64[1];
    v57 = v27;
    v59 = v28;
    v29 = a2[6].f64[0];
    v30 = a2[6].f64[1];
    v63 = a2[5].f64[1];
    v65 = v29;
    v67 = v30;
    v31 = a2[8].f64[0];
    v32 = a2[8].f64[1];
    v71 = a2[7].f64[1];
    v73 = v31;
    v75 = v32;
    v33 = a2[10].f64[0];
    v34 = a2[10].f64[1];
    v79 = a2[9].f64[1];
    v81 = v33;
    v83 = v34;
    v35 = a2[12].f64[0];
    v87 = a2[11].f64[1];
    v89 = v35;
    v36 = a2[12].f64[1];
    v91 = a2[13].f64[0];
    v37 = a2[13].f64[1];
    v38 = a2[14].f64[1];
    v95 = a2[14].f64[0];
    v97 = v38;
    v99 = v36;
    v39 = a2[2].f64[1];
    *v50 = a2[2].f64[0];
    v51 = v39;
    v53 = a2[3].f64[0];
    v61 = a2[5].f64[0];
    v69 = a2[7].f64[0];
    v77 = a2[9].f64[0];
    v85 = a2[11].f64[0];
    v93 = v37;
    v43 = 2049;
    v45 = 2049;
    v47 = 2049;
    v49 = 2049;
    *&v50[8] = 2049;
    v52 = 2049;
    v54 = 2049;
    v56 = 2049;
    v58 = 2049;
    v60 = 2049;
    v62 = 2049;
    v64 = 2049;
    v66 = 2049;
    v68 = 2049;
    v70 = 2049;
    v72 = 2049;
    v74 = 2049;
    v76 = 2049;
    v78 = 2049;
    v80 = 2049;
    v82 = 2049;
    v84 = 2049;
    v86 = 2049;
    v88 = 2049;
    v90 = 2049;
    v92 = 2049;
    v94 = 2049;
    v96 = 2049;
    v98 = 2049;
    *buf = 134290945;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelHarmonic::Features, allBoutsStepIndexOfHarmonicityApCv,%{private}.2f,  allBoutsStepIndexOfHarmonicityApMean,%{private}.2f,allBoutsStepIndexOfHarmonicityApMedian,%{private}.2f, allBoutsStepIndexOfHarmonicityApQ5,%{private}.2f,allBoutsStepIndexOfHarmonicityApQ95,%{private}.2f, allBoutsStepIndexOfHarmonicityMlCv,%{private}.2f, allBoutsStepIndexOfHarmonicityMlMean,%{private}.2f, allBoutsStepIndexOfHarmonicityMlMedian,%{private}.2f, allBoutsStepIndexOfHarmonicityMlQ5,%{private}.2f, allBoutsStepIndexOfHarmonicityMlQ95,%{private}.2f, allBoutsStepIndexOfHarmonicityVtCv,%{private}.2f, allBoutsStepIndexOfHarmonicityVtMean,%{private}.2f, allBoutsStepIndexOfHarmonicityVtMedian,%{private}.2f,  allBoutsStepIndexOfHarmonicityVtQ5,%{private}.2f, allBoutsStepIndexOfHarmonicityVtQ95,%{private}.2f, allBoutsSwingIndexOfHarmonicityApCv,%{private}.2f, allBoutsSwingIndexOfHarmonicityApMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityApMedian,%{private}.2f, allBoutsSwingIndexOfHarmonicityApQ5,%{private}.2f,allBoutsSwingIndexOfHarmonicityApQ95,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlCv,%{private}.2f,allBoutsSwingIndexOfHarmonicityMlMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlMedian,%{private}.2f,allBoutsSwingIndexOfHarmonicityMlQ5,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlQ95,%{private}.2f,  allBoutsSwingIndexOfHarmonicityVtMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityVtMedian,%{private}.2f, allBoutsSwingIndexOfHarmonicityVtQ5,%{private}.2f,allBoutsSwingIndexOfHarmonicityVtQ95,%{private}.2f,allBoutsSwingIndexOfHarmonicityVtCv,%{private}.2f", buf, 0x12Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912B90(a2);
  }
}

void sub_1006EA880(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a2 + 8) = 0;
  v4 = *a3;
  v3 = a3[1];
  if (v3 == *a3)
  {
    *(a2 + 48) |= 0x20u;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 16);
  do
  {
    v8 = *(v4 + 8);
    if (v8 > v7)
    {
      break;
    }

    if (*(v4 + 52))
    {
      v9 = 42;
    }

    else
    {
      v9 = -1;
    }

    if ((v9 & *(v4 + 192)) == 0)
    {
      if (v8 > v7 + -2419200.0)
      {
        *(a2 + 12) = ++v5;
      }

      if (v8 > v7 + -604800.0)
      {
        *(a2 + 8) = ++v6;
      }
    }

    v4 += 224;
  }

  while (v4 != v3);
  if (v6 <= 14)
  {
    *(a2 + 48) |= 0x20u;
    if (v5 >= 68)
    {
      return;
    }

LABEL_18:
    *(a2 + 48) |= 0x10u;
    return;
  }

  if (v5 <= 67)
  {
    goto LABEL_18;
  }
}

void sub_1006EA950(uint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = vdupq_n_s64(0xFFF0000000000000);
  *a2 = v5;
  *(a2 + 16) = v5;
  *(a2 + 32) = v5;
  *(a2 + 48) = v5;
  *(a2 + 64) = v5;
  *(a2 + 80) = v5;
  *(a2 + 96) = v5;
  *(a2 + 112) = v5;
  *(a2 + 128) = v5;
  *(a2 + 144) = v5;
  *(a2 + 160) = v5;
  *(a2 + 176) = v5;
  *(a2 + 192) = v5;
  *(a2 + 208) = v5;
  *(a2 + 224) = v5;
  __src = 0;
  v122 = 0;
  v123 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v39 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8);
      if (v9 < a3 && v9 >= a3 + -2419200.0)
      {
        if (v8 >= v123)
        {
          v21 = __src;
          v22 = v8 - __src;
          v23 = 0x6DB6DB6DB6DB6DB7 * ((v8 - __src) >> 5);
          v24 = v23 + 1;
          if ((v23 + 1) > 0x124924924924924)
          {
            sub_10028C64C();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v123 - __src) >> 5) > v24)
          {
            v24 = 0xDB6DB6DB6DB6DB6ELL * ((v123 - __src) >> 5);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v123 - __src) >> 5)) >= 0x92492492492492)
          {
            v25 = 0x124924924924924;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            sub_1006EB5FC(&__src, v25);
          }

          v26 = (32 * ((v8 - __src) >> 5));
          v27 = *(v6 + 16);
          *v26 = *v6;
          v26[1] = v27;
          v28 = *(v6 + 32);
          v29 = *(v6 + 48);
          v30 = *(v6 + 80);
          v26[4] = *(v6 + 64);
          v26[5] = v30;
          v26[2] = v28;
          v26[3] = v29;
          v31 = *(v6 + 96);
          v32 = *(v6 + 112);
          v33 = *(v6 + 144);
          v26[8] = *(v6 + 128);
          v26[9] = v33;
          v26[6] = v31;
          v26[7] = v32;
          v34 = *(v6 + 160);
          v35 = *(v6 + 176);
          v36 = *(v6 + 208);
          v26[12] = *(v6 + 192);
          v26[13] = v36;
          v26[10] = v34;
          v26[11] = v35;
          v8 = (224 * v23 + 224);
          v37 = (224 * v23 - v22);
          memcpy(v26 - v22, v21, v22);
          v38 = __src;
          __src = v37;
          v122 = v8;
          v123 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          v11 = *(v6 + 16);
          *v8 = *v6;
          *(v8 + 1) = v11;
          v12 = *(v6 + 32);
          v13 = *(v6 + 48);
          v14 = *(v6 + 80);
          *(v8 + 4) = *(v6 + 64);
          *(v8 + 5) = v14;
          *(v8 + 2) = v12;
          *(v8 + 3) = v13;
          v15 = *(v6 + 96);
          v16 = *(v6 + 112);
          v17 = *(v6 + 144);
          *(v8 + 8) = *(v6 + 128);
          *(v8 + 9) = v17;
          *(v8 + 6) = v15;
          *(v8 + 7) = v16;
          v18 = *(v6 + 160);
          v19 = *(v6 + 176);
          v20 = *(v6 + 208);
          *(v8 + 12) = *(v6 + 192);
          *(v8 + 13) = v20;
          *(v8 + 10) = v18;
          *(v8 + 11) = v19;
          v8 += 56;
        }

        v122 = v8;
      }

      v6 += 224;
    }

    while (v6 != v7);
    v39 = __src;
  }

  __p = 0;
  v119 = 0;
  v120 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  for (i = 0; v39 != v8; v39 += 56)
  {
    if (sub_1006EB564(v39))
    {
      v40 = v39[36];
      v41 = v119;
      if (v119 >= v120)
      {
        v43 = __p;
        v44 = v119 - __p;
        v45 = (v119 - __p) >> 3;
        v46 = v45 + 1;
        if ((v45 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v47 = v120 - __p;
        if ((v120 - __p) >> 2 > v46)
        {
          v46 = v47 >> 2;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v48 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          sub_1000B9708(&__p, v48);
        }

        *(8 * v45) = v40;
        v42 = 8 * v45 + 8;
        memcpy(0, v43, v44);
        v49 = __p;
        __p = 0;
        v119 = v42;
        v120 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v119 = v40;
        v42 = (v41 + 1);
      }

      v119 = v42;
      v50 = v39[37];
      v51 = v116;
      if (v116 >= v117)
      {
        v53 = v115;
        v54 = v116 - v115;
        v55 = (v116 - v115) >> 3;
        v56 = v55 + 1;
        if ((v55 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v57 = v117 - v115;
        if ((v117 - v115) >> 2 > v56)
        {
          v56 = v57 >> 2;
        }

        if (v57 >= 0x7FFFFFFFFFFFFFF8)
        {
          v58 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v56;
        }

        if (v58)
        {
          sub_1000B9708(&v115, v58);
        }

        *(8 * v55) = v50;
        v52 = 8 * v55 + 8;
        memcpy(0, v53, v54);
        v59 = v115;
        v115 = 0;
        v116 = v52;
        v117 = 0;
        if (v59)
        {
          operator delete(v59);
        }
      }

      else
      {
        *v116 = v50;
        v52 = (v51 + 1);
      }

      v116 = v52;
      v60 = v39[38];
      v61 = v113;
      if (v113 >= v114)
      {
        v63 = v112;
        v64 = v113 - v112;
        v65 = (v113 - v112) >> 3;
        v66 = v65 + 1;
        if ((v65 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v67 = v114 - v112;
        if ((v114 - v112) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          sub_1000B9708(&v112, v68);
        }

        *(8 * v65) = v60;
        v62 = 8 * v65 + 8;
        memcpy(0, v63, v64);
        v69 = v112;
        v112 = 0;
        v113 = v62;
        v114 = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v113 = v60;
        v62 = (v61 + 1);
      }

      v113 = v62;
      v70 = v39[39];
      v71 = v110;
      if (v110 >= v111)
      {
        v73 = v109;
        v74 = v110 - v109;
        v75 = (v110 - v109) >> 3;
        v76 = v75 + 1;
        if ((v75 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v77 = v111 - v109;
        if ((v111 - v109) >> 2 > v76)
        {
          v76 = v77 >> 2;
        }

        if (v77 >= 0x7FFFFFFFFFFFFFF8)
        {
          v78 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v76;
        }

        if (v78)
        {
          sub_1000B9708(&v109, v78);
        }

        *(8 * v75) = v70;
        v72 = 8 * v75 + 8;
        memcpy(0, v73, v74);
        v79 = v109;
        v109 = 0;
        v110 = v72;
        v111 = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        *v110 = v70;
        v72 = (v71 + 1);
      }

      v110 = v72;
      v80 = v39[40];
      v81 = v107;
      if (v107 >= v108)
      {
        v83 = v106;
        v84 = v107 - v106;
        v85 = (v107 - v106) >> 3;
        v86 = v85 + 1;
        if ((v85 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v87 = v108 - v106;
        if ((v108 - v106) >> 2 > v86)
        {
          v86 = v87 >> 2;
        }

        if (v87 >= 0x7FFFFFFFFFFFFFF8)
        {
          v88 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v86;
        }

        if (v88)
        {
          sub_1000B9708(&v106, v88);
        }

        *(8 * v85) = v80;
        v82 = 8 * v85 + 8;
        memcpy(0, v83, v84);
        v89 = v106;
        v106 = 0;
        v107 = v82;
        v108 = 0;
        if (v89)
        {
          operator delete(v89);
        }
      }

      else
      {
        *v107 = v80;
        v82 = (v81 + 1);
      }

      v107 = v82;
      v90 = v39[41];
      v91 = v104;
      if (v104 >= i)
      {
        v93 = v103;
        v94 = v104 - v103;
        v95 = (v104 - v103) >> 3;
        v96 = v95 + 1;
        if ((v95 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v97 = i - v103;
        if ((i - v103) >> 2 > v96)
        {
          v96 = v97 >> 2;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF8)
        {
          v98 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          sub_1000B9708(&v103, v98);
        }

        *(8 * v95) = v90;
        v92 = 8 * v95 + 8;
        memcpy(0, v93, v94);
        v99 = v103;
        v103 = 0;
        v104 = v92;
        i = 0;
        if (v99)
        {
          operator delete(v99);
        }
      }

      else
      {
        *v104 = v90;
        v92 = (v91 + 1);
      }

      v104 = v92;
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v100 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350848;
    v141 = a3;
    v142 = 2050;
    v143 = 0x6DB6DB6DB6DB6DB7 * ((v122 - __src) >> 5);
    v144 = 2050;
    v145 = (v119 - __p) >> 3;
    v146 = 2050;
    v147 = (v116 - v115) >> 3;
    v148 = 2050;
    v149 = (v113 - v112) >> 3;
    v150 = 2050;
    v151 = (v110 - v109) >> 3;
    v152 = 2050;
    v153 = (v107 - v106) >> 3;
    v154 = 2050;
    v155 = (v104 - v103) >> 3;
    _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "SteadinessModelHarmonic::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,numStepBoutsStepIndexOfHarmonicityAP,%{public}lu, numStepBoutsStepIndexOfHarmonicityML,%{public}lu, numStepBoutsStepIndexOfHarmonicityVT,%{public}lu, numStepBoutsSwingIndexOfHarmonicityAP,%{public}lu, numStepBoutsSwingIndexOfHarmonicityML,%{public}lu, numStepBoutsSwingIndexOfHarmonicityVT,%{public}lu", buf, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912DE4(buf);
    v124 = 134350848;
    v125 = a3;
    v126 = 2050;
    v127 = 0x6DB6DB6DB6DB6DB7 * ((v122 - __src) >> 5);
    v128 = 2050;
    v129 = (v119 - __p) >> 3;
    v130 = 2050;
    v131 = (v116 - v115) >> 3;
    v132 = 2050;
    v133 = (v113 - v112) >> 3;
    v134 = 2050;
    v135 = (v110 - v109) >> 3;
    v136 = 2050;
    v137 = (v107 - v106) >> 3;
    v138 = 2050;
    v139 = (v104 - v103) >> 3;
    v102 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "Features CLMobility::SteadinessModelHarmonic::extractFeatures(CFAbsoluteTime, const std::vector<BoutMetrics> &) const", "%s\n", v102);
    if (v102 != buf)
    {
      free(v102);
    }
  }

  if (__p != v119)
  {
    *a2 = sub_100FB14B0(&__p);
    *(a2 + 8) = sub_100FB1478(&__p);
    *(a2 + 16) = sub_100FB15E4(&__p);
    *(a2 + 24) = sub_1010BD928(&__p, 5);
    *(a2 + 32) = sub_1010BD928(&__p, 95);
  }

  if (v115 != v116)
  {
    *(a2 + 40) = sub_100FB14B0(&v115);
    *(a2 + 48) = sub_100FB1478(&v115);
    *(a2 + 56) = sub_100FB15E4(&v115);
    *(a2 + 64) = sub_1010BD928(&v115, 5);
    *(a2 + 72) = sub_1010BD928(&v115, 95);
  }

  if (v112 != v113)
  {
    *(a2 + 80) = sub_100FB14B0(&v112);
    *(a2 + 88) = sub_100FB1478(&v112);
    *(a2 + 96) = sub_100FB15E4(&v112);
    *(a2 + 104) = sub_1010BD928(&v112, 5);
    *(a2 + 112) = sub_1010BD928(&v112, 95);
  }

  if (v109 != v110)
  {
    *(a2 + 120) = sub_100FB14B0(&v109);
    *(a2 + 128) = sub_100FB1478(&v109);
    *(a2 + 136) = sub_100FB15E4(&v109);
    *(a2 + 144) = sub_1010BD928(&v109, 5);
    *(a2 + 152) = sub_1010BD928(&v109, 95);
  }

  if (v106 != v107)
  {
    *(a2 + 160) = sub_100FB14B0(&v106);
    *(a2 + 168) = sub_100FB1478(&v106);
    *(a2 + 176) = sub_100FB15E4(&v106);
    *(a2 + 184) = sub_1010BD928(&v106, 5);
    *(a2 + 192) = sub_1010BD928(&v106, 95);
  }

  v101 = v103;
  if (v103 != v104)
  {
    *(a2 + 200) = sub_100FB14B0(&v103);
    *(a2 + 208) = sub_100FB1478(&v103);
    *(a2 + 216) = sub_100FB15E4(&v103);
    *(a2 + 224) = sub_1010BD928(&v103, 5);
    *(a2 + 232) = sub_1010BD928(&v103, 95);
    v101 = v103;
  }

  if (v101)
  {
    v104 = v101;
    operator delete(v101);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (__p)
  {
    v119 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v122 = __src;
    operator delete(__src);
  }
}

void sub_1006EB49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006EB564(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v1 = 42;
  }

  else
  {
    v1 = -1;
  }

  if ((v1 & *(a1 + 192)) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 152);
  if (v2 < 0.0 || v2 > 1.0)
  {
    return 0;
  }

  v4 = *(a1 + 164);
  return v4 >= 0.0 && v4 <= 1.0 && !sub_1006EB658(a1);
}

void sub_1006EB5FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1006EB6AC(uint64_t a1, double *a2)
{
  if ((*(a1 + 600) & 1) == 0)
  {
    if (*a1 == 1 && (sub_10002980C(a1, a2) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v4 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 596);
        v6 = *a2;
        *buf = 67240448;
        v10 = v5;
        v11 = 2050;
        v12 = v6;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,failed to predict on go to sleep call", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v8 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::deviceEnteringSleepMode(const CFTimeInterval &)", "%s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }

    *(a1 + 600) = 1;
    result = *a2;
    *(a1 + 608) = *a2;
  }

  return result;
}

void sub_1006EB880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

int *sub_1006EB88C(int *result, int *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = *a2;
  if (*a2 <= 2009)
  {
    if (v4 > 8)
    {
      if (v4 <= 40)
      {
        if (v4 == 9)
        {
          goto LABEL_53;
        }

        if (v4 != 10)
        {
          if (v4 != 11)
          {
            goto LABEL_57;
          }

          goto LABEL_25;
        }

        goto LABEL_44;
      }

      if ((v4 - 61) < 2)
      {
        goto LABEL_56;
      }

      if (v4 == 41)
      {
        goto LABEL_52;
      }

      if (v4 != 100)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v4 <= 4)
      {
        if (v4 > 2)
        {
          if (v4 != 3)
          {
            goto LABEL_52;
          }

LABEL_53:
          v3 = 3;
          goto LABEL_57;
        }

        if (v4 != 1)
        {
          if (v4 != 2)
          {
            goto LABEL_57;
          }

LABEL_25:
          if ((*a3 - 1) < 2)
          {
            v3 = 1;
          }

          else
          {
            v3 = 2;
          }

          goto LABEL_57;
        }

LABEL_44:
        v3 = 1;
        goto LABEL_57;
      }

      if (v4 <= 6)
      {
        if (v4 != 5)
        {
          v3 = 6;
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (v4 == 7)
      {
        goto LABEL_56;
      }
    }

LABEL_55:
    v3 = 5;
    goto LABEL_57;
  }

  if (v4 > 3014)
  {
    if (v4 <= 17149)
    {
      if (v4 > 12149)
      {
        if (v4 != 12150)
        {
          if (v4 == 15110 || v4 == 15670)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        goto LABEL_53;
      }

      if (v4 == 3015)
      {
        goto LABEL_53;
      }

      v6 = 11805;
LABEL_49:
      if (v4 != v6)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (v4 <= 18239)
    {
      if (v4 == 17150)
      {
        goto LABEL_53;
      }

      v6 = 18200;
      goto LABEL_49;
    }

    if (v4 == 18240)
    {
      goto LABEL_52;
    }

    if (v4 != 19150)
    {
      if (v4 != 90603)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

LABEL_58:
    v3 = 7;
    goto LABEL_57;
  }

  if (v4 <= 2100)
  {
    v5 = (v4 - 2010);
    if (v5 > 0x3D)
    {
      goto LABEL_57;
    }

    if (((1 << v5) & 0x2008004000005400) == 0)
    {
      if (v5)
      {
        if (v5 != 55)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      goto LABEL_25;
    }

LABEL_56:
    v3 = 2;
    goto LABEL_57;
  }

  if (v4 == 2101)
  {
LABEL_52:
    v3 = 4;
    goto LABEL_57;
  }

  if (v4 == 2105 || v4 == 2150)
  {
    goto LABEL_56;
  }

LABEL_57:
  *result = v3;
  return result;
}

void sub_1006EBA9C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = hypot(v3, v2);
  if (v4 >= 0.001)
  {
    v5 = *(a1 + 392);
    v6 = 0.0;
    if (v5 > 5.0)
    {
      v7 = 1.0;
      v8 = 1.0 - (v5 + -5.0) * (v5 + -5.0) / ((v5 + 5.0) * (v5 + 5.0));
      if (v8 <= 1.0)
      {
        v9 = 1.0 - (v5 + -5.0) * (v5 + -5.0) / ((v5 + 5.0) * (v5 + 5.0));
      }

      else
      {
        v9 = 1.0;
      }

      if (v8 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      v11 = *(a1 + 400);
      if (v11 > 0.0)
      {
        v12 = 1.0 - (v11 + -5.0) * (v11 + -5.0) / ((v11 + 5.0) * (v11 + 5.0));
        if (v12 <= 1.0)
        {
          v7 = 1.0 - (v11 + -5.0) * (v11 + -5.0) / ((v11 + 5.0) * (v11 + 5.0));
        }

        if (v12 < 0.0)
        {
          v7 = 0.0;
        }

        if (v7 != 0.0)
        {
          v10 = v10 / v7;
        }
      }

      v13 = v10 * v10;
      *(a1 + 400) = v5;
      *(a1 + 24) = v3 * v13;
      *(a1 + 32) = v2 * v13;
      v6 = *(a1 + 416) - v4 * v13;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 596);
      v16 = hypot(*(a1 + 24), *(a1 + 32));
      v17 = *(a1 + 416);
      *buf = 67241472;
      v23 = v15;
      v24 = 2050;
      v25 = v4;
      v26 = 2050;
      v27 = v16;
      v28 = 2050;
      v29 = v17;
      v30 = 2050;
      v31 = v17 - v6;
      v32 = 2050;
      v33 = v6;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,speed before decay,%{public}.2f,speed after decay,%{public}.2f,last location speed,%{public}.2f,decayed last location speed,%{public}.2f,total speed decay,%{public}.2f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      hypot(*(a1 + 24), *(a1 + 32));
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::decaySpeed()", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v18 = *(a1 + 360);
    v19 = 0.0;
    if (v18 <= 0xA)
    {
      v19 = dbl_101C89660[v18];
    }

    if (v4 * v4 > v19)
    {
      v20 = v6 * v6 * 0.125;
      *(a1 + 288) = v20 + *(a1 + 288);
      *(a1 + 248) = v20 + *(a1 + 248);
    }
  }
}

void sub_1006EBDC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006EBDCC(uint64_t a1, double *a2, double a3, double a4, int8x16_t a5)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 596);
      v13 = *a2;
      *buf = 67240448;
      v92 = v12;
      v93 = 2050;
      v94 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,filter is not initialized", buf, 0x12u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101912E28(buf);
      v14 = *(a1 + 596);
      v15 = *a2;
      v83 = 67240448;
      v84 = v14;
      v85 = 2050;
      v86 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v16);
      goto LABEL_15;
    }

    return result;
  }

  *a5.i64 = *a2 - *(a1 + 368);
  if (*a5.i64 > 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 596);
      v9 = *a2;
      *buf = 67240448;
      v92 = v8;
      v93 = 2050;
      v94 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,for positive dt_prediction calling predictState", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v69 = *(a1 + 596);
      v70 = *a2;
      v83 = 67240448;
      v84 = v69;
      v85 = 2050;
      v86 = v70;
      v71 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v71);
      if (v71 != buf)
      {
        free(v71);
      }
    }

    return sub_10002980C(a1, a2);
  }

  v17 = fabs(*a5.i64);
  v80 = a5;
  if (v17 + 0.000001 < 0.001)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 596);
      v20 = *a2;
      *buf = 67240960;
      v92 = v19;
      v93 = 2050;
      v94 = v20;
      v95 = 2050;
      v96 = v80.i64[0];
      v97 = 2050;
      v98 = 0xBF50624DD2F1A9FCLL;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,prediction skipped,small dt,%{public}.6f,limit,%{public}.6f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 1;
    }

    sub_101912E28(buf);
    v72 = *(a1 + 596);
    v73 = *a2;
    v83 = 67240960;
    v84 = v72;
    v85 = 2050;
    v86 = v73;
    v87 = 2050;
    v88 = v80.i64[0];
    v89 = 2050;
    v90 = 0xBF50624DD2F1A9FCLL;
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v68);
LABEL_91:
    if (v68 != buf)
    {
      free(v68);
    }

    return 1;
  }

  if (v17 <= 2.56)
  {
    if (sub_10002838C(a1, v17))
    {
      if (*(a1 + 488) == 1 && (*(a1 + 504) & 1) != 0)
      {
        if (sub_100028700(a1, v17))
        {
          if (*(a1 + 456) == 1)
          {
            v27 = *(a1 + 472);
            if (v27)
            {
LABEL_39:
              v29.i64[1] = v80.i64[1];
              *(a1 + 384) = *v80.i64 + *(a1 + 384);
              v30 = *(a1 + 360);
              if ((v30 - 3) < 8 || !v30)
              {
                *(a1 + 392) = *v80.i64 + *(a1 + 392);
              }

              if (*(a1 + 488) != 1 || *(a1 + 504) != 1 || !v27)
              {
                sub_100173BA0();
              }

              v26.i64[0] = *(a1 + 480);
              v31.f64[0] = NAN;
              v31.f64[1] = NAN;
              v32 = *vbslq_s8(vnegq_f64(v31), v26, v80).i64;
              v33 = *(a1 + 496);
              v34 = *(a1 + 24);
              *v26.i64 = *(a1 + 8) + v32 * v34 / *(a1 + 464);
              v29.i64[0] = 0x400921FB54442D18;
              v78 = v29;
              if (fabs(*v26.i64) > 3.14159265)
              {
                v35.f64[0] = NAN;
                v35.f64[1] = NAN;
                v76 = *vbslq_s8(vnegq_f64(v35), v29, v26).i64;
                v77 = v32;
                *v26.i64 = fmod(*v26.i64 + v76, 6.28318531);
                v32 = v77;
                *v26.i64 = *v26.i64 - v76;
              }

              if (*v26.i64 >= 1.57079633)
              {
                v36 = v78;
                *v26.i64 = *v78.i64 - *v26.i64;
              }

              else
              {
                v36 = v78;
                if (*v26.i64 < -1.57079633)
                {
                  *v26.i64 = -3.14159265 - *v26.i64;
                }
              }

              *(a1 + 8) = v26.i64[0];
              v51 = *(a1 + 448);
              v52 = *(a1 + 16);
              v53 = *(a1 + 32);
              if (v51 <= 0.0)
              {
                *v26.i64 = v52 + v32 * v53;
              }

              else
              {
                *v26.i64 = v52 + v32 * v53 / v51;
              }

              if (fabs(*v26.i64) > *v36.i64)
              {
                v54.f64[0] = NAN;
                v54.f64[1] = NAN;
                v79 = *vbslq_s8(vnegq_f64(v54), v36, v26).i64;
                *v26.i64 = fmod(*v26.i64 + v79, 6.28318531) - v79;
              }

              *(a1 + 16) = v26.i64[0];
              *(a1 + 24) = v33 * v34;
              *(a1 + 32) = v33 * v53;
              v55 = *(a1 + 40);
              v56 = v55 * sub_100028A74((a1 + 360));
              v57 = *(a1 + 120);
              v58 = sub_100028A74((a1 + 360));
              sub_100028AA0(a1 + 296, *a2, v56, v57 * v58);
              v59 = *v80.i64 + *(a1 + 376);
              *(a1 + 368) = *a2;
              *(a1 + 376) = v59;
              v60 = *(a1 + 168) + *(a1 + 208);
              *(a1 + 584) = v60;
              result = 1;
              if (v60 > 2.25e10)
              {
                *(a1 + 592) = 1;
                if (qword_1025D4770 != -1)
                {
                  sub_101912E6C();
                }

                v61 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v62 = *(a1 + 596);
                  v63 = *a2;
                  v64 = *(a1 + 584);
                  *buf = 67240960;
                  v92 = v62;
                  v93 = 2050;
                  v94 = v63;
                  v95 = 2050;
                  v96 = v64;
                  v97 = 2050;
                  v98 = 0x4214F46B04000000;
                  _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,maximum position uncertainty growth reached,%{public}.1f,max,%{public}.1f", buf, 0x26u);
                }

                if (!sub_10000A100(121, 2))
                {
                  return 1;
                }

                sub_101912E28(buf);
                v65 = *(a1 + 596);
                v66 = *a2;
                v67 = *(a1 + 584);
                v83 = 67240960;
                v84 = v65;
                v85 = 2050;
                v86 = v66;
                v87 = 2050;
                v88 = v67;
                v89 = 2050;
                v90 = 0x4214F46B04000000;
                v68 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v68);
                goto LABEL_91;
              }

              return result;
            }
          }

          v81 = 0;
          v82 = 0;
          if (sub_100208760((a1 + 512), &v82, &v81, *(a1 + 8) * 57.2957795, *(a1 + 408)))
          {
            v28 = v82;
            *(a1 + 448) = v81;
            v27 = 1;
            *(a1 + 456) = 1;
            *(a1 + 464) = v28;
            *(a1 + 472) = 1;
            goto LABEL_39;
          }

          if (qword_1025D4770 != -1)
          {
            sub_101912E6C();
          }

          v48 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v49 = *(a1 + 596);
            v50 = *a2;
            *buf = 67240448;
            v92 = v49;
            v93 = 2050;
            v94 = v50;
            _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state calc_dNdE failed", buf, 0x12u);
          }

          if (!sub_10000A100(121, 0))
          {
            return 0;
          }

          sub_101912E28(buf);
          v74 = *(a1 + 596);
          v75 = *a2;
          v83 = 67240448;
          v84 = v74;
          v85 = 2050;
          v86 = v75;
          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v16);
LABEL_15:
          if (v16 != buf)
          {
            free(v16);
          }

          return 0;
        }

        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v45 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a1 + 596);
          v47 = *a2;
          *buf = 67240448;
          v92 = v46;
          v93 = 2050;
          v94 = v47;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed on error cov propagation", buf, 0x12u);
        }

        result = sub_10000A100(121, 0);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v42 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 596);
          v44 = *a2;
          *buf = 67240448;
          v92 = v43;
          v93 = 2050;
          v94 = v44;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set element of Phi", buf, 0x12u);
        }

        result = sub_10000A100(121, 0);
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v37 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 596);
        v39 = *a2;
        *buf = 67240448;
        v92 = v38;
        v93 = 2050;
        v94 = v39;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set Q", buf, 0x12u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }
    }

    sub_101912E28(buf);
    v40 = *(a1 + 596);
    v41 = *a2;
    v83 = 67240448;
    v84 = v40;
    v85 = 2050;
    v86 = v41;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v16);
    goto LABEL_15;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v21 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 596);
    v23 = *a2;
    *buf = 67240960;
    v92 = v22;
    v93 = 2050;
    v94 = v23;
    v95 = 2050;
    v96 = v80.i64[0];
    v97 = 2050;
    v98 = 0xC0047AE147AE147BLL;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,exceeded maximum prediction duration,predictionDuration,%{public}.3f,limit,%{public}.3f", buf, 0x26u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101912E28(buf);
    v24 = *(a1 + 596);
    v25 = *a2;
    v83 = 67240960;
    v84 = v24;
    v85 = 2050;
    v86 = v25;
    v87 = 2050;
    v88 = v80.i64[0];
    v89 = 2050;
    v90 = 0xC0047AE147AE147BLL;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v16);
    goto LABEL_15;
  }

  return result;
}

void sub_1006ECC88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1006ECC94(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      *buf = 67240192;
      v9 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,failed to reinitialize filter position state variance, hunc <= 0", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::reinitializePositionStateVariance(const double)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    v3 = fmax(a2, 1.0);
    v4 = v3 * v3 * 0.5;
    *(a1 + 168) = v4;
    *(a1 + 208) = v4;
    *(a1 + 200) = 0;
    *(a1 + 176) = 0;
  }
}

void sub_1006ECE38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ECE44(uint64_t a1)
{
  v2 = sub_10000B1F8();
  sub_10000AED4(v2, v15);
  v14 = -1.0;
  if (sub_100125300(v15, &v14))
  {
    if (vabdd_f64(*(a1 + 376) - *(a1 + 368), v14) < 1.0)
    {
      return 0;
    }

    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 596);
      v8 = *(a1 + 368);
      v9 = *(a1 + 376) - v8;
      *buf = 67240960;
      v25 = v7;
      v26 = 2050;
      v27 = v8;
      v28 = 2050;
      v29 = v9;
      v30 = 2050;
      v31 = v14;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,CFAbsoluteTime updated,filter_mct,%{public}.3f,previous MCT-to-CFAT,%{public}.3f,current MCT-to-CFAT,%{public}.3f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_101912E6C();
      }

      v10 = *(a1 + 596);
      v11 = *(a1 + 368);
      v12 = *(a1 + 376) - v11;
      v16 = 67240960;
      v17 = v10;
      v18 = 2050;
      v19 = v11;
      v20 = 2050;
      v21 = v12;
      v22 = 2050;
      v23 = v14;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateFilterCFAbsoluteTimeIfChangeInOffsetToMCT()", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    *(a1 + 376) = *(a1 + 368) + v14;
    return 1;
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 596);
      *buf = 67240192;
      v25 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "KFCV:,ID,%{public}d,could not get MCT-to-CFAT offset to update CFAbsoluteTime", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101912E94(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006ED108(uint64_t a1, double a2)
{
  if (*a1)
  {
    v3 = *(a1 + 360);
    v4 = 0.0;
    if (v3 <= 0xA)
    {
      v4 = dbl_101C89800[v3];
    }

    v5 = v4 * a2;
    v6 = a1 + 296;

    return sub_1006ED2F4(v6, v5);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 596);
      *buf = 67240192;
      v12 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized, cannot inflate altitude uncertainty", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::inflateAltitudeUncertainty(const double)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    return 0;
  }
}

void sub_1006ED2E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ED2F4(uint64_t a1, double a2)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  if (a2 >= 0.0)
  {
    v4 = *(a1 + 8);
    if (v4 > 0.0)
    {
      *(a1 + 8) = v4 + a2;
      return 1;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 8);
    *buf = 134349312;
    v10 = v7;
    v11 = 2050;
    v12 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "KFCV:#Error,inflateAltitudeUncertainty,failed with invalid var,altVar,%{public}.2f,inputVar,%{public}.2f", buf, 0x16u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101912E28(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::inflateAltitudeUncertainty(const double)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }

    return 0;
  }

  return result;
}

void sub_1006ED4BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ED4C8(uint64_t a1, int8x16_t a2, double a3, int8x16_t a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = *a4.i64;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (fabs(v12) < 0.001 && fabs(v13) < 0.001)
  {
    return 0;
  }

  v15 = v12 * v12;
  v16 = v13 * v13;
  *a9.i64 = *a2.i64 - a5;
  v17 = vabdd_f64(*a2.i64, a5);
  a2.i64[0] = 0x400921FB54442D18;
  if (v17 > 3.14159265)
  {
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v70 = *vbslq_s8(vnegq_f64(v18), a2, a9).i64;
    *a9.i64 = fmod(*a9.i64 + v70, 6.28318531) - v70;
  }

  if (v15 >= 0.000001)
  {
    v19 = v12 * v12;
  }

  else
  {
    v19 = 0.000001;
  }

  v20 = v16 >= 0.000001 || v15 < 0.000001;
  if (v15 < 0.000001 && v16 < 0.000001)
  {
    v21 = 0.000001;
  }

  else
  {
    v21 = v13 * v13;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.000001;
  }

  v23 = 1.0 / ((v19 + v22) * (v19 + v22));
  v24.f64[0] = *(a1 + 248);
  v25 = v23 * (v22 * v24.f64[0]);
  if (v25 > 0.0)
  {
    *a2.i64 = v23 * (v19 * *(a1 + 288));
    if (*a2.i64 > 0.0)
    {
      v26 = v25 + *a2.i64;
      if (v25 + *a2.i64 > 0.616850275)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v27 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 596);
          *buf = 67240448;
          v90 = v28;
          v91 = 2050;
          v92 = sqrt(v26) * 57.2957795;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,linearization instability protection,large estimatedCourseUnc_deg,%{public}.3f,Course Meas update ignored", buf, 0x12u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101912E28(buf);
          v29 = *(a1 + 596);
          *v82 = 67240448;
          *&v82[4] = v29;
          *&v82[8] = 2050;
          *&v82[10] = sqrt(v26) * 57.2957795;
          v30 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v30);
          goto LABEL_33;
        }

        return result;
      }

      *a4.i64 = 1.0 / (v15 + v16);
      v34 = -(v13 * *a4.i64) * v9;
      v35 = (a1 + 168);
      v36 = *(a1 + 248);
      v85 = *(a1 + 232);
      v86 = v36;
      v37 = *(a1 + 280);
      v87 = *(a1 + 264);
      v88 = v37;
      v38 = *(a1 + 184);
      *v82 = *(a1 + 168);
      *&v82[16] = v38;
      v39 = *(a1 + 216);
      v83 = *(a1 + 200);
      v84 = v39;
      v40 = *(a1 + 24);
      v80 = *(a1 + 8);
      v81 = v40;
      v41 = 1.0 / (v9 * v9 * v25 + a3);
      v42.f64[0] = *(a1 + 184);
      v42.f64[1] = *(a1 + 216);
      v24.f64[1] = *(a1 + 280);
      v72 = vmulq_n_f64(vmulq_n_f64(v42, v34), v41);
      v73 = vmulq_n_f64(vmulq_n_f64(v24, v34), v41);
      v43 = *a9.i64 * *a9.i64;
      v44 = *a9.i64 * *a9.i64 * v41;
      if (v44 <= 100.0)
      {
        v69 = v34;
        v71 = v12 * *a4.i64 * v9;
        v49 = v9 * v9 * *a2.i64;
        a2.i64[0] = a9.i64[0];
        v68 = a9;
        sub_1000AF8CC(a1, v72.f64, a2, v71, a4);
        sub_1000AFBD0(a1, &v72, 2, v69);
        v50 = 1.0 / (v49 + a3);
        v51.f64[0] = *(a1 + 192);
        v51.f64[1] = *(a1 + 224);
        v52 = vmulq_n_f64(vmulq_n_f64(v51, v71), v50);
        v53.f64[0] = *(a1 + 256);
        v53.f64[1] = *(a1 + 288);
        v54 = vmulq_n_f64(vmulq_n_f64(v53, v71), v50);
        v72 = v52;
        v73 = v54;
        v55 = v43 * v50;
        if (v43 * v50 <= 100.0)
        {
          sub_1000AF8CC(a1, v72.f64, v68, v52.f64[0], v54);
          sub_1000AFBD0(a1, &v72, 3, v71);
          v63 = v86;
          *(a1 + 232) = v85;
          *(a1 + 248) = v63;
          v64 = v88;
          *(a1 + 264) = v87;
          *(a1 + 280) = v64;
          v65 = *&v82[16];
          *v35 = *v82;
          *(a1 + 184) = v65;
          v66 = v84;
          *(a1 + 200) = v83;
          *(a1 + 216) = v66;
          return 1;
        }

        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v56 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v57 = *(a1 + 596);
          *buf = 67240704;
          v90 = v57;
          v91 = 2050;
          v92 = v55;
          v93 = 2050;
          v94 = 0x4059000000000000;
          _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course Meas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_48:
          result = 0;
          v58 = v86;
          *(a1 + 232) = v85;
          *(a1 + 248) = v58;
          v59 = v88;
          *(a1 + 264) = v87;
          *(a1 + 280) = v59;
          v60 = *&v82[16];
          *v35 = *v82;
          *(a1 + 184) = v60;
          v61 = v84;
          *(a1 + 200) = v83;
          *(a1 + 216) = v61;
          v62 = v80;
          *(a1 + 24) = v81;
          *(a1 + 8) = v62;
          return result;
        }

        sub_101912E28(buf);
        v67 = *(a1 + 596);
        v74 = 67240704;
        v75 = v67;
        v76 = 2050;
        v77 = v55;
        v78 = 2050;
        v79 = 0x4059000000000000;
        v48 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v48);
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v45 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v46 = *(a1 + 596);
          *buf = 67240704;
          v90 = v46;
          v91 = 2050;
          v92 = v44;
          v93 = 2050;
          v94 = 0x4059000000000000;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course meas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_48;
        }

        sub_101912E28(buf);
        v47 = *(a1 + 596);
        v74 = 67240704;
        v75 = v47;
        v76 = 2050;
        v77 = v44;
        v78 = 2050;
        v79 = 0x4059000000000000;
        v48 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v48);
      }

      if (v48 != buf)
      {
        free(v48);
      }

      goto LABEL_48;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v31 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 596);
    *buf = 67240192;
    v90 = v32;
    _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,CourseMeas innovation_var <= 0", buf, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101912E28(buf);
    v33 = *(a1 + 596);
    *v82 = 67240192;
    *&v82[4] = v33;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v30);
LABEL_33:
    if (v30 != buf)
    {
      free(v30);
    }

    return 0;
  }

  return result;
}