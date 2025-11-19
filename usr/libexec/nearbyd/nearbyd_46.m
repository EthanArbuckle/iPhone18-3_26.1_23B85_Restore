uint64_t sub_10039711C(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    *(result + 144) = 0;
  }

  return result;
}

uint64_t sub_100397130(uint64_t result)
{
  *(result + 96) = 0;
  if (*(result + 158) == 1)
  {
    *(result + 158) = 0;
  }

  if (*(result + 168) == 1)
  {
    *(result + 168) = 0;
  }

  if (*(result + 184) == 1)
  {
    *(result + 184) = 0;
  }

  if (*(result + 204) == 1)
  {
    *(result + 204) = 0;
  }

  return result;
}

void sub_100397178(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 == 12)
  {
    v7 = 1000;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 138)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 138)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 16);
  v11 = sub_1002C5608(a2, v6);
  (*(*v10 + 48))(v32, v10, v11);
  if (LODWORD(v32[0]) || (v33 & 1) == 0)
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      if (*a2 == 12)
      {
        v26 = "LESetPHY";
      }

      else
      {
        v26 = "ConnCmpltEventCount0";
      }

      sub_100004A08(buf, v26);
      v27 = SHIBYTE(v41);
      v28 = *buf;
      v30 = sub_1002C5608(a2, v29);
      v31 = buf;
      if (v27 < 0)
      {
        v31 = v28;
      }

      *__p = 136315394;
      *&__p[4] = v31;
      v35 = 2048;
      v36 = v30;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#alisha-param-neg,BT event %s. Failed to convert BT clock %llu [us]", __p, 0x16u);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*buf);
      }
    }

    v22 = 0;
    v24 = 0;
    v23 = -1;
  }

  else
  {
    v12 = v32[1];
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 12)
      {
        v14 = "LESetPHY";
      }

      else
      {
        v14 = "ConnCmpltEventCount0";
      }

      sub_100004A08(__p, v14);
      v15 = v37;
      v16 = *__p;
      v18 = sub_1002C5608(a2, v17);
      v19 = __p;
      *buf = 136315650;
      if (v15 < 0)
      {
        v19 = v16;
      }

      *&buf[4] = v19;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,BT event %s. Converted BT clock %llu [us] to UWB clock %llu [us]", buf, 0x20u);
      if (v37 < 0)
      {
        operator delete(*__p);
      }
    }

    if ((*(a1 + 144) & 1) == 0)
    {
      v20 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Setting this BT event as the shared event for sending timing info to vehicle", buf, 2u), (*(a1 + 144) & 1) == 0))
      {
        *(a1 + 144) = 1;
      }

      *(a1 + 136) = v12;
    }

    v21 = *(a1 + 136);
    v22 = v12 - v21;
    if (v12 < v21)
    {
      sub_1004C6A04();
    }

    v8 = 0;
    v23 = *(a2 + 5);
    v24 = 1;
    v9 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  *(a3 + 24) = 0;
  *(a3 + 25) = v24;
  *(a3 + 26) = 100;
  *(a3 + 28) = v9;
  *(a3 + 30) = v8;
  *(a3 + 32) = 1;
}

void sub_10039747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003974B4(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 144) & 1) == 0)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Setting ranging start time UWB clock (%llu [us]) as the shared event for sending timing info to vehicle", &v9, 0xCu);
      v5 = *a2;
      if (*(a1 + 144))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *a2;
    }

    *(a1 + 144) = 1;
LABEL_9:
    *(a1 + 136) = v5;
    return *a2 - v5;
  }

  v4 = *a2;
  v5 = *(a1 + 136);
  if (*a2 < v5)
  {
    sub_1004C6AD8();
  }

  return *a2 - v5;
}

uint64_t sub_1003975AC(uint64_t a1, unsigned __int16 **a2)
{
  if (*(a1 + 96))
  {
    LODWORD(v23[0]) = -2000;
    *(v23 + 4) = 0;
    return v23[0];
  }

  (*(**a1 + 16))(&__p);
  v4 = *a2;
  v5 = a2[1];
  v6 = __p;
  if (*a2 == v5)
  {
    goto LABEL_19;
  }

  while (__p == v22)
  {
LABEL_8:
    if (++v4 == v5)
    {
      goto LABEL_19;
    }
  }

  v7 = __p;
  while (*v4 != *v7)
  {
    if (++v7 == v22)
    {
      goto LABEL_8;
    }
  }

  if (v4 == v5)
  {
LABEL_19:
    v12 = -2002;
  }

  else
  {
    v8 = a2[3];
    v9 = a2[4];
    if (v8 == v9)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 40);
    while (*(a1 + 32) == v10)
    {
LABEL_17:
      if (++v8 == v9)
      {
        goto LABEL_29;
      }
    }

    v11 = *(a1 + 32);
    while (*v8 != *v11)
    {
      if (++v11 == v10)
      {
        goto LABEL_17;
      }
    }

    if (v8 == v9)
    {
LABEL_29:
      v12 = -2003;
    }

    else
    {
      v13 = a2[6];
      v14 = a2[7];
      if (v13 != v14)
      {
        v15 = *(a1 + 80);
        while (*(a1 + 72) == v15)
        {
LABEL_27:
          if (++v13 == v14)
          {
            goto LABEL_34;
          }
        }

        v16 = *(a1 + 72);
        while (*v13 != *v16)
        {
          if (++v16 == v15)
          {
            goto LABEL_27;
          }
        }

        if (v13 != v14)
        {
          v17 = *v4;
          v18 = *v8;
          v19 = *v13;
          if ((*(a1 + 158) & 1) == 0)
          {
            *(a1 + 158) = 1;
          }

          *(a1 + 152) = v17;
          *(a1 + 154) = v18;
          *(a1 + 156) = v19;
          LODWORD(v23[0]) = 0;
          *(v23 + 4) = *(a1 + 152);
          goto LABEL_36;
        }
      }

LABEL_34:
      v12 = -2004;
    }
  }

  LODWORD(v23[0]) = v12;
  *(v23 + 4) = 0;
LABEL_36:
  if (v6)
  {
    v22 = v6;
    operator delete(v6);
  }

  return v23[0];
}

void sub_10039778C(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 96))
  {
    v4 = -2000;
LABEL_10:
    *a3 = v4;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v7 = *(a1 + 158);
  v8 = qword_1009F9820;
  v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Negotiating session parameters WITH a previously cached capability response", &__p, 2u);
      if ((*(a1 + 158) & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    if (*a2 != *(a1 + 152) || a2[1] != *(a1 + 154) || *(a2 + 4) != *(a1 + 156))
    {
      v4 = -2005;
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  if (v9)
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Negotiating session parameters WITHOUT a previously cached capability response", &__p, 2u);
  }

  (*(**a1 + 16))(&__p);
  v10 = __p;
  v11 = v32;
  v12 = __p;
  if (__p != v32)
  {
    v12 = __p;
    while (*v12 != *a2)
    {
      if (++v12 == v32)
      {
        v12 = v32;
        break;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (v13 != v14)
  {
    while (*v13 != a2[1])
    {
      if (++v13 == v14)
      {
        v13 = *(a1 + 40);
        break;
      }
    }
  }

  v15 = *(a1 + 80);
  v16 = memchr(*(a1 + 72), *(a2 + 4), v15 - *(a1 + 72));
  v18 = v12 != v11 && v13 != v14;
  if (v16)
  {
    v19 = v16 == v15;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19 && v18;
  if (!v20)
  {
    *a3 = -2020;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
  }

  if (v10)
  {
    v32 = v10;
    operator delete(v10);
  }

  if (v20)
  {
LABEL_40:
    v21 = (*(a1 + 64) & *(a2 + 5));
    (*(**a1 + 24))(&__p);
    if (v21)
    {
      for (i = __p; ; i = (i + 1))
      {
        if (i == v32)
        {
          v24 = -2008;
          goto LABEL_47;
        }

        v23 = *i;
        if ((v21 >> *i))
        {
          break;
        }
      }

      if (a2[3])
      {
        v25 = 1;
      }

      else
      {
        v25 = a2[3] & 2;
      }

      if (*(a1 + 168) == 1)
      {
        v26 = *a2;
        *(a1 + 163) = *(a2 + 3);
        *(a1 + 160) = v26;
      }

      else
      {
        *(a1 + 160) = *a2;
        *(a1 + 168) = 1;
      }

      v27 = (*(**a1 + 40))();
      v28 = *(a1 + 56);
      v29 = *(a1 + 60);
      v30 = *(a1 + 65);
      if ((*(a1 + 184) & 1) == 0)
      {
        *(a1 + 184) = 1;
      }

      *(a1 + 172) = v27;
      *(a1 + 173) = v28;
      *(a1 + 176) = v29;
      *(a1 + 180) = v23;
      *(a1 + 181) = v30;
      *(a1 + 182) = v25;
      *(a1 + 96) = 1;
      *a3 = 0;
      *(a3 + 4) = *(a1 + 172);
    }

    else
    {
      v24 = -2016;
LABEL_47:
      *a3 = v24;
      *(a3 + 4) = 0;
      *(a3 + 16) = 0;
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

void sub_100397ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100397AE8@<X0>(unint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 96) != 1)
  {
    v7 = 0;
    v8 = -2000;
    goto LABEL_8;
  }

  v4 = result;
  if (*(result + 168) != 1 || (*(result + 184) & 1) == 0)
  {
    v7 = 0;
    v8 = -2001;
    goto LABEL_8;
  }

  v6 = *a2;
  if (v6 < *(result + 172))
  {
    v7 = 0;
    v8 = -2007;
LABEL_8:
    *a3 = v8;
LABEL_9:
    *(a3 + 8) = 0;
    goto LABEL_10;
  }

  v9 = a2[10];
  if (v9 == 1)
  {
    v10 = *(result + 182);
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[1];
  v8 = -2010;
  if (v11 > 0x18 || ((1 << v11) & 0x1001358) == 0)
  {
LABEL_24:
    v7 = 0;
    goto LABEL_8;
  }

  v12 = a2[3];
  v13 = a2[2];
  if ((v12 > 0x30 || ((1 << v12) & 0x1001101051350) == 0) && v12 != 96 && v12 != 72)
  {
    v8 = -2009;
    goto LABEL_24;
  }

  v14 = v13 + (v13 & ((v10 << 30) >> 31)) + 4;
  v15 = v13 + 5;
  if ((v10 & 1) == 0)
  {
    v15 = v14;
  }

  if (v12 < v15)
  {
    v8 = -2012;
    goto LABEL_24;
  }

  if (0x120 % (v12 * v11))
  {
    v8 = -2011;
    goto LABEL_24;
  }

  if (a2[1] <= 7u)
  {
    switch(v11)
    {
      case 3u:
        v16 = 1;
        break;
      case 4u:
        v16 = 2;
        break;
      case 6u:
        v16 = 4;
        break;
      default:
        goto LABEL_41;
    }
  }

  else if (a2[1] > 0xBu)
  {
    if (v11 == 12)
    {
      v16 = 32;
    }

    else
    {
      if (v11 != 24)
      {
        goto LABEL_41;
      }

      v16 = 64;
    }
  }

  else
  {
    if (v11 != 8)
    {
      if (v11 == 9)
      {
        v16 = 16;
        goto LABEL_45;
      }

LABEL_41:
      v7 = 0;
      v8 = -2009;
      goto LABEL_8;
    }

    v16 = 8;
  }

LABEL_45:
  if ((*(result + 173) & v16) == 0)
  {
    v7 = 0;
    v8 = -2017;
    goto LABEL_8;
  }

  v17 = a2[8];
  v18 = v17 & 0xE0;
  if (v18 == 32 || v18 == 64)
  {
    if ((((v17 & 0x1F) - 8) & 0xFFFFFFF7) == 0)
    {
      goto LABEL_50;
    }

LABEL_56:
    v8 = -2015;
    goto LABEL_24;
  }

  if (v18 != 128)
  {
    v8 = -2014;
    goto LABEL_24;
  }

  if ((v17 & 0x1F) != 0)
  {
    goto LABEL_56;
  }

LABEL_50:
  if ((v17 & ~*(result + 181)) != 0)
  {
    v7 = 0;
    v8 = -2019;
    goto LABEL_8;
  }

  if (v9)
  {
    result = sub_100397EE8(a2[9], v10, v6, v11, v12);
    if (result)
    {
      v7 = 0;
      *a3 = result;
      goto LABEL_9;
    }

    v20 = HIDWORD(result) & 0xFF000000;
    v21 = HIDWORD(result) & 0xFFFF00;
    v19 = BYTE4(result);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  result = (*(**v4 + 32))(*v4, (*(a2 + 1) & v4[22]));
  if ((result & 0x1000000000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1004;
  }

  if (result)
  {
    v8 = result;
  }

  else
  {
    v8 = v23;
  }

  if (v8)
  {
    goto LABEL_24;
  }

  if ((result & 0x1000000000000) == 0 || (v4[23] & 1) == 0 || (v4[21] & 1) == 0)
  {
    sub_1000195BC();
  }

  v24 = a2[8];
  v22.i32[0] = *a2;
  *(v4 + 188) = *(v4 + 180);
  v25 = *(v4 + 40);
  v26 = *(v4 + 164);
  v27 = *(v4 + 204);
  v28 = vmovl_u8(v22).u64[0];
  *(v4 + 189) = BYTE5(result);
  v29 = vrev32_s16(v28);
  v29.i32[0] = v28.i32[0];
  *(v4 + 190) = v25;
  *(v4 + 194) = vuzp1_s8(v29, v28).u32[0];
  *(v4 + 198) = v24;
  *(v4 + 199) = v26;
  *(v4 + 50) = v20 | v19 | v21;
  if ((v27 & 1) == 0)
  {
    *(v4 + 204) = 1;
  }

  v30 = HIDWORD(result);
  *(v4 + 168) = 0;
  *(v4 + 184) = 0;
  result = (*(**v4 + 48))(*v4, v4 + 188);
  *(v4 + 24) = 2;
  *&v31[7] = *(v4 + 188);
  *a3 = 0;
  *(a3 + 8) = v30;
  *(a3 + 9) = *v31;
  *(a3 + 24) = *&v31[15];
  *(a3 + 32) = result;
  v7 = 1;
LABEL_10:
  *(a3 + 40) = v7;
  return result;
}

uint64_t sub_100397EE8(unsigned int a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = a1 >> 6;
  if (!(a1 >> 6))
  {
    return (a2 << 48) | 0x100000000000000;
  }

  v6 = a1;
  result = 4294965273;
  if (v5 != 1)
  {
    return 4294965274;
  }

  if (!a4)
  {
    return 4294965286;
  }

  if (!a5)
  {
    return 4294965287;
  }

  v8 = 288 * a3 / a4;
  if (v8 < a5)
  {
    return 4294965275;
  }

  v9 = v6 & 0x3F;
  if (v9 && v9 <= 0x10 && v8 / a5 - 1 >= v9)
  {
    return (v9 << 40) | (a2 << 48) | 0x100000100000000;
  }

  return result;
}

double sub_100397F80@<D0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) != 2)
  {
    v9 = -2000;
LABEL_12:
    *a3 = v9;
    *(a3 + 8) = 0;
    *(a3 + 40) = 0;
    return result;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    v9 = -2001;
    goto LABEL_12;
  }

  v14 = *(a1 + 188);
  if (a2[1] == 1)
  {
    if (!*a2)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Recovery RAN multiplier of 0 was specified. Using a multiplier of 1 instead.", v13, 2u);
        if ((a2[1] & 1) == 0)
        {
          sub_1000195BC();
        }
      }
    }

    v7 = *a2;
    if (v7 <= 1)
    {
      LOWORD(v7) = 1;
    }

    BYTE6(v14) = v7;
    v8 = 1;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = 0;
  }

  v10 = v7 | (v8 << 8);
  v11 = (*(**a1 + 48))(*a1, &v14);
  *&v15[6] = v14;
  *a3 = 0;
  *(a3 + 8) = v10;
  result = *v15;
  *(a3 + 10) = *v15;
  *(a3 + 24) = *&v15[14];
  *(a3 + 32) = v11;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_1003980F8(uint64_t a1, uint64_t a2)
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

_BYTE *sub_100398190@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 == 2)
  {
    v2 = "RequireCapabilityExchange";
  }

  else if (a1 == 255)
  {
    v2 = "WrongParameters";
  }

  else
  {
    v2 = "UnsupportedChannelBitmask";
  }

  return sub_100004A08(a2, v2);
}

void sub_1003981E4(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  sub_100004A08(&v20, off_1009A8A78[*a1 - 1]);
  memset(&v19, 0, sizeof(v19));
  v4 = *a1;
  switch(v4)
  {
    case 3:
      if ((a1[6] & 1) == 0)
      {
        v14 = "deviceRangingIntentSubEventCode.has_value()";
        v15 = 323;
        goto LABEL_36;
      }

      sub_100004A08(&v18, off_1009A8A90[a1[5]]);
      break;
    case 2:
      if (a1[4] != 1)
      {
        v14 = "rangingSessionStatusChangedSubEventCode.has_value()";
        v15 = 319;
        goto LABEL_36;
      }

      sub_1003981CC(a1[3], &v18);
      break;
    case 1:
      if (a1[2])
      {
        v5 = a1[1];
        if (v5 == 2)
        {
          v6 = "RequireCapabilityExchange";
        }

        else if (v5 == 255)
        {
          v6 = "WrongParameters";
        }

        else
        {
          v6 = "UnsupportedChannelBitmask";
        }

        sub_100004A08(&v18, v6);
        break;
      }

      v14 = "commandCompleteSubEventCode.has_value()";
      v15 = 315;
LABEL_36:
      __assert_rtn("toString", "AlishaDCKCoder.cpp", v15, v14);
    default:
      goto LABEL_16;
  }

  v19 = v18;
LABEL_16:
  std::operator+<char>();
  v7 = std::string::append(&v16, ", ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v19;
  }

  else
  {
    v9 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v17, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v18, ")");
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }
}

void sub_100398418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1003984A8(uint64_t a1, uint64_t *a2)
{
  v2 = 4294963292;
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 >= 4)
  {
    if (v4 >> 16)
    {
      v5 = 0;
      v6 = 0;
      v2 = 4294963295;
    }

    else if (v4 == __rev16(*(v3 + 2)) + 4)
    {
      v5 = *v3 & 0x3F;
      if (v5 > 5)
      {
        v5 = 0;
        v6 = 0;
        v2 = 4294963293;
      }

      else
      {
        v7 = *(v3 + 1);
        if ((v7 - 1) > 0x14)
        {
          v5 = 0;
          v6 = 0;
        }

        else
        {
          v6 = v7 << 8;
          v2 = 0x1000000000000;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v2 = 4294963294;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v2 = 4294963296;
  }

  return v2 | ((v6 | v5) << 32);
}

void sub_100398558(unsigned __int16 *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v25, 4);
  if ((v26 - v25 - 65534) < 0xFFFFFFFFFFFF0000 || (v4 = *a1, LOBYTE(__p) = HIBYTE(*a1), sub_1001FE4D0(&v25, &__p), LOBYTE(__p) = v4, sub_1001FE4D0(&v25, &__p), (v26 - v25 - 65534) < 0xFFFFFFFFFFFF0000))
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 232;
LABEL_27:
    v20 = "append";
    goto LABEL_29;
  }

  v5 = a1[1];
  LOBYTE(__p) = HIBYTE(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = v5;
  sub_1001FE4D0(&v25, &__p);
  v6 = v25;
  v7 = v26;
  v8 = (v26 - v25);
  if ((v26 - v25 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 225;
    goto LABEL_27;
  }

  v9 = *(a1 + 4);
  if (v26 >= v27)
  {
    v11 = v27 - v25;
    if (2 * (v27 - v25) <= (v8 + 1))
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v26 - v25;
    *v8 = v9;
    v10 = v8 + 1;
    memcpy(0, v6, v14);
    v25 = 0;
    v26 = v8 + 1;
    v27 = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v26 = v9;
    v10 = v7 + 1;
  }

  v26 = v10;
  v15 = v25;
  v16 = v10 - v25;
  if ((v10 - v25) >= 0x10000)
  {
    v18 = "msg.size() <= kMaxMessageSize";
    v19 = 166;
    v20 = "populateHeader";
LABEL_29:
    __assert_rtn(v20, "AlishaDCKCoder.cpp", v19, v18);
  }

  if (v16 <= 3)
  {
    sub_100009838(&v25, 4 - v16);
    v15 = v25;
    LOWORD(v16) = v26 - v25;
  }

  v17 = v16 - 4;
  *v15 = 2;
  *(v25 + 1) = 2;
  *(v25 + 2) = HIBYTE(v17);
  *(v25 + 3) = v17;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_100009A48(&__p, v25, v26, v26 - v25);
  v24 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v24 == 1 && __p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_1003987EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100398830(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v49, 4);
  v4 = v49;
  v5 = v50;
  v6 = (v50 - v49);
  if ((v50 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v7 = *a1;
  if (v50 >= v51)
  {
    v9 = v51 - v49;
    if (2 * (v51 - v49) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v50 - v49;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v49 = 0;
    v50 = v6 + 1;
    v51 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v50 = v7;
    v8 = v5 + 1;
  }

  v50 = v8;
  v13 = v49;
  v14 = (v8 - v49);
  if ((v8 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v15 = a1[1];
  if (v8 >= v51)
  {
    v17 = v51 - v49;
    if (2 * (v51 - v49) <= (v14 + 1))
    {
      v18 = (v14 + 1);
    }

    else
    {
      v18 = 2 * v17;
    }

    if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      operator new();
    }

    v20 = v8 - v49;
    *v14 = v15;
    v16 = v14 + 1;
    memcpy(0, v13, v20);
    v49 = 0;
    v50 = v14 + 1;
    v51 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v8 = v15;
    v16 = v8 + 1;
  }

  v50 = v16;
  if ((v16 - v49 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v42 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v43 = 240;
    goto LABEL_65;
  }

  v21 = *(a1 + 1);
  LOBYTE(__p) = HIBYTE(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = BYTE2(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = BYTE1(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = v21;
  sub_1001FE4D0(&v49, &__p);
  v22 = v49;
  v23 = v50;
  v24 = (v50 - v49);
  if ((v50 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v25 = a1[8];
  if (v50 >= v51)
  {
    v27 = v51 - v49;
    if (2 * (v51 - v49) <= (v24 + 1))
    {
      v28 = (v24 + 1);
    }

    else
    {
      v28 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      operator new();
    }

    v30 = v50 - v49;
    *v24 = v25;
    v26 = v24 + 1;
    memcpy(0, v22, v30);
    v49 = 0;
    v50 = v24 + 1;
    v51 = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v50 = v25;
    v26 = v23 + 1;
  }

  v50 = v26;
  v31 = v49;
  v32 = (v26 - v49);
  if ((v26 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
LABEL_63:
    v42 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v43 = 225;
LABEL_65:
    v44 = "append";
    goto LABEL_66;
  }

  v33 = a1[9];
  if (v26 >= v51)
  {
    v35 = v51 - v49;
    if (2 * (v51 - v49) <= (v32 + 1))
    {
      v36 = (v32 + 1);
    }

    else
    {
      v36 = 2 * v35;
    }

    if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36;
    }

    if (v37)
    {
      operator new();
    }

    v38 = v26 - v49;
    *v32 = v33;
    v34 = v32 + 1;
    memcpy(0, v31, v38);
    v49 = 0;
    v50 = v32 + 1;
    v51 = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v26 = v33;
    v34 = v26 + 1;
  }

  v50 = v34;
  v39 = v49;
  v40 = v34 - v49;
  if ((v34 - v49) >= 0x10000)
  {
    v42 = "msg.size() <= kMaxMessageSize";
    v43 = 166;
    v44 = "populateHeader";
LABEL_66:
    __assert_rtn(v44, "AlishaDCKCoder.cpp", v43, v42);
  }

  if (v40 <= 3)
  {
    sub_100009838(&v49, 4 - v40);
    v39 = v49;
    LOWORD(v40) = v50 - v49;
  }

  v41 = v40 - 4;
  *v39 = 2;
  *(v49 + 1) = 4;
  *(v49 + 2) = HIBYTE(v41);
  *(v49 + 3) = v41;
  __p = 0;
  v46 = 0;
  v47 = 0;
  sub_100009A48(&__p, v49, v50, v50 - v49);
  v48 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v48 == 1 && __p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_100398CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100398D3C(int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v25, 4);
  if ((v26 - v25 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_25;
  }

  v4 = *a1;
  LOBYTE(__p) = HIBYTE(*a1);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE2(v4);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE1(v4);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = v4;
  sub_1001FE4D0(&v25, &__p);
  sub_100399074(*(a1 + 1), &v25);
  if ((v26 - v25 - 65532) < 0xFFFFFFFFFFFF0000)
  {
LABEL_25:
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 240;
LABEL_27:
    v20 = "append";
    goto LABEL_29;
  }

  v5 = a1[4];
  LOBYTE(__p) = HIBYTE(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE2(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE1(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = v5;
  sub_1001FE4D0(&v25, &__p);
  v6 = v25;
  v7 = v26;
  v8 = (v26 - v25);
  if ((v26 - v25 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 225;
    goto LABEL_27;
  }

  v9 = *(a1 + 20);
  if (v26 >= v27)
  {
    v11 = v27 - v25;
    if (2 * (v27 - v25) <= (v8 + 1))
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v26 - v25;
    *v8 = v9;
    v10 = v8 + 1;
    memcpy(0, v6, v14);
    v25 = 0;
    v26 = v8 + 1;
    v27 = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v26 = v9;
    v10 = v7 + 1;
  }

  v26 = v10;
  v15 = v25;
  v16 = v10 - v25;
  if ((v10 - v25) >= 0x10000)
  {
    v18 = "msg.size() <= kMaxMessageSize";
    v19 = 166;
    v20 = "populateHeader";
LABEL_29:
    __assert_rtn(v20, "AlishaDCKCoder.cpp", v19, v18);
  }

  if (v16 <= 3)
  {
    sub_100009838(&v25, 4 - v16);
    v15 = v25;
    LOWORD(v16) = v26 - v25;
  }

  v17 = v16 - 4;
  *v15 = 2;
  *(v25 + 1) = 6;
  *(v25 + 2) = HIBYTE(v17);
  *(v25 + 3) = v17;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_100009A48(&__p, v25, v26, v26 - v25);
  v24 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v24 == 1 && __p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_100399030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399074(uint64_t a1, void *a2)
{
  if ((a2[1] - *a2 - 65528) <= 0xFFFFFFFFFFFEFFFFLL)
  {
    sub_1004C6BAC();
  }

  v11 = HIBYTE(a1);
  sub_1001FE4D0(a2, &v11);
  v10 = BYTE6(a1);
  sub_1001FE4D0(a2, &v10);
  v9 = BYTE5(a1);
  sub_1001FE4D0(a2, &v9);
  v8 = BYTE4(a1);
  sub_1001FE4D0(a2, &v8);
  v7 = BYTE3(a1);
  sub_1001FE4D0(a2, &v7);
  v6 = BYTE2(a1);
  sub_1001FE4D0(a2, &v6);
  v5 = BYTE1(a1);
  sub_1001FE4D0(a2, &v5);
  v4 = a1;
  sub_1001FE4D0(a2, &v4);
}

void sub_10039915C(int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v15, 4);
  if ((v16 - v15 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v8 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v9 = 240;
    v10 = "append";
    goto LABEL_13;
  }

  v4 = *a1;
  LOBYTE(__p) = HIBYTE(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE2(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE1(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = v4;
  sub_1001FE4D0(&v15, &__p);
  v5 = v15;
  v6 = v16 - v15;
  if ((v16 - v15) >= 0x10000)
  {
    v8 = "msg.size() <= kMaxMessageSize";
    v9 = 166;
    v10 = "populateHeader";
LABEL_13:
    __assert_rtn(v10, "AlishaDCKCoder.cpp", v9, v8);
  }

  if (v6 <= 3)
  {
    sub_100009838(&v15, 4 - v6);
    v5 = v15;
    LOWORD(v6) = v16 - v15;
  }

  v7 = v6 - 4;
  *v5 = 2;
  *(v15 + 1) = 7;
  *(v15 + 2) = HIBYTE(v7);
  *(v15 + 3) = v7;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100009A48(&__p, v15, v16, v16 - v15);
  v14 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v14 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1003992FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399340(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v23, 4);
  v4 = v23;
  v5 = v24;
  v6 = (v24 - v23);
  if ((v24 - v23 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v16 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v17 = 225;
    v18 = "append";
    goto LABEL_25;
  }

  v7 = *a1;
  if (v24 >= v25)
  {
    v9 = v25 - v23;
    if (2 * (v25 - v23) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v24 - v23;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v23 = 0;
    v24 = v6 + 1;
    v25 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v24 = v7;
    v8 = v5 + 1;
  }

  v24 = v8;
  v13 = v23;
  v14 = v8 - v23;
  if ((v8 - v23) >= 0x10000)
  {
    v16 = "msg.size() <= kMaxMessageSize";
    v17 = 166;
    v18 = "populateHeader";
LABEL_25:
    __assert_rtn(v18, "AlishaDCKCoder.cpp", v17, v16);
  }

  if (v14 <= 3)
  {
    sub_100009838(&v23, 4 - v14);
    v13 = v23;
    LOWORD(v14) = v24 - v23;
  }

  v15 = v14 - 4;
  *v13 = 2;
  *(v23 + 1) = 8;
  *(v23 + 2) = HIBYTE(v15);
  *(v23 + 3) = v15;
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100009A48(&__p, v23, v24, v24 - v23);
  v22 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v22 == 1 && __p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_100399548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039958C(int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v15, 4);
  if ((v16 - v15 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v8 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v9 = 240;
    v10 = "append";
    goto LABEL_13;
  }

  v4 = *a1;
  LOBYTE(__p) = HIBYTE(*a1);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE2(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE1(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = v4;
  sub_1001FE4D0(&v15, &__p);
  sub_100399074(*(a1 + 1), &v15);
  v5 = v15;
  v6 = v16 - v15;
  if ((v16 - v15) >= 0x10000)
  {
    v8 = "msg.size() <= kMaxMessageSize";
    v9 = 166;
    v10 = "populateHeader";
LABEL_13:
    __assert_rtn(v10, "AlishaDCKCoder.cpp", v9, v8);
  }

  if (v6 <= 3)
  {
    sub_100009838(&v15, 4 - v6);
    v5 = v15;
    LOWORD(v6) = v16 - v15;
  }

  v7 = v6 - 4;
  *v5 = 2;
  *(v15 + 1) = 10;
  *(v15 + 2) = HIBYTE(v7);
  *(v15 + 3) = v7;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100009A48(&__p, v15, v16, v16 - v15);
  v14 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v14 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100399740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399784(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v24, 4);
  v4 = v24;
  v5 = v25;
  v6 = (v25 - v24);
  if ((v25 - v24 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v17 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v18 = 225;
LABEL_26:
    v19 = "append";
    goto LABEL_28;
  }

  v7 = *a1;
  if (v25 >= v26)
  {
    v9 = v26 - v24;
    if (2 * (v26 - v24) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v25 - v24;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v24 = 0;
    v25 = v6 + 1;
    v26 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v25 = v7;
    v8 = v5 + 1;
  }

  v25 = v8;
  if ((v8 - v24 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v17 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v18 = 240;
    goto LABEL_26;
  }

  v13 = *(a1 + 1);
  LOBYTE(__p) = HIBYTE(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = BYTE2(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = BYTE1(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = v13;
  sub_1001FE4D0(&v24, &__p);
  sub_100399074(*(a1 + 1), &v24);
  v14 = v24;
  v15 = v25 - v24;
  if ((v25 - v24) >= 0x10000)
  {
    v17 = "msg.size() <= kMaxMessageSize";
    v18 = 166;
    v19 = "populateHeader";
LABEL_28:
    __assert_rtn(v19, "AlishaDCKCoder.cpp", v18, v17);
  }

  if (v15 <= 3)
  {
    sub_100009838(&v24, 4 - v15);
    v14 = v24;
    LOWORD(v15) = v25 - v24;
  }

  v16 = v15 - 4;
  *v14 = 2;
  *(v24 + 1) = 19;
  *(v24 + 2) = HIBYTE(v16);
  *(v24 + 3) = v16;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100009A48(&__p, v24, v25, v25 - v24);
  v23 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v23 == 1 && __p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_100399A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399A5C(uint64_t *a1@<X1>, int *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4 < 4)
  {
    v5 = -4000;
LABEL_9:
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = v5;
    sub_10039B1AC((a2 + 2), &v50);
    if (v56 == 1)
    {
      if (v54)
      {
        *(&v54 + 1) = v54;
        operator delete(v54);
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      v6 = v50;
      if (v50)
      {
        *(&v50 + 1) = v50;
LABEL_71:
        operator delete(v6);
        return;
      }
    }

    return;
  }

  if (v4 >> 16)
  {
    v5 = -4001;
    goto LABEL_9;
  }

  if (v4 != __rev16(*(v3 + 2)) + 4)
  {
    v5 = -4002;
    goto LABEL_9;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  v41 = 0;
  v42 = 0;
  if (v4 == 4)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4007;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  v7 = *(v3 + 4);
  if (v7 + 4 >= v4)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4011;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  if (!v7)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4008;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  if (v7)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4009;
    sub_10039B1AC((a2 + 2), &v50);
LABEL_28:
    if (v56 == 1)
    {
      if (v54)
      {
        *(&v54 + 1) = v54;
        operator delete(v54);
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      if (v50)
      {
        *(&v50 + 1) = v50;
        operator delete(v50);
      }
    }

    goto LABEL_65;
  }

  v39 = v7;
  sub_10039A138(&v46, v7 >> 1);
  v9 = v46;
  v10 = v47;
  if (v46 != v47)
  {
    v11 = *a1;
    v12 = a1[1] - *a1;
    v13 = 5;
    v14 = "msg.size() <= kMaxMessageSize";
    while (!(v12 >> 16))
    {
      if (v13 + 2 > v12)
      {
        v30 = 191;
        v14 = "offset + sizeof(val) <= msg.size()";
LABEL_61:
        __assert_rtn("readAndAdvance", "AlishaDCKCoder.cpp", v30, v14);
      }

      v15 = v13 + 1;
      v16 = *(v11 + v13);
      *v9 = v16 << 8;
      v13 += 2;
      *v9++ = *(v11 + v15) | (v16 << 8);
      if (v9 == v10)
      {
        goto LABEL_36;
      }
    }

    v30 = 190;
    goto LABEL_61;
  }

  v13 = 5;
LABEL_36:
  v49 = v13;
  if (v4 <= v13)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4012;
    sub_10039B1AC((a2 + 2), &v50);
  }

  else
  {
    v17 = *(*a1 + v13);
    if (v17 + v13 >= v4)
    {
      LOBYTE(v50) = 0;
      v56 = 0;
      *a2 = -4016;
      sub_10039B1AC((a2 + 2), &v50);
    }

    else if (*(*a1 + v13))
    {
      if (v17)
      {
        LOBYTE(v50) = 0;
        v56 = 0;
        *a2 = -4014;
        sub_10039B1AC((a2 + 2), &v50);
      }

      else
      {
        sub_10039A0F0(&v39, a1, &v49);
        sub_10039A138(&v43, v39 >> 1);
        v18 = v43;
        v19 = v44;
        v20 = v49;
        if (v43 != v44)
        {
          v21 = *a1;
          v22 = a1[1] - *a1;
          v23 = "msg.size() <= kMaxMessageSize";
          while (!(v22 >> 16))
          {
            if (v20 + 2 > v22)
            {
              v31 = 191;
              v23 = "offset + sizeof(val) <= msg.size()";
LABEL_75:
              __assert_rtn("readAndAdvance", "AlishaDCKCoder.cpp", v31, v23);
            }

            v24 = v20 + 1;
            v25 = *(v21 + v20);
            *v18 = v25 << 8;
            v20 += 2;
            *v18++ = *(v21 + v24) | (v25 << 8);
            if (v18 == v19)
            {
              goto LABEL_45;
            }
          }

          v31 = 190;
          goto LABEL_75;
        }

LABEL_45:
        v49 = v20;
        if (v4 <= v20)
        {
          LOBYTE(v50) = 0;
          v56 = 0;
          *a2 = -4017;
          sub_10039B1AC((a2 + 2), &v50);
        }

        else
        {
          v26 = v20;
          v27 = *(*a1 + v20);
          if (v27 + v26 >= v4)
          {
            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4020;
            sub_10039B1AC((a2 + 2), &v50);
          }

          else if (v27)
          {
            sub_10039A0F0(&v39, a1, &v49);
            sub_1002501F0(&__p, v39);
            v32 = v4;
            v28 = __p;
            v29 = v41;
            while (v28 != v29)
            {
              sub_10039A0F0(v28++, a1, &v49);
            }

            if (v32 == v49)
            {
              sub_10039AF98(&v33, &v46, &v43, &__p);
              v50 = v33;
              v51 = v34;
              v33 = 0uLL;
              v52 = v35;
              v53 = v36;
              v34 = 0;
              v35 = 0uLL;
              v36 = 0;
              v54 = v37;
              v55 = v38;
              v38 = 0;
              v37 = 0uLL;
              v56 = 1;
              *a2 = 0;
              sub_10039B1AC((a2 + 2), &v50);
              sub_10039A090(&v50);
              sub_10039A168(&v33);
              goto LABEL_65;
            }

            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4006;
            sub_10039B1AC((a2 + 2), &v50);
          }

          else
          {
            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4018;
            sub_10039B1AC((a2 + 2), &v50);
          }
        }
      }
    }

    else
    {
      LOBYTE(v50) = 0;
      v56 = 0;
      *a2 = -4013;
      sub_10039B1AC((a2 + 2), &v50);
    }
  }

  sub_10039A090(&v50);
LABEL_65:
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v6 = v46;
  if (v46)
  {
    v47 = v46;
    goto LABEL_71;
  }
}

void sub_100399FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sub_10039A090(v28 - 128);
  sub_10039A168(&a11);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10039A090(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

_BYTE *sub_10039A0F0(_BYTE *result, uint64_t *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 >= 0x10000)
  {
    sub_1004C6C04();
  }

  v5 = *a3;
  if (v4 <= v5)
  {
    sub_1004C6BD8();
  }

  *a3 = v5 + 1;
  *result = *(v3 + v5);
  return result;
}

void sub_10039A138(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_10039B2A0(a1, a2 - v2);
  }
}

uint64_t sub_10039A168(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_10039A1BC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_16:
    v12 = 0;
    *a2 = v4;
    *(a2 + 4) = 0;
    goto LABEL_17;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_16;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_16;
  }

  if ((v5 | (v6 << 8)) != 0xA)
  {
    v4 = -4006;
    goto LABEL_16;
  }

  if (v3 <= 5)
  {
    sub_1004C6C88();
  }

  if (v3 <= 7)
  {
    sub_1004C6C88();
  }

  if (v3 <= 0xB)
  {
    sub_1004C6C5C();
  }

  if (v3 == 12)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 0xD)
  {
    sub_1004C6BD8();
  }

  if (v3 != 14)
  {
    sub_1004C6C30();
  }

  v7 = bswap32(*(v2 + 4));
  v8 = bswap32(*(v2 + 6)) >> 16;
  v9 = bswap32(*(v2 + 8));
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  *a2 = 0;
  *(a2 + 4) = HIWORD(v7);
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 13) = v11;
  v12 = 1;
LABEL_17:
  *(a2 + 16) = v12;
}

void sub_10039A2C8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_16:
    v13 = 0;
    v14 = 0;
    *a2 = v4;
    v15 = 4;
    goto LABEL_17;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_16;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_16;
  }

  if ((v5 | (v6 << 8)) != 9)
  {
    v4 = -4006;
    goto LABEL_16;
  }

  if (v3 == 4)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 5)
  {
    sub_1004C6BD8();
  }

  if (v3 == 6)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 7)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 0xB)
  {
    sub_1004C6C5C();
  }

  v7 = (*(a1 + 4) - *a1);
  if (v7 != 13)
  {
    if (v7 == 12)
    {
      sub_1004C6BD8();
    }

    sub_1004C6CB4();
  }

  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = bswap32(*(v2 + 8));
  v13 = *(v2 + 12);
  *a2 = 0;
  *(a2 + 4) = v8;
  *(a2 + 5) = v9;
  *(a2 + 6) = v10;
  *(a2 + 7) = v11;
  *(a2 + 8) = v12;
  v14 = 1;
  v15 = 12;
LABEL_17:
  *(a2 + v15) = v13;
  *(a2 + 16) = v14;
}

uint64_t sub_10039A3E4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v7) = 0;
    LODWORD(v9) = v4;
    goto LABEL_13;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 4)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  if (v3 != 8)
  {
    sub_1004C6CE0();
  }

  LODWORD(v9) = 0;
  v7 = bswap32(*(v2 + 4)) | &_mh_execute_header;
LABEL_13:
  HIDWORD(v9) = v7;
  return v9;
}

unint64_t sub_10039A49C(uint64_t a1, unsigned __int8 **a2)
{
  result = 4294963290;
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 < 4)
  {
    return 4294963296;
  }

  if (v4 >> 16)
  {
    return 4294963295;
  }

  v5 = v3[3];
  v6 = v3[2];
  if (v4 != (v5 | (v6 << 8)) + 4)
  {
    return 4294963294;
  }

  if ((v5 | (v6 << 8)) == 1)
  {
    v7 = (*(a2 + 4) - *a2);
    if (v7 != 5)
    {
      if (v7 == 4)
      {
        sub_1004C6BD8();
      }

      sub_1004C6D0C();
    }

    return (v3[4] << 32) | 0x10000000000;
  }

  return result;
}

uint64_t sub_10039A530(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v7) = 0;
    LODWORD(v9) = v4;
    goto LABEL_13;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 4)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  if (v3 != 8)
  {
    sub_1004C6D38();
  }

  LODWORD(v9) = 0;
  v7 = bswap32(*(v2 + 4)) | &_mh_execute_header;
LABEL_13:
  HIDWORD(v9) = v7;
  return v9;
}

uint64_t sub_10039A5E8(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v9) = v4;
    BYTE4(v9) = 0;
    return v9;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 5)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  v7 = (*(a2 + 4) - *a2);
  if (v7 != 9)
  {
    if (v7 == 8)
    {
      sub_1004C6BD8();
    }

    sub_1004C6D64();
  }

  LODWORD(v9) = 0;
  *(v2 + 8);
  HIDWORD(v9) = bswap32(*(v2 + 4));
  return v9;
}

void sub_10039A6B8(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v38, 4);
  v4 = v38;
  v5 = v39;
  v6 = (v39 - v38);
  if ((v39 - v38 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v7 = *a1;
  if (v39 >= v40)
  {
    v9 = v40 - v38;
    if (2 * (v40 - v38) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v39 - v38;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v38 = 0;
    v39 = v6 + 1;
    v40 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v39 = v7;
    v8 = v5 + 1;
  }

  v39 = v8;
  v13 = *a1;
  if (v13 == 1)
  {
    if (a1[2] == 1)
    {
      v14 = v38;
      v15 = (v8 - v38);
      if ((v8 - v38 - 0xFFFF) >= 0xFFFFFFFFFFFF0000)
      {
        v16 = a1[1];
        if (v8 >= v40)
        {
          v22 = v40 - v38;
          if (2 * (v40 - v38) <= (v15 + 1))
          {
            v23 = (v15 + 1);
          }

          else
          {
            v23 = 2 * v22;
          }

          if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v23;
          }

          if (v19)
          {
            operator new();
          }

          goto LABEL_51;
        }

        goto LABEL_42;
      }

      goto LABEL_63;
    }

    v31 = "evt.commandCompleteSubEventCode.has_value()";
    v32 = 967;
LABEL_68:
    v33 = "encodeEventNotification";
LABEL_69:
    __assert_rtn(v33, "AlishaDCKCoder.cpp", v32, v31);
  }

  if (v13 != 2)
  {
    if (v13 != 3)
    {
      goto LABEL_54;
    }

    if (a1[6] == 1)
    {
      v14 = v38;
      v15 = (v8 - v38);
      if ((v8 - v38 - 0xFFFF) >= 0xFFFFFFFFFFFF0000)
      {
        v16 = a1[5];
        if (v8 >= v40)
        {
          v17 = v40 - v38;
          if (2 * (v40 - v38) <= (v15 + 1))
          {
            v18 = (v15 + 1);
          }

          else
          {
            v18 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            operator new();
          }

LABEL_51:
          v24 = v15;
          v25 = v15;
          v26 = v19;
          v27 = &v25[v14 - v8];
          *v25 = v16;
          v8 = v25 + 1;
          memcpy(v27, v14, v24);
          v38 = v27;
          v39 = v8;
          v40 = v26;
          if (v14)
          {
            operator delete(v14);
          }

          goto LABEL_53;
        }

        goto LABEL_42;
      }

LABEL_63:
      v31 = "msg.size() + sizeof(data) <= kMaxMessageSize";
      v32 = 225;
      v33 = "append";
      goto LABEL_69;
    }

    v31 = "evt.deviceRangingIntentSubEventCode.has_value()";
    v32 = 977;
    goto LABEL_68;
  }

  if (a1[4] != 1)
  {
    v31 = "evt.rangingSessionStatusChangedSubEventCode.has_value()";
    v32 = 972;
    goto LABEL_68;
  }

  v14 = v38;
  v15 = (v8 - v38);
  if ((v8 - v38 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v16 = a1[3];
  if (v8 >= v40)
  {
    v20 = v40 - v38;
    if (2 * (v40 - v38) <= (v15 + 1))
    {
      v21 = (v15 + 1);
    }

    else
    {
      v21 = 2 * v20;
    }

    if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v21;
    }

    if (v19)
    {
      operator new();
    }

    goto LABEL_51;
  }

LABEL_42:
  *v8++ = v16;
LABEL_53:
  v39 = v8;
LABEL_54:
  v28 = v38;
  v29 = v8 - v38;
  if ((v8 - v38) >= 0x10000)
  {
    v31 = "msg.size() <= kMaxMessageSize";
    v32 = 166;
    v33 = "populateHeader";
    goto LABEL_69;
  }

  if (v29 <= 3)
  {
    sub_100009838(&v38, 4 - v29);
    v28 = v38;
    LOWORD(v29) = v39 - v38;
  }

  v30 = v29 - 4;
  *v28 = 3;
  *(v38 + 1) = 17;
  *(v38 + 2) = HIBYTE(v30);
  *(v38 + 3) = v30;
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_100009A48(&__p, v38, v39, v39 - v38);
  v37 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v37 == 1 && __p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_10039AAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039AB1C(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v42, 4);
  sub_100399074(*a1, &v42);
  sub_100399074(*(a1 + 8), &v42);
  v4 = v42;
  v5 = v43;
  v6 = (v43 - v42);
  if ((v43 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_51;
  }

  v7 = *(a1 + 16);
  if (v43 >= v44)
  {
    v9 = v44 - v42;
    if (2 * (v44 - v42) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v43 - v42;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v42 = 0;
    v43 = v6 + 1;
    v44 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v43 = v7;
    v8 = v5 + 1;
  }

  v43 = v8;
  v13 = v42;
  v14 = (v8 - v42);
  if ((v8 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_51;
  }

  v15 = *(a1 + 17);
  if (v8 >= v44)
  {
    v17 = v44 - v42;
    if (2 * (v44 - v42) <= (v14 + 1))
    {
      v18 = (v14 + 1);
    }

    else
    {
      v18 = 2 * v17;
    }

    if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      operator new();
    }

    v20 = v8 - v42;
    *v14 = v15;
    v16 = v14 + 1;
    memcpy(0, v13, v20);
    v42 = 0;
    v43 = v14 + 1;
    v44 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v8 = v15;
    v16 = v8 + 1;
  }

  v43 = v16;
  if ((v16 - v42 - 65534) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_52;
  }

  v21 = *(a1 + 18);
  LOBYTE(__p) = HIBYTE(v21);
  sub_1001FE4D0(&v42, &__p);
  LOBYTE(__p) = v21;
  sub_1001FE4D0(&v42, &__p);
  v22 = v42;
  v23 = v43;
  v24 = (v43 - v42);
  if ((v43 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
LABEL_51:
    v35 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v36 = 225;
LABEL_53:
    v37 = "append";
    goto LABEL_54;
  }

  v25 = *(a1 + 20);
  if (v43 >= v44)
  {
    v27 = v44 - v42;
    if (2 * (v44 - v42) <= (v24 + 1))
    {
      v28 = (v24 + 1);
    }

    else
    {
      v28 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      operator new();
    }

    v30 = v43 - v42;
    *v24 = v25;
    v26 = v24 + 1;
    memcpy(0, v22, v30);
    v42 = 0;
    v43 = v24 + 1;
    v44 = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v43 = v25;
    v26 = v23 + 1;
  }

  v43 = v26;
  if ((v26 - v42 - 65534) < 0xFFFFFFFFFFFF0000)
  {
LABEL_52:
    v35 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v36 = 232;
    goto LABEL_53;
  }

  v31 = *(a1 + 22);
  LOBYTE(__p) = HIBYTE(v31);
  sub_1001FE4D0(&v42, &__p);
  LOBYTE(__p) = v31;
  sub_1001FE4D0(&v42, &__p);
  v32 = v42;
  v33 = v43 - v42;
  if ((v43 - v42) >= 0x10000)
  {
    v35 = "msg.size() <= kMaxMessageSize";
    v36 = 166;
    v37 = "populateHeader";
LABEL_54:
    __assert_rtn(v37, "AlishaDCKCoder.cpp", v36, v35);
  }

  if (v33 <= 3)
  {
    sub_100009838(&v42, 4 - v33);
    v32 = v42;
    LOWORD(v33) = v43 - v42;
  }

  v34 = v33 - 4;
  *v32 = 5;
  *(v42 + 1) = 13;
  *(v42 + 2) = HIBYTE(v34);
  *(v42 + 3) = v34;
  __p = 0;
  v39 = 0;
  v40 = 0;
  sub_100009A48(&__p, v42, v43, v43 - v42);
  v41 = 1;
  *a2 = 0;
  sub_10039B130((a2 + 2), &__p);
  if (v41 == 1 && __p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_10039AF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10039AF98(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FBC68(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001FBC68((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 1);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100009A48((a1 + 6), *a4, a4[1], a4[1] - *a4);
  return a1;
}

void sub_10039B020(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039B054(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10039B0A0(a1, a2);
  }

  sub_100019B38();
}

void sub_10039B0A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10039B0F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001678D8(a1);
  }

  return a1;
}

uint64_t sub_10039B130(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100009A48(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10039B18C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1004C6D90(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10039B1AC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_1001FBC68(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    sub_100009A48(a1 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_10039B250(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  if (*(v1 + 72) == 1)
  {
    sub_10039A168(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039B2A0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_100019B38();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1001679B0(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_10039B3C8(unsigned __int8 *a1)
{
  sub_100193120(v62);
  v2 = sub_10000EA44(&v63, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v4 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v4, "Channel: ", 9);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v8 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v8, "Preamble: ", 10);
  v9 = a1[1];
  v10 = std::ostream::operator<<();
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v12 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v12, "Selected protocol version: ", 27);
  v13 = *(a1 + 1);
  v14 = std::ostream::operator<<();
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v16 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v16, "Selected UWB config id: ", 24);
  v17 = *(a1 + 2);
  v18 = std::ostream::operator<<();
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v20 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v20, "RAN multiplier: ", 16);
  v21 = a1[6];
  v22 = std::ostream::operator<<();
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v24 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v24, "Num. chaps per slot: ", 21);
  v25 = a1[7];
  v26 = std::ostream::operator<<();
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v28 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v28, "Num. slots per round: ", 22);
  v29 = a1[8];
  v30 = std::ostream::operator<<();
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v32 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v32, "Num. responders: ", 17);
  v33 = a1[9];
  v34 = std::ostream::operator<<();
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v36 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v36, "Selected hop config bitmask: ", 29);
  v37 = a1[10];
  v38 = std::ostream::operator<<();
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v67.__locale_) = 9;
  v40 = sub_10000EA44(&v63, &v67, 1);
  sub_10000EA44(v40, "Selected pulse shape combo: ", 28);
  v41 = a1[11];
  v42 = std::ostream::operator<<();
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  if (a1[15] == 1)
  {
    LOBYTE(v67.__locale_) = 9;
    v44 = sub_10000EA44(&v63, &v67, 1);
    v45 = sub_10000EA44(v44, "ACWG enable two ranging rounds per block: ", 42);
    if (a1[15] != 1)
    {
      goto LABEL_17;
    }

    v46 = a1[12] ? "yes" : "no";
    v47 = a1[12] ? 3 : 2;
    v48 = sub_10000EA44(v45, v46, v47);
    std::ios_base::getloc((v48 + *(*v48 - 24)));
    v49 = std::locale::use_facet(&v67, &std::ctype<char>::id);
    (v49->__vftable[2].~facet_0)(v49, 10);
    std::locale::~locale(&v67);
    std::ostream::put();
    std::ostream::flush();
    if (a1[15] != 1)
    {
      goto LABEL_17;
    }

    if (a1[12] == 1)
    {
      LOBYTE(v67.__locale_) = 9;
      v50 = sub_10000EA44(&v63, &v67, 1);
      v51 = sub_10000EA44(v50, "ACWG offset between ranging rounds: ", 36);
      if (a1[15] != 1)
      {
        goto LABEL_17;
      }

      LOBYTE(v67.__locale_) = a1[13];
      v52 = sub_10000EA44(v51, &v67, 1);
      std::ios_base::getloc((v52 + *(*v52 - 24)));
      v53 = std::locale::use_facet(&v67, &std::ctype<char>::id);
      (v53->__vftable[2].~facet_0)(v53, 10);
      std::locale::~locale(&v67);
      std::ostream::put();
      std::ostream::flush();
      if ((a1[15] & 1) == 0)
      {
LABEL_17:
        sub_1000195BC();
      }
    }

    snprintf(__str, 0x80uLL, "ACWG Final Data2 Bitmask: 0x%02x", a1[14]);
    LOBYTE(v67.__locale_) = 9;
    v54 = sub_10000EA44(&v63, &v67, 1);
    v55 = strlen(__str);
    v56 = sub_10000EA44(v54, __str, v55);
    std::ios_base::getloc((v56 + *(*v56 - 24)));
    v57 = std::locale::use_facet(&v67, &std::ctype<char>::id);
    (v57->__vftable[2].~facet_0)(v57, 10);
    std::locale::~locale(&v67);
    std::ostream::put();
    std::ostream::flush();
  }

  v58 = sub_10000EA44(&v63, "}", 1);
  std::ios_base::getloc((v58 + *(*v58 - 24)));
  v59 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v59->__vftable[2].~facet_0)(v59, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v63 = v60;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039BFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 192));
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039C050(unsigned __int8 *a1)
{
  sub_100193120(v21);
  v2 = sub_10000EA44(&v22, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v18.__locale_) = 9;
  v4 = sub_10000EA44(&v22, &v18, 1);
  sub_10000EA44(v4, "UWB session id: ", 16);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v18.__locale_) = 9;
  v8 = sub_10000EA44(&v22, &v18, 1);
  v9 = sub_10000EA44(v8, "Negotiated params: ", 19);
  sub_10039B3C8(a1 + 4);
  if ((v20 & 0x80u) == 0)
  {
    locale = &v18;
  }

  else
  {
    locale = v18.__locale_;
  }

  if ((v20 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = v19;
  }

  v12 = sub_10000EA44(v9, locale, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  if (v20 < 0)
  {
    operator delete(v18.__locale_);
  }

  v14 = sub_10000EA44(&v22, "}", 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v18, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v22 = v16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039C4E0(uint64_t *a1)
{
  sub_100193120(v11);
  sub_10000EA44(&v12, "[", 1);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      sub_100004A08(__p, off_1009A8AA8[*(v2 + v3) - 1]);
      if ((v10 & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if ((v10 & 0x80u) == 0)
      {
        v5 = v10;
      }

      else
      {
        v5 = __p[1];
      }

      sub_10000EA44(&v12, v4, v5);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *a1;
      v6 = a1[1];
      if (~*a1 + v6 > v3)
      {
        sub_10000EA44(&v12, ", ", 2);
        v2 = *a1;
        v6 = a1[1];
      }

      ++v3;
    }

    while (v6 - v2 > v3);
  }

  sub_10000EA44(&v12, "]", 1);
  std::stringbuf::str();
  v12 = v7;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039C768(char a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    v6 = 1;
    sub_1001FE4D0(a2, &v6);
  }

  if ((a1 & 2) != 0)
  {
    v5 = 2;
    sub_1001FE4D0(a2, &v5);
  }

  if ((a1 & 4) != 0)
  {
    v4 = 4;
    sub_1001FE4D0(a2, &v4);
  }
}

void sub_10039C7E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10039C808(uint64_t *a1)
{
  sub_100193120(v41);
  LOBYTE(v46.__locale_) = 48;
  v2 = sub_100193BA0(&v42, &v46);
  *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = sub_10000EA44(&v42, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v5 = sub_10000EA44(&v42, &v46, 1);
  sub_10000EA44(v5, "UWB config ids: [", 17);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      *(&v44[1].__locale_ + *(v42 - 24)) = 4;
      v8 = *(v6 + 2 * v7);
      std::ostream::operator<<();
      v6 = *a1;
      v9 = (a1[1] - *a1) >> 1;
      if (v9 - 1 > v7)
      {
        sub_10000EA44(&v42, ", ", 2);
        v6 = *a1;
        v9 = (a1[1] - *a1) >> 1;
      }

      ++v7;
    }

    while (v9 > v7);
  }

  v10 = sub_10000EA44(&v42, "], ", 3);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v12 = sub_10000EA44(&v42, &v46, 1);
  v13 = sub_10000EA44(v12, "Slot bitmask: ", 14);
  *(v13 + *(*v13 - 24) + 24) = 2;
  v14 = *(a1 + 24);
  v15 = std::ostream::operator<<();
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v17 = sub_10000EA44(&v42, &v46, 1);
  v18 = sub_10000EA44(v17, "Sync code index bitmask: ", 25);
  *(v18 + *(*v18 - 24) + 24) = 8;
  v19 = *(a1 + 7);
  v20 = std::ostream::operator<<();
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v22 = sub_10000EA44(&v42, &v46, 1);
  v23 = sub_10000EA44(v22, "RF channel bitmask: ", 20);
  *(v23 + *(*v23 - 24) + 24) = 2;
  v24 = *(a1 + 32);
  v25 = std::ostream::operator<<();
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v27 = sub_10000EA44(&v42, &v46, 1);
  v28 = sub_10000EA44(v27, "Hop config bitmask: ", 20);
  *(v28 + *(*v28 - 24) + 24) = 2;
  v29 = *(a1 + 33);
  v30 = std::ostream::operator<<();
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v46.__locale_) = 9;
  v32 = sub_10000EA44(&v42, &v46, 1);
  sub_10000EA44(v32, "Pulse shape combos: [", 21);
  v33 = a1[5];
  if (a1[6] != v33)
  {
    v34 = 0;
    do
    {
      *(&v44[1].__locale_ + *(v42 - 24)) = 2;
      v35 = *(v33 + v34);
      std::ostream::operator<<();
      v33 = a1[5];
      v36 = a1[6];
      if (~v33 + v36 > v34)
      {
        sub_10000EA44(&v42, ", ", 2);
        v33 = a1[5];
        v36 = a1[6];
      }

      ++v34;
    }

    while (v36 - v33 > v34);
  }

  v37 = sub_10000EA44(&v42, "]", 1);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v46, &std::ctype<char>::id);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v42, "}", 1);
  std::stringbuf::str();
  v42 = v39;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039D078(unsigned __int16 *a1)
{
  sub_100193120(v144);
  std::ios_base::getloc((&v145 + *(v145 - 24)));
  v2 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  v3 = sub_10000EA44(&v145, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v5 = sub_10000EA44(&v145, &v141, 1);
  v6 = sub_10000EA44(v5, "Status: ", 8);
  v7 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v7, &v141);
  if ((v143 & 0x80u) == 0)
  {
    locale = &v141;
  }

  else
  {
    locale = v141.__locale_;
  }

  if ((v143 & 0x80u) == 0)
  {
    v9 = v143;
  }

  else
  {
    v9 = v142;
  }

  v10 = sub_10000EA44(v6, locale, v9);
  v11 = sub_10000EA44(v10, ",", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v149, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v149);
  std::ostream::put();
  std::ostream::flush();
  if (v143 < 0)
  {
    operator delete(v141.__locale_);
  }

  LOBYTE(v141.__locale_) = 48;
  v13 = sub_100193BA0(&v145, &v141);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v141.__locale_) = 9;
  v14 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v14, "Session type: 0x", 16);
  v15 = *(a1 + 4);
  v16 = std::ostream::operator<<();
  v17 = sub_10000EA44(v16, ",", 1);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  *(&v145 + *(v145 - 24) + 8) = *(&v145 + *(v145 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v141.__locale_) = 9;
  v19 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v19, "UWB session id: ", 16);
  v20 = *(a1 + 2);
  v21 = std::ostream::operator<<();
  v22 = sub_10000EA44(v21, ",", 1);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v24 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v24, "Block start time (R1 ticks): ", 29);
  v25 = *(a1 + 2);
  v26 = std::ostream::operator<<();
  v27 = sub_10000EA44(v26, ",", 1);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v29 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v29, "Block index: ", 13);
  v30 = a1[12];
  v31 = std::ostream::operator<<();
  v32 = sub_10000EA44(v31, ",", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v34 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v34, "Round index: ", 13);
  v35 = a1[13];
  v36 = std::ostream::operator<<();
  v37 = sub_10000EA44(v36, ",", 1);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v39 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v39, "Round STS index: ", 17);
  v40 = *(a1 + 8);
  v41 = std::ostream::operator<<();
  v42 = sub_10000EA44(v41, ",", 1);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v44 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v44, "Ranging event: ", 15);
  v45 = *(a1 + 29);
  v46 = std::ostream::operator<<();
  sub_10000EA44(v46, " of ", 4);
  v47 = *(a1 + 28);
  v48 = std::ostream::operator<<();
  v49 = sub_10000EA44(v48, ",", 1);
  std::ios_base::getloc((v49 + *(*v49 - 24)));
  v50 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v50->__vftable[2].~facet_0)(v50, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  if (*(a1 + 80) == 1)
  {
    LOBYTE(v141.__locale_) = 9;
    v51 = sub_10000EA44(&v145, &v141, 1);
    v52 = sub_10000EA44(v51, "Range (m): ", 11);
    *(v52 + *(*v52 - 24) + 16) = 5;
    if ((a1[40] & 1) == 0)
    {
      sub_1000195BC();
    }

    v53 = *(a1 + 19);
    v54 = std::ostream::operator<<();
    v55 = sub_10000EA44(v54, ",", 1);
    std::ios_base::getloc((v55 + *(*v55 - 24)));
    v56 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v56->__vftable[2].~facet_0)(v56, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
  }

  LOBYTE(v141.__locale_) = 9;
  v57 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v57, "Block size: ", 12);
  v58 = a1[18];
  v59 = std::ostream::operator<<();
  v60 = sub_10000EA44(v59, ",", 1);
  std::ios_base::getloc((v60 + *(*v60 - 24)));
  v61 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v61->__vftable[2].~facet_0)(v61, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v62 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v62, "Round size: ", 12);
  v63 = a1[19];
  v64 = std::ostream::operator<<();
  v65 = sub_10000EA44(v64, ",", 1);
  std::ios_base::getloc((v65 + *(*v65 - 24)));
  v66 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v66->__vftable[2].~facet_0)(v66, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v67 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v67, "Slot size: ", 11);
  v68 = a1[20];
  v69 = std::ostream::operator<<();
  v70 = sub_10000EA44(v69, ",", 1);
  std::ios_base::getloc((v70 + *(*v70 - 24)));
  v71 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v71->__vftable[2].~facet_0)(v71, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v72 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v72, "Num. RX skips: ", 15);
  v73 = *(a1 + 42);
  v74 = std::ostream::operator<<();
  v75 = sub_10000EA44(v74, ",", 1);
  std::ios_base::getloc((v75 + *(*v75 - 24)));
  v76 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v76->__vftable[2].~facet_0)(v76, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v77 = sub_10000EA44(&v145, &v141, 1);
  v78 = sub_10000EA44(v77, "RX skip reasons: ", 17);
  sub_10039C4E0(a1 + 6);
  if ((v143 & 0x80u) == 0)
  {
    v79 = &v141;
  }

  else
  {
    v79 = v141.__locale_;
  }

  if ((v143 & 0x80u) == 0)
  {
    v80 = v143;
  }

  else
  {
    v80 = v142;
  }

  v81 = sub_10000EA44(v78, v79, v80);
  v82 = sub_10000EA44(v81, ",", 1);
  std::ios_base::getloc((v82 + *(*v82 - 24)));
  v83 = std::locale::use_facet(&v149, &std::ctype<char>::id);
  (v83->__vftable[2].~facet_0)(v83, 10);
  std::locale::~locale(&v149);
  std::ostream::put();
  std::ostream::flush();
  if (v143 < 0)
  {
    operator delete(v141.__locale_);
  }

  LOBYTE(v141.__locale_) = 9;
  v84 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v84, "Next hop flag: ", 15);
  v85 = *(a1 + 72);
  v86 = std::ostream::operator<<();
  v87 = sub_10000EA44(v86, ",", 1);
  std::ios_base::getloc((v87 + *(*v87 - 24)));
  v88 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v88->__vftable[2].~facet_0)(v88, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v89 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v89, "Next round index: ", 18);
  v90 = a1[37];
  v91 = std::ostream::operator<<();
  v92 = sub_10000EA44(v91, ",", 1);
  std::ios_base::getloc((v92 + *(*v92 - 24)));
  v93 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v93->__vftable[2].~facet_0)(v93, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v94 = sub_10000EA44(&v145, &v141, 1);
  sub_10000EA44(v94, "Num. successes: ", 16);
  v95 = *(a1 + 84);
  v96 = std::ostream::operator<<();
  v97 = sub_10000EA44(v96, ",", 1);
  std::ios_base::getloc((v97 + *(*v97 - 24)));
  v98 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v98->__vftable[2].~facet_0)(v98, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v141.__locale_) = 9;
  v99 = sub_10000EA44(&v145, &v141, 1);
  v100 = sub_10000EA44(v99, "Responder info: [", 17);
  std::ios_base::getloc((v100 + *(*v100 - 24)));
  v101 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v101->__vftable[2].~facet_0)(v101, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  v102 = *(a1 + 11);
  for (i = *(a1 + 12); v102 != i; v102 += 16)
  {
    LOBYTE(v141.__locale_) = 9;
    v104 = sub_10000EA44(&v145, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v105 = sub_10000EA44(v104, &v141, 1);
    v106 = sub_10000EA44(v105, "{", 1);
    std::ios_base::getloc((v106 + *(*v106 - 24)));
    v107 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v107->__vftable[2].~facet_0)(v107, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v141.__locale_) = 48;
    v108 = sub_100193BA0(&v145, &v141);
    *(v108 + *(*v108 - 24) + 8) = *(v108 + *(*v108 - 24) + 8) & 0xFFFFFFB5 | 8;
    LOBYTE(v141.__locale_) = 9;
    v109 = sub_10000EA44(&v145, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v110 = sub_10000EA44(v109, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v111 = sub_10000EA44(v110, &v141, 1);
    v112 = sub_10000EA44(v111, "RX status: 0x", 13);
    *(v112 + *(*v112 - 24) + 24) = 1;
    v113 = *v102;
    v114 = std::ostream::operator<<();
    v115 = sub_10000EA44(v114, ",", 1);
    std::ios_base::getloc((v115 + *(*v115 - 24)));
    v116 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v116->__vftable[2].~facet_0)(v116, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
    *(&v147[-1].__locale_ + *(v145 - 24)) = *(&v147[-1].__locale_ + *(v145 - 24)) & 0xFFFFFFB5 | 2;
    LOBYTE(v141.__locale_) = 9;
    v117 = sub_10000EA44(&v145, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v118 = sub_10000EA44(v117, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v119 = sub_10000EA44(v118, &v141, 1);
    sub_10000EA44(v119, "CFO (ppm): ", 11);
    v120 = v102[1];
    v121 = std::ostream::operator<<();
    v122 = sub_10000EA44(v121, ",", 1);
    std::ios_base::getloc((v122 + *(*v122 - 24)));
    v123 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v123->__vftable[2].~facet_0)(v123, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v141.__locale_) = 9;
    v124 = sub_10000EA44(&v145, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v125 = sub_10000EA44(v124, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v126 = sub_10000EA44(v125, &v141, 1);
    v127 = sub_10000EA44(v126, "soiRssi (dBm): ", 15);
    *(v127 + *(*v127 - 24) + 16) = 5;
    v128 = *(v102 + 1);
    v129 = std::ostream::operator<<();
    v130 = sub_10000EA44(v129, ",", 1);
    std::ios_base::getloc((v130 + *(*v130 - 24)));
    v131 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v131->__vftable[2].~facet_0)(v131, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v141.__locale_) = 9;
    v132 = sub_10000EA44(&v145, &v141, 1);
    LOBYTE(v141.__locale_) = 9;
    v133 = sub_10000EA44(v132, &v141, 1);
    v134 = sub_10000EA44(v133, "}, ", 3);
    std::ios_base::getloc((v134 + *(*v134 - 24)));
    v135 = std::locale::use_facet(&v141, &std::ctype<char>::id);
    (v135->__vftable[2].~facet_0)(v135, 10);
    std::locale::~locale(&v141);
    std::ostream::put();
    std::ostream::flush();
  }

  LOBYTE(v141.__locale_) = 9;
  v136 = sub_10000EA44(&v145, &v141, 1);
  v137 = sub_10000EA44(v136, "]", 1);
  std::ios_base::getloc((v137 + *(*v137 - 24)));
  v138 = std::locale::use_facet(&v141, &std::ctype<char>::id);
  (v138->__vftable[2].~facet_0)(v138, 10);
  std::locale::~locale(&v141);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v145, "}", 1);
  std::stringbuf::str();
  v145 = v139;
  if (v148 < 0)
  {
    operator delete(v147[7].__locale_);
  }

  std::locale::~locale(v147);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039E7A0(unsigned __int16 *a1)
{
  sub_100193120(v19);
  sub_10000EA44(&v20, "BI: ", 4);
  v2 = a1[12];
  std::ostream::operator<<();
  v3 = sub_10000EA44(&v20, ", ", 2);
  v4 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v4, __p);
  if ((v18 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = __p[1];
  }

  sub_10000EA44(v3, v5, v6);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 11);
  for (i = *(a1 + 12); v7 != i; v7 += 16)
  {
    LOBYTE(__p[0]) = 48;
    v9 = sub_100193BA0(&v20, __p);
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
    v10 = sub_10000EA44(&v20, ", <RX: 0x", 9);
    *(v10 + *(*v10 - 24) + 24) = 1;
    v11 = *v7;
    std::ostream::operator<<();
    *(&v22[-1].__locale_ + *(v20 - 24)) = *(&v22[-1].__locale_ + *(v20 - 24)) & 0xFFFFFFB5 | 2;
    v12 = sub_10000EA44(&v20, ", SR: ", 6);
    *(v12 + *(*v12 - 24) + 16) = 5;
    v13 = *(v7 + 1);
    v14 = std::ostream::operator<<();
    sub_10000EA44(v14, ">", 1);
  }

  std::stringbuf::str();
  v20 = v15;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039EAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10039EB08(unsigned __int16 *a1)
{
  sub_100193120(v149);
  std::ios_base::getloc((&v150 + *(v150 - 24)));
  v2 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  v3 = sub_10000EA44(&v150, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v5 = sub_10000EA44(&v150, &v146, 1);
  v6 = sub_10000EA44(v5, "Status: ", 8);
  v7 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v7, &v146);
  if ((v148 & 0x80u) == 0)
  {
    locale = &v146;
  }

  else
  {
    locale = v146.__locale_;
  }

  if ((v148 & 0x80u) == 0)
  {
    v9 = v148;
  }

  else
  {
    v9 = v147;
  }

  v10 = sub_10000EA44(v6, locale, v9);
  v11 = sub_10000EA44(v10, ",", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v154, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v154);
  std::ostream::put();
  std::ostream::flush();
  if (v148 < 0)
  {
    operator delete(v146.__locale_);
  }

  LOBYTE(v146.__locale_) = 48;
  v13 = sub_100193BA0(&v150, &v146);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v146.__locale_) = 9;
  v14 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v14, "Session type: 0x", 16);
  v15 = *(a1 + 4);
  v16 = std::ostream::operator<<();
  v17 = sub_10000EA44(v16, ",", 1);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  *(&v150 + *(v150 - 24) + 8) = *(&v150 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v146.__locale_) = 9;
  v19 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v19, "UWB session id: ", 16);
  v20 = *(a1 + 2);
  v21 = std::ostream::operator<<();
  v22 = sub_10000EA44(v21, ",", 1);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v24 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v24, "Responder index: ", 17);
  v25 = *(a1 + 12);
  v26 = std::ostream::operator<<();
  v27 = sub_10000EA44(v26, ",", 1);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v29 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v29, "Block start time (R1 ticks): ", 29);
  v30 = *(a1 + 2);
  v31 = std::ostream::operator<<();
  v32 = sub_10000EA44(v31, ",", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v34 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v34, "Block index: ", 13);
  v35 = a1[12];
  v36 = std::ostream::operator<<();
  v37 = sub_10000EA44(v36, ",", 1);
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v39 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v39, "Round index: ", 13);
  v40 = a1[13];
  v41 = std::ostream::operator<<();
  v42 = sub_10000EA44(v41, ",", 1);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v44 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v44, "Round STS index: ", 17);
  v45 = *(a1 + 7);
  v46 = std::ostream::operator<<();
  v47 = sub_10000EA44(v46, ",", 1);
  std::ios_base::getloc((v47 + *(*v47 - 24)));
  v48 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v48->__vftable[2].~facet_0)(v48, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v49 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v49, "Ranging event: ", 15);
  v50 = *(a1 + 43);
  v51 = std::ostream::operator<<();
  sub_10000EA44(v51, " of ", 4);
  v52 = *(a1 + 42);
  v53 = std::ostream::operator<<();
  v54 = sub_10000EA44(v53, ",", 1);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v56 = sub_10000EA44(&v150, &v146, 1);
  v57 = sub_10000EA44(v56, "Range (m): ", 11);
  *(v57 + *(*v57 - 24) + 16) = 5;
  v58 = *(a1 + 11);
  v59 = std::ostream::operator<<();
  v60 = sub_10000EA44(v59, ",", 1);
  std::ios_base::getloc((v60 + *(*v60 - 24)));
  v61 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v61->__vftable[2].~facet_0)(v61, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v62 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v62, "CFO (ppt): ", 11);
  v63 = *(a1 + 12);
  v64 = std::ostream::operator<<();
  v65 = sub_10000EA44(v64, ",", 1);
  std::ios_base::getloc((v65 + *(*v65 - 24)));
  v66 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v66->__vftable[2].~facet_0)(v66, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 48;
  v67 = sub_100193BA0(&v150, &v146);
  *(v67 + *(*v67 - 24) + 8) = *(v67 + *(*v67 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v146.__locale_) = 9;
  v68 = sub_10000EA44(&v150, &v146, 1);
  v69 = sub_10000EA44(v68, "Pre-poll RX status: 0x", 22);
  *(v69 + *(*v69 - 24) + 24) = 1;
  v70 = *(a1 + 52);
  v71 = std::ostream::operator<<();
  v72 = sub_10000EA44(v71, ",", 1);
  std::ios_base::getloc((v72 + *(*v72 - 24)));
  v73 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v73->__vftable[2].~facet_0)(v73, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  *(&v150 + *(v150 - 24) + 8) = *(&v150 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v146.__locale_) = 9;
  v74 = sub_10000EA44(&v150, &v146, 1);
  v75 = sub_10000EA44(v74, "Pre-poll soiRssi (dBm): ", 24);
  *(v75 + *(*v75 - 24) + 16) = 5;
  v76 = *(a1 + 7);
  v77 = std::ostream::operator<<();
  v78 = sub_10000EA44(v77, ",", 1);
  std::ios_base::getloc((v78 + *(*v78 - 24)));
  v79 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v79->__vftable[2].~facet_0)(v79, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 48;
  v80 = sub_100193BA0(&v150, &v146);
  *(v80 + *(*v80 - 24) + 8) = *(v80 + *(*v80 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v146.__locale_) = 9;
  v81 = sub_10000EA44(&v150, &v146, 1);
  v82 = sub_10000EA44(v81, "Poll RX status: 0x", 18);
  *(v82 + *(*v82 - 24) + 24) = 1;
  v83 = *(a1 + 64);
  v84 = std::ostream::operator<<();
  v85 = sub_10000EA44(v84, ",", 1);
  std::ios_base::getloc((v85 + *(*v85 - 24)));
  v86 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v86->__vftable[2].~facet_0)(v86, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  *(&v150 + *(v150 - 24) + 8) = *(&v150 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v146.__locale_) = 9;
  v87 = sub_10000EA44(&v150, &v146, 1);
  v88 = sub_10000EA44(v87, "Poll soiRssi (dBm): ", 20);
  *(v88 + *(*v88 - 24) + 16) = 5;
  v89 = *(a1 + 9);
  v90 = std::ostream::operator<<();
  v91 = sub_10000EA44(v90, ",", 1);
  std::ios_base::getloc((v91 + *(*v91 - 24)));
  v92 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v92->__vftable[2].~facet_0)(v92, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 48;
  v93 = sub_100193BA0(&v150, &v146);
  *(v93 + *(*v93 - 24) + 8) = *(v93 + *(*v93 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v146.__locale_) = 9;
  v94 = sub_10000EA44(&v150, &v146, 1);
  v95 = sub_10000EA44(v94, "Final RX status: 0x", 19);
  *(v95 + *(*v95 - 24) + 24) = 1;
  v96 = *(a1 + 80);
  v97 = std::ostream::operator<<();
  v98 = sub_10000EA44(v97, ",", 1);
  std::ios_base::getloc((v98 + *(*v98 - 24)));
  v99 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v99->__vftable[2].~facet_0)(v99, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  *(&v150 + *(v150 - 24) + 8) = *(&v150 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v146.__locale_) = 9;
  v100 = sub_10000EA44(&v150, &v146, 1);
  v101 = sub_10000EA44(v100, "Final soiRssi (dBm): ", 21);
  *(v101 + *(*v101 - 24) + 16) = 5;
  v102 = *(a1 + 11);
  v103 = std::ostream::operator<<();
  v104 = sub_10000EA44(v103, ",", 1);
  std::ios_base::getloc((v104 + *(*v104 - 24)));
  v105 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v105->__vftable[2].~facet_0)(v105, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 48;
  v106 = sub_100193BA0(&v150, &v146);
  *(v106 + *(*v106 - 24) + 8) = *(v106 + *(*v106 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v146.__locale_) = 9;
  v107 = sub_10000EA44(&v150, &v146, 1);
  v108 = sub_10000EA44(v107, "Final-data RX status: 0x", 24);
  *(v108 + *(*v108 - 24) + 24) = 1;
  v109 = *(a1 + 96);
  v110 = std::ostream::operator<<();
  v111 = sub_10000EA44(v110, ",", 1);
  std::ios_base::getloc((v111 + *(*v111 - 24)));
  v112 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v112->__vftable[2].~facet_0)(v112, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  *(&v150 + *(v150 - 24) + 8) = *(&v150 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v146.__locale_) = 9;
  v113 = sub_10000EA44(&v150, &v146, 1);
  v114 = sub_10000EA44(v113, "Final-data soiRssi (dBm): ", 26);
  *(v114 + *(*v114 - 24) + 16) = 5;
  v115 = *(a1 + 13);
  v116 = std::ostream::operator<<();
  v117 = sub_10000EA44(v116, ",", 1);
  std::ios_base::getloc((v117 + *(*v117 - 24)));
  v118 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v118->__vftable[2].~facet_0)(v118, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v119 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v119, "Block size: ", 12);
  v120 = a1[16];
  v121 = std::ostream::operator<<();
  v122 = sub_10000EA44(v121, ",", 1);
  std::ios_base::getloc((v122 + *(*v122 - 24)));
  v123 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v123->__vftable[2].~facet_0)(v123, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v124 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v124, "Round size: ", 12);
  v125 = a1[17];
  v126 = std::ostream::operator<<();
  v127 = sub_10000EA44(v126, ",", 1);
  std::ios_base::getloc((v127 + *(*v127 - 24)));
  v128 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v128->__vftable[2].~facet_0)(v128, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v129 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v129, "Slot size: ", 11);
  v130 = a1[18];
  v131 = std::ostream::operator<<();
  v132 = sub_10000EA44(v131, ",", 1);
  std::ios_base::getloc((v132 + *(*v132 - 24)));
  v133 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v133->__vftable[2].~facet_0)(v133, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v134 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v134, "Next hop flag: ", 15);
  v135 = *(a1 + 38);
  v136 = std::ostream::operator<<();
  v137 = sub_10000EA44(v136, ",", 1);
  std::ios_base::getloc((v137 + *(*v137 - 24)));
  v138 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v138->__vftable[2].~facet_0)(v138, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v146.__locale_) = 9;
  v139 = sub_10000EA44(&v150, &v146, 1);
  sub_10000EA44(v139, "Next round index: ", 18);
  v140 = a1[20];
  v141 = std::ostream::operator<<();
  v142 = sub_10000EA44(v141, ",", 1);
  std::ios_base::getloc((v142 + *(*v142 - 24)));
  v143 = std::locale::use_facet(&v146, &std::ctype<char>::id);
  (v143->__vftable[2].~facet_0)(v143, 10);
  std::locale::~locale(&v146);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v150, "}", 1);
  std::stringbuf::str();
  v150 = v144;
  if (v153 < 0)
  {
    operator delete(v152[7].__locale_);
  }

  std::locale::~locale(v152);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

_BYTE *sub_1003A03C4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 <= -1034)
  {
    switch(a1)
    {
      case -4026:
        v2 = "SPLIT_DCK_MESSAGES_TOO_MANY_BYTES";
        break;
      case -4025:
        v2 = "SPLIT_DCK_MESSAGES_NOT_ENOUGH_BYTES";
        break;
      case -4024:
        v2 = "INVALID_DCK_SUB_EVENT_CODE";
        break;
      case -4023:
        v2 = "INVALID_DCK_SUB_EVENT_CATEGORY";
        break;
      case -4022:
        v2 = "DCK_NO_SUB_EVENT_CODE";
        break;
      case -4021:
        v2 = "DCK_NO_SUB_EVENT_CATEGORY";
        break;
      case -4020:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4019:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4018:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_ZERO";
        break;
      case -4017:
        v2 = "DCK_NO_PULSE_SHAPE_COMBO_LENGTH";
        break;
      case -4016:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4015:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4014:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_ODD";
        break;
      case -4013:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_ZERO";
        break;
      case -4012:
        v2 = "DCK_NO_UWB_CONFIG_ID_LENGTH";
        break;
      case -4011:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4010:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4009:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_ODD";
        break;
      case -4008:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_ZERO";
        break;
      case -4007:
        v2 = "DCK_NO_PROTOCOL_VERSION_LENGTH";
        break;
      case -4006:
        v2 = "DCK_MSG_UNEXPECTED_DATA_LENGTH";
        break;
      case -4005:
        v2 = "DCK_HEADER_ID_MISMATCHES";
        break;
      case -4004:
        v2 = "INVALID_DCK_MESSAGE_ID";
        break;
      case -4003:
        v2 = "INVALID_DCK_PROTOCOL_TYPE";
        break;
      case -4002:
        v2 = "DCK_MISMATCHED_DATA_LENGTH";
        break;
      case -4001:
        v2 = "DCK_MESSAGE_EXCEEDS_MAX_SIZE";
        break;
      case -4000:
        v2 = "DCK_HEADER_TOO_SHORT";
        break;
      default:
        JUMPOUT(0);
    }
  }

  else
  {
    v2 = "SUCCESS";
    switch(a1)
    {
      case 0:
        return sub_100004A08(a2, v2);
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 24:
      case 25:
      case 26:
      case 27:
      case 30:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 58:
      case 59:
      case 60:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
LABEL_10:
        v2 = "UNKNOWN";
        break;
      case 6:
        v2 = "HSI_ERR_BUSY";
        break;
      case 8:
        v2 = "HSI_ERR_SES_MAX_LIMIT_REACHED";
        break;
      case 12:
        v2 = "HSI_ERR_SES_TIMEOUT";
        break;
      case 13:
        v2 = "HSI_ERR_SES_SYNC_TIMEOUT";
        break;
      case 14:
        v2 = "HSI_ERR_MISSED_RANGING_CYCLE";
        break;
      case 18:
        v2 = "HSI_ERR_SES_ALREADY_ACTIVE";
        break;
      case 19:
        v2 = "HSI_ERR_SES_ALREADY_DISABLED";
        break;
      case 20:
        v2 = "HSI_ERR_SES_SCHEDULING_CONFLICT";
        break;
      case 21:
        v2 = "HSI_ERR_SES_COEX_CONFLICT";
        break;
      case 22:
        v2 = "HSI_ERR_SES_WRONG_SYNC";
        break;
      case 23:
        v2 = "HSI_ERR_START_TIME_ELAPSED";
        break;
      case 28:
        v2 = "HSI_ERR_INVALID_SES_ROLE";
        break;
      case 29:
        v2 = "HSI_ERR_INVALID_ANTENNA_CFG";
        break;
      case 31:
        v2 = "HSI_ERR_INVALID_PREAMBLE";
        break;
      case 32:
        v2 = "HSI_ERR_INVALID_FEM_CFG";
        break;
      case 39:
        v2 = "HSI_ERR_INVALID_CHANNEL";
        break;
      case 48:
        v2 = "HSI_ERR_INVALID_ALISHA_UWB_CFG_ID";
        break;
      case 49:
        v2 = "HSI_ERR_INVALID_ALISHA_RAN_MULTIPLIER";
        break;
      case 50:
        v2 = "HSI_ERR_INVALID_ALISHA_NRESPONDERS";
        break;
      case 51:
        v2 = "HSI_ERR_INVALID_SLOT_SIZE";
        break;
      case 52:
        v2 = "HSI_ERR_INVALID_NSLOTS_PER_ROUND";
        break;
      case 53:
        v2 = "HSI_ERR_INVALID_RBLOCK_CFG";
        break;
      case 54:
        v2 = "HSI_ERR_ALISHA_UWB_SES_ID_NOT_FOUND";
        break;
      case 55:
        v2 = "HSI_ERR_ALISHA_UWB_SES_ID_ALREADY_IN_USE";
        break;
      case 56:
        v2 = "HSI_ERR_ALISHA_KEY_STORE_FULL";
        break;
      case 57:
        v2 = "HSI_ERR_INVALID_ALISHA_RESPONDER_IDX";
        break;
      case 62:
        v2 = "HSI_ERR_SLOT_TIME_ELAPSED";
        break;
      case 63:
        v2 = "HSI_ERR_INVALID_PULSE_SHAPE_COMBO";
        break;
      case 64:
        v2 = "HSI_ERR_INVALID_ALISHA_HOP_MODE";
        break;
      case 65:
        v2 = "HSI_ERR_INVALID_ALISHA_HOP_SEQUENCE";
        break;
      case 71:
        v2 = "HSI_ERR_ALISHA_URSK_RETRIEVAL_FAILED";
        break;
      case 72:
        v2 = "HSI_ERR_ALISHA_GET_KEY_ALREADY_PENDING";
        break;
      case 73:
        v2 = "HSI_ERR_STS_INDEX_EXHAUSTED";
        break;
      case 74:
        v2 = "HSI_ERR_BLOCK_IDX_EXHAUSTED";
        break;
      case 75:
        v2 = "HSI_ERR_ALISHA_URSK_TTL_EXPIRED";
        break;
      case 76:
        v2 = "HSI_ERR_INVALID_ALISHA_STS_INDEX_0";
        break;
      case 77:
        v2 = "HSI_ERR_ALISHA_RESPONSE_TIMEOUT";
        break;
      case 78:
        v2 = "HSI_ERR_ALISHA_TOTAL_TIMEOUT";
        break;
      case 79:
        v2 = "HSI_ERR_UNAUTHENTICATED_CAL_BLOB";
        break;
      case 98:
        v2 = "HSI_ERR_ALISHA_TIMER_CREATION_FAILED";
        break;
      case 99:
        v2 = "HSI_ERR_ALISHA_TIMER_QUERY_FAILED";
        break;
      case 100:
        v2 = "HSI_ERR_ALISHA_TIMER_RESP_INVALID";
        break;
      case 101:
        v2 = "HSI_ERR_ALISHA_TIMER_DELETION_FAILED";
        break;
      case 112:
        v2 = "HSI_ERR_INVALID_ACWG_ROUNDS_OFFSET";
        break;
      case 113:
        v2 = "HSI_ERR_INVALID_ACWG_CONFIG";
        break;
      case 114:
        v2 = "HSI_ERR_SC_GET_KEY_INVALID_KEY_TYPE";
        break;
      case 115:
        v2 = "HSI_ERR_ACWG_FDATA2_RX_FAILED";
        break;
      default:
        switch(a1)
        {
          case -1033:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_UNEXPECTED_RSP";
            break;
          case -1032:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_EMPTY_RSP";
            break;
          case -1031:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_TIMED_OUT";
            break;
          case -1030:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_CMD_FAILED";
            break;
          case -1029:
            v2 = "GET_TEST_MODE_FAILED";
            break;
          case -1028:
            v2 = "SET_TEST_MODE_FAILED";
            break;
          case -1027:
            v2 = "CONFIG_MISSING_MANDATORY_ANTENNA_MASK_KEY";
            break;
          case -1026:
            v2 = "SUBSYSTEM_TIME_CONVERSION_FAILED";
            break;
          case -1025:
            v2 = "TIME_CONVERSION_NOT_READY";
            break;
          case -1024:
            v2 = "GET_SESSION_STATS_AOP_COMMAND_FAILED";
            break;
          case -1023:
            v2 = "RANGE_ENABLE_UNDEFINED_ERROR";
            break;
          case -1022:
            v2 = "RANGE_ENABLE_TIME_CONVERSION_FAILED";
            break;
          case -1021:
            v2 = "PASSTHROUGH_SESSION_NOT_SUPPORTED";
            break;
          case -1020:
            v2 = "SET_URSK_TTL_NOT_SUPPORTED";
            break;
          case -1019:
            v2 = "DELETE_KEYS_TIMED_OUT";
            break;
          case -1018:
            v2 = "DELETE_KEYS_ROSE_COMMAND_FAILED";
            break;
          case -1017:
            v2 = "SET_URSK_TTL_ROSE_COMMAND_FAILED";
            break;
          case -1016:
            v2 = "CONFIG_CONTAINS_INVALID_SYNC_CODE_INDEX";
            break;
          case -1015:
            v2 = "CONFIG_MISSING_MANDATORY_ANCHOR_KEY";
            break;
          case -1014:
            v2 = "CONFIG_MISSING_MANDATORY_PASSTHROUGH_KEY";
            break;
          case -1013:
            v2 = "BUILD_ALISHA_SESSION_FAILED";
            break;
          case -1012:
            v2 = "SET_DEBUG_KEY_NOT_SUPPORTED";
            break;
          case -1011:
            v2 = "ALISHA_KEY_ROSE_COMMAND_ALREADY_IN_FLIGHT";
            break;
          case -1010:
            v2 = "SET_DEBUG_KEY_TIMED_OUT";
            break;
          case -1009:
            v2 = "SET_DEBUG_KEY_ROSE_COMMAND_FAILED";
            break;
          case -1008:
            v2 = "GET_KEY_RETURNED_WRONG_UWB_SESSION_ID";
            break;
          case -1007:
            v2 = "GET_KEY_ROSE_COMMAND_FAILED";
            break;
          case -1006:
            v2 = "GET_CAPABILITIES_TIMED_OUT";
            break;
          case -1005:
            v2 = "GET_CAPABILITIES_ROSE_COMMAND_FAILED";
            break;
          case -1004:
            v2 = "INTERNAL_ERROR_NO_RESULT_PAYLOAD";
            break;
          case -1003:
            v2 = "UNKNOWN_HSI_STATUS_CODE";
            break;
          case -1002:
            v2 = "GET_KEY_TIMED_OUT";
            break;
          case -1001:
            v2 = "RANGE_ENABLE_TIMED_OUT";
            break;
          case -1000:
            v2 = "FAILURE";
            break;
          default:
            goto LABEL_10;
        }

        break;
    }
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_1003A0BA8(unsigned int a1)
{
  if (a1 > 0x73)
  {
    return 4294966293;
  }

  else
  {
    return dword_10056E2C4[a1];
  }
}

uint64_t sub_1003A0BE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A2E04(a1 + 64, a6);
  sub_1003A2E9C(a1 + 96, a7);
  sub_1003A2F34(a1 + 128, a8);
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 3;
  if (!*a1)
  {
    v16 = "_parameterNegotiator";
    v17 = 56;
    goto LABEL_20;
  }

  if (!*(a1 + 16))
  {
    v16 = "_rangingLimitManager";
    v17 = 57;
    goto LABEL_20;
  }

  if (!*(a1 + 32))
  {
    v16 = "_uwbSystem";
    v17 = 58;
    goto LABEL_20;
  }

  if (!*(a1 + 88))
  {
    v16 = "_rangeEnableCallback";
    v17 = 59;
    goto LABEL_20;
  }

  if (!*(a1 + 120))
  {
    v16 = "_rangeDisableCallback";
    v17 = 60;
LABEL_20:
    __assert_rtn("StateMachine", "AlishaStateMachine.cpp", v17, v16);
  }

  return a1;
}

void sub_1003A0D40(_Unwind_Exception *a1)
{
  sub_1003A304C((v1 + 12));
  sub_1003A2FCC((v1 + 8));
  v3 = v1[7];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = v1[3];
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = v1[1];
  if (v6)
  {
    sub_10000AD84(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A0DB0(void *a1)
{
  sub_1003A0E44(a1);
  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v2)
  {
    sub_10000AD84(v2);
  }

  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v3)
  {
    sub_10000AD84(v3);
  }

  v4 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  if (v5)
  {
    sub_10000AD84(v5);
  }

  sub_1003A30CC((a1 + 8));
  sub_1003A3150((a1 + 12));

  return sub_1003A31D4((a1 + 16));
}

uint64_t sub_1003A0E44(uint64_t a1)
{
  v2 = *(a1 + 160);
  if ((v2 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 160))
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2 == 5)
  {
LABEL_4:
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 152))
  {
    sub_1003A2CD0(a1 + 128, v2, 0);
  }

  *(a1 + 160) = 0;
LABEL_10:
  sub_100397130(*a1);
  if (*(a1 + 168) == 1)
  {
    *(a1 + 168) = 0;
  }

  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  *(a1 + 188) = 3;
  if (!v3)
  {
    return 0;
  }

  v4 = sub_1003A19FC(a1, 3);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A03C4(v4, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#alisha-sm,_resetToInitialState called while ranging. rangeDisable returns status code %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

uint64_t sub_1003A0FB8(uint64_t a1, uint64_t *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v5 = v13 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK cap RQ in state %s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = sub_1003A0E44(a1);
  if (v6)
  {
    sub_1003A0E44(a1);
    LODWORD(__p) = v6;
    *(&__p + 4) = 0;
    return v6;
  }

  else
  {
    sub_1003A2D48(&__p, a2, a2 + 3, a2 + 6);
    v8 = sub_1003975AC(*a1, &__p);
    if ((*&v9 & 0x10000) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1004;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1003A0E44(a1);
      *buf = v11;
      *&buf[4] = 0;
      v18[0] = v11;
    }

    else
    {
      if ((v9 & 0x10000) == 0)
      {
        sub_1000195BC();
      }

      LODWORD(v18[0]) = 0;
      *(v18 + 4) = HIDWORD(v8) & 0xFFFF0000 | WORD2(v8) | (v9 << 32) | 0x1000000000000;
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    return v18[0];
  }
}

void sub_1003A1180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10039A168(va);
  _Unwind_Resume(a1);
}

void sub_1003A11A4(uint64_t a1@<X0>, int *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v9 = v33 >= 0 ? __p : *__p;
    *buf = 136315138;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK session RQ in state %s", buf, 0xCu);
    if (v33 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 160))
  {
    sub_1003A0E44(a1);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(*v10 + 16))(v10, 0);
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(*v11 + 104))(v11);
    }
  }

  v12 = a2[1];
  (*(**(a1 + 32) + 24))(__p);
  v13 = *__p;
  v14 = v32;
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(*v15 + 112))(v15);
  }

  if (v13 || (v14 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6DA8();
    }

    sub_1003A0E44(a1);
    *a4 = -3012;
    *(a4 + 4) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a1 + 164) = a2[1];
    *(a1 + 168) = 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_24;
    }

    v16 = *(a1 + 184);
    *(a1 + 172) = *&__p[4];
    *(a1 + 180) = v31;
    if ((v16 & 1) == 0)
    {
      *(a1 + 184) = 1;
    }

    v17 = *(a2 + 4);
    v27 = *a2;
    v28 = v17;
    v29 = a3;
    sub_10039778C(*a1, &v27, buf);
    if (*buf || (v38 & 1) == 0)
    {
      if (v38)
      {
        v20 = 0;
      }

      else
      {
        v20 = -1004;
      }

      if (*buf)
      {
        v21 = *buf;
      }

      else
      {
        v21 = v20;
      }

      sub_1003A0E44(a1);
      v22 = 0;
      *a4 = v21;
      *(a4 + 4) = 0;
    }

    else
    {
      v18 = *(a1 + 160);
      if (v18 != 1)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v18, 1);
          v19 = v38;
          *(a1 + 160) = 1;
          if ((v19 & 1) == 0)
          {
LABEL_24:
            sub_1000195BC();
          }
        }

        else
        {
          *(a1 + 160) = 1;
        }
      }

      v22 = 1;
      v23 = 1 << v36;
      v24 = v35;
      v25 = HIDWORD(v35);
      v26 = v37;
      *a4 = 0;
      *(a4 + 4) = v24;
      *(a4 + 8) = v25;
      *(a4 + 12) = v23;
      *(a4 + 13) = v26;
    }

    *(a4 + 16) = v22;
  }
}

uint64_t sub_1003A14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v9 = (SBYTE7(v30) & 0x80u) == 0 ? &__p : __p;
    *buf = 136315138;
    *v38 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK session setup RQ in state %s", buf, 0xCu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 160) != 1)
  {
    result = sub_1003A0E44(a1);
    v17 = -3008;
LABEL_23:
    *a4 = v17;
    goto LABEL_24;
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v17 = -3002;
    goto LABEL_23;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v17 = -3003;
    goto LABEL_23;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 4);
  v33[0] = *a2;
  v33[1] = v11;
  v34 = v10;
  v35 = a3;
  sub_100397AE8(*a1, v33, &__p);
  v12 = __p;
  v13 = v32;
  if (!__p && (v32 & 1) != 0)
  {
    if ((*(**(a1 + 16) + 16))(*(a1 + 16)))
    {
      v14 = *(a1 + 160);
      if (v14 != 2)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v14, 2);
        }

        *(a1 + 160) = 2;
      }

      result = *(a1 + 48);
      if (result)
      {
        result = (*(*result + 40))(result);
      }

      v16 = 0;
      goto LABEL_37;
    }

    if ((v32 & 1) == 0 || (*(a1 + 168) & 1) == 0)
    {
      goto LABEL_47;
    }

    v26 = *(a1 + 164);
    v27 = v30;
    v36 = v31;
    v18 = *(a1 + 88);
    if (!v18)
    {
      sub_100037B10();
    }

    (*(*v18 + 48))(buf);
    v12 = *buf;
    v13 = v39;
    if (!*buf && (v39 & 1) != 0)
    {
      v19 = *a1;
      v36 = *&v38[4];
      v16 = sub_1003974B4(v19, &v36);
      v20 = *(a1 + 160);
      if (v20 != 3)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v20, 3);
        }

        *(a1 + 160) = 3;
      }

      (*(**(a1 + 16) + 32))(*(a1 + 16));
      result = *(a1 + 48);
      if (result)
      {
        result = (*(*result + 24))(result, BYTE9(v27), v27, BYTE6(v27));
      }

LABEL_37:
      if (v32 & 1) != 0 && (*(a1 + 184))
      {
        v21 = v29;
        v22 = *(a1 + 176);
        v23 = *(a1 + 180);
        *(a1 + 184) = 0;
        *a4 = 0;
        *(a4 + 8) = v22;
        *(a4 + 16) = v16;
        *(a4 + 24) = v23;
        *(a4 + 28) = v21;
        *(a4 + 32) = 1;
        return result;
      }

LABEL_47:
      sub_1000195BC();
    }
  }

  if (v13)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1004;
  }

  if (v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v24;
  }

  result = sub_1003A0E44(a1);
  *a4 = v25;
LABEL_24:
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_1003A1844(uint64_t a1, _DWORD *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK suspend RQ in state %s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 160);
  if ((v6 - 3) >= 2)
  {
    if (v6 == 1)
    {
      sub_1003A0E44(a1);
      return 4294964296;
    }

    if (v6 != 2)
    {
      return 0x10000000000;
    }

    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }

    v7 = a1 + 128;
    LOBYTE(v8) = 2;
    goto LABEL_12;
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    v9 = 4294964294;
    sub_1003A0E44(a1);
    return v9;
  }

  if (*(a1 + 164) != *a2)
  {
    sub_1003A0E44(a1);
    return 4294964295;
  }

  v10 = sub_1003A19FC(a1, 2);
  if (v10)
  {
    LODWORD(v9) = v10;
    sub_1003A0E44(a1);
    return v9;
  }

  v8 = *(a1 + 160);
  if (v8 != 5)
  {
    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }

    v7 = a1 + 128;
LABEL_12:
    sub_1003A2CD0(v7, v8, 5);
LABEL_13:
    *(a1 + 160) = 5;
  }

  return 0x10000000000;
}

uint64_t sub_1003A19FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
    sub_100037B10();
  }

  (*(*v3 + 48))(&v8);
  v5 = v8;
  (*(**(a1 + 16) + 40))(*(a1 + 16));
  v6 = *(a1 + 48);
  if (v6)
  {
    if (v12 == 1)
    {
      (*(*v6 + 120))(v6, &v9);
      v6 = *(a1 + 48);
    }

    (*(*v6 + 32))(v6, a2);
  }

  if (v12 == 1 && __p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1003A1B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    sub_1004C6E34(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A1B3C@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v7 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK recovery RQ in state %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  result = sub_1003A1C9C(a1, 1, *a2, buf, &__p);
  if (__p || (v18 & 1) == 0)
  {
    if (v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1004;
    }

    if (__p)
    {
      v13 = __p;
    }

    else
    {
      v13 = v12;
    }

    result = sub_1003A0E44(a1);
    v11 = 0;
    *a3 = v13;
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = v15;
    v10 = v17;
    *a3 = 0;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    v11 = 1;
  }

  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1003A1C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  if ((a2 - 3) <= 0xFDu)
  {
    sub_1004C6EEC();
  }

  v10 = *(a1 + 160);
  if (v10 > 2)
  {
    if (v10 != 4)
    {
      if (v10 != 3)
      {
        goto LABEL_14;
      }

      v12 = sub_1003A19FC(a1, 3);
      if (v12)
      {
        v13 = v12;
        result = sub_1003A0E44(a1);
        *a5 = v13;
LABEL_35:
        *(a5 + 8) = 0;
        *(a5 + 40) = 0;
        return result;
      }

      v11 = *(a1 + 160);
      if (v11 == 5)
      {
        goto LABEL_14;
      }

      if (*(a1 + 152))
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_12:
    result = sub_1003A0E44(a1);
    v15 = -3005;
LABEL_34:
    *a5 = v15;
    goto LABEL_35;
  }

  if (v10 < 2)
  {
    goto LABEL_12;
  }

  if (*(a1 + 152))
  {
    LOBYTE(v11) = 2;
LABEL_6:
    sub_1003A2CD0(a1 + 128, v11, 5);
  }

LABEL_7:
  *(a1 + 160) = 5;
LABEL_14:
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(*v16 + 16))(v16, a2);
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v15 = -3002;
    goto LABEL_34;
  }

  if (*(a1 + 164) != a3)
  {
    result = sub_1003A0E44(a1);
    v15 = -3006;
    goto LABEL_34;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(*v17 + 104))(v17);
  }

  (*(**(a1 + 32) + 24))(&v41);
  v18 = v41;
  v19 = v44;
  v20 = *(a1 + 48);
  if (v20)
  {
    (*(*v20 + 112))(v20);
  }

  if (v18 || (v19 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6E60();
    }

    result = sub_1003A0E44(a1);
    v15 = -3013;
    goto LABEL_34;
  }

  v21.n128_f64[0] = sub_100397F80(*a1, a4, &v36);
  v22 = v36;
  v23 = v40;
  if (v36 || (v40 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (a4[1] == 1 && (v37 & 0x100) == 0)
  {
    result = sub_1003A0E44(a1);
    v15 = -3004;
    goto LABEL_34;
  }

  if ((*(**(a1 + 16) + 16))(*(a1 + 16), v21))
  {
    v24 = *(a1 + 160);
    if (v24 != 2)
    {
      if (*(a1 + 152))
      {
        sub_1003A2CD0(a1 + 128, v24, 2);
      }

      *(a1 + 160) = 2;
    }

    result = *(a1 + 48);
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v25 = 0;
    goto LABEL_56;
  }

  if ((v40 & 1) == 0 || (*(a1 + 168) & 1) == 0)
  {
LABEL_67:
    sub_1000195BC();
  }

  v34 = *(a1 + 164);
  v35 = v38;
  v45 = v39;
  sub_1003A3258(a1 + 64);
  v22 = v31;
  v23 = v33;
  if (v31 || (v33 & 1) == 0)
  {
LABEL_59:
    if (v23)
    {
      v29 = 0;
    }

    else
    {
      v29 = -1004;
    }

    if (v22)
    {
      v30 = v22;
    }

    else
    {
      v30 = v29;
    }

    result = sub_1003A0E44(a1);
    *a5 = v30;
    goto LABEL_35;
  }

  v26 = *a1;
  v45 = v32;
  v25 = sub_1003974B4(v26, &v45);
  v27 = *(a1 + 160);
  if (v27 != 3)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, v27, 3);
    }

    *(a1 + 160) = 3;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*result + 24))(result, BYTE9(v35), v35, BYTE6(v35));
  }

LABEL_56:
  if ((v40 & 1) == 0 || (v44 & 1) == 0)
  {
    goto LABEL_67;
  }

  v28 = v37;
  *(a5 + 8) = v42;
  *(a5 + 16) = v43;
  *a5 = 0;
  *(a5 + 24) = v25;
  *(a5 + 32) = v28;
  *(a5 + 40) = 1;
  return result;
}

uint64_t sub_1003A2100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v7 = v17 >= 0 ? &__p : __p;
    *buf = 136315138;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK configurable recovery RQ in state %s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = *(a2 + 4) | 0x100;
  result = sub_1003A1C9C(a1, 2, *a2, buf, &__p);
  if (__p || (v21 & 1) == 0)
  {
    if (v21)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1004;
    }

    if (__p)
    {
      v14 = __p;
    }

    else
    {
      v14 = v13;
    }

    result = sub_1003A0E44(a1);
    v12 = 0;
    *a3 = v14;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      sub_1004C7000();
    }

    v9 = v19;
    v10 = v16;
    v11 = v18;
    *a3 = 0;
    *(a3 + 8) = v9;
    *(a3 + 12) = v10;
    *(a3 + 16) = v11;
    v12 = 1;
  }

  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_1003A227C(uint64_t a1, _BYTE *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v5 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK suspend RS in state %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 160);
  if (*(a1 + 160) <= 3u)
  {
    if ((v6 - 1) < 3)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C702C(v6, v7);
      }

      return 4294964287;
    }

    if (*(a1 + 160))
    {
      return v4;
    }

    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      sub_1003A0BC8(v6, __p);
      v10 = v15 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#alisha-sm,processDCKSuspendRS: ignoring suspend response in state %s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (v6 != 4)
  {
    return v4;
  }

  if (*a2)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 4, 3);
    }

    v4 = 0;
    v8 = 3;
    goto LABEL_18;
  }

  v12 = sub_1003A19FC(a1, *(a1 + 188));
  if (!v12)
  {
    v13 = *(a1 + 160);
    if (v13 == 5)
    {
      return 0;
    }

    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, v13, 5);
    }

    v4 = 0;
    v8 = 5;
LABEL_18:
    *(a1 + 160) = v8;
    return v4;
  }

  v4 = v12;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C70CC();
  }

  return v4;
}

void sub_1003A24D0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(v33, off_1009A8AF8[a2]);
    v7 = SBYTE3(v37);
    v8 = *v33;
    sub_1003A0BC8(*(a1 + 160), __p);
    v9 = v33;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v32 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v39 = v9;
    v40 = 2080;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Suspend on timeout event %s in state %s", buf, 0x16u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE3(v37) < 0)
    {
      operator delete(*v33);
    }
  }

  if (a2 > 3)
  {
    if (a2 == 5)
    {
      if (*(a1 + 160) != 4)
      {
        goto LABEL_63;
      }

      v17 = sub_1003A19FC(a1, *(a1 + 188));
      if (v17)
      {
LABEL_54:
        sub_1003A0E44(a1);
        v15 = 0;
        *a3 = v17;
        goto LABEL_64;
      }

      v20 = *(a1 + 160);
      if (v20 == 5)
      {
        goto LABEL_63;
      }

      if (*(a1 + 152))
      {
LABEL_61:
        sub_1003A2CD0(a1 + 128, v20, 5);
      }

LABEL_62:
      *(a1 + 160) = 5;
      goto LABEL_63;
    }

    if (a2 != 4)
    {
      return;
    }

    v11 = *(a1 + 160);
LABEL_21:
    if (v11 <= 2)
    {
      if ((v11 - 1) < 2)
      {
        v14 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        sub_1003A2AA0(a2, v33);
        v27 = SBYTE3(v37);
        v28 = *v33;
        sub_1003A0BC8(*(a1 + 160), __p);
        v29 = v33;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if (v32 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        *buf = 136315394;
        v39 = v29;
        v40 = 2080;
        v41 = v30;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#alisha-sm,suspendOnTimeout error: %s event is received but state is %s", buf, 0x16u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if ((SBYTE3(v37) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_86;
      }

LABEL_63:
      v15 = 0;
      *a3 = 0;
      goto LABEL_64;
    }

    if (v11 == 5)
    {
      goto LABEL_63;
    }

    if (v11 != 4)
    {
      if (v11 != 3)
      {
        goto LABEL_63;
      }

      v17 = sub_1003A19FC(a1, *(a1 + 188));
      if (v17)
      {
        goto LABEL_54;
      }

      v21 = *(a1 + 160);
      if (v21 == 5)
      {
LABEL_31:
        *a3 = 0;
        *(a3 + 4) = 117440514;
        v15 = 1;
        *(a3 + 8) = 1;
        *(a3 + 10) = 0;
        *(a3 + 12) = 1;
LABEL_65:
        *(a3 + 16) = v15;
        return;
      }

      if (*(a1 + 152))
      {
        sub_1003A2CD0(a1 + 128, v21, 5);
      }

LABEL_30:
      *(a1 + 160) = 5;
      goto LABEL_31;
    }

    v17 = sub_1003A19FC(a1, *(a1 + 188));
    if (v17)
    {
      goto LABEL_54;
    }

    v20 = *(a1 + 160);
    if (v20 == 5)
    {
      goto LABEL_63;
    }

    if (*(a1 + 152))
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if ((a2 - 2) < 2)
  {
    v11 = *(a1 + 160);
    if (v11 <= 5)
    {
      v12 = 1 << v11;
      if ((v12 & 0x31) == 0)
      {
        if ((v12 & 6) == 0)
        {
          if (*(a1 + 168))
          {
            *(a1 + 188) = a2 != 2;
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, 3, 4);
              v19 = *(a1 + 168);
              *(a1 + 160) = 4;
              if ((v19 & 1) == 0)
              {
                sub_1000195BC();
              }
            }

            else
            {
              *(a1 + 160) = 4;
            }

            v22 = *(a1 + 164);
            *a3 = 0;
            *(a3 + 4) = v22;
            *(a3 + 12) = 0;
            v15 = 1;
            goto LABEL_65;
          }

          sub_1003A0E44(a1);
          v15 = 0;
          v16 = -3002;
          goto LABEL_25;
        }

        v13 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        sub_1003A2AA0(a2, v33);
        v23 = SBYTE3(v37);
        v24 = *v33;
        sub_1003A0BC8(*(a1 + 160), __p);
        v25 = v33;
        if (v23 < 0)
        {
          v25 = v24;
        }

        v26 = v32 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v39 = v25;
        v40 = 2080;
        v41 = v26;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#alisha-sm,suspendOnTimeout error: %s event is received but state is %s", buf, 0x16u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if ((SBYTE3(v37) & 0x80000000) == 0)
        {
LABEL_24:
          sub_1003A0E44(a1);
          v15 = 0;
          v16 = -3010;
LABEL_25:
          *a3 = v16;
LABEL_64:
          *(a3 + 4) = 0;
          goto LABEL_65;
        }

LABEL_86:
        operator delete(*v33);
        goto LABEL_24;
      }

      goto LABEL_63;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if (*(a1 + 160) != 2)
    {
      goto LABEL_63;
    }

    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 2, 5);
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C7158(v18, v33);
      v18 = *v33;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315650;
      *&v33[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/AlishaSupport/AlishaStateMachine.cpp";
      v34 = 1024;
      v35 = 525;
      v36 = 2080;
      v37 = "suspendOnTimeout";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#alisha-sm,%s:%d: assertion failure in %s", v33, 0x1Cu);
    }

    abort();
  }
}

void sub_1003A2A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A2AB4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v3 = v11 >= 0 ? __p : *__p;
    *buf = 136315138;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Stop ranging in state %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(*__p);
    }
  }

  v4 = *(a1 + 160);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3u:
        v5 = sub_1003A19FC(a1, 3);
        if (!v5)
        {
          v6 = *(a1 + 160);
          if (v6 != 5)
          {
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, v6, 5);
            }

            *(a1 + 160) = 5;
          }

          goto LABEL_23;
        }

        break;
      case 4u:
        v5 = sub_1003A19FC(a1, *(a1 + 188));
        if (!v5)
        {
          v9 = *(a1 + 160);
          if (v9 != 5)
          {
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, v9, 5);
            }

            *(a1 + 160) = 5;
          }

          goto LABEL_25;
        }

        break;
      case 5u:
        goto LABEL_25;
      default:
        return v12[0];
    }

    v7 = v5;
    sub_1003A0E44(a1);
    *__p = v7;
    *&__p[4] = 0;
    v12[0] = v7;
    return v12[0];
  }

  if (!*(a1 + 160))
  {
LABEL_25:
    LODWORD(v12[0]) = 0;
    *(v12 + 4) = 0;
    return v12[0];
  }

  if (v4 == 1)
  {
    sub_1003A0E44(a1);
    goto LABEL_25;
  }

  if (v4 == 2)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 2, 5);
    }

    *(a1 + 160) = 5;
LABEL_23:
    LODWORD(v12[0]) = 0;
    *(v12 + 4) = 0x100000107000002;
  }

  return v12[0];
}

uint64_t sub_1003A2CD0(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void *sub_1003A2D48(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FBC68(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001FBC68((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 1);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100009A48((a1 + 6), *a4, a4[1], a4[1] - *a4);
  return a1;
}

void sub_1003A2DD0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A2E04(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2E9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2F34(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2FCC(uint64_t a1)
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

uint64_t sub_1003A304C(uint64_t a1)
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

uint64_t sub_1003A30CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A3150(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A31D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A3258(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1003A32B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = sub_1003A455C(a1, a2);
  sub_1003A2F34(v11 + 32, a3);
  v12 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v13 = a5[1];
  *(a1 + 96) = *a5;
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  *(a1 + 112) = *a6;
  *(a1 + 120) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7230(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (!*(a1 + 24))
  {
    v24 = "_constructSessionCallback";
    v25 = 31;
    goto LABEL_18;
  }

  if (!*(a1 + 64))
  {
    v24 = "_uwbSystem";
    v25 = 32;
    goto LABEL_18;
  }

  if (!*(a1 + 96))
  {
    v24 = "_paramNegotiator";
    v25 = 33;
    goto LABEL_18;
  }

  if (!*(a1 + 112))
  {
    v24 = "_rangingLimitManager";
    v25 = 34;
LABEL_18:
    __assert_rtn("AcwgManager", "AcwgManager.cpp", v25, v24);
  }

  return a1;
}

uint64_t sub_1003A3494(void *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C72A8(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_1003A3558(a1);
  sub_100021914((a1 + 18));
  v10 = a1[17];
  a1[17] = 0;
  if (v10)
  {
    operator delete();
  }

  sub_1003A3664(a1 + 16, 0);
  v11 = a1[15];
  if (v11)
  {
    sub_10000AD84(v11);
  }

  v12 = a1[13];
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v13 = a1[11];
  if (v13)
  {
    sub_10000AD84(v13);
  }

  v14 = a1[9];
  if (v14)
  {
    sub_10000AD84(v14);
  }

  sub_1001FF1A0((a1 + 4));
  return sub_1001FF220(a1);
}

uint64_t sub_1003A3558(void *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7320(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = a1[16];
  if (v10)
  {
    sub_1003A0DB0(v10);
    sub_1003A3664(a1 + 16, 0);
  }

  if (a1[10])
  {
    sub_1003A3704(a1, v16);
    if (v19 == 1)
    {
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }
  }

  v11 = a1[17];
  a1[17] = 0;
  if (v11)
  {
    operator delete();
  }

  sub_100022400(a1 + 18);
  v12 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v13 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  if (v13)
  {
    sub_10000AD84(v13);
  }

  v14 = a1[15];
  a1[14] = 0;
  a1[15] = 0;
  if (v14)
  {
    sub_10000AD84(v14);
  }

  sub_1003A45F4(a1);
  return sub_1003A31D4((a1 + 4));
}

void *sub_1003A3664(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1001FF1A0((v2 + 16));
    sub_1003A304C((v2 + 12));
    sub_1003A2FCC((v2 + 8));
    v3 = v2[7];
    if (v3)
    {
      sub_10000AD84(v3);
    }

    v4 = v2[5];
    if (v4)
    {
      sub_10000AD84(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      sub_10000AD84(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      sub_10000AD84(v6);
    }

    operator delete();
  }

  return result;
}

void sub_1003A3704(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7398(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    (*(*v12 + 32))(v12);
    v13 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v13)
    {
      sub_10000AD84(v13);
    }
  }

  else
  {
    v14[0] = 0;
    v17 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), v14);
    if (v17 == 1 && __p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void sub_1003A37D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A37F8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7410(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  if (!*(a1 + 128))
  {
    operator new();
  }

  if (!*(a1 + 136))
  {
    operator new();
  }

  return 0;
}

void sub_1003A3A80(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1001FF1A0(va);
  sub_1003A304C(va1);
  sub_1003A2FCC(v9 - 72);
  if (a3)
  {
    sub_10000AD84(a3);
  }

  if (a5)
  {
    sub_10000AD84(a5);
  }

  if (a7)
  {
    sub_10000AD84(a7);
  }

  if (a9)
  {
    sub_10000AD84(a9);
  }

  operator delete();
}

uint64_t sub_1003A3AF8(uint64_t a1, char a2, char a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 136315138;
    *&v14[4] = "_stateChangedHandler";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#acwg-mgr,In method: '%s'", v14, 0xCu);
    v6 = qword_1009F9820;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(a2, v14);
    v7 = v15;
    v8 = *v14;
    sub_1003A0BC8(a3, __p);
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
    v17 = v9;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#acwg-mgr,State machine state changed handler. Old state: %s. New state: %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*v14);
    }
  }

  return sub_1003A2CD0(a1 + 32, a2, a3);
}

void sub_1003A3C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A3CB0(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7488(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 128);
  if (!v10)
  {
    sub_1004C7500();
  }

  v11 = sub_1003A2AB4(v10);
  return sub_1003A3D14(a1, v11);
}

uint64_t sub_1003A3D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_1003A6E4C(*(a1 + 136), a2);
  if ((v3 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  if (BYTE4(v2) == 3)
  {
    if ((v3 & 0x10000) != 0)
    {
      if (BYTE1(v3) < 3u)
      {
        return 4294967196;
      }

      goto LABEL_3;
    }

LABEL_36:
    sub_1000195BC();
  }

  if (BYTE4(v2) == 2)
  {
    if (v3)
    {
      if (HIBYTE(v2) - 1) < 7u && ((0x69u >> (HIBYTE(v2) - 1)))
      {
        return dword_10056E934[(HIBYTE(v2) - 1)];
      }

      goto LABEL_3;
    }

    goto LABEL_36;
  }

  if (BYTE4(v2) != 1)
  {
    goto LABEL_3;
  }

  if ((v2 & 0x1000000000000) == 0)
  {
    goto LABEL_36;
  }

  if (BYTE5(v2) == 2)
  {
    return 4294967196;
  }

  if (BYTE5(v2) == 255 || BYTE5(v2) == 133)
  {
    return 4294967194;
  }

LABEL_3:
  v4 = 0;
  if (v2 <= -1034)
  {
    if ((v2 + 4026) >= 0x1B)
    {
      if ((v2 + 2024) > 0x18)
      {
        if ((v2 + 3013) >= 0xE)
        {
          return v4;
        }
      }

      else if (((1 << (v2 - 24)) & 0x73FFEF) != 0)
      {
        return 4294967194;
      }
    }

    return 4294967196;
  }

  if ((v2 + 1033) < 0x22)
  {
    return 4294967196;
  }

  v5 = (v2 - 6) > 0x3B || ((1 << (v2 - 6)) & 0xF0FFC0206C3F1C5) == 0;
  if (!v5 || (v2 - 71) <= 0x2C && ((1 << (v2 - 71)) & 0x1E00780001FFLL) != 0)
  {
    return 4294967196;
  }

  return v4;
}

void sub_1003A3E90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C752C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  LOWORD(v37[0]) = *(a2 + 58);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_1001FE45C(&v42, v37, v37 + 2, 1);
  sub_10039AF98(v37, &v42, a2, (a2 + 24));
  v14 = sub_1003A0FB8(*(a1 + 128), v37);
  v16 = v15;
  v17 = sub_1003A3D14(a1, v14);
  if (v17)
  {
    *a3 = v17;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    if ((v16 & 0x10000) == 0)
    {
      sub_1000195BC();
    }

    v18 = HIDWORD(v14);
    v19 = HIWORD(v14);
    v20 = *(a2 + 52);
    v21 = *(a2 + 48);
    LOWORD(v34[0]) = v18;
    HIWORD(v34[0]) = v19;
    v34[1] = v20;
    v35 = v16;
    v36 = v21;
    sub_1003A11A4(*(a1 + 128), v34, *(a2 + 56), &v28);
    v22 = sub_1003A3D14(a1, v28);
    if (v22)
    {
      v23 = 0;
      *a3 = v22;
      *(a3 + 4) = 0;
    }

    else
    {
      if ((v33 & 1) == 0)
      {
        sub_1000195BC();
      }

      v24 = v29;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      *a3 = 0;
      *(a3 + 4) = v19;
      *(a3 + 6) = v16;
      *(a3 + 7) = v26;
      *(a3 + 8) = v25;
      *(a3 + 12) = v24;
      v23 = 1;
      *(a3 + 14) = v27;
    }

    *(a3 + 16) = v23;
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_1003A4050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10039A168(va);
  v7 = *(v5 - 72);
  if (v7)
  {
    *(v5 - 64) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C75A4(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 4);
  v27[0] = *a2;
  v27[1] = v15;
  v28 = v14;
  sub_1003A14CC(*(a1 + 128), v27, *(a2 + 9) | 0x100, v22);
  result = sub_1003A3D14(a1, v22[0]);
  if (result)
  {
    v17 = 0;
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v26 & 1) == 0)
    {
      sub_1000195BC();
    }

    v18 = v22[2];
    v19 = v23;
    v20 = v24;
    v21 = v25;
    *a3 = 0;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    *(a3 + 28) = v21;
    v17 = 1;
  }

  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_1003A4168@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C761C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v21 = a2;
  sub_1003A1B3C(*(a1 + 128), &v21, v18);
  result = sub_1003A3D14(a1, v18[0]);
  if (result)
  {
    v15 = 0;
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      sub_1000195BC();
    }

    v16 = v18[2];
    v17 = v19;
    *a3 = 0;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    v15 = 1;
  }

  *(a3 + 24) = v15;
  return result;
}

void sub_1003A4224(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7694(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  sub_100397178(*(a1 + 96), a2, a3);
}

uint64_t sub_1003A428C(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1003A42BC(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C770C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    sub_1004C7784();
  }

  return (*(*v10 + 32))(v10, a1 + 144);
}

uint64_t sub_1003A4338(uint64_t a1, unsigned int a2, int *a3)
{
  v16 = a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C77B0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  (*(**(a1 + 64) + 24))(&v15);
  v13 = v15;
  if (!v15)
  {
    sub_1003A4DE0((a1 + 144), &v16);
    v13 = v15;
  }

  *a3 = v13;
  return sub_1003A3D14(a1, v13);
}

uint64_t sub_1003A43F4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "handleUWBSystemError";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#acwg-mgr,In method: '%s'", &v5, 0xCu);
    v2 = qword_1009F9820;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#acwg-mgr,handleUWBSystemError", &v5, 2u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_10039711C(v3);
  }

  sub_100022400((a1 + 144));
  return 0;
}

_BYTE *sub_1003A4500@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 <= -102)
  {
    if (a1 == -103)
    {
      v2 = "URSK_UNAVAILABLE";
    }

    else
    {
      v2 = "WRONG_PARAMETERS";
    }
  }

  else if (a1 == -101)
  {
    v2 = "RESOURCE_UNAVAILABLE";
  }

  else if (a1)
  {
    v2 = "UNKNOWN_ERROR";
  }

  else
  {
    v2 = "SUCCESS";
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_1003A455C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A45F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A46E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8B38;
  a2[1] = v2;
  return result;
}

void sub_1003A4714(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4[3])
  {
    sub_1004C7828();
  }

  v5 = *a2;
  if (v4[10])
  {
    sub_1003A3704(*(a1 + 8), v19);
    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }
  }

  v6 = v4[3];
  if (!v6)
  {
    sub_100037B10();
  }

  (*(*v6 + 48))(v16);
  v7 = v16[0];
  if (LODWORD(v16[0]) || (v18 & 1) == 0)
  {
    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1004;
    }

    if (!LODWORD(v16[0]))
    {
      v7 = v11;
    }

    goto LABEL_25;
  }

  v8 = v16[1];
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v4[11];
  v4[10] = v8;
  v4[11] = v9;
  if (v10)
  {
    sub_10000AD84(v10);
    v8 = v4[10];
  }

  if (!v8)
  {
    v7 = -1013;
LABEL_25:
    *a3 = v7;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_26;
  }

  (*(*v8 + 24))(v8, v5);
  if (*a3)
  {
    sub_1003A3704(v4, v12);
    if (v15 == 1 && v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v12[0] = (*(*v4[10] + 16))(v4[10]);
    sub_1003A4958(v4 + 18, v12);
  }

LABEL_26:
  if (v18 == 1)
  {
    if (v17)
    {
      sub_10000AD84(v17);
    }
  }
}

void sub_1003A48E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a21 == 1)
  {
    if (a20)
    {
      sub_10000AD84(a20);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A490C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003A4958(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

__n128 sub_1003A4C04(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8BC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A4C3C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1003A4C64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003A4D2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8C88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A4D64(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t sub_1003A4D94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003A4DE0(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t sub_1003A5010(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_1003A5050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = sub_1003A455C(a1, a2);
  sub_1003A2F34(v16 + 32, a3);
  v17 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v18 = a5[1];
  *(a1 + 96) = *a5;
  *(a1 + 104) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = a6[1];
  *(a1 + 112) = *a6;
  *(a1 + 120) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a7[1];
  *(a1 + 128) = *a7;
  *(a1 + 136) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a8[1];
  *(a1 + 144) = *a8;
  *(a1 + 152) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  v22 = a9[1];
  *(a1 + 216) = *a9;
  *(a1 + 224) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  if (!*(a1 + 24))
  {
    v24 = "_constructSessionCallback";
    v25 = 34;
    goto LABEL_24;
  }

  if (!*(a1 + 64))
  {
    v24 = "_system";
    v25 = 35;
    goto LABEL_24;
  }

  if (!*(a1 + 96))
  {
    v24 = "_dckCoder";
    v25 = 36;
    goto LABEL_24;
  }

  if (!*(a1 + 112))
  {
    v24 = "_paramNegotiator";
    v25 = 37;
    goto LABEL_24;
  }

  if (!*(a1 + 128))
  {
    v24 = "_rangingLimitManager";
    v25 = 38;
LABEL_24:
    __assert_rtn("AlishaManager", "AlishaManager.cpp", v25, v24);
  }

  return a1;
}

uint64_t sub_1003A52AC(void *a1)
{
  sub_1003A5374(a1);
  v2 = a1[28];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  sub_100021914((a1 + 22));
  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete();
  }

  sub_1003A3664(a1 + 20, 0);
  v4 = a1[19];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    sub_10000AD84(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    sub_10000AD84(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    sub_10000AD84(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  sub_1001FF1A0((a1 + 4));

  return sub_1001FF220(a1);
}

uint64_t sub_1003A5374(void *a1)
{
  v3 = a1 + 20;
  v2 = a1[20];
  if (v2)
  {
    sub_1003A0DB0(v2);
    sub_1003A3664(v3, 0);
  }

  if (a1[10])
  {
    sub_1003A5488(a1, v12);
    if (v15 == 1)
    {
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  v4 = a1[21];
  a1[21] = 0;
  if (v4)
  {
    operator delete();
  }

  sub_100022400(a1 + 22);
  v5 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  if (v6)
  {
    sub_10000AD84(v6);
  }

  v7 = a1[15];
  a1[14] = 0;
  a1[15] = 0;
  if (v7)
  {
    sub_10000AD84(v7);
  }

  v8 = a1[17];
  a1[16] = 0;
  a1[17] = 0;
  if (v8)
  {
    sub_10000AD84(v8);
  }

  v9 = a1[19];
  a1[18] = 0;
  a1[19] = 0;
  if (v9)
  {
    sub_10000AD84(v9);
  }

  v10 = a1[28];
  a1[27] = 0;
  a1[28] = 0;
  if (v10)
  {
    sub_10000AD84(v10);
  }

  sub_1003A45F4(a1);
  return sub_1003A31D4((a1 + 4));
}

void sub_1003A5488(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v4)
    {

      sub_10000AD84(v4);
    }
  }

  else
  {
    v5[0] = 0;
    v8 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), v5);
    if (v8 == 1 && __p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void sub_1003A553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A555C(uint64_t a1)
{
  if (!*(a1 + 160))
  {
    operator new();
  }

  if (!*(a1 + 168))
  {
    operator new();
  }

  return 0;
}

void sub_1003A57D4(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1001FF1A0(va);
  sub_1003A304C(va1);
  sub_1003A2FCC(v9 - 72);
  if (a3)
  {
    sub_10000AD84(a3);
  }

  if (a5)
  {
    sub_10000AD84(a5);
  }

  if (a7)
  {
    sub_10000AD84(a7);
  }

  if (a9)
  {
    sub_10000AD84(a9);
  }

  operator delete();
}

uint64_t sub_1003A584C(uint64_t a1, char a2, char a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(a2, v14);
    v7 = v15;
    v8 = v14[0];
    sub_1003A0BC8(a3, __p);
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
    v17 = v9;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,State machine state changed handler. Old state: %s. New state: %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  return sub_1003A2CD0(a1 + 32, a2, a3);
}

void sub_1003A598C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A59B0(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 160);
  if (!v3)
  {
    sub_1004C7854();
  }

  v5 = sub_1003A2AB4(v3);
  v19 = v5;
  v20 = v6;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x1000000) == 0;
  }

  if (!v7)
  {
    v8 = *(a1 + 96);
    sub_10039A6B8(&v19 + 4, &v15);
    if (v15)
    {
      v9 = "dckEncodedResult.statusCode == StatusCode::SUCCESS";
      v10 = 143;
    }

    else
    {
      if (v18)
      {
        __p = 0;
        v12 = 0;
        v13 = 0;
        sub_100009A48(&__p, v16, v17, v17 - v16);
        v14 = 1;
        *a2 = 0;
        sub_10039B130((a2 + 2), &__p);
        if (v14 == 1 && __p)
        {
          v12 = __p;
          operator delete(__p);
        }

        if (v18 == 1)
        {
          if (v16)
          {
            v17 = v16;
            operator delete(v16);
          }
        }

        return;
      }

      v9 = "dckEncodedResult.payload.has_value()";
      v10 = 144;
    }

    __assert_rtn("stopRanging", "AlishaManager.cpp", v10, v9);
  }

  *a2 = v5;

  sub_10039B130((a2 + 2), &unk_1009F79A0);
}

void sub_1003A5AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a15)
    {
      operator delete(a15);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A5B44(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[18];
  if (v6)
  {
    (*(*v6 + 16))(v6, a2);
  }

  v7 = sub_1003984A8(a1[12], a2);
  if ((v7 & 0x1000000000000) == 0)
  {
    v8 = a1[27];
    if (v8)
    {
      (*(*v8 + 56))(v8, v7);
    }

    *a3 = v7;
    v9 = a3 + 8;
LABEL_19:

    sub_10039B130(v9, &unk_1009F79A0);
    return;
  }

  if ((v7 & 0xFF00000000) != 0x200000000)
  {
    v11 = a1[27];
    if (v11)
    {
      (*(*v11 + 56))(v11, 4294963293);
    }

    *a3 = -4003;
    v9 = a3 + 8;
    goto LABEL_19;
  }

  v45 = -1000;
  sub_10039B130(&v46, &unk_1009F79A0);
  if (BYTE5(v7) <= 6u)
  {
    if (BYTE5(v7) > 3u)
    {
      switch(BYTE5(v7))
      {
        case 4u:
          goto LABEL_11;
        case 5u:
          v20 = a1[12];
          sub_10039A2C8(a2, &v32);
          v45 = v32;
          if (v34 != 1)
          {
            break;
          }

          sub_1003A14CC(a1[20], &v32 + 4, 0, &v40);
          v45 = v40;
          if (v43 != 1)
          {
            break;
          }

          v21 = a1[12];
          sub_100398D3C(&v42, &v35);
          sub_1003A6270(&v45, &v35);
          if (v39 != 1)
          {
            break;
          }

          v22 = __p;
          if (!__p)
          {
            break;
          }

          v37 = __p;
LABEL_62:
          operator delete(v22);
          break;
        case 6u:
          goto LABEL_11;
      }
    }

    else
    {
      switch(BYTE5(v7))
      {
        case 1u:
          v17 = a1[12];
          sub_100399A5C(a2, &v40);
          v45 = v40;
          if (v44 == 1)
          {
            v32 = sub_1003A0FB8(a1[20], &v42);
            LODWORD(v33) = v18;
            v45 = v32;
            if ((v18 & 0x10000) != 0)
            {
              v19 = a1[12];
              sub_100398558(&v32 + 2, &v35);
              sub_1003A6270(&v45, &v35);
              if (v39 == 1)
              {
                if (__p)
                {
                  v37 = __p;
                  operator delete(__p);
                }
              }
            }
          }

          sub_1003A62A4(&v40);
          break;
        case 2u:
          goto LABEL_11;
        case 3u:
          v12 = a1[12];
          sub_10039A1BC(a2, &v35);
          v45 = v35;
          if (v37 == 1)
          {
            sub_1003A11A4(a1[20], &v35 + 1, 0, &v32);
            v45 = v32;
            if (v34 == 1)
            {
              v13 = a1[12];
              sub_100398830(&v32 + 4, &v40);
              goto LABEL_59;
            }
          }

          break;
      }
    }
  }

  else
  {
    if (BYTE5(v7) <= 0x15u)
    {
      if (((1 << SBYTE5(v7)) & 0x3BFC00) != 0)
      {
LABEL_11:
        v10 = a1[27];
        if (v10)
        {
          (*(*v10 + 56))(v10, 4294963292);
        }

        *a3 = -4004;
        sub_10039B130(a3 + 8, &unk_1009F79A0);
        if ((v48 & 1) != 0 && v46)
        {
          *(&v46 + 1) = v46;
          operator delete(v46);
        }

        return;
      }

      if (BYTE5(v7) == 9)
      {
        v32 = sub_10039A530(a1[12], a2);
        LODWORD(v33) = v26;
        v45 = v32;
        if ((v26 & 1) == 0)
        {
          goto LABEL_63;
        }

        sub_1003A1B3C(a1[20], &v32 + 1, &v35);
        v45 = v35;
        if (v38 != 1)
        {
          goto LABEL_63;
        }

        v27 = a1[12];
        sub_10039958C(&__p, &v40);
        goto LABEL_59;
      }

      if (BYTE5(v7) == 18)
      {
        v32 = sub_10039A5E8(a1[12], a2);
        v33 = v14;
        v45 = v32;
        if ((v14 & 0x100000000) == 0)
        {
          goto LABEL_63;
        }

        sub_1003A2100(a1[20], &v32 + 4, &v35);
        v45 = v35;
        if (v38 != 1)
        {
          goto LABEL_63;
        }

        v15 = a1[12];
        sub_100399784(&__p, &v40);
        goto LABEL_59;
      }
    }

    if (BYTE5(v7) != 7)
    {
      if (BYTE5(v7) == 8)
      {
        v16 = sub_10039A49C(a1[12], a2);
        v40 = v16;
        v41 = WORD2(v16);
        v45 = v16;
        if ((v16 & 0x10000000000) != 0)
        {
          v45 = sub_1003A227C(a1[20], &v41);
        }
      }

      goto LABEL_63;
    }

    v35 = sub_10039A3E4(a1[12], a2);
    LODWORD(__p) = v23;
    v45 = v35;
    if (v23)
    {
      v24 = sub_1003A1844(a1[20], &v35 + 1);
      LODWORD(v32) = v24;
      WORD2(v32) = WORD2(v24);
      v45 = v24;
      if ((v24 & 0x10000000000) != 0)
      {
        v25 = a1[12];
        sub_100399340(&v32 + 4, &v40);
LABEL_59:
        sub_1003A6270(&v45, &v40);
        if (v43 != 1)
        {
          goto LABEL_63;
        }

        v22 = v42.n128_u64[0];
        if (!v42.n128_u64[0])
        {
          goto LABEL_63;
        }

        v42.n128_u64[1] = v42.n128_u64[0];
        goto LABEL_62;
      }
    }
  }

LABEL_63:
  if (v45)
  {
    v35 = sub_1003A6E4C(a1[21], v45);
    LODWORD(__p) = v28;
    v45 = v35;
    if ((v28 & 0x1000000) != 0)
    {
      v29 = a1[12];
      sub_10039A6B8(&v35 + 4, &v40);
      v45 = v40;
      sub_1003A6858(&v46, &v42);
      if (v43 == 1)
      {
        if (v42.n128_u64[0])
        {
          v42.n128_u64[1] = v42.n128_u64[0];
          operator delete(v42.n128_u64[0]);
        }
      }
    }

    v30 = a1[27];
    if (v30)
    {
      if (v45)
      {
        (*(*v30 + 56))(v30);
      }

      else
      {
        if ((BYTE3(__p) & 1) == 0)
        {
          __assert_rtn("processDCKMessage", "AlishaManager.cpp", 308, "evtGenResult.payload.has_value()");
        }

        (*(*v30 + 48))(v30, &v35 + 4);
      }
    }
  }

  v31 = a1[18];
  if (v31 && v48 == 1)
  {
    (*(*v31 + 24))(v31, &v46);
  }

  *a3 = v45;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  if (v48 == 1)
  {
    *(a3 + 8) = v46;
    *(a3 + 24) = v47;
    v47 = 0;
    v46 = 0uLL;
    *(a3 + 32) = 1;
  }
}

void sub_1003A61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v17 - 56) == 1)
  {
    v19 = *(v17 - 80);
    if (v19)
    {
      *(v17 - 72) = v19;
      operator delete(v19);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_1003A6270(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1003A6858((a1 + 2), (a2 + 8));
  return a1;
}

uint64_t sub_1003A62A4(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_1003A6304(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = a1[18];
  if (v8)
  {
    (*(*v8 + 32))(v8, a2);
  }

  sub_100397178(a1[14], a2, &v14);
  *a4 = v14;
  sub_10039B130((a4 + 2), &unk_1009F79A0);
  if (v17 == 1)
  {
    v9 = a1[12];
    sub_10039AB1C(&v15, &v11);
    *a4 = v11;
    sub_1003A6858((a4 + 2), &__p);
    if (v13 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v10 = *(a3 + 24);
    *a3 = v15;
    *(a3 + 16) = v16;
    if ((v10 & 1) == 0)
    {
      *(a3 + 24) = 1;
    }
  }
}

void sub_1003A641C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6444(void *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = -1000;
  sub_10039B130((a3 + 2), &unk_1009F79A0);
  if ((a2 - 1) >= 5)
  {
    if (!a2)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,SessionRequested timeout received", buf, 2u);
      }

      *a3 = 0;
    }
  }

  else
  {
    v6 = a1[20];
    if (!v6)
    {
      return;
    }

    sub_1003A24D0(v6, a2, &v24);
    v7 = v24;
    if (!v24)
    {
      *a3 = 0;
      if (v27 != 1)
      {
        return;
      }

      if (v26 == 1)
      {
        v13 = a1[12];
        sub_10039A6B8(&v25, buf);
        *a3 = *buf;
        sub_1003A6858((a3 + 2), &__p);
      }

      else
      {
        if (v26)
        {
          __assert_rtn("processTimeoutEvent", "AlishaManager.cpp", 369, "false");
        }

        v12 = a1[12];
        sub_10039915C(&v25, buf);
        *a3 = *buf;
        sub_1003A6858((a3 + 2), &__p);
      }

      goto LABEL_16;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1003A2AA0(a2, buf);
      v14 = __p.n128_i8[15];
      v15 = *buf;
      sub_1003A03C4(v24, &v18);
      v16 = buf;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v20 >= 0)
      {
        v17 = &v18;
      }

      else
      {
        v17 = v18;
      }

      *v28 = 136315394;
      v29 = v16;
      v30 = 2080;
      v31 = v17;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#alisha-mgr,Processing timeout event %s returned non-successful status code %s", v28, 0x16u);
      if (v20 < 0)
      {
        operator delete(v18);
      }

      if (__p.n128_i8[15] < 0)
      {
        operator delete(*buf);
      }

      v7 = v24;
    }

    v18 = sub_1003A6E4C(a1[21], v7);
    v19 = v9;
    *a3 = v18;
    if ((v9 & 0x1000000) != 0)
    {
      v10 = a1[12];
      sub_10039A6B8(&v18 + 4, buf);
      *a3 = *buf;
      sub_1003A6858((a3 + 2), &__p);
LABEL_16:
      if (v23 == 1)
      {
        if (__p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }
      }
    }
  }
}

void sub_1003A6714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6784(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_1004C7880();
  }

  v3 = *(*v2 + 32);

  return v3();
}

uint64_t sub_1003A67D4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,handleUWBSystemError", v5, 2u);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_10039711C(v3);
  }

  sub_100022400((a1 + 176));
  return 0;
}

__n128 sub_1003A6858(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = sub_10016D9A8(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1003A6960(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8D20;
  a2[1] = v2;
  return result;
}

void sub_1003A698C(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4[3])
  {
    sub_1004C78AC();
  }

  v5 = *a2;
  if (v4[10])
  {
    sub_1003A5488(*(a1 + 8), v19);
    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }
  }

  v6 = v4[3];
  if (!v6)
  {
    sub_100037B10();
  }

  (*(*v6 + 48))(v16);
  v7 = v16[0];
  if (LODWORD(v16[0]) || (v18 & 1) == 0)
  {
    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1004;
    }

    if (!LODWORD(v16[0]))
    {
      v7 = v11;
    }

    goto LABEL_25;
  }

  v8 = v16[1];
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v4[11];
  v4[10] = v8;
  v4[11] = v9;
  if (v10)
  {
    sub_10000AD84(v10);
    v8 = v4[10];
  }

  if (!v8)
  {
    v7 = -1013;
LABEL_25:
    *a3 = v7;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_26;
  }

  (*(*v8 + 24))(v8, v5);
  if (*a3)
  {
    sub_1003A5488(v4, v12);
    if (v15 == 1 && v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v12[0] = (*(*v4[10] + 16))(v4[10]);
    sub_1003A4958(v4 + 22, v12);
  }

LABEL_26:
  if (v18 == 1)
  {
    if (v17)
    {
      sub_10000AD84(v17);
    }
  }
}