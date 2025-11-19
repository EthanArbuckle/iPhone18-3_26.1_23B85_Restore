uint64_t sub_10038A1A4(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 24);
  if (a2)
  {
    v6 = *(a1 + 96);
    v5 = (a1 + 96);
    v4 = v6;
    if (v6)
    {
      v7 = v5;
      do
      {
        v8 = v4[4];
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v4;
        }

        v4 = v4[v10];
      }

      while (v4);
      if (v7 != v5 && v7[4] <= a2)
      {
        if (v7[5])
        {
          operator delete();
        }

        sub_10002717C(v5 - 1, v7);
        operator delete(v7);
      }
    }
  }

  return sub_1000088CC(v12);
}

void sub_10038A260(uint64_t a1)
{
  v2 = sub_1003896E0();
  sub_100389D40(a1, v2);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 112))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device is now unlocked, read VoiceTrigger setting as %s", &v6, 0xCu);
  }

  v5 = sub_100017E6C();
  sub_10038AB2C(v5 + 464, a1 + 16);
}

void sub_10038A34C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10038A418((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10038A418(void *a1, char *__src, char *a3)
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

void sub_10038A5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038A5EC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10038A6B8((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10038A6B8(void *a1, char *__src, char *a3)
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

void sub_10038A854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038A88C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10038A958((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10038A958(void *a1, char *__src, char *a3)
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

void sub_10038AAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038AB2C(uint64_t a1, uint64_t a2)
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
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void *sub_10038AC04(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10038AC5C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10038AC5C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10038ACE4(v5, v5 + 1, v4 + 4);
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

uint64_t sub_10038ACE4(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000988F0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

double sub_10038ADE8(uint64_t a1)
{
  *a1 = &off_100AEE9B8;
  *(a1 + 8) = &off_100AEEBB8;
  *(a1 + 16) = &off_100AEEBD8;
  *(a1 + 24) = &off_100AEEBF8;
  *(a1 + 32) = &off_100AEEC18;
  *(a1 + 40) = &off_100AEEC38;
  *(a1 + 48) = &off_100AEEC58;
  *(a1 + 56) = &off_100AEEC78;
  *(a1 + 64) = &off_100AEEC98;
  *(a1 + 72) = &off_100AEECB8;
  *(a1 + 80) = &off_100AEECD8;
  *(a1 + 88) = &off_100AEECF8;
  *(a1 + 96) = &off_100AEED18;
  *(a1 + 104) = &off_100AEED38;
  *(a1 + 112) = &off_100AEED58;
  *(a1 + 120) = &off_100AEED78;
  *(a1 + 128) = &off_100AEED98;
  *(a1 + 136) = &off_100AEEDB8;
  *(a1 + 144) = &off_100AEEDD8;
  *(a1 + 152) = &off_100AEEDF8;
  *(a1 + 160) = &off_100AEEE18;
  *(a1 + 168) = &off_100AEEE38;
  *(a1 + 176) = &off_100AEEE58;
  *(a1 + 184) = &off_100AEEE78;
  *(a1 + 192) = &off_100AEEE98;
  *(a1 + 200) = &off_100AEEEB8;
  *(a1 + 208) = &off_100AEEED8;
  *(a1 + 296) = a1 + 8;
  *(a1 + 336) = a1 + 16;
  *(a1 + 376) = a1 + 24;
  *(a1 + 416) = a1 + 32;
  *(a1 + 456) = a1 + 40;
  *(a1 + 496) = a1 + 48;
  *(a1 + 536) = a1 + 56;
  *(a1 + 576) = a1 + 64;
  *(a1 + 616) = a1 + 72;
  *(a1 + 656) = a1 + 80;
  *(a1 + 696) = a1 + 88;
  *(a1 + 736) = a1 + 96;
  *(a1 + 776) = a1 + 104;
  *(a1 + 816) = a1 + 112;
  *(a1 + 856) = a1 + 120;
  *(a1 + 896) = a1 + 128;
  *(a1 + 936) = a1 + 152;
  *(a1 + 976) = a1 + 136;
  *(a1 + 1016) = a1 + 144;
  *(a1 + 1056) = a1 + 160;
  *(a1 + 1096) = a1 + 168;
  *(a1 + 1136) = a1 + 176;
  *(a1 + 1176) = a1 + 184;
  *(a1 + 1216) = a1 + 192;
  *(a1 + 1256) = a1 + 200;
  *(a1 + 1296) = a1 + 208;
  *(a1 + 1336) = a1 + 216;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 368) = 0;
  *(a1 + 408) = 0;
  *(a1 + 448) = 0;
  *(a1 + 488) = 0;
  *(a1 + 216) = &off_100AEEEF8;
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = a1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 664) = 0;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 888) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1224) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1264) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1272) = 0u;
  *(a1 + 1304) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1344) = 0;
  return result;
}

void sub_10038B3A8(uint64_t a1, std::string *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hostname has been set to %s", buf, 0xCu);
  }

  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u && qword_100B6D320 != -1)
  {
    sub_100821EA8();
  }

  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (qword_100B6D330 != -1)
    {
      sub_100821ED0();
    }

    if (byte_100B6D328 == 1)
    {
      std::string::assign(a2, "Apple Watch");
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a2;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = a2->__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Override Name to %s", buf, 0xCu);
      }
    }
  }

  if (byte_100B6D318 == 1)
  {
    std::string::assign(a2, "Apple Watch");
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_10038B970;
  v8[3] = &unk_100AEEF48;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *&a2->__r_.__value_.__l.__data_;
    v10 = a2->__r_.__value_.__r.__words[2];
  }

  sub_10038B8A4(a1 + 224, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_10038B610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038B634(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D318);
  v3 = byte_100B6D318;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in notifyHostnameChanged", buf, 2u);
  }
}

void sub_10038B738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038B76C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D328);
  v3 = byte_100B6D328;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_10038B870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038B8A4(uint64_t a1, void *a2)
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

void sub_10038B970(uint64_t a1, void (***a2)(void, void **))
{
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v4 = *(a1 + 48);
  }

  (**a2)(a2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038B9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10038BA18(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100008904(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_10038BA44(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_10038BA58(uint64_t a1, int a2, int a3, int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "disabled";
    *buf = 136446722;
    if (a2)
    {
      v9 = "enabled";
    }

    v15 = v9;
    v16 = 1024;
    v17 = a3;
    v18 = 1024;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tethering is now %{public}s with %u out of %u clients connected", buf, 0x18u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10038BC6C;
  v10[3] = &unk_100AEEF78;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  sub_10038BBA0(a1 + 264, v10);
}

void sub_10038BBA0(uint64_t a1, void *a2)
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

void sub_10038BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000151C0(&v10);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136446210;
    v12 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038BEC8;
  v6[3] = &unk_100AEEF98;
  v7 = v10;
  sub_10038BDFC(a1 + 304, v6);
}

void sub_10038BDFC(uint64_t a1, void *a2)
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

void sub_10038BEF8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Airplane Mode is now %d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038C0C8;
  v5[3] = &unk_100AEEFB8;
  v6 = a2;
  sub_10038BFFC(a1 + 344, v5);
}

void sub_10038BFFC(uint64_t a1, void *a2)
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

void sub_10038C0F8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Low Power Mode is now %d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038C1FC;
  v5[3] = &unk_100AEEFB8;
  v6 = a2;
  sub_10038BFFC(a1 + 344, v5);
}

void sub_10038C22C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System keybag unlocked : %d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038C3FC;
  v5[3] = &unk_100AEF000;
  v6 = a2;
  sub_10038C330(a1 + 464, v5);
}

void sub_10038C330(uint64_t a1, void *a2)
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

void sub_10038C42C(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10038C568;
  v2[3] = &unk_100AEF020;
  v3 = a2;
  sub_10038C49C(a1 + 504, v2);
}

void sub_10038C49C(uint64_t a1, void *a2)
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

void sub_10038C598(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7 = "dis";
    if (a2)
    {
      v7 = "";
    }

    *buf = 67109378;
    v12 = a3;
    v13 = 2082;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Battery capacity is now at %u%% (%{public}scharging)", buf, 0x12u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10038C794;
  v8[3] = &unk_100AEF040;
  v9 = a2;
  v10 = a3;
  sub_10038C6C8(a1 + 424, v8);
}

void sub_10038C6C8(uint64_t a1, void *a2)
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

void sub_10038C7C8(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = (&off_100AEF2F8)[a2];
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Power source is now %s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038C9B8;
  v6[3] = &unk_100AEF060;
  v7 = a2;
  sub_10038C8EC(a1 + 544, v6);
}

void sub_10038C8EC(uint64_t a1, void *a2)
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

void sub_10038C9E8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Siri is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038CBD0;
  v6[3] = &unk_100AEF0A0;
  v7 = a2;
  sub_10038CB04(a1 + 624, v6);
}

void sub_10038CB04(uint64_t a1, void *a2)
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

void sub_10038CC00(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Siri VoiceTrigger state changed", v3, 2u);
  }

  sub_10038CC7C(a1 + 664, &stru_100AEF0E0);
}

void sub_10038CC7C(uint64_t a1, void *a2)
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

void sub_10038CD70(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Carplay is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038CF58;
  v6[3] = &unk_100AEF100;
  v7 = a2;
  sub_10038CE8C(a1 + 704, v6);
}

void sub_10038CE8C(uint64_t a1, void *a2)
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

void sub_10038CF88(uint64_t a1, int a2)
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GameController AutoSwitch is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038D170;
  v6[3] = &unk_100AEF140;
  v7 = a2;
  sub_10038D0A4(a1 + 944, v6);
}

void sub_10038D0A4(uint64_t a1, void *a2)
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

void sub_10038D1A0(uint64_t a1, int a2)
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GameController USBBTPairing is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038D388;
  v6[3] = &unk_100AEF160;
  v7 = a2;
  sub_10038D2BC(a1 + 984, v6);
}

void sub_10038D2BC(uint64_t a1, void *a2)
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

void sub_10038D3B8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = "Closed";
    if (a2)
    {
      v5 = "Lauched";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GarageBand is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038D5A0;
  v6[3] = &unk_100AEF180;
  v7 = a2;
  sub_10038D4D4(a1 + 904, v6);
}

void sub_10038D4D4(uint64_t a1, void *a2)
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

void sub_10038D5D0(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "off";
    if (a2)
    {
      v5 = "on";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessibility head tracking is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038D7B8;
  v6[3] = &unk_100AEF1A0;
  v7 = a2;
  sub_10038D6EC(a1 + 1024, v6);
}

void sub_10038D6EC(uint64_t a1, void *a2)
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

void sub_10038D7E8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Not Allowed";
    if (a2)
    {
      v5 = "Allowed";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038D9D0;
  v6[3] = &unk_100AEF1C0;
  v7 = a2;
  sub_10038D904(a1 + 1104, v6);
}

void sub_10038D904(uint64_t a1, void *a2)
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

void sub_10038DA00(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disabled";
    if (a2)
    {
      v5 = "Enabled";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HID 3pp LE to Low Latency is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038DBE8;
  v6[3] = &unk_100AEF1E0;
  v7 = a2;
  sub_10038DB1C(a1 + 1144, v6);
}

void sub_10038DB1C(uint64_t a1, void *a2)
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

void sub_10038DC18(uint64_t a1, int a2)
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Keyboard is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038DE00;
  v6[3] = &unk_100AEF200;
  v7 = a2;
  sub_10038DD34(a1 + 824, v6);
}

void sub_10038DD34(uint64_t a1, void *a2)
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

void sub_10038DE30(uint64_t a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = (&off_100AEF310)[a2 - 1];
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device orientation is now %s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038E024;
  v6[3] = &unk_100AEF220;
  v7 = a2;
  sub_10038DF58(a1 + 864, v6);
}

void sub_10038DF58(uint64_t a1, void *a2)
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

void sub_10038E054(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor first unlock", v3, 2u);
  }

  sub_10038E0D0(a1 + 1224, &stru_100AEF280);
}

void sub_10038E0D0(uint64_t a1, void *a2)
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

void sub_10038E1C4(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor game console mode changed:%d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038E394;
  v5[3] = &unk_100AEF2A0;
  v6 = a2;
  sub_10038E2C8(a1 + 1264, v5);
}

void sub_10038E2C8(uint64_t a1, void *a2)
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

void sub_10038E3C4(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::notifySmartCoverStateChanged Smart Cover State Changed:%d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038E594;
  v5[3] = &unk_100AEF2C0;
  v6 = a2;
  sub_10038E4C8(a1 + 1304, v5);
}

void sub_10038E4C8(uint64_t a1, void *a2)
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

void sub_10038E618(id a1)
{
  v1 = objc_alloc_init(BTVCHciManager);
  v2 = qword_100B6D338;
  qword_100B6D338 = v1;
}

_BYTE *sub_10038E7FC(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _activate];
  }

  return result;
}

void sub_10038EC3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 128));
  _Unwind_Resume(a1);
}

void sub_10038ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sendHciEvent:a2 parameters:a3 length:a4];
  }
}

void sub_10038ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sendLeMetaEvent:a2 parameters:a3 length:a4];
  }
}

void sub_10038EE0C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendLmpEvent:v5];
  }
}

void sub_10038EE88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    if (WeakRetained)
    {
      v8 = [v5 length];
      v9 = [v5 bytes];
      v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
      v11 = v10;
      if (v10)
      {
        if (v9)
        {
          memcpy(v10, v9, v8);
          v12 = qword_100BCEA70;
          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fBTVCLinkAgent.ConnectionManager.receiveDataPacketHandler listener->receivedDatePacket", v13, 2u);
          }

          [v7 receivedDatePacket:a2 payload:v11 lenght:v8];
          free(v11);
        }
      }
    }
  }
}

void sub_10038EFB4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendingHciEvent:v5];
  }
}

void sub_10038F030(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendingHciData:v5];
  }
}

void sub_10038F0AC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendingLmpEvent:v5];
  }
}

uint64_t *sub_10039087C(uint64_t *result, char a2)
{
  v2 = *result;
  if (*(*result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h");
    goto LABEL_6;
  }

  v3 = *(v2 + 6);
  if (*(v2 + 5) <= v3)
  {
LABEL_6:
    v5 = "ByteStream_NumReadBytesAvail(*fBs) >= 1";
    goto LABEL_8;
  }

  if (*(v2 + 14) != 2)
  {
    v5 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_8:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h", 32, v5);
  }

  v4 = *v2;
  *(v2 + 6) = v3 + 1;
  *(v4 + v3) = a2;
  return result;
}

uint64_t *sub_10039090C(uint64_t *result, __int16 a2)
{
  v2 = *result;
  if (*(*result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h");
    goto LABEL_6;
  }

  if (*(v2 + 10) - *(v2 + 12) <= 1)
  {
LABEL_6:
    v3 = "ByteStream_NumReadBytesAvail(*fBs) >= 2";
    goto LABEL_8;
  }

  if (*(v2 + 14) != 2)
  {
    v3 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_8:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h", 33, v3);
  }

  *(*v2 + *(v2 + 12)) = a2;
  *(**result + *(*result + 12) + 1) = HIBYTE(a2);
  *(*result + 12) += 2;
  return result;
}

void *sub_100390EE4(uint64_t **a1, const void *a2, unsigned int a3)
{
  v6 = **a1;
  v7 = *(*a1 + 6);
  if (*(*a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h");
    v8 = 0;
  }

  else
  {
    v8 = *(*a1 + 5) - v7;
  }

  if (v8 < a3)
  {
    v10 = "ByteStream_NumReadBytesAvail(*fBs) >= (N)";
    goto LABEL_9;
  }

  if (*(*a1 + 14) != 2)
  {
    v10 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_9:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h", 36, v10);
  }

  result = memmove((v6 + v7), a2, a3);
  *(*a1 + 6) += a3;
  return result;
}

_BYTE *sub_100391670(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v8 = WORD2(a2);
  v2 = *a1;
  if (*(*a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h");
    goto LABEL_6;
  }

  v3 = *(v2 + 12);
  if (*(v2 + 10) - v3 <= 5)
  {
LABEL_6:
    v6 = "ByteStream_NumReadBytesAvail(*fBs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_8;
  }

  if (*(v2 + 14) != 2)
  {
    v6 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_8:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/include/BTVirtualHciPacket.h", 35, v6);
  }

  result = sub_1000075EC((*v2 + v3), &v7, 6uLL);
  *(*a1 + 12) += 6;
  return result;
}

void sub_1003945C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BTVCLinkAdvertiser;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100394780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1003948F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v21);

  _Unwind_Resume(a1);
}

void sub_10039492C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

_BYTE *sub_100394984(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if (result[25] == 1)
  {

    return [result _restartIfNeeded:0];
  }

  return result;
}

void sub_100394B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v21);

  _Unwind_Resume(a1);
}

void sub_100394B70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

_BYTE *sub_100394BC8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if (result[25] == 1)
  {

    return [result _restartIfNeeded:0];
  }

  return result;
}

void sub_100395294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003952C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[BTVCLinkAdvertiser _advertisingEnable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s _restartIfNeeded\n", &v3, 0xCu);
  }

  [WeakRetained _restartIfNeeded:1];
}

void sub_100396490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BTVCConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100396778(uint64_t a1)
{
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100822920([*(a1 + 32) acceptor], a1, buf, v2);
  }

  v3 = *(a1 + 48);
  *(*(a1 + 32) + 8) = v3;
  v4 = *(a1 + 32);
  if (*(v4 + 10) == 1)
  {
    v5 = *(v4 + 40);
    if (v3)
    {
      [v5 invalidate];
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    else if (v5)
    {
      v8 = objc_alloc_init(CURetrier);
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      [*(*(a1 + 32) + 40) setDispatchQueue:*(*(a1 + 32) + 224)];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10039693C;
      v11[3] = &unk_100AEB0C0;
      objc_copyWeak(&v12, (a1 + 40));
      [*(*(a1 + 32) + 40) setActionHandler:v11];
      [*(*(a1 + 32) + 40) setInterval:3.0];
      [*(*(a1 + 32) + 40) startDirect];
      objc_destroyWeak(&v12);
    }
  }
}

void sub_10039693C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[BTVCConnection setAcceptor:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s startRetrier\n", &v3, 0xCu);
  }

  [WeakRetained _connectIfNeeded];
}

void sub_100396AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100396E64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100396EAC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendingPacket:v5];
  }
}

void sub_100396F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[BTVCConnection _activate]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s startRetrier\n", &v3, 0xCu);
  }

  [WeakRetained _connectIfNeeded];
}

void sub_10039767C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1003976B4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendLLControlPacket:v5];
  }
}

void sub_100397730(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sendLLEvent:a2];
  }
}

BOOL sub_10039901C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendData completion %@\n", &v10, 0xCu);
    }

    [WeakRetained _sendPacketCompele:v5 error:v6];
  }

  return WeakRetained != 0;
}

BOOL sub_100399548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_sendLLControlPacket completion %@\n", &v11, 0xCu);
    }

    v9 = [*(*(a1 + 32) + 88) getCurrentPacket];
    [*(a1 + 32) _sendLmpEvent:0 payload:v9];
    [WeakRetained[11] sendLLControlPacketComplete:v9 error:v6];
  }

  return WeakRetained != 0;
}

void sub_100399D98(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10039A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10039A0E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10039A4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10039A564(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendingPacket:v5];
  }
}

uint64_t sub_10039B6BC(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_100008760(&v6);
  if (v3)
  {
    v3 = v3;
    do
    {
      *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
      ++a2;
      std::ostream::operator<<();
      --v3;
    }

    while (v3);
  }

  std::stringbuf::str();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10039B884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

id sub_10039B8B0(uint64_t a1, int a2)
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = v3;
  if (a2 == -1)
  {
    v5 = @"ALL";
    goto LABEL_5;
  }

  if (!a2)
  {
    v5 = @"NONE";
LABEL_5:
    [v3 appendString:v5];
    goto LABEL_12;
  }

  for (i = 0; i != 32; ++i)
  {
    if (((1 << i) & a2) != 0)
    {
      if ([v4 length])
      {
        [v4 appendString:{@", "}];
      }

      v9 = (1 << i) & a2;
      v7 = [NSString stringWithUTF8String:sub_1005948F8(&v9)];
      [v4 appendString:v7];
    }
  }

LABEL_12:

  return v4;
}

id sub_10039B9DC(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = v3;
  if (a2)
  {
    v5 = 0;
    while (1)
    {
      v6 = (1 << v5) & a2;
      if (v6)
      {
        break;
      }

LABEL_21:
      if (++v5 == 64)
      {
        goto LABEL_24;
      }
    }

    if ([v4 length])
    {
      [v4 appendString:{@", "}];
    }

    if (v6 > 7)
    {
      switch(v6)
      {
        case 8:
          v7 = "FavoritedSyncSettingsEnabled";
          goto LABEL_20;
        case 16:
          v7 = "ContactSyncSettingsGranted";
          goto LABEL_20;
        case 32:
          v7 = "MapSyncEnabled";
          goto LABEL_20;
      }
    }

    else
    {
      switch(v6)
      {
        case 1:
          v7 = "ContactSyncSettingsSupported";
          goto LABEL_20;
        case 2:
          v7 = "ContactSyncSettingsEnabled";
          goto LABEL_20;
        case 4:
          v7 = "RecentCallsSyncSettingsEnabled";
LABEL_20:
          v8 = [NSString stringWithUTF8String:v7];
          [v4 appendString:v8];

          goto LABEL_21;
      }
    }

    v7 = "Unknown";
    goto LABEL_20;
  }

  [v3 appendString:@"SyncSettingsCleared"];
LABEL_24:

  return v4;
}

const __CFString *sub_10039BB70(uint64_t a1, int a2)
{
  if (a2 <= 100)
  {
    if (a2 > 10)
    {
      if (a2 == 11)
      {
        return @"CONNECTION_RESULT";
      }

      if (a2 == 12)
      {
        return @"DISCONNECTION_RESULT";
      }
    }

    else
    {
      if (a2 == 1)
      {
        return @"CONNECTION_ATTEMPT";
      }

      if (a2 == 2)
      {
        return @"DISCONNECTION_ATTEMPT";
      }
    }
  }

  else if (a2 <= 200)
  {
    if (a2 == 101)
    {
      return @"HANDSFREE_AUDIO_CONNECTED";
    }

    if (a2 == 102)
    {
      return @"HANDSFREE_AUDIO_DISCONNECTED";
    }
  }

  else
  {
    switch(a2)
    {
      case 201:
        return @"A2DP_AUDIO_CONNECTED";
      case 202:
        return @"A2DP_AUDIO_DISCONNECTED";
      case 412:
        return @"HANDSFREE_AUDIO_CONNECTION_LOOPS";
    }
  }

  return @"Unknown";
}

uint64_t sub_10039BC48(uint64_t result, int a2)
{
  *result = off_100AEF518;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 40) = a2;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v2 = 513;
        break;
      case 3:
        v2 = 268435712;
        break;
      case 4:
        v2 = 134217984;
        break;
      default:
        return result;
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v2 = 1536;
LABEL_12:
    *(result + 24) = v2;
    *(result + 32) = 0;
    return result;
  }

  if (a2 == 1)
  {
    *(result + 24) = -1;
    operator new();
  }

  return result;
}

void *sub_10039BD74(void *a1)
{
  *a1 = off_100AEF518;
  v2 = a1[4];
  if (v2)
  {
    ctu::TextConverter::~TextConverter(v2);
    operator delete();
  }

  return a1;
}

void sub_10039BDD8(void *a1)
{
  sub_10039BD74(a1);

  operator delete();
}

double sub_10039BE10@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == -1)
  {
    sub_10039C0EC(a1, a2, &__str);
  }

  else
  {
    sub_10039BF40(a1, a2, &__str);
  }

  result = *&__str.__r_.__value_.__l.__data_;
  __p = __str;
  if (*(a1 + 8))
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      do
      {
        __str.__r_.__value_.__s.__data_[2] = 0;
        LOWORD(__str.__r_.__value_.__l.__data_) = 0;
        v9 = p_p->__r_.__value_.__s.__data_[0];
        p_p = (p_p + 1);
        snprintf(&__str, 3uLL, "%02X", v9);
        std::string::append(a3, &__str);
        --size;
      }

      while (size);
    }

    if (v6 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    result = *&__p.__r_.__value_.__l.__data_;
    *a3 = __p;
  }

  return result;
}

void sub_10039BF18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039BF40(uint64_t a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v5 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x8000100u, kCFAllocatorNull);
  Length = CFStringGetLength(v5);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, *(a1 + 24));
  v8 = *(a1 + 16);
  if (MaximumSizeForEncoding >= v8)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = MaximumSizeForEncoding;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = MaximumSizeForEncoding;
  }

  __chkstk_darwin();
  v12 = &v14 - v11;
  bzero(&v14 - v11, v10);
  v14 = 0;
  v15.length = CFStringGetLength(v5);
  v15.location = 0;
  CFStringGetBytes(v5, v15, *(a1 + 24), 0x20u, 0, v12, v10, &v14);
  CFRelease(v5);
  v13 = v14;
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a3[23] = v14;
  if (v13)
  {
    memcpy(a3, v12, v13);
  }

  a3[v13] = 0;
}

void sub_10039C0EC(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  ctu::TextConverter::setSource(v5, a2, v7);
  v8 = *(a1 + 32);
  if (*(a1 + 16))
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = 0x7FFFFFFFLL;
  }

  ctu::TextConverter::readChars(v8, v9, a3);
}

void *sub_10039C158(void *a1)
{
  *a1 = &off_100AEF660;
  sub_100044BBC(a1 + 1);
  a1[9] = 0;
  a1[10] = 0;
  *a1 = off_100AEF538;
  a1[11] = off_100AEF630;
  a1[13] = 0;
  a1[12] = a1 + 13;
  a1[14] = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = +[BTAppInteraction instance];
  [v3 setListener:a1 + 11];

  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_10039C234(_Unwind_Exception *a1)
{
  sub_10039D3F0(v3, *(v1 + 104));
  *v1 = v2;
  sub_10007A068(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_10039C268(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = +[BTAppInteraction instance];
  [v9 launchApplication:v10 restoringCentrals:v6 peripherals:v7];

  objc_autoreleasePoolPop(v8);
}

void sub_10039C330(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[BTAppInteraction instance];
  [v5 updateApplicationAliveStatus:v6 isAlive:a3];

  objc_autoreleasePoolPop(v4);
}

void sub_10039C3D0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1000454F0(a1, a2, __p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [NSString stringWithUTF8String:v5];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = +[BTAppInteraction instance];
  [v7 setCentralBackgroundingSupported:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_10039C4C0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1000454F0(a1, a2, __p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [NSString stringWithUTF8String:v5];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = +[BTAppInteraction instance];
  [v7 setPeripheralBackgroundingSupported:v6];

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10039C5B0(uint64_t a1, uint64_t a2, int a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v6 = sub_10000EEB8(a1 + 96, a2);
  if (a1 + 104 != v6)
  {
    if (*(a1 + 80))
    {
      v7 = *(v6 + 56);
      v8 = (v6 + 64);
      if (v7 != (v6 + 64))
      {
        do
        {
          v9 = v7[4];
          v10 = sub_100007EE8();
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10039C6F4;
          v15[3] = &unk_100AE0880;
          v15[4] = a1;
          v15[5] = v9;
          v16 = a3;
          sub_10000CA94(v10, v15);
          v11 = v7[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v7[2];
              v13 = *v12 == v7;
              v7 = v12;
            }

            while (!v13);
          }

          v7 = v12;
        }

        while (v12 != v8);
      }
    }
  }

  return sub_1000088CC(v17);
}

void sub_10039C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039C730(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v9 takeAssertionForProcess:v11 duration:a3 isUrgent:a4];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v8);
  return 1;
}

void sub_10039C80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10039C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithUTF8String:v8];
  [v7 showPowerAlert:v9 forDenylistMode:a3 validateBundle:1];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10039C914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10039C948(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[BTAppInteraction instance];
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  [v4 showPowerAlert:v6 forDenylistMode:0 validateBundle:0];

  objc_autoreleasePoolPop(v3);
}

void sub_10039C9FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v13 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v9 showAppLaunchAlert:v11 device:v7 type:a4];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10039CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10039CB1C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v8 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[BTAppInteraction instance];
  [v7 showPairingAlert:v8 type:a3 passkey:a4];

  objc_autoreleasePoolPop(v6);
}

void sub_10039CBC4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[BTAppInteraction instance];
  [v1 showPairingAlert:0 type:0 passkey:0];

  objc_autoreleasePoolPop(v0);
}

void sub_10039CC34(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = objc_autoreleasePoolPush();
  v3 = +[BTAppInteraction instance];
  [v3 cancelPairingAlert:v4];

  objc_autoreleasePoolPop(v2);
}

void sub_10039CCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 8);
  if (*(a1 + 72))
  {
    v4 = sub_100007EE8();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10039CDBC;
    v5[3] = &unk_100AE1200;
    v7 = a1;
    v6 = v3;
    sub_10000CA94(v4, v5);
  }

  sub_1000088CC(v8);
}

void sub_10039CD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10039CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a5;
  v8 = objc_autoreleasePoolPush();
  v9 = +[BTAppInteraction instance];
  [v9 displayAirWaveLaunchNotification:a2 forProduct:a3 reason:a4 findMySerialNumber:v10];

  objc_autoreleasePoolPop(v8);
}

void sub_10039CEA8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5)
{
  v11 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = +[BTAppInteraction instance];
  [v10 showFoundAccessoryCrashAlert:a2 & 0xFFFFFFFFFFFFLL productID:a3 accessoryName:v11 firmwareVersion:v8];

  objc_autoreleasePoolPop(v9);
}

void sub_10039CF70(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, void *a5)
{
  v11 = a2;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = +[BTAppInteraction instance];
  [v10 showFoundAccessoryLogAlert:v11 isCrash:a3 pid:a4 accessoryName:v8];

  objc_autoreleasePoolPop(v9);
}

void sub_10039D038(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = +[BTAppInteraction instance];
  [v8 showFileRadarNotification:a2 & 0xFFFFFFFFFFFFLL reason:a3 pid:a4];

  objc_autoreleasePoolPop(v7);
}

void sub_10039D0C4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v8 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[BTAppInteraction instance];
  [v7 openTapToRadarWithAccessoryLogs:v8 reason:a3 pid:a4];

  objc_autoreleasePoolPop(v6);
}

void sub_10039D16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  v12 = +[BTAppInteraction instance];
  v13 = [[NSString alloc] initWithUTF8String:a3];
  v14 = [[NSString alloc] initWithUTF8String:a4];
  v15 = [[NSString alloc] initWithUTF8String:a5];
  v16 = [[NSString alloc] initWithUTF8String:a6];
  [v12 btControllerTapToRadar:a2 reason:v13 cid:v14 cname:v15 cvers:v16];

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_10039D2A8(uint64_t a1)
{
  *a1 = off_100AEF538;
  *(a1 + 88) = off_100AEF630;
  sub_10039D3F0(a1 + 96, *(a1 + 104));
  *a1 = &off_100AEF660;
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_10039D338(uint64_t a1)
{
  *a1 = off_100AEF538;
  *(a1 + 88) = off_100AEF630;
  sub_10039D3F0(a1 + 96, *(a1 + 104));
  *a1 = &off_100AEF660;
  sub_10007A068(a1 + 8);

  operator delete();
}

void sub_10039D3F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10039D3F0(a1, *a2);
    sub_10039D3F0(a1, a2[1]);
    sub_10039D44C((a2 + 4));

    operator delete(a2);
  }
}

void sub_10039D44C(uint64_t a1)
{
  sub_10000CEDC(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t **sub_10039D4A0(uint64_t **result, void *a2, void *a3)
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10039D604(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_100071320();
  }

  return result;
}

void sub_10039D5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10039D604(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_10000856C(a1, v3, v5, a2);
  return a2;
}

void sub_10039D8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10039DC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10039DCB4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendingPacket:v5];
  }
}

id sub_10039E424(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = qword_100BCEA70;
  v9 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v9)
    {
      v12 = 136315138;
      v13 = "[BTVCLinkLayerControl _sendPacketDirect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s completion\n", &v12, 0xCu);
    }

    v10 = [WeakRetained _sendPacketComplete:v5 error:v6];
  }

  else
  {
    if (v9)
    {
      v12 = 136315138;
      v13 = "[BTVCLinkLayerControl _sendPacketDirect:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s strongSelf is nil \n", &v12, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

uint64_t sub_1003A1C64(uint64_t a1, int a2)
{
  *a1 = &off_100AEFA50;
  *(a1 + 8) = a2;
  *(a1 + 16) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 24) = 0;
  sub_100044BBC(a1 + 32);
  sub_100044BBC(a1 + 96);
  sub_100044BBC(a1 + 160);
  sub_1003C984C(a1 + 224, a1);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  sub_10037EA90((a1 + 288));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  sub_10037EA90((a1 + 328));
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  *(a1 + 389) = 0;
  *(a1 + 397) = 2;
  return a1;
}

void sub_1003A1D30(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 160);
  sub_10007A068(v1 + 96);
  sub_10007A068(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A1D74(uint64_t a1)
{
  *a1 = &off_100AEFA50;
  v2 = *(a1 + 272);
  if (v2)
  {
    munmap(v2, *(a1 + 280));
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    munmap(v3, *(a1 + 320));
  }

  CFRelease(*(a1 + 16));
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  sub_1003C9884(a1 + 224);
  sub_10007A068(a1 + 160);
  sub_10007A068(a1 + 96);
  sub_10007A068(a1 + 32);
  return a1;
}

void sub_1003A1E0C(_Unwind_Exception *a1)
{
  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  sub_1003C9884(v1 + 224);
  sub_10007A068(v1 + 160);
  sub_10007A068(v1 + 96);
  sub_10007A068(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A1E50(unint64_t *a1)
{
  v2 = sub_10000E92C();
  if (((*(*v2 + 8))(v2) & 1) != 0 || (v3 = sub_10000E92C(), (*(*v3 + 24))(v3)))
  {
    *(a1 + 396) = 0;
    LOBYTE(valuePtr) = 0;
    v27 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "BTAudioHALPlugin");
    sub_100007E30(__p, "EnableAudioCaptures");
    (*(*v4 + 72))(v4, buf, __p, &valuePtr);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (valuePtr == 1)
    {
      sub_1003A25F0(a1, "kBTAudioDebugEnableAudioCaptures", kCFBooleanTrue);
    }

    v5 = sub_10000E92C();
    sub_100007E30(buf, "BTAudioHALPlugin");
    sub_100007E30(__p, "BTAudioHALEnableAudioLogging");
    (*(*v5 + 72))(v5, buf, __p, a1 + 396);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (*(a1 + 396))
    {
      v6 = kCFBooleanTrue;
    }

    else
    {
      v6 = kCFBooleanFalse;
    }

    sub_1003A25F0(a1, "kBTAudioDebugEnableAudioLogging", v6);
    v7 = sub_10000E92C();
    sub_100007E30(buf, "BTAudioHALPlugin");
    sub_100007E30(__p, "BTAudioDebugEnableUWBSStereoTest");
    (*(*v7 + 72))(v7, buf, __p, &v27);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(*buf);
    }

    if (v27)
    {
      v8 = kCFBooleanTrue;
    }

    else
    {
      v8 = kCFBooleanFalse;
    }

    sub_1003A25F0(a1, "kBTAudioDebugEnableUWBSStereoTest", v8);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTAudioDebugEnableUWBSStereoTest:%d", buf, 8u);
    }
  }

  if ((*(*a1 + 112))(a1))
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device supports Skywalk Path", buf, 2u);
    }

    v11 = +[AudioDeviceManager sharedManager];
    [v11 getAudioSkywalkProvider];

    if (!(*(*a1 + 120))(a1))
    {
      v12 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_100822E68(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, (a1 + 20));
    operator new();
  }

  LODWORD(valuePtr) = 0;
  if (qword_100B541D0 != -1)
  {
    sub_100822ED8();
  }

  if (sub_1006C4558(off_100B541C8, a1[45], &valuePtr) && *(a1 + 2) == 1952539500)
  {
    v20 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1 + 46;
      if (*(a1 + 391) < 0)
      {
        v21 = *v21;
      }

      *buf = 134218242;
      *&buf[4] = *&valuePtr;
      *&buf[12] = 2082;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received initial absolute volume of %f for device %{public}s before publishing", buf, 0x16u);
    }

    v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
    sub_1003A25F0(a1, "kBTAudioMsgPropertyVolumeScalar", v22);
    CFRelease(v22);
    sub_1003A3340(a1, "kBTAudioMsgPropertyVolumeScalar", *&valuePtr);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, (a1 + 4));
  v23 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending publish message", buf, 2u);
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, a1[2]);
  if (Copy)
  {
    sub_1003C9944((a1 + 28), *(a1 + 2), Copy);
    CFRelease(Copy);
    *(a1 + 24) = 1;
    *buf = 0;
    *&buf[8] = 0;
    v25 = sub_100007F88(buf, (a1 + 20));
    *(a1 + 398) = 1;
    sub_1000088CC(v25);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100822F00();
  }

  return sub_1000088CC(__p);
}

uint64_t sub_1003A25F0(uint64_t a1, const char *a2, const void *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 32);
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  value = 0;
  if (CFDictionaryGetValueIfPresent(*(a1 + 16), v6, &value) && CFEqual(value, a3))
  {
    v7 = 0;
  }

  else
  {
    CFDictionarySetValue(*(a1 + 16), v6, a3);
    v7 = 1;
  }

  CFRelease(v6);
  v8 = sub_10000E92C();
  if ((*(*v8 + 8))(v8))
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    if (v9)
    {
      xpc_release(v9);
    }

    else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100822F40();
    }
  }

  sub_1000088CC(v12);
  return v7;
}

void sub_1003A271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A2794(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 368);
    if (*(a1 + 391) < 0)
    {
      v3 = *v3;
    }

    LODWORD(v6) = 136446210;
    *(&v6 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unpublishing audio device %{public}s", &v6, 0xCu);
  }

  v6 = 0uLL;
  sub_100007F88(&v6, a1 + 160);
  *(a1 + 398) = 0;
  sub_1000088CC(&v6);
  v6 = 0uLL;
  sub_100007F88(&v6, a1 + 160);
  v4 = *(a1 + 352);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 352) = 0;
  }

  sub_10000801C(&v6);
  sub_1003CA0DC(a1 + 224);
  return sub_1000088CC(&v6);
}

void sub_1003A28E8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  sub_1003A3724(a1, a2, v6);

  CFRelease(v6);
}

void sub_1003A2964(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  memset(&v15, 0, sizeof(v15));
  v5 = &v15;
  sub_1003A5170(&v15, v4 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v15.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v5, v7, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 45;
  v6.i32[0] = *(a1 + 8);
  v8 = vrev64_s16(*&vmovl_u8(v6));
  *__s = vuzp1_s8(v8, v8).u32[0];
  v14 = 0;
  v9 = std::string::append(&v15, __s);
  v10 = v9->__r_.__value_.__r.__words[0];
  v16[0] = v9->__r_.__value_.__l.__size_;
  *(v16 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v12 = v16[0];
  *(a1 + 368) = v10;
  *(a1 + 376) = v12;
  *(a1 + 383) = *(v16 + 7);
  *(a1 + 391) = v11;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  std::string::operator=((a1 + 232), (a1 + 368));
  sub_1003A28E8(a1, "kBTAudioMsgPropertyDeviceUID", a1 + 368);
}

void sub_1003A2AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A2B00(uint64_t a1, const char *a2, CFUUIDBytes *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *a3);
  sub_1003A3724(a1, a2, v5);

  CFRelease(v5);
}

uint64_t sub_1003A2B68(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"Audio/Video"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"PhoneCall"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"VoiceCommand"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

size_t sub_1003A2C24(uint64_t a1, char *a2, size_t a3)
{
  if (!*(a1 + 272))
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100822FB4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return sub_10037EDB4(a1 + 288, a2, a3);
}

unint64_t sub_1003A2C94(uint64_t a1, char *a2, size_t a3)
{
  if (!*(a1 + 272))
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100822FB4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return sub_10037EE20(a1 + 288, a2, a3);
}

BOOL sub_1003A2D04(uint64_t a1, char *a2, size_t *a3, size_t a4, char *a5, size_t *a6, size_t a7)
{
  if (!*(a1 + 272))
  {
    v14 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100822FB4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return sub_10037EE90(a1 + 288, a2, a3, a4, a5, a6, a7);
}

size_t sub_1003A2DA4(uint64_t a1, char *a2, unint64_t a3, int a4)
{
  if (!*(a1 + 312))
  {
    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10082302C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v16 = sub_10037F188(a1 + 328, a2, a3);
  sub_1003A2E70(a1, a2, a3, a4);
  sub_1000088CC(v18);
  return v16;
}

void sub_1003A2E70(uint64_t a1, const void *a2, size_t a3, int a4)
{
  if (!a4)
  {
    return;
  }

  v21 = 0;
  v22 = 0;
  sub_10000C704(&v21, a2, a3);
  memset(&v20, 0, sizeof(v20));
  v5 = *(a1 + 8);
  if (v5 > 1953260896)
  {
    if (v5 == 1953260897)
    {
      v6 = "AudioDeviceLEA";
      goto LABEL_12;
    }

    if (v5 == 1953719151)
    {
      v6 = "AudioDeviceSCO";
      goto LABEL_12;
    }

LABEL_9:
    v6 = "AudioDeviceOther";
    goto LABEL_12;
  }

  if (v5 == 1952538980)
  {
    v6 = "AudioDeviceA3D";
    goto LABEL_12;
  }

  if (v5 != 1952539500)
  {
    goto LABEL_9;
  }

  v6 = "AudioDeviceA2DP";
LABEL_12:
  std::string::assign(&v20, v6);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = +[AudioDeviceManager sharedManager];
  v8 = v7;
  if (v7)
  {
    [v7 getClientBundleIDs];
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  v9 = sub_100432718();
  v15 = &off_100AE0A78;
  v16 = v22;
  if (v22)
  {
    sub_10000C69C(v22);
  }

  if (v19 >= 0)
  {
    v10 = &v17;
  }

  else
  {
    v10 = v17;
  }

  v11 = (a1 + 368);
  if (*(a1 + 391) < 0)
  {
    v11 = *v11;
  }

  sub_1000C23E0(*(a1 + 360), __p);
  if (v14 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  (*(*v9 + 32))(v9, &v15, 4, v10, v11, v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v21 = &off_100AE0A78;
  if (v22)
  {
    sub_10000C808(v22);
  }
}

void sub_1003A30B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  *(v30 - 64) = &off_100AE0A78;
  v32 = *(v30 - 56);
  if (v32)
  {
    sub_10000C808(v32);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1003A3150(uint64_t a1, char *a2, size_t a3, int a4)
{
  if (!*(a1 + 312) && (v8 = qword_100BCE8D0, os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT)))
  {
    sub_10082302C(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    v18[0] = 0;
    v18[1] = 0;
    sub_100007F88(v18, a1 + 96);
    v16 = sub_10037F1EC(a1 + 328, a2, a3);
    sub_1003A2E70(a1, a2, a3, a4);
    sub_1000088CC(v18);
    return v16;
  }

  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008230A4();
  }

  return 0;
}

void sub_1003A325C(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  sub_1003A25F0(a1, "kBTAudioMsgPropertyTipiConnected", *v3);

  sub_1003C9D68(a1 + 224, "kBTAudioMsgPropertyTipiConnected", v4);
}

void sub_1003A32D0(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyVolumeIsAbsolute", *v2);
}

void sub_1003A32F8(uint64_t a1, const char *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, a2, *v3);
}

void sub_1003A3318(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyTipiSupported", *v2);
}

void sub_1003A3340(uint64_t a1, const char *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  sub_1003A25F0(a1, a2, v5);
  sub_1003C9D68(a1 + 224, a2, v5);
  CFRelease(v5);
}

void sub_1003A33C8(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportRemoteVolumeChange", *v2);
}

BOOL sub_1003A33F0(uint64_t a1, const char *a2, BOOL *a3)
{
  v4 = sub_1003A41C8(a1, a2);
  v5 = v4;
  if (v4)
  {
    *a3 = CFBooleanGetValue(v4) != 0;
  }

  return v5 != 0;
}

const __CFNumber *sub_1003A3448(uint64_t a1, const char *a2, void *a3)
{
  result = sub_1003A41C8(a1, a2);
  if (result)
  {
    return (CFNumberGetValue(result, kCFNumberIntType, a3) != 0);
  }

  return result;
}

const __CFNumber *sub_1003A3494(uint64_t a1, const char *a2, void *a3)
{
  result = sub_1003A41C8(a1, a2);
  if (result)
  {
    return (CFNumberGetValue(result, kCFNumberFloatType, a3) != 0);
  }

  return result;
}

void sub_1003A34E0(uint64_t a1, const char *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  sub_1003A3724(a1, a2, v5);
  CFRelease(v5);
}

void sub_1003A354C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyIsAppleAudioDevice", *v2);
}

void sub_1003A3574(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyInEarDetection", *v2);
}

void sub_1003A359C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyInEarEnabled", *v2);
}

void sub_1003A3614(uint64_t a1, int a2)
{
  if (*(a1 + 392) != a2)
  {
    *(a1 + 392) = a2;
    sub_1003A34E0(a1, "kBTAudioMsgPropertyListenMode", a2);
  }
}

void sub_1003A3648(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyAllowSpatialAudio", *v2);
}

void sub_1003A3670(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyAccessHeadTrack", *v2);
}

void sub_1003A3698(uint64_t a1, void *a2)
{
  v4 = a2;
  Copy = CFStringCreateCopy(kCFAllocatorDefault, v4);
  sub_1003A3724(a1, "kBTAudioMsgPropertyForegroundApp", Copy);
  CFRelease(Copy);
}

void sub_1003A3724(uint64_t a1, const char *a2, const void *a3)
{
  if (sub_1003A25F0(a1, a2, a3))
  {

    sub_1003C9D68(a1 + 224, a2, a3);
  }
}

void sub_1003A3788(uint64_t a1, int a2, void *a3, int a4)
{
  valuePtr = a2;
  v7 = a3;
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = v7;
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update SpatialAudio App Based to BTHAL %@ Mode %d headTrack %d", buf, 0x18u);
  }

  if (a4)
  {
    v9 = &kCFBooleanTrue;
  }

  else
  {
    v9 = &kCFBooleanFalse;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertySpatialBundleID", v7);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertySpatialMode", v11);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyHeadTrack", *v9);
  sub_1003A25F0(a1, "kBTAudioMsgPropertySpatialAudioAppBasedMode", Mutable);
  sub_1003C9D68(a1 + 224, "kBTAudioMsgPropertySpatialAudioAppBasedMode", Mutable);
  CFRelease(v11);
  CFRelease(Mutable);
}

void sub_1003A3950(uint64_t a1, int a2)
{
  if (*(a1 + 397) != a2)
  {
    *(a1 + 397) = a2;
    sub_1003A34E0(a1, "kBTAudioMsgPropertyOneBudANCMode", a2);
  }
}

void sub_1003A3974(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyDOAPSupported", *v2);
}

void sub_1003A39EC(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyLiveListenSupported", *v2);
}

void sub_1003A3A20(uint64_t a1, const char *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  sub_1003A3724(a1, a2, v5);
  CFRelease(v5);
}

void sub_1003A3A9C(uint64_t a1, int **a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, a2[1] - *a2, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = *a2;
    while (v6 != a2[1])
    {
      v7 = *v6++;
      valuePtr = v7;
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr);
      CFArrayAppendValue(v5, v8);
      CFRelease(v8);
    }

    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setDosimetryVolumeCurve set", v11, 2u);
    }

    sub_1003A3724(a1, "kBTAudioMsgPropertyDosimetryVolumeCurve", v5);
    CFRelease(v5);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setDosimetryVolumeCurve failed", buf, 2u);
    }
  }
}

void sub_1003A3C04(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyUnifiedUSBCTransport", *v2);
}

void sub_1003A3C2C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyWSModeSupported", *v2);
}

void sub_1003A3C54(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyWSModeEnabled", *v2);
}

void sub_1003A3C7C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyWSIsGuestDevice", *v2);
}

void sub_1003A3CA4(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyWSIsGuestNotInContactsDevice", *v2);
}

void sub_1003A3CCC(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySoftwareVolumeSupported", *v2);
}

void sub_1003A3CF4(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportSpatialAudio", *v2);
}

void sub_1003A3D1C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportHighQualityBiDirectionalAudio", *v2);
}

void sub_1003A3D44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    Copy = CFDataCreateCopy(kCFAllocatorDefault, v3);
  }

  else
  {
    Copy = objc_alloc_init(NSData);
  }

  v5 = Copy;
  if (Copy)
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = CFDataGetLength(v5);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile Size %d", v7, 8u);
    }

    sub_1003A3724(a1, "kBTAudioMsgPropertySoundProfile", v5);
    CFRelease(v5);
  }
}

void sub_1003A3E6C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportSoundProfile", *v2);
}

void sub_1003A3E94(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyAdaptiveVolume", *v2);
}

void sub_1003A3ECC(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyMuteControl", *v2);
}

void sub_1003A3EF4(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyConversationDetect", *v2);
}

void sub_1003A3F1C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyBudSideLoudnessEqControlSupported", *v2);
}

void sub_1003A3F44(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyBudSideLoudnessEqEnabled", *v2);
}

void sub_1003A3F6C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyDigitalCrownSupported", *v2);
}

void sub_1003A3F94(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  sub_1003A25F0(a1, "kBTAudioMsgPropertyOwnershipHijack", *v3);

  sub_1003C9D68(a1 + 224, "kBTAudioMsgPropertyOwnershipHijack", v4);
}

void sub_1003A4008(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  sub_1003A25F0(a1, "kBTAudioMsgPropertyAllowAutoRoute", *v3);

  sub_1003C9D68(a1 + 224, "kBTAudioMsgPropertyAllowAutoRoute", v4);
}

void sub_1003A407C(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  sub_1003A25F0(a1, "kBTAudioMsgPropertyIsHidden", *v3);

  sub_1003C9D68(a1 + 224, "kBTAudioMsgPropertyIsHidden", v4);
}

void sub_1003A40F0(uint64_t a1, const char *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  sub_1003A3724(a1, a2, v5);
  CFRelease(v5);
}

void sub_1003A415C(uint64_t a1, const char *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  sub_1003A3724(a1, a2, v5);
  CFRelease(v5);
}

const void *sub_1003A41C8(uint64_t a1, const char *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 32);
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  Value = CFDictionaryGetValue(*(a1 + 16), v4);
  CFRelease(v4);
  sub_1000088CC(v7);
  return Value;
}

uint64_t sub_1003A4260(uint64_t a1, const char *a2, const void *a3)
{
  result = sub_1003A25F0(a1, a2, a3);
  if (result)
  {
    v7 = *(*a1 + 160);

    return v7(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1003A42E4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 160);
  v2 = *(a1 + 398);
  sub_1000088CC(v4);
  return v2;
}

void sub_1003A432C(__n128 **a1, char *__s1, const __CFNumber *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyVolumeScalar"))
  {
    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
    if (CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr))
    {
      ((*a1)[13].n128_u64[0])(a1, *&valuePtr.__r_.__value_.__l.__data_);
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyInputVolumeScalar"))
  {
    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
    if (CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr))
    {
      ((*a1)[13].n128_u64[1])(a1, *&valuePtr.__r_.__value_.__l.__data_);
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyOwnershipStateChanged"))
  {
    BOOLean = 0;
    value = 0;
    memset(&valuePtr, 0, sizeof(valuePtr));
    sub_100007E30(&valuePtr, "");
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyOwnershipStateAddr", &value))
    {
      CStringPtr = CFStringGetCStringPtr(value, 0x8000100u);
      std::string::assign(&valuePtr, CStringPtr);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyOwnershipState", &BOOLean))
    {
      v7 = CFBooleanGetValue(BOOLean) != 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "false";
      if (v7)
      {
        v9 = "true";
      }

      p_valuePtr = &valuePtr;
      if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      v35 = v9;
      v36 = 2082;
      v37 = p_valuePtr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got ownership state change of %{public}s for device %{public}s", buf, 0x16u);
    }

    if (qword_100B50950 != -1)
    {
      sub_10082318C();
    }

    v11 = off_100B50948;
    if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100008904(&__p, valuePtr.__r_.__value_.__l.__data_, valuePtr.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = valuePtr;
    }

    sub_1003347E8(v11, &__p, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = valuePtr.__r_.__value_.__r.__words[0];
LABEL_59:
      operator delete(v12);
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyListenMode"))
  {
    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
    CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
    if (qword_100B50950 != -1)
    {
      sub_10082318C();
    }

    sub_100338D44(off_100B50948, a1[45], LODWORD(valuePtr.__r_.__value_.__l.__data_));
  }

  else
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyDosimetrySensitivity"))
    {
      LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
      CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
      sub_10054AF18(a1[45], *&valuePtr.__r_.__value_.__l.__data_);
      return;
    }

    if (strcmp(__s1, "kBTAudioMsgPropertyDosimetryVolumeCurve"))
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100823118();
      }

      return;
    }

    Count = CFArrayGetCount(a3);
    memset(&valuePtr, 0, sizeof(valuePtr));
    if (Count <= 0)
    {
      v26 = a1[45];
      __dst = 0;
      v29 = 0;
      v27 = 0;
    }

    else
    {
      v14 = 0;
      v15 = Count & 0x7FFFFFFF;
      do
      {
        *buf = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
        CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, buf);
        size = valuePtr.__r_.__value_.__l.__size_;
        if (valuePtr.__r_.__value_.__l.__size_ >= valuePtr.__r_.__value_.__r.__words[2])
        {
          v19 = valuePtr.__r_.__value_.__r.__words[0];
          v20 = valuePtr.__r_.__value_.__l.__size_ - valuePtr.__r_.__value_.__r.__words[0];
          v21 = (valuePtr.__r_.__value_.__l.__size_ - valuePtr.__r_.__value_.__r.__words[0]) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            sub_1000C7698();
          }

          v23 = valuePtr.__r_.__value_.__r.__words[2] - valuePtr.__r_.__value_.__r.__words[0];
          if ((valuePtr.__r_.__value_.__r.__words[2] - valuePtr.__r_.__value_.__r.__words[0]) >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_10036F560(&valuePtr, v24);
          }

          *(4 * v21) = *buf;
          v18 = 4 * v21 + 4;
          memcpy(0, v19, v20);
          v25 = valuePtr.__r_.__value_.__r.__words[0];
          valuePtr.__r_.__value_.__r.__words[0] = 0;
          *&valuePtr.__r_.__value_.__r.__words[1] = v18;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *valuePtr.__r_.__value_.__l.__size_ = *buf;
          v18 = size + 4;
        }

        valuePtr.__r_.__value_.__l.__size_ = v18;
        ++v14;
      }

      while (v15 != v14);
      v26 = a1[45];
      __dst = 0;
      v29 = 0;
      v27 = 0;
      if (v18 != valuePtr.__r_.__value_.__r.__words[0])
      {
        sub_1003A4F88(&v27, (v18 - valuePtr.__r_.__value_.__r.__words[0]) >> 2);
      }
    }

    sub_10054B094(v26, &v27);
    if (v27)
    {
      __dst = v27;
      operator delete(v27);
    }

    v12 = valuePtr.__r_.__value_.__r.__words[0];
    if (valuePtr.__r_.__value_.__r.__words[0])
    {
      valuePtr.__r_.__value_.__l.__size_ = valuePtr.__r_.__value_.__r.__words[0];
      goto LABEL_59;
    }
  }
}

void sub_1003A483C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A48A8()
{
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008231B4();
  }
}

void sub_1003A48F4()
{
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100823228();
  }
}

uint64_t sub_1003A4940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1[34] && (v10 = qword_100BCE8D0, os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT)))
  {
    sub_10082329C(v10, v11, v12, v13, v14, v15, v16, v17);
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else if (!a2)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    a1[34] = a2;
    a1[35] = a3;
    sub_10037EAD0((a1 + 36), a2);
  }

LABEL_6:
  if (a1[39] && (v18 = qword_100BCE8D0, os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT)))
  {
    sub_100823314(v18, v19, v20, v21, v22, v23, v24, v25);
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_14;
  }

  if (a5)
  {
    a1[39] = a4;
    a1[40] = a5;
    sub_10037EAD0((a1 + 41), a4);
    return (*(*a1 + 184))(a1);
  }

LABEL_14:
  if (!(a2 | a4))
  {
    v28[0] = 0;
    v28[1] = 0;
    sub_100007F88(v28, (a1 + 20));
    v26 = a1[44];
    if (v26)
    {
      sub_1005CB484(v26);
    }

    sub_10000801C(v28);
    sub_1000088CC(v28);
  }

  return (*(*a1 + 184))(a1);
}

void sub_1003A4A90(uint64_t a1)
{
  (*(*a1 + 232))(a1);
  v1 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Timed audio delivery speed modification completed", v2, 2u);
  }
}

uint64_t sub_1003A4B1C(uint64_t a1)
{
  result = (*(*a1 + 200))(a1);
  if (*(a1 + 272) && *(a1 + 280))
  {
    sub_10037EB40(a1 + 288);
    result = munmap(*(a1 + 272), *(a1 + 280));
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  if (*(a1 + 312))
  {
    if (*(a1 + 320))
    {
      v3[0] = 0;
      v3[1] = 0;
      sub_100007F88(v3, a1 + 96);
      sub_10037EB40(a1 + 328);
      sub_10000801C(v3);
      munmap(*(a1 + 312), *(a1 + 320));
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      return sub_1000088CC(v3);
    }
  }

  return result;
}

uint64_t sub_1003A4C14(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "audioPluginBiToUniTransition", v4, 2u);
  }

  return (*(*a1 + 256))(a1);
}

uint64_t sub_1003A4CB0(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "audioPluginUniToBiTransition", v4, 2u);
  }

  return (*(*a1 + 264))(a1);
}

uint64_t sub_1003A4D94(uint64_t a1)
{
  if (*(a1 + 272) || *(a1 + 312))
  {
    sub_1003A4B1C(a1);
  }

  (*(*a1 + 224))(a1);
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 32);
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a1 + 16));
  if (Copy)
  {
    sub_1003C9944(a1 + 224, *(a1 + 8), Copy);
    CFRelease(Copy);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100822F00();
  }

  return sub_1000088CC(v4);
}

void sub_1003A4E88(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AudioDevice self deleting", v3, 2u);
  }

  if (a1)
  {
    (*(*a1 + 104))(a1);
  }
}

void sub_1003A4F44(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertyIsGenuineAirPods", *v2);
}

void sub_1003A4F88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10036F560(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_1003A502C(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 8);
  *v2 = off_100B07CC8;
  v2[32] = off_100B07D88;
  v2[33] = off_100B07DB0;
  v2[34] = &off_100B07DF8;
  sub_100044BBC(v2 + 35);
  *(a1 + 344) = a1 + 352;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  sub_100044BBC(a1 + 392);
  *(a1 + 456) = a1 + 464;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1 + 488;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = a1 + 512;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  return a1;
}

void sub_1003A5130(_Unwind_Exception *a1)
{
  v4 = v2;
  sub_10000CEDC(v1 + 368, *v3);
  sub_10000CEDC(v1 + 344, *v4);
  sub_10007A068(v1 + 280);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A5170(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_1003A5264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003A1C64(a1, 1953260897);
  *v4 = &off_100AEFBF0;
  v4[50] = a2;
  v4[51] = 0;
  v4[52] = 0;
  v4[53] = 0;
  sub_1003A32D0(v4, 1);
  return a1;
}

void sub_1003A52C4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 408);
  if (v3)
  {
    *(v1 + 416) = v3;
    operator delete(v3);
  }

  sub_1003A1D74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A52EC(void *a1)
{
  *a1 = &off_100AEFBF0;
  v2 = a1[51];
  if (v2)
  {
    a1[52] = v2;
    operator delete(v2);
  }

  return sub_1003A1D74(a1);
}

void sub_1003A5350(void *a1)
{
  sub_1003A52EC(a1);

  operator delete();
}

void sub_1003A538C(uint64_t a1, int a2, CFNumberRef number)
{
  if (a2 == 10)
  {
    v4 = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &v4))
    {
      (*(**(a1 + 400) + 48))(*(a1 + 400), a1, v4);
    }
  }

  else if (a2 == 9)
  {
    valuePtr = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
    {
      (*(**(a1 + 400) + 40))(*(a1 + 400), a1, valuePtr);
    }
  }

  else
  {

    sub_1003A48A8();
  }
}

BOOL sub_1003A5564(uint64_t a1)
{
  if (sub_1003A2BF4(a1))
  {
    return 1;
  }

  return sub_1003A2C04(a1);
}

void sub_1003A55E4(int **a1@<X1>, int **a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::__sort<std::__less<int,int> &,int *>();
  LOBYTE(v6) = 0;
  std::__sort<std::__less<int,int> &,int *>();
  sub_1003A5974(*a1, a1[1], *a2, a2[1], a3, &v6);
}

void sub_1003A565C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A5678(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 408);
  if (*(a1 + 408) != *(a1 + 416))
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_1003A5D88(&__p, a2);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1003A55E4(v3, &__p, &v14);
    v4 = *(a1 + 408);
    v5 = *(a1 + 416) - v4;
    v6 = v14;
    v7 = v15;
    v8 = v15 - v14;
    if (v5 == v15 - v14)
    {
      v9 = memcmp(v4, v14, v5);
      if (v3 == &v14 || !v9)
      {
        goto LABEL_10;
      }
    }

    else if (v3 == &v14)
    {
LABEL_10:
      if (v6)
      {
        v15 = v6;
        operator delete(v6);
      }

      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      goto LABEL_14;
    }

    sub_1003A5C5C(v3, v6, v7, v8 >> 2);
    v6 = v14;
    goto LABEL_10;
  }

  if (v3 != a2)
  {
    sub_1003A5C5C((a1 + 408), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

LABEL_14:
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, (*(a1 + 416) - *(a1 + 408)) >> 2, &kCFTypeArrayCallBacks);
  v11 = *(a1 + 408);
  while (v11 != *(a1 + 416))
  {
    v12 = *v11++;
    LODWORD(__p) = v12;
    v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &__p);
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v13);
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportedCodecs", Mutable);
  CFRelease(Mutable);
}

void sub_1003A5810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LEAAudioDevice readHandler called on data of size %lu", &v5, 0xCu);
  }
}

void sub_1003A5974(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, int **a6@<X8>)
{
  v15 = a3;
  v16 = a1;
  v14 = a5;
  v13 = 0;
  if (a3 != a4)
  {
    do
    {
      v9 = sub_1003A5A58(v16, a2, a3);
      v10 = v16;
      v16 = v9;
      sub_1003A5B20(v9 == v10, &v16, &v15, &v14, &v13);
      if (v16 == a2)
      {
        break;
      }

      v11 = sub_1003A5A58(v15, a4, v16);
      v12 = v15;
      v15 = v11;
      sub_1003A5B20(v11 == v12, &v16, &v15, &v14, &v13);
      a3 = v15;
    }

    while (v15 != a4);
    a5 = v14;
  }

  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
}

int *sub_1003A5A58(int *a1, int *a2, int *a3)
{
  if (a2 != a1)
  {
    v3 = *a3;
    if (*a1 >= *a3)
    {
      return a1;
    }

    v4 = a2 - a1;
    if (v4 >= 1)
    {
      v4 = 1;
    }

    v5 = &a1[v4];
    if (v5 == a2)
    {
LABEL_17:
      v7 = a2;
    }

    else
    {
      v6 = 1;
      while (1)
      {
        v7 = v5;
        if (*v5 >= v3)
        {
          break;
        }

        v4 = a2 - v5;
        v8 = v4 <= 2 * v6;
        v6 *= 2;
        if (v8)
        {
          v9 = v6;
        }

        else
        {
          v9 = a2 - v5;
        }

        if (!v8)
        {
          v4 = v6;
        }

        if (v6 < 0)
        {
          v4 = v9;
        }

        v5 = &v7[v4];
        a1 = v7;
        if (v5 == a2)
        {
          a1 = v7;
          goto LABEL_17;
        }
      }
    }

    if (v4)
    {
      if (v4 == 1)
      {
        return v7;
      }

      do
      {
        v10 = v4 >> 1;
        v11 = &a1[v4 >> 1];
        v13 = *v11;
        v12 = v11 + 1;
        v4 += ~(v4 >> 1);
        if (v13 < v3)
        {
          a1 = v12;
        }

        else
        {
          v4 = v10;
        }
      }

      while (v4);
    }

    return a1;
  }

  return a2;
}

void sub_1003A5B20(int a1, _DWORD **a2, void *a3, uint64_t *a4, char *a5)
{
  if (a1)
  {
    if (*a5 == 1)
    {
      v8 = *a2;
      v9 = *a4;
      v11 = *(*a4 + 8);
      v10 = *(*a4 + 16);
      if (v11 >= v10)
      {
        v14 = *v9;
        v15 = v11 - *v9;
        v16 = (v15 >> 2) + 1;
        if (v16 >> 62)
        {
          sub_1000C7698();
        }

        v17 = v10 - v14;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
        v19 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v19 = v16;
        }

        if (v19)
        {
          sub_10036F560(*a4, v19);
        }

        v20 = (4 * (v15 >> 2));
        *v20 = *v8;
        v12 = v20 + 1;
        memcpy(0, v14, v15);
        v21 = *v9;
        *v9 = 0;
        *(v9 + 8) = v12;
        *(v9 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v11 = *v8;
        v12 = v11 + 1;
      }

      v13 = 0;
      *(v9 + 8) = v12;
      ++*a2;
      *a3 += 4;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13;
}

void *sub_1003A5C5C(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_1003A4F88(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_1003A5D88(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1003A4F88(result, (v2 - *a2) >> 2);
  }

  return result;
}

uint64_t sub_1003A5DF0(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &off_100AEFD10;
  *(a1 + 80) = 0;
  v4 = (a1 + 80);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 70) = 0;
  v5 = TSNullClockIdentifier;
  *(a1 + 88) = 0;
  *(a1 + 96) = v5;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC(a1 + 224);
  *(a1 + 160) = 0;
  *(a1 + 164) = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Instance created Accuracy=%d", v11, 8u);
  }

  v7 = +[TSClockManager sharedClockManager];
  v8 = *v4;
  *v4 = v7;

  if (!*v4)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Audio Time Synchronization Shared Clock manager initialization failed", v11, 2u);
    }
  }

  *(a1 + 76) = 0;
  return a1;
}

void sub_1003A5FB8(_Unwind_Exception *a1)
{
  sub_10007A068(v3 + 24);
  sub_10000CEDC(v3, *(v1 + 208));
  v6 = *(v1 + 184);
  if (v6)
  {
    sub_100117644(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v1 + 144) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(v2, *(v1 + 112));

  v8 = *(v1 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A6030(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Cleanup", buf, 2u);
  }

  sub_1003A62D4(a1, 0, *(a1 + 164));
  v3 = *(a1 + 96);
  v4 = TSNullClockIdentifier;
  if (v3 == TSNullClockIdentifier)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 80);
    v26 = 0;
    v7 = [v6 removeUserFilteredClockWithIdentifier:v3 error:&v26];
    v5 = v26;
    if ((v7 & 1) == 0)
    {
      v8 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Audio Time Synchronization Shared Clock Engine cleanup Failed", buf, 2u);
      }
    }
  }

  *buf = 0;
  v25 = 0;
  sub_100007F88(buf, a1 + 224);
  v9 = *(a1 + 104);
  v10 = (a1 + 112);
  if (v9 != (a1 + 112))
  {
    do
    {
      if (v9[4])
      {
        operator delete();
      }

      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != v10);
  }

  sub_10000CEDC(a1 + 104, *(a1 + 112));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = v10;
  *(a1 + 76) = 0;
  v14 = *(a1 + 80);
  *(a1 + 80) = 0;

  v15 = *(a1 + 88);
  *(a1 + 88) = 0;

  *(a1 + 96) = v4;
  v16 = *(a1 + 176);
  if (v16)
  {
    *(v16 + 77) = 0;
  }

  v17 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v17)
  {
    sub_100117644(v17);
  }

  v18 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Cleanup - Completed", v23, 2u);
  }

  sub_1000088CC(buf);

  sub_10007A068(a1 + 224);
  sub_10000CEDC(a1 + 200, *(a1 + 208));
  v19 = *(a1 + 184);
  if (v19)
  {
    sub_100117644(v19);
  }

  v20 = *(a1 + 136);
  if (v20)
  {
    *(a1 + 144) = v20;
    operator delete(v20);
  }

  sub_10000CEDC(a1 + 104, *(a1 + 112));

  v21 = *(a1 + 16);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  return a1;
}

void sub_1003A62D4(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 104);
  if (v5 == a1 + 112)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(v5 + 32) + 8);
  }

  v10 = v3;
  v11 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A8B30;
  v7[3] = &unk_100AEFD48;
  v7[4] = a1;
  v7[5] = v6;
  v9 = a2;
  v8 = a3;
  sub_1003A8A64(a1 + 128, v7);
}

void sub_1003A6374(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 104);
  v4 = *(a1 + 104);
  v5 = (a1 + 112);
  if (v4 != (a1 + 112))
  {
    do
    {
      if (*v4[4] == a2)
      {
        if (qword_100B50B88 != -1)
        {
          sub_100823404();
        }

        v10 = sub_1000117DC(qword_100B50B80, a2);
        v11 = v4[4];
        v8 = sub_10002717C(v3, v4);
        operator delete(v4);
        v12 = *(a1 + 76) - 1;
        *(a1 + 76) = v12;
        v13 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v11 + 8);
          if (v10)
          {
            sub_100018384(v10, __p);
            v15 = __p;
            if (v22 < 0)
            {
              v15 = __p[0];
            }

            v16 = *(a1 + 76);
            *buf = 134218498;
            v24 = v14;
            v25 = 2082;
            v26 = v15;
            v27 = 1024;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Audio Timesync: removeRemoteTimesyncSesssion  : Remote Timesync BTAddr = %llx] session= %{public}s mNumBTTimeSyncClient=%d", buf, 0x1Cu);
            if (v22 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 134218498;
            v24 = v14;
            v25 = 2082;
            v26 = "(NULL)";
            v27 = 1024;
            v28 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Audio Timesync: removeRemoteTimesyncSesssion  : Remote Timesync BTAddr = %llx] session= %{public}s mNumBTTimeSyncClient=%d", buf, 0x1Cu);
          }

LABEL_20:
          operator delete();
        }

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = v4[1];
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
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }
      }

      v4 = v8;
    }

    while (v8 != v5);
  }

  v17 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 76);
    *buf = 67109120;
    LODWORD(v24) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine un-Register : ref count %d ", buf, 8u);
  }

  if (!*(a1 + 76) && *(a1 + 77) == 1)
  {
    v19 = *(a1 + 192);
    if (v19)
    {
      sub_1003A77B8(a1, v19, 0, 0);
      sub_1003A77B8(a1, *(a1 + 192), 0, 1);
      sub_1003A77B8(a1, *(a1 + 192), 0, 2);
      v20 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine un-Register : No more reference counter should be freed by parent now", buf, 2u);
      }
    }
  }
}

uint64_t sub_1003A66BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 224);
  if (*(a1 + 76))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_100B50940 != -1)
    {
      sub_10082342C();
    }

    v10 = *(off_100B50938 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1003A6820;
    block[3] = &unk_100AEFD18;
    block[4] = v9;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = a3;
    v16 = a2;
    v17 = a4;
    dispatch_async(v10, block);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio Timesync: No Timesync clients, return", buf, 2u);
    }
  }

  return sub_1000088CC(v19);
}

void sub_1003A6820(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        sub_1003A689C(v5, *(a1 + 48), *(a1 + 56), *(a1 + 64));
      }

      sub_100117644(v4);
    }
  }
}

uint64_t sub_1003A689C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 32);
  if (v6 <= a2)
  {
    *(a1 + 24) = *(a1 + 40);
    sub_1003A9260(a1, a2, a3);
    *(a1 + 40) = a3;
    *(a1 + 48) = a2;
    result = sub_1003A7060(a1);
    if (result)
    {
      if ((sub_1003A9140(a1, a3, *(a1 + 24)) & 1) == 0)
      {
        sub_1003A8FD8(a1, *(a1 + 40), *(a1 + 24));
      }
    }

    else
    {
      if (!*(a1 + 32))
      {
        goto LABEL_18;
      }

      result = sub_1003A9140(a1, *(a1 + 40), *(a1 + 24));
      if (!result || *(a1 + 40) <= *(a1 + 24) || *(a1 + 48) <= *(a1 + 32))
      {
        goto LABEL_18;
      }

      sub_1003A8BE0(a1);
      sub_1003A8F14(a1, *(a1 + 32), *(a1 + 24));
    }

    result = sub_1003A8F14(a1, a2, a3);
LABEL_18:
    *(a1 + 72) = a4;
    return result;
  }

  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: GPIO Toggle TS wrapped around Previous TS=%llu New TS=%llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 224);
  if (*(a1 + 88))
  {
    sub_10000801C(buf);
    v8 = *(a1 + 88);
    v24 = 0;
    v9 = [v8 resetSyncServiceWithError:&v24];
    v10 = v24;
    if ((v9 & 1) == 0)
    {
      v11 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 code];
        *v25 = 67109120;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Timesync Reset Failed with status %x", v25, 8u);
      }
    }

    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    v16 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100823454(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return sub_1000088CC(buf);
}

void sub_1003A6AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A6B20(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    if (qword_100B50B88 != -1)
    {
      sub_10082348C();
    }

    v8 = sub_1000117DC(qword_100B50B80, a3);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        sub_100018384(v8, __p);
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 134218242;
        v19 = a2;
        v20 = 2082;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Registering Remote timesync : Remote Timesync BTAddr = %llx] session= %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 134218242;
        v19 = a2;
        v20 = 2082;
        v21 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Registering Remote timesync : Remote Timesync BTAddr = %llx] session= %{public}s", buf, 0x16u);
      }
    }

    sub_1003A6D34(a1, a3, a2);
    v11 = *(a1 + 76);
  }

  else
  {
    v11 = *(a1 + 76) + 1;
    *(a1 + 76) = v11;
  }

  *a4 = v11;
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 76);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Register : ref count %d ", __p, 8u);
  }

  v14 = sub_1003A7060(a1);
  sub_1003A62D4(a1, v14, *(a1 + 164));
  return 1;
}

void sub_1003A6D34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 104);
  if (v6 == (a1 + 112))
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    v7 = v6[4];
    if (v7[1] == a3 && *v7 == a2)
    {
      break;
    }

    v8 = v6[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
    if (v9 == (a1 + 112))
    {
      goto LABEL_10;
    }
  }

  if (qword_100B50B88 != -1)
  {
    sub_10082348C();
  }

  v11 = sub_1000117DC(qword_100B50B80, a2);
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      sub_100018384(v11, __p);
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = *(a1 + 76);
      *buf = 134218498;
      v19 = a3;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Registering  BTAddr = %llx for already registered session= %{public}s dropping! mNumBTTimeSyncClient=%d", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v15 = *(a1 + 76);
      *buf = 134218498;
      v19 = a3;
      v20 = 2082;
      v21 = "(NULL)";
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Registering  BTAddr = %llx for already registered session= %{public}s dropping! mNumBTTimeSyncClient=%d", buf, 0x1Cu);
    }
  }
}

uint64_t sub_1003A7060(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (qword_100B50940 != -1)
    {
      sub_1008234A0();
    }

    v2 = off_100B50938;
    v3 = mach_absolute_time();
    if (sub_10062EB2C(v2, v3 - *(a1 + 40), 0) > 10.0)
    {
      v4 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: GPIO Toggle stopped, releasing timesync resources", buf, 2u);
      }

      *buf = 0uLL;
      sub_100007F88(buf, a1 + 224);
      if (*(a1 + 80))
      {
        sub_10000801C(buf);
        v5 = *(a1 + 80);
        v6 = *(a1 + 96);
        v25 = 0;
        v7 = [v5 removeUserFilteredClockWithIdentifier:v6 error:&v25];
        v8 = v25;
        if ((v7 & 1) == 0)
        {
          v9 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Audio Time Synchronization Shared Clock Engine cleanup Failed", v24, 2u);
          }
        }

        v10 = *(a1 + 88);
        *(a1 + 88) = 0;

        *(a1 + 96) = TSNullClockIdentifier;
        sub_1003A8E24(a1, 0, 1);
        sub_1000088CC(buf);
      }

      else
      {
        v15 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1008234B4(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        sub_1000088CC(buf);
      }

      goto LABEL_23;
    }

    v14 = 1;
  }

  else
  {
    v11 = *(a1 + 88);
    if (!v11)
    {
LABEL_23:
      v14 = 0;
      return v14 & 1;
    }

    sub_1003A8E24(a1, [v11 lockState] == 2, 1);
    v12 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 160))
      {
        v13 = "Ready";
      }

      else
      {
        v13 = "Not Ready";
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Lock State = %s", buf, 0xCu);
    }

    v14 = *(a1 + 160);
  }

  return v14 & 1;
}

void sub_1003A72E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1003A7300(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    if (qword_100B50B88 != -1)
    {
      sub_10082348C();
    }

    v8 = sub_1000117DC(qword_100B50B80, a3);
    sub_1003A7588(a1, a3, a2);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        sub_100018384(v8, __p);
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 134218242;
        v19 = a2;
        v20 = 2082;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Un Registering Remote timesync : Remote Timesync BTAddr = %llx] session= %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 134218242;
        v19 = a2;
        v20 = 2082;
        v21 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Un Registering Remote timesync : Remote Timesync BTAddr = %llx] session= %{public}s", buf, 0x16u);
      }
    }
  }

  else
  {
    --*(a1 + 76);
  }

  v11 = *(a1 + 76);
  *a4 = v11;
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine un-Register : ref count %d ", __p, 8u);
    v11 = *(a1 + 76);
  }

  if (!v11 && *(a1 + 77) == 1)
  {
    v13 = *(a1 + 192);
    if (v13)
    {
      sub_1003A77B8(a1, v13, 0, 0);
      sub_1003A77B8(a1, *(a1 + 192), 0, 1);
      sub_1003A77B8(a1, *(a1 + 192), 0, 2);
      v14 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine un-Register : No more reference counter should be freed by parent now", __p, 2u);
      }
    }
  }

  return 1;
}

uint64_t **sub_1003A7588(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 104);
  result = (a1 + 104);
  v5 = v6;
  if (v6 != result + 1)
  {
    while (1)
    {
      v9 = v5[4];
      if (v9[1] == a3 && *v9 == a2)
      {
        break;
      }

      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
      if (v11 == result + 1)
      {
        return result;
      }
    }

    v20 = v5[4];
    --*(a1 + 76);
    sub_100075DC4(result, &v20);
    if (qword_100B50B88 != -1)
    {
      sub_100823404();
    }

    v13 = sub_1000117DC(qword_100B50B80, a2);
    v14 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      if (v13)
      {
        sub_100018384(v13, __p);
        if (v19 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = *(a1 + 76);
        *buf = 134218498;
        v22 = a3;
        v23 = 2082;
        v24 = v15;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Unregister Remote timesync Completed  : Remote Timesync BTAddr = %llx] session= %{public}s mNumBTTimeSyncClient=%d", buf, 0x1Cu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = *(a1 + 76);
        *buf = 134218498;
        v22 = a3;
        v23 = 2082;
        v24 = "(NULL)";
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Unregister Remote timesync Completed  : Remote Timesync BTAddr = %llx] session= %{public}s mNumBTTimeSyncClient=%d", buf, 0x1Cu);
      }
    }

    result = v20;
    if (v20)
    {
      operator delete();
    }
  }

  return result;
}

void sub_1003A77B8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (qword_100B50910 != -1)
  {
    sub_1008234EC();
  }

  v8 = *(off_100B50908 + 206);
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = *(a1 + 172);
      if (a3)
      {
        v10 = v9 + 1;
LABEL_12:
        *(a1 + 172) = v10;
        goto LABEL_13;
      }

      if (v9)
      {
        v10 = v9 - 1;
        goto LABEL_12;
      }
    }

LABEL_13:
    v11 = 2;
    goto LABEL_14;
  }

  if (*(off_100B50908 + 206))
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + 164);
  }

LABEL_14:
  v12 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 164);
    v14 = "false";
    *buf = 67109634;
    if (v8)
    {
      v14 = "true";
    }

    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    *v53 = 2080;
    *&v53[2] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Trigger updateReferenceTimeStampHardWareTrigger %d Accuracy %d, HfpStreaming %s", buf, 0x18u);
  }

  *(a1 + 192) = a2;
  v15 = a4 - 1;
  if ((a4 - 1) < 2)
  {
    v16 = 3;
    if (v11 != 2)
    {
      if (v11 != 1)
      {
        goto LABEL_82;
      }

      if (a3)
      {
        goto LABEL_22;
      }

LABEL_53:
      v51 = 1;
      *buf = &v51;
      if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
      {
        v32 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        *buf = 0;
        v33 = "Audio Timesync: Stop Spatial High, No High is running, do nothing";
        goto LABEL_66;
      }

      sub_1003A8634(a1, v16, 0);
      v51 = 1;
      *buf = &v51;
      if (*(sub_1000DB17C(a1 + 200, &v51) + 8) >= 1)
      {
        v32 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        *buf = 0;
        v33 = "Audio Timesync: Stop Spatial High, High is still running, do nothing";
LABEL_66:
        v37 = v32;
        v38 = 2;
LABEL_81:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v33, buf, v38);
        goto LABEL_82;
      }

      sub_1003A8350(a1, a2, 0, 1);
      v51 = 3;
      *buf = &v51;
      if (*(sub_1000DB17C(a1 + 200, &v51) + 8) < 1)
      {
        goto LABEL_82;
      }

      v39 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Audio Timesync: After Stop Spatial High, Sensor Low exists, resume it", buf, 2u);
      }

      v40 = a1;
      v41 = a2;
      v42 = 1;
      goto LABEL_91;
    }

    v11 = 3;
    if (!a3)
    {
LABEL_41:
      v51 = 2;
      *buf = &v51;
      if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
      {
        v51 = 3;
        *buf = &v51;
        if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
        {
          v47 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v48 = "Spatial Low";
            if (v15 < 2)
            {
              v48 = "Sensor Low";
            }

            *buf = 136315138;
            *&buf[4] = v48;
            v33 = "Audio Timesync: Stop %s, not running, do nothing";
            v37 = v47;
            v38 = 12;
            goto LABEL_81;
          }

LABEL_82:
          v43 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v51 = 1;
            *buf = &v51;
            v44 = *(sub_1000DB17C(a1 + 200, &v51) + 8);
            v50 = 2;
            *buf = &v50;
            v45 = *(sub_1000DB17C(a1 + 200, &v50) + 8);
            v49 = 3;
            *buf = &v49;
            v46 = *(sub_1000DB17C(a1 + 200, &v49) + 8);
            *buf = 67109632;
            *&buf[4] = v44;
            *&buf[8] = 1024;
            *&buf[10] = v45;
            *v53 = 1024;
            *&v53[2] = v46;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Audio Timesync: States: SpatialHigh: %d, SpatialLow: %d, SensorLow: %d", buf, 0x14u);
          }

          return;
        }
      }

      sub_1003A8634(a1, v11, 0);
      v51 = 1;
      *buf = &v51;
      if (*(sub_1000DB17C(a1 + 200, &v51) + 8) > 0 || (v51 = 2, *buf = &v51, *(sub_1000DB17C(a1 + 200, &v51) + 8) > 0) || (v51 = 3, *buf = &v51, *(sub_1000DB17C(a1 + 200, &v51) + 8) >= 1))
      {
        v29 = qword_100BCE8D0;
        if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_82;
        }

        if (v15 >= 2)
        {
          v30 = "Spatial Low";
        }

        else
        {
          v30 = "Sensor Low";
        }

        v51 = 1;
        *buf = &v51;
        if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
        {
          v51 = 2;
          *buf = &v51;
          if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
          {
            v31 = "Sensor Low";
          }

          else
          {
            v31 = "Spatial Low";
          }
        }

        else
        {
          v31 = "Spatial High";
        }

        *buf = 136315394;
        *&buf[4] = v30;
        *&buf[12] = 2080;
        *v53 = v31;
        v33 = "Audio Timesync: Stop %s, %s is running, do nothing";
        v37 = v29;
        v38 = 22;
        goto LABEL_81;
      }

      v40 = a1;
      v41 = a2;
      v42 = 0;
LABEL_91:
      sub_1003A8350(v40, v41, v42, 2);
      goto LABEL_82;
    }

LABEL_31:
    v51 = 1;
    *buf = &v51;
    if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0 && (v51 = 2, *buf = &v51, *(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0) && (v51 = 3, *buf = &v51, *(sub_1000DB17C(a1 + 200, &v51) + 8) < 1))
    {
      sub_1003A8350(a1, a2, 1, 2);
    }

    else
    {
      v26 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        if (v15 >= 2)
        {
          v27 = "Spatial Low";
        }

        else
        {
          v27 = "Sensor Low";
        }

        v51 = 1;
        *buf = &v51;
        if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
        {
          v51 = 2;
          *buf = &v51;
          if (*(sub_1000DB17C(a1 + 200, &v51) + 8) <= 0)
          {
            v28 = "Sensor Low";
          }

          else
          {
            v28 = "Spatial Low";
          }
        }

        else
        {
          v28 = "Spatial High";
        }

        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *v53 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Start %s, %s is running, do nothing", buf, 0x16u);
      }
    }

    v35 = a1;
    v36 = v11;
    goto LABEL_76;
  }

  if (!a4)
  {
    if (v11 == 1)
    {
      v16 = 1;
      if (a3)
      {
LABEL_22:
        v51 = 1;
        *buf = &v51;
        if (*(sub_1000DB17C(a1 + 200, &v51) + 8) < 1)
        {
          v51 = 3;
          *buf = &v51;
          if (*(sub_1000DB17C(a1 + 200, &v51) + 8) > 0 || (v51 = 2, *buf = &v51, *(sub_1000DB17C(a1 + 200, &v51) + 8) >= 1))
          {
            v34 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Start Spatial High, Low is running, stop it first", buf, 2u);
            }

            sub_1003A8350(a1, a2, 0, 2);
          }

          sub_1003A8350(a1, a2, 1, 1);
        }

        else
        {
          v17 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Start Spatial High, High is running, do nothing", buf, 2u);
          }
        }

        v35 = a1;
        v36 = v16;
LABEL_76:
        sub_1003A8634(v35, v36, 1);
        goto LABEL_82;
      }

      goto LABEL_53;
    }

    if (v11 == 2)
    {
      if (!a3)
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }
  }

  v18 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100823500(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1003A8168(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = TSNullClockIdentifier;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 77))
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    v8 = " No";
    if (a3 && !sub_1003A82D4(a1, a3))
    {
      v8 = " Yes";
    }

    v10 = 134218498;
    v11 = a3;
    v12 = 2080;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Request for TimesyncID, address = %llx Timesync Running=%s Registered ? %s", &v10, 0x20u);
  }

  if (*(a1 + 77) != 1)
  {
    return 0;
  }

  if (!a3 || (result = sub_1003A82D4(a1, a3), result))
  {
    result = *(a1 + 88);
    if (result)
    {
      if ([result lockState] == 2)
      {
        *a2 = *(a1 + 96);
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A82D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2 == (a1 + 112))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2[4] + 8) == a2;
      if (*(v2[4] + 8) == a2)
      {
        break;
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v3 |= v4;
      v2 = v6;
      if (v6 == (a1 + 112))
      {
        return v3 & 1;
      }
    }

    v3 = 1;
  }

  return v3 & 1;
}

void sub_1003A8350(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4 == 2)
      {
        v9 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Start Low", v18, 2u);
        }

        v10 = *(a1 + 176);
        *(a1 + 168) = 1000;
        if (v10)
        {
          *(v10 + 77) = 0;
        }

        operator new();
      }

      if (a4 == 1)
      {
        v6 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Start High", buf, 2u);
        }

        *(a1 + 168) = 250;
        if (qword_100B50940 != -1)
        {
          sub_10082342C();
        }

        sub_1006308F0(off_100B50938, a2, 1, 2, 2, 2);
      }

      v11 = a1;
      v12 = 1;
    }

    else
    {
      if (a4 == 2)
      {
        v13 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Stop Low", v16, 2u);
        }

        v14 = *(a1 + 176);
        if (v14)
        {
          if (*(a1 + 77) == 1)
          {
            *(v14 + 77) = 0;
            v15 = *(a1 + 184);
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            if (v15)
            {
              sub_100117644(v15);
            }
          }
        }
      }

      else if (a4 == 1)
      {
        v8 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Stop High", v17, 2u);
        }

        if (*(a1 + 77) == 1)
        {
          if (qword_100B50940 != -1)
          {
            sub_10082342C();
          }

          sub_1006308F0(off_100B50938, a2, 0, 2, 0, 0);
        }
      }

      *(a1 + 192) = 0;
      v11 = a1;
      v12 = 0;
    }

    sub_1003A879C(v11, v12);
  }

  else
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Cannot update Time Sync state, invalid device", v20, 2u);
    }
  }
}

uint64_t *sub_1003A8634(uint64_t a1, int a2, int a3)
{
  v9 = a2;
  v10 = &v9;
  v5 = sub_1000DB17C(a1 + 200, &v9);
  v6 = *(v5 + 8);
  if (a3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6 - 1;
  }

  *(v5 + 8) = v7;
  v10 = &v9;
  result = sub_1000DB17C(a1 + 200, &v9);
  if (*(result + 8) <= 0)
  {
    return sub_100375564(a1 + 200, &v9);
  }

  return result;
}

uint64_t sub_1003A8724(uint64_t a1)
{
  if (qword_100B50940 != -1)
  {
    sub_1008234A0();
  }

  v2 = *(off_100B50938 + 32);
  v3 = *(*a1 + 24);

  return v3(a1, v2);
}

void sub_1003A879C(uint64_t a1, int a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1003A886C(a1);
  }

  *(a1 + 77) = a2;
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Not Running";
    if (a2)
    {
      v5 = "Running";
    }

    v6 = 136446210;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Reference Timestamp status: %{public}s ", &v6, 0xCu);
  }
}

void sub_1003A886C(uint64_t a1)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Reset", buf, 2u);
  }

  sub_1003A8E24(a1, 0, 1);
  v3 = *(a1 + 96);
  v4 = TSNullClockIdentifier;
  if (v3 != TSNullClockIdentifier)
  {
    v5 = *(a1 + 80);
    v11 = 0;
    v6 = [v5 removeUserFilteredClockWithIdentifier:v3 error:&v11];
    v7 = v11;
    if ((v6 & 1) == 0)
    {
      v8 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Audio Time Synchronization Shared Clock Engine cleanup Failed", v10, 2u);
      }
    }
  }

  v9 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 96) = v4;
}

void sub_1003A898C(uint64_t a1, uint64_t a2)
{
  sub_1003A89D8(a1 + 128, a2);
  v3 = sub_1003A7060(a1);
  v4 = *(a1 + 164);

  sub_1003A62D4(a1, v3, v4);
}

void sub_1003A89D8(uint64_t a1, uint64_t a2)
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
    sub_1003A9C98((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1003A8A64(uint64_t a1, void *a2)
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

void sub_1003A8B30(uint64_t a1, void (***a2)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 52);
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 32) + 96);
    v8 = **a2;

    v8(a2, v4, v5, v6, v7);
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, a2))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Listener for BTTimeSyncManager's Time Sync Change Notification no longer available.", v10, 2u);
    }
  }
}

uint64_t sub_1003A8BE0(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v1 = 0;
    goto LABEL_3;
  }

  v5 = *(a1 + 96);
  if (v5 == TSNullClockIdentifier)
  {
    v6 = vsubq_s64(*(a1 + 40), *(a1 + 24));
    *(a1 + 56) = v6;
    v7 = *(a1 + 80);
    v18 = 0;
    v8 = [v7 addUserFilteredClockWithMachInterval:*&v6 domainInterval:4 usingFilterShift:0 isAdaptive:&v18 error:?];
    v1 = v18;
    *(a1 + 96) = v8;
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v20 = v8;
      v21 = 2112;
      v22 = v1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine initializing ID %llu error %@", buf, 0x16u);
      v8 = *(a1 + 96);
    }

    if (v8 == v5)
    {
      v10 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Timesync engine initialization failed", buf, 2u);
      }

      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    v8 = *(a1 + 96);
  }

  v11 = [*(a1 + 80) clockWithClockIdentifier:v8];
  v13 = *(a1 + 88);
  v12 = (a1 + 88);
  *v12 = v11;

  v14 = *v12;
  if (!*v12)
  {
LABEL_3:
    v2 = 0;
    goto LABEL_4;
  }

  v15 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 lockState];
    v17 = "Not Ready";
    if (v16 == 2)
    {
      v17 = "Ready";
    }

    *buf = 136315138;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Timesync engine Ready Lock State = %s", buf, 0xCu);
  }

  v2 = 1;
LABEL_4:

  return v2;
}

void sub_1003A8E24(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 160) != a2)
  {
    v4 = a2;
    *(a1 + 160) = a2;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Not Ready";
      if (v4)
      {
        v7 = "Ready";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Notify Timesync State update: %s", &v8, 0xCu);
      LOBYTE(v4) = *(a1 + 160);
    }

    sub_1003A62D4(a1, v4 & 1, a3);
  }
}

BOOL sub_1003A8F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    v8 = 0;
    [v3 addTimestampWithMachAbsolute:a3 andDomainTime:a2 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100823538(v5, v6);
      }
    }

    sub_1003A8E24(a1, [*(a1 + 88) lockState] == 2, 1);
  }

  return v3 != 0;
}

void sub_1003A8FD8(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  if (qword_100B50940 != -1)
  {
    sub_1008234A0();
  }

  v8 = sub_10062EB2C(off_100B50938, a2 - a3, 0);
  v9 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[3];
    v11 = a1[7];
    v14 = 134218752;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Missed GPIO toggles Missing  Host TS [%llu - %llu] expected approximate delta=%llu, actual delta=%f", &v14, 0x2Au);
  }

  if (v8 < 10.0 && v6 < a2)
  {
    do
    {
      v13 = a1[7];
      v6 += v13;
      if (v6 + v13 > a2)
      {
        break;
      }

      v7 += a1[8];
      sub_1003A8F14(a1, v7, v6);
    }

    while (v6 < a2);
  }
}

uint64_t sub_1003A9140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50940 != -1)
  {
    sub_1008234A0();
  }

  v6 = a2 - a3;
  v7 = 1;
  v8 = sub_10062EB2C(off_100B50938, v6, 1);
  if (!*(a1 + 172))
  {
    v9 = v8;
    if (v8 > (*(a1 + 168) * 1.5))
    {
      v10 = qword_100BCE8D0;
      v7 = 0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Timesync: GPIO Toggle more than expected delta=%f", &v12, 0xCu);
        return 0;
      }
    }
  }

  return v7;
}

void sub_1003A9260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - qword_100B6D350) >= 0x77359401)
  {
    qword_100B6D350 = a2;
  }

  if (sub_1003A7060(a1))
  {
    v6 = [*(a1 + 88) convertFromDomainToMachAbsoluteTime:a2];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (sub_1003A7060(a1))
  {
    v8 = [*(a1 + 88) convertFromDomainToMachAbsoluteTime:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 - *(a1 + 32)) / 1000.0;
  if (qword_100B50940 != -1)
  {
    sub_1008234A0();
  }

  v10 = sub_10062EB2C(off_100B50938, v6 - v8, 2);
  if (v10 <= v9)
  {
    v11 = v9 - v10;
  }

  else
  {
    v11 = v10 - v9;
  }

  if (qword_100B50940 != -1)
  {
    sub_1008234A0();
  }

  v12 = sub_10062EB2C(off_100B50938, a3 - *(a1 + 24), 1);
  if (v11 >= 3000.0 || qword_100B6D350 == a2)
  {
    v14 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134219520;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v23 = 2048;
      v24 = a2;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: FW_prev_Diff = %.1fus, FWDiff_after_TS = %.1fus, delta_after_TS = %.1fus, last_event = %.1fms, fwTimestamp = %llu, hostTimestamp = %llu, Trans_FW_Timestamp = %llu", &v15, 0x48u);
    }
  }
}

uint64_t sub_1003A9484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A7060(a1);
  if (v6)
  {
    *a3 = [*(a1 + 88) convertFromDomainToMachAbsoluteTime:a2];
  }

  return v6;
}

void sub_1003A94D4(uint64_t a1)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    sub_1003A8724(v2);
  }

  if (v3)
  {

    sub_100117644(v3);
  }
}

void sub_1003A9538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A9560(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  *a1 = &off_100AEFD78;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 76) = a4;
  *(a1 + 77) = 0;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a1;
    v10 = 1024;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Legacy Timesync Timed Event started (0x%p); Repeating Timer? %d", &v8, 0x12u);
  }

  *(a1 + 77) = 1;
  return a1;
}

void *sub_1003A9664(void *a1)
{
  *a1 = &off_100AEFD78;
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Legacy Timesync Timed Event ended (0x%p)", &v6, 0xCu);
  }

  *a1 = off_100AFD258;
  v3 = a1[6];
  if (v3)
  {
    sub_100117644(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1003A9760(void *a1)
{
  sub_1003A9664(a1);

  operator delete();
}

void sub_1003A9798(uint64_t a1)
{
  if (*(a1 + 77))
  {
    if (qword_100B50940 != -1)
    {
      sub_1008234A0();
    }

    v2 = off_100B50938;
    v3 = *(a1 + 64);

    sub_100625CA0(v2, v3);
  }

  else
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio Timesync: LegacyTimeSyncTimedEvent is no longer active", v5, 2u);
    }
  }
}

void sub_1003A9B88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1008235B0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A9BA0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_100117644(v5);
      }
    }
  }
}

void sub_1003A9C2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003A9C64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

char *sub_1003A9C98(void *a1, char *__src, char *a3)
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

void sub_1003A9E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A9E6C(uint64_t a1)
{
  *a1 = off_100AEFE48;
  *(a1 + 8) = off_100AF0090;
  *(a1 + 16) = off_100AF00C8;
  *(a1 + 24) = off_100AF00E8;
  *(a1 + 32) = off_100AF01A8;
  *(a1 + 40) = off_100AF0208;
  *(a1 + 48) = &off_100AF0248;
  *(a1 + 56) = off_100AF0260;
  *(a1 + 64) = off_100AF02A8;
  *(a1 + 72) = off_100AF02C8;
  *(a1 + 80) = &off_100AF02F0;
  *(a1 + 88) = off_100AF0308;
  *(a1 + 96) = off_100AF0338;
  *(a1 + 104) = off_100AF0360;
  *(a1 + 112) = off_100AF0380;
  *(a1 + 120) = &off_100AF03B0;
  *(a1 + 128) = &off_100AF03C8;
  *(a1 + 136) = off_100AF03E0;
  *(a1 + 144) = &off_100AF0420;
  *(a1 + 152) = off_100AF0438;
  *(a1 + 160) = off_100AF04E0;
  *(a1 + 168) = &off_100AF0508;
  *(a1 + 176) = 0;
  *(a1 + 178) = 0;
  *(a1 + 180) = 0;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 264) = 0;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 408) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 400) = a1 + 408;
  *(a1 + 424) = 256;
  *(a1 + 426) = 1;
  v21 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionGracePeriod");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v21;
  v5 = qword_100BCE988;
  if (v21 >= word_100B541D8)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for connection grace period", buf, 8u);
      LOWORD(v4) = v21;
    }

    word_100B541D8 = v4;
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_1008235D4();
  }

LABEL_13:
  v6 = +[NSMutableSet set];
  v7 = *(a1 + 296);
  *(a1 + 296) = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = *(a1 + 304);
  *(a1 + 304) = v8;

  v10 = +[NSMutableSet set];
  v11 = *(a1 + 328);
  *(a1 + 328) = v10;

  mach_timebase_info((a1 + 184));
  v12 = +[NSMutableSet set];
  v13 = *(a1 + 336);
  *(a1 + 336) = v12;

  v14 = +[NSMutableSet set];
  v15 = *(a1 + 344);
  *(a1 + 344) = v14;

  v16 = +[NSMutableSet set];
  v17 = *(a1 + 352);
  *(a1 + 352) = v16;

  return a1;
}

void sub_1003AA3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1003C46E0(v24 + 168, *(v21 + 408));
  sub_1000161FC(&a16);

  sub_10004B61C(v23, *(v21 + 280));
  sub_10005CFE4(v22, *(v21 + 256));
  sub_10000CEDC(v24 - 8, *(v21 + 232));
  v26 = *(v21 + 200);
  if (v26)
  {
    *(v21 + 208) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_1003AA4BC(uint64_t a1)
{
  sub_1003AAB2C(a1);
  if (qword_100B512C8 != -1)
  {
    sub_100823644();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1);
  if (qword_100B50900 != -1)
  {
    sub_100823658();
  }

  sub_1000F125C(qword_100B508F8 + 40, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_10082366C();
  }

  sub_100749B80(off_100B508A8, a1 + 24, 0);
  if (qword_100B51078 != -1)
  {
    sub_100823680();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100823680();
  }

  sub_1000DB5D8(off_100B51070 + 1928, a1 + 32);
  v2 = sub_10000EE80();
  sub_1006931D0(v2, a1 + 8);
  if (qword_100B541E8 != -1)
  {
    sub_100823694();
  }

  sub_1004E9758(qword_100B541E0, a1 + 56);
  v3 = sub_10000EE80();
  sub_100693218(v3, a1 + 16);
  v4 = sub_100017E6C();
  sub_10038A88C(v4 + 464, a1 + 80);
  if (qword_100B508C0 != -1)
  {
    sub_1008236A8();
  }

  sub_1007BF33C(off_100B508B8, a1 + 64);
  if (qword_100B508C0 != -1)
  {
    sub_1008236A8();
  }

  sub_1007BF384(off_100B508B8, a1 + 72);
  if (qword_100B508D0 != -1)
  {
    sub_1008236BC();
  }

  sub_1007986D0(off_100B508C8, a1 + 168);
  if (qword_100B50AA0 != -1)
  {
    sub_1008236D0();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 88);
  if (qword_100B50F78 != -1)
  {
    sub_1008236E4();
  }

  sub_100580E68(qword_100B50F70, a1 + 96);
  if (qword_100B50C68 != -1)
  {
    sub_1008236F8();
  }

  sub_10072A35C(off_100B50C60, a1 + 112);
  v5 = *sub_10000C798();
  if ((*(v5 + 416))())
  {
    if (qword_100B508A0 != -1)
    {
      sub_10082370C();
    }

    sub_1000F0FFC(off_100B50898 + 72, a1 + 128);
    if (qword_100B50F88 != -1)
    {
      sub_100823720();
    }

    sub_1006DC960(off_100B50F80, a1 + 136);
    if (qword_100B50AC0 != -1)
    {
      sub_100823734();
    }

    sub_1005907D4(off_100B50AB8, a1 + 144);
    if (qword_100B508E0 != -1)
    {
      sub_100823748();
    }

    sub_1005143D8(off_100B508D8, a1 + 152);
    if (qword_100B50F98 != -1)
    {
      sub_10082375C();
    }

    sub_1006989D0(off_100B50F90, a1 + 160);
  }

  v6 = sub_100017E6C();
  (*(*v6 + 120))(v6, a1 + 312);
  if (*(a1 + 312) == 1)
  {
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In buddy setup. Registering for buddy state change notifications.", buf, 2u);
    }

    v8 = sub_100017E6C();
    sub_1003C3B3C(v8 + 504, a1 + 120);
  }

  v21 = 0;
  v9 = sub_100017E6C();
  (*(*v9 + 112))(v9, &v21);
  if (v21 == 1)
  {
    (*(*a1 + 424))(a1, 1);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100823770();
  }

  *(a1 + 179) = sub_10006DBF8(off_100B50A98);
  v10 = sub_10000E92C();
  *(a1 + 372) = (*(*v10 + 800))(v10, a1 + 376);
  out_token = 0;
  v11 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "registering for TCC change notifications", buf, 2u);
  }

  v12 = sub_100007EE8();
  notify_register_dispatch("com.apple.tcc.access.changed", &out_token, *(v12 + 8), &stru_100AF0518);
  v13 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AppRestorationEnable");
  (*(*v13 + 72))(v13, buf, __p, a1 + 425);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v14 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 425))
    {
      v15 = @"Enabled";
    }

    else
    {
      v15 = @"Disabled";
    }

    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AppRestorationEnable is %@ ", buf, 0xCu);
  }

  v16 = +[NSMutableDictionary dictionary];
  v17 = *(a1 + 320);
  *(a1 + 320) = v16;
}

void sub_1003AAAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AAB2C(uint64_t a1)
{
  if (sub_10006301C())
  {
    v2 = TCCAccessCopyBundleIdentifiersForService();
    v3 = [NSSet setWithArray:v2];
    v4 = *(a1 + 336);
    *(a1 + 336) = v3;

    v5 = TCCAccessCopyBundleIdentifiersDisabledForService();
    v6 = [NSSet setWithArray:v5];
    v7 = *(a1 + 344);
    *(a1 + 344) = v6;

    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 336);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BundleId's allowed to use BT:%{public}@", &v11, 0xCu);
      v8 = qword_100BCE988;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 344);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BundleId's disallowed to use BT:%{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823798();
  }
}

void sub_1003AACE4(id a1, int a2)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000D5C5C();
  }

  v3 = off_100B512F0;

  sub_1003AAD28(v3);
}

void sub_1003AAD28(uint64_t a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TCC changed, lets figure out if one of our sessions needs to be removed", buf, 2u);
  }

  *buf = 0;
  v28 = 0;
  v29 = 0;
  v21 = [*(a1 + 336) copy];
  v3 = [*(a1 + 344) copy];
  sub_1003AAB2C(a1);
  sub_1003AB070(a1, v21, v3);
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 344);
    *v31 = 138543362;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bundle ID's not allowed to use bluetooth %{public}@", v31, 0xCu);
  }

  v7 = *(a1 + 224);
  if (v7 != (a1 + 232))
  {
    *&v5 = 138543362;
    v20 = v5;
    do
    {
      v8 = v7[5];
      v26 = v7[4];
      if (!v8[15] && v8[12])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = *(a1 + 344);
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              if ([v13 isEqualToString:{v8[11], v20}])
              {
                v14 = qword_100BCE9E0;
                if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
                {
                  *v31 = v20;
                  v32 = v13;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing restorable bundle %{public}@ because user disabled TCC access to bluetooth", v31, 0xCu);
                }

                sub_1000C2484(buf, &v26);
                [*(a1 + 296) removeObject:v8[11]];
                goto LABEL_21;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
      }

      v15 = v7[1];
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
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != (a1 + 232));
  }

  v18 = *buf;
  v19 = v28;
  while (v18 != v19)
  {
    sub_100022CE4(a1, *v18++, 1);
  }

  if (*buf)
  {
    v28 = *buf;
    operator delete(*buf);
  }
}

void sub_1003AB018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003AB070(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v31 = a3;
  v27 = [*(a1 + 336) mutableCopy];
  v26 = [*(a1 + 344) mutableCopy];
  if ([v30 count])
  {
    [v27 minusSet:v30];
  }

  if ([v31 count])
  {
    [v26 minusSet:v31];
  }

  v5 = [v27 mutableCopy];
  [v5 unionSet:v26];
  v6 = [v5 anyObject];

  if (v6)
  {
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BluetoothTCC changed", buf, 2u);
    }

    v8 = v5;
    if ([v27 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v27;
      v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v9)
      {
        v10 = *v38;
        v11 = 0xFFFF;
        do
        {
          v12 = 0;
          do
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v37 + 1) + 8 * v12);
            v14 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "App %{public}@ bluetooth authorization changed", buf, 0xCu);
            }

            v15 = [v31 containsObject:v13];
            if (v15)
            {
              v11 = 1;
            }

            v16 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = v13;
              *&buf[12] = 1024;
              *&buf[14] = v15;
              *&buf[18] = 1024;
              *&buf[20] = v11;
              *&buf[24] = 1024;
              *&buf[26] = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Push AWD stats for %{public}@: triggerLoc: %u, prevPermission: %u, currPermission: %u", buf, 0x1Eu);
            }

            v43 = 0u;
            v44 = 0u;
            memset(buf, 0, sizeof(buf));
            v17 = v13;
            v5 = v8;
            sub_100007E30(&__p, [v13 UTF8String]);
            sub_1003C3DDC(buf, &__p, 0, v15, v11, 0, 0, 0, 0xFFFF);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (qword_100B541F8 != -1)
            {
              sub_1008237D4();
            }

            sub_10000EFDC();
            if (buf[31] < 0)
            {
              operator delete(*&buf[8]);
            }

            v12 = v12 + 1;
          }

          while (v9 != v12);
          v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0xFFFF;
      }
    }

    else
    {
      v11 = 0xFFFF;
    }

    if ([v26 count])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obja = v26;
      v18 = [obja countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v18)
      {
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(obja);
            }

            v21 = *(*(&v32 + 1) + 8 * v20);
            v22 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "App %{public}@ bluetooth authorization changed", buf, 0xCu);
            }

            v23 = [v30 containsObject:v21];
            if (v23)
            {
              v11 = 0;
            }

            v24 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = v21;
              *&buf[12] = 1024;
              *&buf[14] = v23;
              *&buf[18] = 1024;
              *&buf[20] = v11;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Push AWD stats for %{public}@: triggerLoc: %u, prevPermission: %u, currPermission: %u", buf, 0x1Eu);
            }

            v43 = 0u;
            v44 = 0u;
            memset(buf, 0, sizeof(buf));
            v25 = v21;
            v5 = v8;
            sub_100007E30(&__p, [v21 UTF8String]);
            sub_1003C3DDC(buf, &__p, 0, v23, v11, 1, 0, 0, 0xFFFF);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (qword_100B541F8 != -1)
            {
              sub_1008237D4();
            }

            sub_10000EFDC();
            if (buf[31] < 0)
            {
              operator delete(*&buf[8]);
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [obja countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v18);
      }
    }
  }
}

void sub_1003AB71C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_1008238D8();
  }

  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    do
    {
      v5 = v4[5];
      sub_100018384(v4[4], __p);
      if (v15 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = [NSString stringWithUTF8String:v6];
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = [v7 isEqualToString:v3];
      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1)
      {
        v10 = *(v5 + 120);
        if (v10)
        {
          sub_100052EE4(v10 - 144, 9, &__NSDictionary0__struct);
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != (a1 + 232));
  }
}

void sub_1003AB89C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003AB968;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_1003AB968(uint64_t a1)
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = *(a1 + 40);
  obj = [*(a1 + 32) elements];
  v1 = 0;
  v2 = 0;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v3)
  {
    v4 = *v44;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v44 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v7 isEqualToString:@"com.apple.springboard.home-screen"];

        v9 = [v6 identifier];
        LOBYTE(v7) = [v9 isEqualToString:@"com.apple.lock-screen"];

        v2 |= v8;
        v1 |= v7;
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v3);
  }

  v10 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v2 & 1;
    *&buf[8] = 1024;
    *&buf[10] = v1 & 1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "springboardHomeScreenIsActive: %d\t deviceScreenIsLocked: %d", buf, 0xEu);
  }

  if (!(v1 & 1 | ((v2 & 1) == 0)))
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User is in SpringBoard and device is unlocked. Check TCC for backgrounded sessions", buf, 2u);
    }

    v12 = *(v35 + 360);
    if (v12)
    {
      v13 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deregistering FrontBoard services", buf, 2u);
        v12 = *(v35 + 360);
      }

      [v12 invalidate];
      v14 = *(v35 + 360);
      *(v35 + 360) = 0;
    }

    if ([*(v35 + 352) count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obja = *(v35 + 352);
      v15 = [obja countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v15)
      {
        v34 = *v40;
        v17 = (v35 + 232);
        *&v16 = 138543362;
        v33 = v16;
        do
        {
          v36 = v15;
          for (j = 0; j != v36; j = j + 1)
          {
            if (*v40 != v34)
            {
              objc_enumerationMutation(obja);
            }

            v19 = *(v35 + 224);
            if (v19 != v17)
            {
              v20 = *(*(&v39 + 1) + 8 * j);
              do
              {
                v22 = v19[4];
                v21 = v19[5];
                sub_100018384(v22, buf);
                if (v48 >= 0)
                {
                  v23 = buf;
                }

                else
                {
                  v23 = *buf;
                }

                v24 = [NSString stringWithUTF8String:v23, v33];
                if (v48 < 0)
                {
                  operator delete(*buf);
                }

                v25 = [v20 isEqualToString:v24];
                if (v25 && (*(v21 + 38) & 1) == 0 && *(v21 + 24) == 1)
                {
                  v26 = sub_10005EC28(v25, v21);
                  if (*(v21 + 120))
                  {
                    v31 = qword_100BCE988;
                    v32 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
                    if (v32)
                    {
                      *buf = v33;
                      *&buf[4] = v24;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Complete TCC for %{public}@", buf, 0xCu);
                    }

                    sub_10004E450(v32, v21, v22, 5, 1);
                    sub_10005F024(v21);

                    break;
                  }

                  v27 = qword_100BCE988;
                  if (*(v21 + 96))
                  {
                    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v33;
                      *&buf[4] = v24;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launch application %{public}@ for TCC", buf, 0xCu);
                    }

                    sub_1004F4E94(v21, v26 ^ 1u);
                  }

                  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v33;
                    *&buf[4] = v24;
                    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Wait for %{public}@ to check-in again", buf, 0xCu);
                  }
                }

                v28 = v19[1];
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
                    v29 = v19[2];
                    v30 = *v29 == v19;
                    v19 = v29;
                  }

                  while (!v30);
                }

                v19 = v29;
              }

              while (v29 != v17);
            }
          }

          v15 = [obja countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v15);
      }
    }
  }
}

uint64_t sub_1003ABF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = *(a2 + 88);
    }

    else
    {
      v7 = @"NONE";
    }

    *__p = 138412546;
    *&__p[4] = v7;
    *&__p[12] = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AppManager::setAppSessionPowerState bundle:%@ power:%d", __p, 0x12u);
  }

  v8 = *(a1 + 224);
  if (v8 == (a1 + 232))
  {
    return 3;
  }

  while (v8[5] != a2)
  {
    v9 = v8[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (!v11);
    }

    v8 = v10;
    if (v10 == (a1 + 232))
    {
      return 3;
    }
  }

  v12 = v8[4];
  if (!v12)
  {
    return 3;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 && !(*(*a2 + 16))(a2))
  {
    v13 = *(a2 + 480);
    if ((v13 & 1) == 0)
    {
      if (*(a2 + 472))
      {
        a3 = 0;
      }

      else
      {
        a3 = a3;
      }
    }

    v14 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109376;
      *&__p[4] = v13;
      *&__p[8] = 1024;
      *&__p[10] = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AppManager::setAppSessionPowerState sessionStarted:%d power:%d", __p, 0xEu);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  if (v15 == 3)
  {
    if (!a3)
    {
      v15 = (*(*a2 + 72))(a2, v12);
    }

    if (*(a2 + 192))
    {
      if (*(a2 + 39) == 1)
      {
        sub_10004E450(v15, a2, v12, 5, 1);
        (***(a2 + 192))();
        return 0;
      }

      v17 = qword_100BCE988;
      result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        sub_100018384(v12, __p);
        if (v22 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = *__p;
        }

        *buf = 136315138;
        v24 = v18;
        goto LABEL_49;
      }

      return result;
    }

    return 3;
  }

  if (!a3)
  {
    (*(*a2 + 72))(a2, v12);
    if (qword_100B512F8 != -1)
    {
      sub_100823948();
    }

    sub_1000C39CC(off_100B512F0);
  }

  if (!*(a2 + 120))
  {
    return 3;
  }

  if (*(a2 + 39) == 1)
  {
    sub_10004E450(v15, a2, v12, 5, 1);
    (*(**(a2 + 120) + 208))(*(a2 + 120), 0, a3);
    return 0;
  }

  v17 = qword_100BCE988;
  result = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_100018384(v12, __p);
    if (v22 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    *buf = 136315138;
    v24 = v19;
LABEL_49:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Session %s cannot get power state updates yet", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}