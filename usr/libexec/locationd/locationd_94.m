void sub_1006BFF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

id *sub_1006BFF8C(uint64_t a1)
{
  sub_10000FF38(v19, "CLWifiLocationDatabase::deleteByAlsQueryAge", 0);
  if (sub_10018E854(a1))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10003848C(v17);
      v5 = sub_100038730(&v18, "DELETE FROM ", 12);
      v6 = *(a1 + 295);
      if (v6 >= 0)
      {
        v7 = a1 + 272;
      }

      else
      {
        v7 = *(a1 + 272);
      }

      if (v6 >= 0)
      {
        v8 = *(a1 + 295);
      }

      else
      {
        v8 = *(a1 + 280);
      }

      v9 = sub_100038730(v5, v7, v8);
      v10 = sub_100038730(v9, " WHERE ", 7);
      v11 = sub_100038730(v10, "AlsQueryTimestamp", 17);
      v12 = sub_100038730(v11, " < ?", 4);
      v13 = sub_100038730(v12, " OR ", 4);
      v14 = sub_100038730(v13, "AlsQueryTimestamp", 17);
      sub_100038730(v14, " > ?", 4);
      sub_100073518(v17, buf);
      if (v21 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      sub_1000388D8(a1 + 64, v15);
    }

    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "#Error, Attempt to call deleteByAlsQueryAge() in a read-only database", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190A7DC(buf);
      LOWORD(v17[0]) = 0;
      v3 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiLocationDatabase::deleteByAlsQueryAge(CFTimeInterval, CFAbsoluteTime)", "%s\n", v3);
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v4 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByAlsQueryAge() without a backing database in CLWifiLocationDatabase!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A7DC(buf);
      LOWORD(v17[0]) = 0;
      v3 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationDatabase::deleteByAlsQueryAge(CFTimeInterval, CFAbsoluteTime)", "%s\n", v3);
LABEL_15:
      if (v3 != buf)
      {
        free(v3);
      }
    }
  }

  return sub_10001A420(v19);
}

void sub_1006C06E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  sub_10026C504(&a11);
  sub_10001A420(&a47);
  _Unwind_Resume(a1);
}

void sub_1006C077C(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v12, "DELETE FROM ", 12);
    v3 = *(a1 + 295);
    if (v3 >= 0)
    {
      v4 = a1 + 272;
    }

    else
    {
      v4 = *(a1 + 272);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 295);
    }

    else
    {
      v5 = *(a1 + 280);
    }

    v6 = sub_100038730(v2, v4, v5);
    v7 = sub_100038730(v6, " WHERE ", 7);
    v8 = sub_100038730(v7, "MAC", 3);
    sub_100038730(v8, " = ? ", 5);
    sub_100073518(buf, v13);
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = *v13;
    }

    sub_1000388D8(a1 + 64, v9);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v10 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByMac() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B2E4();
  }
}

void sub_1006C0CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 73) < 0)
  {
    operator delete(*(v5 - 96));
  }

  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C0CF8(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v19, "UPDATE OR IGNORE ", 17);
    v3 = *(a1 + 295);
    if (v3 >= 0)
    {
      v4 = a1 + 272;
    }

    else
    {
      v4 = *(a1 + 272);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 295);
    }

    else
    {
      v5 = *(a1 + 280);
    }

    v6 = sub_100038730(v2, v4, v5);
    v7 = sub_100038730(v6, " SET ", 5);
    v8 = strlen("Timestamp");
    v9 = sub_100038730(v7, "Timestamp", v8);
    v10 = sub_100038730(v9, " = ? ", 5);
    v11 = sub_100038730(v10, " WHERE ", 7);
    v12 = sub_100038730(v11, "MAC", 3);
    sub_100038730(v12, " = ? ", 5);
    sub_100073518(buf, __p);
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    sub_1000388D8(a1 + 64, v13);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v14 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call updateTimestampForMacAddress() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B3C8();
  }

  return 0;
}

void sub_1006C1080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C10E0(uint64_t a1)
{
  *a1 = off_10246B440;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  return sub_1006526BC(a1);
}

void sub_1006C1150(uint64_t a1)
{
  *a1 = off_10246B440;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  sub_1006526BC(a1);

  operator delete();
}

void sub_1006C1204(std::runtime_error *this)
{
  this->__vftable = off_10246B4D0;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1006C12E8()
{
  qword_102658C08 = "MAC";
  dword_102658C10 = 1;
  word_102658C14 = 1;
  byte_102658C18 = 0;
  byte_102658C30 = 0;
  qword_102658C38 = "Channel";
  dword_102658C40 = 1;
  word_102658C44 = 0;
  byte_102658C48 = 0;
  byte_102658C60 = 0;
  qword_102658C68 = "InfoMask";
  dword_102658C70 = 1;
  word_102658C74 = 0;
  byte_102658C78 = 0;
  byte_102658C90 = 0;
  qword_102658C98 = "Timestamp";
  dword_102658CA0 = 2;
  word_102658CA4 = 0;
  byte_102658CA8 = 0;
  byte_102658CC0 = 0;
  qword_102658CC8 = "Latitude";
  dword_102658CD0 = 2;
  word_102658CD4 = 0;
  byte_102658CD8 = 0;
  byte_102658CF0 = 0;
  qword_102658CF8 = "Longitude";
  dword_102658D00 = 2;
  word_102658D04 = 0;
  byte_102658D08 = 0;
  byte_102658D20 = 0;
  qword_102658D28 = "HorizontalAccuracy";
  dword_102658D30 = 2;
  word_102658D34 = 0;
  byte_102658D38 = 0;
  byte_102658D50 = 0;
  qword_102658D58 = "Altitude";
  dword_102658D60 = 2;
  word_102658D64 = 0;
  byte_102658D68 = 0;
  byte_102658D80 = 0;
  qword_102658D88 = "VerticalAccuracy";
  dword_102658D90 = 2;
  word_102658D94 = 0;
  byte_102658D98 = 0;
  byte_102658DB0 = 0;
  qword_102658DB8 = "Speed";
  dword_102658DC0 = 2;
  word_102658DC4 = 0;
  byte_102658DC8 = 0;
  byte_102658DE0 = 0;
  qword_102658DE8 = "Course";
  dword_102658DF0 = 2;
  word_102658DF4 = 0;
  byte_102658DF8 = 0;
  byte_102658E10 = 0;
  qword_102658E18 = "Confidence";
  dword_102658E20 = 1;
  word_102658E24 = 0;
  byte_102658E28 = 0;
  byte_102658E40 = 0;
  qword_102658E48 = "Score";
  dword_102658E50 = 1;
  word_102658E54 = 0;
  byte_102658E58 = 0;
  byte_102658E70 = 0;
  qword_102658E78 = "Reach";
  dword_102658E80 = 1;
  word_102658E84 = 0;
  byte_102658E88 = 0;
  byte_102658EA0 = 0;
  qword_102658EA8 = "FenceForeignKey";
  dword_102658EB0 = 1;
  word_102658EB4 = 1;
  byte_102658EB8 = 0;
  byte_102658ED0 = 0;
  qword_102658ED8 = "ZaxisHarvestTraces";
  dword_102658EE0 = 1;
  word_102658EE4 = 0;
  byte_102658EE8 = 0;
  byte_102658F00 = 0;
  qword_102658F08 = "AlsQueryTimestamp";
  dword_102658F10 = 2;
  word_102658F14 = 0;
  byte_102658F18 = 0;
  byte_102658F30 = 0;
  qword_102658F38 = 0;
  dword_102658F40 = 5;
  word_102658F44 = 0;
  byte_102658F48 = 0;
  byte_102658F60 = 0;
}

id sub_1006C1520(void *a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006C15AC;
  v3[3] = &unk_10246B530;
  v3[4] = a2;
  return [a1 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v3)}];
}

uint64_t sub_1006C1748(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C49F0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658F78 != -1)
  {
    dispatch_once(&qword_102658F78, block);
  }

  return qword_1026371F0;
}

void sub_1006C19C4(uint64_t a1)
{
  v7 = 0xFFFF;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v11 = _Q0;
  v12 = _Q0;
  v13 = _Q0;
  v14 = 0;
  v17 = 0;
  v15 = 0xBFF0000000000000;
  v16 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0x7FFFFFFF;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v6 = sub_1006C5194(a1);
  sub_1006AA228(*(v6 + 32));
}

void sub_1006C1F68(uint64_t a1)
{
  v7 = 0xFFFF;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v11 = _Q0;
  v12 = _Q0;
  v13 = _Q0;
  v14 = 0;
  v17 = 0;
  v15 = 0xBFF0000000000000;
  v16 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0x7FFFFFFF;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v6 = sub_1006C5084(a1);
  sub_1006AA228(*(v6 + 32));
}

void sub_1006C253C(uint64_t a1, int *a2)
{
  v54 = 0;
  v53 = 0;
  v55 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v56 = _Q0;
  v57 = _Q0;
  v58 = _Q0;
  v52 = 0xFFFF;
  v59 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0xBFF0000000000000;
  v64 = 0xBFF0000000000000;
  v63 = 0;
  v65 = 0x7FFFFFFF;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = 0;
  v26 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  memset(v27, 0, sizeof(v27));
  sub_10038EB38(v27, v9, v10, (v10 - v9) >> 2);
  v11 = *(a2 + 12);
  v12 = *(a2 + 13);
  v13 = *(a2 + 10);
  v37 = *(a2 + 11);
  v38 = v11;
  v39[0] = v12;
  *(v39 + 12) = *(a2 + 55);
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v16 = *(a2 + 6);
  v33 = *(a2 + 7);
  v34 = v14;
  v35 = v15;
  v36 = v13;
  v17 = *(a2 + 5);
  v30 = *(a2 + 4);
  v31 = v17;
  v32 = v16;
  v18 = *(a2 + 3);
  v28 = *(a2 + 2);
  v29 = v18;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(v40, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    *v40 = *(a2 + 15);
    v40[2] = *(a2 + 32);
  }

  v19 = *(a2 + 102);
  v49 = *(a2 + 98);
  v50 = v19;
  v20 = *(a2 + 86);
  v45 = *(a2 + 82);
  v46 = v20;
  v21 = *(a2 + 94);
  v47 = *(a2 + 90);
  v48 = v21;
  v22 = *(a2 + 70);
  v41 = *(a2 + 66);
  v42 = v22;
  v23 = *(a2 + 78);
  v43 = *(a2 + 74);
  v44 = v23;
  v51 = a2[106];
  sub_1006CF0D4(&v26);
  sub_100621C1C(&v26, &__p);
  v24 = sub_1006C52A4(a1);
  sub_100942C7C(*(v24 + 32));
}

void sub_1006C2C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10064A5B4(&a18);
  _Unwind_Resume(a1);
}

void sub_1006C2D48(uint64_t a1)
{
  v7 = 0xFFFF;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v11 = _Q0;
  v12 = _Q0;
  v13 = _Q0;
  v16 = 0;
  v17 = 0;
  v15 = 0xBFF0000000000000;
  v14 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0x7FFFFFFF;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v6 = sub_100090470(a1);
  sub_100082734(*(v6 + 32));
}

void sub_1006C3378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3484(uint64_t a1)
{
  v7 = 0xFFFF;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v11 = _Q0;
  v12 = _Q0;
  v13 = _Q0;
  v16 = 0;
  v17 = 0;
  v15 = 0xBFF0000000000000;
  v14 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0x7FFFFFFF;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v6 = sub_1006C53B4(a1);
  sub_1007F4E08(*(v6 + 32));
}

void sub_1006C3AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3B4C(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = *(a1 + 560);
  *(a2 + 56) = *(a1 + 576);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 44);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
    v9 = *(a2 + 56);
    *buf = 67110144;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "NETWORK: stats: cellsQueried, %d, wifisQueried, %d, locationsQueried, %d, totalRequests, %d, totalRequestsSuccessful, %d", buf, 0x20u);
  }

  v10 = a1 + 560;
  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::getMetric(CLDaemonStats_Type::LocationNetworkQueries &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
}

uint64_t sub_1006C3D98(uint64_t a1, uint64_t a2, char **a3)
{
  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning in private location mode; not querying for unknown cells or unknown wifis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BDE4();
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) != 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not querying location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BC1C();
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 608) && (*(a1 + 440) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@AlsFlow, querynearby, skip, connectivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BD00();
    }

    return 0xFFFFFFFFLL;
  }

  *(a1 + 568) = vadd_s32(*(a1 + 568), 0x100000001);
  sub_10000EC00(__p, "queryNearbys");
  sub_10023B1D0(a1 + 464, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(**(a1 + 448) + 40))(*(a1 + 448), a2, 0xFFFFFFFFLL);
  *buf = &v11;
  v7 = sub_1006E12D0(a1 + 392, &v11) + 5;
  if (v7 != a3)
  {
    sub_100731D80(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return v11;
}

void sub_1006C4028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C41E4(uint64_t a1, uint64_t *a2, int a3)
{
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  memset(v89, 0, sizeof(v89));
  __src = 0;
  v87 = 0;
  v88 = 0;
  __p = 0;
  v84 = 0;
  v85 = 0;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = v4 + v7 - 8;
      v9 = *(v4 + v7);
      if (v9 < 3)
      {
        goto LABEL_6;
      }

      if (v9 == 9)
      {
        v19 = sub_1006CCAA0(v8, a2);
        v20 = v91;
        if (v91 >= v92)
        {
          v36 = v90;
          v37 = v91 - v90;
          v38 = (v91 - v90) >> 5;
          v39 = v38 + 1;
          if ((v38 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v40 = v92 - v90;
          if ((v92 - v90) >> 4 > v39)
          {
            v39 = v40 >> 4;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFE0)
          {
            v39 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            sub_1003F6B14(&v90, v39);
          }

          v41 = (v91 - v90) >> 5;
          v42 = (32 * v38);
          v43 = v19[1];
          *v42 = *v19;
          v42[1] = v43;
          v22 = 32 * v38 + 32;
          v44 = &v42[-2 * v41];
          memcpy(v44, v36, v37);
          v45 = v90;
          v90 = v44;
          v91 = v22;
          v92 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          v21 = v19[1];
          *v91 = *v19;
          *(v20 + 1) = v21;
          v22 = (v20 + 32);
        }

        v91 = v22;
        goto LABEL_22;
      }

      if (v9 == 7)
      {
LABEL_6:
        v10 = sub_1006CBCE4(v8);
        v11 = v94;
        if (v94 >= v95)
        {
          v14 = v93;
          v15 = v94 - v93;
          v16 = (v94 - v93) >> 5;
          v17 = v16 + 1;
          if ((v16 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v18 = v95 - v93;
          if ((v95 - v93) >> 4 > v17)
          {
            v17 = v18 >> 4;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFE0)
          {
            v17 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            sub_1003F6B14(&v93, v17);
          }

          v24 = (v94 - v93) >> 5;
          v25 = (32 * v16);
          v26 = v10[1];
          *v25 = *v10;
          v25[1] = v26;
          v13 = 32 * v16 + 32;
          v27 = &v25[-2 * v24];
          memcpy(v27, v14, v15);
          v28 = v93;
          v93 = v27;
          v94 = v13;
          v95 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          v12 = v10[1];
          *v94 = *v10;
          *(v11 + 1) = v12;
          v13 = (v11 + 32);
        }

        v94 = v13;
      }

      else if (v9 - 3 > 2)
      {
        if (v9 == 10)
        {
          v46 = sub_100681E80(v8, a2);
          v47 = v84;
          if (v84 >= v85)
          {
            v57 = __p;
            v58 = v84 - __p;
            v59 = 0xAAAAAAAAAAAAAAABLL * ((v84 - __p) >> 5);
            v60 = v59 + 1;
            if (v59 + 1 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v85 - __p) >> 5) > v60)
            {
              v60 = 0x5555555555555556 * ((v85 - __p) >> 5);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v85 - __p) >> 5) >= 0x155555555555555)
            {
              v60 = 0x2AAAAAAAAAAAAAALL;
            }

            if (v60)
            {
              sub_1006DFE30(&__p, v60);
            }

            v68 = (32 * ((v84 - __p) >> 5));
            v69 = v46[1];
            *v68 = *v46;
            v68[1] = v69;
            v70 = v46[2];
            v71 = v46[3];
            v72 = v46[5];
            v68[4] = v46[4];
            v68[5] = v72;
            v68[2] = v70;
            v68[3] = v71;
            v52 = 96 * v59 + 96;
            v73 = v68 - v58;
            memcpy(v68 - v58, v57, v58);
            v74 = __p;
            __p = v73;
            v84 = v52;
            v85 = 0;
            if (v74)
            {
              operator delete(v74);
            }
          }

          else
          {
            v48 = v46[1];
            *v84 = *v46;
            v47[1] = v48;
            v49 = v46[2];
            v50 = v46[3];
            v51 = v46[5];
            v47[4] = v46[4];
            v47[5] = v51;
            v47[2] = v49;
            v47[3] = v50;
            v52 = (v47 + 6);
          }

          v84 = v52;
        }

        else if (v9 == 6)
        {
          v29 = sub_10007513C(v8, a2);
          v30 = v87;
          if (v87 >= v88)
          {
            v53 = __src;
            v54 = v87 - __src;
            v55 = 0x2E8BA2E8BA2E8BA3 * ((v87 - __src) >> 3);
            v56 = v55 + 1;
            if ((v55 + 1) > 0x2E8BA2E8BA2E8BALL)
            {
              sub_10028C64C();
            }

            if (0x5D1745D1745D1746 * ((v88 - __src) >> 3) > v56)
            {
              v56 = 0x5D1745D1745D1746 * ((v88 - __src) >> 3);
            }

            if ((0x2E8BA2E8BA2E8BA3 * ((v88 - __src) >> 3)) >= 0x1745D1745D1745DLL)
            {
              v56 = 0x2E8BA2E8BA2E8BALL;
            }

            if (v56)
            {
              sub_1006DFDD4(&__src, v56);
            }

            v61 = 8 * ((v87 - __src) >> 3);
            v62 = *(v29 + 16);
            *v61 = *v29;
            *(v61 + 16) = v62;
            v63 = *(v29 + 32);
            v64 = *(v29 + 48);
            v65 = *(v29 + 64);
            *(v61 + 80) = *(v29 + 80);
            *(v61 + 48) = v64;
            *(v61 + 64) = v65;
            *(v61 + 32) = v63;
            v35 = 88 * v55 + 88;
            v66 = (v61 - v54);
            memcpy((v61 - v54), v53, v54);
            v67 = __src;
            __src = v66;
            v87 = v35;
            v88 = 0;
            if (v67)
            {
              operator delete(v67);
            }
          }

          else
          {
            v31 = *(v29 + 16);
            *v87 = *v29;
            *(v30 + 1) = v31;
            v32 = *(v29 + 32);
            v33 = *(v29 + 48);
            v34 = *(v29 + 64);
            *(v30 + 10) = *(v29 + 80);
            *(v30 + 3) = v33;
            *(v30 + 4) = v34;
            *(v30 + 2) = v32;
            v35 = (v30 + 88);
          }

          v87 = v35;
        }
      }

      else
      {
        v23 = sub_1006CB140(v8, a2);
        sub_1006D3914(v89, v23);
      }

LABEL_22:
      ++v6;
      v4 = *a2;
      v7 += 696;
    }

    while (v6 < 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3));
  }

  sub_10000EC00(v78, "queryCellLocations");
  LODWORD(v80) = 1;
  if (SHIBYTE(v79) < 0)
  {
    sub_100007244(&v81, v78[0], v78[1]);
  }

  else
  {
    v81 = *v78;
    v82 = v79;
  }

  v75 = sub_1006CF1D8(a1, &v93, &v90, v89, &__src, &__p, &unk_101C89098, a3, 0, &v80);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
  }

  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v87 = __src;
    operator delete(__src);
  }

  v80 = v89;
  sub_10064AA34(&v80);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  return v75;
}

void sub_1006C47BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  a18 = &a31;
  sub_10064AA34(&a18);
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 112);
  if (v34)
  {
    *(v31 - 104) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1006C49BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C4AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C4B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_10018D404(v35);
  sub_1001097CC(v8, a2, a3);
  sub_10003848C(v30);
  v9 = sub_100038730(&v31, "cell ", 5);
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

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, ", local ", 8);
  sub_100B1AA60(v28);
  if ((v29 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v28[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v28[1];
  }

  v17 = sub_100038730(v14, v15, v16);
  v18 = sub_100038730(v17, ", remote ", 9);
  sub_100B1AA60(__p);
  if ((v27 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v20 = v27;
  }

  else
  {
    v20 = __p[1];
  }

  sub_100038730(v18, v19, v20);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v21 = sub_100038730(&v31, ", ", 2);
  v22 = *v21;
  *(v21 + *(*v21 - 24) + 16) = 1;
  *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  v23 = std::ostream::operator<<();
  sub_100038730(v23, "m apart", 7);
  sub_100073518(v30, a4);
  v31 = v24;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006C4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10026C504(&a21);
  _Unwind_Resume(a1);
}

void sub_1006C4EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1006C4B48(a1, a2, a3, __p);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v8 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136642819;
    v12 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CELL_LOC: %{sensitive}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v5 = __p;
    if (v8 < 0)
    {
      v5 = __p[0];
    }

    v9 = 136642819;
    v10 = v5;
    v6 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLNetworkLocationProvider::logCellLocationsWhenLocalAndRemoteDiffer(const std::string &, const CLDaemonLocation &, const CLDaemonLocation &)", "%s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006C505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C5084(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C510C(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C5194(uint64_t a1)
{
  result = *(a1 + 160);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C521C(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C52A4(uint64_t a1)
{
  result = *(a1 + 240);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C532C(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C53B4(uint64_t a1)
{
  result = *(a1 + 320);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C543C(uint64_t a1)
{
  result = *(a1 + 312);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1006C54C4(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = sub_1006C6230(a1, "CLNetworkLocationProvider", a2);
  *v7 = off_10246B580;
  v8 = *a3;
  *a3 = 0;
  *(v7 + 112) = v8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 160) = 0;
  *(v7 + 176) = 0;
  *(v7 + 168) = v7 + 176;
  *(v7 + 184) = 0;
  *(v7 + 144) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 216) = 0;
  *(v7 + 208) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 248) = v7 + 256;
  *(v7 + 224) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = v7 + 296;
  *(v7 + 296) = 0;
  *(v7 + 336) = 0;
  *(v7 + 344) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 320) = 0;
  *(v7 + 328) = v7 + 336;
  *(v7 + 352) = 0;
  *(v7 + 360) = 0u;
  *(v7 + 376) = 0u;
  *(v7 + 392) = v7 + 400;
  *(v7 + 400) = 0;
  *(v7 + 424) = 0;
  *(v7 + 432) = 0;
  *(v7 + 408) = 0;
  *(v7 + 416) = v7 + 424;
  *(v7 + 440) = 0;
  *(v7 + 448) = 0;
  *(v7 + 456) = 0;
  sub_10026CE64(v7 + 464, "NetworkProvider", a1, 103, 300.0);
  *(a1 + 520) = 0;
  *(a1 + 528) = -1;
  *&v9 = 0;
  *(a1 + 600) = v9;
  *(a1 + 532) = 1;
  *(a1 + 536) = 0;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 544) = xmmword_101C89000;
  *(a1 + 560) = 0u;
  *(a1 + 584) = a1 + 592;
  *(a1 + 616) = 0;
  sub_10018D404(a1 + 624);
  *(a1 + 664) = 1;
  *(a1 + 672) = *a4;
  v10 = a4[1];
  *(a1 + 680) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006C5F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1006DF878(v44 + 696);
  v52 = *(v44 + 688);
  *(v44 + 688) = 0;
  if (v52)
  {
    operator delete();
  }

  v53 = *(v44 + 680);
  if (v53)
  {
    sub_100008080(v53);
  }

  sub_1003C93BC(v44 + 584, *v45);
  sub_10026F190(v44 + 464);
  sub_1003C93BC(v44 + 416, *(v44 + 424));
  sub_10013F494(v44 + 392, *(v44 + 400));
  sub_1003C93BC(v44 + 328, *(v44 + 336));
  sub_1006E06A0((v44 + 320), 0);
  sub_1006E06A0((v44 + 312), 0);
  sub_1003C93BC(v44 + 288, *(v44 + 296));
  sub_1006E05A4((v44 + 280), 0);
  sub_1006E05A4((v44 + 272), 0);
  sub_1006E079C(v50, *(v44 + 256));
  sub_1006E04A8(v49, 0);
  sub_1006E04A8(v48, 0);
  sub_1003C93BC(v47, *(v44 + 216));
  sub_1006E03AC(v46, 0);
  sub_1006E03AC(a12, 0);
  sub_1003C93BC(a13, *(v44 + 176));
  sub_1006E03AC(a14, 0);
  sub_1006E03AC((v44 + 152), 0);
  v54 = *(v44 + 144);
  *(v44 + 144) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v44 + 136);
  *(v44 + 136) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *a15;
  *a15 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(v44 + 112);
  *(v44 + 112) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  sub_1006C8438(v44);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6230(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10246B7E8;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1006C62C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C62DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocationSeries", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocationSeries, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D4DC8(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D5990(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D5E48(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6830(uint64_t a1, uint64_t *a2, __int128 **a3, int a4, int a5, int a6, uint64_t a7)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a7 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 1;
    v14 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v15 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "activity";
      v24 = 2050;
      v25 = a7;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_1006D9128(a7, v13, a2, a3, a4, a5, a6);
  if (v17 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6A24(uint64_t a1, double *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterResponse", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterResponse, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D9E88(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6BF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLocationError", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLocationError, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D9FAC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6DBC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNearbyError", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNearbyError, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DA72C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6F88(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterFinished", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterFinished, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DA83C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D62B8(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D6948(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLteCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLteCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D6DD8(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C76B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D77C4(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNrCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNrCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D7F78(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D896C(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D5068(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D5520(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7F94(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 1;
    v3 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onPurgeTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "activity";
      v13 = 2050;
      v14 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onPurgeTimer, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1006C8148(a2);
  if (v6 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006C8148(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 544);
    v7 = 134349056;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "@AlsDB, purging ALS database entries with location timestamp older than %{public}.1fs", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C19C();
  }

  sub_1006DBBEC(a1, *(a1 + 544));
  v4 = sub_100E9C88C();
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349056;
    v8 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@AlsDB, purging ALS Wifi database entries with ALS query age older than %{public}.1fs", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C290();
  }

  return sub_101262A60(*(a1 + 672));
}

BOOL sub_1006C82CC(uint64_t a1)
{
  result = sub_101264740(*(a1 + 672));
  if (result)
  {
    sub_100678564();
  }

  return result;
}

uint64_t sub_1006C8438(uint64_t a1)
{
  *a1 = off_10246B7E8;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006C84BC(uint64_t a1)
{
  *a1 = off_10246B580;
  v2 = *(a1 + 536);
  if (v2)
  {
    sub_10021D3CC(v2);
    v3 = *(a1 + 536);
    if (v3)
    {
      sub_10092C310(v3);
      operator delete();
    }

    *(a1 + 536) = 0;
  }

  sub_1006C872C(a1);
  sub_1003C93BC(a1 + 936, *(a1 + 944));
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  v4 = *(a1 + 688);
  *(a1 + 688) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(a1 + 680);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_1003C93BC(a1 + 584, *(a1 + 592));
  sub_10026F190(a1 + 464);
  sub_1003C93BC(a1 + 416, *(a1 + 424));
  sub_10013F494(a1 + 392, *(a1 + 400));
  sub_1003C93BC(a1 + 328, *(a1 + 336));
  sub_1006E06A0((a1 + 320), 0);
  sub_1006E06A0((a1 + 312), 0);
  sub_1003C93BC(a1 + 288, *(a1 + 296));
  sub_1006E05A4((a1 + 280), 0);
  sub_1006E05A4((a1 + 272), 0);
  sub_1006E079C(a1 + 248, *(a1 + 256));
  sub_1006E04A8((a1 + 240), 0);
  sub_1006E04A8((a1 + 232), 0);
  sub_1003C93BC(a1 + 208, *(a1 + 216));
  sub_1006E03AC((a1 + 200), 0);
  sub_1006E03AC((a1 + 192), 0);
  sub_1003C93BC(a1 + 168, *(a1 + 176));
  sub_1006E03AC((a1 + 160), 0);
  sub_1006E03AC((a1 + 152), 0);
  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return sub_1006C8438(a1);
}

id sub_1006C872C(void *a1)
{
  result = sub_101264740(a1[84]);
  if (result)
  {
    [*(a1[16] + 16) unregister:*(a1[16] + 8) forNotification:33];
    v3 = a1[17];
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);

    return [v4 unregister:v5 forNotification:1];
  }

  return result;
}

void sub_1006C8794(uint64_t a1)
{
  sub_1006C84BC(a1);

  operator delete();
}

void sub_1006C87CC(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 1)
  {
    sub_101264730(*(a4 + 672), a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C8A2C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 368);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = vabdd_f64(Current, v3);
  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 352);
    v7[0] = 67109376;
    v7[1] = v6;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "NETWORK: check reschedule, fQueryRetries, %d, sinceLastRetry, %.1lf", v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C384(v4);
  }

  if (v4 >= 900.0)
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = Current;
    goto LABEL_11;
  }

  if (*(a1 + 352) <= 4)
  {
LABEL_11:
    sub_100185DCC(a1, "rescheduleOnReachability");
  }
}

uint64_t sub_1006C8B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1006C4EB4(a1, a2, a3);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CELL_LOC: ignoring cell since local and network locations disagree.", v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C574();
  }

  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094EAC;
  v11[3] = &unk_102449CF8;
  v11[4] = off_1025D7E68;
  AnalyticsSendEventLazy();
  return 0;
}

void sub_1006C8CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v8 = sub_1006C521C(a1);
  sub_1006AA228(*(v8 + 32));
}

void sub_1006C954C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v8 = sub_1006C510C(a1);
  sub_1006AA228(*(v8 + 32));
}

void sub_1006C9E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *a2;
  memset(v18, 0, sizeof(v18));
  sub_10038EB38(v18, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v6 = *(a2 + 208);
  v29 = *(a2 + 192);
  v30[0] = v6;
  *(v30 + 12) = *(a2 + 220);
  v7 = *(a2 + 144);
  v25 = *(a2 + 128);
  v26 = v7;
  v8 = *(a2 + 176);
  v27 = *(a2 + 160);
  v28 = v8;
  v9 = *(a2 + 80);
  v21 = *(a2 + 64);
  v22 = v9;
  v10 = *(a2 + 112);
  v23 = *(a2 + 96);
  v24 = v10;
  v11 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v11;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(v31, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    *v31 = *(a2 + 240);
    v31[2] = *(a2 + 256);
  }

  v12 = *(a2 + 408);
  v40 = *(a2 + 392);
  v41 = v12;
  v13 = *(a2 + 344);
  v36 = *(a2 + 328);
  v37 = v13;
  v14 = *(a2 + 376);
  v38 = *(a2 + 360);
  v39 = v14;
  v15 = *(a2 + 280);
  v32 = *(a2 + 264);
  v33 = v15;
  v16 = *(a2 + 312);
  v34 = *(a2 + 296);
  v35 = v16;
  v42 = *(a2 + 424);
  sub_1006CF0D4(&v17);
  sub_1006CE264(a1, &v17, a3);
}

void sub_1006CB064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CB140(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) - 3) >= 3)
  {
    sub_10190C858(a1, a2);
  }

  return a1 + 80;
}

void sub_1006CB168(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  sub_1006C8CBC(a1, v4, a3);
}

void sub_1006CBC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CBCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3 && v1 != 7)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190CAC4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "this->isGsm()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v5 = qword_1025D48A8;
      if (os_signpost_enabled(qword_1025D48A8))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "this->isGsm()";
        _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "this->isGsm()";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_17:
      sub_10190CAD8();
    }
  }

  return a1 + 12;
}

void sub_1006CBF24(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  sub_1006C9588(a1, v4, a3);
}

void sub_1006CCA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CCAA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 9)
  {
    sub_10190CC04(a1, a2);
  }

  return a1 + 44;
}

void sub_1006CCAC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[3];
  v11[2] = a2[2];
  v11[3] = v3;
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  sub_1006CD6AC(a1, v11, a3);
}

void sub_1006CD654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CD6AC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[3];
  v17 = a2[2];
  v18 = v5;
  v6 = a2[5];
  v19 = a2[4];
  v20 = v6;
  v7 = a2[1];
  v15 = *a2;
  v16 = v7;
  sub_10062233C(&v14);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v13 = sub_1006C543C(a1);
  sub_1007F4E08(*(v13 + 32));
}

void sub_1006CE1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006CE264(uint64_t a1, int *a2, uint64_t a3)
{
  v26 = *a2;
  memset(v27, 0, sizeof(v27));
  sub_10038EB38(v27, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  v6 = *(a2 + 12);
  v7 = *(a2 + 13);
  v8 = *(a2 + 10);
  v37 = *(a2 + 11);
  v38 = v6;
  v39[0] = v7;
  *(v39 + 12) = *(a2 + 55);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 6);
  v33 = *(a2 + 7);
  v34 = v9;
  v35 = v10;
  v36 = v8;
  v12 = *(a2 + 5);
  v30 = *(a2 + 4);
  v31 = v12;
  v32 = v11;
  v13 = *(a2 + 3);
  v28 = *(a2 + 2);
  v29 = v13;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(v40, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    *v40 = *(a2 + 15);
    v40[2] = *(a2 + 32);
  }

  v14 = *(a2 + 102);
  v49 = *(a2 + 98);
  v50 = v14;
  v15 = *(a2 + 86);
  v45 = *(a2 + 82);
  v46 = v15;
  v16 = *(a2 + 94);
  v47 = *(a2 + 90);
  v48 = v16;
  v17 = *(a2 + 70);
  v41 = *(a2 + 66);
  v42 = v17;
  v18 = *(a2 + 78);
  v43 = *(a2 + 74);
  v44 = v18;
  v51 = a2[106];
  sub_1006CF0D4(&v26);
  sub_100621C1C(&v26, &v25);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v24 = sub_1006C532C(a1);
  sub_100942C7C(*(v24 + 32));
}

void sub_1006CF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, ...)
{
  va_start(va, a14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

void sub_1006CF0D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = *(a1 + 16) - v1;
  if (v3)
  {
    *a1 = *v1;
    if (v3 >= 5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAC4();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = **v2;
        v5 = (*v2)[1];
        v7[0] = 67109376;
        v7[1] = v6;
        v8 = 1024;
        v9 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning ignoring second MCC %d %d", v7, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190CF74();
      }
    }
  }
}

uint64_t sub_1006CF1D8(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, void *a6, std::string::size_type **a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (a2[1] - *a2) >> 5;
    v17 = (a3[1] - *a3) >> 5;
    v18 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v19 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v21 = a7[1] - *a7;
    *buf = 134350848;
    *&buf[4] = v16;
    *&buf[12] = 2050;
    *&buf[14] = v17;
    *&buf[22] = 2050;
    *&buf[24] = v18;
    *&buf[32] = 2050;
    *&buf[34] = v19;
    *&buf[42] = 2050;
    *&buf[44] = v20;
    *&buf[52] = 2050;
    *&buf[54] = v21;
    *&buf[62] = 1026;
    *&buf[64] = a8;
    v383 = 1026;
    v384 = a9;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, in, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, cache, %{public}d, piggyback, %{public}d\n", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v300 = (a2[1] - *a2) >> 5;
    v301 = (a3[1] - *a3) >> 5;
    v302 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v303 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v304 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v305 = a7[1] - *a7;
    *v359 = 134350848;
    *&v359[4] = v300;
    *&v359[12] = 2050;
    *&v359[14] = v301;
    *&v359[22] = 2050;
    *&v359[24] = v302;
    *&v359[32] = 2050;
    *&v359[34] = v303;
    *&v359[42] = 2050;
    *&v359[44] = v304;
    *&v359[52] = 2050;
    *&v359[54] = v305;
    *&v359[62] = 1026;
    *&v359[64] = a8;
    *&v359[68] = 1026;
    *&v359[70] = a9;
    v306 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v306);
    if (v306 != buf)
    {
      free(v306);
    }
  }

  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, private", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D244();
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) != 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v59 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, bigswitch", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D07C();
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 608) && (*(a1 + 440) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v299 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v299, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, connectivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D160();
    }

    return 0xFFFFFFFFLL;
  }

  v330 = 0xFFFF;
  v332 = 0;
  v331 = 0;
  v333 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v334 = _Q0;
  v335 = _Q0;
  v336 = _Q0;
  v337 = 0;
  v339 = 0;
  v340 = 0;
  v338 = 0xBFF0000000000000;
  v342 = 0xBFF0000000000000;
  v341 = 0;
  v343 = 0x7FFFFFFF;
  v345 = 0;
  v346 = 0;
  v344 = 0;
  v347 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v29 = *(sub_101227024() + 4);
  v30 = *(sub_101227024() + 3);
  v327 = 0;
  v328 = 0;
  v329 = 0;
  v31 = *a4;
  if (a4[1] != *a4)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = v31 + 432 * v32;
      *v359 = *v34;
      memset(&v359[8], 0, 24);
      sub_10038EB38(&v359[8], *(v34 + 8), *(v34 + 16), (*(v34 + 16) - *(v34 + 8)) >> 2);
      *&v359[32] = *(v34 + 32);
      v35 = *(v34 + 48);
      v36 = *(v34 + 64);
      v37 = *(v34 + 96);
      v360 = *(v34 + 80);
      v361 = v37;
      *&v359[48] = v35;
      *&v359[64] = v36;
      v38 = *(v34 + 112);
      v39 = *(v34 + 128);
      v40 = *(v34 + 160);
      v364 = *(v34 + 144);
      v365 = v40;
      v362 = v38;
      v363 = v39;
      v41 = *(v34 + 176);
      v42 = *(v34 + 192);
      v43 = *(v34 + 208);
      *(v368 + 12) = *(v34 + 220);
      v367 = v42;
      v368[0] = v43;
      v366 = v41;
      if (*(v34 + 263) < 0)
      {
        sub_100007244(&v369, *(v34 + 240), *(v34 + 248));
      }

      else
      {
        v44 = *(v34 + 240);
        v370 = *(v34 + 256);
        v369 = v44;
      }

      v45 = *(v34 + 264);
      v46 = *(v34 + 296);
      v372 = *(v34 + 280);
      v373 = v46;
      v371 = v45;
      v47 = *(v34 + 312);
      v48 = *(v34 + 328);
      v49 = *(v34 + 360);
      v376 = *(v34 + 344);
      v377 = v49;
      v374 = v47;
      v375 = v48;
      v50 = *(v34 + 376);
      v51 = *(v34 + 392);
      v52 = *(v34 + 408);
      v381 = *(v34 + 424);
      v379 = v51;
      v380 = v52;
      v378 = v50;
      sub_1006CF0D4(v359);
      sub_100621C1C(v359, &__p);
      if (a8)
      {
        v53 = sub_1006C52A4(a1);
        sub_100942C7C(*(v53 + 32));
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v54 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        p_p = &__p;
        if (v358 < 0)
        {
          p_p = __p;
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "CELL_LOC: cdma cell, %s, re-querying", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v57 = &__p;
        if (v358 < 0)
        {
          v57 = __p;
        }

        LODWORD(__src) = 136315138;
        *(&__src + 4) = v57;
        v58 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      *buf = v359;
      *(sub_1006E0988(a1 + 248, v359) + 464) = Current;
      sub_1006D3914(&v327, v359);
      if (SHIBYTE(v358) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v370) < 0)
      {
        operator delete(v369);
      }

      if (*&v359[8])
      {
        *&v359[16] = *&v359[8];
        operator delete(*&v359[8]);
      }

      v32 = v33;
      v31 = *a4;
      v56 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4) > v33++;
    }

    while (v56);
  }

  __src = 0uLL;
  v356 = 0;
  if (a2[1] != *a2)
  {
    v61 = 0;
    v62 = 1;
    do
    {
      if (a8)
      {
        v63 = sub_1006C5194(a1);
        sub_1006AA228(*(v63 + 32));
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v64 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10016B7CC(buf);
        v65 = buf;
        if (buf[23] < 0)
        {
          v65 = *buf;
        }

        *v359 = 136315138;
        *&v359[4] = v65;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "CELL_LOC: gsm cell, %s, re-querying", v359, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        sub_10016B7CC(v359);
        v80 = v359;
        if (v359[23] < 0)
        {
          v80 = *v359;
        }

        LODWORD(__p) = 136315138;
        *(&__p + 4) = v80;
        v81 = _os_log_send_and_compose_impl();
        if ((v359[23] & 0x80000000) != 0)
        {
          operator delete(*v359);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v81);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      *buf = *a2 + 32 * v61;
      *(sub_1006E07F8(a1 + 168, *buf) + 64) = Current;
      v66 = (*a2 + 32 * v61);
      v67 = *(&__src + 1);
      if (*(&__src + 1) >= v356)
      {
        v70 = __src;
        v71 = *(&__src + 1) - __src;
        v72 = (*(&__src + 1) - __src) >> 5;
        v73 = v72 + 1;
        if ((v72 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v74 = v356 - __src;
        if ((v356 - __src) >> 4 > v73)
        {
          v73 = v74 >> 4;
        }

        if (v74 >= 0x7FFFFFFFFFFFFFE0)
        {
          v73 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v73)
        {
          sub_1003F6B14(&__src, v73);
        }

        v75 = (*(&__src + 1) - __src) >> 5;
        v76 = (32 * v72);
        v77 = v66[1];
        *v76 = *v66;
        v76[1] = v77;
        v69 = 32 * v72 + 32;
        v78 = &v76[-2 * v75];
        memcpy(v78, v70, v71);
        v79 = __src;
        *&__src = v78;
        *(&__src + 1) = v69;
        v356 = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        v68 = v66[1];
        **(&__src + 1) = *v66;
        *(v67 + 16) = v68;
        v69 = v67 + 32;
      }

      *(&__src + 1) = v69;
      v61 = v62++;
    }

    while (v61 < (a2[1] - *a2) >> 5);
  }

  __p = 0uLL;
  v358 = 0;
  if (a3[1] != *a3)
  {
    v82 = 0;
    v83 = 1;
    do
    {
      if (a8)
      {
        v84 = sub_1006C5084(a1);
        sub_1006AA228(*(v84 + 32));
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v85 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10016B7CC(buf);
        v86 = buf;
        if (buf[23] < 0)
        {
          v86 = *buf;
        }

        *v359 = 136315138;
        *&v359[4] = v86;
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "CELL_LOC: scdma cell, %s, re-querying", v359, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        sub_10016B7CC(v359);
        v101 = v359;
        if (v359[23] < 0)
        {
          v101 = *v359;
        }

        LODWORD(v353) = 136315138;
        *(&v353 + 4) = v101;
        v102 = _os_log_send_and_compose_impl();
        if ((v359[23] & 0x80000000) != 0)
        {
          operator delete(*v359);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v102);
        if (v102 != buf)
        {
          free(v102);
        }
      }

      *buf = *a3 + 32 * v82;
      *(sub_1006E07F8(a1 + 208, *buf) + 64) = Current;
      v87 = (*a3 + 32 * v82);
      v88 = *(&__p + 1);
      if (*(&__p + 1) >= v358)
      {
        v91 = __p;
        v92 = *(&__p + 1) - __p;
        v93 = (*(&__p + 1) - __p) >> 5;
        v94 = v93 + 1;
        if ((v93 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v95 = v358 - __p;
        if ((v358 - __p) >> 4 > v94)
        {
          v94 = v95 >> 4;
        }

        if (v95 >= 0x7FFFFFFFFFFFFFE0)
        {
          v94 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v94)
        {
          sub_1003F6B14(&__p, v94);
        }

        v96 = (*(&__p + 1) - __p) >> 5;
        v97 = (32 * v93);
        v98 = v87[1];
        *v97 = *v87;
        v97[1] = v98;
        v90 = 32 * v93 + 32;
        v99 = &v97[-2 * v96];
        memcpy(v99, v91, v92);
        v100 = __p;
        *&__p = v99;
        *(&__p + 1) = v90;
        v358 = 0;
        if (v100)
        {
          operator delete(v100);
        }
      }

      else
      {
        v89 = v87[1];
        **(&__p + 1) = *v87;
        *(v88 + 16) = v89;
        v90 = v88 + 32;
      }

      *(&__p + 1) = v90;
      v82 = v83++;
    }

    while (v82 < (a3[1] - *a3) >> 5);
  }

  v353 = 0uLL;
  v354 = 0;
  if (a5[1] != *a5)
  {
    v103 = 0;
    v104 = 1;
    do
    {
      if (a8)
      {
        v105 = sub_100090470(a1);
        sub_100082734(*(v105 + 32));
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v106 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_100081198(buf);
        v107 = buf;
        if (buf[23] < 0)
        {
          v107 = *buf;
        }

        *v359 = 136315138;
        *&v359[4] = v107;
        _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_DEBUG, "CELL_LOC: lte cell, %s, re-querying", v359, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        sub_100081198(v359);
        v126 = v359;
        if (v359[23] < 0)
        {
          v126 = *v359;
        }

        LODWORD(v351) = 136315138;
        *(&v351 + 4) = v126;
        v127 = _os_log_send_and_compose_impl();
        if ((v359[23] & 0x80000000) != 0)
        {
          operator delete(*v359);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v127);
        if (v127 != buf)
        {
          free(v127);
        }
      }

      *buf = *a5 + 88 * v103;
      *(sub_1006E0E5C(a1 + 288, *buf) + 120) = Current;
      v108 = *a5 + 88 * v103;
      v109 = *(&v353 + 1);
      if (*(&v353 + 1) >= v354)
      {
        v115 = v353;
        v116 = *(&v353 + 1) - v353;
        v117 = 0x2E8BA2E8BA2E8BA3 * ((*(&v353 + 1) - v353) >> 3);
        v118 = v117 + 1;
        if ((v117 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          sub_10028C64C();
        }

        if (0x5D1745D1745D1746 * ((v354 - v353) >> 3) > v118)
        {
          v118 = 0x5D1745D1745D1746 * ((v354 - v353) >> 3);
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v354 - v353) >> 3)) >= 0x1745D1745D1745DLL)
        {
          v118 = 0x2E8BA2E8BA2E8BALL;
        }

        if (v118)
        {
          sub_1006DFDD4(&v353, v118);
        }

        v119 = 8 * ((*(&v353 + 1) - v353) >> 3);
        v120 = *(v108 + 16);
        *v119 = *v108;
        *(v119 + 16) = v120;
        v121 = *(v108 + 32);
        v122 = *(v108 + 48);
        v123 = *(v108 + 64);
        *(v119 + 80) = *(v108 + 80);
        *(v119 + 48) = v122;
        *(v119 + 64) = v123;
        *(v119 + 32) = v121;
        v114 = 88 * v117 + 88;
        v124 = v119 - v116;
        memcpy((v119 - v116), v115, v116);
        v125 = v353;
        *&v353 = v124;
        *(&v353 + 1) = v114;
        v354 = 0;
        if (v125)
        {
          operator delete(v125);
        }
      }

      else
      {
        v110 = *(v108 + 16);
        **(&v353 + 1) = *v108;
        *(v109 + 16) = v110;
        v111 = *(v108 + 32);
        v112 = *(v108 + 48);
        v113 = *(v108 + 64);
        *(v109 + 80) = *(v108 + 80);
        *(v109 + 48) = v112;
        *(v109 + 64) = v113;
        *(v109 + 32) = v111;
        v114 = v109 + 88;
      }

      *(&v353 + 1) = v114;
      v103 = v104;
      v56 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3) > v104++;
    }

    while (v56);
  }

  v351 = 0uLL;
  v352 = 0;
  if (a6[1] != *a6)
  {
    v128 = 0;
    v129 = 1;
    do
    {
      if (a8)
      {
        v130 = sub_1006C53B4(a1);
        sub_1007F4E08(*(v130 + 32));
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v131 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10062233C(buf);
        v132 = buf;
        if (buf[23] < 0)
        {
          v132 = *buf;
        }

        *v359 = 136315138;
        *&v359[4] = v132;
        _os_log_impl(dword_100000000, v131, OS_LOG_TYPE_DEBUG, "CELL_LOC: nr cell, %s, re-querying", v359, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        sub_10062233C(v359);
        v151 = v359;
        if (v359[23] < 0)
        {
          v151 = *v359;
        }

        LODWORD(v349) = 136315138;
        *(&v349 + 4) = v151;
        v152 = _os_log_send_and_compose_impl();
        if ((v359[23] & 0x80000000) != 0)
        {
          operator delete(*v359);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v152);
        if (v152 != buf)
        {
          free(v152);
        }
      }

      *buf = *a6 + 96 * v128;
      *(sub_1006E0F0C(a1 + 328, *buf) + 128) = Current;
      v133 = (*a6 + 96 * v128);
      v134 = *(&v351 + 1);
      if (*(&v351 + 1) >= v352)
      {
        v140 = v351;
        v141 = *(&v351 + 1) - v351;
        v142 = 0xAAAAAAAAAAAAAAABLL * ((*(&v351 + 1) - v351) >> 5);
        v143 = v142 + 1;
        if (v142 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v352 - v351) >> 5) > v143)
        {
          v143 = 0x5555555555555556 * ((v352 - v351) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v352 - v351) >> 5) >= 0x155555555555555)
        {
          v143 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v143)
        {
          sub_1006DFE30(&v351, v143);
        }

        v144 = (32 * ((*(&v351 + 1) - v351) >> 5));
        v145 = v133[1];
        *v144 = *v133;
        v144[1] = v145;
        v146 = v133[2];
        v147 = v133[3];
        v148 = v133[5];
        v144[4] = v133[4];
        v144[5] = v148;
        v144[2] = v146;
        v144[3] = v147;
        v139 = 96 * v142 + 96;
        v149 = v144 - v141;
        memcpy(v144 - v141, v140, v141);
        v150 = v351;
        *&v351 = v149;
        *(&v351 + 1) = v139;
        v352 = 0;
        if (v150)
        {
          operator delete(v150);
        }
      }

      else
      {
        v135 = v133[1];
        **(&v351 + 1) = *v133;
        v134[1] = v135;
        v136 = v133[2];
        v137 = v133[3];
        v138 = v133[5];
        v134[4] = v133[4];
        v134[5] = v138;
        v134[2] = v136;
        v134[3] = v137;
        v139 = (v134 + 6);
      }

      *(&v351 + 1) = v139;
      v128 = v129;
      v56 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5) > v129++;
    }

    while (v56);
  }

  v349 = 0uLL;
  v350 = 0;
  v153 = *a7;
  v154 = a7[1];
  if (*a7 == v154)
  {
    v156 = 0;
    v322 = 0;
    v155 = 0;
  }

  else
  {
    v155 = 0;
    v322 = 0;
    v156 = 0;
    do
    {
      v157 = *(a1 + 672);
      v348.__r_.__value_.__r.__words[0] = *v153;
      memset(v359, 0, 24);
      sub_1006DFE88(v359, &v348, &v348.__r_.__value_.__l.__size_, 1uLL);
      (*(*v157 + 32))(buf, v157, v359);
      if (*v359)
      {
        *&v359[8] = *v359;
        operator delete(*v359);
      }

      v158 = sub_100198C70(buf, v153);
      if (&buf[8] == v158 || !a8 || Current - *(v158 + 104) >= v29)
      {
        if (!a8 || (v159 = sub_100198C70(a1 + 416, v153), a1 + 424 == v159) || Current - *(v159 + 40) >= v30)
        {
          v348.__r_.__value_.__r.__words[0] = v153;
          *(sub_1006E1238(a1 + 416, v153) + 40) = Current;
          v160 = *(&v349 + 1);
          if (*(&v349 + 1) >= v350)
          {
            v162 = v349;
            v163 = *(&v349 + 1) - v349;
            v164 = (*(&v349 + 1) - v349) >> 3;
            v165 = v164 + 1;
            if ((v164 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v166 = v350 - v349;
            if ((v350 - v349) >> 2 > v165)
            {
              v165 = v166 >> 2;
            }

            _CF = v166 >= 0x7FFFFFFFFFFFFFF8;
            v167 = 0x1FFFFFFFFFFFFFFFLL;
            if (!_CF)
            {
              v167 = v165;
            }

            if (v167)
            {
              sub_1000B9708(&v349, v167);
            }

            *(8 * v164) = *v153;
            v161 = 8 * v164 + 8;
            memcpy(0, v162, v163);
            v168 = v349;
            *&v349 = 0;
            *(&v349 + 1) = v161;
            v350 = 0;
            if (v168)
            {
              operator delete(v168);
            }
          }

          else
          {
            **(&v349 + 1) = *v153;
            v161 = v160 + 8;
          }

          *(&v349 + 1) = v161;
          ++v156;
        }

        else
        {
          ++v322;
        }
      }

      else
      {
        ++v155;
      }

      sub_1003C93BC(buf, *&buf[8]);
      ++v153;
    }

    while (v153 != v154);
  }

  sub_10000EC00(v359, "wifi");
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1006DFEFC;
  *&buf[24] = &unk_10246B738;
  *&buf[40] = v155;
  v169 = v322;
  *&buf[44] = v322;
  *&buf[48] = v156;
  buf[52] = a8;
  *&buf[32] = v359;
  AnalyticsSendEventLazy();
  if ((v359[23] & 0x80000000) != 0)
  {
    operator delete(*v359);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
    v169 = v322;
  }

  v170 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v171 = a7[1] - *a7;
    *buf = 134350080;
    *&buf[4] = v171;
    *&buf[12] = 1026;
    *&buf[14] = v156;
    *&buf[18] = 1026;
    *&buf[20] = v155;
    *&buf[24] = 1026;
    *&buf[26] = v169;
    *&buf[30] = 2050;
    *&buf[32] = (*(&v349 + 1) - v349) >> 3;
    _os_log_impl(dword_100000000, v170, OS_LOG_TYPE_INFO, "AlsWifi, query, in, %{public}lu, paths, %{public}d, %{public}d, %{public}d, out, %{public}lu", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v307 = a7[1] - *a7;
    *v359 = 134350080;
    *&v359[4] = v307;
    *&v359[12] = 1026;
    *&v359[14] = v156;
    *&v359[18] = 1026;
    *&v359[20] = v155;
    *&v359[24] = 1026;
    *&v359[26] = v322;
    *&v359[30] = 2050;
    *&v359[32] = (*(&v349 + 1) - v349) >> 3;
    v308 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v308);
    if (v308 != buf)
    {
      free(v308);
    }
  }

  if (__src != *(&__src + 1))
  {
    v173 = *(&__p + 1);
    v172 = __p;
    v174 = v327;
LABEL_214:
    *(a1 + 560) = ((v173 - v172) >> 5) + ((*(&__src + 1) - __src) >> 5) + 1749801491 * ((v328 - v174) >> 4) + *(a1 + 560) - 1171354717 * ((*(&v353 + 1) - v353) >> 3) - 1431655765 * ((*(&v351 + 1) - v351) >> 5);
    *(a1 + 564) += (*(&v349 + 1) - v349) >> 3;
    if (a9)
    {
      v175 = 100;
    }

    else
    {
      v175 = 1;
    }

    v176 = *(a1 + 448);
    *(v176 + 296) = 0;
    *(v176 + 300) = v175;
    v324 = sub_1006D3954(a1, &__src, &__p, &v327, &v353, &v351, &v349, a10);
    *(*(a1 + 448) + 296) = dword_100000000;
    goto LABEL_218;
  }

  v173 = *(&__p + 1);
  v172 = __p;
  v174 = v327;
  if (__p != *(&__p + 1))
  {
    goto LABEL_214;
  }

  if (v327 != v328 || v353 != *(&v353 + 1) || v351 != *(&v351 + 1))
  {
    v173 = __p;
    goto LABEL_214;
  }

  v173 = __p;
  if (v349 != *(&v349 + 1))
  {
    goto LABEL_214;
  }

  v175 = 0;
  v324 = -1;
LABEL_218:
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v177 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241984;
    *&buf[4] = v324;
    *&buf[8] = 2050;
    *&buf[10] = (*(&__src + 1) - __src) >> 5;
    *&buf[18] = 2050;
    *&buf[20] = (*(&__p + 1) - __p) >> 5;
    *&buf[28] = 2050;
    *&buf[30] = 0x84BDA12F684BDA13 * ((v328 - v327) >> 4);
    *&buf[38] = 2050;
    *&buf[40] = 0x2E8BA2E8BA2E8BA3 * ((*(&v353 + 1) - v353) >> 3);
    *&buf[48] = 2050;
    *&buf[50] = 0xAAAAAAAAAAAAAAABLL * ((*(&v351 + 1) - v351) >> 5);
    *&buf[58] = 2050;
    *&buf[60] = (*(&v349 + 1) - v349) >> 3;
    v383 = 1026;
    v384 = v175;
    _os_log_impl(dword_100000000, v177, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, made, %{public}d, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, nearby, %{public}d\n", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    *v359 = 67241984;
    *&v359[4] = v324;
    *&v359[8] = 2050;
    *&v359[10] = (*(&__src + 1) - __src) >> 5;
    *&v359[18] = 2050;
    *&v359[20] = (*(&__p + 1) - __p) >> 5;
    *&v359[28] = 2050;
    *&v359[30] = 0x84BDA12F684BDA13 * ((v328 - v327) >> 4);
    *&v359[38] = 2050;
    *&v359[40] = 0x2E8BA2E8BA2E8BA3 * ((*(&v353 + 1) - v353) >> 3);
    *&v359[48] = 2050;
    *&v359[50] = 0xAAAAAAAAAAAAAAABLL * ((*(&v351 + 1) - v351) >> 5);
    *&v359[58] = 2050;
    *&v359[60] = (*(&v349 + 1) - v349) >> 3;
    *&v359[68] = 1026;
    *&v359[70] = v175;
    v309 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v309);
    if (v309 != buf)
    {
      free(v309);
    }
  }

  if (*(a1 + 432) > 0x258uLL)
  {
    v178 = *(a1 + 416);
    v179 = (a1 + 424);
    if (v178 != (a1 + 424))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v180 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_1000ECD9C(v359);
          v181 = v359[23];
          v182 = *v359;
          v183 = *(v178 + 5);
          v184 = CFAbsoluteTimeGetCurrent();
          v185 = v359;
          if (v181 < 0)
          {
            v185 = v182;
          }

          v186 = v184 - v178[5];
          *buf = 136381187;
          *&buf[4] = v185;
          *&buf[12] = 2050;
          *&buf[14] = v183;
          *&buf[22] = 2050;
          *&buf[24] = v186;
          _os_log_impl(dword_100000000, v180, OS_LOG_TYPE_DEBUG, "AlsWifi, pending, %{private}s, from, %{public}.3f, %{public}.3fs", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_1000ECD9C(&v348);
          v189 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v190 = v348.__r_.__value_.__r.__words[0];
          v191 = *(v178 + 5);
          v192 = CFAbsoluteTimeGetCurrent();
          v193 = &v348;
          if (v189 < 0)
          {
            v193 = v190;
          }

          v194 = v192 - v178[5];
          *v359 = 136381187;
          *&v359[4] = v193;
          *&v359[12] = 2050;
          *&v359[14] = v191;
          *&v359[22] = 2050;
          *&v359[24] = v194;
          v195 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v195);
          if (v195 != buf)
          {
            free(v195);
          }
        }

        v187 = *(v178 + 1);
        if (v187)
        {
          do
          {
            v188 = v187;
            v187 = *v187;
          }

          while (v187);
        }

        else
        {
          do
          {
            v188 = *(v178 + 2);
            _ZF = *v188 == v178;
            v178 = v188;
          }

          while (!_ZF);
        }

        v178 = v188;
      }

      while (v188 != v179);
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v196 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v197 = *(a1 + 432);
      *buf = 134349056;
      *&buf[4] = v197;
      _os_log_impl(dword_100000000, v196, OS_LOG_TYPE_DEFAULT, "AlsWifi, clearpending, %{public}ld, #CloneMe", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v312 = *(a1 + 432);
      *v359 = 134349056;
      *&v359[4] = v312;
      v313 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v313);
      if (v313 != buf)
      {
        free(v313);
      }
    }

    sub_1003C93BC(a1 + 416, *(a1 + 424));
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    *(a1 + 416) = v179;
  }

  if (*(a1 + 184) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v198 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v199 = *(a1 + 184);
      *buf = 134217984;
      *&buf[4] = v199;
      _os_log_impl(dword_100000000, v198, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending gsm cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v310 = *(a1 + 184);
      *v359 = 134217984;
      *&v359[4] = v310;
      v311 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v311);
      if (v311 != buf)
      {
        free(v311);
      }
    }

    v200 = *(a1 + 168);
    v201 = (a1 + 176);
    if (v200 != (a1 + 176))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v202 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10016B7CC(v359);
          v203 = v359[23];
          v204 = *v359;
          v205 = *(v200 + 8);
          v206 = CFAbsoluteTimeGetCurrent();
          v207 = v359;
          if (v203 < 0)
          {
            v207 = v204;
          }

          v208 = v206 - v200[8];
          *buf = 136315650;
          *&buf[4] = v207;
          *&buf[12] = 2048;
          *&buf[14] = v205;
          *&buf[22] = 2048;
          *&buf[24] = v208;
          _os_log_impl(dword_100000000, v202, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending gsm cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_10016B7CC(&v348);
          v211 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v212 = v348.__r_.__value_.__r.__words[0];
          v213 = *(v200 + 8);
          v214 = CFAbsoluteTimeGetCurrent();
          v215 = &v348;
          if (v211 < 0)
          {
            v215 = v212;
          }

          v216 = v214 - v200[8];
          *v359 = 136315650;
          *&v359[4] = v215;
          *&v359[12] = 2048;
          *&v359[14] = v213;
          *&v359[22] = 2048;
          *&v359[24] = v216;
          v217 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v217);
          if (v217 != buf)
          {
            free(v217);
          }
        }

        v209 = *(v200 + 1);
        if (v209)
        {
          do
          {
            v210 = v209;
            v209 = *v209;
          }

          while (v209);
        }

        else
        {
          do
          {
            v210 = *(v200 + 2);
            _ZF = *v210 == v200;
            v200 = v210;
          }

          while (!_ZF);
        }

        v200 = v210;
      }

      while (v210 != v201);
    }

    sub_1003C93BC(a1 + 168, *(a1 + 176));
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v201;
  }

  if (*(a1 + 224) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v218 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v219 = *(a1 + 224);
      *buf = 134217984;
      *&buf[4] = v219;
      _os_log_impl(dword_100000000, v218, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending scdma cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v314 = *(a1 + 224);
      *v359 = 134217984;
      *&v359[4] = v314;
      v315 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v315);
      if (v315 != buf)
      {
        free(v315);
      }
    }

    v220 = *(a1 + 208);
    v221 = (a1 + 216);
    if (v220 != (a1 + 216))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v222 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10016B7CC(v359);
          v223 = v359[23];
          v224 = *v359;
          v225 = *(v220 + 8);
          v226 = CFAbsoluteTimeGetCurrent();
          v227 = v359;
          if (v223 < 0)
          {
            v227 = v224;
          }

          v228 = v226 - v220[8];
          *buf = 136315650;
          *&buf[4] = v227;
          *&buf[12] = 2048;
          *&buf[14] = v225;
          *&buf[22] = 2048;
          *&buf[24] = v228;
          _os_log_impl(dword_100000000, v222, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending scdma cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_10016B7CC(&v348);
          v231 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v232 = v348.__r_.__value_.__r.__words[0];
          v233 = *(v220 + 8);
          v234 = CFAbsoluteTimeGetCurrent();
          v235 = &v348;
          if (v231 < 0)
          {
            v235 = v232;
          }

          v236 = v234 - v220[8];
          *v359 = 136315650;
          *&v359[4] = v235;
          *&v359[12] = 2048;
          *&v359[14] = v233;
          *&v359[22] = 2048;
          *&v359[24] = v236;
          v237 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v237);
          if (v237 != buf)
          {
            free(v237);
          }
        }

        v229 = *(v220 + 1);
        if (v229)
        {
          do
          {
            v230 = v229;
            v229 = *v229;
          }

          while (v229);
        }

        else
        {
          do
          {
            v230 = *(v220 + 2);
            _ZF = *v230 == v220;
            v220 = v230;
          }

          while (!_ZF);
        }

        v220 = v230;
      }

      while (v230 != v221);
    }

    sub_1003C93BC(a1 + 208, *(a1 + 216));
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 208) = v221;
  }

  if (*(a1 + 264) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v238 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v239 = *(a1 + 264);
      *buf = 134217984;
      *&buf[4] = v239;
      _os_log_impl(dword_100000000, v238, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending cdma cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v316 = *(a1 + 264);
      *v359 = 134217984;
      *&v359[4] = v316;
      v317 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v317);
      if (v317 != buf)
      {
        free(v317);
      }
    }

    v240 = *(a1 + 248);
    v241 = (a1 + 256);
    if (v240 != (a1 + 256))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v242 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100621C1C((v240 + 4), v359);
          v243 = v359[23];
          v244 = *v359;
          v245 = *(v240 + 58);
          v246 = CFAbsoluteTimeGetCurrent();
          v247 = v359;
          if (v243 < 0)
          {
            v247 = v244;
          }

          v248 = v246 - v240[58];
          *buf = 136315650;
          *&buf[4] = v247;
          *&buf[12] = 2048;
          *&buf[14] = v245;
          *&buf[22] = 2048;
          *&buf[24] = v248;
          _os_log_impl(dword_100000000, v242, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending cdma cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_100621C1C((v240 + 4), &v348);
          v251 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v252 = v348.__r_.__value_.__r.__words[0];
          v253 = *(v240 + 58);
          v254 = CFAbsoluteTimeGetCurrent();
          v255 = &v348;
          if (v251 < 0)
          {
            v255 = v252;
          }

          v256 = v254 - v240[58];
          *v359 = 136315650;
          *&v359[4] = v255;
          *&v359[12] = 2048;
          *&v359[14] = v253;
          *&v359[22] = 2048;
          *&v359[24] = v256;
          v257 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v257);
          if (v257 != buf)
          {
            free(v257);
          }
        }

        v249 = *(v240 + 1);
        if (v249)
        {
          do
          {
            v250 = v249;
            v249 = *v249;
          }

          while (v249);
        }

        else
        {
          do
          {
            v250 = *(v240 + 2);
            _ZF = *v250 == v240;
            v240 = v250;
          }

          while (!_ZF);
        }

        v240 = v250;
      }

      while (v250 != v241);
    }

    sub_1006E079C(a1 + 248, *(a1 + 256));
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = v241;
  }

  if (*(a1 + 304) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v258 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v259 = *(a1 + 304);
      *buf = 134217984;
      *&buf[4] = v259;
      _os_log_impl(dword_100000000, v258, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending lte cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v318 = *(a1 + 304);
      *v359 = 134217984;
      *&v359[4] = v318;
      v319 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v319);
      if (v319 != buf)
      {
        free(v319);
      }
    }

    v260 = *(a1 + 288);
    v261 = (a1 + 296);
    if (v260 != (a1 + 296))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v262 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100081198(v359);
          v263 = v359[23];
          v264 = *v359;
          v265 = *(v260 + 15);
          v266 = CFAbsoluteTimeGetCurrent();
          v267 = v359;
          if (v263 < 0)
          {
            v267 = v264;
          }

          v268 = v266 - v260[15];
          *buf = 136315650;
          *&buf[4] = v267;
          *&buf[12] = 2048;
          *&buf[14] = v265;
          *&buf[22] = 2048;
          *&buf[24] = v268;
          _os_log_impl(dword_100000000, v262, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending lte cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_100081198(&v348);
          v271 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v272 = v348.__r_.__value_.__r.__words[0];
          v273 = *(v260 + 15);
          v274 = CFAbsoluteTimeGetCurrent();
          v275 = &v348;
          if (v271 < 0)
          {
            v275 = v272;
          }

          v276 = v274 - v260[15];
          *v359 = 136315650;
          *&v359[4] = v275;
          *&v359[12] = 2048;
          *&v359[14] = v273;
          *&v359[22] = 2048;
          *&v359[24] = v276;
          v277 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v277);
          if (v277 != buf)
          {
            free(v277);
          }
        }

        v269 = *(v260 + 1);
        if (v269)
        {
          do
          {
            v270 = v269;
            v269 = *v269;
          }

          while (v269);
        }

        else
        {
          do
          {
            v270 = *(v260 + 2);
            _ZF = *v270 == v260;
            v260 = v270;
          }

          while (!_ZF);
        }

        v260 = v270;
      }

      while (v270 != v261);
    }

    sub_1003C93BC(a1 + 288, *(a1 + 296));
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = v261;
  }

  if (*(a1 + 344) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v278 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v279 = *(a1 + 344);
      *buf = 134217984;
      *&buf[4] = v279;
      _os_log_impl(dword_100000000, v278, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending nr cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v320 = *(a1 + 344);
      *v359 = 134217984;
      *&v359[4] = v320;
      v321 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v321);
      if (v321 != buf)
      {
        free(v321);
      }
    }

    v280 = *(a1 + 328);
    v281 = (a1 + 336);
    if (v280 != (a1 + 336))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v282 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10062233C(v359);
          v283 = v359[23];
          v284 = *v359;
          v285 = *(v280 + 16);
          v286 = CFAbsoluteTimeGetCurrent();
          v287 = v359;
          if (v283 < 0)
          {
            v287 = v284;
          }

          v288 = v286 - v280[16];
          *buf = 136315650;
          *&buf[4] = v287;
          *&buf[12] = 2048;
          *&buf[14] = v285;
          *&buf[22] = 2048;
          *&buf[24] = v288;
          _os_log_impl(dword_100000000, v282, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending nr cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v359[23] & 0x80000000) != 0)
          {
            operator delete(*v359);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          sub_10062233C(&v348);
          v291 = SHIBYTE(v348.__r_.__value_.__r.__words[2]);
          v292 = v348.__r_.__value_.__r.__words[0];
          v293 = *(v280 + 16);
          v294 = CFAbsoluteTimeGetCurrent();
          v295 = &v348;
          if (v291 < 0)
          {
            v295 = v292;
          }

          v296 = v294 - v280[16];
          *v359 = 136315650;
          *&v359[4] = v295;
          *&v359[12] = 2048;
          *&v359[14] = v293;
          *&v359[22] = 2048;
          *&v359[24] = v296;
          v297 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v348.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v297);
          if (v297 != buf)
          {
            free(v297);
          }
        }

        v289 = *(v280 + 1);
        if (v289)
        {
          do
          {
            v290 = v289;
            v289 = *v289;
          }

          while (v289);
        }

        else
        {
          do
          {
            v290 = *(v280 + 2);
            _ZF = *v290 == v280;
            v280 = v290;
          }

          while (!_ZF);
        }

        v280 = v290;
      }

      while (v290 != v281);
    }

    sub_1003C93BC(a1 + 328, *(a1 + 336));
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 328) = v281;
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  v60 = v324;
  if (v351)
  {
    *(&v351 + 1) = v351;
    operator delete(v351);
  }

  if (v353)
  {
    *(&v353 + 1) = v353;
    operator delete(v353);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }

  *buf = &v327;
  sub_10064AA34(buf);
  return v60;
}

void sub_1006D3660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  a69 = &a23;
  sub_10064AA34(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D3914(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006DF9E8(a1, a2);
  }

  else
  {
    sub_1006DF8B4(a1, a2);
    result = v3 + 432;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006D3954(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (a2[1] - *a2) >> 5;
    v17 = (a3[1] - *a3) >> 5;
    v18 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v19 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v21 = (a7[1] - *a7) >> 3;
    v22 = *(a1 + 120);
    *buf = 134350592;
    *v55 = v16;
    *&v55[8] = 2050;
    v56 = v17;
    v57 = 2050;
    v58 = v18;
    v59 = 2050;
    v60 = v19;
    v61 = 2050;
    v62 = v20;
    v63 = 2050;
    v64 = v21;
    v65 = 1026;
    v66 = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, internal, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, skipnearby, %{public}d\n", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v28 = (a2[1] - *a2) >> 5;
    v29 = (a3[1] - *a3) >> 5;
    v30 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v31 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v32 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v33 = (a7[1] - *a7) >> 3;
    v34 = *(a1 + 120);
    v40 = 134350592;
    v41 = v28;
    v42 = 2050;
    v43 = v29;
    v44 = 2050;
    v45 = v30;
    v46 = 2050;
    v47 = v31;
    v48 = 2050;
    v49 = v32;
    v50 = 2050;
    v51 = v33;
    v52 = 1026;
    v53 = v34;
    v35 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::query(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  sub_10000EC00(__p, "query");
  sub_10023B1D0(a1 + 464, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 120) == 1)
  {
    *(*(a1 + 448) + 296) = dword_100000000;
  }

  v23 = sub_100234858(a1);
  if (v23)
  {
    v24 = 16;
  }

  else
  {
    v24 = 40;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *v55 = v23;
    *&v55[4] = 1024;
    *&v55[6] = v24;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "query, broadDataConnection, %d, timeout, %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D328(v23);
  }

  ++*(a1 + 572);
  v26 = (*(**(a1 + 448) + 24))(*(a1 + 448), a2, a3, a4, a5, a6, a7, a8, v24, v36);
  if (sub_100071CA0())
  {
    sub_10004FD18(buf);
    v40 = *(a1 + 352);
    sub_10004345C(buf, "queryLoc", &v40);
    v40 = v26;
    sub_10004345C(buf, "tag", &v40);
    v40 = (a2[1] - *a2) >> 5;
    sub_10004345C(buf, "p1", &v40);
    v40 = 1749801491 * ((a4[1] - *a4) >> 4);
    sub_10004345C(buf, "p2", &v40);
    v40 = -1171354717 * ((a5[1] - *a5) >> 3);
    sub_10004345C(buf, "p3", &v40);
    v40 = (a7[1] - *a7) >> 3;
    sub_10004345C(buf, "p4", &v40);
    v40 = (a3[1] - *a3) >> 5;
    sub_10004345C(buf, "p5", &v40);
    v40 = -1431655765 * ((a6[1] - *a6) >> 5);
    sub_10004345C(buf, "p6", &v40);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4(buf);
  }

  return v26;
}

void sub_1006D3F7C(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 224);
    v5 = *(a1 + 264);
    v6 = *(a1 + 304);
    v7 = *(a1 + 432);
    v8 = *(a1 + 344);
    v9 = *(a1 + 352);
    v10 = *(a1 + 368);
    *buf = 134350848;
    *&buf[4] = v3;
    *&buf[12] = 2050;
    *&buf[14] = v4;
    *&buf[22] = 2050;
    v137 = v5;
    v138 = 2050;
    v139 = v6;
    v140 = 2050;
    v141 = v7;
    v142 = 2050;
    v143 = v8;
    v144 = 1026;
    v145 = v9;
    v146 = 2050;
    v147 = v10;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@AlsFlow, requery, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, items, fQueryRetries, %{public}d, fLastRetryTimestamp, %{public}.1lf", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D430(a1);
  }

  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning NETWORK: in private location mode; not querying for unknown cells or unknown wifis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D668();
    }
  }

  else if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    if (sub_100071CA0())
    {
      sub_10004FD18(buf);
      *v126 = *(a1 + 352);
      sub_10004345C(buf, "requeryLocations", v126);
      *v126 = *(a1 + 184);
      sub_10004345C(buf, "p1", v126);
      *v126 = *(a1 + 264);
      sub_10004345C(buf, "p2", v126);
      *v126 = *(a1 + 304);
      sub_10004345C(buf, "p3", v126);
      *v126 = *(a1 + 432);
      sub_10004345C(buf, "p4", v126);
      *v126 = *(a1 + 224);
      sub_10004345C(buf, "p5", v126);
      *v126 = *(a1 + 344);
      sub_10004345C(buf, "p6", v126);
      sub_100071CAC(buf, "locationd");
      sub_100005DA4(buf);
    }

    __src = 0;
    v124 = 0;
    v125 = 0;
    __p = 0;
    v121 = 0;
    v122 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v12 = *(a1 + 168);
    if (v12 != (a1 + 176))
    {
      v13 = 0;
      do
      {
        if (v13 >= v125)
        {
          v15 = __src;
          v16 = v13 - __src;
          v17 = (v13 - __src) >> 5;
          v18 = v17 + 1;
          if ((v17 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v19 = v125 - __src;
          if ((v125 - __src) >> 4 > v18)
          {
            v18 = v19 >> 4;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFE0)
          {
            v20 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_1003F6B14(&__src, v20);
          }

          v21 = (v13 - __src) >> 5;
          v22 = (32 * v17);
          v23 = *(v12 + 3);
          *v22 = *(v12 + 2);
          v22[1] = v23;
          v13 = (32 * v17 + 32);
          v24 = (32 * v17 - 32 * v21);
          memcpy(&v22[-2 * v21], v15, v16);
          v25 = __src;
          __src = v24;
          v124 = v13;
          v125 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v14 = *(v12 + 3);
          *v13 = *(v12 + 2);
          *(v13 + 1) = v14;
          v13 += 32;
        }

        v124 = v13;
        v26 = v12[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v12[2];
            v28 = *v27 == v12;
            v12 = v27;
          }

          while (!v28);
        }

        v12 = v27;
      }

      while (v27 != (a1 + 176));
    }

    v29 = *(a1 + 208);
    if (v29 != (a1 + 216))
    {
      v30 = v121;
      do
      {
        if (v30 >= v122)
        {
          v32 = __p;
          v33 = v30 - __p;
          v34 = (v30 - __p) >> 5;
          v35 = v34 + 1;
          if ((v34 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v36 = v122 - __p;
          if ((v122 - __p) >> 4 > v35)
          {
            v35 = v36 >> 4;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFE0)
          {
            v37 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1003F6B14(&__p, v37);
          }

          v38 = (v30 - __p) >> 5;
          v39 = (32 * v34);
          v40 = *(v29 + 3);
          *v39 = *(v29 + 2);
          v39[1] = v40;
          v30 = (32 * v34 + 32);
          v41 = (32 * v34 - 32 * v38);
          memcpy(&v39[-2 * v38], v32, v33);
          v42 = __p;
          __p = v41;
          v121 = v30;
          v122 = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          v31 = *(v29 + 3);
          *v30 = *(v29 + 2);
          *(v30 + 1) = v31;
          v30 += 32;
        }

        v121 = v30;
        v43 = v29[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v29[2];
            v28 = *v44 == v29;
            v29 = v44;
          }

          while (!v28);
        }

        v29 = v44;
      }

      while (v44 != (a1 + 216));
    }

    v45 = *(a1 + 248);
    if (v45 != (a1 + 256))
    {
      do
      {
        sub_1006D3914(&v117, (v45 + 4));
        v46 = v45[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v45[2];
            v28 = *v47 == v45;
            v45 = v47;
          }

          while (!v28);
        }

        v45 = v47;
      }

      while (v47 != (a1 + 256));
    }

    v48 = *(a1 + 288);
    if (v48 != (a1 + 296))
    {
      v49 = v115;
      do
      {
        if (v49 >= v116)
        {
          v54 = v114;
          v55 = v49 - v114;
          v56 = 0x2E8BA2E8BA2E8BA3 * ((v49 - v114) >> 3);
          v57 = v56 + 1;
          if ((v56 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            sub_10028C64C();
          }

          if (0x5D1745D1745D1746 * ((v116 - v114) >> 3) > v57)
          {
            v57 = 0x5D1745D1745D1746 * ((v116 - v114) >> 3);
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((v116 - v114) >> 3)) >= 0x1745D1745D1745DLL)
          {
            v58 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            sub_1006DFDD4(&v114, v58);
          }

          v59 = 8 * ((v49 - v114) >> 3);
          v60 = *(v48 + 3);
          *v59 = *(v48 + 2);
          *(v59 + 16) = v60;
          v61 = *(v48 + 4);
          v62 = *(v48 + 5);
          v63 = *(v48 + 6);
          *(v59 + 80) = v48[14];
          *(v59 + 48) = v62;
          *(v59 + 64) = v63;
          *(v59 + 32) = v61;
          v49 = 88 * v56 + 88;
          v64 = (88 * v56 - v55);
          memcpy((v59 - v55), v54, v55);
          v65 = v114;
          v114 = v64;
          v115 = v49;
          v116 = 0;
          if (v65)
          {
            operator delete(v65);
          }
        }

        else
        {
          v50 = *(v48 + 3);
          *v49 = *(v48 + 2);
          *(v49 + 16) = v50;
          v51 = *(v48 + 4);
          v52 = *(v48 + 5);
          v53 = *(v48 + 6);
          *(v49 + 80) = v48[14];
          *(v49 + 48) = v52;
          *(v49 + 64) = v53;
          *(v49 + 32) = v51;
          v49 += 88;
        }

        v115 = v49;
        v66 = v48[1];
        if (v66)
        {
          do
          {
            v67 = v66;
            v66 = *v66;
          }

          while (v66);
        }

        else
        {
          do
          {
            v67 = v48[2];
            v28 = *v67 == v48;
            v48 = v67;
          }

          while (!v28);
        }

        v48 = v67;
      }

      while (v67 != (a1 + 296));
    }

    v68 = *(a1 + 416);
    if (v68 != (a1 + 424))
    {
      v69 = v109;
      do
      {
        if (v69 >= v110)
        {
          v70 = v108;
          v71 = v69 - v108;
          v72 = (v69 - v108) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v74 = v110 - v108;
          if ((v110 - v108) >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            sub_1000B9708(&v108, v75);
          }

          v76 = (v69 - v108) >> 3;
          v77 = (8 * v72);
          v78 = (8 * v72 - 8 * v76);
          *v77 = v68[4];
          v69 = (v77 + 1);
          memcpy(v78, v70, v71);
          v79 = v108;
          v108 = v78;
          v109 = v69;
          v110 = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v69 = v68[4];
          v69 += 8;
        }

        v109 = v69;
        v80 = v68[1];
        if (v80)
        {
          do
          {
            v81 = v80;
            v80 = *v80;
          }

          while (v80);
        }

        else
        {
          do
          {
            v81 = v68[2];
            v28 = *v81 == v68;
            v68 = v81;
          }

          while (!v28);
        }

        v68 = v81;
      }

      while (v81 != (a1 + 424));
    }

    v82 = *(a1 + 328);
    if (v82 != (a1 + 336))
    {
      v83 = v112;
      do
      {
        if (v83 >= v113)
        {
          v88 = v111;
          v89 = v83 - v111;
          v90 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v111) >> 5);
          v91 = v90 + 1;
          if (v90 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v113 - v111) >> 5) > v91)
          {
            v91 = 0x5555555555555556 * ((v113 - v111) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v113 - v111) >> 5) >= 0x155555555555555)
          {
            v92 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v92 = v91;
          }

          if (v92)
          {
            sub_1006DFE30(&v111, v92);
          }

          v93 = (32 * ((v83 - v111) >> 5));
          v94 = *(v82 + 3);
          *v93 = *(v82 + 2);
          v93[1] = v94;
          v95 = *(v82 + 4);
          v96 = *(v82 + 5);
          v97 = *(v82 + 7);
          v93[4] = *(v82 + 6);
          v93[5] = v97;
          v93[2] = v95;
          v93[3] = v96;
          v83 = (96 * v90 + 96);
          v98 = (96 * v90 - v89);
          memcpy(v93 - v89, v88, v89);
          v99 = v111;
          v111 = v98;
          v112 = v83;
          v113 = 0;
          if (v99)
          {
            operator delete(v99);
          }
        }

        else
        {
          v84 = *(v82 + 3);
          *v83 = *(v82 + 2);
          *(v83 + 1) = v84;
          v85 = *(v82 + 4);
          v86 = *(v82 + 5);
          v87 = *(v82 + 7);
          *(v83 + 4) = *(v82 + 6);
          *(v83 + 5) = v87;
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          v83 += 96;
        }

        v112 = v83;
        v100 = v82[1];
        if (v100)
        {
          do
          {
            v101 = v100;
            v100 = *v100;
          }

          while (v100);
        }

        else
        {
          do
          {
            v101 = v82[2];
            v28 = *v101 == v82;
            v82 = v101;
          }

          while (!v28);
        }

        v82 = v101;
      }

      while (v101 != (a1 + 336));
    }

    if (__src != v124 || __p != v121 || v108 != v109 || v114 != v115 || v117 != v118 || v111 != v112)
    {
      if (qword_1025D4620 == -1)
      {
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      else
      {
        sub_10190B63C();
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v103 = p_info[197];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        v104 = *(a1 + 352);
        *buf = 134219520;
        *&buf[4] = (v124 - __src) >> 5;
        *&buf[12] = 2048;
        *&buf[14] = (v121 - __p) >> 5;
        *&buf[22] = 2048;
        v137 = 0x84BDA12F684BDA13 * ((v118 - v117) >> 4);
        v138 = 2048;
        v139 = 0x2E8BA2E8BA2E8BA3 * ((v115 - v114) >> 3);
        v140 = 2048;
        v141 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 5);
        v142 = 2048;
        v143 = (v109 - v108) >> 3;
        v144 = 1024;
        v145 = v104;
        _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "NETWORK: re-querying cells, %lu, %lu, %lu, %lu, %lu, wifis, %lu, retry count, %d", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v106 = *(a1 + 352);
        *v126 = 134219520;
        *&v126[4] = (v124 - __src) >> 5;
        *&v126[12] = 2048;
        *&v126[14] = (v121 - __p) >> 5;
        *&v126[22] = 2048;
        v127 = 0x84BDA12F684BDA13 * ((v118 - v117) >> 4);
        v128 = 2048;
        v129 = 0x2E8BA2E8BA2E8BA3 * ((v115 - v114) >> 3);
        v130 = 2048;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 5);
        v132 = 2048;
        v133 = (v109 - v108) >> 3;
        v134 = 1024;
        v135 = v106;
        v107 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::requeryLocations()", "%s\n", v107);
        if (v107 != buf)
        {
          free(v107);
        }
      }

      sub_10000EC00(v126, "requeryLocations");
      *buf = 1;
      if ((v126[23] & 0x80000000) != 0)
      {
        sub_100007244(&buf[8], *v126, *&v126[8]);
      }

      else
      {
        *&buf[8] = *v126;
        v137 = *&v126[16];
      }

      *(a1 + 528) = sub_1006D3954(a1, &__src, &__p, &v117, &v114, &v111, &v108, buf);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(*&buf[8]);
      }

      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }
    }

    *(a1 + 368) = CFAbsoluteTimeGetCurrent();
    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    *buf = &v117;
    sub_10064AA34(buf);
    if (__p)
    {
      v121 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v124 = __src;
      operator delete(__src);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v105 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEFAULT, "#Warning NETWORK: Location Services disabled, not querying location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D584();
    }
  }
}

void sub_1006D4CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  a42 = &a20;
  sub_10064AA34(&a42);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006D4DC8(void *a1, uint64_t a2, int a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134217984;
    v21 = a1;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: start sequence, This, %p", &v20, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D74C();
  }

  if (a3)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: beginning cell database", &v20, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D950();
    }

    v7 = sub_1006C5194(a1);
    v8 = sub_1006C5084(a1);
    v9 = sub_1006C52A4(a1);
    v10 = sub_100090470(a1);
    v11 = sub_1006C53B4(a1);
    sub_100652C64(*(v7 + 32));
    sub_100652C64(*(v8 + 32));
    sub_100652C64(*(v9 + 32));
    sub_100652C64(*(v10 + 32));
    return sub_100652C64(*(v11 + 32));
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v14 = (a1[28] + a1[23] + a1[33] + a1[38] + a1[43]);
      v20 = 134217984;
      v21 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CELL_LOC: ending cell database (%lu cells still pending)", &v20, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D83C();
    }

    v15 = sub_1006C5194(a1);
    sub_100652C6C(*(v15 + 32));
    v16 = sub_1006C5084(a1);
    sub_100652C6C(*(v16 + 32));
    v17 = sub_1006C52A4(a1);
    sub_100652C6C(*(v17 + 32));
    v18 = sub_100090470(a1);
    sub_100652C6C(*(v18 + 32));
    v19 = sub_1006C53B4(a1);
    return sub_100652C6C(*(v19 + 32));
  }
}

void sub_1006D5068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123E5CC(v34, a3, 9);
  sub_10007AD10(v34, -1, -1, -1, -1);
  v7 = sub_1006CCAA0(v34, v6);
  v8 = sub_1006C5084(a1);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v9 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a4 + 4);
    v11 = *(a4 + 12);
    v12 = *(a4 + 20);
    v13 = *v7;
    v14 = v7[1];
    v15 = v7[2];
    v16 = v7[3];
    v17 = *(a4 + 84);
    v18 = *(a1 + 384);
    *buf = 136317955;
    v64 = "Network-Cell";
    v65 = 1024;
    v66 = 1;
    v67 = 2053;
    v68 = v10;
    v69 = 2053;
    v70 = v11;
    v71 = 2048;
    v72 = v12;
    v73 = 1024;
    v74 = v13;
    v75 = 1024;
    v76 = v14;
    v77 = 1024;
    v78 = v15;
    v79 = 1024;
    v80 = v16;
    v81 = 1024;
    v82 = v17;
    v83 = 1024;
    v84 = v18;
    v85 = 1024;
    v86 = -1;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", buf, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v23 = *(a4 + 4);
    v24 = *(a4 + 12);
    v25 = *(a4 + 20);
    v26 = *v7;
    v27 = v7[1];
    v28 = v7[2];
    v29 = v7[3];
    v30 = *(a4 + 84);
    v31 = *(a1 + 384);
    v39 = 136317955;
    v40 = "Network-Cell";
    v41 = 1024;
    v42 = 1;
    v43 = 2053;
    v44 = v23;
    v45 = 2053;
    v46 = v24;
    v47 = 2048;
    v48 = v25;
    v49 = 1024;
    v50 = v26;
    v51 = 1024;
    v52 = v27;
    v53 = 1024;
    v54 = v28;
    v55 = 1024;
    v56 = v29;
    v57 = 1024;
    v58 = v30;
    v59 = 1024;
    v60 = v31;
    v61 = 1024;
    v62 = -1;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  v19 = sub_1006E1130(a1 + 208, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v21 = sub_1006CCAA0(v34, v20);
    if (sub_1006AA994(*(v8 + 32), v21, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v39) = 0;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

  if ((a1 + 216) != v19)
  {
    sub_10045E8A0((a1 + 208), v19);
    operator delete(v19);
  }

  if (v38 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_1006D54F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123E5CC(v24, a3, 9);
  sub_10007AD10(v24, -1, -1, -1, -1);
  v5 = sub_1006CCAA0(v24, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *buf = 136317187;
    v48 = "Network-Cell";
    v49 = 0x805000000000400;
    *v50 = 0;
    *&v50[8] = 2053;
    *&v50[10] = 0;
    *&v50[18] = 2048;
    *&v50[20] = 0xBFF0000000000000;
    *&v50[28] = 1024;
    *&v50[30] = v7;
    *&v50[34] = 1024;
    *&v50[36] = v8;
    *&v50[40] = 1024;
    *&v50[42] = v9;
    *&v50[46] = 1024;
    LODWORD(v51) = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v18 = *v5;
    v19 = v5[1];
    v20 = v5[2];
    v21 = v5[3];
    v29 = 136317187;
    v30 = "Network-Cell";
    v31 = 1024;
    v32 = 0;
    v33 = 2053;
    v34 = 0;
    v35 = 2053;
    v36 = 0;
    v37 = 2048;
    v38 = 0xBFF0000000000000;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v19;
    v43 = 1024;
    v44 = v20;
    v45 = 1024;
    v46 = v21;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v49 = 0;
    v48 = 0;
    *v50 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v50[16] = _Q0;
    *&v50[32] = _Q0;
    v51 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v53 = 0;
    v56 = 0;
    v54 = 0xBFF0000000000000;
    v55 = 0;
    v58 = 0xBFF0000000000000;
    v57 = 0;
    v59 = 0x7FFFFFFF;
    v62 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = sub_1006C5084(a1);
    sub_1006AA994(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v29) = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  sub_1006E13A8((a1 + 208), v5);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_1006D5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123E314(v32, a3, 0);
  sub_10007AD10(v32, -1, -1, -1, -1);
  v6 = sub_1006CBCE4(v32);
  v7 = sub_1006C5194(a1);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v8 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a4 + 4);
    v10 = *(a4 + 12);
    v11 = *(a4 + 20);
    v12 = *v6;
    v13 = v6[1];
    v14 = v6[2];
    v15 = v6[3];
    v16 = *(a4 + 84);
    v17 = *(a1 + 384);
    *buf = 136317955;
    v62 = "Network-Cell";
    v63 = 1024;
    v64 = 1;
    v65 = 2053;
    v66 = v9;
    v67 = 2053;
    v68 = v10;
    v69 = 2048;
    v70 = v11;
    v71 = 1024;
    v72 = v12;
    v73 = 1024;
    v74 = v13;
    v75 = 1024;
    v76 = v14;
    v77 = 1024;
    v78 = v15;
    v79 = 1024;
    v80 = v16;
    v81 = 1024;
    v82 = v17;
    v83 = 1024;
    v84 = -1;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", buf, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v21 = *(a4 + 4);
    v22 = *(a4 + 12);
    v23 = *(a4 + 20);
    v24 = *v6;
    v25 = v6[1];
    v26 = v6[2];
    v27 = v6[3];
    v28 = *(a4 + 84);
    v29 = *(a1 + 384);
    v37 = 136317955;
    v38 = "Network-Cell";
    v39 = 1024;
    v40 = 1;
    v41 = 2053;
    v42 = v21;
    v43 = 2053;
    v44 = v22;
    v45 = 2048;
    v46 = v23;
    v47 = 1024;
    v48 = v24;
    v49 = 1024;
    v50 = v25;
    v51 = 1024;
    v52 = v26;
    v53 = 1024;
    v54 = v27;
    v55 = 1024;
    v56 = v28;
    v57 = 1024;
    v58 = v29;
    v59 = 1024;
    v60 = -1;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  v18 = sub_1006E1130(a1 + 168, v6);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v19 = sub_1006CBCE4(v32);
    if (sub_1006AA994(*(v7 + 32), v19, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v37) = 0;
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  if ((a1 + 176) != v18)
  {
    sub_10045E8A0((a1 + 168), v18);
    operator delete(v18);
  }

  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

void sub_1006D5E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123E314(v23, a3, 0);
  sub_10007AD10(v23, -1, -1, -1, -1);
  v4 = sub_1006CBCE4(v23);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v5 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    *buf = 136317187;
    v47 = "Network-Cell";
    v48 = 0x805000000000400;
    *v49 = 0;
    *&v49[8] = 2053;
    *&v49[10] = 0;
    *&v49[18] = 2048;
    *&v49[20] = 0xBFF0000000000000;
    *&v49[28] = 1024;
    *&v49[30] = v6;
    *&v49[34] = 1024;
    *&v49[36] = v7;
    *&v49[40] = 1024;
    *&v49[42] = v8;
    *&v49[46] = 1024;
    LODWORD(v50) = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v17 = *v4;
    v18 = v4[1];
    v19 = v4[2];
    v20 = v4[3];
    v28 = 136317187;
    v29 = "Network-Cell";
    v30 = 1024;
    v31 = 0;
    v32 = 2053;
    v33 = 0;
    v34 = 2053;
    v35 = 0;
    v36 = 2048;
    v37 = 0xBFF0000000000000;
    v38 = 1024;
    v39 = v17;
    v40 = 1024;
    v41 = v18;
    v42 = 1024;
    v43 = v19;
    v44 = 1024;
    v45 = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v48 = 0;
    v47 = 0;
    *v49 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v49[16] = _Q0;
    *&v49[32] = _Q0;
    v50 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v52 = 0;
    v55 = 0;
    v53 = 0xBFF0000000000000;
    v54 = 0;
    v57 = 0xBFF0000000000000;
    v56 = 0;
    v58 = 0x7FFFFFFF;
    v61 = 0;
    v59 = 0;
    v60 = 0;
    v62 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v15 = sub_1006C5194(a1);
    sub_1006AA994(*(v15 + 32), v4, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v28) = 0;
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  sub_1006E13A8((a1 + 168), v4);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_1006D628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D62B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123E998(v46, a3, 3);
  sub_10007AD10(v46, -1, -1, -1, -1);
  v7 = sub_1006CB140(v46, v6);
  sub_100621C1C(v7, __p);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v8 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a4 + 4);
    v10 = *(a4 + 12);
    v11 = *(a4 + 20);
    v12 = *v7;
    v13 = v7[58];
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[11];
    v17 = *(a4 + 84);
    v18 = *(a1 + 384);
    *buf = 136318211;
    v72 = "Network-Cell";
    v73 = 1024;
    *v74 = 1;
    *&v74[4] = 2053;
    *&v74[6] = v9;
    *&v74[14] = 2053;
    *&v74[16] = v10;
    *&v74[24] = 2048;
    *&v74[26] = v11;
    v75 = 1024;
    v76 = v12;
    v77 = 1024;
    v78 = v13;
    v79 = 1024;
    v80 = v14;
    v81 = 1024;
    v82 = v15;
    v83 = 1024;
    v84 = v16;
    v85 = 1024;
    v86 = v17;
    v87 = 1024;
    v88 = v18;
    v89 = 1024;
    v90 = -1;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d,Confidence,%d,Count,%d,lock,%d", buf, 0x60u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v27 = *(a4 + 4);
    v28 = *(a4 + 12);
    v29 = *(a4 + 20);
    v30 = *v7;
    v31 = v7[58];
    v32 = v7[8];
    v33 = v7[9];
    v34 = v7[11];
    v35 = *(a4 + 84);
    v36 = *(a1 + 384);
    v51 = 136318211;
    v52 = "Network-Cell";
    v53 = 1024;
    *v54 = 1;
    *&v54[4] = 2053;
    *&v54[6] = v27;
    *&v54[14] = 2053;
    *&v54[16] = v28;
    *&v54[24] = 2048;
    *&v54[26] = v29;
    v55 = 1024;
    v56 = v30;
    v57 = 1024;
    v58 = v31;
    v59 = 1024;
    v60 = v32;
    v61 = 1024;
    v62 = v33;
    v63 = 1024;
    v64 = v34;
    v65 = 1024;
    v66 = v35;
    v67 = 1024;
    v68 = v36;
    v69 = 1024;
    v70 = -1;
    v37 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v20 = __p;
    if (v45 < 0)
    {
      v20 = __p[0];
    }

    v21 = *(a4 + 4);
    v22 = *(a4 + 12);
    v23 = *(a4 + 20);
    *buf = 136315907;
    v72 = v20;
    v73 = 2053;
    *v74 = v21;
    *&v74[8] = 2053;
    *&v74[10] = v22;
    *&v74[18] = 2048;
    *&v74[20] = v23;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response cell(%s) loc (%{sensitive}lf %{sensitive}lf) acc(%lf)", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v38 = __p;
    if (v45 < 0)
    {
      v38 = __p[0];
    }

    v39 = *(a4 + 4);
    v40 = *(a4 + 12);
    v41 = *(a4 + 20);
    v51 = 136315907;
    v52 = v38;
    v53 = 2053;
    *v54 = v39;
    *&v54[8] = 2053;
    *&v54[10] = v40;
    *&v54[18] = 2048;
    *&v54[20] = v41;
    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  v24 = sub_1006E10AC(a1 + 248, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_1006C52A4(a1);
    if (sub_1009433FC(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v51) = 0;
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }

  if ((a1 + 256) != v24)
  {
    sub_10045E8A0((a1 + 248), v24);
    sub_10064AAB8((v24 + 4));
    operator delete(v24);
  }

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_1006D68FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123E998(v26, a3, 3);
  sub_10007AD10(v26, -1, -1, -1, -1);
  v5 = sub_1006CB140(v26, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[58];
    v9 = v5[8];
    v10 = v5[9];
    v11 = v5[11];
    *buf = 136317443;
    v52 = "Network-Cell";
    v53 = 0x805000000000400;
    *v54 = 0;
    *&v54[8] = 2053;
    *&v54[10] = 0;
    *&v54[18] = 2048;
    *&v54[20] = 0xBFF0000000000000;
    *&v54[28] = 1024;
    *&v54[30] = v7;
    *&v54[34] = 1024;
    *&v54[36] = v8;
    *&v54[40] = 1024;
    *&v54[42] = v9;
    *&v54[46] = 1024;
    LODWORD(v55) = v10;
    WORD2(v55) = 1024;
    *(&v55 + 6) = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d", buf, 0x4Eu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v19 = *v5;
    v20 = v5[58];
    v21 = v5[8];
    v22 = v5[9];
    v23 = v5[11];
    v31 = 136317443;
    v32 = "Network-Cell";
    v33 = 1024;
    v34 = 0;
    v35 = 2053;
    v36 = 0;
    v37 = 2053;
    v38 = 0;
    v39 = 2048;
    v40 = 0xBFF0000000000000;
    v41 = 1024;
    v42 = v19;
    v43 = 1024;
    v44 = v20;
    v45 = 1024;
    v46 = v21;
    v47 = 1024;
    v48 = v22;
    v49 = 1024;
    v50 = v23;
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v53 = 0;
    v52 = 0;
    *v54 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v54[16] = _Q0;
    *&v54[32] = _Q0;
    *&v55 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v56 = 0;
    v59 = 0;
    v57 = 0xBFF0000000000000;
    v58 = 0;
    v61 = 0xBFF0000000000000;
    v60 = 0;
    v62 = 0x7FFFFFFF;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v66 = 0;
    *(&v55 + 1) = CFAbsoluteTimeGetCurrent();
    v17 = sub_1006C52A4(a1);
    sub_1009433FC(*(v17 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v31) = 0;
      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  sub_1006E13FC((a1 + 248), v5);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_1006D6DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123EC40(v57, a3, 6);
  sub_10007AD10(v57, -1, -1, -1, -1);
  v7 = sub_10007513C(v57, v6);
  sub_100081198(v55);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v10 = v56;
    v11 = v55[0];
    sub_100072AFC(a4, __p);
    v12 = v55;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if ((v91 & 0x80000000) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136315395;
    *&buf[4] = v12;
    v63 = 2085;
    *v64 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response lte cell, %s, location, %{sensitive}s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v33 = v56;
    v34 = v55[0];
    sub_100072AFC(a4, buf);
    v35 = v55;
    if (v33 < 0)
    {
      v35 = v34;
    }

    if (v64[9] >= 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    v83 = 136315395;
    v84 = v35;
    v85 = 2085;
    v86 = v36;
    v37 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v37);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v37 != __p)
    {
      free(v37);
    }
  }

  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v14 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a4 + 4);
    v16 = *(a4 + 12);
    v17 = *(a4 + 20);
    v18 = *v7;
    v19 = v7[1];
    v20 = v7[2];
    v21 = v7[3];
    v22 = *(a4 + 84);
    v23 = *(a1 + 384);
    *__p = 136317955;
    *&__p[4] = "Network-Cell";
    v88 = 1024;
    v89 = 1;
    v90 = 2053;
    v91 = v15;
    v92 = 2053;
    v93 = v16;
    v94 = 2048;
    v95 = v17;
    v96 = 1024;
    v97 = v18;
    v98 = 1024;
    v99 = v19;
    v100 = 1024;
    v101 = v20;
    v102 = 1024;
    v103 = v21;
    v104 = 1024;
    v105 = v22;
    v106 = 1024;
    v107 = v23;
    v108 = 1024;
    v109 = -1;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", __p, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(__p);
    v38 = *(a4 + 4);
    v39 = *(a4 + 12);
    v40 = *(a4 + 20);
    v41 = *v7;
    v42 = v7[1];
    v43 = v7[2];
    v44 = v7[3];
    v45 = *(a4 + 84);
    v46 = *(a1 + 384);
    *buf = 136317955;
    *&buf[4] = "Network-Cell";
    v63 = 1024;
    *v64 = 1;
    *&v64[4] = 2053;
    *&v64[6] = v38;
    v65 = 2053;
    v66 = v39;
    v67 = 2048;
    v68 = v40;
    v69 = 1024;
    v70 = v41;
    v71 = 1024;
    v72 = v42;
    v73 = 1024;
    v74 = v43;
    v75 = 1024;
    v76 = v44;
    v77 = 1024;
    v78 = v45;
    v79 = 1024;
    v80 = v46;
    v81 = 1024;
    v82 = -1;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v47);
    if (v47 != __p)
    {
      free(v47);
    }
  }

  v24 = sub_1006E1130(a1 + 288, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_100090470(a1);
    if (sub_100CF9658(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = p_info[197];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(__p);
      *buf = 0;
      v54 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v54);
      if (v54 != __p)
      {
        free(v54);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v27 = p_info[197];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 304);
    sub_100081198(__p);
    v29 = (v91 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v28;
    v63 = 2080;
    *v64 = v29;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, before, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v48 = *(a1 + 304);
    sub_100081198(buf);
    if (v64[9] >= 0)
    {
      v49 = buf;
    }

    else
    {
      v49 = *buf;
    }

    v83 = 134218242;
    v84 = v48;
    v85 = 2080;
    v86 = v49;
    v50 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v50);
    if (v50 != __p)
    {
      free(v50);
    }
  }

  if ((a1 + 296) != v24)
  {
    sub_10045E8A0((a1 + 288), v24);
    operator delete(v24);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v30 = p_info[197];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 304);
    sub_100081198(__p);
    v32 = (v91 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v31;
    v63 = 2080;
    *v64 = v32;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, after, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v51 = *(a1 + 304);
    sub_100081198(buf);
    if (v64[9] >= 0)
    {
      v52 = buf;
    }

    else
    {
      v52 = *buf;
    }

    v83 = 134218242;
    v84 = v51;
    v85 = 2080;
    v86 = v52;
    v53 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v53);
    if (v53 != __p)
    {
      free(v53);
    }
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_1006D7758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D77C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123EC40(v36, a3, 6);
  sub_10007AD10(v36, -1, -1, -1, -1);
  v5 = sub_10007513C(v36, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *buf = 136317187;
    *&buf[4] = "Network-Cell";
    v61 = 0x805000000000400;
    *v62 = 0;
    *&v62[8] = 2053;
    *&v62[10] = 0;
    *&v62[18] = 2048;
    *&v62[20] = 0xBFF0000000000000;
    *&v62[28] = 1024;
    *&v62[30] = v7;
    *&v62[34] = 1024;
    *&v62[36] = v8;
    *&v62[40] = 1024;
    *&v62[42] = v9;
    *&v62[46] = 1024;
    LODWORD(v63) = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v24 = *v5;
    v25 = v5[1];
    v26 = v5[2];
    v27 = v5[3];
    *v45 = 136317187;
    *&v45[4] = "Network-Cell";
    v46 = 1024;
    *v47 = 0;
    *&v47[4] = 2053;
    *&v47[6] = 0;
    v48 = 2053;
    v49 = 0;
    v50 = 2048;
    v51 = 0xBFF0000000000000;
    v52 = 1024;
    v53 = v24;
    v54 = 1024;
    v55 = v25;
    v56 = 1024;
    v57 = v26;
    v58 = 1024;
    v59 = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v61 = 0;
    *&buf[4] = 0;
    *v62 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v62[16] = _Q0;
    *&v62[32] = _Q0;
    v63 = _Q0;
    *buf = 0xFFFF;
    v64 = 0;
    v67 = 0;
    v65 = 0xBFF0000000000000;
    v66 = 0;
    v69 = 0xBFF0000000000000;
    v68 = 0;
    v70 = 0x7FFFFFFF;
    v73 = 0;
    v71 = 0;
    v72 = 0;
    v74 = 0;
    *(&v63 + 1) = CFAbsoluteTimeGetCurrent();
    v16 = sub_100090470(a1);
    sub_100CF9658(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      *v45 = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v18 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 304);
    sub_100081198(buf);
    v20 = v62[3] >= 0 ? buf : *buf;
    *v45 = 134218242;
    *&v45[4] = v19;
    v46 = 2080;
    *v47 = v20;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, before, %lu, cell, %s", v45, 0x16u);
    if ((v62[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v29 = *(a1 + 304);
    sub_100081198(v45);
    if (v47[9] >= 0)
    {
      v30 = v45;
    }

    else
    {
      v30 = *v45;
    }

    v41 = 134218242;
    v42 = v29;
    v43 = 2080;
    v44 = v30;
    v31 = _os_log_send_and_compose_impl();
    if ((v47[9] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  sub_1006E13A8((a1 + 288), v5);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v21 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 304);
    sub_100081198(buf);
    v23 = v62[3] >= 0 ? buf : *buf;
    *v45 = 134218242;
    *&v45[4] = v22;
    v46 = 2080;
    *v47 = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, after, %lu, cell, %s", v45, 0x16u);
    if ((v62[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v32 = *(a1 + 304);
    sub_100081198(v45);
    if (v47[9] >= 0)
    {
      v33 = v45;
    }

    else
    {
      v33 = *v45;
    }

    v41 = 134218242;
    v42 = v32;
    v43 = 2080;
    v44 = v33;
    v34 = _os_log_send_and_compose_impl();
    if ((v47[9] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (v40 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_1006D7F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D7F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123EEDC(v57, a3, 10);
  sub_10007AD10(v57, -1, -1, -1, -1);
  v7 = sub_100681E80(v57, v6);
  sub_10062233C(v55);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v10 = v56;
    v11 = v55[0];
    sub_100072AFC(a4, __p);
    v12 = v55;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if ((v91 & 0x80000000) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136315395;
    *&buf[4] = v12;
    v63 = 2085;
    *v64 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response nr cell, %s, location, %{sensitive}s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v33 = v56;
    v34 = v55[0];
    sub_100072AFC(a4, buf);
    v35 = v55;
    if (v33 < 0)
    {
      v35 = v34;
    }

    if (v64[9] >= 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    v83 = 136315395;
    v84 = v35;
    v85 = 2085;
    v86 = v36;
    v37 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v37);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v37 != __p)
    {
      free(v37);
    }
  }

  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v14 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a4 + 4);
    v16 = *(a4 + 12);
    v17 = *(a4 + 20);
    v18 = *v7;
    v19 = *(v7 + 4);
    v20 = *(v7 + 8);
    v21 = *(v7 + 16);
    v22 = *(a4 + 84);
    v23 = *(a1 + 384);
    *__p = 136317955;
    *&__p[4] = "Network-Cell";
    v88 = 1024;
    v89 = 1;
    v90 = 2053;
    v91 = v15;
    v92 = 2053;
    v93 = v16;
    v94 = 2048;
    v95 = v17;
    v96 = 1024;
    v97 = v18;
    v98 = 1024;
    v99 = v19;
    v100 = 1024;
    v101 = v20;
    v102 = 2048;
    v103 = v21;
    v104 = 1024;
    v105 = v22;
    v106 = 1024;
    v107 = v23;
    v108 = 1024;
    v109 = -1;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,Confidence,%d,Count,%d,lock,%d", __p, 0x5Eu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(__p);
    v38 = *(a4 + 4);
    v39 = *(a4 + 12);
    v40 = *(a4 + 20);
    v41 = *v7;
    v42 = *(v7 + 4);
    v43 = *(v7 + 8);
    v44 = *(v7 + 16);
    v45 = *(a4 + 84);
    v46 = *(a1 + 384);
    *buf = 136317955;
    *&buf[4] = "Network-Cell";
    v63 = 1024;
    *v64 = 1;
    *&v64[4] = 2053;
    *&v64[6] = v38;
    v65 = 2053;
    v66 = v39;
    v67 = 2048;
    v68 = v40;
    v69 = 1024;
    v70 = v41;
    v71 = 1024;
    v72 = v42;
    v73 = 1024;
    v74 = v43;
    v75 = 2048;
    v76 = v44;
    v77 = 1024;
    v78 = v45;
    v79 = 1024;
    v80 = v46;
    v81 = 1024;
    v82 = -1;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v47);
    if (v47 != __p)
    {
      free(v47);
    }
  }

  v24 = sub_1006E11B4(a1 + 328, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_1006C53B4(a1);
    if (sub_1007F551C(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = p_info[197];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(__p);
      *buf = 0;
      v54 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v54);
      if (v54 != __p)
      {
        free(v54);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v27 = p_info[197];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 344);
    sub_10062233C(__p);
    v29 = (v91 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v28;
    v63 = 2080;
    *v64 = v29;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, before, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v48 = *(a1 + 344);
    sub_10062233C(buf);
    if (v64[9] >= 0)
    {
      v49 = buf;
    }

    else
    {
      v49 = *buf;
    }

    v83 = 134218242;
    v84 = v48;
    v85 = 2080;
    v86 = v49;
    v50 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v50);
    if (v50 != __p)
    {
      free(v50);
    }
  }

  if ((a1 + 336) != v24)
  {
    sub_10045E8A0((a1 + 328), v24);
    operator delete(v24);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v30 = p_info[197];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 344);
    sub_10062233C(__p);
    v32 = (v91 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v31;
    v63 = 2080;
    *v64 = v32;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, after, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v51 = *(a1 + 344);
    sub_10062233C(buf);
    if (v64[9] >= 0)
    {
      v52 = buf;
    }

    else
    {
      v52 = *buf;
    }

    v83 = 134218242;
    v84 = v51;
    v85 = 2080;
    v86 = v52;
    v53 = _os_log_send_and_compose_impl();
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v53);
    if (v53 != __p)
    {
      free(v53);
    }
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_1006D8900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123EEDC(v36, a3, 10);
  sub_10007AD10(v36, -1, -1, -1, -1);
  v5 = sub_100681E80(v36, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = *(v5 + 4);
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    *buf = 136317187;
    *&buf[4] = "Network-Cell";
    v61 = 0x805000000000400;
    *v62 = 0;
    *&v62[8] = 2053;
    *&v62[10] = 0;
    *&v62[18] = 2048;
    *&v62[20] = 0xBFF0000000000000;
    *&v62[28] = 1024;
    *&v62[30] = v7;
    *&v62[34] = 1024;
    *&v62[36] = v8;
    *&v62[40] = 1024;
    *&v62[42] = v9;
    *&v62[46] = 2048;
    *&v63 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,", buf, 0x4Cu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v24 = *v5;
    v25 = *(v5 + 4);
    v26 = *(v5 + 8);
    v27 = *(v5 + 16);
    *v45 = 136317187;
    *&v45[4] = "Network-Cell";
    v46 = 1024;
    *v47 = 0;
    *&v47[4] = 2053;
    *&v47[6] = 0;
    v48 = 2053;
    v49 = 0;
    v50 = 2048;
    v51 = 0xBFF0000000000000;
    v52 = 1024;
    v53 = v24;
    v54 = 1024;
    v55 = v25;
    v56 = 1024;
    v57 = v26;
    v58 = 2048;
    v59 = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v61 = 0;
    *&buf[4] = 0;
    *v62 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v62[16] = _Q0;
    *&v62[32] = _Q0;
    v63 = _Q0;
    *buf = 0xFFFF;
    v64 = 0;
    v67 = 0;
    v65 = 0xBFF0000000000000;
    v66 = 0;
    v69 = 0xBFF0000000000000;
    v68 = 0;
    v70 = 0x7FFFFFFF;
    v73 = 0;
    v71 = 0;
    v72 = 0;
    v74 = 0;
    *(&v63 + 1) = CFAbsoluteTimeGetCurrent();
    v16 = sub_1006C53B4(a1);
    sub_1007F551C(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      *v45 = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v18 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 344);
    sub_10062233C(buf);
    v20 = v62[3] >= 0 ? buf : *buf;
    *v45 = 134218242;
    *&v45[4] = v19;
    v46 = 2080;
    *v47 = v20;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, before, %lu, cell, %s", v45, 0x16u);
    if ((v62[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v29 = *(a1 + 344);
    sub_10062233C(v45);
    if (v47[9] >= 0)
    {
      v30 = v45;
    }

    else
    {
      v30 = *v45;
    }

    v41 = 134218242;
    v42 = v29;
    v43 = 2080;
    v44 = v30;
    v31 = _os_log_send_and_compose_impl();
    if ((v47[9] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  sub_1006E1458((a1 + 328), v5);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v21 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 344);
    sub_10062233C(buf);
    v23 = v62[3] >= 0 ? buf : *buf;
    *v45 = 134218242;
    *&v45[4] = v22;
    v46 = 2080;
    *v47 = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, after, %lu, cell, %s", v45, 0x16u);
    if ((v62[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v32 = *(a1 + 344);
    sub_10062233C(v45);
    if (v47[9] >= 0)
    {
      v33 = v45;
    }

    else
    {
      v33 = *v45;
    }

    v41 = 134218242;
    v42 = v32;
    v43 = 2080;
    v44 = v33;
    v34 = _os_log_send_and_compose_impl();
    if ((v47[9] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (v40 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_1006D90E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D9128(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 **a4, int a5, int a6, int a7)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3);
    v13 = 0xD37A6F4DE9BD37A7 * ((a4[1] - *a4) >> 3);
    *buf = 134349312;
    *v90 = v12;
    *&v90[8] = 2050;
    *&v90[10] = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "AlsWifi, seriesComplete, known, %{public}lu, unknown, %{public}lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190DA98();
  }

  v75 = (*(**(a1 + 112) + 32))(*(a1 + 112));
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v14 = *(a1 + 400);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = a1 + 400;
  do
  {
    if (*(v14 + 32) >= a6)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 32) < a6));
  }

  while (v14);
  if (v15 == a1 + 400 || *(v15 + 32) > a6)
  {
LABEL_14:
    if (a5 != 1)
    {
      *buf = -1;
      sub_1006E0068(&v83, buf, v90, 1uLL);
      goto LABEL_16;
    }

    sub_10190DE3C(buf);
LABEL_103:
    abort_report_np();
    goto LABEL_105;
  }

  if (&v83 != (v15 + 40))
  {
    sub_100731D80(&v83, *(v15 + 40), *(v15 + 48), (*(v15 + 48) - *(v15 + 40)) >> 2);
  }

  sub_1006E14AC((a1 + 392), v15);
  if (v84 == v83)
  {
    if (qword_1025D4640 != -1)
    {
      sub_10190DBC0();
    }

    v70 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v90 = 0;
      *&v90[4] = 2082;
      *&v90[6] = "";
      *&v90[14] = 2082;
      *&v90[16] = "assert";
      *&v90[24] = 2081;
      v91 = "fenceKeys.size() > 0";
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        sub_10190DBC0();
      }
    }

    v71 = off_1025D4648;
    if (os_signpost_enabled(off_1025D4648))
    {
      *buf = 68289539;
      *v90 = 0;
      *&v90[4] = 2082;
      *&v90[6] = "";
      *&v90[14] = 2082;
      *&v90[16] = "assert";
      *&v90[24] = 2081;
      v91 = "fenceKeys.size() > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v71, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "At least one fence key required", "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        sub_10190DBC0();
      }
    }

    v72 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v90 = 0;
      *&v90[4] = 2082;
      *&v90[6] = "";
      *&v90[14] = 2082;
      *&v90[16] = "assert";
      *&v90[24] = 2081;
      v91 = "fenceKeys.size() > 0";
      _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_INFO, "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_103;
  }

  if (qword_1025D4640 != -1)
  {
    sub_10190DBC0();
  }

  v65 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v66 = *(a1 + 408);
    *buf = 134283777;
    *v90 = v66;
    *&v90[8] = 2049;
    *&v90[10] = (v84 - v83) >> 2;
    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "AlsWifi, seriesComplete, tags remain, %{private}zu, keys, %{private}zu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190DBE8(buf);
    v67 = *(a1 + 408);
    LODWORD(v86.__r_.__value_.__l.__data_) = 134283777;
    *(v86.__r_.__value_.__r.__words + 4) = v67;
    WORD2(v86.__r_.__value_.__r.__words[1]) = 2049;
    *(&v86.__r_.__value_.__r.__words[1] + 6) = (v84 - v83) >> 2;
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }

LABEL_16:
  if (v75)
  {
    v16 = *(a1 + 584);
    if (v16 != (a1 + 592))
    {
      do
      {
        v17 = v16[4];
        v81 = 0;
        v82 = 0;
        __p = 0;
        sub_10064A838(&__p, *a3, a3[1], 0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3));
        (*(*v17 + 24))(v17, &__p, a5 == 1);
        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }

        v18 = v16[1];
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
            v19 = v16[2];
            v20 = *v19 == v16;
            v16 = v19;
          }

          while (!v20);
        }

        v16 = v19;
      }

      while (v19 != (a1 + 592));
    }
  }

  __src = 0;
  v78 = 0;
  v79 = 0;
  v22 = *a3;
  v21 = a3[1];
  if (*a3 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      if (a1 + 424 == sub_100198C70(a1 + 416, (v22 + 176)))
      {
        if ((*(v22 + 160) - 1) >= 0xE)
        {
          if (qword_1025D4630 != -1)
          {
            sub_10190DC2C();
          }

          v24 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
          {
            sub_1000ECD9C(&v86);
            v25 = &v86;
            if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = v86.__r_.__value_.__r.__words[0];
            }

            v26 = *(v22 + 160);
            v27 = *(a1 + 120);
            *buf = 136315906;
            *v90 = v25;
            *&v90[8] = 1024;
            *&v90[10] = v26;
            *&v90[14] = 1024;
            *&v90[16] = a5 == 1;
            *&v90[20] = 1024;
            *&v90[22] = v27;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Extra 5GHz #als response, mac, %s, channel, %d, isNearbyQuery, %d, fDataProtectionEnabled, %d", buf, 0x1Eu);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_10190DC54(buf);
            sub_1000ECD9C(&v76);
            v55 = &v76;
            if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v55 = v76.__r_.__value_.__r.__words[0];
            }

            v56 = *(v22 + 160);
            v57 = *(a1 + 120);
            LODWORD(v86.__r_.__value_.__l.__data_) = 136315906;
            *(v86.__r_.__value_.__r.__words + 4) = v55;
            WORD2(v86.__r_.__value_.__r.__words[1]) = 1024;
            *(&v86.__r_.__value_.__r.__words[1] + 6) = v56;
            WORD1(v86.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(v86.__r_.__value_.__r.__words[2]) = a5 == 1;
            v87 = 1024;
            v88 = v57;
            v58 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v58);
            if (v58 != buf)
            {
              free(v58);
            }
          }
        }
      }

      else
      {
        ++v23;
      }

      v28 = v78;
      if (v78 >= v79)
      {
        v39 = __src;
        v40 = v78 - __src;
        v41 = 0xD37A6F4DE9BD37A7 * ((v78 - __src) >> 3);
        v42 = v41 + 1;
        if (v41 + 1 > 0x1642C8590B21642)
        {
          sub_10028C64C();
        }

        if (0xA6F4DE9BD37A6F4ELL * ((v79 - __src) >> 3) > v42)
        {
          v42 = 0xA6F4DE9BD37A6F4ELL * ((v79 - __src) >> 3);
        }

        if (0xD37A6F4DE9BD37A7 * ((v79 - __src) >> 3) >= 0xB21642C8590B21)
        {
          v42 = 0x1642C8590B21642;
        }

        if (v42)
        {
          sub_10064A6B8(&__src, v42);
        }

        v43 = 8 * ((v78 - __src) >> 3);
        v44 = *v22;
        v45 = *(v22 + 16);
        v46 = *(v22 + 48);
        *(v43 + 32) = *(v22 + 32);
        *(v43 + 48) = v46;
        *v43 = v44;
        *(v43 + 16) = v45;
        v47 = *(v22 + 64);
        v48 = *(v22 + 80);
        v49 = *(v22 + 112);
        *(v43 + 96) = *(v22 + 96);
        *(v43 + 112) = v49;
        *(v43 + 64) = v47;
        *(v43 + 80) = v48;
        v50 = *(v22 + 128);
        v51 = *(v22 + 144);
        v52 = *(v22 + 160);
        *(v43 + 176) = *(v22 + 176);
        *(v43 + 144) = v51;
        *(v43 + 160) = v52;
        *(v43 + 128) = v50;
        v38 = 184 * v41 + 184;
        v53 = (184 * v41 - v40);
        memcpy((v43 - v40), v39, v40);
        v54 = __src;
        __src = v53;
        v78 = v38;
        v79 = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        v29 = *v22;
        v30 = *(v22 + 16);
        v31 = *(v22 + 48);
        *(v78 + 2) = *(v22 + 32);
        *(v28 + 3) = v31;
        *v28 = v29;
        *(v28 + 1) = v30;
        v32 = *(v22 + 64);
        v33 = *(v22 + 80);
        v34 = *(v22 + 112);
        *(v28 + 6) = *(v22 + 96);
        *(v28 + 7) = v34;
        *(v28 + 4) = v32;
        *(v28 + 5) = v33;
        v35 = *(v22 + 128);
        v36 = *(v22 + 144);
        v37 = *(v22 + 160);
        *(v28 + 22) = *(v22 + 176);
        *(v28 + 9) = v36;
        *(v28 + 10) = v37;
        *(v28 + 8) = v35;
        v38 = (v28 + 184);
      }

      v78 = v38;
      v22 += 184;
    }

    while (v22 != v21);
  }

  sub_1006D9D94(&__src);
  sub_1006E01CC(buf, *a4, a4[1], &__src);
  if (v75 == 1)
  {
    if (v23)
    {
      sub_10126466C(*(a1 + 672), v23);
    }

    v59 = *(a1 + 672);
    Current_2 = j__CFAbsoluteTimeGetCurrent_2();
    v61 = sub_101261454(v59, &__src, &v83, a7, Current_2);
    if (v61)
    {
      if (0xD37A6F4DE9BD37A7 * ((v78 - __src) >> 3) == v61)
      {
        *(a1 + 388) -= 373475417 * ((a3[1] - *a3) >> 3);
        goto LABEL_70;
      }

      sub_10190DC98();
      abort_report_np();
LABEL_105:
      __break(1u);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v62 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entries", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v86.__r_.__value_.__l.__data_) = 0;
      v69 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v69);
      if (v69 != buf)
      {
        free(v69);
      }
    }
  }

LABEL_70:
  v63 = __src;
  v64 = v78;
  if (__src != v78)
  {
    do
    {
      sub_1006E14F0((a1 + 416), v63 + 22);
      v63 += 184;
    }

    while (v63 != v64);
    v63 = __src;
  }

  if (v63)
  {
    v78 = v63;
    operator delete(v63);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

void sub_1006D9D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D9D94(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_10064A6B8(a1, 0xD37A6F4DE9BD37A7 * (v4 >> 3));
    }

    v6 = 0;
    if (0xD37A6F4DE9BD37A7 * (v3 >> 3))
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1006D9E88(int *a1, uint64_t a2, double *a3, const __CFDictionary *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[144];
    LODWORD(v10) = 67109120;
    HIDWORD(v10) = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: stats: onLocationRequesterResponse, %d", &v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E010(a1);
  }

  ++a1[144];
  v10 = 0;
  result = sub_1004E801C(a4, a3, &v10);
  if (result)
  {
    return TMSetSourceTime();
  }

  return result;
}

void sub_1006D9FAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v18[3] = a3;
  v19 = a4;
  v18[0] = a4;
  v5 = (*(**(a1 + 112) + 16))(*(a1 + 112));
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 352);
    *buf = 67240448;
    v21 = v5;
    v22 = 1026;
    v23 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Notice NETWORK: no response from server, reachability, %{public}d, queryRetries, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E0FC();
  }

  if (sub_100071CA0())
  {
    sub_10004FD18(buf);
    sub_10004345C(buf, "queryFailed", &v19);
    v17 = *(a1 + 184);
    sub_10004345C(buf, "p1", &v17);
    v17 = *(a1 + 264);
    sub_10004345C(buf, "p2", &v17);
    v17 = *(a1 + 304);
    sub_10004345C(buf, "p3", &v17);
    v17 = *(a1 + 432);
    sub_10004345C(buf, "p4", &v17);
    v17 = *(a1 + 344);
    sub_10004345C(buf, "p5", &v17);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4(buf);
  }

  if (v19 == *(a1 + 528))
  {
    *(a1 + 528) = -1;
  }

  sub_10026ED10(a1 + 464);
  Current = CFAbsoluteTimeGetCurrent();
  v9 = (a1 + 352);
  if (*(a1 + 352) > 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v15 = *v9;
      *buf = 67109376;
      v21 = v15;
      v22 = 1024;
      v23 = 5;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "NETWORK: retry count %d exceeded %d - not retrying", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E20C();
    }

    sub_1006DA480(a1);
    sub_10018646C(a1, "max.retries");
    *buf = 3;
    (*(*a1 + 152))(a1, buf, v18, 0, 0xFFFFFFFFLL, 0);
  }

  else if (v5)
  {
    v10 = Current;
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v12 = *v9;
      *buf = 67109376;
      v21 = v12;
      v22 = 1024;
      v23 = 5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "NETWORK: retry query, %d, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E310();
    }

    v13 = *v9;
    if (!*v9)
    {
      *(a1 + 360) = v10;
    }

    *(a1 + 352) = v13 + 1;
    sub_100185DCC(a1, "retry.query");
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "NETWORK: data reachability is not available - not retrying", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E414();
    }

    sub_1006DA480(a1);
    *(a1 + 352) = 5;
    sub_10018646C(a1, "no.data.reachability");
    *buf = 3;
    (*(*a1 + 152))(a1, buf, v18, 0, 0xFFFFFFFFLL, 0);
  }

  *(a1 + 384) = 0;
}

void sub_1006DA450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_1006DA480(uint64_t a1)
{
  v2 = (a1 + 184);
  if (*(a1 + 184) > 0x3BuLL || *(a1 + 224) > 0x3BuLL || *(a1 + 264) > 0x3BuLL || *(a1 + 304) > 0x3BuLL || *(a1 + 432) > 0x3BuLL || *(a1 + 344) >= 0x3CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 184);
      v5 = *(a1 + 224);
      v6 = *(a1 + 264);
      v7 = *(a1 + 304);
      v8 = *(a1 + 432);
      v9 = *(a1 + 344);
      v17 = 134219520;
      v18 = v4;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = 60;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "trimming pending gsm, %lu, scdma, %lu, cdma, %lu, lte, %lu, wifis, %lu, nr, %lu, to, %d", &v17, 0x44u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E4F8();
    }

    if (*v2 >= 0x3D)
    {
      v10 = v2 - 2;
      do
      {
        v11 = *v10;
        sub_10045E8A0(v2 - 2, *v10);
        operator delete(v11);
      }

      while (*v2 > 0x3C);
    }

    if (*(a1 + 224) >= 0x3DuLL)
    {
      do
      {
        v12 = *(a1 + 208);
        sub_10045E8A0((a1 + 208), v12);
        operator delete(v12);
      }

      while (*(a1 + 224) > 0x3CuLL);
    }

    if (*(a1 + 264) >= 0x3DuLL)
    {
      do
      {
        v13 = *(a1 + 248);
        sub_10045E8A0((a1 + 248), v13);
        sub_10064AAB8((v13 + 4));
        operator delete(v13);
      }

      while (*(a1 + 264) > 0x3CuLL);
    }

    if (*(a1 + 304) >= 0x3DuLL)
    {
      do
      {
        v14 = *(a1 + 288);
        sub_10045E8A0((a1 + 288), v14);
        operator delete(v14);
      }

      while (*(a1 + 304) > 0x3CuLL);
    }

    if (*(a1 + 432) >= 0x3DuLL)
    {
      do
      {
        v15 = *(a1 + 416);
        sub_10045E8A0((a1 + 416), v15);
        operator delete(v15);
      }

      while (*(a1 + 432) > 0x3CuLL);
    }

    if (*(a1 + 344) >= 0x3DuLL)
    {
      do
      {
        v16 = *(a1 + 328);
        sub_10045E8A0((a1 + 328), v16);
        operator delete(v16);
      }

      while (*(a1 + 344) > 0x3CuLL);
    }
  }
}

uint64_t sub_1006DA72C(void *a1, uint64_t a2, int a3, int a4)
{
  v12 = a4;
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: query failed for nearbys - not retrying", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E870();
  }

  a1[48] = 0;
  *buf = a4;
  v11 = a3;
  sub_1006E2070((a1 + 49), &v12);
  v9 = 3;
  (*(*a1 + 152))(a1, &v9, buf, 0, 0xFFFFFFFFLL, 0);
  return sub_10026ED10((a1 + 58));
}

void sub_1006DA83C(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  v6 = a1[97];
  v10[0] = a4;
  v10[1] = v6;
  v7 = a1[96];
  v10[2] = v7;
  v10[3] = a3;
  if (a1[132] == a4)
  {
    a1[132] = -1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v16 = a4;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "NETWORK: query: finished, tag, %d, cells, %d, wifis, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v10[4] = 67109632;
    v10[5] = a4;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = v6;
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterFinished(CLNetworkLocationRequester *, CLNetworkLocationRequester::RequestType, int)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  a1[88] = 0;
  if (a1[96] >= 1)
  {
    *buf = 0;
    (*(*a1 + 152))(a1, buf, v10, 0, 0xFFFFFFFFLL, 0);
    a1[96] = 0;
  }

  if (a1[97] > 0)
  {
    *buf = 1;
    (*(*a1 + 152))(a1, buf, v10, 0, 0xFFFFFFFFLL, 0);
    a1[97] = 0;
  }

  *buf = 2;
  (*(*a1 + 152))(a1, buf, v10, 0, 0xFFFFFFFFLL, 0);
  sub_10026ED10((a1 + 116));
  sub_10010DA40(a1, "onLocationRequesterFinished");
}

void sub_1006DAB30(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a3 == 16)
  {
    (*(**(a1 + 448) + 48))(*(a1 + 448));
    (*(**(a1 + 448) + 56))(*(a1 + 448));
    v14 = *(a1 + 672);

    sub_101262E98(v14);
  }

  else if (*a3 == 6)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a4;
      v8 = a4[1];
      *buf = 67109376;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: onStatusNotification, kNotificationReachability, from, %d, to, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E94C();
    }

    v9 = a4[1];
    *(a1 + 608) = v9;
    if (v9 && !*a4)
    {
      sub_1006C8A2C(a1);
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 608);
      v12 = *a4;
      v13 = *(a1 + 352);
      *buf = 67240704;
      v17 = v11;
      v18 = 1026;
      v19 = v12;
      v20 = 1026;
      v21 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxLink, reach, %{public}d, last, %{public}d, retries, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }
}

id *sub_1006DAE4C(id *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = result;
  if (*a3 == 4)
  {
    if (*(a4 + 188) != 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_10190BC08();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, clearing all local cache", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190EA44();
      }

      return sub_1006DAFAC(v4);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Location Services reset, clearing all local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190EB20();
    }

    sub_1006DAFAC(v4);
    return (*(**(v4 + 112) + 40))(*(v4 + 112));
  }

  return result;
}

id *sub_1006DAFAC(uint64_t a1)
{
  sub_10000FF38(v18, "clearAlsDatabaseEntries", 0);
  sub_10001A3E8();
  v2 = sub_10003A088();
  if ((v2 & 0x400) != 0)
  {
    v3 = sub_1006C5194(a1);
    sub_100654B28(*(v3 + 32));
    v4 = sub_1006C521C(a1);
    sub_100654B28(*(v4 + 32));
  }

  if ((v2 & 0x800000) != 0)
  {
    v5 = sub_1006C5084(a1);
    sub_100654B28(*(v5 + 32));
    v6 = sub_1006C510C(a1);
    sub_100654B28(*(v6 + 32));
  }

  if ((v2 & 0x800) != 0)
  {
    v7 = sub_1006C52A4(a1);
    sub_100654B28(*(v7 + 32));
    v8 = sub_1006C532C(a1);
    sub_100654B28(*(v8 + 32));
  }

  if ((v2 & 0x40000) != 0)
  {
    v9 = sub_100090470(a1);
    sub_100654B28(*(v9 + 32));
    v10 = sub_10007BA1C(a1);
    sub_100654B28(*(v10 + 32));
  }

  if ((v2 & 0x4000000) != 0)
  {
    v11 = sub_1006C53B4(a1);
    sub_100654B28(*(v11 + 32));
    v12 = sub_1006C543C(a1);
    sub_100654B28(*(v12 + 32));
  }

  sub_1012628F8(*(a1 + 672));
  sub_10126299C(*(a1 + 672));
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Clearing associated AP centroids in WifiAssociatedApCentroidStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::clearDatabaseEntries()", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  sub_100C4278C();
  sub_1003C93BC(a1 + 168, *(a1 + 176));
  *(a1 + 168) = a1 + 176;
  *(a1 + 176) = 0;
  v15 = *(a1 + 216);
  v14 = a1 + 216;
  *(v14 - 32) = 0;
  sub_1003C93BC(v14 - 8, v15);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 - 8) = v14;
  sub_1006E079C(v14 + 32, *(v14 + 40));
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = v14 + 40;
  sub_1003C93BC(v14 + 72, *(v14 + 80));
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 72) = v14 + 80;
  sub_1003C93BC(v14 + 112, *(v14 + 120));
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v14 + 112) = v14 + 120;
  sub_1003C93BC(v14 + 200, *(v14 + 208));
  *(v14 + 208) = 0;
  *(v14 + 216) = 0;
  *(v14 + 200) = v14 + 208;
  return sub_10001A420(v18);
}

void sub_1006DB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_1006DB2A4(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v12 = 67109120;
    v13 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "onCompanionNotification, notification, %d", &v12, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190EBFC(a3);
  }

  if (*a3 == 5)
  {
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      v9 = *a4;
      *(a1 + 440) = v9;
      if (v9 == 1)
      {
        sub_1006C8A2C(a1);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a4;
      v12 = 67240192;
      v13 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxLink, Nearby, %{public}d", &v12, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190ECE8(a4);
    }
  }
}

void sub_1006DB440(uint64_t a1, int a2)
{
  *(a1 + 120) = a2 != 1;
  v3 = (a1 + 120);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    if (*v3)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Data protection is now %s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190EDD4();
  }

  if ((*v3 & 1) == 0)
  {
    sub_1006DB568(a1);
    sub_1006DCCE0(a1);
    nullsub_34(*(a1 + 672));
  }
}

_BYTE *sub_1006DB568(void *a1)
{
  sub_101262854(a1[84]);
  v2 = a1[20];
  if (v2)
  {
    sub_1006DCFA0(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    sub_1006DCFA0(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    sub_1006DCFA0(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    sub_1006DCFA0(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    sub_1006DD4A8(v6);
  }

  v7 = a1[29];
  if (v7)
  {
    sub_1006DD4A8(v7);
  }

  v8 = a1[35];
  if (v8)
  {
    sub_1006DD9B0(v8);
  }

  v9 = a1[34];
  if (v9)
  {
    sub_1006DD9B0(v9);
  }

  v10 = a1[40];
  if (v10)
  {
    sub_1006DDEB8(v10);
  }

  result = a1[39];
  if (result)
  {

    return sub_1006DDEB8(result);
  }

  return result;
}