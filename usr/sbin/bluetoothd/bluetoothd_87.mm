uint64_t sub_10063F91C(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 22);
  *v2 = off_100B03260;
  v2[32] = off_100B03340;
  v2[33] = off_100B03390;
  v2[34] = off_100B033C0;
  sub_100044BBC(v2 + 35);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC(a1 + 560);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 649) = 0;
  *(a1 + 653) = 0;
  for (i = 1; i != 3; ++i)
  {
    v5 = i;
    v6 = &v5;
    *(sub_1000DB17C(a1 + 368, &v5) + 8) = 0;
  }

  return a1;
}

void sub_10063FA64(_Unwind_Exception *a1)
{
  v4 = v1[50];
  if (v4)
  {
    v1[51] = v4;
    operator delete(v4);
  }

  sub_10000CEDC((v1 + 46), *v2);
  v5 = v1[43];
  if (v5)
  {
    v1[44] = v5;
    operator delete(v5);
  }

  sub_10007A068(v1 + 35);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10063FAD8(uint64_t a1)
{
  *(a1 + 424) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  *(a1 + 486) = 0;
  if (qword_100B508C0 != -1)
  {
    sub_100854F74();
  }

  sub_1007BF384(off_100B508B8, a1 + 272);
  v2 = sub_10000C7D0();
  *(a1 + 655) = sub_10009BF08(v2) > 1;
  return 0;
}

BOOL sub_10063FB54()
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1002E9AF0(off_100B033D8) || sub_1002CE244(&unk_100B03488))
  {
    v0 = 1;
  }

  else
  {
    sub_1002DB89C(off_100B034B8);
    v0 = v2 != 0;
  }

  sub_10002249C(&v3);
  return v0;
}

BOOL sub_10063FBE0()
{
  v2 = 0;
  sub_1000216B4(&v2);
  sub_1002DB960(off_100B034B8);
  sub_1002CE3E4(&unk_100B03488);
  v0 = sub_1002E9EE4() != 0;
  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_10063FC58(uint64_t a1)
{
  v3 = *(a1 + 344);
  v2 = *(a1 + 352);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          *(v4 + 88) = v5;
          operator delete(v5);
        }

        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 344);
  }

  *(a1 + 352) = v3;
  v6 = *(a1 + 624);
  v7 = *(a1 + 632);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        sub_100507E2C(*v6);
        operator delete();
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *(a1 + 624);
  }

  *(a1 + 632) = v6;
  sub_10000CEDC(a1 + 368, *(a1 + 376));
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = a1 + 376;
  v8 = *(a1 + 536);
  if (v8)
  {
    v8[3] = 0;
    sub_10064A338(v8);
    operator delete();
  }

  *(a1 + 536) = 0;
  sub_10063FD78(a1);
  return 0;
}

void sub_10063FD78(uint64_t a1)
{
  v2 = *(a1 + 552);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 552));
    *(a1 + 552) = 0;
  }
}

uint64_t sub_10063FDB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5 = *(result + 344);
  v4 = *(result + 352);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        return result;
      }
    }
  }

  if (v5 != v4)
  {
    v18 = *(a2 + 20);
    *buf = &v18;
    if ((sub_1000DB17C(result + 368, &v18)[4] & 0x80000000) != 0)
    {
      v18 = *(a2 + 20);
      *buf = &v18;
      if ((sub_1000DB17C(v3 + 368, &v18)[4] & 0x80000000) == 0)
      {
        v7 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
        {
          sub_100854F88(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }

    else
    {
      v18 = *(a2 + 20);
      *buf = &v18;
      v6 = sub_1000DB17C(v3 + 368, &v18);
      --*(v6 + 8);
      *buf = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100642D58;
      v22 = &unk_100B034D0;
      v23 = v3;
      sub_100642C8C(v3 + 392, buf);
    }

    v15 = *(v3 + 352);
    v16 = v15 - (v5 + 8);
    if (v15 != v5 + 8)
    {
      memmove(v5, v5 + 8, v15 - (v5 + 8));
    }

    *(v3 + 352) = &v5[v16];
    v17 = *(a2 + 80);
    if (v17)
    {
      *(a2 + 88) = v17;
      operator delete(v17);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100640024(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = sub_10067DF0C(a2, a3);
  if (result)
  {
    operator new();
  }

  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1006400F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = sub_10067E020(a2, a3);
  if (result)
  {
    operator new();
  }

  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1006401BC(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 280);
  v5 = *(a1 + 344);
  v4 = *(a1 + 352);
  if (v5 != v4)
  {
    while (1)
    {
      v6 = *v5;
      if (*(*v5 + 40) == a2)
      {
        break;
      }

      if (*(v6 + 56) == a2)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (++v5 == v4)
      {
        return sub_1000088CC(v11);
      }
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_100855014(v15, v6);
    }

    sub_10067E134(v6);
    if (*(v6 + 56) == a2)
    {
LABEL_8:
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        sub_100855074(v14, v6);
      }

      sub_10067E134(v6);
    }

    v10 = 0;
    sub_1000216B4(&v10);
    v7 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 8);
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disconnect stalled device %@", buf, 0xCu);
    }

    sub_1002EA804(*v6);
    sub_100022214(&v10);
    sub_10002249C(&v10);
    v4 = *(a1 + 352);
    goto LABEL_14;
  }

  return sub_1000088CC(v11);
}

void sub_100640390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006403C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v8 = *i;
    if (**i == a2)
    {
      v9 = *(v8 + 1);
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v10 = off_100B508C8;
      sub_100007E30(__p, "IsPrimaryHearingAid");
      v11 = sub_10004EB40(v10, v9, __p);
      v12 = v11;
      if (v23 < 0)
      {
        operator delete(__p[0]);
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      else if (!v11)
      {
        goto LABEL_14;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      sub_10078380C(off_100B508C8, v9, @"IsPrimaryHearingAid");
LABEL_14:
      v13 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "No";
        if (a4)
        {
          v14 = "Yes";
        }

        *buf = 138412546;
        v26 = v9;
        v27 = 2080;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disconnected from device %@ wakeUp %s", buf, 0x16u);
      }

      for (j = *(a1 + 344); j != *(a1 + 352); ++j)
      {
        v16 = *j;
        if (*j != v8)
        {
          goto LABEL_23;
        }
      }

      v16 = 0;
LABEL_23:
      v17 = v8[12];
      if (v8[6] == 2)
      {
        if (v16)
        {
          sub_1003A58A4(**(a1 + 536), 0);
        }

        sub_10063FD78(a1);
      }

      if (v17 == 3)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v18 = sub_100046458(off_100B508C8, v9, 0);
        if (qword_100B50910 != -1)
        {
          sub_1008550FC();
        }

        sub_1005BC3E8(off_100B50908, 0, v18);
      }

      sub_10063FDB0(a1, v8);
      if (v16 && v17 != 3 && v16[8] >= 7 && v16[12] == 3)
      {
        v19 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v16 + 1);
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Notify session is ready for device %@", buf, 0xCu);
        }

        sub_100640700(a1);
      }

      return sub_1000088CC(v24);
    }
  }

  return sub_1000088CC(v24);
}

uint64_t sub_100640700(uint64_t result)
{
  v1 = result;
  v2 = *(result + 344);
  v3 = *(result + 352);
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = 1;
  do
  {
    v5 = *(*v2 + 32) == 8 && *(*v2 + 48) == 3;
    v4 &= v5;
    v2 += 8;
  }

  while (v2 != v3);
  if (v4)
  {
LABEL_8:
    sub_1003A3254(**(result + 536));
    v8.tv_sec = 0;
    *&v8.tv_usec = 0;
    result = gettimeofday(&v8, 0);
    *(v1 + 448) = v8.tv_usec / 1000.0 + (1000 * v8.tv_sec);
    for (i = *(v1 + 344); i != *(v1 + 352); ++i)
    {
      v7 = *i;
      result = sub_100641828(v1, v7, 1);
    }
  }

  return result;
}

uint64_t sub_1006407DC(void *a1, uint64_t a2, unsigned int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 35));
  for (i = a1[43]; i != a1[44]; ++i)
  {
    v7 = *i;
    if (**i == a2)
    {
      v8 = qword_100BCEA90;
      v9 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        v10 = *(v7 + 1);
        *buf = 134218242;
        v14 = a3 * 1.25;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection updated (%fms) with device %@", buf, 0x16u);
      }

      if (v7[8] < 7)
      {
        sub_1006400F0(v9, v7, 0);
      }

      else if (*(*(a1[67] + 8) + 1) == a3)
      {
        sub_1006400F0(v9, v7, 3u);
        sub_100640700(a1);
      }

      else
      {
        sub_1006400F0(v9, v7, 1u);
        sub_100640980(a1, v7);
      }

      return sub_1000088CC(v12);
    }
  }

  return sub_1000088CC(v12);
}

_BYTE *sub_100640980(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 3)
  {
    v4 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      sub_100855124(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v14 = 0;
  sub_1000216B4(&v14);
  v12 = sub_1002EA7BC(*a2, *(*(*(a1 + 536) + 8) + 1), *(a2 + 24));
  sub_1006400F0(v12, a2, 2u);
  return sub_10002249C(&v14);
}

uint64_t sub_100640A34(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v8 = v5[1];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Encryption refreshed with device %@", buf, 0xCu);
      }

      if (*(v5 + 8) == 4)
      {
        sub_100640024(v7, v5, 6u);
        if (sub_1003A5564(**(a1 + 536)))
        {
          sub_100640B80(a1, v5);
        }
      }

      return sub_1000088CC(v10);
    }
  }

  return sub_1000088CC(v10);
}

_BYTE *sub_100640B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C7D0();
  v5 = sub_100410864(v4);
  v27 = 0;
  sub_1000216B4(&v27);
  sub_1002EA948(*a2);
  sub_100022214(&v27);
  sub_1006423B0(a1, a2);
  v7 = *(a2 + 32);
  if ((v7 - 4) >= 2)
  {
    if (v7 != 6)
    {
      if (v7 == 3)
      {
        sub_100642544(v6, a2);
        return sub_10002249C(&v27);
      }

      v8 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
      {
        sub_10085519C(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    if (*(a2 + 112) == 1)
    {
      sub_10064264C(a1, a2);
    }

    else
    {
      v16 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a2 + 8);
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending 'start stream' command to device %@", buf, 0xCu);
      }

      v18 = *(a2 + 24);
      sub_1000618AC(&v27);
      if (v18 == 2)
      {
        v19 = 2500;
      }

      else
      {
        v19 = 1250;
      }

      if (*(a2 + 18))
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = sub_1002EA154(*a2, (*(a2 + 72) >> 1) & 1, v18, v20, v5 ^ 1u);
      if (v21)
      {
        v22 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_100855214(v21, v22);
        }
      }

      v23 = sub_1002EA7EC(*a2, *(*(*(a1 + 536) + 8) + 1), *(a2 + 24));
      v24 = sub_100022214(&v27);
      *(a1 + 432) = 0;
      if (*(a2 + 48) != 2)
      {
        if (v23)
        {
          v24 = sub_1006400F0(v24, a2, 3u);
        }

        else
        {
          sub_1006400F0(v24, a2, 1u);
          v24 = sub_100640980(a1, a2);
        }
      }

      if ((*(a2 + 72) & 0x20) != 0)
      {
        sub_100640024(v24, a2, 7u);
      }

      else
      {
        sub_100640024(v24, a2, 8u);
        sub_100640700(a1);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v25 = sub_100046458(off_100B508C8, *(a2 + 8), 0);
      if (qword_100B50910 != -1)
      {
        sub_1008550FC();
      }

      sub_1005BC3E8(off_100B50908, 1, v25);
    }
  }

  return sub_10002249C(&v27);
}

uint64_t sub_100640E64(uint64_t a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (*(*i + 104) == a2)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v6 = off_100B508C8;
      v7 = (v5 + 8);
      v8 = *(v5 + 8);
      sub_100007E30(v21, "IsMFiAuthenticated");
      if (sub_10004EB40(v6, v8, v21))
      {
        v9 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v10 = off_100B508C8;
        v11 = *v7;
        sub_100007E30(v19, "IsMFiAuthenticated_CertClass0B");
        if (sub_10004EB40(v10, v11, v19))
        {
          v9 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_1008550D4();
          }

          v12 = off_100B508C8;
          v13 = *v7;
          sub_100007E30(__p, "IsMFiAuthenticated_Ce");
          v9 = sub_10004EB40(v12, v13, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      v14 = qword_100BCEA90;
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v7;
          *buf = 141558275;
          v25 = 1752392040;
          v26 = 2113;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MFi authentication succeeded for device %{private, mask.hash}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_10085528C((v5 + 8));
        }

        sub_10063FDB0(a1, v5);
      }

      return sub_1000088CC(v23);
    }
  }

  return sub_1000088CC(v23);
}

void sub_1006410E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1000088CC(&a28);
  _Unwind_Resume(a1);
}

void sub_100641168(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) >= 3)
  {
    v4 = qword_100BCEA90;
    if (!*(a2 + 120))
    {
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a2 + 8);
        v7 = 138412546;
        v8 = v6;
        v9 = 1024;
        v10 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'set volume' command to device %@ %u", &v7, 0x12u);
      }

      LOBYTE(v7) = 0;
      sub_1000216B4(&v7);
      sub_1002EA2E0(*a2, a3);
      sub_100022214(&v7);
      *(a2 + 128) = a3;
      operator new();
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Volume hysteresis timer active", &v7, 2u);
    }
  }
}

uint64_t sub_100641344(uint64_t **a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 35));
  v5 = a1[43];
  for (i = a1[44]; v5 != i; ++v5)
  {
    v6 = *v5;
    if (*(*v5 + 120) == a2)
    {
      *(v6 + 120) = 0;
      v10 = 0.0;
      v7 = sub_1003A3484(*a1[67], &v10);
      if (v7)
      {
        v8 = (v10 * 255.0);
        if (*(v6 + 128) != v8)
        {
          sub_100641168(v7, v6, v8);
        }
      }

      i = a1[44];
    }
  }

  return sub_1000088CC(v11);
}

void sub_100641408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641420(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  v4 = *(a1 + 536);
  if (v4 && *v4 == a2)
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'stream will start' notification from HAL", v9, 2u);
    }

    v7 = *(a1 + 344);
    v6 = *(a1 + 352);
    while (v7 != v6)
    {
      if (*(*v7 + 32) >= 3)
      {
        sub_100640B80(a1, *v7);
        v6 = *(a1 + 352);
      }

      ++v7;
    }

    sub_1006017D4(*(a1 + 536));
    sub_1003A3604(a2, 3);
  }

  return sub_1000088CC(v10);
}

void sub_10064150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641534(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 280);
  v4 = *(a1 + 536);
  if (v4 && *v4 == a2)
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.tv_sec) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'stream did stop' notification from HAL", &buf, 2u);
      v4 = *(a1 + 536);
    }

    v4[3] = 0;
    v17 = 0;
    sub_1000216B4(&v17);
    sub_1002EA7B4();
    sub_100022214(&v17);
    buf.tv_sec = 0;
    *&buf.tv_usec = 0;
    gettimeofday(&buf, 0);
    *(a1 + 456) = buf.tv_usec / 1000.0 + (1000 * buf.tv_sec);
    v7 = *(a1 + 344);
    for (i = *(a1 + 352); v7 != i; ++v7)
    {
      v8 = *v7;
      if (*(*v7 + 32) >= 7)
      {
        v9 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v8 + 8);
          LODWORD(buf.tv_sec) = 138412290;
          *(&buf.tv_sec + 4) = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending 'stop stream' command to device %@", &buf, 0xCu);
        }

        sub_1000618AC(&v17);
        sub_1002EA244(*v8);
        v11 = sub_100022214(&v17);
        sub_100640024(v11, v8, 6u);
        sub_100641828(a1, v8, 0);
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v12 = off_100B508C8;
        v13 = *(v8 + 8);
        v14 = sub_100046458(v12, v13, 0);

        if (qword_100B50910 != -1)
        {
          sub_1008550FC();
        }

        sub_1005BC3E8(off_100B50908, 0, v14);
        i = *(a1 + 352);
      }
    }

    v15 = sub_10000C7D0();
    if (sub_10009BF08(v15) == 1)
    {
      sub_100641B04(a1);
    }

    sub_10063FD78(a1);
    sub_1003A3604(a2, 0);
    sub_10002249C(&v17);
  }

  return sub_1000088CC(v18);
}

void sub_1006417E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100641828(uint64_t a1, unsigned __int16 **a2, uint64_t a3)
{
  v19 = 0;
  sub_1000216B4(&v19);
  v6 = *a2;
  if (sub_1000ABD24(v6))
  {
    v7 = *v6;
    v17 = *(v6 + 49);
    v18 = *(v6 + 53);
    sub_100022214(&v19);
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "Disabling";
      if (a3)
      {
        v9 = "Enabling";
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s LEA Link Quality Mode for handle 0x%x", buf, 0x12u);
    }

    v10 = sub_10000C7D0();
    (*(*v10 + 544))(v10, a3, 1, v6);
    v11 = sub_10000C7D0();
    if ((*(*v11 + 2280))(v11))
    {
      v12 = sub_10000C7D0();
      (*(*v12 + 2320))(v12, &v17, a3, 1, 2066, 0, 0, 0, 0);
    }

    v13 = sub_10000C7D0();
    if (sub_10009BF08(v13) == 1)
    {
      v14 = (a1 + 464);
      if (a3)
      {
        *(a1 + 528) = 0;
        *(a1 + 496) = 0u;
        *(a1 + 512) = 0u;
        *v14 = 0u;
        *(a1 + 480) = 0u;
        *(a1 + 464) = -1;
        *(a1 + 484) = -1;
      }

      else if (*v14 == -1)
      {
        *v14 = v7;
      }

      else
      {
        *(a1 + 484) = v7;
      }
    }

    if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
    {
      v15 = sub_10000C7D0();
      (*(*v15 + 1048))(v15, v6, a3, a3);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855360();
  }

  return sub_10002249C(&v19);
}

void sub_100641B04(uint64_t a1)
{
  v1 = *(a1 + 536);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v4 = *(a1 + 344);
      if (v4 == *(a1 + 352))
      {
        v6 = 0;
        v5 = 0;
        v11 = 0;
LABEL_16:
        v12 = vcvtmd_u64_f64((*(a1 + 456) - *(a1 + 448)) / 1000.0);
        memset(v22, 0, 32);
        v13 = *(a1 + 440);
        v14 = *v2;
        v15 = *(v1 + 16);
        v16 = *(a1 + 466);
        v17 = *(a1 + 486);
        v19 = v11;
        v20 = v13;
        v21 = v14;
        LOBYTE(v22[0]) = v15;
        DWORD1(v22[0]) = v12;
        BYTE8(v22[0]) = v5;
        WORD5(v22[0]) = v16;
        *(v22 + 12) = *(a1 + 468);
        BYTE12(v22[1]) = v6;
        HIWORD(v22[1]) = v17;
        v22[2] = *(a1 + 488);
        v18 = sub_10000F034();
        (*(*v18 + 136))(v18, &v19);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        while (1)
        {
          v7 = **v4;
          v8 = *v7;
          if (!sub_1000ABD24(v7))
          {
            break;
          }

          v9 = *v4;
          if (((*v4)[9] & 8) != 0)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          if (v8 == *(a1 + 464))
          {
            v5 = v10;
          }

          else if (v8 == *(a1 + 484))
          {
            v6 = v10;
          }

          if (++v4 == *(a1 + 352))
          {
            v11 = *(v9 + 8);
            v1 = *(a1 + 536);
            v2 = *(v1 + 8);
            goto LABEL_16;
          }
        }

        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_100855394();
        }
      }
    }
  }
}

uint64_t sub_100641CAC(void *a1, uint64_t a2, float a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    v9 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *buf = 134218240;
      v13 = a3;
      v14 = 1024;
      v15 = (a3 * 255.0);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'volume update %f (%d)' event from HAL", buf, 0x12u);
    }

    for (i = a1[43]; i != a1[44]; ++i)
    {
      sub_100641168(v9, *i, (a3 * 255.0));
    }
  }

  return sub_1000088CC(v11);
}

uint64_t sub_100641DFC(void *a1, uint64_t a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'select codec (%d)' command from HAL", buf, 8u);
      v6 = a1[67];
    }

    v9 = v6[1];
    v10 = sub_100641F84(a1, a3);
    if (v10)
    {
      v11 = v10;
      *(a1[67] + 8) = v10;
      *buf = 0;
      sub_1003A5884(a2, buf);
      if (buf[0])
      {
        if (v9 && *(v9 + 3) != v11[3])
        {
          sub_1006420F4(a1[67]);
        }

        sub_100642154(a1[67]);
      }

      v12 = a1[43];
      for (i = a1[44]; v12 != i; *(v14 + 112) = 1)
      {
        v14 = *v12++;
      }
    }
  }

  return sub_1000088CC(v15);
}

char *sub_100641F84(uint64_t a1, int a2)
{
  v2 = *(a1 + 424);
  if (v2 <= 59)
  {
    if (v2 == 40)
    {
      result = &byte_1008AAA08;
    }

    else
    {
      if (v2 != 56)
      {
        goto LABEL_16;
      }

      result = &byte_1008AAA8C;
    }
  }

  else
  {
    if (v2 != 60)
    {
      if (v2 == 90 || v2 == 120)
      {
        result = &byte_1008AAB64;
        goto LABEL_11;
      }

LABEL_16:
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = v2;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid LEA packet size %lu", &v14, 0xCu);
        v6 = qword_100BCEA90;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1008267F8(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      return 0;
    }

    result = &byte_1008AAABC;
  }

LABEL_11:
  v4 = *result;
  if (!*result)
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008553C8();
    }

    return 0;
  }

  while (v4 != a2)
  {
    v5 = result[12];
    result += 12;
    v4 = v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1006420F4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*v1)
    {
      operator delete[]();
    }

    operator delete();
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100642154(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006421FC(void *a1, uint64_t a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'change audio content type (%d)' command from HAL", buf, 8u);
      v6 = a1[67];
    }

    if (*(v6 + 16) == a3)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio content type has no change", buf, 2u);
      }
    }

    else
    {
      *(v6 + 16) = a3;
      v10 = a1[43];
      for (i = a1[44]; v10 != i; *(v12 + 112) = 1)
      {
        v12 = *v10++;
      }
    }
  }

  return sub_1000088CC(v13);
}

void sub_100642368()
{
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_1008553FC();
  }
}

void sub_1006423B0(void *a1, uint64_t a2)
{
  sub_100647518(a1);
  sub_1006477B4(a1, a2);
  if (*(a2 + 28) != *(a2 + 24) || *(a2 + 19) != *(a2 + 18))
  {
    v4 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 8);
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = *(a2 + 18);
      v11 = 141558787;
      if (v8)
      {
        v9 = "Tail";
      }

      else
      {
        v9 = "Head";
      }

      v12 = 1752392040;
      v13 = 2113;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LEA: Retagging device %{private, mask.hash}@, streamMode=%d slot=%s", &v11, 0x26u);
    }

    v10 = sub_10000C7D0();
    (*(*v10 + 432))(v10, *a2, *(a2 + 24), *(a2 + 18), 1);
    *(a2 + 28) = *(a2 + 24);
    *(a2 + 19) = *(a2 + 18);
  }
}

_BYTE *sub_100642544(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 8);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting encryption to device %@", &v7, 0xCu);
  }

  LOBYTE(v7) = 0;
  sub_1000216B4(&v7);
  sub_1002EA900(*a2);
  v5 = sub_100022214(&v7);
  sub_100640024(v5, a2, 4u);
  return sub_10002249C(&v7);
}

_BYTE *sub_10064264C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(*(a1 + 536) + 8);
    v6 = *(a2 + 8);
    v17[0] = 67109378;
    v17[1] = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'select codec %d' command to device %@", v17, 0x12u);
  }

  if (*(a2 + 32) != 6)
  {
    v7 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      sub_10085519C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  LOBYTE(v17[0]) = 0;
  sub_1000216B4(v17);
  sub_1002EA118(*a2, **(*(a1 + 536) + 8), *(*(*(a1 + 536) + 8) + 4), *(*(*(a1 + 536) + 8) + 1), *(*(a1 + 536) + 16));
  v15 = sub_100022214(v17);
  *(a2 + 112) = 0;
  sub_100640024(v15, a2, 5u);
  return sub_10002249C(v17);
}

_BYTE *sub_1006427BC(uint64_t a1, __int128 *a2, char a3, __int16 a4)
{
  v7 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855430(a3, a4, v7);
  }

  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002EA2A4(a2, a3, a4);
  return sub_10002249C(&v9);
}

void sub_10064285C(uint64_t a1, unsigned __int8 *__src, size_t __n, int a4)
{
  v4 = *(a1 + 536);
  if (v4)
  {
    v5 = *(v4 + 32);
    if (v5 && (v6 = *v5) != 0)
    {
      v8 = __n;
      if (!__src && __n)
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_1008554C0();
        }

        return;
      }

      v11 = *(v4 + 8);
      if (*v11 == 15)
      {
        v12 = 0;
        v13 = 1;
        if (!__n)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = v11[5] ^ 1;
        if (v11[5])
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }

        if (!__n)
        {
          goto LABEL_20;
        }
      }

      if (v11[3] < __n)
      {
LABEL_20:
        v14 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_1008554F4(v8, v14);
        }

        v8 = 0;
        goto LABEL_23;
      }

      if (v11[6] != 1)
      {
        memcpy(&v6[v12], __src, __n);
LABEL_23:
        if ((v13 & 1) == 0)
        {
          v15 = *(a1 + 432);
          *(a1 + 432) = v15 + 1;
          **v5 = v15;
          *(*v5 + 1) = v8;
        }

        v16 = *(a1 + 536);
        v17 = *v16;
        v18 = *v5;
        v19 = v8 + v12;
        if (*(v16[1] + 5) == 1)
        {
          sub_1003A3150(v17, v18, v19, a4);
        }

        else
        {
          sub_1003A2DA4(v17, v18, v19, a4);
        }

        v20 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
        {
          sub_10085556C(v8 + v12, v20);
        }

        return;
      }

      v21 = *__src;
      v29 = v21 >> 2;
      v22 = v21 & 3;
      v23 = *(v5 + 16);
      if (v23 == v21 >> 2 && *(v5 + 17) <= v22)
      {
        v24 = *(v5 + 8);
      }

      else
      {
        if ((*(v5 + 18) & 1) == 0)
        {
          log = qword_100BCEA90;
          if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
          {
            v27 = *(v5 + 17);
            *buf = 67109376;
            v31 = v27;
            v32 = 1024;
            v33 = v23;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Only received %u packets for frameId %u", buf, 0xEu);
            v6 = *v5;
          }
        }

        v24 = 0;
        *(v5 + 15) = 0;
        *(v5 + 8) = 0;
      }

      v25 = v8 - 1;
      memcpy(&v6[v24 + v12], __src + 1, v25);
      *(v5 + 16) = v29;
      v26 = *(v5 + 17);
      *(v5 + 17) = v26 + 1;
      v8 = *(v5 + 8) + v25;
      *(v5 + 8) = v8;
      if (v26 == v22)
      {
        *(v5 + 18) = 1;
        goto LABEL_23;
      }
    }

    else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008555E4();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855618();
  }
}

BOOL sub_100642B78(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (*(a1 + 352) - v1 != 16)
  {
    v3 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446210;
      v9 = "fSessionList.size() == 2";
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v8, 0xCu);
      v1 = *(a1 + 344);
    }
  }

  v4 = v1[1];
  if (*(*v1 + 64) != *(v4 + 64))
  {
    return 0;
  }

  v5 = *(*v1 + 72);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 72);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 4) != 0)
  {
    return (v6 & 4) != 0 && ((v6 | v5) & 8) != 0;
  }

  return (v6 & 4) == 0;
}

void sub_100642C8C(uint64_t a1, void *a2)
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

void sub_100642D58(uint64_t a1, void (***a2)(void, void *))
{
  sub_1005C19D8(v3, *(a1 + 32) + 368);
  (**a2)(a2, v3);
  sub_10000CEDC(v3, v3[1]);
}

void sub_100642DE0(uint64_t a1, uint64_t a2)
{
  if (qword_100B508B0 != -1)
  {
    sub_10085564C();
  }

  v4 = sub_1000ACEE4(off_100B508A8, *a2);
  v48 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LEA");
  sub_100007E30(v50, "IgnoreMFi");
  (*(*v5 + 72))(v5, buf, v50, &v48);
  if (v51 < 0)
  {
    operator delete(*v50);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008550D4();
  }

  v6 = off_100B508C8;
  v7 = (a2 + 8);
  v8 = *(a2 + 8);
  sub_100007E30(v46, "IsMFiAuthenticated");
  if (sub_10004EB40(v6, v8, v46))
  {
    v9 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v10 = off_100B508C8;
    v11 = *v7;
    sub_100007E30(v44, "IsMFiAuthenticated_CertClass0B");
    if (sub_10004EB40(v10, v11, v44))
    {
      v9 = 1;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v12 = off_100B508C8;
      v13 = *v7;
      sub_100007E30(__p, "IsMFiAuthenticated_Ce");
      v9 = sub_10004EB40(v12, v13, __p);
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v9)
  {
    v14 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v7;
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device %@ is MFi authenticated", buf, 0xCu);
    }
  }

  else
  {
    v16 = qword_100BCEA90;
    if (v48 != 1)
    {
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *v7;
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device %@ is not MFi authenticated yet, authenticating...", buf, 0xCu);
      }

      v18 = sub_100432610();
      v19 = *v7;
      (*(*v18 + 24))(v18, v19);

      operator new();
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_100855660();
    }
  }

  if (*(a1 + 536))
  {
    if (sub_100642B78(a1))
    {
      *v50 = 0;
      v20 = sub_1003A3484(**(a1 + 536), v50);
      if (v20)
      {
        sub_100641168(v20, a2, (*v50 * 255.0));
      }

      v21 = *(a1 + 536);
      if (v21[1])
      {
        *(a2 + 112) = 1;
      }

      LODWORD(v49) = 0;
      sub_1003A5884(*v21, &v49);
      if ((v49 & 1) == 0)
      {
        goto LABEL_57;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v22 = off_100B508C8;
      if (qword_100B508B0 != -1)
      {
        sub_1008556C8();
      }

      v23 = sub_1000ACEE4(off_100B508A8, *a2);
      sub_100007E30(v40, "Enable Input");
      v24 = sub_10004EB40(v22, v23, v40);
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }

      if (v24)
      {
        v25 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *v7;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Enable device %{private, mask.hash}@ input", buf, 0x16u);
        }

        v27 = 1;
        sub_1003A58A4(**(a1 + 536), 1);
      }

      else
      {
LABEL_57:
        v31 = qword_100BCEA90;
        v27 = 0;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *v7;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Disable device %{private, mask.hash}@ input", buf, 0x16u);

          v27 = 0;
        }
      }

      *(a2 + 129) = v27;
      if (sub_1003A5564(**(a1 + 536)))
      {
        sub_100640B80(a1, a2);
      }

      v33 = **(a1 + 536);
      sub_1003A5D88(buf, (a2 + 80));
      sub_1003A5678(v33, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (qword_100B508B0 != -1)
      {
        sub_1008556C8();
      }

      v34 = sub_1000ACEE4(off_100B508A8, *a2);
      if (*(a1 + 648) == 1)
      {
        sub_100643EB0(a1, v34);
      }

      else
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643F54(qword_100B50918, v34);
      }

      v35 = sub_100643FDC(a1, v34);
      if (v35)
      {
        sub_100508C08(v35, *(a2 + 16));
      }
    }

    else
    {
      v29 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        sub_100855694();
      }

      v30 = sub_1006427BC(v29, *a2, 12, 8);
      sub_100640024(v30, a2, 0);
    }
  }

  else
  {
    v28 = sub_10000C7D0();
    if (!(*(*v28 + 440))(v28, a1 + 424))
    {
      v36 = *(a2 + 64);
      v37 = *(a1 + 424);
      if (v36 < v37)
      {
        v38 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "LEA FW max packet size is %zu bytes", buf, 0xCu);
          v36 = *(a2 + 64);
        }

        *(a1 + 424) = v36;
        v37 = v36;
      }

      if (*(a1 + 440) == 1 && v37 >= 0x3D)
      {
        v37 = 60;
        *(a1 + 424) = 60;
      }

      v39 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v37;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "LEA max packet size is %zu bytes", buf, 0xCu);
      }

      operator new();
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008556F0();
    }
  }
}

void sub_100643CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100643EB0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_100643FDC(a1, v5);
  v4 = v3;
  if (v3)
  {
    if (sub_100508BF0(v3))
    {
      sub_100508BC4(v4);
    }

    else
    {
      sub_100507E60(v4);
    }
  }

  else
  {
    sub_100648108(a1, a1 + 649, a1 + 264, v5);
  }
}

void sub_100643F54(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100643FDC(a1, v4);
  if (v3)
  {
    sub_100508BA8(v3, 1);
  }

  else
  {
    sub_100648108(a1, a1 + 649, a1 + 264, v4);
  }
}

id *sub_100643FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 560);
  for (i = *(a1 + 624); i != *(a1 + 632); ++i)
  {
    v5 = *i;
    v6 = sub_100508BF8(*i);
    v7 = [v6 UUIDString];
    v8 = [v3 UUIDString];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  sub_1000088CC(v11);

  return v5;
}

void sub_1006440F4(uint64_t a1, __int128 *a2, int a3, int a4, int a5, int a6)
{
  if (qword_100B508B0 != -1)
  {
    sub_10085564C();
  }

  v12 = sub_1000ACEE4(off_100B508A8, a2);
  v13 = v12;
  if (!v12)
  {
    sub_1006427BC(0, a2, 1, 3);
    goto LABEL_39;
  }

  if (!sub_1006447FC(v12, v12))
  {
    v41[0] = 0;
    v41[1] = 0;
    sub_100007F88(v41, a1 + 280);
    for (i = *(a1 + 344); i != *(a1 + 352); ++i)
    {
      if (**i == a2)
      {
        goto LABEL_38;
      }
    }

    v40 = 0;
    v16 = sub_10000C7D0();
    v17 = sub_10009BF08(v16);
    v18 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413314;
      *&buf[1] = v13;
      v43 = 1024;
      *v44 = a3;
      *&v44[4] = 1024;
      *&v44[6] = a4;
      v45 = 1024;
      v46 = a5;
      v47 = 1024;
      v48 = a6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received 'version' command from device %@ with version: %d, companyID: %d, hwVersion: %d, swVersion: %d", buf, 0x24u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v19 = off_100B508C8;
    sub_100007E30(__p, "IsPrimaryHearingAid");
    v20 = sub_10004EB40(v19, v13, __p);
    v21 = v20;
    if (v39 < 0)
    {
      operator delete(__p[0]);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else if (!v20)
    {
      goto LABEL_23;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    sub_10078380C(off_100B508C8, v13, @"IsPrimaryHearingAid");
LABEL_23:
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v22 = off_100B508C8;
    sub_100007E30(v36, "DisableLEA");
    v23 = sub_10004EB40(v22, v13, v36);
    if (v17)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
      if (v24)
      {
        goto LABEL_30;
      }
    }

    else if (v24)
    {
LABEL_30:
      v25 = qword_100BCEA90;
      v23 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        buf[0] = 138412290;
        *&buf[1] = v13;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Rejecting LEA connection for device %@ as it is disabled", buf, 0xCu);
      }

      v26 = 7;
      goto LABEL_37;
    }

    if (a3 != 2 || v17 != 1)
    {
      v27 = *(a1 + 344);
      v28 = *(a1 + 352);
      if (v27 == v28)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v29 = off_100B508C8;
        sub_100007E30(v34, "Enable Input");
        v30 = sub_10004EB40(v29, v13, v34);
        if (v35 < 0)
        {
          operator delete(v34[0]);
        }

        v31 = qword_100BCEA90;
        v32 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v32)
          {
            buf[0] = 141558275;
            *&buf[1] = 1752392040;
            v43 = 2113;
            *v44 = v13;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LEA: Set device %{private, mask.hash}@ to Tail", buf, 0x16u);
          }
        }

        else if (v32)
        {
          buf[0] = 141558275;
          *&buf[1] = 1752392040;
          v43 = 2113;
          *v44 = v13;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LEA: Set device %{private, mask.hash}@ to Head", buf, 0x16u);
        }
      }

      else if (v28 - v27 != 8)
      {
        v33 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          sub_1008557E4();
        }

        sub_1006427BC(v33, a2, 1, 7);
        goto LABEL_38;
      }

      operator new();
    }

    v26 = 2;
LABEL_37:
    sub_1006427BC(v23, a2, 1, v26);
LABEL_38:
    sub_1000088CC(v41);
    goto LABEL_39;
  }

  v14 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connecting over LE Audio over MFi LEA", buf, 2u);
  }

LABEL_39:
}

void sub_100644748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1000088CC(&a29);

  _Unwind_Resume(a1);
}

uint64_t sub_1006447FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _os_feature_enabled_impl();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHALEAudio", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v5 = sub_100017E6C();
  v6 = (*(*v5 + 272))(v5);
  v7 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v11 = v3;
    v12 = 1024;
    v13 = AppBooleanValue != 0;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LE Audio OS Feature Enabled: %u. Developer HA Mode: %u. Developer Mode On: %u", buf, 0x14u);
  }

  return v3 | ((AppBooleanValue != 0) & v6);
}

char *sub_100644970(void *a1, char *__src, char *a3)
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

void sub_100644B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644B44(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v31[0] = 0;
  v31[1] = 0;
  v6 = sub_100007F88(v31, a1 + 280);
  for (i = *(a1 + 344); ; ++i)
  {
    if (i == *(a1 + 352))
    {
      goto LABEL_28;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_10000C250(a3, &__p);
    if ((v30 & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v11 = v8[1];
    *buf = 136446466;
    v33 = p_p;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'supported codec list (%{public}s)' command from device %@", buf, 0x16u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(v8 + 8) != 2)
  {
LABEL_28:
    sub_1006427BC(v6, a2, 2, 3);
    return sub_1000088CC(v31);
  }

  sub_100640024(v6, v8, 3u);
  v12 = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  while (sub_10000C5E0(a3) > v12)
  {
    v13 = sub_10072502C(a3, v12);
    v14 = v29;
    if (v29 >= v30)
    {
      v16 = __p;
      v17 = v29 - __p;
      v18 = (v29 - __p) >> 2;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        sub_1000C7698();
      }

      v20 = v30 - __p;
      if ((v30 - __p) >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        sub_10036F560(&__p, v21);
      }

      *(4 * v18) = v13;
      v15 = 4 * v18 + 4;
      memcpy(0, v16, v17);
      v22 = __p;
      __p = 0;
      v29 = v15;
      v30 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v29 = v13;
      v15 = (v14 + 4);
    }

    v29 = v15;
    ++v12;
  }

  v25 = 0;
  __dst = 0;
  v27 = 0;
  if (v29 != __p)
  {
    sub_1003A4F88(&v25, (v29 - __p) >> 2);
  }

  v24 = 0;
  if (v8 + 10 != &v25)
  {
    sub_1003A5C5C(v8 + 10, 0, 0, 0);
    v24 = v25;
  }

  if (v24)
  {
    __dst = v24;
    operator delete(v24);
  }

  sub_100642DE0(a1, v8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v31);
}

void sub_100644E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100644EA0(uint64_t a1, __int128 *a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v6 = sub_100007F88(v12, a1 + 280);
  for (i = *(a1 + 344); ; ++i)
  {
    if (i == *(a1 + 352))
    {
      goto LABEL_10;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = v8[1];
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'codec ready' command from device %@", buf, 0xCu);
  }

  if (*(v8 + 8) != 5)
  {
LABEL_10:
    sub_1006427BC(v6, a2, 4, 3);
    return sub_1000088CC(v12);
  }

  sub_100640024(v6, v8, 6u);
  sub_1003A34D0(**(a1 + 536), a3 + 1250);
  if (sub_1003A5564(**(a1 + 536)))
  {
    sub_100640B80(a1, v8);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100645020(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v22[0] = 0;
  v22[1] = 0;
  v6 = sub_100007F88(v22, a1 + 280);
  v8 = *(a1 + 344);
  v7 = *(a1 + 352);
  if (v8 == v7)
  {
LABEL_5:
    sub_1006427BC(v6, a2, 7, 3);
  }

  else
  {
    v9 = *(a1 + 344);
    while (1)
    {
      v10 = *v9;
      if (**v9 == a2)
      {
        break;
      }

      if (++v9 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = qword_100BCEA90;
    v12 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      sub_10000C250(a3, __p);
      if (v21 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = v10[1];
      *buf = 136446466;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'passthrough [ %{public}s ]' command from device %@", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a1 + 344);
      v7 = *(a1 + 352);
    }

    if (v8 == v7)
    {
      goto LABEL_22;
    }

    v15 = 0;
    do
    {
      while (*v8 != v10 && *(*v8 + 8) == *(v10 + 8))
      {
        LOBYTE(__p[0]) = 0;
        sub_1000216B4(__p);
        v16 = **v8;
        v17 = sub_10000C5F8(a3);
        v18 = sub_10000C5E0(a3);
        sub_1002EA290(v16, v17, v18);
        v12 = sub_10002249C(__p);
        v7 = *(a1 + 352);
        ++v8;
        v15 = 1;
        if (v8 == v7)
        {
          return sub_1000088CC(v22);
        }
      }

      ++v8;
    }

    while (v8 != v7);
    if ((v15 & 1) == 0)
    {
LABEL_22:
      sub_1006427BC(v12, a2, 7, 6);
    }
  }

  return sub_1000088CC(v22);
}

void sub_100645230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100645268(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 280);
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  while (v8 != v9)
  {
    v10 = *v8;
    if (**v8 == a2)
    {
      v11 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        v13 = v10[1];
        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = a4;
        v19 = 2112;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received 'error (%u/%u)' command from device %@", buf, 0x18u);
      }

      return sub_1000088CC(v14);
    }

    ++v8;
  }

  return sub_1000088CC(v14);
}

uint64_t sub_10064538C(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5[1];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'restart' command from device %@", buf, 0xCu);
      }

      sub_10063FDB0(a1, v5);
      return sub_1000088CC(v9);
    }
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1006454B0(uint64_t **a1, __int128 *a2, unsigned int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  v6 = sub_100007F88(v15, (a1 + 35));
  for (i = a1[43]; ; ++i)
  {
    if (i == a1[44])
    {
      goto LABEL_13;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = *(v8 + 1);
    *buf = 67109378;
    v17 = a3;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'set volume (%u)' command from device %@", buf, 0x12u);
  }

  if (v8[8] < 3)
  {
LABEL_13:
    sub_1006427BC(v6, a2, 10, 3);
    return sub_1000088CC(v15);
  }

  sub_1003A2788(*a1[67], a3 / 255.0);
  *(v8 + 128) = a3;
  v13 = a1[43];
  v12 = a1[44];
  while (v13 != v12)
  {
    if (*v13 != v8)
    {
      sub_100641168(v11, *v13, a3);
      v12 = a1[44];
    }

    ++v13;
  }

  return sub_1000088CC(v15);
}

uint64_t sub_100645650(uint64_t a1, __int128 *a2, unsigned int a3, int a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v8 = sub_100007F88(v15, a1 + 280);
  v9 = *(a1 + 344);
  v10 = *(a1 + 352);
  while (v9 != v10)
  {
    v11 = *v9;
    if (**v9 == a2)
    {
      v12 = qword_100BCEA90;
      v8 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v13 = v11[1];
        *buf = 67109891;
        v17 = a3;
        v18 = 1024;
        v19 = a4;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'capabilities (%u/%u)' command from device %{private, mask.hash}@", buf, 0x22u);
      }

      if (*(v11 + 8) == 1)
      {
        sub_100640024(v8, v11, 2u);
        v11[8] = a3;
        *(v11 + 18) = a4;
        return sub_1000088CC(v15);
      }

      break;
    }

    ++v9;
  }

  sub_1006427BC(v8, a2, 12, 3);
  return sub_1000088CC(v15);
}

uint64_t sub_1006457E0(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v8 = v5[1];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'stream ready' command from device %@", buf, 0xCu);
      }

      if (*(v5 + 8) == 7)
      {
        sub_100640024(v7, v5, 8u);
        sub_100640700(a1);
      }

      return sub_1000088CC(v10);
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_100645918(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 35));
  for (i = a1[43]; ; ++i)
  {
    if (i == a1[44])
    {
      return sub_1000088CC(v25);
    }

    v9 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v10 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C250(a3, __p);
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v19 = v9[1];
    v20 = v19;
    v21 = "No";
    *buf = 136446722;
    *v27 = v18;
    if (a4)
    {
      v21 = "Yes";
    }

    *&v27[8] = 2112;
    v28 = v19;
    v29 = 2080;
    v30 = v21;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Received 'audio (%{public}s)' from device %@ wakeUpEvent %s", buf, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(v9 + 8) != 8)
  {
    v15 = qword_100BCEA90;
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      return sub_1000088CC(v25);
    }

    v16 = 0;
LABEL_24:
    v22 = *(v9 + 6);
    *buf = 67109376;
    *v27 = v16;
    *&v27[4] = 1024;
    *&v27[6] = v22;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Skipping recvAudioEvent, canStreamAudio: %u, Streaming mode: %u", buf, 0xEu);
    return sub_1000088CC(v25);
  }

  v11 = *(v9 + 12);
  if (v11 != 3 || *(v9 + 6) != 2)
  {
    v15 = qword_100BCEA90;
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      return sub_1000088CC(v25);
    }

    v16 = v11 == 3;
    goto LABEL_24;
  }

  v12 = sub_10000C5F8(a3);
  v13 = sub_10000C5E0(a3);
  sub_10064285C(a1, v12, v13, a4);
  v14 = *(a1[67] + 8);
  if (*(v14 + 5) == 1)
  {
    a1[68] = dispatch_time(0, 3750000 * *(v14 + 1) + 2500000);
    sub_100645BCC(a1, a2);
  }

  return sub_1000088CC(v25);
}

void sub_100645BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100645BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 552);
  if (v3)
  {
    dispatch_suspend(v3);
  }

  else
  {
    v5 = sub_100007EE8();
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, *(v5 + 8));
    *(a1 + 552) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1006474C4;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a2;
    dispatch_source_set_event_handler(v6, handler);
  }

  v7 = *(a1 + 552);
  if (v7)
  {
    dispatch_source_set_timer(v7, *(a1 + 544), 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    dispatch_resume(*(a1 + 552));
  }
}

uint64_t sub_100645C9C(uint64_t a1, uint64_t a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 280);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  while (v6 != v7)
  {
    v8 = *v6;
    if (**v6 == a2)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[1];
        *buf = 67109378;
        v14 = a3;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'state noti (%u)' command from device %@", buf, 0x12u);
      }

      return sub_1000088CC(v12);
    }

    ++v6;
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100645DAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 280);
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  while (v8 != v9)
  {
    v10 = *v8;
    if (**v8 == a2)
    {
      v11 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v10[1];
        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = a4;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'link quality noti (%d, %u)' command from device %@", buf, 0x18u);
      }

      return sub_1000088CC(v14);
    }

    ++v8;
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100645ECC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v7 = *i;
    if (**i == a2)
    {
      v8 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7[1];
        *buf = 67109378;
        v17 = a3;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'bonding status response (%u)' command from device %@", buf, 0x12u);
      }

      if (a3 >= 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x10102u >> (8 * a3);
      }

      v11 = v7[1];
      v12 = sub_100643FDC(a1, v11);
      if (v12)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v13 = sub_100046458(off_100B508C8, v11, 0);
        buf[0] = BYTE5(v13);
        buf[1] = BYTE4(v13);
        buf[2] = BYTE3(v13);
        buf[3] = BYTE2(v13);
        LOBYTE(v17) = BYTE1(v13);
        BYTE1(v17) = v13;
        sub_100508134(v12, buf, (a1 + 649), v10);
      }

      return sub_1000088CC(v15);
    }
  }

  return sub_1000088CC(v15);
}

uint64_t sub_1006460B0(uint64_t a1, uint64_t a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 280);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  while (v6 != v7)
  {
    v8 = *v6;
    if (**v6 == a2)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[1];
        *buf = 67109378;
        v14 = a3;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'siri (%u)' command from device %@", buf, 0x12u);
      }

      return sub_1000088CC(v12);
    }

    ++v6;
  }

  return sub_1000088CC(v12);
}

void sub_1006461C0(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  v10 = sub_1000CB318(a1);
  v11 = sub_100007EE8();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100646278;
  v12[3] = &unk_100AEAF08;
  v12[4] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = v10;
  sub_10000CA94(v11, v12);
}

void sub_100646278(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(a1 + 44);
  v7 = *(a1 + 46);

  sub_1006440F4(v2, v3, v4, v5, v6, v7);
}

void sub_1006462E0(uint64_t a1, const void *a2, unsigned int a3)
{
  v8 = 0;
  v9 = 0;
  sub_10000C704(&v8, a2, a3);
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_100646430;
  v5[3] = &unk_100B02E08;
  v5[4] = a1;
  v6 = &off_100AE0A78;
  v7 = v9;
  if (v9)
  {
    sub_10000C69C(v9);
  }

  sub_10000CA94(v4, v5);
  v6 = &off_100AE0A78;
  if (v7)
  {
    sub_10000C808(v7);
  }

  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }
}

void sub_1006463E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    sub_10000C808(a16);
  }

  *(v16 - 32) = &off_100AE0A78;
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_10000C808(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100646430(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100644B44(v2, v3, a1 + 40);
}

void sub_100646488(uint64_t a1, __int16 a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10064650C;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_10064650C(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100644EA0(v2, v3, v4);
}

void sub_100646564(uint64_t a1, const void *a2, unsigned int a3)
{
  v8 = 0;
  v9 = 0;
  sub_10000C704(&v8, a2, a3);
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1006466B4;
  v5[3] = &unk_100B02E08;
  v5[4] = a1;
  v6 = &off_100AE0A78;
  v7 = v9;
  if (v9)
  {
    sub_10000C69C(v9);
  }

  sub_10000CA94(v4, v5);
  v6 = &off_100AE0A78;
  if (v7)
  {
    sub_10000C808(v7);
  }

  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }
}

void sub_100646664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    sub_10000C808(a16);
  }

  *(v16 - 32) = &off_100AE0A78;
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_10000C808(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006466B4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100645020(v2, v3, a1 + 40);
}

void sub_10064670C(uint64_t a1, char a2, __int16 a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006467A0;
  v7[3] = &unk_100AF5948;
  v7[4] = a1;
  v9 = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1006467A0(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 42);
  v5 = *(a1 + 40);

  return sub_100645268(v2, v3, v4, v5);
}

void sub_1006467FC(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100646878;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_100646878(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_10064538C(v2, v3);
}

void sub_1006468CC(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646950;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646950(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006454B0(v2, v3, v4);
}

void sub_1006469A8(uint64_t a1, char a2, char a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100646A3C;
  v7[3] = &unk_100AEB940;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_100646A3C(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  return sub_100645650(v2, v3, v4, v5);
}

void sub_100646A98(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100646B14;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_100646B14(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_1006457E0(v2, v3);
}

void sub_100646B68(uint64_t a1, const void *a2, unsigned int a3, char a4)
{
  v11 = 0;
  v12 = 0;
  sub_10000C704(&v11, a2, a3);
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100646CC8;
  v7[3] = &unk_100B034F0;
  v7[4] = a1;
  v8 = &off_100AE0A78;
  v9 = v12;
  if (v12)
  {
    sub_10000C69C(v12);
  }

  v10 = a4;
  sub_10000CA94(v6, v7);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }
}

void sub_100646C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15)
{
  if (a15)
  {
    sub_10000C808(a15);
  }

  *(v15 - 48) = &off_100AE0A78;
  v17 = *(v15 - 40);
  if (v17)
  {
    sub_10000C808(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100646CC8(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);

  return sub_100645918(v2, v3, a1 + 40, v4);
}

void sub_100646D24(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646DA8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646DA8(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100645C9C(v2, v3, v4);
}

void sub_100646E00(uint64_t a1, char a2, char a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100646E94;
  v7[3] = &unk_100AEB940;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_100646E94(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  return sub_100645DAC(v2, v3, v4, v5);
}

void sub_100646EF0(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646F74;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646F74(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100645ECC(v2, v3, v4);
}

void sub_100646FCC(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100647050;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100647050(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006460B0(v2, v3, v4);
}

void sub_1006470A8(uint64_t a1, int a2, char a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064713C;
  v7[3] = &unk_100AF2A50;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_10064713C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v4 = qword_100B50918;
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);

  return sub_1006403C0(v4, v5, a3, v6);
}

void sub_100647194(uint64_t a1, __int16 a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100647218;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100647218(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006407DC(v2, v3, v4);
}

void sub_100647270(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006472F4;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1006472F4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100640A34(v2, v3);
}

uint64_t sub_100647348(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 35));
  for (i = a1[43]; i != a1[44]; ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5[1];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No Audio from device %@, add empty packet for PLC", buf, 0xCu);
      }

      if (*(v5 + 8) == 8 && *(v5 + 12) == 3)
      {
        sub_10064285C(a1, 0, 0, 0);
        a1[68] = dispatch_time(0, 2500000 * *(*(a1[67] + 8) + 1));
        sub_100645BCC(a1, a2);
      }

      return sub_1000088CC(v9);
    }
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1006474C4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100647348(v2, v3);
}

void sub_100647518(void *a1)
{
  v2 = a1[43];
  if (v2 != a1[44])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *v2;
      if (!*(*v2 + 18))
      {
        v3 = *v2;
      }

      v7 = a1[67];
      if (*(v7 + 16) != 2)
      {
        break;
      }

      v8 = qword_100BCEA90;
      if (*(v6 + 129) != 1)
      {
        goto LABEL_11;
      }

      *(v6 + 24) = 2;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v6 + 8);
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set device %@ as Bidirectional", buf, 0xCu);

        v7 = a1[67];
      }

      v5 = 1;
      sub_1003A58A4(*v7, 1);
LABEL_14:
      if (++v2 == a1[44])
      {
        if (v5)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v8 = qword_100BCEA90;
LABEL_11:
    *(v6 + 24) = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v6 + 8);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set device %@ as output", buf, 0xCu);
    }

    v4 = 1;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = 0;
LABEL_18:
  v11 = a1[67];
  if (*(v11 + 16) == 2)
  {
    v12 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No Input device found. Disable InputAudio", buf, 2u);
      v11 = a1[67];
    }

    sub_1003A58A4(*v11, 0);
  }

LABEL_22:
  if ((v4 & 1) == 0 && a1[44] - a1[43] == 16 && v3 != 0)
  {
    v14 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v3 + 8);
      *buf = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Both devices set to Bidirectional, set head session(%@) to output", buf, 0xCu);
    }

    *(v3 + 24) = 0;
  }
}

void sub_1006477B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352) - *(a1 + 344) == 8)
  {
    if (*(a2 + 129) == 1)
    {
      if (*(a2 + 18))
      {
        return;
      }

      v3 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a2 + 8);
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset device %@ to tail", &v9, 0xCu);
      }

      v5 = 1;
    }

    else
    {
      if (!*(a2 + 18))
      {
        return;
      }

      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      v5 = 0;
      if (v7)
      {
        v8 = *(a2 + 8);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset device %@ to head", &v9, 0xCu);

        v5 = 0;
      }
    }

    *(a2 + 18) = v5;
  }
}

void sub_10064790C(uint64_t a1, __int16 a2, char a3, __int16 a4, char a5, char a6, char a7, char a8, char a9, char a10)
{
  v17 = sub_100007EE8();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006479E8;
  v18[3] = &unk_100AF5948;
  v19 = a2;
  v21 = a3;
  v20 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  sub_10000CA94(v17, v18);
}

void sub_1006479E8()
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }
}

void sub_100647A14(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 528) = 0;
    *(a1 + 496) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 464) = -1;
    *(a1 + 484) = -1;
  }

  v4 = *(a2 + 2);
  if (v4 != 0xFFFF)
  {
    ++*(a1 + 528);
    *(a1 + 464) = v4;
    *(a1 + 504) += *(a2 + 4);
    *(a1 + 468) += *(a2 + 5);
    *(a1 + 472) += *(a2 + 6);
    *(a1 + 512) += *(a2 + 7);
    v5 = *(a2 + 13);
    if (*(a2 + 13))
    {
      if (v5 != 255)
      {
        *(a1 + 476) += *(a2 + 9);
        *(a1 + 480) += *(a2 + 11);
        *(a1 + 516) += v5;
      }
    }
  }

  v6 = *(a2 + 16);
  if (v6 != 0xFFFF)
  {
    ++*(a1 + 530);
    *(a1 + 484) = v6;
    *(a1 + 508) += *(a2 + 18);
    *(a1 + 488) += *(a2 + 19);
    *(a1 + 492) += *(a2 + 20);
    *(a1 + 520) += *(a2 + 21);
    v7 = *(a2 + 27);
    if (*(a2 + 27))
    {
      if (v7 != 255)
      {
        *(a1 + 496) += *(a2 + 23);
        *(a1 + 500) += *(a2 + 25);
        *(a1 + 524) += v7;
      }
    }
  }

  if (v4 != 0xFFFF)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 7);
      v10 = *(a2 + 5);
      v11 = *(a2 + 6);
      v12 = *(a2 + 13);
      v13 = *(a2 + 9);
      v14 = *(a2 + 11);
      v15 = *(a2 + 4);
      v16 = *(a2 + 14);
      v17 = *(a2 + 15);
      *buf = 67111424;
      *&buf[4] = v4;
      v49 = 1024;
      v50 = v9;
      v51 = 1024;
      v52 = v10;
      v53 = 1024;
      v54 = v11;
      v55 = 1024;
      v56 = v12;
      v57 = 1024;
      v58 = v13;
      v59 = 1024;
      v60 = v14;
      v61 = 1024;
      v62 = v15;
      v63 = 1024;
      v64 = v16;
      v65 = 1024;
      v66 = v17;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LEA Stats Report - handle(0x%2X):TxTotal(%d), TxR(%d), TxF(%d), RxTotal(%d), RxE(%d), RxM(%d), rssi(%d), TxST(%d), TxSE(%d)", buf, 0x3Eu);
      v6 = *(a2 + 16);
    }
  }

  if (v6 != 0xFFFF)
  {
    v18 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a2 + 21);
      v20 = *(a2 + 19);
      v21 = *(a2 + 20);
      v22 = *(a2 + 27);
      v23 = *(a2 + 23);
      v24 = *(a2 + 25);
      v25 = *(a2 + 18);
      v26 = *(a2 + 28);
      v27 = *(a2 + 29);
      *buf = 67111424;
      *&buf[4] = v6;
      v49 = 1024;
      v50 = v19;
      v51 = 1024;
      v52 = v20;
      v53 = 1024;
      v54 = v21;
      v55 = 1024;
      v56 = v22;
      v57 = 1024;
      v58 = v23;
      v59 = 1024;
      v60 = v24;
      v61 = 1024;
      v62 = v25;
      v63 = 1024;
      v64 = v26;
      v65 = 1024;
      v66 = v27;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LEA Stats Report - handle(0x%2X):TxTotal(%d), TxR(%d), TxF(%d), RxTotal(%d), RxE(%d), RxM(%d), rssi(%d), TxST(%d), TxSE(%d)", buf, 0x3Eu);
    }
  }

  if (!*a2)
  {
    v28 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "===Stats Report Total===", buf, 2u);
      v28 = qword_100BCEA90;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10085582C(a1, v28, buf);
      v28 = *buf;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100855928(a1, v28);
    }

    if (*(a1 + 528))
    {
      v29 = *(a1 + 512);
      if (v29)
      {
        *(a1 + 466) = *(a1 + 504) / *(a1 + 528);
        *(a1 + 468) = (100 * *(a1 + 468) + (v29 >> 1)) / v29;
        *(a1 + 472) = (100 * *(a1 + 472) + (v29 >> 1)) / v29;
        v30 = *(a1 + 516);
        if (v30)
        {
          *(a1 + 476) = (v30 + 100 * *(a1 + 476)) / (2 * v30);
          *(a1 + 480) = (100 * *(a1 + 480) + (v30 >> 1)) / v30;
        }
      }
    }

    if (*(a1 + 530))
    {
      v31 = *(a1 + 520);
      if (v31)
      {
        *(a1 + 486) = *(a1 + 508) / *(a1 + 530);
        *(a1 + 488) = (100 * *(a1 + 488) + (v31 >> 1)) / v31;
        *(a1 + 492) = (100 * *(a1 + 492) + (v31 >> 1)) / v31;
        v32 = *(a1 + 524);
        if (v32)
        {
          *(a1 + 496) = (v32 + 100 * *(a1 + 496)) / (2 * v32);
          *(a1 + 500) = (100 * *(a1 + 500) + (v32 >> 1)) / v32;
        }
      }
    }

    v33 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "===All sessions are ready to report session stats===", buf, 2u);
      v33 = qword_100BCEA90;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 464);
      v35 = *(a1 + 466);
      v36 = *(a1 + 468);
      v37 = *(a1 + 472);
      v38 = *(a1 + 476);
      v39 = *(a1 + 480);
      *buf = 67110400;
      *&buf[4] = v34;
      v49 = 1024;
      v50 = v35;
      v51 = 1024;
      v52 = v36;
      v53 = 1024;
      v54 = v37;
      v55 = 1024;
      v56 = v38;
      v57 = 1024;
      v58 = v39;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "handle(0x%2X):rssi(%d), TxRR(%u), TxFR(%u), RxER(%u), RxMR(%u)", buf, 0x26u);
      v33 = qword_100BCEA90;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 484);
      v41 = *(a1 + 486);
      v42 = *(a1 + 488);
      v43 = *(a1 + 492);
      v44 = *(a1 + 496);
      v45 = *(a1 + 500);
      *buf = 67110400;
      *&buf[4] = v40;
      v49 = 1024;
      v50 = v41;
      v51 = 1024;
      v52 = v42;
      v53 = 1024;
      v54 = v43;
      v55 = 1024;
      v56 = v44;
      v57 = 1024;
      v58 = v45;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "handle(0x%2X):rssi(%d), TxRR(%u), TxFR(%u), RxER(%u), RxMR(%u)", buf, 0x26u);
    }

    v46 = sub_100007EE8();
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100648098;
    v47[3] = &unk_100ADF8F8;
    v47[4] = a1;
    sub_10000CA94(v46, v47);
  }
}

double sub_100648098(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  sub_100641B04(qword_100B50918);
  result = 0.0;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 528) = 0;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 464) = -1;
  *(v1 + 484) = -1;
  return result;
}

uint64_t sub_100648108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _os_feature_enabled_impl();
  v7 = qword_100BCEA90;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating LEA easy pairing agent", buf, 2u);
    }

    *buf = 0;
    v17 = 0;
    sub_100007F88(buf, a1 + 560);
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v8 = sub_100046458(off_100B508C8, v5, 0);
    v10 = BYTE5(v8);
    v11 = BYTE4(v8);
    v12 = BYTE3(v8);
    v13 = BYTE2(v8);
    v14 = BYTE1(v8);
    v15 = v8;
    operator new();
  }

  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855A08();
  }

  return 0;
}

void sub_10064836C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 560);
  v4 = *(a1 + 624);
  if (v4 != *(a1 + 632))
  {
    v5 = (v4 + 1);
    while (1)
    {
      v6 = *v4;
      v7 = sub_100508BF8(*v4);
      v8 = [v7 UUIDString];
      v9 = [v3 UUIDString];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        break;
      }

      ++v4;
      v5 += 8;
      if (v4 == *(a1 + 632))
      {
        goto LABEL_12;
      }
    }

    v11 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting easy pairing agent", v14, 2u);
    }

    v12 = *(a1 + 632);
    v13 = v12 - v5;
    if (v12 != v5)
    {
      memmove(v5 - 8, v5, v12 - v5);
    }

    *(a1 + 632) = &v5[v13 - 8];
    if (v6)
    {
      sub_100507E2C(v6);
      operator delete();
    }
  }

LABEL_12:
  sub_1000088CC(v15);
}

uint64_t sub_100648524(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 560);
  v2 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting LEA easy pairing agents", v10, 2u);
  }

  v3 = *(a1 + 624);
  v4 = *(a1 + 632) - v3;
  v5 = (v4 >> 3);
  if ((v4 >> 3))
  {
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *v3;
      v6 = sub_100508BF8(*v3);

      if (sub_100508BE0(v8))
      {
        sub_100643EB0(a1, v6);
      }

      else if (sub_100508BE8(v8))
      {
        sub_100648658(a1, v6);
      }

      ++v3;
      --v5;
    }

    while (v5);
  }

  return sub_1000088CC(v11);
}

void sub_100648640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100648658(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 648) == 1)
  {
    v4 = sub_100643FDC(a1, v3);
    if (v4 || (v4 = sub_100648108(a1, a1 + 649, a1 + 264, v3)) != 0)
    {
      if (sub_100320F74(v4))
      {
        sub_100508BD8(v4);
      }

      else
      {
        sub_100508BB0(v4, 0);
        sub_100508924(v4, 1, 1);
        v7[0] = 256;
        v7[1] = sub_100508C00(v4);
        v5 = sub_10000F034();
        (*(*v5 + 144))(v5, v7);
      }
    }
  }

  sub_10064836C(a1, v3);

  return 1;
}

void sub_100648768(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100643FDC(a1, v4);
  if (v3 || (v3 = sub_100648108(a1, a1 + 649, a1 + 264, v4)) != 0)
  {
    sub_100508BB0(v3, 1);
  }
}

void sub_1006487F0(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  a1[649] = BYTE5(v4);
  a1[650] = BYTE4(v4);
  a1[651] = BYTE3(v4);
  a1[652] = BYTE2(v4);
  a1[653] = BYTE1(v4);
  a1[654] = v4;
  a1[648] = 1;
  v5 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a1 + 649, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Magnet link connected with device %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100648524(a1);
}

void sub_100648960(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  LOBYTE(v11) = BYTE5(v4);
  BYTE1(v11) = BYTE4(v4);
  BYTE2(v11) = BYTE3(v4);
  HIBYTE(v11) = BYTE2(v4);
  LOBYTE(v12) = BYTE1(v4);
  HIBYTE(v12) = v4;
  v5 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "magnet link disconnected with device %@", buf, 0xCu);
  }

  v7 = (a1 + 649);
  if (v11 == *(a1 + 649) && v12 == *(a1 + 653))
  {
    *(a1 + 648) = 0;
  }

  else
  {
    v9 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100063D0C();
      sub_1000BE6F8(v7, buf);
      sub_100855A50(v10, buf, v15, v9);
    }
  }
}

void sub_100648B30(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 648) == 1)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v8);
    v6 = sub_10004DF60(v8);
    v7 = sub_100643FDC(a1, v6);
    if (v7)
    {
      sub_100508134(v7, a1 + 649, a2, a3);
    }
  }
}

void sub_100648C58(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 648) == 1)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v8);
    v6 = sub_10004DF60(v8);
    v7 = sub_100643FDC(a1, v6);
    if (v7)
    {
      sub_1005087CC(v7, (a1 + 649), a2, a3);
    }
  }
}

void sub_100648D80(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v6);
  v4 = sub_10004DF60(v6);
  v5 = sub_100643FDC(a1, v4);
  if (v5)
  {
    sub_100508BB8(v5);
  }
}

void sub_100648E84(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v6);
  v4 = sub_10004DF60(v6);
  v5 = sub_100643FDC(a1, v4);
  if (v5)
  {
    sub_100508BCC(v5);
  }
}

void sub_100648F88(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v7 = a4;
  v8 = *a2 == *(a1 + 649) && *(a2 + 4) == *(a1 + 653);
  v9 = !v8;
  v10 = qword_100BCEA90;
  v11 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      sub_1000BE6F8(a2, &__p);
      if (v32 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      v34 = p_p;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending pair status request to LEA device %s", buf, 0xCu);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }
    }

    for (i = *(a1 + 344); i != *(a1 + 352); ++i)
    {
      v14 = *i;
      v15 = (*i)[1];
      v16 = [v15 UUIDString];
      v17 = [v7 UUIDString];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        LOBYTE(__p) = 0;
        sub_1000216B4(&__p);
        sub_1002EA310(*v14, a3, 0);
        sub_100022214(&__p);
        sub_10002249C(&__p);
        break;
      }
    }
  }

  else
  {
    if (v11)
    {
      sub_1000BE6F8(a3, &__p);
      v19 = v32 >= 0 ? &__p : __p;
      *buf = 136315138;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending pair status request to magnet for device %s", buf, 0xCu);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v31 = 0;
    v32 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    sub_100788FA0(off_100B508C8, v7, &__p);
    v20 = objc_alloc_init(NSMutableArray);
    v21 = __p;
    if (__p != &v31)
    {
      do
      {
        v22 = [NSString alloc];
        v23 = v21 + 32;
        if (v21[55] < 0)
        {
          v23 = *v23;
        }

        v24 = [v22 initWithUTF8String:v23];
        [v20 addObject:v24];

        v25 = *(v21 + 1);
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
            v26 = *(v21 + 2);
            v8 = *v26 == v21;
            v21 = v26;
          }

          while (!v8);
        }

        v21 = v26;
      }

      while (v26 != &v31);
    }

    v27 = sub_100432610();
    sub_1000BE6F8(a3, v28);
    (*(*v27 + 168))(v27, v28, v7, v20);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    sub_10004B61C(&__p, v31);
  }
}

void sub_100649384(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, _OWORD *a6, _OWORD *a7, void *a8)
{
  v15 = a8;
  if (*a2 == *(a1 + 649) && *(a2 + 4) == *(a1 + 653))
  {
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_10004FFDC(off_100B508C8, v15, v26);
    v17 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(a3, __p);
      v18 = v25 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sending store bonding info request to magnet link for device %s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19 = sub_100432610();
    sub_1000BE6F8(a3, v22);
    if (SHIBYTE(v27) < 0)
    {
      sub_100008904(v20, v26[0], v26[1]);
    }

    else
    {
      *v20 = *v26;
      v21 = v27;
    }

    (*(*v19 + 176))(v19, v22, v20, a4, a5, a6, a7);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  else
  {
    sub_100649620(a1, a3, a4, a5, a6, a7, v15);
  }
}

void sub_1006495B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_100649620(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _OWORD *a5, _OWORD *a6, void *a7)
{
  v10 = a7;
  v11 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending bonding info to LEA device", buf, 2u);
  }

  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v13 = *i;
    v14 = *(*i + 8);
    v15 = [v14 UUIDString];
    v16 = [v10 UUIDString];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      if (a3)
      {
        v18 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v13 + 8);
          *buf = 138412290;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending 'central identification' command to device %@", buf, 0xCu);
        }

        v27 = 0;
        sub_1000216B4(&v27);
        sub_1002EA368(*v13, a2, a3, a4);
        sub_100022214(&v27);
        v20 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v13 + 8);
          *buf = 138412290;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending 'identity information' command to device %@", buf, 0xCu);
        }

        sub_1000618AC(&v27);
        sub_1002EA3FC(*v13, a2, a6);
        sub_100022214(&v27);
        v22 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v13 + 8);
          *buf = 138412290;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending 'encryption information' command to device %@", buf, 0xCu);
        }

        sub_1000618AC(&v27);
        sub_1002EA484(*v13, a2, a5);
        sub_100022214(&v27);
        sub_10002249C(&v27);
      }

      break;
    }
  }
}

void sub_10064993C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v29[0] = 0;
  v29[1] = 0;
  sub_1000498D4(off_100B508C8, (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16) | (a3[4] << 8) | a3[5], 0, 0, 0, 0, v29);
  v8 = sub_10004DF60(v29);
  v9 = sub_100643FDC(a1, v8);
  v10 = v9;
  if (v9)
  {
    LOWORD(v23[0]) = a4;
    WORD1(v23[0]) = sub_100508C00(v9);
    v11 = sub_10000F034();
    (*(*v11 + 144))(v11, v23);
    sub_100508BA8(v10, 0);
  }

  v12 = qword_100BCEA90;
  if (a4 == 2)
  {
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    sub_1000BE6F8(a2, v23);
    v13 = v24;
    v14 = v23[0];
    sub_1000BE6F8(a3, __p);
    v15 = v23;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315394;
    v26 = v15;
    v27 = 2080;
    v28 = v16;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "LEA easy pair failed between devices %s and %s", buf, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    sub_1000BE6F8(a2, v23);
    v17 = v24;
    v18 = v23[0];
    sub_1000BE6F8(a3, __p);
    v19 = v23;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v22 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136315394;
    v26 = v19;
    v27 = 2080;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LEA easy pair succeeded between devices %s and %s", buf, 0x16u);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

LABEL_24:
}

void sub_100649BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100649C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  return (*(*a1 + 184))(a1, a2, a3, 0, &v6, v7, v5, a4);
}

uint64_t sub_100649CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  return (*(*(a1 - 264) + 184))(a1 - 264, a2, a3, 0, &v6, v7, v5, a4);
}

void sub_100649D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100649E14;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_100649E14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCEA90;
  v4 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received lePairingCompleted", buf, 2u);
  }

  if (sub_1006447FC(v4, *(a1 + 32)))
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting LE Audio over MFi LEA", buf, 2u);
    }
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(v13, "IsHearingAid");
    if (sub_10004EB40(v6, v7, v13))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v8 = off_100B508C8;
      v9 = *(a1 + 32);
      sub_100007E30(__p, "HearingAidSupportsWatch");
      v10 = sub_10004EB40(v8, v9, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = 0;
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
      if (!v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    if (*(v2 + 655))
    {
      if (*(v2 + 648) == 1)
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643EB0(qword_100B50918, *(a1 + 32));
      }

      else
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643F54(qword_100B50918, *(a1 + 32));
      }
    }
  }
}

void sub_100649FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A038(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A104;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10064A104(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received leDeviceUnpaired", buf, 2u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008550D4();
  }

  v4 = off_100B508C8;
  v5 = *(a1 + 32);
  sub_100007E30(v11, "IsHearingAid");
  if (sub_10004EB40(v4, v5, v11))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(__p, "HearingAidSupportsWatch");
    v8 = sub_10004EB40(v6, v7, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  if (*(v2 + 655))
  {
    if (*(v2 + 648) == 1)
    {
      if (qword_100B50920 != -1)
      {
        sub_100855724();
      }

      sub_100648658(qword_100B50918, *(a1 + 32));
    }

    else
    {
      if (qword_100B50920 != -1)
      {
        sub_100855724();
      }

      sub_100648768(qword_100B50918, *(a1 + 32));
    }
  }
}

void sub_10064A2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A2E8(uint64_t a1)
{
  sub_10064A4B8(a1);

  operator delete();
}

uint64_t *sub_10064A338(uint64_t *a1)
{
  if (a1[4])
  {
    sub_1006420F4(a1);
  }

  sub_1003A2794(*a1);
  return a1;
}

uint64_t sub_10064A38C(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;

  return sub_1006401BC(v2, a1);
}

uint64_t sub_10064A3F8(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;

  return sub_100641344(v2, a1);
}

uint64_t sub_10064A464(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;

  return sub_100640E64(v2, a1);
}

uint64_t sub_10064A4B8(uint64_t a1)
{
  *a1 = off_100B03260;
  *(a1 + 256) = off_100B03340;
  *(a1 + 264) = off_100B03390;
  *(a1 + 272) = off_100B033C0;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 560);
  v3 = *(a1 + 400);
  if (v3)
  {
    *(a1 + 408) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(a1 + 368, *(a1 + 376));
  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 280);

  return sub_10032F580(a1);
}

uint64_t sub_10064A990(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100008108(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

void *sub_10064AA68(void *a1, xpc_connection_t connection)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10064AB5C;
  handler[3] = &unk_100AEB340;
  handler[4] = a1;
  xpc_connection_set_event_handler(connection, handler);
  v4 = +[AudioDeviceManager sharedManager];
  xpc_connection_set_target_queue(connection, [v4 getXpcQueue]);

  xpc_connection_resume(connection);
  return a1;
}

void sub_10064AB34(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_10064AB64(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, "kBTAudioMsgMethod") == 13)
    {
      remote_connection = xpc_dictionary_get_remote_connection(object);
      *v30 = 0u;
      v31 = 0u;
      xpc_connection_get_audit_token();
      v9 = xpc_copy_code_signing_identity_for_token();
      v10 = v9;
      if (v9 && (!strcmp(v9, "com.apple.mediaserverd") || !strcmp(v10, "com.apple.audio.coreaudiod") || !strcmp(v10, "com.apple.audio.Core-Audio-Driver-Service") || !strcmp(v10, "com.apple.audiomxd")))
      {
        v11 = 1;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = "";
      }

      std::string::assign((a1 + 8), v12);
      free(v10);
      v15 = sub_10000E92C();
      if ((*(*v15 + 8))(v15))
      {
        v29 = 0;
        v16 = sub_10064B074();
        v17 = sub_10000E92C();
        sub_100007E30(buf, "BTHALAudioPlugin");
        sub_100007E30(__p, "BypassAllowlist");
        (*(*v17 + 72))(v17, buf, __p, &v29);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v35 < 0)
        {
          operator delete(*buf);
        }

        v18 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v19 = "No";
          if (v16)
          {
            v20 = "Yes";
          }

          else
          {
            v20 = "No";
          }

          if (v29)
          {
            v19 = "Yes";
          }

          *buf = 136446466;
          *&buf[4] = v20;
          v33 = 2082;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bypassing proc check for audio plugin clients via entitlement = %{public}s , allowList = %{public}s", buf, 0x16u);
        }

        v21 = v16 | v29;
      }

      else
      {
        v21 = 0;
      }

      if ((v11 | v21))
      {
        v22 = +[AudioDeviceManager sharedManager];
        [v22 republishAllAudioDevices];
      }

      else
      {
        v23 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100855BD0(remote_connection, v23);
        }

        xpc_connection_cancel(remote_connection);
      }
    }

    else
    {
      v30[0] = 0;
      v30[1] = 0;
      *&v31 = 0;
      string = xpc_dictionary_get_string(object, "kBTAudioMsgDeviceUid");
      sub_100007E30(v30, string);
      v14 = +[AudioDeviceManager sharedManager];
      if (SBYTE7(v31) < 0)
      {
        sub_100008904(v25, v30[0], v30[1]);
      }

      else
      {
        *v25 = *v30;
        v26 = v31;
      }

      [v14 forwardEvent:object forUid:v25];
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SBYTE7(v31) < 0)
      {
        operator delete(v30[0]);
      }
    }
  }

  else if (type == &_xpc_type_error)
  {
    v5 = xpc_dictionary_get_string(object, _xpc_error_key_description);
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100855AE0(v5, v6);
    }

    if (object == &_xpc_error_connection_invalid)
    {
      v24 = +[AudioDeviceManager sharedManager];
      [v24 removeXpcClient:a1];
    }

    else
    {
      v7 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100855B58(v5, v7);
      }
    }
  }
}

void sub_10064AF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10064B018(uint64_t a1)
{
  xpc_connection_cancel(*a1);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10064B054(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10064B074()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = xpc_get_type(v0) == &_xpc_type_BOOL && xpc_BOOL_get_value(v1);
  xpc_release(v1);
  return v2;
}

char *sub_10064B0E0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100008904(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void sub_10064B108(uint64_t a1, uint64_t a2)
{
  v3 = sub_100375F94(a1, "LEASendThread");
  *v3 = off_100B03698;
  *(v3 + 168) = a2;
  *(v3 + 184) = **(a2 + 536);
  *(v3 + 200) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  operator new[]();
}

uint64_t sub_10064B1C8(void *a1)
{
  *a1 = off_100B03698;
  if (a1[26])
  {
    operator delete[]();
  }

  return sub_100375A90(a1);
}

uint64_t sub_10064B250(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, *(a1 + 168) + 280);
  v2 = *(*(a1 + 168) + 536);
  if (v2 && *(v2 + 24) == a1)
  {
    v5 = *(a1 + 240);
    v3 = 1;
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!(*(*a1 + 112))(a1))
        {
          goto LABEL_4;
        }

        *(a1 + 240) = 1;
      }

      (*(*a1 + 120))(a1);
      *(a1 + 240) = 2;
    }

    else if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 != 4)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

LABEL_19:
      ++*(a1 + 200);
      if (!(*(*a1 + 136))(a1))
      {
        goto LABEL_4;
      }

      *(a1 + 240) = 4;
LABEL_21:
      ++*(a1 + 201);
      *(a1 + 224) = 0;
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      goto LABEL_4;
    }

    (*(*a1 + 128))(a1);
    *(a1 + 240) = 3;
    goto LABEL_19;
  }

  v3 = 0;
LABEL_4:
  sub_1000088CC(v6);
  return v3;
}

BOOL sub_10064B404(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  if (v2 == v3)
  {
    return sub_1002EA50C(0);
  }

  v4 = 0;
  do
  {
    if (*(*v2 + 32) == 8)
    {
      if (*(*v2 + 48) == 3)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }
    }

    v2 += 8;
  }

  while (v2 != v3);
  return sub_1002EA50C(v4);
}

void sub_10064B44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  v5 = v4[2];
  if (v5 == 4)
  {
    if (v4[4])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v8 + 1 >= v4[3] && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_100855C60(&v10, v11);
        }

        *(a2 + v9++) = *(a2 + v8 + 1) | (16 * *(a2 + v8));
        v4 = *(a1 + 192);
        v8 += 2;
      }

      while (v9 < v4[4]);
    }
  }

  else if (v5 == 6)
  {
    if (v4[4])
    {
      v6 = 0;
      do
      {
        v7 = (8 * v6) / 6u;
        if (v7 + 1 >= v4[3] && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_100855C60(&v10, v11);
        }

        *(a2 + v6) = ((*(a2 + v7 + 1) >> 2) >> ((4 - (8 * v6 - 6 * v7)) & 0xFE)) | (*(a2 + v7) >> 2 << (8 * v6 - 6 * v7 + 2));
        ++v6;
        v4 = *(a1 + 192);
      }

      while (v6 < v4[4]);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
    sub_100855CAC();
  }
}

void sub_10064B640(void *a1)
{
  v1 = a1[24];
  if (*(v1 + 2) != 8)
  {
    if (a1[28] != *(v1 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855D2C();
    }

    sub_10064B44C(a1, a1[26]);
    a1[28] = *(a1[24] + 4);
  }
}

uint64_t sub_10064B760(uint64_t a1)
{
  *a1 = off_100B03738;
  free(*(a1 + 248));

  return sub_10064B1C8(a1);
}

void sub_10064B7B8(uint64_t a1)
{
  *a1 = off_100B03738;
  free(*(a1 + 248));
  sub_10064B1C8(a1);

  operator delete();
}

BOOL sub_10064B824(uint64_t *a1)
{
  v1 = a1 + 28;
  v2 = a1[28];
  v3 = a1[24];
  v4 = v3[3];
  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855FE0();
    }

    return 1;
  }

  if ((v3[5] & 1) == 0)
  {
    v9 = sub_1003A2C24(a1[23], (a1[26] + v2), v4 - v2);
    a1[28] += v9;
    return v9 == v5;
  }

  v7 = a1[27];
  if (v3[4])
  {
    if (!(v4 % v5))
    {
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855DAC();
    }

    result = 0;
    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  if (v2)
  {
    return 1;
  }

  do
  {
LABEL_19:
    if (v7 < v2)
    {
      v12 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100855F68(v7, v12);
      return 0;
    }

    v10 = sub_1003A2C94(a1[23], (a1[26] + v2), v7 - v2);
    if (!v10)
    {
      v13 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_100855EEC(v1, v13);
      return 0;
    }

    v11 = a1[24];
    if (!*(v11 + 4))
    {
      v14 = *v1 + v10;
      *v1 = v14;
      if (v14 > *(v11 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      return 1;
    }

    if (*(v11 + 3) % v10)
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100855E14();
      return 0;
    }

    v2 = *v1 + v10;
    *v1 = v2;
    v5 -= v10;
  }

  while (v5);
  if (v2 != *(v11 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
LABEL_26:
    sub_100855E80();
  }

  return 1;
}

BOOL sub_10064BA88(uint64_t a1)
{
  v2 = sub_10000C7D0();
  v3 = sub_100410864(v2);
  v4 = *(a1 + 232);
  if (*(*(a1 + 192) + 6) == 1)
  {
    if (!v4)
    {
      v5 = (*(a1 + 224) - 1) / (*(a1 + 176) - 1);
      if ((v5 & 0xFC) != 0 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_10085609C();
      }

      **(a1 + 248) = v5 | (4 * *(a1 + 201));
      v4 = *(a1 + 232);
    }

    v6 = (a1 + 248);
    v7 = *(a1 + 224) - v4;
    v8 = *(a1 + 176) - 1;
    v9 = v7 <= v8;
    if (v7 >= v8)
    {
      v10 = *(a1 + 176) - 1;
    }

    else
    {
      v10 = *(a1 + 224) - v4;
    }

    memcpy((*(a1 + 248) + 1), (*(a1 + 208) + v4), v10);
    v11 = v10 + 1;
  }

  else
  {
    if (v4 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10085601C();
    }

    v6 = (a1 + 208);
    v10 = *(a1 + 224);
    if (v10 > *(a1 + 176))
    {
      v12 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v20 = "fAudioBuffer.getFillLevel() <= fMaxPacketSize";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
        v10 = *(a1 + 224);
      }
    }

    v9 = 1;
    v11 = v10;
  }

  v13 = *v6;
  *(a1 + 232) += v10;
  v18 = 0;
  sub_1000216B4(&v18);
  if ((v3 & 1) != 0 || sub_10064B404(a1))
  {
    v14 = *(a1 + 168);
    v15 = *(v14 + 344);
    if (v15 != *(v14 + 352))
    {
      do
      {
        v16 = *v15;
        if (*(*v15 + 32) == 8 && *(v16 + 48) == 3 && sub_1002EA5B0(*v16, v13, v11, *(a1 + 200), v3 ^ 1u) == 410 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_10085615C(buf, &v20);
        }

        ++v15;
      }

      while (v15 != *(*(a1 + 168) + 352));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_10085611C();
  }

  sub_10002249C(&v18);
  return v9;
}

uint64_t sub_10064BE4C(uint64_t a1)
{
  *a1 = off_100B037D8;
  free(*(a1 + 248));
  free(*(a1 + 256));
  free(*(a1 + 264));

  return sub_10064B1C8(a1);
}

void sub_10064BEB8(uint64_t a1)
{
  sub_10064BE4C(a1);

  operator delete();
}

BOOL sub_10064BEF0(uint64_t *a1)
{
  v1 = a1 + 28;
  v2 = a1[28];
  v3 = a1[24];
  v4 = v3[3];
  v5 = 2 * v4 - v2;
  if (2 * v4 == v2)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855FE0();
    }

    return 1;
  }

  if ((v3[5] & 1) == 0)
  {
    v8 = sub_1003A2C24(a1[23], (a1[26] + v2), 2 * v4 - v2);
    a1[28] += v8;
    return v8 == v5;
  }

  v13 = 0;
  v14 = 0;
  if (v3[4])
  {
    if (!(2 * v4 % v5))
    {
      goto LABEL_14;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855DAC();
    }

    result = 0;
    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  if (v2)
  {
    return 1;
  }

  do
  {
LABEL_14:
    if (!sub_1003A2D04(a1[23], (a1[32] + (v2 >> 1)), &v14, v4 - (v2 >> 1), (a1[33] + (v2 >> 1)), &v13, v4 - (v2 >> 1)))
    {
      v11 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_1008561A8(v1, v11);
      return 0;
    }

    if (!(v14 + v13))
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100856304();
      return 0;
    }

    v9 = a1[24];
    if (!*(v9 + 4))
    {
      v12 = v13 + v14 + *v1;
      *v1 = v12;
      if (v12 > 2 * *(v9 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      return 1;
    }

    v4 = *(v9 + 3);
    v10 = v13 + v14;
    if (2 * v4 % (v13 + v14))
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100856224();
      return 0;
    }

    v2 = *v1 + v10;
    *v1 = v2;
    v13 = 0;
    v14 = 0;
    v5 -= v10;
  }

  while (v5);
  if (v2 != 2 * *(v9 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
LABEL_21:
    sub_100856294();
  }

  return 1;
}

void *sub_10064C180(void *result)
{
  if ((*(result[24] + 5) & 1) == 0 && result[28] >= 2uLL)
  {
    v1 = 0;
    v2 = result[26];
    do
    {
      *(result[32] + v1) = *v2;
      *(result[33] + v1++) = v2[1];
      v2 += 2;
    }

    while (v1 < result[28] >> 1);
  }

  return result;
}

void sub_10064C1D0(void *a1)
{
  v1 = a1[24];
  if (*(v1 + 2) != 8)
  {
    if (a1[28] != 2 * *(v1 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100856340();
    }

    sub_10064B44C(a1, a1[32]);
    sub_10064B44C(a1, a1[33]);
    a1[28] = 2 * *(a1[24] + 4);
  }
}

BOOL sub_10064C264(uint64_t a1)
{
  v2 = sub_10000C7D0();
  v3 = sub_100410864(v2);
  if (*(*(a1 + 192) + 6) == 1)
  {
    v4 = *(a1 + 232);
    if (!v4)
    {
      v5 = (*(a1 + 224) - 1) / (*(a1 + 176) - 1);
      if (v5 >= 4u && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_1008563C0();
      }

      **(a1 + 248) = v5 | (4 * *(a1 + 201));
      v4 = *(a1 + 232);
    }

    v6 = *(a1 + 224) - v4;
    v7 = *(a1 + 176) - 1;
    v8 = v6 <= v7;
    if (v6 >= v7)
    {
      v9 = *(a1 + 176) - 1;
    }

    else
    {
      v9 = *(a1 + 224) - v4;
    }

    memcpy((*(a1 + 248) + 1), (*(a1 + 208) + v4), v9);
    v10 = *(a1 + 248);
    LOWORD(v11) = v9 + 1;
    *(a1 + 232) += v9;
  }

  else
  {
    if (*(a1 + 232) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10085601C();
    }

    v12 = *(a1 + 224);
    if (v12 > 2 * *(a1 + 176))
    {
      v13 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v25 = "fAudioBuffer.getFillLevel() <= (fMaxPacketSize * 2)";
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
        v12 = *(a1 + 224);
      }
    }

    v10 = 0;
    *(a1 + 232) += v12;
    v11 = v12 >> 1;
    v8 = 1;
  }

  v23 = 0;
  sub_1000216B4(&v23);
  if ((v3 & 1) != 0 || sub_10064B404(a1))
  {
    v14 = *(a1 + 168);
    v15 = *(v14 + 344);
    if (v15 != *(v14 + 352))
    {
      do
      {
        v16 = *v15;
        if (*(*v15 + 32) == 8 && *(v16 + 48) == 3)
        {
          v17 = *(a1 + 192);
          if ((*(v17 + 6) & 1) == 0 && *(v17 + 8) == 1)
          {
            if ((*(v16 + 72) & 8) != 0)
            {
              v18 = 264;
            }

            else
            {
              v18 = 256;
            }

            v10 = *(a1 + v18);
          }

          if (v10)
          {
            if (sub_1002EA5B0(*v16, v10, v11, *(a1 + 200), v3 ^ 1u) == 410 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
            {
              sub_10085615C(buf, &v25);
            }
          }

          else
          {
            v19 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_100856434(&v21, v22, v19);
            }

            v10 = 0;
          }
        }

        ++v15;
      }

      while (v15 != *(*(a1 + 168) + 352));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_10085611C();
  }

  sub_10002249C(&v23);
  return v8;
}

void sub_10064C89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void *sub_10064DBB0(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 64);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;
    }

    v8 = v4[5];

    return [v8 _update];
  }

  return result;
}

uint64_t sub_10064DCD4(uint64_t a1)
{
  *sub_100589578(a1, "LEAService", 0x10000) = &off_100B03878;
  if (qword_100B50920 != -1)
  {
    sub_1008564F8();
  }

  sub_100589880(a1, qword_100B50918);
  return a1;
}

uint64_t sub_10064DD64(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100539554(a2, 2u, 1, &v4, 0);
}

void sub_10064DDC0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

void sub_10064DE64(uint64_t a1)
{
  v2 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v2 = *v2;
  }

  v3 = [NSString stringWithUTF8String:v2];
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10066945C;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10064DF4C(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v4 = reply;
    v5 = xpc_array_create(0, 0);
    v6 = xpc_dictionary_create(0, 0, 0);
    if (qword_100B508A0 != -1)
    {
      sub_100856798();
    }

    sub_100575E9C();
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    xpc_dictionary_set_string(v6, "Local Device", p_p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    xpc_array_append_value(v5, v6);
    xpc_release(v6);
    xpc_dictionary_set_value(v4, "kCBMsgArgs", v5);
    xpc_release(v5);
    xpc_connection_send_message(*(a1 + 16), v4);
    xpc_release(v4);
  }
}

void sub_10064E058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064E074(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 2)
  {
    v4 = sub_10000E92C();
    if ((*(*v4 + 8))(v4))
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      if (value)
      {
        v6 = value;
        int64 = xpc_dictionary_get_int64(value, "kCBMsgId");
        v8 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = int64;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling debug command %llu", buf, 0xCu);
        }

        v9 = xpc_dictionary_get_value(v6, "kCBMsgArgs");
        v16 = v9;
        switch(int64)
        {
          case 1:
            v17 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v18 = sub_10000C7D0();
            (*(*v18 + 552))(v18, v17 != 0, 0);
            return;
          case 2:
            v54 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v55 = sub_10009BD9C();
            (*(*v55 + 112))(v55, v54 != 0);
            return;
          case 3:
            v45 = sub_10000C7D0();
            (*(*v45 + 1296))(v45);
            return;
          case 4:
            LOWORD(v302[0]) = 0;
            LOWORD(length) = 0;
            LOWORD(v281[0]) = 0;
            LOWORD(v299) = 0;
            v51 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v52 = *(sub_10000C7D0() + 800);
            if ((v52 - 19) >= 0x7BD && (v52 - 5000) > 0x3E7)
            {
              v53 = sub_10000C7D0();
              (*(*v53 + 1200))(v53, v51, v302, &length, v281, &v299);
LABEL_121:
              v200 = 0;
              v201 = 0;
              v202 = 0;
              v203 = 0;
              v204 = 0;
              v205 = 0;
              v206 = 0;
              v207 = 0;
              v208 = 0;
              v209 = 0;
              v210 = 0;
              v211 = 0;
              v212 = 0;
              v213 = 0;
              v215 = 0;
              obja = 0;
              v126 = 0;
              v127 = 0;
              v128 = 0;
              v129 = 0;
              v130 = 0;
              v131 = 0;
              v132 = 0;
              v133 = 0;
              goto LABEL_122;
            }

            v319 = 0;
            v318 = 0u;
            v317 = 0u;
            v316 = 0u;
            v315 = 0u;
            v314 = 0u;
            v313 = 0u;
            v312 = 0u;
            v311 = 0u;
            v310 = 0u;
            memset(v309, 0, sizeof(v309));
            *v308 = 0u;
            *v307 = 0u;
            memset(buf, 0, sizeof(buf));
            v125 = sub_10000C7D0();
            if ((*(*v125 + 1208))(v125, v51, buf))
            {
              goto LABEL_121;
            }

            LOWORD(v302[0]) = *&buf[4];
            LOWORD(length) = *&buf[8];
            LOWORD(v281[0]) = *&buf[12];
            LOWORD(v299) = *&buf[16];
            v133 = DWORD2(v313);
            v132 = HIDWORD(v313);
            v131 = v314;
            v130 = WORD2(v314);
            v129 = WORD4(v314);
            v128 = WORD6(v314);
            v127 = v315;
            v126 = WORD2(v315);
            obja = WORD4(v315);
            v215 = WORD6(v315);
            v213 = v316;
            v212 = WORD2(v316);
            v211 = DWORD2(v316);
            v210 = HIDWORD(v316);
            v209 = v317;
            v208 = DWORD1(v317);
            v207 = DWORD2(v317);
            v206 = HIDWORD(v317);
            v205 = v318;
            v204 = WORD1(v318);
            v203 = WORD2(v318);
            v202 = WORD3(v318);
            v200 = v319;
            v201 = *(&v318 + 1);
LABEL_122:
            reply = xpc_dictionary_create_reply(a2);
            v135 = reply;
            if (reply)
            {
              xpc_dictionary_set_uint64(reply, "kCBTransmitStat", LOWORD(v302[0]));
              xpc_dictionary_set_uint64(v135, "kCBReceiveStat", length);
              xpc_dictionary_set_uint64(v135, "kCBSleepStat", LOWORD(v281[0]));
              xpc_dictionary_set_uint64(v135, "kCBOthersStat", v299);
              xpc_dictionary_set_uint64(v135, "kCBiPACounter", v133);
              xpc_dictionary_set_uint64(v135, "kCBePACounter", v132);
              xpc_dictionary_set_uint64(v135, "kCBlpScanCoreReceivePercentage", v131);
              xpc_dictionary_set_uint64(v135, "kCBtxbfTransmitPercentage", v130);
              xpc_dictionary_set_uint64(v135, "kCBmrcReceivePercentage", v129);
              xpc_dictionary_set_uint64(v135, "kCBepaTransmitPercentage", v128);
              xpc_dictionary_set_uint64(v135, "kCBtxbfEpaTransmitPercentage", v127);
              xpc_dictionary_set_uint64(v135, "kCBrxScanPercentage", v126);
              xpc_dictionary_set_uint64(v135, "mainCoreELNAOnPercentage", obja);
              xpc_dictionary_set_uint64(v135, "mainCoreELNAOffPercentage", v215);
              xpc_dictionary_set_uint64(v135, "scanCoreELNAOnPercentage", v213);
              xpc_dictionary_set_uint64(v135, "scanCoreELNAOffPercentage", v212);
              xpc_dictionary_set_uint64(v135, "kCBm154Tx", v211);
              xpc_dictionary_set_uint64(v135, "kCBm154Rx", v210);
              xpc_dictionary_set_uint64(v135, "kCBiPAThreadCounter", v209);
              xpc_dictionary_set_uint64(v135, "kCBePAThreadCounter", v208);
              xpc_dictionary_set_uint64(v135, "kCBiPA5gCounter", v207);
              xpc_dictionary_set_uint64(v135, "kCBePA5gCounter", v206);
              xpc_dictionary_set_uint64(v135, "kCBtxbf5gTxPct", v205);
              xpc_dictionary_set_uint64(v135, "kCBmrc5gRxPct", v204);
              xpc_dictionary_set_uint64(v135, "kCBepa5gTxPct", v203);
              xpc_dictionary_set_uint64(v135, "kCBtxbf5gEpaTxPct", v202);
              xpc_dictionary_set_uint64(v135, "kCBduration5gTx", v201);
              xpc_dictionary_set_uint64(v135, "kCBduration5gRx", v200);
              xpc_connection_send_message(*(a1 + 16), v135);
              xpc_release(v135);
            }

            break;
          case 5:
            v28 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v29 = sub_10000C7D0();
            if (sub_1004106D0(v29, 0xBB8u))
            {
              memset(v309, 0, 28);
              *v308 = 0u;
              *v307 = 0u;
              memset(buf, 0, sizeof(buf));
              v30 = sub_10000C7D0();
              if (!(*(*v30 + 1648))(v30, v28, buf))
              {
                v31 = xpc_dictionary_create_reply(a2);
                v32 = v31;
                if (v31)
                {
                  xpc_dictionary_set_uint64(v31, "kCBTimeStamp", *buf);
                  xpc_dictionary_set_uint64(v32, "kCBActiveDuration", *&buf[4]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreTxPercentage", *&buf[8]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreRxPercentage", *&buf[10]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreSleepPercentage", *&buf[12]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreIdlePercentage", *&buf[14]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreRxScanPercentage", *&buf[16]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreElnaOnPercentage", *&buf[18]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreElnaOffPercentage", *&buf[20]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreMrcRxPercentage", *&buf[22]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreIpaTxPercentage", *&buf[24]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreEpaTxPercentage", *&buf[26]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreTxbfTxPercentage", *&buf[28]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreEpaTxbfTxPercentage", *&buf[30]);
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreM154TxPercentage", LOWORD(v307[0]));
                  xpc_dictionary_set_uint64(v32, "kCBMainCoreM154RxPercentage", WORD1(v307[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreTxPercentage", WORD2(v307[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreRxPercentage", HIWORD(v307[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreSleepPercentage", LOWORD(v307[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreIdlePercentage", WORD1(v307[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreRxScanPercentage", WORD2(v307[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreElnaOnPercentage", HIWORD(v307[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreElnaOffPercentage", LOWORD(v308[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreMrcRxPercentage", WORD1(v308[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreIpaTxPercentage", WORD2(v308[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreEpaTxPercentage", HIWORD(v308[0]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreTxbfTxPercentage", LOWORD(v308[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreEpaTxbfTxPercentage", WORD1(v308[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreM154TxPercentage", WORD2(v308[1]));
                  xpc_dictionary_set_uint64(v32, "kCBSecondaryCoreM154RxPercentage", HIWORD(v308[1]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreTxPercentage", LOWORD(v309[0]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreRxPercentage", WORD1(v309[0]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreSleepPercentage", WORD2(v309[0]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreIdlePercentage", HIWORD(v309[0]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreRxScanPercentage", LOWORD(v309[1]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreElnaOnPercentage", WORD1(v309[1]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreElnaOffPercentage", WORD2(v309[1]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreMrcRxPercentage", HIWORD(v309[1]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreIpaTxPercentage", LOWORD(v309[2]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreEpaTxPercentage", WORD1(v309[2]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreTxbfTxPercentage", WORD2(v309[2]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreEpaTxbfTxPercentage", HIWORD(v309[2]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreM154TxPercentage", LOWORD(v309[3]));
                  xpc_dictionary_set_uint64(v32, "kCBScanCoreM154RxPercentage", WORD1(v309[3]));
                  xpc_connection_send_message(*(a1 + 16), v32);
                  xpc_release(v32);
                }
              }
            }

            return;
          case 6:
            memset(buf, 0, 24);
            v199 = sub_10037CA58;
            if (sub_100013CA4(v9, 0, v10, v11, v12, v13, v14, v15, "kCBCSSetSchedulingShouldUse"))
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_100856A08();
              }
            }

            else
            {
              v136 = sub_10000C7D0();
              LOBYTE(v199) = 0;
              HIDWORD(v198) = *&buf[20];
              LOWORD(v198) = *&buf[16];
              (*(*v136 + 1376))(v136, buf[0], buf[1], *&buf[2], *&buf[4], *&buf[8], *&buf[12], buf[14], v198, v199, buf, "kCBCSSetSchedulingShouldReject", sub_10037CA58, &buf[1], "kCBCSSetSchedulingConnEventCount", sub_10037CAD8, &buf[2], "kCBCSSetSchedulingOffsetMin", sub_1000DB500, &buf[4], "kCBCSSetSchedulingOffsetMax", sub_1000DB500, &buf[8], "kCBCSSetSchedulingEventInterval", sub_10037CAD8, &buf[12], "kCBCSSetSchedulingSubeventsPerEvent", sub_10037CA58, &buf[14], "kCBCSSetSchedulingSubeventInterval", sub_10037CAD8, &buf[16], "kCBCSSetSchedulingSubeventLenMax", sub_1000DB500, &buf[20], 0);
            }

            return;
          case 7:
            v83 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            if (v83 > 6)
            {
              if (v83 <= 9)
              {
                if (v83 == 7)
                {
                  v165 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerCryptoVectorValidation", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CC744();
                }

                else if (v83 == 8)
                {
                  v180 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerGetCurrentAdvertisingPayload", buf, 2u);
                  }

                  *&buf[8] = 0;
                  *buf = 0;
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_10050F874(off_100B54768, buf);
                  v181 = xpc_dictionary_create_reply(a2);
                  if (v181)
                  {
                    v182 = sub_10000C5F8(buf);
                    v183 = sub_10000C5E0(buf);
                    xpc_dictionary_set_data(v181, "kCBMsgArgAdvertisingPayload", v182, v183);
                    xpc_connection_send_message(*(a1 + 16), v181);
                    xpc_release(v181);
                  }

                  *buf = &off_100AE0A78;
                  if (*&buf[8])
                  {
                    sub_10000C808(*&buf[8]);
                  }
                }

                else
                {
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  v214 = [*(off_100B54768 + 21) copy];
                  v110 = xpc_array_create(0, 0);
                  v293 = 0u;
                  v292 = 0u;
                  v291 = 0u;
                  v290 = 0u;
                  obj = v214;
                  v111 = [obj countByEnumeratingWithState:&v290 objects:v304 count:16];
                  if (v111)
                  {
                    v112 = *v291;
                    do
                    {
                      for (i = 0; i != v111; i = i + 1)
                      {
                        if (*v291 != v112)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v114 = *(*(&v290 + 1) + 8 * i);
                        v115 = xpc_dictionary_create(0, 0, 0);
                        v116 = [v114 objectForKey:@"RPIHistoryTime"];
                        v117 = v116;
                        xpc_dictionary_set_string(v115, "RPIHistoryTime", [v116 UTF8String]);

                        memset(buf, 0, 20);
                        v118 = [v114 objectForKey:@"RPIHistoryOTAPayload"];
                        [v118 getBytes:buf length:20];

                        xpc_dictionary_set_data(v115, "RPIHistoryOTAPayload", buf, 0x14uLL);
                        v119 = [v114 objectForKey:@"RPIHistoryAEMVersion"];
                        xpc_dictionary_set_int64(v115, "RPIHistoryAEMVersion", [v119 intValue]);

                        v120 = [v114 objectForKey:@"RPIHistoryAEMTxPower"];
                        xpc_dictionary_set_int64(v115, "RPIHistoryAEMTxPower", [v120 intValue]);

                        v121 = [v114 objectForKey:@"RPIHistorySecondsSince1970"];
                        xpc_dictionary_set_int64(v115, "RPIHistorySecondsSince1970", [v121 intValue]);

                        v122 = [v114 objectForKey:@"RPIHistoryENIntervalNumber"];
                        xpc_dictionary_set_int64(v115, "RPIHistoryENIntervalNumber", [v122 intValue]);

                        xpc_array_append_value(v110, v115);
                        xpc_release(v115);
                      }

                      v111 = [obj countByEnumeratingWithState:&v290 objects:v304 count:16];
                    }

                    while (v111);
                  }

                  v123 = xpc_dictionary_create_reply(a2);
                  v124 = v123;
                  if (v123)
                  {
                    xpc_dictionary_set_value(v123, "kCBMsgArgAdvertisingPayloadHistory", v110);
                    xpc_connection_send_message(*(a1 + 16), v124);
                    xpc_release(v124);
                  }
                }

                return;
              }

              switch(v83)
              {
                case 10:
                  v167 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerGetTEKHistory", buf, 2u);
                  }

                  v168 = xpc_dictionary_get_int64(v16, "kCBMsgArgToday");
                  v169 = xpc_dictionary_get_int64(v16, "KCBMsgArgForceRefresh");
                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  v170 = sub_1007CCF40(off_100B508B8, v168 != 0, v169 != 0);
                  v171 = xpc_array_create(0, 0);
                  v297 = 0u;
                  v296 = 0u;
                  v295 = 0u;
                  v294 = 0u;
                  v172 = v170;
                  v173 = [v172 countByEnumeratingWithState:&v294 objects:v305 count:16];
                  if (v173)
                  {
                    v174 = *v295;
                    do
                    {
                      for (j = 0; j != v173; j = j + 1)
                      {
                        if (*v295 != v174)
                        {
                          objc_enumerationMutation(v172);
                        }

                        v176 = *(*(&v294 + 1) + 8 * j);
                        memset(buf, 0, 21);
                        [v176 getBytes:buf length:21];
                        xpc_array_set_data(v171, 0xFFFFFFFFFFFFFFFFLL, buf, 0x15uLL);
                      }

                      v173 = [v172 countByEnumeratingWithState:&v294 objects:v305 count:16];
                    }

                    while (v173);
                  }

                  v177 = xpc_dictionary_create_reply(a2);
                  v178 = v177;
                  if (v177)
                  {
                    xpc_dictionary_set_value(v177, "kCBMsgArgTEKHistory", v171);
                    xpc_connection_send_message(*(a1 + 16), v178);
                    xpc_release(v178);
                  }

                  return;
                case 11:
                  v185 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerCalculateATTN", buf, 2u);
                  }

                  v186 = xpc_dictionary_get_int64(v16, "KCBMsgArgSaturated");
                  v187 = xpc_dictionary_get_int64(v16, "kCBMsgArgRSSI");
                  length = 0;
                  data = xpc_dictionary_get_data(v16, "kCBMsgArgTEK", &length);
                  v281[0] = 0;
                  v189 = xpc_dictionary_get_data(v16, "kCBMsgArgOTARpiAem", v281);
                  v300 = 0;
                  v299 = 0;
                  if (length == 16 && v281[0] == 20)
                  {
                    *buf = *data;
                    *v302 = *v189;
                    v298 = v189[4];
                    if (qword_100B54770 != -1)
                    {
                      sub_1008569E0();
                    }

                    sub_100511CC0(off_100B54768, buf, v302, &v298, v187, v186 != 0, &v299);
                  }

                  v190 = xpc_dictionary_create_reply(a2);
                  v191 = v190;
                  if (v190)
                  {
                    xpc_dictionary_set_uint64(v190, "kCBMsgArgATTN", v300);
                    xpc_connection_send_message(*(a1 + 16), v191);
                    xpc_release(v191);
                  }

                  return;
                case 12:
                  v139 = xpc_dictionary_get_int64(v16, "kCBMsgArgEKRollingPeriod");
                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CE098(off_100B508B8, v139);
                  return;
              }
            }

            else
            {
              if (v83 > 3)
              {
                if (v83 == 4)
                {
                  v166 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerDebugFillTEKHistory", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CD9B0(off_100B508B8, 30);
                }

                else if (v83 == 5)
                {
                  v184 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerForceTEKRotation", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CD2D8(off_100B508B8);
                }

                else
                {
                  v137 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerRunRPIBenchmarks", buf, 2u);
                  }

                  v138 = xpc_dictionary_get_int64(v16, "kCBMsgArgKeys");
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_10050F62C(off_100B54768, v138);
                }

                return;
              }

              switch(v83)
              {
                case 1:
                  v161 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerStart", buf, 2u);
                  }

                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_100612A00(off_100B54768 + 176, a1 + 160);
                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  v162 = off_100B54768;
                  v163 = *(a1 + 96);
                  Current = CFAbsoluteTimeGetCurrent();
                  sub_1005101D4(v162, v163, Current);
                  return;
                case 2:
                  v179 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerStop", buf, 2u);
                  }

                  if (qword_100B54770 != -1)
                  {
                    sub_1008569E0();
                  }

                  sub_1005105F0(off_100B54768);
                  return;
                case 3:
                  v84 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "CBDebugCommandCTManagerReset", buf, 2u);
                  }

                  if (qword_100B508C0 != -1)
                  {
                    sub_1008569B8();
                  }

                  sub_1007CCBEC(off_100B508B8);
                  return;
              }
            }

            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }

            return;
          case 8:
            if (qword_100B50C68 != -1)
            {
              sub_100856880();
            }

            sub_10072D4E4();
            return;
          case 9:
            v95 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            if (v95 > 2)
            {
              if (v95 == 3)
              {
                v85 = sub_10037CDF8(v16, "kCBMsgArgDeviceUUID");
                if (v85)
                {
                  if (qword_100B512D8 != -1)
                  {
                    sub_100856954();
                  }

                  sub_100311628(off_100B512D0, v85);
                }

                goto LABEL_151;
              }

              if (v95 == 4)
              {
                if (qword_100B512D8 != -1)
                {
                  sub_100856954();
                }

                sub_1003119A8(off_100B512D0);
                return;
              }
            }

            else
            {
              if (v95 == 1)
              {
                memset(buf, 0, 24);
                if (qword_100B512D8 != -1)
                {
                  sub_100856954();
                }

                if (!sub_10031174C(off_100B512D0, buf))
                {
                  v192 = xpc_array_create(0, 0);
                  if (v192)
                  {
                    v193 = *buf;
                    v194 = *&buf[8];
                    while (v193 != v194)
                    {
                      v195 = sub_10005201C(*v193, *(a1 + 168), *(a1 + 80));
                      xpc_array_append_value(v192, v195);
                      xpc_release(v195);
                      ++v193;
                    }

                    v196 = xpc_dictionary_create_reply(a2);
                    v197 = v196;
                    if (v196)
                    {
                      xpc_dictionary_set_value(v196, "kCBMsgArgDevices", v192);
                      xpc_connection_send_message(*(a1 + 16), v197);
                      xpc_release(v197);
                    }
                  }
                }

                v302[0] = buf;
                sub_100506518(v302);
                return;
              }

              if (v95 == 2)
              {
                v85 = sub_10037CDF8(v16, "kCBMsgArgDeviceUUID");
                if (v85)
                {
                  if (qword_100B512D8 != -1)
                  {
                    sub_100856954();
                  }

                  sub_1003110A8(off_100B512D0, v85);
                }

                goto LABEL_151;
              }
            }

            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              sub_10085697C();
            }

            return;
          case 10:
            v33 = xpc_dictionary_get_int64(v9, "kCBMsgArgOptions");
            v34 = sub_100013C04(v16, "kCBMsgArgApplicationID");
            if (_os_feature_enabled_impl())
            {
              if (v33 == 1)
              {
                v140 = sub_100066200(v16, "kCBMsgArgUUIDs");
                v141 = sub_10003ED64(v16, "kCBMsgArgNameSubstring");
                memset(buf, 0, 24);
                v142 = xpc_dictionary_get_value(v16, "kCBMsgArgServices");
                if (v142)
                {
                  sub_1000660D0(v142, buf);
                }

                v302[1] = 0;
                v302[0] = 0;
                v303 = 0;
                v143 = xpc_dictionary_get_value(v16, "kCBMsgArgMfgrIdentifiers");
                if (v143)
                {
                  sub_10037CC18(v143, v302);
                }

                v288 = 0;
                length = 0;
                v289 = 0;
                v283 = 0u;
                v284 = 0u;
                v285 = 0u;
                v286 = 0u;
                v144 = v141;
                v145 = [v144 countByEnumeratingWithState:&v283 objects:v301 count:16];
                if (v145)
                {
                  v146 = *v284;
                  do
                  {
                    for (k = 0; k != v145; k = k + 1)
                    {
                      if (*v284 != v146)
                      {
                        objc_enumerationMutation(v144);
                      }

                      v148 = *(*(&v283 + 1) + 8 * k);
                      v149 = v148;
                      sub_100007E30(v281, [v148 UTF8String]);
                      sub_10034A52C(&length, v281);
                      if (v282 < 0)
                      {
                        operator delete(v281[0]);
                      }
                    }

                    v145 = [v144 countByEnumeratingWithState:&v283 objects:v301 count:16];
                  }

                  while (v145);
                }

                if (qword_100B512F8 != -1)
                {
                  sub_1008565BC();
                }

                v150 = off_100B512F0;
                sub_10000CB74(v280, buf);
                __dst = 0;
                __p = 0;
                v279 = 0;
                if (v302[1] != v302[0])
                {
                  sub_1003C46A8(&__p, (v302[1] - v302[0]) >> 1);
                }

                memset(v276, 0, sizeof(v276));
                sub_10003E428(v276, length, v288, 0xAAAAAAAAAAAAAAABLL * ((v288 - length) >> 3));
                sub_1003C0BFC(v150, v34, v140, v280, &__p, v276);
                v281[0] = v276;
                sub_1000161FC(v281);
                if (__p)
                {
                  __dst = __p;
                  operator delete(__p);
                }

                if (v280[0])
                {
                  v280[1] = v280[0];
                  operator delete(v280[0]);
                }

                v281[0] = &length;
                sub_1000161FC(v281);
                if (v302[0])
                {
                  v302[1] = v302[0];
                  operator delete(v302[0]);
                }

                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }
              }

              else if (v33 == 2)
              {
                if (qword_100B512F8 != -1)
                {
                  sub_1008565BC();
                }

                sub_1003C1184(off_100B512F0, v34);
              }

              else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_1008568E4();
              }

              v151 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v33;
                *&buf[12] = 2112;
                *&buf[14] = v34;
                _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "CBDebugCommandDeviceAccessNotification opcode:%llu bundle:%@", buf, 0x16u);
              }
            }

            return;
          case 11:
            v89 = sub_10037CE6C(v9, "kCBMsgArgIRK");
            v90 = sub_10037CE6C(v16, "kCBMsgArgAddressBytes");
            v91 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v90;
              *&buf[12] = 2112;
              *&buf[14] = v89;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK address:%@ irk:%@", buf, 0x16u);
            }

            if (v89 && [v89 length] == 16 && v90 && objc_msgSend(v90, "length") == 6)
            {
              v92 = v89;
              v93 = [v89 bytes];
              *(v302 + 5) = 0;
              *(v302 + 1) = 0;
              LOBYTE(v302[0]) = 1;
              [v90 getBytes:v302 + 1 length:6];
              if (sub_100045978(v302, v93))
              {
                v94 = 0;
              }

              else
              {
                v152 = objc_opt_new();
                v153 = v93 + 15;
                v154 = 16;
                do
                {
                  [v152 appendBytes:v153-- length:1];
                  --v154;
                }

                while (v154);
                v155 = qword_100BCE950;
                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v90;
                  *&buf[12] = 2112;
                  *&buf[14] = v152;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK address:%@ irk:%@", buf, 0x16u);
                }

                v156 = v152;
                if (sub_100045978(v302, [v152 bytes]))
                {
                  v94 = 0;
                }

                else
                {
                  v94 = 2200;
                }
              }

              v157 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                v158 = sub_100063D0C();
                *buf = 138412546;
                *&buf[4] = v158;
                *&buf[12] = 1024;
                *&buf[14] = v94 & 0x98;
                _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "CBDebugCommandResolveLERandomAddressWithIRK LE_ResolveUsingIRK for address %@ returned %d", buf, 0x12u);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_1008568A8();
              }

              if (v90 && [v90 length] == 6)
              {
                if (v89 && [v89 length] == 16)
                {
                  v94 = 0;
                }

                else
                {
                  v94 = 21;
                }
              }

              else
              {
                v94 = 8;
              }
            }

            v159 = xpc_dictionary_create_reply(a2);
            v160 = v159;
            if (v159)
            {
              xpc_dictionary_set_int64(v159, "kCBMsgArgResult", v94);
              xpc_connection_send_message(*(a1 + 16), v160);
              xpc_release(v160);
            }

            return;
          case 12:
            v25 = xpc_dictionary_get_int64(v9, "addressType");
            v26 = xpc_dictionary_get_int64(v16, "refreshIdentity");
            if (qword_100B50C68 != -1)
            {
              sub_100856880();
            }

            if (v25)
            {
              v27 = 2;
            }

            else
            {
              v27 = 3;
            }

            sub_10072D25C(off_100B50C60, 1, v27, v26 != 0);
            return;
          case 13:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            *&buf[24] = xpc_dictionary_create_reply(a2);
            if (qword_100B508B0 != -1)
            {
              sub_10085681C();
            }

            v275[0] = _NSConcreteStackBlock;
            v275[1] = 3221225472;
            v275[2] = sub_10066A488;
            v275[3] = &unk_100B045A0;
            v275[5] = a1;
            v275[4] = buf;
            sub_100770BD0(off_100B508A8, v275);
            _Block_object_dispose(buf, 8);
            return;
          case 14:
            v77 = sub_10037CE6C(v9, "kCBFastLeConnectionInfoData");
            v78 = xpc_dictionary_get_int64(v16, "kCBFastLeConnectionInfoVersion");
            v79 = sub_10037CDF8(v16, "kCBMsgArgDeviceUUID");
            v80 = sub_100007EE8();
            v269[0] = _NSConcreteStackBlock;
            v269[1] = 3221225472;
            v269[2] = sub_10066A5BC;
            v269[3] = &unk_100B045C8;
            v272 = a1;
            v81 = v79;
            v270 = v81;
            v274 = v78;
            v82 = v77;
            v271 = v82;
            v273 = a2;
            sub_10000D334(v80, v269);

            return;
          case 15:
            v22 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v23 = sub_100007EE8();
            v265[0] = _NSConcreteStackBlock;
            v265[1] = 3221225472;
            v265[2] = sub_10066A67C;
            v265[3] = &unk_100AE0BC0;
            v267 = a1;
            v24 = v22;
            v266 = v24;
            v268 = a2;
            sub_10000D334(v23, v265);

            return;
          case 16:
            v46 = sub_10037CE6C(v9, "kCBMsgArgLTK");
            v47 = sub_10037CDF8(v16, "kCBMsgArgDeviceUUID");
            v48 = sub_100007EE8();
            v255[0] = _NSConcreteStackBlock;
            v255[1] = 3221225472;
            v255[2] = sub_10066A7F0;
            v255[3] = &unk_100B045F0;
            v258 = a1;
            v49 = v47;
            v256 = v49;
            v50 = v46;
            v257 = v50;
            v259 = a2;
            sub_10000D334(v48, v255);

            return;
          case 17:
            v19 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v20 = sub_100007EE8();
            v251[0] = _NSConcreteStackBlock;
            v251[1] = 3221225472;
            v251[2] = sub_10066A94C;
            v251[3] = &unk_100AE0BC0;
            v253 = a1;
            v21 = v19;
            v252 = v21;
            v254 = a2;
            sub_10000D334(v20, v251);

            return;
          case 18:
            v56 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v57 = xpc_dictionary_get_int64(v16, "kCBMsgArgOptions");
            v58 = sub_100007EE8();
            v260[0] = _NSConcreteStackBlock;
            v260[1] = 3221225472;
            v260[2] = sub_10066A730;
            v260[3] = &unk_100AEDEF0;
            v262 = a1;
            v59 = v56;
            v264 = v57;
            v261 = v59;
            v263 = a2;
            sub_10000D334(v58, v260);

            return;
          case 19:
            v85 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            if (v85)
            {
              if (qword_100B508B0 != -1)
              {
                sub_10085681C();
              }

              v86 = off_100B508A8;
              sub_10004DFB4(buf, v85);
              v87 = sub_100756F48(v86, buf, 0, 0, 0, 0, 0);
              v88 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v85;
                *&buf[12] = 1024;
                *&buf[14] = v87;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "CBDebugCommandDisableHostWakeupOnLinkDrop identifier:%@ returned %d", buf, 0x12u);
              }
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100856844();
            }

LABEL_151:

            return;
          case 20:
            v100 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v101 = xpc_dictionary_get_int64(v16, "kCBLePowerControlDisable");
            v102 = xpc_dictionary_get_int64(v16, "kCBLePowerControlRssiMin");
            v103 = xpc_dictionary_get_int64(v16, "kCBLePowerControlRssiMax");
            v104 = sub_100007EE8();
            v228[0] = _NSConcreteStackBlock;
            v228[1] = 3221225472;
            v228[2] = sub_10066ACA8;
            v228[3] = &unk_100B04668;
            v230 = a1;
            v105 = v100;
            v232 = v101;
            v233 = v102;
            v234 = v103;
            v229 = v105;
            v231 = a2;
            sub_10000D334(v104, v228);

            return;
          case 21:
            v60 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v61 = sub_100013C04(v16, "operation");
            v62 = xpc_dictionary_get_int64(v16, "command");
            v63 = sub_100007EE8();
            v245[0] = _NSConcreteStackBlock;
            v245[1] = 3221225472;
            v245[2] = sub_10066AA7C;
            v245[3] = &unk_100B04618;
            v248 = a1;
            v64 = v61;
            v246 = v64;
            v250 = v62;
            v65 = v60;
            v247 = v65;
            v249 = a2;
            sub_10000D334(v63, v245);

            return;
          case 22:
            v66 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v67 = xpc_dictionary_get_double(v16, "kCBMsgArgMinConnectionInterval");
            v68 = xpc_dictionary_get_double(v16, "kCBMsgArgPreferredConnectionInterval");
            v69 = xpc_dictionary_get_double(v16, "kCBMsgArgMaxConnectionInterval");
            v70 = xpc_dictionary_get_int64(v16, "kCBMsgArgPreferredConnectionLatency");
            v71 = xpc_dictionary_get_int64(v16, "kCBMsgArgMaxConnectionLatency");
            v72 = xpc_dictionary_get_int64(v16, "kCBMsgArgMinCELength");
            v73 = xpc_dictionary_get_int64(v16, "kCBMsgArgMaxCELength");
            v74 = xpc_dictionary_get_int64(v16, "kCBMsgArgSupervisionTimeout");
            v75 = sub_100007EE8();
            v235[0] = _NSConcreteStackBlock;
            v235[1] = 3221225472;
            v235[2] = sub_10066ABFC;
            v235[3] = &unk_100B04640;
            v76 = v66;
            v236 = v76;
            *&v67 = v67;
            v237 = LODWORD(v67);
            *&v68 = v68;
            v238 = LODWORD(v68);
            *&v69 = v69;
            v239 = LODWORD(v69);
            v240 = v72;
            v241 = v73;
            v242 = v70;
            v243 = v71;
            v244 = v74;
            sub_10000CA94(v75, v235);

            return;
          case 23:
            v96 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v97 = xpc_dictionary_get_int64(v16, "command");
            v98 = sub_100007EE8();
            v223[0] = _NSConcreteStackBlock;
            v223[1] = 3221225472;
            v223[2] = sub_10066AD74;
            v223[3] = &unk_100AEDEF0;
            v225 = a1;
            v227 = v97;
            v99 = v96;
            v224 = v99;
            v226 = a2;
            sub_10000D334(v98, v223);

            return;
          case 24:
            v106 = sub_10037CDF8(v9, "kCBMsgArgDeviceUUID");
            v107 = xpc_dictionary_get_int64(v16, "command");
            v108 = sub_100007EE8();
            v218[0] = _NSConcreteStackBlock;
            v218[1] = 3221225472;
            v218[2] = sub_10066AEB4;
            v218[3] = &unk_100AEDEF0;
            v220 = a1;
            v222 = v107;
            v109 = v106;
            v219 = v109;
            v221 = a2;
            sub_10000D334(v108, v218);

            return;
          case 25:
            v40 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v41 = sub_10000C7D0();
            if (sub_1004106D0(v41, 0xBB8u))
            {
              *v308 = 0u;
              *v307 = 0u;
              memset(buf, 0, sizeof(buf));
              v42 = sub_10000C7D0();
              if (!(*(*v42 + 1632))(v42, v40, buf))
              {
                v43 = xpc_dictionary_create_reply(a2);
                v44 = v43;
                if (v43)
                {
                  xpc_dictionary_set_uint64(v43, "kCBtxHciCompleted", *buf);
                  xpc_dictionary_set_uint64(v44, "kCBtxAclCompleted", *&buf[4]);
                  xpc_dictionary_set_uint64(v44, "kCBtxScoCompleted", *&buf[8]);
                  xpc_dictionary_set_uint64(v44, "kCBtxLeCompleted", *&buf[12]);
                  xpc_dictionary_set_uint64(v44, "kCBtxLeaCompleted", *&buf[16]);
                  xpc_dictionary_set_uint64(v44, "kCBtxLlaCompleted", *&buf[20]);
                  xpc_dictionary_set_uint64(v44, "kCBtxTsiCompleted", *&buf[24]);
                  xpc_dictionary_set_uint64(v44, "kCBrxHciQueued", *&buf[28]);
                  xpc_dictionary_set_uint64(v44, "kCBrxAclQueued", LODWORD(v307[0]));
                  xpc_dictionary_set_uint64(v44, "kCBrxScoQueued", HIDWORD(v307[0]));
                  xpc_dictionary_set_uint64(v44, "kCBrxLeQueued", LODWORD(v307[1]));
                  xpc_dictionary_set_uint64(v44, "kCBrxLeaQueued", HIDWORD(v307[1]));
                  xpc_dictionary_set_uint64(v44, "kCBrxLmpQueued", LODWORD(v308[0]));
                  xpc_dictionary_set_uint64(v44, "kCBrxTsiQueued", HIDWORD(v308[0]));
                  xpc_dictionary_set_uint64(v44, "kCBrxDebugQueued", LODWORD(v308[1]));
                  xpc_dictionary_set_uint64(v44, "kCBmsiMain", HIDWORD(v308[1]));
                  xpc_connection_send_message(*(a1 + 16), v44);
                  xpc_release(v44);
                }
              }
            }

            return;
          case 26:
            v35 = xpc_dictionary_get_int64(v9, "kCBMsgArgState");
            v36 = sub_10000C7D0();
            if (sub_1004106D0(v36, 0xBB8u))
            {
              *&buf[8] = 0;
              *buf = 0;
              v37 = sub_10000C7D0();
              if (!(*(*v37 + 1640))(v37, v35, buf))
              {
                v38 = xpc_dictionary_create_reply(a2);
                v39 = v38;
                if (v38)
                {
                  xpc_dictionary_set_uint64(v38, "kCBiPACounter", *buf);
                  xpc_dictionary_set_uint64(v39, "kCBePACounter", *&buf[4]);
                  xpc_dictionary_set_uint64(v39, "kCBiPAThreadCounter", *&buf[8]);
                  xpc_dictionary_set_uint64(v39, "kCBePAThreadCounter", *&buf[12]);
                  xpc_connection_send_message(*(a1 + 16), v39);
                  xpc_release(v39);
                }
              }
            }

            return;
          case 27:
            *buf = 0;
            sub_1000C08D0(buf);
            if (sub_1002D2100(*buf, 0) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_1008567AC();
            }

            return;
          default:
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100856A78();
            }

            return;
        }
      }
    }
  }
}

void sub_100650CD4(_Unwind_Exception *a1)
{
  STACK[0x5E0] = &STACK[0x700];
  sub_100506518(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

void sub_1006510B4(uint64_t a1, xpc_object_t xdict)
{
  v13 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 0, v4, v5, v6, v7, v8, v9, "kCBMsgArgProgrammaticPairing"))
  {
    v10 = sub_100007EE8();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10066AFF0;
    v11[3] = &unk_100AE15D8;
    v11[4] = a1;
    v12 = 0;
    sub_10000D334(v10, v11);
    *(a1 + 168) = 1;
  }
}

void sub_100651190(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10066B04C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_10065120C(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v5 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10066B0A0;
  v8[3] = &unk_100AE0860;
  v8[4] = a1;
  v8[5] = v4;
  sub_10000D334(v5, v8);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v7);
    xpc_release(v7);
  }

  xpc_release(v4);
}

void sub_1006512E0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 186) == 1)
  {
    v23 = 1;
    v24 = 1;
    v22 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
        if (!sub_100013CA4(v6, 0, v7, v8, v9, v10, v11, v12, "kCBMsgArgPairingOptionsUseMITMAuthentication"))
        {
          v13 = sub_100007EE8();
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10066B200;
          v17[3] = &unk_100AEB858;
          v18 = v5;
          v19 = v24;
          v20 = v23;
          v21 = v22;
          sub_10000D334(v13, v17);
        }
      }

      else
      {
        v14 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 96);
          v16 = *(a1 + 48);
          *buf = 138412802;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          v29 = 2112;
          v30 = v5;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
        }
      }
    }
  }
}

void sub_10065152C(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(v6, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPairingType") && v5)
  {
    *&v21 = 0;
    v13 = sub_100007EE8();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10066B2DC;
    v14[3] = &unk_100AEB858;
    v16 = a1;
    v15 = v5;
    v17 = v19;
    v18 = v21;
    sub_10000D334(v13, v14);
  }
}

void sub_100651938(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 186) == 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10037CEF8(value, "kCBUnpairOptionForceDisconnect");
    v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v6 = sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48));
      v7 = qword_100BCE950;
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v8 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v8 = *v8;
          }

          *buf = 136446722;
          v17 = v8;
          if (v4)
          {
            v9 = "YES";
          }

          else
          {
            v9 = "NO";
          }

          v18 = 2112;
          v19 = v5;
          v20 = 2080;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to unpair device %@ forceDisconnect:%s", buf, 0x20u);
        }

        v10 = sub_100007EE8();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10066B348;
        v13[3] = &unk_100AE1750;
        v14 = v5;
        v15 = v4;
        sub_10000D334(v10, v13);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 96);
        v12 = *(a1 + 48);
        *buf = 138412802;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_100651BA8(uint64_t a1, xpc_object_t xdict)
{
  v17 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgUseOOBPairing");
  v11 = sub_100007EE8();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10066B40C;
  v13[3] = &unk_100AE0BC0;
  v15 = a1;
  v12 = v4;
  v14 = v12;
  v16 = v17;
  sub_10000D334(v11, v13);
}

void sub_100651CD0(uint64_t a1, xpc_object_t xdict)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_100007EE8();
  length_2[0] = _NSConcreteStackBlock;
  length_2[1] = 3221225472;
  length_2[2] = sub_10066B474;
  length_2[3] = &unk_100AF5598;
  v13 = &v15;
  v14 = a1;
  v7 = v5;
  v12 = v7;
  sub_10000D334(v6, length_2);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = v16[3];
    if (v9)
    {
      length = 0;
      sub_1007B5DC8(v9, &length);
    }

    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }

  _Block_object_dispose(&v15, 8);
}

void sub_100651E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100651E80(uint64_t a1, void *a2)
{
  if (_os_feature_enabled_impl() && *(a1 + 86) == 1)
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v5 = sub_10037CE6C(value, "kCBGlobalTemporaryLTK");
    if ([v5 length])
    {
      v16 = 0;
      v6 = xpc_dictionary_get_value(a2, "kCBOptionUseCase");
      if (v6)
      {
        sub_100013DE8(v6, &v16);
      }

      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      v7 = off_100B508B8;
      v8 = v5;
      v9 = [v5 bytes];
      v10 = [v5 length];
      v11 = sub_1007C7334(v7, v9, v10, v16);
      v12 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v13 = *v13;
        }

        v14 = [v5 length];
        v15 = sub_10002C70C(v16);
        *buf = 136446978;
        v18 = v13;
        v19 = 1024;
        v20 = v14;
        v21 = 2080;
        v22 = v15;
        v23 = 1024;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to set LTK size %d useCase %s result %d", buf, 0x22u);
      }
    }
  }
}

uint64_t sub_100652068(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result && *(a1 + 86) == 1)
  {
    v3 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v4 = *v4;
      }

      v5 = 136446210;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to clear LTK", &v5, 0xCu);
    }

    if (qword_100B508C0 != -1)
    {
      sub_1008569B8();
    }

    return sub_1007BCDBC(off_100B508B8);
  }

  return result;
}

void sub_100652164(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) >= 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_1000C9AAC(value, "kCBMsgArgReasonEnum");
    v5 = [v4 intValue];

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856B74(a1, v5);
    }
  }
}

void sub_10065220C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgResourceKey");
  v6 = sub_100013C04(value, "kCBMsgArgResourceSubKey");
  if (*(a1 + 80) >= 1)
  {
    if (v5 && [v5 length])
    {
      if ([v5 isEqualToString:CBManagerResourceADVBufferCount])
      {
        v7 = sub_10000C798();
        v8 = (*(*v7 + 744))(v7);
        if (qword_100B51078 != -1)
        {
          sub_100856D04();
        }

        v9 = 0;
        v10 = v8;
        v11 = v8 - sub_1007A5C58(off_100B51070);
        goto LABEL_14;
      }

      if ([v5 isEqualToString:CBManagerResourceConnectionUsecaseCount])
      {
        v14 = objc_alloc_init(NSNumberFormatter);
        [v14 setNumberStyle:1];
        v15 = [v14 numberFromString:v6];
        if (qword_100B54208 != -1)
        {
          sub_100856CF0();
        }

        v16 = sub_1007F024C(qword_100B54200, [v15 unsignedIntegerValue]);
        if (qword_100B54208 != -1)
        {
          sub_100856CF0();
        }

        v10 = v16;
        v11 = v16 - sub_1007F0440(qword_100B54200, [v15 unsignedIntegerValue]);

        v9 = 0;
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100856C7C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856D18();
    }

    v11 = 0;
    v10 = 0;
    v9 = 3;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856C40();
  }

  v11 = 0;
  v10 = 0;
  v9 = 17;
LABEL_14:
  reply = xpc_dictionary_create_reply(xdict);
  v13 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResourceTotalCount", v10);
    xpc_dictionary_set_int64(v13, "kCBMsgArgResourceRemainingCount", v11);
    xpc_dictionary_set_int64(v13, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(a1 + 16), v13);
    xpc_release(v13);
  }
}

void sub_100652530(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgApplicationID");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  reply = xpc_dictionary_create_reply(xdict);
  if (v12[3])
  {
    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10066B9C4;
    v7[3] = &unk_100B046B8;
    v10 = a1;
    v8 = v5;
    v9 = &v11;
    sub_10000CA94(v6, v7);
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100652634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100652668(uint64_t a1, xpc_object_t xdict)
{
  v41 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  reply = xpc_dictionary_create_reply(xdict);
  if (*(a1 + 80) >= 1 && ([&off_100B345A0 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (reply && !v11)
    {
      v36 = sub_10003ED64(v41, "kCBOptionStateDetailList");
      if (v36 && [v36 count])
      {
        v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);
        if ([v36 containsObject:@"kCBMsgArgIsA2DPSessionActive"])
        {
          v13 = [NSNumber numberWithInt:0];
          [v35 addObject:v13];
        }

        if ([v36 containsObject:@"kCBMsgArgIsHFPSessionActive"])
        {
          v14 = [NSNumber numberWithInt:1];
          [v35 addObject:v14];
        }

        if ([v36 containsObject:@"kCBMsgArgIsISOPipeSessionActive"])
        {
          v15 = [NSNumber numberWithInt:2];
          [v35 addObject:v15];
        }

        if ([v36 containsObject:@"kCBMsgArgIsLEASessionActive"])
        {
          v16 = [NSNumber numberWithInt:3];
          [v35 addObject:v16];
        }

        if ([v36 containsObject:@"kCBMsgArgIsWatchConnected"])
        {
          v17 = [NSNumber numberWithInt:4];
          [v35 addObject:v17];
        }

        if ([v36 containsObject:@"kCBMsgArgClassicDevicesConnectedCount"])
        {
          v18 = [NSNumber numberWithInt:5];
          [v35 addObject:v18];
        }

        if ([v36 containsObject:@"kCBMsgArgLeDevicesConnectedCount"])
        {
          v19 = [NSNumber numberWithInt:6];
          [v35 addObject:v19];
        }

        if ([v36 containsObject:@"kCBMsgArgClassicHIDDevicesConnectedCount"])
        {
          v20 = [NSNumber numberWithInt:7];
          [v35 addObject:v20];
        }

        if ([v36 containsObject:@"kCBMsgArgLeHIDDevicesConnectedCount"])
        {
          v21 = [NSNumber numberWithInt:8];
          [v35 addObject:v21];
        }

        if ([v36 containsObject:@"kCBMsgArgIsConnectionPrioritizationSupported"])
        {
          v22 = [NSNumber numberWithInt:9];
          [v35 addObject:v22];
        }

        if ([v36 containsObject:@"kCBMsgArgIsProtectLEA"])
        {
          v23 = [NSNumber numberWithInt:10];
          [v35 addObject:v23];
        }

        v24 = objc_opt_new();
        v25 = sub_10000F034();
        (*(*v25 + 656))(v25, v35, v24);
        if ([v24 count])
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (!v27)
          {
            goto LABEL_61;
          }

          v28 = *v38;
          while (1)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v37 + 1) + 8 * i);
              v31 = [v30 intValue];
              if (v31 <= 4)
              {
                if (v31 <= 1)
                {
                  if (v31)
                  {
                    if (v31 != 1)
                    {
                      continue;
                    }

                    v32 = [v26 objectForKeyedSubscript:v30];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsHFPSessionActive", [v32 BOOLValue]);
                  }

                  else
                  {
                    v32 = [v26 objectForKeyedSubscript:v30];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsA2DPSessionActive", [v32 BOOLValue]);
                  }
                }

                else if (v31 == 2)
                {
                  v32 = [v26 objectForKeyedSubscript:v30];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsISOPipeSessionActive", [v32 BOOLValue]);
                }

                else if (v31 == 3)
                {
                  v32 = [v26 objectForKeyedSubscript:v30];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsLEASessionActive", [v32 BOOLValue]);
                }

                else
                {
                  v32 = [v26 objectForKeyedSubscript:v30];
                  xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsWatchConnected", [v32 BOOLValue]);
                }
              }

              else if (v31 > 7)
              {
                switch(v31)
                {
                  case 8:
                    v32 = [v26 objectForKeyedSubscript:v30];
                    xpc_dictionary_set_int64(reply, "kCBMsgArgLeHIDDevicesConnectedCount", [v32 intValue]);
                    break;
                  case 9:
                    v32 = [v26 objectForKeyedSubscript:v30];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsConnectionPrioritizationSupported", [v32 BOOLValue]);
                    break;
                  case 10:
                    v32 = [v26 objectForKeyedSubscript:v30];
                    xpc_dictionary_set_BOOL(reply, "kCBMsgArgIsProtectLEA", [v32 BOOLValue]);
                    break;
                  default:
                    continue;
                }
              }

              else if (v31 == 5)
              {
                v32 = [v26 objectForKeyedSubscript:v30];
                xpc_dictionary_set_int64(reply, "kCBMsgArgClassicDevicesConnectedCount", [v32 intValue]);
              }

              else if (v31 == 6)
              {
                v32 = [v26 objectForKeyedSubscript:v30];
                xpc_dictionary_set_int64(reply, "kCBMsgArgLeDevicesConnectedCount", [v32 intValue]);
              }

              else
              {
                v32 = [v26 objectForKeyedSubscript:v30];
                xpc_dictionary_set_int64(reply, "kCBMsgArgClassicHIDDevicesConnectedCount", [v32 intValue]);
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v37 objects:v42 count:16];
            if (!v27)
            {
LABEL_61:

              v33 = 0;
              goto LABEL_72;
            }
          }
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100856D54();
        }

        v33 = 3;
LABEL_72:
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100856D90();
        }

        v33 = 3;
      }

      xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v33);
      xpc_connection_send_message(*(a1 + 16), reply);
      xpc_release(reply);
    }
  }

  else
  {
    v34 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856DCC(a1, v34);
    }

    if (reply)
    {
      xpc_dictionary_set_int64(reply, "kCBMsgArgResult", 13);
      xpc_connection_send_message(*(a1 + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_100652FFC()
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  v3 = 0;
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_1006533A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, ...)
{
  va_start(va, a11);

  if (a11)
  {
    sub_10000C808(a11);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100653430(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10066D6B8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
  sub_10004DFB8(a1, 54, 0, 0);
}

void sub_1006534C0(uint64_t a1, xpc_object_t xdict)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &off_100AE0A78;
  *v16 = 0u;
  v17 = 0u;
  v18 = &off_100AE0A78;
  v19 = 0;
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10066D70C(a1, value, &v14);
    *(v21 + 6) = v4;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100856EF8();
      }
    }

    else
    {
      v5 = sub_100007EE8();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3321888768;
      v7[2] = sub_10066D97C;
      v7[3] = &unk_100B04718;
      v7[4] = &v20;
      v7[5] = a1;
      v8 = v14;
      v9 = &off_100AE0A78;
      v10 = v16[0];
      if (v16[0])
      {
        sub_10000C69C(v16[0]);
      }

      sub_10000CB74(__p, &v16[1]);
      v12 = &off_100AE0A78;
      v13 = v19;
      if (v19)
      {
        sub_10000C69C(v19);
      }

      sub_10000D334(v5, v7);
      v12 = &off_100AE0A78;
      if (v13)
      {
        sub_10000C808(v13);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v9 = &off_100AE0A78;
      if (v10)
      {
        sub_10000C808(v10);
      }
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "kCBMsgArgResult", *(v21 + 6));
    sub_10004DFB8(a1, 55, v6, 1);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856F68();
  }

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  v15 = &off_100AE0A78;
  if (v16[0])
  {
    sub_10000C808(v16[0]);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_100653784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  sub_10066DB48(&a23);
  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1006537E8(uint64_t a1, xpc_object_t xdict)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &off_100AE0A78;
  *v16 = 0u;
  v17 = 0u;
  v18 = &off_100AE0A78;
  v19 = 0;
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v4 = sub_10066D70C(a1, value, &v14);
    *(v21 + 6) = v4;
    v5 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3321888768;
    v7[2] = sub_10066DBD4;
    v7[3] = &unk_100B04718;
    v7[4] = &v20;
    v7[5] = a1;
    v8 = v14;
    v9 = &off_100AE0A78;
    v10 = v16[0];
    if (v16[0])
    {
      sub_10000C69C(v16[0]);
    }

    sub_10000CB74(__p, &v16[1]);
    v12 = &off_100AE0A78;
    v13 = v19;
    if (v19)
    {
      sub_10000C69C(v19);
    }

    sub_10000D334(v5, v7);
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "kCBMsgArgResult", *(v21 + 6));
    sub_10004DFB8(a1, 56, v6, 1);
    v12 = &off_100AE0A78;
    if (v13)
    {
      sub_10000C808(v13);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v9 = &off_100AE0A78;
    if (v10)
    {
      sub_10000C808(v10);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100856FA4();
  }

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  v15 = &off_100AE0A78;
  if (v16[0])
  {
    sub_10000C808(v16[0]);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_100653A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  sub_10066DB48(&a23);
  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100653ADC(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v21 = 0uLL;
  v22 = 0;
  sub_10003A364(&v21);
  v4 = sub_10000F034();
  (*(*v4 + 664))(v4, *(a1 + 96), 3);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgAttributeID");
  *(v16 + 6) = v12;
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100856FE0();
    }
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    if (sub_1004EB220(qword_100B541E0, &v21, *(a1 + 184)))
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v13 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      sub_10003B85C(&v21, &v19);
      sub_10085701C(v13, &v19, v20);
    }

    *(v16 + 6) = 905;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v14, "kCBMsgArgAttributeID", 0);
  xpc_dictionary_set_int64(v14, "kCBMsgArgResult", *(v16 + 6));
  sub_10004DFB8(a1, 57, v14, 1);
  _Block_object_dispose(&v15, 8);
}

void sub_100654040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Block_object_dispose((v36 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1006540BC(uint64_t a1, xpc_object_t xdict)
{
  v12 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgAttributeID"))
  {
    v10 = sub_100007EE8();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10066E26C;
    v11[3] = &unk_100AE0860;
    v11[4] = a1;
    v11[5] = v12;
    sub_10000D334(v10, v11);
  }
}

void sub_100654180(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10066E2C8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_1006541FC(uint64_t a1, xpc_object_t xdict)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = &off_100AE0A78;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgTransactionID"))
  {
    v10 = sub_100007EE8();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_10066E31C;
    v11[3] = &unk_100B04748;
    v11[4] = a1;
    v11[5] = v19;
    v11[6] = v17;
    v12 = &off_100AE0A78;
    v13 = v16;
    v14 = v18;
    sub_10000D334(v10, v11);
    v12 = &off_100AE0A78;
    if (v13)
    {
      sub_10000C808(v13);
    }
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }
}

void sub_100654398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, atomic_uint *a30)
{
  if (a30)
  {
    sub_10000C808(a30);
  }

  *(v31 - 72) = v30;
  v33 = *(v31 - 64);
  if (v33)
  {
    sub_10000C808(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006543CC(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v20 = 0;
  v18 = &off_100AE0A78;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100066200(value, "kCBMsgArgUUIDs");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgAttributeID") && v4)
  {
    v11 = sub_100007EE8();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3321888768;
    v12[2] = sub_10066E3EC;
    v12[3] = &unk_100B04780;
    v14 = a1;
    v13 = v4;
    v15 = v20;
    v16 = &off_100AE0A78;
    v17 = v19;
    sub_10000D334(v11, v12);
    v16 = &off_100AE0A78;
    if (v17)
    {
      sub_10000C808(v17);
    }
  }

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }
}

void sub_100654574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  *(v23 - 72) = v21;
  v25 = *(v23 - 64);
  if (v25)
  {
    sub_10000C808(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1006545CC(uint64_t a1, void *a2)
{
  v4 = *(sub_10000C7D0() + 160);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_BOOL(reply, "kCBMsgArgData", v4);
    xpc_connection_send_message(*(a1 + 16), v6);

    xpc_release(v6);
  }
}

void sub_100654650(int a1, xpc_object_t xdict)
{
  v12 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = 0;
  v11 = 0;
  sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgDeviceUUID");
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = v12;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enable private mode for time %lld for client session : %@", buf, 0x16u);
  }
}

void sub_100654960(uint64_t a1, void *a2)
{
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Publish L2CAP channel request", buf, 2u);
  }

  v5 = sub_10000F034();
  (*(*v5 + 664))(v5, *(a1 + 96), 5);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPSM"))
  {
    v30 = 0;
    *buf = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v19 = sub_100013CA4(v33, 0, v13, v14, v15, v16, v17, v18, "kCBL2CAPChannelInMTU");
    if (v34 >= 0x10000)
    {
      v20 = 1800;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      if (!v32)
      {
        return;
      }

      v21 = sub_100007EE8();
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10066E920;
      v23[3] = &unk_100AE0880;
      v23[4] = a1;
      v23[5] = v34;
      v24 = v20;
      v22 = v23;
    }

    else
    {
      v21 = sub_100007EE8();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10066E888;
      v25[3] = &unk_100B04850;
      v25[4] = a1;
      v25[5] = v34;
      v25[6] = v32;
      v25[7] = v35;
      v25[8] = *buf;
      v25[9] = v30;
      v25[10] = v28;
      v25[11] = v27;
      v25[12] = v26;
      v22 = v25;
    }

    sub_10000D334(v21, v22);
  }
}

void sub_100654C44(uint64_t a1, void *a2)
{
  v15 = 0;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpublish L2CAP channel request", buf, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgPSM") && !(v15 >> 16))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10066E95C;
    v13[3] = &unk_100AE0860;
    v13[4] = a1;
    v13[5] = v15;
    sub_10000D334(v12, v13);
  }
}

void sub_100654D60(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Override local LE Address", buf, 2u);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v6 = sub_100013C04(value, "kCBMsgArgAddressString");
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Address is %@", buf, 0xCu);
  }

  if ([v6 length] && *(a1 + 80) == 2)
  {
    v8 = sub_100007EE8();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10066E9B8;
    v9[3] = &unk_100ADF820;
    v10 = v6;
    sub_10000D334(v8, v9);
  }
}

void sub_100654F1C(uint64_t a1, void *a2)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008570BC();
    }
  }

  else if (_os_feature_enabled_impl())
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    array = xpc_dictionary_get_array(value, "kCBMsgArgData");
    if (array)
    {
      v5 = array;
      if (xpc_get_type(array) == &_xpc_type_array)
      {
        v7[0] = 0;
        v7[1] = v7;
        v7[2] = 0x2020000000;
        v8 = 0;
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_10066EA14;
        applier[3] = &unk_100AF56D8;
        applier[4] = v7;
        xpc_array_apply(v5, applier);
        if (qword_100B512D8 != -1)
        {
          sub_100856954();
        }

        sub_10031206C(off_100B512D0, 0xFFu, 0, -1);
        _Block_object_dispose(v7, 8);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857080();
  }
}

void sub_10065509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006550B4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBMsgArgAddressBytes");
  v5 = [v4 copy];

  if ([&off_100B345B8 containsObject:*(a1 + 96)])
  {
    if ([v5 length] == 6 || objc_msgSend(v5, "length") == 7)
    {
      *&v16[3] = 0;
      *v16 = 0;
      if ([v5 length] == 6)
      {
        v6 = 0;
        v16[0] = 1;
      }

      else
      {
        v6 = 1;
        [v5 getBytes:v16 length:1];
      }

      [v5 getBytes:&v16[1] range:{v6, 6}];
      if (*(a1 + 80) == 2)
      {
        v7 = v16[1];
        v8 = v16[2];
        v9 = v16[3];
        v10 = v16[4];
        v11 = v16[5];
        v12 = v16[6];
        v13 = v16[0];
        v14 = sub_100007EE8();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10066ED08;
        v15[3] = &unk_100ADF8F8;
        v15[4] = (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12 | (v13 << 48);
        sub_10000D334(v14, v15);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857168((a1 + 96), v16, [v5 length]);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008570F8();
  }
}

void sub_100655314(uint64_t a1, xpc_object_t original)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  reply = xpc_dictionary_create_reply(original);
  if (*(a1 + 80) >= 1 && ([&off_100B345D0 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100856880();
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10066ED5C;
    v4[3] = &unk_100AF34C0;
    v4[4] = &v6;
    v4[5] = a1;
    sub_10072B778(off_100B50C60, v4);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), v5);
      sub_1008571C0();
    }

    v3 = v7[3];
    if (v3)
    {
      xpc_dictionary_set_int64(v3, "kCBMsgArgResult", 13);
      xpc_connection_send_message(*(a1 + 16), v7[3]);
      xpc_release(v7[3]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_10065549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006554C4(uint64_t a1, xpc_object_t original)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  reply = xpc_dictionary_create_reply(original);
  if (*(a1 + 80) >= 1 && ([&off_100B345E8 containsObject:*(a1 + 96)] & 1) != 0)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100856880();
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10066EDDC;
    v4[3] = &unk_100B04878;
    v4[4] = &v6;
    v4[5] = a1;
    sub_10072B8A0(off_100B50C60, v4);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), v5);
      sub_10085721C();
    }

    v3 = v7[3];
    if (v3)
    {
      xpc_dictionary_set_int64(v3, "kCBMsgArgResult", 13);
      xpc_dictionary_set_int64(v7[3], "kCBMsgArgTimeoutInMS", 0);
      xpc_connection_send_message(*(a1 + 16), v7[3]);
      xpc_release(v7[3]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_100655664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065568C(uint64_t a1, void *a2)
{
  xarray = xpc_array_create(0, 0);
  original = a2;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v19 = sub_100066200(value, "kCBMsgArgUUIDs");
  if (v19)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_10003EF30(off_100B508C8);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v19;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:{16, a2}];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v9))
          {
            v11 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            v26 = v9;
            v12 = v11;
            v13 = "Device %@ does not exist";
            goto LABEL_25;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9) & 1) == 0)
          {
            v14 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            v26 = v9;
            v12 = v14;
            v13 = "Cannot access device %@";
            goto LABEL_25;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)))
          {
            v10 = sub_10005201C(v9, *(a1 + 168), *(a1 + 80));
            xpc_array_append_value(xarray, v10);
            xpc_release(v10);
            goto LABEL_26;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v9;
            v12 = v15;
            v13 = "Session not allowed for device %@";
LABEL_25:
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
          }

LABEL_26:
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v6);
    }
  }

  reply = xpc_dictionary_create_reply(original);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", xarray);
    xpc_connection_send_message(*(a1 + 16), v17);
    xpc_release(v17);
  }

  xpc_release(xarray);
}

void sub_1006559F8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgUUID");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  v6 = sub_1007868D4(off_100B508C8, v5);
  if (!v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857278();
  }

  if (*(a1 + 80) >= 1 && *(a1 + 183) == 1)
  {
    v13 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v7 = off_100B508A8;
    sub_10004DFB4(v14, v5);
    sub_1000C4FCC(v7, v14, &v13);
    if (v13)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = *v13;
      reply = xpc_dictionary_create_reply(xdict);
      v11 = reply;
      if (reply)
      {
        xpc_dictionary_set_int64(reply, "kCBMsgArgConnectionHandle", v9);
        xpc_connection_send_message(*(a1 + 16), v11);
        xpc_release(v11);
        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857324();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008572E8();
  }

  v12 = xpc_dictionary_create_reply(xdict);
  if (v12)
  {
    xpc_connection_send_message(*(a1 + 16), v12);
    xpc_release(v12);
  }

LABEL_20:
}