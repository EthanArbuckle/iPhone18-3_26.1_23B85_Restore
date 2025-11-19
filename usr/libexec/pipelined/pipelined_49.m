void sub_1002F93C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1001F9AF8(&a61);

  _Unwind_Resume(a1);
}

void **sub_1002F9538(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

id sub_1002F95A0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [NSNumber numberWithInt:*(i + 4)];
    [v2 addObject:v4];
  }

  return v2;
}

uint64_t *sub_1002F9648(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_1002F997C(double *a1, double *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(*a4 + 144);
  v10 = *a2;
  v11 = 1000000 * *(*a4 + 136) + 50000000;
  v12 = v11 + *a2;
  v13 = 1000000 * v9;
  v14 = *a1;
  v15 = *a1 + v11;
  if (v12 < 1000000 * v9 && v15 < v13)
  {
    v31 = *(v8 + 152);
    v20 = v9 * 1000000.0;
    v32 = v12 / v20;
    if (v31)
    {
      v33 = *(v8 + 152);
      v34 = v32 * (1.0 - exp(-a2[1]));
      v35 = exp(-a1[1]);
      v31 = v33;
      v36 = v15 / v20 * (1.0 - v35);
      v37 = v34 == v36;
      if (v34 <= v36)
      {
LABEL_26:
        if (!v37)
        {
          v17 = *a3;
          v58 = *a3 + v11;
          goto LABEL_50;
        }

        v17 = *a3;
        v58 = *a3 + v11;
        if (*(a1 + 6) <= *(a2 + 6))
        {
LABEL_50:
          if (v58 >= v13)
          {
            goto LABEL_55;
          }

          v27 = v58 / v20;
          if (v31)
          {
            goto LABEL_22;
          }

LABEL_52:
          v59 = v12 / v20;
          v30 = v27 == v59;
          if (v27 > v59)
          {
            goto LABEL_58;
          }

LABEL_53:
          if (!v30)
          {
            return 0;
          }

LABEL_57:
          if (*(a2 + 6) > *(a3 + 6))
          {
            goto LABEL_58;
          }

          return 0;
        }

        if (v58 >= v13)
        {
          goto LABEL_36;
        }

LABEL_30:
        v21 = v58 / v20;
        if (v31)
        {
LABEL_12:
          v22 = v21 * (1.0 - exp(-*(a3 + 1)));
          v23 = v12 / v20 * (1.0 - exp(-a2[1]));
          v24 = v22 == v23;
          if (v22 > v23)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

LABEL_31:
        v38 = v12 / v20;
        v24 = v21 == v38;
        if (v21 > v38)
        {
          goto LABEL_39;
        }

LABEL_32:
        if (!v24)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v39 = v15 / v20;
      v37 = v32 == v39;
      if (v32 <= v39)
      {
        goto LABEL_26;
      }
    }

    v17 = *a3;
    v58 = *a3 + v11;
    if (v58 >= v13)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (*&v14 < *&v10 || *&v10 == *&v14 && *(a1 + 6) > *(a2 + 6))
  {
    v17 = *a3;
    v18 = *a3 + v11;
    if (v12 >= v13 || v18 >= v13)
    {
LABEL_36:
      if (*&v10 >= v17)
      {
        if (v17 != *&v10)
        {
          goto LABEL_40;
        }

LABEL_38:
        if (*(a2 + 6) > *(a3 + 6))
        {
          goto LABEL_39;
        }

LABEL_40:
        v44 = *a1;
        v43 = *(a1 + 1);
        v45 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v45;
        *a2 = v44;
        *(a2 + 1) = v43;
        v46 = *(*a4 + 144);
        v47 = *a3;
        v48 = 1000000 * *(*a4 + 136) + 50000000;
        v49 = v48 + *a3;
        v50 = *a2;
        v51 = *a2 + v48;
        if (v49 >= 1000000 * v46 || v51 >= 1000000 * v46)
        {
          if (*&v50 >= *&v47)
          {
            if (*&v47 != *&v50)
            {
              return 1;
            }

LABEL_77:
            if (*(a2 + 6) <= *(a3 + 6))
            {
              return 1;
            }
          }

LABEL_78:
          v41 = *a2;
          v40 = *(a2 + 1);
          v81 = *(a3 + 1);
          *a2 = *a3;
          *(a2 + 1) = v81;
          goto LABEL_79;
        }

        v53 = v46 * 1000000.0;
        v54 = v49 / v53;
        if (*(*a4 + 152))
        {
          v55 = v54 * (1.0 - exp(-*(a3 + 1)));
          v56 = v51 / v53 * (1.0 - exp(-a2[1]));
          v57 = v55 == v56;
          if (v55 > v56)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v80 = v51 / v53;
          v57 = v54 == v80;
          if (v54 > v80)
          {
            goto LABEL_78;
          }
        }

        if (!v57)
        {
          return 1;
        }

        goto LABEL_77;
      }

LABEL_39:
      v41 = *a1;
      v40 = *(a1 + 1);
      v42 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v42;
LABEL_79:
      *a3 = v41;
      *(a3 + 1) = v40;
      return 1;
    }

    v20 = v9 * 1000000.0;
    v21 = v18 / v20;
    if (*(v8 + 152))
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

  v17 = *a3;
  v25 = *a3 + v11;
  if (v12 >= v13 || v25 >= v13)
  {
LABEL_55:
    if (*&v10 < v17)
    {
      goto LABEL_58;
    }

    if (v17 != *&v10)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v20 = v9 * 1000000.0;
  v27 = v25 / v20;
  if ((*(v8 + 152) & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  v28 = v27 * (1.0 - exp(-*(a3 + 1)));
  v29 = v12 / v20 * (1.0 - exp(-a2[1]));
  v30 = v28 == v29;
  if (v28 <= v29)
  {
    goto LABEL_53;
  }

LABEL_58:
  v61 = *a2;
  v60 = *(a2 + 1);
  v62 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 1) = v62;
  *a3 = v61;
  *(a3 + 1) = v60;
  v63 = *(*a4 + 144);
  v64 = *a2;
  v65 = 1000000 * *(*a4 + 136) + 50000000;
  v66 = v65 + *a2;
  v67 = *a1;
  v68 = *a1 + v65;
  if (v66 < 1000000 * v63 && v68 < 1000000 * v63)
  {
    v71 = v63 * 1000000.0;
    v72 = v66 / v71;
    if (*(*a4 + 152))
    {
      v73 = v72 * (1.0 - exp(-a2[1]));
      v74 = v68 / v71 * (1.0 - exp(-a1[1]));
      v75 = v73 == v74;
      if (v73 > v74)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v76 = v68 / v71;
      v75 = v72 == v76;
      if (v72 > v76)
      {
        goto LABEL_73;
      }
    }

    if (!v75)
    {
      return 1;
    }

    goto LABEL_72;
  }

  if (*&v67 < *&v64)
  {
LABEL_73:
    v78 = *a1;
    v77 = *(a1 + 1);
    v79 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v79;
    *a2 = v78;
    *(a2 + 1) = v77;
    return 1;
  }

  if (*&v64 != *&v67)
  {
    return 1;
  }

LABEL_72:
  if (*(a1 + 6) > *(a2 + 6))
  {
    goto LABEL_73;
  }

  return 1;
}

void sub_1002F9E80()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F9EF0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F9F60()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F9F88(uint64_t a1, float a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  v12 = a1;
  v11 = a2;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  v7 = a7;
  operator new();
}

void sub_1002FA044(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1002FA07C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100448590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002FA0F8(uint64_t a1, uint64_t a2, uint64_t *a3, float *a4, void *a5, char *a6, char *a7, char *a8, char *a9)
{
  v9 = *a3;
  v10 = *a4;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v11 = a5[1];
  if (v11 != *a5)
  {
    if (((v11 - *a5) & 0x8000000000000000) == 0)
    {
      v12 = v11 - *a5;
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002FA1F8(a2, v9, &__p, *a6, *a7, *a8, *a9, v10);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_1002FA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FA1F8(uint64_t result, uint64_t a2, void *a3, char a4, char a5, char a6, char a7, float a8)
{
  *result = off_1004485E0;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 16) = a8;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v8 = a3[1];
  if (v8 != *a3)
  {
    if (((v8 - *a3) & 0x8000000000000000) == 0)
    {
      v9 = v8 - *a3;
      operator new();
    }

    sub_10000FC84();
  }

  *(result + 48) = a4;
  *(result + 49) = a5;
  *(result + 50) = a6;
  *(result + 51) = a7;
  *(result + 56) = 0;
  if (a2 > 0x10000)
  {
    sub_100014A08(v11, "");
    sub_10017FD24("Dwell requested is too long", &__p);
    sub_1000E661C(v11, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    sub_10003F5D0(&v10);
  }

  return result;
}

void sub_1002FA388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v20 + 32) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002FA3D8(void *result)
{
  *result = off_1004485E0;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1002FA430(void *a1)
{
  *a1 = off_1004485E0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

WifiScannerSettings *sub_1002FA4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 48) == 1)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:(*(a1 + 32) - *(a1 + 24)) >> 2];
    v6 = *(a1 + 24);
    for (i = *(a1 + 32); v6 != i; ++v6)
    {
      v8 = [NSNumber numberWithInt:*v6];
      [v5 addObject:v8];
    }
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9 == *(a1 + 32))
    {
      v5 = 0;
    }

    else
    {
      v10 = [NSNumber numberWithInt:*(v9 + 4 * *(a1 + 56))];
      v20 = v10;
      v5 = [NSArray arrayWithObjects:&v20 count:1];

      *(a1 + 56) = (*(a1 + 56) + 1) % ((*(a1 + 32) - *(a1 + 24)) >> 2);
    }
  }

  v11 = *(a1 + 49);
  v12 = [WifiScannerSettings alloc];
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 50);
  v17 = atomic_load((a1 + 16));
  LODWORD(v13) = v17;
  LOBYTE(v17) = atomic_load((a1 + 51));
  v18 = [(WifiScannerSettings *)v12 initWithChannels:v5 dwell:v15 scanType:v14 includingOffChannelResults:v16 atDutyCycle:v17 & 1 asLowPriority:v13];

  return v18;
}

void sub_1002FA6D4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FA744()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FA7B4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t *sub_1002FA7DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1002FB024(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1002FA8C8(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 30000;
  *(a1 + 16) = 1065353216;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100142E78(a1 + 40);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_1003012EC(a1 + 152);
  v6 = 0;
  if (sub_1002C2A18())
  {
    v4 = sub_1000DD690();
    v5 = v2;
    *(a1 + 120) = sub_100008F80(&v4, &v6) & 1;
  }

  else
  {
    *(a1 + 120) = 0;
  }

  return a1;
}

void sub_1002FA988(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1002FA94CLL);
}

void sub_1002FA99C(_Unwind_Exception *a1)
{
  sub_1002FBEDC(v3);
  sub_100149854((v1 + 40));
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

void sub_1002FA9F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 20) = a2;
  sub_100008150(a1, &v4);
  (*(*v4 + 24))(v4, a2);
  v3 = v5;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1002FAACC(uint64_t a1, uint64_t a2)
{
  sub_10014AA58(a1 + 40, a2);
  v3 = *(a1 + 72);
  if (v3 <= 2)
  {
    *(a1 + 20) = 0x10100u >> (8 * v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1003012F0(a1 + 152, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  sub_100008DCC(a1);
}

void sub_1002FACFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FAD40(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_10045D4B0, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = a2;
    sub_100387198();
    a1 = v2;
    a2 = v3;
  }

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3802000000;
  v5[3] = sub_1002FBF6C;
  v5[4] = nullsub_205;
  v5[5] = a1;
  v5[6] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1002FBF7C;
  v4[3] = &unk_100448788;
  v4[4] = v5;
  sub_10000AE28(&qword_10045D4A8, v4);
  _Block_object_dispose(v5, 8);
}

uint64_t sub_1002FAE24(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v4 = 0;
  if ((atomic_load_explicit(&qword_10045D4B0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_100387198();
    a1 = v3;
  }

  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4002000000;
  v7[3] = sub_1002FBF90;
  v7[4] = nullsub_206;
  v7[5] = a1;
  v7[6] = &v5;
  v7[7] = &v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1002FBFA8;
  v6[3] = &unk_1004487B0;
  v6[4] = v7;
  sub_10000AE28(&qword_10045D4A8, v6);
  _Block_object_dispose(v7, 8);
  return v4;
}

uint64_t sub_1002FAF1C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 24) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1002FAF80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  sub_1002FAFC0(a1, *(a1 + 8));
  return a1;
}

void sub_1002FAFC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002FAFC0(a1, *a2);
    sub_1002FAFC0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1002FB024(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  sub_1002FAFC0(a1 + 152, *(a1 + 160));
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  sub_100149854((a1 + 40));
  v8 = *(a1 + 32);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

__n128 sub_1002FB134(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

float sub_1002FB174(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = (a1 + 2);
  v5 = v4 ^ (v4 >> 31);
  if (v5 <= 2)
  {
    if (!v5)
    {

      sub_1002FB258();
    }

    if (v5 == 1)
    {
      return *v3;
    }

    else
    {
      return *v3;
    }
  }

  else
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v7 = *v3;

        sub_1002FBBD4();
      }

      v9 = *v3;

      sub_1002FBD58();
    }

    if (v5 == 3)
    {

      return sub_1002FB3DC(a2, v3);
    }

    else
    {
      v8 = *v3;
      sub_1002FBB2C(*v3);
      return v8;
    }
  }
}

void sub_1002FB33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FB3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FB394);
}

float sub_1002FB3DC(uint64_t a1, uint64_t a2)
{
  v9 = 0.0;
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 8);
  }

  v10.__vftable = v3;
  v11 = (v3 + v2);
  if (!sub_1002FB73C(v3, v3 + v2, &v9, "NAN", "nan", "INFINITY", "infinity", 0x28u, 0x29u))
  {
    if (!sub_1002FB4F8(&v10) || ((v4 = *(v11 - 1) - 43, v5 = v4 > 0x3A, v6 = (1 << v4) & 0x400000004000005, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7))
    {
      std::bad_cast::bad_cast(&v10);
      v10.__vftable = &off_100434090;
      sub_100049F88(&v10);
    }
  }

  return v9;
}

BOOL sub_1002FB4F8(std::locale::__imp **a1)
{
  std::locale::locale(v14);
  memset(&v14[4], 0, 24);
  v2 = *a1;
  v3 = a1[1];
  __sb = off_1004486E0;
  v14[1].__locale_ = v2;
  v14[2].__locale_ = v2;
  v14[3].__locale_ = v3;
  v10.__loc_ = 0;
  v9[1] = 0;
  std::ios_base::init(&v10, &__sb);
  v11 = 0;
  v12 = -1;
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= ~0x1000u;
  *(&v9[2] + *(v5 - 24)) = 9;
  v6 = std::istream::operator>>();
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(v14);
  return v7;
}

void sub_1002FB6DC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

void sub_1002FB6FC(_Unwind_Exception *a1)
{
  std::ios::~ios();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FB73C(unsigned __int8 *a1, unsigned __int8 *a2, float *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 a8, unsigned __int8 a9)
{
  if (a1 == a2)
  {
    return 0;
  }

  v9 = *a1;
  v10 = v9 == 45 || v9 == 43;
  v11 = v10 ? a1 + 1 : a1;
  v12 = a2 - v11;
  if (a2 - v11 < 3)
  {
    return 0;
  }

  v14 = *v11;
  if (v14 == *a5 || v14 == *a4)
  {
    v15 = v11[1];
    if (v15 == a5[1] || v15 == a4[1])
    {
      v16 = v11[2];
      if (v16 == a5[2] || v16 == a4[2])
      {
        v17 = v11 + 3;
        if (v17 == a2 || a2 - v17 >= 2 && *v17 == a8 && *(a2 - 1) == a9)
        {
          v18 = NAN;
          if (v9 == 45)
          {
            v18 = NAN;
          }

          *a3 = v18;
          return 1;
        }

        return 0;
      }
    }
  }

  if (v12 == 3)
  {
    if (v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v26 = v11[1];
    if (v26 != a7[1] && v26 != a6[1])
    {
      return 0;
    }

    v27 = v11[2];
    if (v27 != a7[2] && v27 != a6[2])
    {
      return 0;
    }
  }

  else
  {
    if (v12 != 8 || v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v19 = v11[1];
    if (v19 != a7[1] && v19 != a6[1])
    {
      return 0;
    }

    v20 = v11[2];
    if (v20 != a7[2] && v20 != a6[2])
    {
      return 0;
    }

    v21 = v11[3];
    if (v21 != a7[3] && v21 != a6[3])
    {
      return 0;
    }

    v22 = v11[4];
    if (v22 != a7[4] && v22 != a6[4])
    {
      return 0;
    }

    v23 = v11[5];
    if (v23 != a7[5] && v23 != a6[5])
    {
      return 0;
    }

    v24 = v11[6];
    if (v24 != a7[6] && v24 != a6[6])
    {
      return 0;
    }

    v25 = v11[7];
    if (v25 != a7[7] && v25 != a6[7])
    {
      return 0;
    }
  }

  v28 = INFINITY;
  if (v9 == 45)
  {
    v28 = -INFINITY;
  }

  *a3 = v28;
  return 1;
}

void *sub_1002FB97C(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

std::locale *sub_1002FB98C(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1002FB9D0(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

double sub_1002FBA34@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1002FBAE4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

void sub_1002FBB2C(double a1)
{
  v1 = 2 * (a1 > 3.40282347e38);
  if (a1 < -3.40282347e38)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_1002FBCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FBD10);
}

void sub_1002FBE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002FBEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002FBE94);
}

void *sub_1002FBEDC(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_1002FBF6C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_1002FBF90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void *sub_1002FBFA8(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 40);
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v3 != v4)
  {
    v5 = *(v1 + 48);
    while (*v3 != *v5)
    {
      if (++v3 == v4)
      {
        **(v1 + 56) = 0;
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 1;
      if (v3 + 1 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != *v5)
          {
            *v6 = 0;
            result = *v3;
            *v3 = v7;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v3;
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = *(v2 + 136);
      }
    }
  }

  **(v1 + 56) = v3 != v4;
  if (v3 != v4)
  {
    while (v4 != v3)
    {
      v8 = *--v4;
      result = v8;
      *v4 = 0;
      if (v8)
      {
        result = (*(*result + 8))(result);
      }
    }

    *(v2 + 136) = v3;
  }

  return result;
}

uint64_t sub_1002FC150(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(sub_10031E47C, v3, a3);
}

void sub_1002FC174()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FC1E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FC278(uint64_t a1)
{
  *a1 = off_1004487E0;
  v2 = sub_100007FA8();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  v3 = sub_1002491F0(v2);
  sub_1002FCBD4(a1 + 32, *(v3 + 60));
}

void sub_1002FC2E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 && (*v2 ^ (*v2 >> 31)) == 0xE)
  {
    v3 = *(v2 + 8);
    if (*(*(v2 + 16) + 48) == 1)
    {
      sub_1002FC31C(a1, v3);
    }

    else
    {
      sub_1002FC70C(a1, v3);
    }
  }
}

void sub_1002FC31C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4->i64[0] |= 1 << v5;
  if (v5 == 63)
  {
    v6 = 0;
    v4 = (v4 + 8);
    *(a1 + 56) = v4;
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a1 + 64) = v6;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v4 == (v8 + 8 * (v7 >> 6)) && v6 == (v7 & 0x3F))
  {
    *(a1 + 56) = v8;
    *(a1 + 64) = 0;
  }

  v10 = v7 - 64;
  if (v7 < 0x40)
  {
    v11 = 0;
    v12 = v8;
    goto LABEL_18;
  }

  if (v10 < 0xC0)
  {
    v11 = 0;
    v12 = v8;
    do
    {
LABEL_17:
      v18 = *v12++;
      v19 = vcnt_s8(v18);
      v19.i16[0] = vaddlv_u8(v19);
      v11 += v19.u32[0];
      v7 -= 64;
    }

    while (v7 > 0x3F);
    goto LABEL_18;
  }

  v13 = (v10 >> 6) + 1;
  v12 = v8 + (v13 & 0x7FFFFFFFFFFFFFCLL);
  v7 -= (v13 & 0x7FFFFFFFFFFFFFCLL) << 6;
  v14 = v8 + 1;
  v15 = 0uLL;
  v16 = v13 & 0x7FFFFFFFFFFFFFCLL;
  v17 = 0uLL;
  do
  {
    v15 = vpadalq_u32(v15, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v14[-1]))));
    v17 = vpadalq_u32(v17, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v14))));
    v14 += 2;
    v16 -= 4;
  }

  while (v16);
  v11 = vaddvq_s64(vaddq_s64(v17, v15));
  if (v13 != (v13 & 0x7FFFFFFFFFFFFFCLL))
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v7)
  {
    v20 = vcnt_s8((*v12 & (0xFFFFFFFFFFFFFFFFLL >> -v7)));
    v20.i16[0] = vaddlv_u8(v20);
    v11 += v20.u32[0];
  }

  if (qword_10045B050 != -1)
  {
    sub_100387230();
  }

  v21 = qword_10045B058;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      v22 = &__p[3];
      qmemcpy(__p, "LOW", 3);
      v23 = 3;
    }

    else
    {
      v22 = &__p[4];
      *__p = 1212631368;
      v23 = 4;
    }

    *v22 = 0;
    v31 = v23;
    *buf = 136315394;
    v33 = __p;
    v34 = 2048;
    v35 = v11 & ~(v11 >> 63);
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Wifi Scan error. Priority %s. Num rejected scans in window: %llu", buf, 0x16u);
    if (v31 < 0)
    {
      operator delete(*__p);
    }
  }

  v24 = sub_1002491F0(*(a1 + 8));
  if (*(v24 + 32) == 2)
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      if (v11 <= *(v24 + 64))
      {
        if (qword_10045B050 != -1)
        {
          sub_100387244();
        }

        v29 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *__p = 134217984;
          *&__p[4] = v11 & ~(v11 >> 63);
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Wifi Scan failed but still allowing roaming. Num rejected scans in window: %llu", __p, 0xCu);
        }
      }

      else
      {
        if (qword_10045B050 != -1)
        {
          sub_100387244();
        }

        v25 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Wifi Scan failed and roaming has been allowed long enough. Switching to high priority scans", __p, 2u);
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        if (v27 >= 1)
        {
          v28 = v27 >> 6;
          if (v27 >= 0x40)
          {
            bzero(*(a1 + 32), 8 * v28);
          }

          if ((v27 & 0x3F) != 0)
          {
            *(v26 + 8 * v28) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v27 & 0x3F));
          }
        }

        *(a1 + 56) = v26;
        *(a1 + 64) = 0;
        if ((*(a1 + 16) & 1) == 0)
        {
          *(a1 + 16) = 1;
        }

        *(a1 + 24) = a2;
        sub_1002FA9F4(*(a1 + 8), 0);
      }
    }

    else
    {
      sub_1002FCA3C(a1, a2);
    }
  }
}

void sub_1002FC70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002491F0(*(a1 + 8));
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *v5 &= ~(1 << v6);
  if (v6 == 63)
  {
    v7 = 0;
    *(a1 + 56) = ++v5;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a1 + 64) = v7;
  v8 = *(a1 + 32);
  if (v5 == (v8 + 8 * (*(a1 + 40) >> 6)) && v7 == (*(a1 + 40) & 0x3F))
  {
    *(a1 + 56) = v8;
    *(a1 + 64) = 0;
  }

  if (qword_10045B050 != -1)
  {
    sub_100387230();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (sub_1002FA9EC(*(a1 + 8)))
    {
      LODWORD(__p[0]) = 5721932;
      v27 = 3;
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = v11 - 64;
      if (v11 < 0x40)
      {
LABEL_15:
        v14 = 0;
        v15 = v12;
        goto LABEL_23;
      }
    }

    else
    {
      strcpy(__p, "HIGH");
      v27 = 4;
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = v11 - 64;
      if (v11 < 0x40)
      {
        goto LABEL_15;
      }
    }

    if (v13 >= 0xC0)
    {
      v16 = (v13 >> 6) + 1;
      v15 = v12 + (v16 & 0x7FFFFFFFFFFFFFCLL);
      v11 -= (v16 & 0x7FFFFFFFFFFFFFCLL) << 6;
      v17 = v12 + 1;
      v18 = 0uLL;
      v19 = v16 & 0x7FFFFFFFFFFFFFCLL;
      v20 = 0uLL;
      do
      {
        v18 = vpadalq_u32(v18, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v17[-1]))));
        v20 = vpadalq_u32(v20, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v17))));
        v17 += 2;
        v19 -= 4;
      }

      while (v19);
      v14 = vaddvq_s64(vaddq_s64(v20, v18));
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFCLL))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v15 = v12;
    }

    do
    {
      v21 = *v15++;
      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      v14 += v22.u32[0];
      v11 -= 64;
    }

    while (v11 > 0x3F);
LABEL_23:
    if (v11)
    {
      v23 = vcnt_s8((*v15 & (0xFFFFFFFFFFFFFFFFLL >> -v11)));
      v23.i16[0] = vaddlv_u8(v23);
      v14 += v23.u32[0];
    }

    *buf = 136315394;
    v29 = __p;
    v30 = 2048;
    v31 = v14 & ~(v14 >> 63);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Wifi Scan success. Priority %s. Num rejected scans in window: %llu", buf, 0x16u);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v24 = sub_1002FA9EC(*(a1 + 8));
  if (*(v4 + 32) == 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    sub_1002FCA3C(a1, a2);
  }
}

void sub_1002FCA3C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_1000474A4(buf, "");
    sub_1002FCEC4("Should have a high priority start timestamp if we're scanning in high priority", &v6);
    sub_100382FC4(&v6, __p, buf);
    sub_1000BC6D8(__p);
  }

  if (*(sub_1002491F0(*(a1 + 8)) + 56) * 1000000000.0 < (a2 - *(a1 + 24)))
  {
    if (qword_10045B050 != -1)
    {
      sub_100387244();
    }

    v3 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Scanning on High Priority too long -- switching to low priority scans", buf, 2u);
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    sub_1002FA9F4(*(a1 + 8), 1);
  }
}

void sub_1002FCB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FCBD4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_1000474A4(v3, "");
  sub_1002FCF14("Atempting to initialize with window size of <=0. Most likely the wifi scan parameters weren't set before constructing this class.", &v5);
  sub_1000E661C(v3, &v5, 1);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v3[0]);
LABEL_6:
  sub_10003F5D0(&__p);
}

void sub_1002FCD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*v20)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FCD9C(uint64_t result)
{
  *result = off_1004487E0;
  if (*(result + 32))
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
  }

  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_1002FCE00(uint64_t a1)
{
  *a1 = off_1004487E0;
  if (*(a1 + 32))
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
    v1 = vars8;
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
  }

  operator delete();
}

void sub_1002FCE80(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

std::string *sub_1002FCEC4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002FCEF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002FCF14@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002FCF48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FCF64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FCFD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FD044()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_1002FD3FC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002FD5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002FD6FC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002FD8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FDA10(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1002FDACC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002FDB3C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002FDBAC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002FDF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002FDFCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueHandleScanTimer];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FE114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NewWifiScanner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002FE2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::future<void> a11, std::promise<void> a12)
{
  std::future<void>::~future(&a11);
  std::promise<void>::~promise(&a12);

  _Unwind_Resume(a1);
}

id sub_1002FE530(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) sensorPresent];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002FE638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::future<void>::~future((v11 - 32));
  std::promise<void>::~promise((v11 - 24));

  _Unwind_Resume(a1);
}

void sub_1002FE758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::future<void>::~future((v11 - 32));
  std::promise<void>::~promise((v11 - 24));

  _Unwind_Resume(a1);
}

void sub_1002FE81C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueStartScanning];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FE8D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueStopScanning];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FEC24(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 40);
  v5 = v3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4012000000;
  v15[3] = sub_100300550;
  v15[4] = sub_100300568;
  v15[5] = "";
  v16 = v4;
  v17 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3812000000;
  v11 = sub_100300570;
  v12 = sub_100300580;
  v13 = "";
  std::promise<void>::promise(&v14);
  std::promise<void>::get_future(v9 + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100300588;
  block[3] = &unk_1004489B8;
  block[4] = v15;
  block[5] = &v8;
  dispatch_async(v5, block);
  _Block_object_dispose(&v8, 8);
  std::promise<void>::~promise(&v14);
  _Block_object_dispose(v15, 8);

  std::future<void>::~future(&v6);
}

void sub_1002FEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  std::promise<void>::~promise(v9 + 6);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

id sub_1002FEDF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1002FEE2C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002FEF2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueHandleScan:*(a1 + 40) forSettings:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FF038(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) onQueueHandleScan:*(a1 + 40) forSettings:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002FF148(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1[4] settings];
  v4 = [v3 lowPriorityScan];

  if (v4)
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a1[5] code];
      v11 = 67109120;
      v12 = v6;
      v7 = "WARNING: wifi scan failed with %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, 8u);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038726C();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [a1[5] code];
      v11 = 67109120;
      v12 = v10;
      v7 = "wifi scan failed with %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  [a1[6] onQueueHandleScanFailed:a1[5] forSettings:a1[4]];
  objc_autoreleasePoolPop(v2);
}

void sub_10030031C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030039C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_1003003D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1003003F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  [*(*v2 + 8) startListeningCachedScans];
  objc_autoreleasePoolPop(v3);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_100300448(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 40);
  std::current_exception();
  v18.__ptr_ = v19;
  std::promise<void>::set_exception(v17, v18);
  std::exception_ptr::~exception_ptr(v19);
  __cxa_end_catch();
}

void sub_100300484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1003004A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  [*(*v2 + 8) stopListeningCachedScans];
  objc_autoreleasePoolPop(v3);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_1003004F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 40);
  std::current_exception();
  v18.__ptr_ = v19;
  std::promise<void>::set_exception(v17, v18);
  std::exception_ptr::~exception_ptr(v19);
  __cxa_end_catch();
}

void sub_100300534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_100300550(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t sub_100300570(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_100300588(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (objc_opt_respondsToSelector())
  {
    [*(v2 + 48) wifiScanInitiated:*(v2 + 56)];
  }

  std::promise<void>::set_value((*(*(a1 + 40) + 8) + 48));
}

void sub_1003005E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15 + 6, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_100300624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_100300640()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003006B0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100300720()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003009D4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003009FC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v1 = xmmword_1003DD640;
  *v2 = unk_1003DD650;
  *&v2[12] = unk_1003DD65C;
  operator new();
}

void sub_1003012A0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1002FAFC0(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1003012F0(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 24;
  *(a1 + 32) = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      sub_10000A688(v2, v3++);
    }

    while (v3 != v4);
  }
}

void *sub_100301344(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_100301838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BaseWifiScannerBackend;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100301944(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100301988()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1003019B0(unsigned int a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_1003019BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100301A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100301A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_100301BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(v2 - 48);
  nullsub_70(va);
  _Unwind_Resume(a1);
}

void sub_100301BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  nullsub_70(va);
  _Unwind_Resume(a1);
}

void sub_100301BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_70(va);
  _Unwind_Resume(a1);
}

void sub_100301EEC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100301FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = v3;
  v15 = off_10043D9E8;
  v16 = 0u;
  v17 = 0u;
  v20 = 0;
  v18 = off_10043D9C8;
  v19[0] = 0;
  *(v19 + 6) = 0;
  [v5 timestamp];
  sub_1001294D4(&v15, v6);
  [v5 timestamp];
  v8 = sub_10010C70C(v7);
  sub_10012A88C(&v15, v8);
  v9 = [v5 startDate];
  [v9 timeIntervalSince1970];
  sub_1001294E4(&v15, v10);

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  sub_10012A894(&v15, v12);

  *&v14 = 0;
  *(&v14 + 6) = 0;
  sub_100126648(&v13, [v5 confidence]);
  sub_10012A384(&v13, [v5 stationary]);
  sub_10012A38C(&v13, [v5 walking]);
  sub_10012A394(&v13, [v5 running]);
  sub_10012A39C(&v13, [v5 automotive]);
  sub_10012A3A4(&v13, [v5 unknown]);
  sub_10012A89C(&v15, &v13);
  sub_100301ABC(v4, &v15);
}

void sub_1003021A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  nullsub_70(va);
  _Unwind_Resume(a1);
}

void sub_1003021C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nullsub_70(va);

  _Unwind_Resume(a1);
}

void sub_1003021E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  nullsub_69(&a9);
  nullsub_70(&a12);

  _Unwind_Resume(a1);
}

uint64_t sub_1003022C8(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100302364(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

void sub_100302428(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030246C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003024DC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030254C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003027C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 40);
    v56.receiver = *(a1 + 32);
    v56.super_class = IOSDeviceMotion;
    objc_msgSendSuper2(&v56, "sensorBridge");
    v9 = v5;
    v70 = 18;
    strcpy(buf, "DeviceMotion accel");
    [v9 userAcceleration];
    v11 = v10;
    [v9 userAcceleration];
    v13 = v12;
    [v9 userAcceleration];
    v15 = sub_100303570(buf, v11, v13, v14);
    if (v70 < 0)
    {
      v18 = v15;
      operator delete(*buf);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else if (!v15)
    {
      goto LABEL_29;
    }

    v70 = 20;
    strcpy(buf, "DeviceMotion gravity");
    [v9 gravity];
    v20 = v19;
    [v9 gravity];
    v22 = v21;
    [v9 gravity];
    v24 = sub_100303570(buf, v20, v22, v23);
    if (v70 < 0)
    {
      v26 = v24;
      operator delete(*buf);
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    else if (!v24)
    {
LABEL_29:

      v46 = v9;
      [v46 rotationRate];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [v46 timestamp];
      v54 = sub_10010C70C(v53);
      v57 = off_10043D988;
      v67 = 0;
      v62 = 0;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v66 = 0;
      v68 = 0;
      v58 = v48;
      v59 = v50;
      v60 = v52;
      v61 = v54;
      [v46 timestamp];
      sub_10012951C(&v57, v55);
      sub_100324028(buf, 13, &v57);
      operator new();
    }

    [v9 userAcceleration];
    v28 = v27;
    [v9 gravity];
    v30 = v29;
    [v9 userAcceleration];
    v32 = v31;
    [v9 gravity];
    v34 = v33;
    [v9 userAcceleration];
    v36 = v35;
    [v9 gravity];
    v38 = v37;
    [v9 timestamp];
    v40 = sub_10010C70C(v39);
    v57 = off_10043D988;
    v67 = 0;
    v62 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v66 = 0;
    v68 &= 0xFC00u;
    v58 = v28 + v30;
    v59 = v32 + v34;
    v60 = v36 + v38;
    v61 = v40;
    [v9 timestamp];
    sub_10012951C(&v57, v41);
    v70 = 8;
    strcpy(buf, "rawAccel");
    v42 = sub_100303570(buf, v58, v59, v60);
    if (v70 < 0)
    {
      v43 = v42;
      operator delete(*buf);
      if (!v43)
      {
LABEL_28:
        nullsub_67(&v57);
        goto LABEL_29;
      }
    }

    else if (!v42)
    {
      goto LABEL_28;
    }

    [IOSDeviceMotion convertGToAccel:&v57];
    strcpy(buf, "convertGToAccel result");
    v70 = 22;
    v44 = sub_100303570(buf, v58, v59, v60);
    if (v70 < 0)
    {
      v45 = v44;
      operator delete(*buf);
      v44 = v45;
    }

    if (v44)
    {
      sub_100324028(buf, 2, &v57);
      operator new();
    }

    goto LABEL_28;
  }

  if (v6)
  {
    if (qword_10045B050 != -1)
    {
      sub_100387320();
    }

    v16 = qword_10045B058;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 description];
      *buf = 136315138;
      *&buf[4] = [v17 UTF8String];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "error reported: %s", buf, 0xCu);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100387320();
    }

    v25 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "no data and no error", buf, 2u);
    }
  }
}

void sub_100303348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_100050568(&a21);
  nullsub_67(v34 - 240);
  nullsub_67(&a31);

  _Unwind_Resume(a1);
}

BOOL sub_100303570(uint64_t *a1, double a2, double a3, double a4)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1;
  }

  if (qword_10045B050 == -1)
  {
    v9 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    sub_100387320();
    v9 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 136446978;
  v12 = v10;
  v13 = 2050;
  v14 = a2;
  v15 = 2050;
  v16 = a3;
  v17 = 2050;
  v18 = a4;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%{public}s failed finite check: %{public}f, %{public}f, %{public}f", &v11, 0x2Au);
  return 0;
}

void sub_100303778(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003037BC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030382C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030389C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_1003038C4()
{
  if (qword_10045D4C8 == -1)
  {
    v1 = qword_10045D4D0;
  }

  else
  {
    sub_100387334();
    v1 = qword_10045D4D0;
  }

  return v1;
}

void sub_10030391C(id a1)
{
  v1 = objc_alloc_init(CMMotionManager);
  v2 = qword_10045D4D0;
  qword_10045D4D0 = v1;

  v3 = qword_10045D4D0;

  [v3 setDeviceMotionUpdateInterval:0.01];
}

id *sub_100303970(id *a1, uint64_t *a2, void *a3, void *a4, unsigned int a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  sub_100335BD0(a1, a2);
  sub_100306828(a1 + 11);
  *a1 = off_100448B18;
  if ((a5 & 0x10) == 0)
  {
    v13 = objc_alloc_init(WifiSensor);
    if ([(WifiSensor *)v13 sensorPresent])
    {
      sub_100336404(a1, [(WifiSensor *)v13 getSensor]);
      sub_1003069A8(a1 + 11, v13);
    }
  }

  v14 = objc_alloc_init(IOSPedometry);
  if ([(IOSPedometry *)v14 sensorPresent])
  {
    sub_100336404(a1, [(IOSPedometry *)v14 getSensor]);
    sub_1003069A8(a1 + 11, v14);
  }

  if ((a5 & 1) == 0)
  {
    v15 = [[IOSGps alloc] initWithDisableBackground:(a5 >> 2) & 1];
    if ([(IOSGps *)v15 sensorPresent])
    {
      sub_100336404(a1, [(IOSGps *)v15 getSensor]);
      sub_1003069A8(a1 + 11, v15);
    }
  }

  v16 = [[IOSAltimeter alloc] initWithOperationQueue:v12];
  if ([(IOSAltimeter *)v16 sensorPresent])
  {
    sub_100336404(a1, [(IOSAltimeter *)v16 getSensor]);
    sub_1003069A8(a1 + 11, v16);
  }

  if ((a5 & 0x20) == 0)
  {
    v17 = objc_alloc_init(IOSBeacon);
    if ([(IOSBeacon *)v17 sensorPresent])
    {
      sub_100336404(a1, [(IOSBeacon *)v17 getSensor]);
      sub_1003069A8(a1 + 11, v17);
    }
  }

  if ((a5 & 8) != 0)
  {
    [v11 setDeviceMotionUpdateInterval:0.02];
  }

  v18 = [IOSDeviceMotion alloc];
  if ((a5 & 2) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  v20 = [(IOSDeviceMotion *)v18 initWithMotionManager:v11 andHandler:v12 usingReferenceFrame:v19];
  if ([(IOSDeviceMotion *)v20 sensorPresent])
  {
    sub_100336404(a1, [(IOSAbstractInertialSensor *)v20 getSensor]);
    sub_1003069A8(a1 + 11, v20);
  }

  if ((atomic_load_explicit(qword_10045D4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_10045D4E0))
  {
    qword_10045D4D8 = objc_alloc_init(CMMotionActivityManager);
    __cxa_guard_release(qword_10045D4E0);
  }

  v21 = [IOSActivityState alloc];
  v22 = [(IOSActivityState *)v21 initWithMotionActivityManager:qword_10045D4D8 andHandler:v12];
  if ([(IOSActivityState *)v22 sensorPresent])
  {
    sub_100336404(a1, [(IOSActivityState *)v22 getSensor]);
    sub_1003069A8(a1 + 11, v22);
  }

  v23 = [[IOSNearbyObject alloc] initWithType:(a5 >> 6) & 1 reducedRate:(a5 >> 7) & 1];
  if ([(IOSNearbyObject *)v23 sensorPresent])
  {
    sub_100336404(a1, [(IOSNearbyObject *)v23 getSensor]);
    sub_1003069A8(a1 + 11, v23);
  }

  v24 = *(a6 + 24);
  if (v24)
  {
    (*(*v24 + 48))(&v30);
    v25 = v30;
    if (v30 != v31)
    {
      do
      {
        sub_100336404(a1, v25[5]);
        sub_1003069A8(a1 + 11, v25[4]);
        v27 = v25[1];
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
            v28 = v25[2];
            v29 = *v28 == v25;
            v25 = v28;
          }

          while (!v29);
        }

        v25 = v28;
      }

      while (v28 != v31);
    }

    sub_1003040E0(&v30, v31[0]);
  }

  return a1;
}

void sub_100303D40(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_10045D4E0);

  sub_10030685C((v2 + 88));
  sub_100303E4C(v2);

  _Unwind_Resume(a1);
}

void *sub_100303E4C(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t sub_100303F20(uint64_t a1)
{
  sub_10030685C((a1 + 88));
  *a1 = off_10044A4B0;
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_100303FF8(uint64_t a1)
{
  sub_10030685C((a1 + 88));
  *a1 = off_10044A4B0;
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_1003040E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003040E0(a1, *a2);
    sub_1003040E0(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_100304140()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003041B0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100304220()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003048B4(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003048F8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100304968()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003049D8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100304C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    [v3 setDelegate:0];
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
  }

  *(v2 + 8) = 0;
}

id sub_100304C70(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100305100(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_100305144(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1003051E0(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_10030529C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_1003052E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100305340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_1003053A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v6 identifier];
  v10 = [v9 UUIDString];

  v11 = [v7 objectForKey:CBAdvertisementDataManufacturerDataKey];
  v12 = [v11 length];
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  [v11 getBytes:0 length:{objc_msgSend(v11, "length")}];
  v13 = [v6 name];
  v14 = v13;
  if (v13)
  {
    [v13 ps_STLStringOnNil:&stru_10044D120];
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v36, 0, 29);
  memset(&v36[32], 0, 48);
  v31 = off_10043DC28;
  v37 = 0;
  v38 &= 0xF000u;
  v15 = sub_1003396C0();
  v16 = atomic_load(v15 + 20);
  if ((v16 & 1) == 0 && *(v15 + 16) != 1)
  {
    v17 = v15;
    v18 = sub_100008F80(v15, v15 + 9);
    *(v17 + 17) = v18 & 1;
    *(v17 + 16) = 1;
    atomic_store(1u, v17 + 20);
    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    v19 = [v7 objectForKey:CBAdvertisementDataServiceDataKey];
    v20 = [v19 description];

    if (v20)
    {
      [v20 ps_STLStringOnNil:&stru_10044D120];
    }

    else
    {
      memset(v29, 0, 24);
    }

    sub_100305B38(v42, v43);
    sub_100130278(&v31, v29);
    sub_1001302AC(&v31, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    operator delete(v29[0].__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  if (*(v15 + 17))
  {
    goto LABEL_12;
  }

LABEL_18:
  if (!sub_100321A70(&v42))
  {
    v22 = sub_1003396C0();
    v23 = atomic_load(v22 + 20);
    if ((v23 & 1) != 0 || *(v22 + 16) == 1)
    {
      if ((*(v22 + 17) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = v22;
      v25 = sub_100008F80(v22, v22 + 9);
      *(v24 + 17) = v25 & 1;
      *(v24 + 16) = 1;
      atomic_store(1u, v24 + 20);
      if ((v25 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_30:
    v26 = sub_10010C758();
    sub_100126648(&v31, v26);
    if (v10)
    {
      [v10 ps_STLString];
    }

    else
    {
      memset(v29, 0, 24);
    }

    sub_100130270(&v31, v29);
    if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29[0].__r_.__value_.__l.__data_);
    }

    v27 = [v7 objectForKey:{CBAdvertisementDataTxPowerLevelKey, *&v29[0].__r_.__value_.__l.__data_, v29[0].__r_.__value_.__r.__words[2]}];
    sub_1001302E0(&v31, [v27 intValue]);

    sub_1001302E8(&v31, [v8 intValue]);
    v28 = [v7 objectForKey:CBAdvertisementDataChannel];
    sub_1001302F0(&v31, [v28 intValue]);

    sub_100324800(v29, &v31);
    operator new();
  }

  if (sub_100321C14(&v31, &v42))
  {
    goto LABEL_30;
  }

  if (qword_10045B050 == -1)
  {
    v21 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  sub_100387398();
  v21 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    LOWORD(v29[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to parse Beacon fields!", v29, 2u);
  }

LABEL_36:
  sub_100130234(&v31);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_1003058D8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 9);
  __cxa_end_catch();
  JUMPOUT(0x1003056C0);
}

void sub_1003058EC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 9);
  __cxa_end_catch();
  JUMPOUT(0x10030555CLL);
}

void sub_100305900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  sub_100130234(&a40);
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
    v47 = *(v45 - 104);
    if (!v47)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v47 = *(v45 - 104);
    if (!v47)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  *(v45 - 96) = v47;
  operator delete(v47);
  goto LABEL_6;
}

uint64_t sub_100305B38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_10003BFA8(&v9);
  v4 = v9;
  v5 = &v9 + *(v9 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((&v9 + *(v9 - 24)));
    v6 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v13);
    v4 = v9;
  }

  *(v5 + 36) = 48;
  for (*(&v9 + *(v4 - 24) + 8) = *(&v9 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8; a1 != a2; ++a1)
  {
    *(&v11[1].__locale_ + *(v9 - 24)) = 2;
    v7 = *a1;
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100305D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  sub_10003C1C4(&a9);
  _Unwind_Resume(a1);
}

void sub_100305DDC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100305E4C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100305EBC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100305EE4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  sub_100338704(a1);
  *a1 = off_100448C80;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 144) = 0;
  objc_initWeak((a1 + 152), v5);

  return a1;
}

uint64_t sub_100305F78(uint64_t a1)
{
  objc_destroyWeak((a1 + 152));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100306014(uint64_t a1)
{
  objc_destroyWeak((a1 + 152));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_1003060D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100306118(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  [WeakRetained start];
}

void sub_100306174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  [WeakRetained stop];
}

void sub_1003061D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = sub_10010C670();
  if ((v3 - v4) >= 0)
  {
    v5 = v3 - v4;
  }

  else
  {
    v5 = v4 - v3;
  }

  v6 = v5 / 1000000.0;
  *(a1 + 112) = *(a1 + 112) + v6;
  ++*(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  if (v7 < v6)
  {
    v7 = v5 / 1000000.0;
  }

  if (v6 < v8)
  {
    v8 = v5 / 1000000.0;
  }

  *(a1 + 128) = v7;
  *(a1 + 136) = v8;
  if (qword_10045B050 != -1)
  {
    sub_1003873C0();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 96);
    v12 = *(a1 + 128);
    v11 = *(a1 + 136);
    *buf = 67110144;
    v13 = *(a1 + 112);
    v14 = *(a1 + 120);
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v13 / v14;
    v32 = 2048;
    v33 = v5 / 1000000.0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sensor %d time stats - minOffset: %f maxOffset: %f avgOffset: %f currentOffset: %f", buf, 0x30u);
  }

  if (v5 >= 0x3B9ACA01)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003873D4();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Sensor time offsets are too high, these events are going to drop and PDR will suffer", buf, 2u);
    }

    if (v5 >= 0xDF8475801)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003873D4();
      }

      v16 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Sensor time offsets are exceedingly high, this may indicate a systemic issue.  If this persists we will crash", buf, 2u);
      }

      v17 = *(a1 + 144) + 1;
      *(a1 + 144) = v17;
      v18 = *(a1 + 120);
      if (qword_10045B050 != -1)
      {
        sub_1003873D4();
      }

      v19 = v17 / v18;
      v20 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 96);
        *buf = 67109632;
        v25 = v21;
        v26 = 2048;
        v27 = v5 / 1000000.0;
        v28 = 2048;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed time sanity check, sensor %d, time offset %f ms, failure rate %f", buf, 0x1Cu);
      }

      if (*(a1 + 120) >= 0x1F4uLL && v19 >= 0.1)
      {
        sub_100014A08(v23, "");
        sub_10023FE94("We are consistently seeing a large difference between motion and system timestamps, which violates our assumptions about time and would cause our system to break", buf);
        sub_100382FC4(buf, __p, v23);
        sub_10003F5D0(__p);
      }
    }
  }
}

void sub_1003064E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100306684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(v2 - 48);
  nullsub_67(va);
  _Unwind_Resume(a1);
}

void sub_1003066A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  nullsub_67(&a10);
  _Unwind_Resume(a1);
}

void sub_1003066C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_67(va);
  _Unwind_Resume(a1);
}

void sub_1003066DC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100306720()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100306790()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100306800()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id *sub_10030685C(id *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *a1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 invalidate];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return a1;
}

void sub_10030698C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003069A8(id *a1, void *a2)
{
  v3 = a2;
  [*a1 addObject:?];
}

void sub_1003069FC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_100306BB4(uint64_t a1)
{
  v2 = objc_alloc_init(CLLocationManager);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 24);

  return [v5 setDelegate:?];
}

id sub_100306C08(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100306CEC(uint64_t a1)
{
  if (+[CLLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways)
  {
    v4 = [*(a1 + 32) locationManager];
    [v4 requestWhenInUseAuthorization];
  }

  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    v5 = [v2 locationManager];
    v3 = objc_opt_respondsToSelector();

    v2 = *(a1 + 32);
    if (v3)
    {
      v6 = [v2 locationManager];
      [v6 setAllowsBackgroundLocationUpdates:1];

      v2 = *(a1 + 32);
    }
  }

  v7 = [v2 locationManager];
  [v7 startUpdatingLocation];
}

void sub_100306E84(uint64_t a1)
{
  v1 = [*(a1 + 32) locationManager];
  [v1 stopUpdatingLocation];
}

uint64_t sub_100306F88(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100307024(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_1003070E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100307128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100307184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_1003071E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = off_10043DBE8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18[0] = off_10043DB28;
  v18[1] = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18[2] = 0;
  v19 = 0;
  v27 = off_10043DBC8;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  [v2 horizontalAccuracy];
  sub_10012EA24(&v14, v3);
  [v2 altitude];
  sub_10012EA10(&v14, v4);
  [v2 course];
  sub_10012EA38(&v14, v5);
  [v2 speed];
  sub_10012EA4C(&v14, v6);
  [v2 coordinate];
  sub_1001294D4(v18, v7);
  [v2 coordinate];
  sub_1001294DC(v18, v8);
  v30 |= 8u;
  v9 = sub_10010C758();
  sub_100126648(&v14, v9);
  sub_10012E9CC(&v14, v15);
  std::to_string(__p, [v2 type]);
  sub_10012E9DC(&v14, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = [v2 timestamp];
  [v10 timeIntervalSince1970];
  v12 = v11;

  sub_10012A88C(&v14, (v12 * 1000000000.0));
  sub_1003245C8(__p, &v14);
  operator new();
}

void sub_100307474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36)
{
  sub_10002BB1C(&a34);
  sub_10012E8E4(&a9);
  sub_10012E8E4(&a36);

  _Unwind_Resume(a1);
}

void sub_1003074B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_10012E8E4(&a36);

  _Unwind_Resume(a1);
}

void sub_1003074D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_10012E8E4(&a36);

  _Unwind_Resume(a1);
}

void sub_1003074EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_10012E8E4(&a36);

  _Unwind_Resume(a1);
}

void sub_100307504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_10012E8E4(&a39);

    _Unwind_Resume(a1);
  }

  sub_10012E8E4(&a39);

  _Unwind_Resume(a1);
}

void sub_10030758C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003075FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030766C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100307888(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_10045D4F8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003078D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  if (*a1 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 96));
    objc_storeWeak((a1 + 104), WeakRetained);

    if (v4 != a2)
    {
      sub_100308200(a1 + 80, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
    }

    return a1;
  }

  else
  {
    sub_100338704(a1 + 8);
    *(a1 + 8) = off_100448DC8;
    v7 = objc_loadWeakRetained((a2 + 96));
    objc_initWeak((a1 + 104), v7);

    *a1 = 1;
    return a1;
  }
}

void sub_100307A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v7)
  {
    sub_100307F74(*(a1 + 32) + 32, v7);
  }

  if (qword_10045B050 != -1)
  {
    sub_1003873FC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v8 description];
    v11 = 136315138;
    v12 = [v10 UTF8String];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get data from altimeter: %s", &v11, 0xCu);
  }
}

id sub_100307BF8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100307D14(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_100307DD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_100307E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100307E74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

uint64_t sub_100307ED8(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100307F74(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 timestamp];
  v4 = sub_10010C70C(v3);
  v12 = off_10043DA28;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  [v2 timestamp];
  sub_1001294D4(&v12, v5);
  v6 = sub_10010C758();
  sub_10012A88C(&v12, v6);
  sub_10012BC28(&v12, v4);
  v7 = [v2 relativeAltitude];
  [v7 doubleValue];
  sub_1001294E4(&v12, v8);

  v9 = [v2 pressure];
  [v9 doubleValue];
  sub_10012A894(&v12, v10);

  sub_100324910(&v11, &v12);
  operator new();
}

void sub_100308118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_10002BB1C(&a16);
  nullsub_72(&a9);
  nullsub_72(&a18);

  _Unwind_Resume(a1);
}

void sub_10030815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nullsub_72(va);

  _Unwind_Resume(a1);
}

void sub_100308174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  nullsub_72(va);
  _Unwind_Resume(a1);
}

void sub_1003081A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nullsub_72(va);

  _Unwind_Resume(a1);
}

void sub_1003081BC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100308200(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v27 = *(v13 - 1);
      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }

      v13 -= 16;
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v14[1];
        *v25 = *v14;
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v25 += 16;
        v24 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_100308478()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003084E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100308558()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100308784(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 magneticField];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v3 timestamp];
  v14[0] = off_10043D988;
  v20 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v21 = 0;
  v14[1] = v5;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = sub_10010C70C(v10);
  [v3 timestamp];
  sub_10012951C(v14, v11);
  v13.receiver = *(a1 + 32);
  v13.super_class = IOSMagnetometer;
  v12 = objc_msgSendSuper2(&v13, "sensorBridge");
  sub_10030652C(v12, v14);
}

void sub_100308868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_67(va);

  _Unwind_Resume(a1);
}

void sub_100308900()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100308970()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003089E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100308C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100387410(a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100308CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WifiSensor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1003090A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100309C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v56 - 153) & 0x80000000) == 0)
      {
LABEL_8:

        sub_100261424(&a40);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v56 - 176));
      goto LABEL_8;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a50);
  if ((*(v56 - 153) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_100309E68(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_10030A00C(uint64_t a1, void *a2)
{
  v2 = a2;
  v19 = 0;
  if ([v2 wifiError])
  {
    v20 = [v2 wifiError];
    v19 = 1;
  }

  v25[128] = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v3 = [v2 settings];
  v4 = [v3 channels];
  v5 = [v4 count];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v2 settings];
  v7 = [v6 channels];

  if ([v7 countByEnumeratingWithState:&v12 objects:v25 count:16])
  {
    *v13;
    *v13;
    sub_10000AA28([**(&v12 + 1) intValue]);
    operator new();
  }

  [v2 initiatedTimestamp];
  [v2 cachedScan];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() dwell];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() includeOffChannelResults];
  [v2 settings];
  [objc_claimAutoreleasedReturnValue() dutyCycle];
  [v2 settings];
  v8 = [objc_claimAutoreleasedReturnValue() scanType];
  if (v8 < 3)
  {
    LOWORD(v22.__r_.__value_.__l.__data_) = [v2 merged];
    v23.__r_.__value_.__r.__words[0] = [v2 scanRssiThreshold];
    LOBYTE(v24.__vftable) = [v2 targettedSsid];
    operator new();
  }

  v9 = v8;
  __cxa_allocate_exception(0x40uLL);
  std::to_string(&v22, v9);
  v10 = std::string::insert(&v22, 0, "invalid scan type ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(&v24, &v23);
  sub_10010A984(v21);
}

void sub_10030A518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, std::out_of_range a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35)
  {
    operator delete(a35);
  }

  std::out_of_range::~out_of_range(&a50);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(v72 - 136) == 1 && *(v72 - 105) < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

void sub_10030A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);

  _Unwind_Resume(a1);
}

void sub_10030A944(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10030A9A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100448E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10030A9FC(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
  }
}

void sub_10030AA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6, uint64_t a7, uint64_t *a8, uint64_t a9, int *a10, float *a11, int *a12, __int16 *a13, uint64_t *a14, char *a15)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = *a6;
  v28[0] = 0;
  if (*a7 == 1)
  {
    if (*(a7 + 31) < 0)
    {
      v19 = a8;
      v20 = v18;
      v21 = v17;
      v22 = v16;
      v23 = v15;
      v24 = a2;
      sub_100003228(&v29, *(a7 + 8), *(a7 + 16));
      a2 = v24;
      v15 = v23;
      v16 = v22;
      v17 = v21;
      v18 = v20;
      a8 = v19;
    }

    else
    {
      v29 = *(a7 + 8);
      v30 = *(a7 + 24);
    }

    v28[0] = 1;
  }

  v25 = *a8;
  *__p = *a9;
  v27 = *(a9 + 16);
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  sub_10031BF10(a2, v15, v16, v17, v18, v28, v25, __p, *a11, *a10, *a12, *a13, *a14, *a15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28[0] == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_10030ABCC(std::logic_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::logic_error::logic_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100448FF8;
  v11 = off_100449020;
  sub_10030B454(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_10030B174();
}

void sub_10030AEF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10030AF18(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

uint64_t sub_10030AFAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  return a1;
}

void sub_10030B0E0(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_10030B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10030B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B454(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10030B5A8(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_10030B63C(std::out_of_range *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(this);

  operator delete();
}

void sub_10030B75C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10030AFAC(exception, a1);
}

void sub_10030B7B8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_10030B840(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

void sub_10030B970(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10030AFAC(exception, a1 + v2);
}

void sub_10030B9E4(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(v1);
}

void sub_10030BA84(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(v1);

  operator delete();
}

void sub_10030BB38(std::out_of_range *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(this);

  operator delete();
}

void sub_10030BBD8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_10030BC60(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

uint64_t sub_10030BCFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100448F58;
  *(a1 + 16) = off_100448F90;
  *(a1 + 56) = &off_100448FC8;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10030BE7C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_10030BEC8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  [WeakRetained strategyChanged:a2];
}

uint64_t sub_10030BF2C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 == v2)
  {
    v3 = *result;
    if (!*result)
    {
      return result;
    }

    goto LABEL_3;
  }

  do
  {
    if (*(v1 - 48) == 1)
    {
      *(v1 - 48) = 0;
    }

    v1 -= 88;
  }

  while (v1 != v2);
  *(result + 16) = v1;
  v3 = *result;
  if (*result)
  {
LABEL_3:
    v4 = result;
    operator delete(v3);
    return v4;
  }

  return result;
}

uint64_t sub_10030BF9C(uint64_t *a1, _DWORD *a2, int *a3, int *a4, int *a5, char *a6, char *a7, int *a8, double *a9, uint64_t *a10)
{
  v10 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v11 = v10 + 1;
  if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v11)
  {
    v11 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v13 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v32 = 8 * ((a1[1] - *a1) >> 3);
  v15 = a2 + 2;
  v14 = *a2;
  v16 = *a2 >> 31;
  if (v16 == *a2)
  {
    *&v36 = *v15;
    v16 = v14;
  }

  else
  {
    v36 = *v15;
    v37 = a2[6];
  }

  v35 = v16 ^ v14;
  v34 = *a4;
  v33[0] = 1;
  sub_100336A18(88 * v10, &v35, v33, *a5, *a6, *a7, *a8, *a10, *a3, *a9);
  v17 = *a1;
  v18 = a1[1];
  v19 = 88 * v10 + *a1 - v18;
  if (v18 != *a1)
  {
    v20 = 0;
    do
    {
      v23 = v19 + v20;
      v25 = &v17[v20 + 8];
      v24 = *&v17[v20];
      if (v24 == v24 >> 31)
      {
        *(v23 + 8) = *v25;
        v26 = v24;
      }

      else
      {
        v27 = *v25;
        *(v23 + 24) = *&v17[v20 + 24];
        *(v23 + 8) = v27;
        v26 = *&v17[v20];
        v24 = v26 >> 31;
      }

      v28 = v26 ^ v24;
      v29 = v19 + v20;
      *v29 = v28;
      v30 = &v17[v20];
      *(v29 + 32) = *&v17[v20 + 32];
      *(v29 + 40) = 0;
      if (v17[v20 + 40] == 1)
      {
        *(v29 + 44) = *(v30 + 11);
        *(v29 + 40) = 1;
      }

      v21 = *(v30 + 3);
      v22 = *(v30 + 4);
      *(v29 + 80) = *(v30 + 20);
      *(v29 + 48) = v21;
      *(v29 + 64) = v22;
      v20 += 88;
    }

    while (&v17[v20] != v18);
    do
    {
      if (v17[40] == 1)
      {
        v17[40] = 0;
      }

      v17 += 88;
    }

    while (v17 != v18);
    v17 = *a1;
  }

  *a1 = v19;
  a1[1] = v32 + 88;
  a1[2] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  return v32 + 88;
}

void sub_10030C268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10030BF2C(va);
  _Unwind_Resume(a1);
}

void sub_10030C27C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030C2EC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030C35C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10030CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  sub_10002BB1C(&a16);
  sub_10030D284(&a18);
  sub_10030D580(&a37);

  _Unwind_Resume(a1);
}

void sub_10030D240(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_10030D284(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      v5 = v3 - 11;
      v6 = v3 - 11;
      v7 = v3 - 11;
      do
      {
        v8 = *v7;
        v7 -= 11;
        (*v8)(v6);
        v5 -= 11;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10030D320(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_10030D3BC(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_10030D478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_10030D4C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_10030D51C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void **sub_10030D580(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 88;
      v6 = v3 - 88;
      v7 = v3 - 88;
      do
      {
        v8 = *v7;
        v7 -= 88;
        (*v8)(v6);
        v5 -= 88;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10030D61C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_10008C408(v18, a2);
  v6 = 88 * v2 + 88;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v18 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v18 + v9;
    do
    {
      sub_10008C408(v13, v12);
      v12 += 88;
      v13 += 88;
      v11 -= 88;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 11;
      (*v16)(v7);
      v14 += 11;
      v7 = v15;
    }

    while (v15 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_10030D7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10030D80C(va);
  _Unwind_Resume(a1);
}

void sub_10030D7E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100387498();
  }

  sub_10030D80C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10030D80C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10030D87C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10030D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    sub_100387498();
  }

  *(v9 + 8) = v10;
  sub_10030D988(&a9);
  _Unwind_Resume(a1);
}

void ***sub_10030D988(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 11;
        v7 = v4 - 11;
        v8 = v4 - 11;
        do
        {
          v9 = *v8;
          v8 -= 11;
          (*v9)(v7);
          v6 -= 11;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_10030DA4C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030DABC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030DB2C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10030DD50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 endDate];
    v8 = [v5 startDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    v42 = 0;
    v43 = 0;
    v40 = 0;
    *&buf = off_10043DA08;
    v41 = 0;
    v44 = 0u;
    v45 = 0u;
    v46 &= 0x80u;
    *(&buf + 1) = sub_10010C758();
    v11 = [v5 endDate];
    [v11 timeIntervalSince1970];
    sub_10012ADC0(&buf, v12);

    v40 = (v10 * 1000000000.0);
    v13 = [v5 numberOfSteps];
    v41 = [v13 intValue];

    v14 = [v5 distance];
    LOBYTE(v13) = v14 == 0;

    if ((v13 & 1) == 0)
    {
      v15 = [v5 distance];
      [v15 doubleValue];
      sub_10012AD84(&buf, v16);
    }

    v17 = [v5 floorsAscended];
    v18 = v17 == 0;

    if (!v18)
    {
      v19 = [v5 floorsAscended];
      sub_10012AD98(&buf, [v19 charValue]);
    }

    v20 = [v5 floorsDescended];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [v5 floorsDescended];
      sub_10012ADAC(&buf, [v22 charValue]);
    }

    v23 = [v5 firstStepTime];
    v24 = v23 == 0;

    if (!v24)
    {
      v25 = [v5 firstStepTime];
      [v25 timeIntervalSince1970];
      sub_10012ADD4(&buf, v26);
    }

    v27 = [v5 activeTime];
    v28 = v27 == 0;

    if (!v28)
    {
      v29 = [v5 activeTime];
      [v29 doubleValue];
      sub_10012ADE8(&buf, v30);
    }

    v31 = [v5 currentPace];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [v5 currentPace];
      [v33 doubleValue];
      sub_10012ADFC(&buf, v34);
    }

    v35 = *(*(a1 + 32) + 16);
    sub_1003248C8(v38, &buf);
    operator new();
  }

  if (qword_10045B050 != -1)
  {
    sub_1003874F8();
  }

  v36 = qword_10045B058;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = [v6 description];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = [v37 UTF8String];
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Pedometry update failed.  Got error %s", &buf, 0xCu);
  }
}

void sub_10030E188(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10030E360(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_10030E3A4(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_10030E440(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

id sub_10030E4FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = [WeakRetained sensorPresent];

  return v2;
}

void sub_10030E544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_10030E5A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_10030E604()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10030E674()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10030E6E4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10030E70C(uint64_t a1@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  v5 = sub_10030E880(a2);
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
    *(&__dst + v7) = 0;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
      goto LABEL_9;
    }
  }

  sub_100003228(a3, *a1, *(a1 + 8));
LABEL_9:
  sub_1000032E4(a3, &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_10030E834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

char *sub_10030E880(unsigned int a1)
{
  v2 = a1;
  if (a1 >= 8)
  {
    sub_1000474A4(v4, "");
    sub_10023AEF4("Invalid dir type ", &v6);
    sub_10024C4BC(&v2, &v7);
    sub_1000E661C(v4, &v6, 2);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v4[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  return (&off_10045C0F8)[a1];
}

void sub_10030E990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030E9EC(uint64_t a1, __int128 *a2, int a3, unsigned __int8 *a4, int a5)
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3321888768;
  v19[2] = sub_1003119CC;
  v19[3] = &unk_1004492B8;
  if (*(a2 + 23) < 0)
  {
    v9 = a4;
    sub_100003228(&v12, *a2, *(a2 + 1));
    a4 = v9;
    v14 = a3;
    v15 = 0;
    v7 = *v9;
    if (v7 != 1)
    {
LABEL_3:
      v20 = a1;
      if ((SHIBYTE(v13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = a3;
    v15 = 0;
    v7 = *a4;
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  v16 = *(a4 + 2);
  if (a4[39] < 0)
  {
    sub_100003228(&__p, *(a4 + 2), *(a4 + 3));
  }

  else
  {
    __p = *(a4 + 1);
    v18 = *(a4 + 4);
  }

  v15 = 1;
  v20 = a1;
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = 0;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_100003228(&v21, v12, *(&v12 + 1));
  v23 = v14;
  v24 = 0;
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v25 = v16;
  if (SHIBYTE(v18) < 0)
  {
    sub_100003228(&v26, __p, *(&__p + 1));
  }

  else
  {
    v26 = __p;
    v27 = v18;
  }

  v24 = 1;
LABEL_16:
  v10 = objc_retainBlock(v19);
  if (v15 == 1)
  {
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
      v15 = 0;
      if (SHIBYTE(v13) < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = 0;
      if (SHIBYTE(v13) < 0)
      {
        goto LABEL_27;
      }
    }

LABEL_18:
    if (a5)
    {
      goto LABEL_19;
    }

LABEL_28:
    dispatch_sync(*(a1 + 544), v10);
    goto LABEL_29;
  }

  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  operator delete(v12);
  if (!a5)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (a5 == 1)
  {
    (v10[2])(v10);
  }

  else if (a5 == 2)
  {
    dispatch_async(*(a1 + 544), v10);
  }

LABEL_29:

  if (v24 != 1)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21);
    return;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
    v24 = 0;
    if (SHIBYTE(v22) < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v24 = 0;
    if (SHIBYTE(v22) < 0)
    {
      goto LABEL_36;
    }
  }
}

void sub_10030ECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    sub_100311B44(&a10);
    _Unwind_Resume(a1);
  }

  sub_100311B44(&a10);
  _Unwind_Resume(a1);
}

void sub_10030EED0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 originalRequest];
  v11 = [NSURLProtocol propertyForKey:@"CLSurveyUploadRunId" inRequest:v10];

  v24 = v11;
  if (v11)
  {
    [v11 ps_STLString];
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
  }

  v12 = [v8 originalRequest];
  v25 = [NSURLProtocol propertyForKey:@"CLSurveyUploadPath" inRequest:v12];

  v13 = [v25 path];
  v14 = v13;
  if (v13)
  {
    [v13 ps_STLString];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  *v36 = *buf;
  v37 = *&buf[16];
  memset(buf, 0, sizeof(buf));

  if (qword_10045B050 != -1)
  {
    sub_10038750C();
  }

  v15 = qword_10045B058;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v9;
    v17 = v7;
    if (v39 >= 0)
    {
      v18 = v38;
    }

    else
    {
      v18 = v38[0];
    }

    v19 = [v8 countOfBytesSent];
    v20 = [v8 countOfBytesExpectedToSend];
    v21 = v36;
    if (v37 < 0)
    {
      v21 = v36[0];
    }

    *buf = 136315906;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    v41 = v20;
    v42 = 2080;
    v43 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received onComplete notification for %s which uploaded %llu of %llu - %s", buf, 0x2Au);
    v7 = v17;
    v9 = v16;
  }

  sub_100002F5C(v36, 0, buf);
  if (*buf == 2)
  {
    [v7 flushWithCompletionHandler:&stru_100449260];
    v22 = *(a1 + 768);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_100310784;
    block[3] = &unk_100449288;
    v31 = a1;
    v27 = v8;
    v28 = v9;
    v29 = v25;
    if (SHIBYTE(v37) < 0)
    {
      sub_100003228(&v32, v36[0], v36[1]);
    }

    else
    {
      v32 = *v36;
      v33 = v37;
    }

    v30 = v7;
    if (SHIBYTE(v39) < 0)
    {
      sub_100003228(&__p, v38[0], v38[1]);
    }

    else
    {
      __p = *v38;
      v35 = v39;
    }

    dispatch_async(v22, block);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038750C();
    }

    v23 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Doesn't exist anymore, ignoring completion notification", buf, 2u);
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_10030F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void sub_10030F488(std::string *a1, _BYTE *a2)
{
  sub_10001B510(a2, &v17);
  v4 = sub_100050E68(&v17, ".zip");
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_10001B438(a2, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(a1, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
LABEL_25:
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = v17.__r_.__value_.__r.__words[0];
LABEL_37:
        operator delete(v10);
        return;
      }

      return;
    }

LABEL_14:
    *a1 = v17;
    return;
  }

  v7 = v4;
  operator delete(v17.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_10001B510(a2, &v17);
  v5 = sub_100050E68(&v17, ".piece");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v5;
    operator delete(v17.__r_.__value_.__l.__data_);
    if (v8)
    {
LABEL_5:
      sub_10001B510(a2, &v17);
      v6 = sub_100050E68(&v17, ".replica");
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v6;
        operator delete(v17.__r_.__value_.__l.__data_);
        if (v9)
        {
LABEL_7:
          sub_10001B510(a2, __p);
          if (sub_100050E68(__p, ""))
          {
            sub_1000474A4(v15, "");
            sub_1000C9084("Only know how to deal with the path being the runid from here", &v17);
            sub_1000E661C(v15, &v17, 1);
            if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v17.__r_.__value_.__l.__data_);
            }

            if (v16 < 0)
            {
              operator delete(v15[0]);
            }

            sub_10003F5D0(v13);
          }

          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          sub_10001B438(a2, &v17);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100003228(a1, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
            goto LABEL_25;
          }

          goto LABEL_14;
        }
      }

      else if (v6)
      {
        goto LABEL_7;
      }

      sub_10001B438(a2, __p);
      sub_10001B438(__p, v13);
      sub_10001B438(v13, v15);
      sub_10001B438(v15, &v17);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *a1 = v17;
        if (v16 < 0)
        {
          goto LABEL_21;
        }

LABEL_33:
        if (v14 < 0)
        {
LABEL_22:
          operator delete(v13[0]);
          if ((v12 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_36;
        }

LABEL_34:
        if ((v12 & 0x80000000) == 0)
        {
          return;
        }

LABEL_36:
        v10 = __p[0];
        goto LABEL_37;
      }

      sub_100003228(a1, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_21:
      operator delete(v15[0]);
      if (v14 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  sub_10001B438(a2, v15);
  sub_10001B438(v15, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(a1, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v17;
  }

  if (v16 < 0)
  {
    v10 = v15[0];
    goto LABEL_37;
  }
}

void sub_10030F7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030F918(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(&v12, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 2);
  }

  sub_10030F488(&v14, &v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  v4 = *(a1 + 800);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030FBB4;
  block[3] = &unk_1004491A8;
  block[4] = a1;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&v11, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v14;
  }

  dispatch_sync(v4, block);
  v5 = *(a1 + 768);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_10030FC0C;
  v6[3] = &unk_1004491D8;
  v6[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100003228(&v7, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  dispatch_async(v5, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v7);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_22:
  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_10030FB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a34 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v34 - 49) & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(*(v34 - 72));
      goto LABEL_8;
    }
  }

  else if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a29);
  if ((*(v34 - 49) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

char *sub_10030FBCC(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100003228(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_10030FBF8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_10030FC0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_10045B050 != -1)
  {
    sub_100387534();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = (a1 + 40);
    sub_10001B178((a1 + 40), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315394;
    *&buf[4] = p_p;
    v20 = 2080;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Uploading %s at %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = (a1 + 64);
  __p.__r_.__value_.__s.__data_[0] = 0;
  sub_10030E9EC(v2, (a1 + 64), 2, &__p, 0);
  v7 = (a1 + 40);
  v8 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v8 = *v7;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = [NSURL fileURLWithPath:v9];

  v11 = [NSMutableURLRequest requestWithURL:*(v2 + 480)];
  if (*(v2 + 568) != 1)
  {
    sub_1000474A4(buf, "");
    sub_1000BCB4C("Haven't implemented multipart with NSURLSession yet, since we're not using it right now", &__p);
    sub_1000E661C(buf, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(*buf);
    }

    sub_10003F5D0(&v18);
  }

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  [NSURLProtocol setProperty:v10 forKey:@"CLSurveyUploadPath" inRequest:v11];
  v12 = a1 + 64;
  if (*(a1 + 87) < 0)
  {
    v12 = *v6;
  }

  v13 = [NSString stringWithUTF8String:v12];
  [NSURLProtocol setProperty:v13 forKey:@"CLSurveyUploadRunId" inRequest:v11];

  v14 = [*(v2 + 576) uploadTaskWithRequest:v11 fromFile:v10];
  [*(v2 + 600) setObject:v14 forKeyedSubscript:v10];
  v15 = sub_1000199C0(v7, 0);
  __p.__r_.__value_.__r.__words[0] = v6;
  v16 = sub_100315D20((v2 + 608), v6);
  *(v16 + 10) += v15;
  __p.__r_.__value_.__r.__words[0] = v6;
  v17 = sub_100316150((v2 + 688), v6);
  sub_1003165E4((v17 + 5), v7);
  [v14 resume];
}

void sub_10030FF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_10030FFE4(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100003228(result + 40, *(a2 + 40), *(a2 + 48));
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 64);
      *(v3 + 10) = *(a2 + 80);
      *(v3 + 4) = v5;
      return result;
    }
  }

  return sub_100003228(v3 + 64, *(a2 + 64), *(a2 + 72));
}

void sub_100310064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100310080(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 40);

  operator delete(v2);
}

void sub_1003100F4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v10 originalRequest];
  v12 = [NSURLProtocol propertyForKey:@"CLSurveyUploadRunId" inRequest:v11];

  if (v12)
  {
    [v12 ps_STLString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
  }

  v13 = [v10 originalRequest];
  v14 = [NSURLProtocol propertyForKey:@"CLSurveyUploadPath" inRequest:v13];

  v15 = [v14 path];
  v16 = v15;
  if (v15)
  {
    [v15 ps_STLString];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  *v36 = *buf;
  v37 = *&buf[16];
  memset(buf, 0, sizeof(buf));

  buf[0] = 0;
  sub_10030E9EC(a1, __p, 2, buf, 0);
  *buf = v36;
  v17 = *(sub_100315D20((a1 + 728), v36) + 10);
  *buf = __p;
  v18 = sub_100315D20((a1 + 648), __p);
  *(v18 + 10) += a4 - v17;
  *buf = v36;
  *(sub_100315D20((a1 + 728), v36) + 10) = a4;
  if (qword_10045B050 != -1)
  {
    sub_10038750C();
  }

  v19 = qword_10045B058;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v30 = v10;
    v20 = v12;
    v21 = a5;
    v22 = v9;
    v23 = SHIBYTE(v37);
    v24 = v36[0];
    v40 = v36;
    v25 = *(sub_100315D20((a1 + 728), v36) + 10);
    if (v23 >= 0)
    {
      v26 = v36;
    }

    else
    {
      v26 = v24;
    }

    *buf = 136315906;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 2048;
    v42 = v21;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v25;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Sent for %s; %lld of %lld, %d", buf, 0x26u);
    v9 = v22;
    v12 = v20;
    v10 = v30;
  }

  *buf = __p;
  v27 = *(sub_100315D20((a1 + 648), __p) + 10);
  *buf = __p;
  v28 = *(sub_100315D20((a1 + 608), __p) + 10);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3321888768;
  v31[2] = sub_100310654;
  v31[3] = &unk_100449230;
  *buf = a1;
  if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
    *&buf[8] = *__p;
    v42 = v39;
    *&v43 = v27;
    *(&v43 + 1) = v28;
    v32 = a1;
LABEL_16:
    v33 = *&buf[8];
    v34 = v42;
    goto LABEL_19;
  }

  sub_100003228(&buf[8], __p[0], __p[1]);
  *&v43 = v27;
  *(&v43 + 1) = v28;
  v32 = *buf;
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  sub_100003228(&v33, *&buf[8], *&buf[16]);
LABEL_19:
  v35 = v43;
  v29 = objc_retainBlock(v31);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(*&buf[8]);
  }

  dispatch_async(*(a1 + 544), v29);

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v36[0]);
LABEL_23:

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100310560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_100310654(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 488) + 32);
  if (*(a1 + 63) < 0)
  {
    sub_100003228(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v4 = *(a1 + 56);
  }

  v5 = *(a1 + 64);
  sub_100312980(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003106E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100310700(__n128 *a1, uint64_t a2)
{
  a1[2].n128_u64[0] = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100003228(&a1[2].n128_u8[8], *(a2 + 40), *(a2 + 48));
    result = *(a2 + 64);
    a1[4] = result;
  }

  else
  {
    v4 = *(a2 + 40);
    a1[3].n128_u64[1] = *(a2 + 56);
    *(a1 + 40) = v4;
    result = *(a2 + 64);
    a1[4] = result;
  }

  return result;
}

void sub_10031076C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_100310784(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) response];
  memset(&v69, 0, sizeof(v69));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 localizedFailureReason];
    v6 = v5;
    if (v5)
    {
      [v5 ps_STLString];
      v7 = std::string::insert(&v68, 0, " because ");
      v8 = *&v7->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = 0;
      buf.__r_.__value_.__s.__data_[0] = 0;
    }

    v10 = [*(a1 + 40) localizedDescription];
    v11 = v10;
    if (v10)
    {
      [v10 ps_STLString];
    }

    else
    {
      memset(&v68, 0, sizeof(v68));
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v68, p_buf, size);
    v15 = v14->__r_.__value_.__r.__words[0];
    v70.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
    *(v70.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    *(&v69.__r_.__value_.__r.__words[1] + 7) = *(v70.__r_.__value_.__r.__words + 7);
    v69.__r_.__value_.__r.__words[0] = v15;
    v69.__r_.__value_.__l.__size_ = v70.__r_.__value_.__r.__words[0];
    *(&v69.__r_.__value_.__s + 23) = v16;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ([v3 statusCode] == 200)
    {
      v9 = 1;
      goto LABEL_27;
    }

    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Server responded with code %d", [v3 statusCode]);
    v18 = v17;
    if (v17)
    {
      [v17 ps_STLString];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v69 = buf;
    *(&buf.__r_.__value_.__s + 23) = 0;
    buf.__r_.__value_.__s.__data_[0] = 0;
  }

  v9 = 0;
LABEL_27:
  [*(v2 + 600) removeObjectForKey:*(a1 + 48)];
  v19 = (a1 + 72);
  if (v9)
  {
    v20 = sub_1000199C0(a1 + 72, 0);
    sub_1003100F4(v2, *(a1 + 56), *(a1 + 32), v20, v20);
    sub_10030E70C(v2 + 8, 6u, &v68);
    sub_10001B178((a1 + 72), &v70);
    sub_1000032E4(&v68, &v70);
    buf = v68;
    memset(&v68, 0, sizeof(v68));
    sub_10001A224(a1 + 72, &buf, 0);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_30:
        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_56:
        operator delete(v68.__r_.__value_.__l.__data_);
LABEL_31:
        v21 = (a1 + 96);
        buf.__r_.__value_.__r.__words[0] = a1 + 96;
        v22 = sub_100316150((v2 + 688), a1 + 96);
        sub_100311728(v22 + 5, a1 + 72);
        atomic_fetch_add((v2 + 504), 0xFFFFFFFF);
        atomic_fetch_add((v2 + 508), 1u);
        buf.__r_.__value_.__r.__words[0] = a1 + 96;
        if (sub_100316150((v2 + 688), a1 + 96)[7])
        {
          if (qword_10045B050 != -1)
          {
            sub_10038750C();
          }

          v23 = qword_10045B058;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = a1 + 96;
            if (*(a1 + 119) < 0)
            {
              v24 = *v21;
            }

            v68.__r_.__value_.__r.__words[0] = a1 + 96;
            v25 = sub_100316150((v2 + 688), a1 + 96)[7];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v24;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Uploaded part of %s with %zu pieces remaining", &buf, 0x16u);
          }

          goto LABEL_147;
        }

        buf.__r_.__value_.__s.__data_[0] = 0;
        sub_10030E9EC(v2, (a1 + 96), 3, &buf, 0);
        if (qword_10045B050 != -1)
        {
          sub_10038750C();
        }

        v39 = qword_10045B058;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = a1 + 96;
          if (*(a1 + 119) < 0)
          {
            v40 = *v21;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Completed uploading %s", &buf, 0xCu);
        }

        v41 = sub_100316798((v2 + 688), a1 + 96);
        if (v41)
        {
          sub_100010A88((v2 + 688), v41, &buf);
          v42 = buf.__r_.__value_.__r.__words[0];
          buf.__r_.__value_.__r.__words[0] = 0;
          if (v42)
          {
            if (buf.__r_.__value_.__s.__data_[16] == 1)
            {
              sub_100136CF0(v42 + 40, *(v42 + 48));
              if (*(v42 + 39) < 0)
              {
                operator delete(*(v42 + 16));
              }
            }

            operator delete(v42);
          }
        }

        v43 = sub_100316950((v2 + 608), a1 + 96);
        if (v43)
        {
          sub_100010A88((v2 + 608), v43, &buf);
          v44 = buf.__r_.__value_.__r.__words[0];
          buf.__r_.__value_.__r.__words[0] = 0;
          if (v44)
          {
            if (buf.__r_.__value_.__s.__data_[16] == 1 && *(v44 + 39) < 0)
            {
              v45 = v44;
              operator delete(*(v44 + 16));
              v44 = v45;
            }

            operator delete(v44);
          }
        }

        v46 = sub_100316950((v2 + 648), a1 + 96);
        if (v46)
        {
          sub_100010A88((v2 + 648), v46, &buf);
          v47 = buf.__r_.__value_.__r.__words[0];
          buf.__r_.__value_.__r.__words[0] = 0;
          if (v47)
          {
            if (buf.__r_.__value_.__s.__data_[16] == 1 && *(v47 + 39) < 0)
            {
              v48 = v47;
              operator delete(*(v47 + 16));
              v47 = v48;
            }

            operator delete(v47);
          }
        }

        v49 = *(v2 + 800);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1003118BC;
        block[3] = &unk_1004491A8;
        block[4] = v2;
        if (*(a1 + 119) < 0)
        {
          sub_100003228(&v66, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          v66 = *v21;
          v67 = *(a1 + 112);
        }

        dispatch_sync(v49, block);
        sub_10030E70C(v2 + 8, 5u, &v70);
        if (*(a1 + 119) < 0)
        {
          sub_100003228(v63, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          *v63 = *v21;
          v64 = *(a1 + 112);
        }

        sub_1000032E4(&v70, v63);
        v68 = v70;
        memset(&v70, 0, sizeof(v70));
        if (*(a1 + 119) >= 0)
        {
          v51 = *(a1 + 119);
        }

        else
        {
          v51 = *(a1 + 104);
        }

        if (v51 + 4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        if (v51 + 4 >= 0x17)
        {
          operator new();
        }

        v60 = 0;
        v59 = 0uLL;
        HIBYTE(v60) = v51 + 4;
        if (v51)
        {
          if (*(a1 + 119) >= 0)
          {
            v52 = (a1 + 96);
          }

          else
          {
            v52 = *(a1 + 96);
          }

          memmove(&v59, v52, v51);
        }

        strcpy(&v59 + v51, ".zip");
        *v61 = v59;
        v62 = v60;
        sub_1000032E4(&v68, v61);
        buf = v68;
        memset(&v68, 0, sizeof(v68));
        if (SHIBYTE(v62) < 0)
        {
          operator delete(v61[0]);
          if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_116:
            if ((SHIBYTE(v64) & 0x80000000) == 0)
            {
              goto LABEL_117;
            }

            goto LABEL_152;
          }
        }

        else if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_116;
        }

        operator delete(v68.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
LABEL_117:
          if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }

LABEL_153:
          operator delete(v70.__r_.__value_.__l.__data_);
LABEL_118:
          sub_10030E70C(v2 + 8, 6u, &v70);
          if (*(a1 + 119) >= 0)
          {
            v53 = *(a1 + 119);
          }

          else
          {
            v53 = *(a1 + 104);
          }

          if (v53 + 4 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_10000D39C();
          }

          if (v53 + 4 >= 0x17)
          {
            operator new();
          }

          v61[1] = 0;
          v62 = 0;
          v61[0] = 0;
          HIBYTE(v62) = v53 + 4;
          if (v53)
          {
            if (*(a1 + 119) >= 0)
            {
              v54 = (a1 + 96);
            }

            else
            {
              v54 = *(a1 + 96);
            }

            memmove(v61, v54, v53);
          }

          strcpy(v61 + v53, ".zip");
          *v63 = *v61;
          v64 = v62;
          sub_1000032E4(&v70, v63);
          v68 = v70;
          memset(&v70, 0, sizeof(v70));
          if (SHIBYTE(v64) < 0)
          {
            operator delete(*v63);
            if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_131:
              if (qword_10045B050 == -1)
              {
                goto LABEL_132;
              }

LABEL_156:
              sub_10038750C();
LABEL_132:
              v55 = qword_10045B058;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                if (*(a1 + 95) < 0)
                {
                  v19 = *v19;
                }

                LODWORD(v70.__r_.__value_.__l.__data_) = 136315138;
                *(v70.__r_.__value_.__r.__words + 4) = v19;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Saving %s in the uploaded directory for future re-upload", &v70, 0xCu);
              }

              memset(&v70, 0, sizeof(v70));
              sub_10001A224(&buf, &v68, &v70);
              if ((v70.__r_.__value_.__s.__data_[16] & 1) != 0 && (v70.__r_.__value_.__r.__words[2] != 1 || LODWORD(v70.__r_.__value_.__l.__data_)))
              {
                if (qword_10045B050 != -1)
                {
                  sub_10038750C();
                }

                v56 = qword_10045B058;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  *v63 = 0;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Oops... we already moved the uploading file", v63, 2u);
                }
              }

              if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v68.__r_.__value_.__l.__data_);
                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_146:
                  if ((SHIBYTE(v67) & 0x80000000) == 0)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_159;
                }
              }

              else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_146;
              }

              operator delete(buf.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v67) & 0x80000000) == 0)
              {
                goto LABEL_147;
              }

LABEL_159:
              operator delete(v66);
              if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_149;
              }

              goto LABEL_148;
            }
          }

          else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_131;
          }

          operator delete(v70.__r_.__value_.__l.__data_);
          if (qword_10045B050 == -1)
          {
            goto LABEL_132;
          }

          goto LABEL_156;
        }

LABEL_152:
        operator delete(*v63);
        if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_153;
      }
    }

    else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(v70.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

  buf.__r_.__value_.__r.__words[0] = a1 + 72;
  v26 = *(sub_100315D20((v2 + 728), a1 + 72) + 10);
  v27 = (a1 + 96);
  buf.__r_.__value_.__r.__words[0] = a1 + 96;
  v28 = sub_100315D20((v2 + 648), a1 + 96);
  *(v28 + 10) -= v26;
  buf.__r_.__value_.__r.__words[0] = a1 + 72;
  *(sub_100315D20((v2 + 728), a1 + 72) + 10) = 0;
  v29 = [*(a1 + 32) countOfBytesExpectedToSend];
  buf.__r_.__value_.__r.__words[0] = a1 + 96;
  v30 = sub_100315D20((v2 + 608), a1 + 96);
  *(v30 + 10) -= v29;
  if ([*(a1 + 40) code] == -999 && (sub_100002F5C((a1 + 72), 0, &buf), LODWORD(buf.__r_.__value_.__l.__data_) != 2))
  {
    if (qword_10045B050 != -1)
    {
      sub_10038750C();
    }

    v50 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 119) < 0)
      {
        v27 = *v27;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      v36 = "Task for %s was cancelled";
      v37 = v50;
      v38 = 12;
LABEL_93:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v36, &buf, v38);
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_148;
      }

      goto LABEL_149;
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_10038750C();
    }

    v31 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 119) < 0)
      {
        v27 = *v27;
      }

      v32 = &v69;
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v69.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Failed to upload %s; will retry soon: %s", &buf, 0x16u);
    }

    v33 = atomic_load((v2 + 472));
    if (v33)
    {
      (*(**(v2 + 560) + 16))(*(v2 + 560));
    }

    v34 = atomic_load((v2 + 472));
    if (v34)
    {
      if (*(a1 + 95) < 0)
      {
        sub_100003228(__p, *(a1 + 72), *(a1 + 80));
      }

      else
      {
        *__p = *v19;
        v58 = *(a1 + 88);
      }

      sub_10030F918(v2, __p);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      goto LABEL_147;
    }

    if (qword_10045B050 != -1)
    {
      sub_10038750C();
    }

    v35 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v36 = "Shutdown in progress, not going to retry upload";
      v37 = v35;
      v38 = 2;
      goto LABEL_93;
    }
  }

LABEL_147:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_148:
    operator delete(v69.__r_.__value_.__l.__data_);
  }

LABEL_149:
}

void sub_1003114B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 185) < 0)
  {
    operator delete(*(v50 - 208));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100311728(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v7 = v5 >= 0 ? a2 : *a2;
  v8 = a1 + 1;
  v9 = a1[1];
  do
  {
    v10 = *(v9 + 55);
    if (v10 >= 0)
    {
      v11 = *(v9 + 55);
    }

    else
    {
      v11 = *(v9 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (v9 + 32);
    }

    else
    {
      v12 = *(v9 + 32);
    }

    if (v6 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    v14 = memcmp(v12, v7, v13);
    v15 = v11 < v6;
    if (v14)
    {
      v15 = v14 < 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v8 = v9;
    }

    v9 = *(v9 + v17);
  }

  while (v9);
  if (v8 == v3)
  {
    return 0;
  }

  v18 = v8[4];
  v19 = *(v8 + 55);
  if (v19 >= 0)
  {
    v20 = *(v8 + 55);
  }

  else
  {
    v20 = v8[5];
  }

  if (v19 >= 0)
  {
    v21 = v8 + 4;
  }

  else
  {
    v21 = v8[4];
  }

  if (v20 >= v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = v20;
  }

  v23 = memcmp(v7, v21, v22);
  v24 = v6 < v20;
  if (v23)
  {
    v24 = v23 < 0;
  }

  if (v24)
  {
    return 0;
  }

  v26 = v8[1];
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
    v28 = v8;
    do
    {
      v27 = v28[2];
      v16 = *v27 == v28;
      v28 = v27;
    }

    while (!v16);
  }

  if (*a1 == v8)
  {
    *a1 = v27;
  }

  --a1[2];
  sub_100228A0C(v2, v8);
  if (*(v8 + 55) < 0)
  {
    operator delete(v8[4]);
  }

  operator delete(v8);
  return 1;
}

char *sub_1003118D0(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 95) < 0)
  {
    result = sub_100003228(result + 72, *(a2 + 72), *(a2 + 80));
    if ((*(a2 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 72);
    *(result + 11) = *(a2 + 88);
    *(result + 72) = v4;
    if ((*(a2 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 96);
      *(v3 + 14) = *(a2 + 112);
      *(v3 + 6) = v5;
      return result;
    }
  }

  return sub_100003228(v3 + 96, *(a2 + 96), *(a2 + 104));
}

void sub_100311950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_10031196C(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 72);

  operator delete(v2);
}

char *sub_1003119EC(char *result, uint64_t a2)
{
  v3 = result;
  *(result + 4) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    result = sub_100003228(result + 40, *(a2 + 40), *(a2 + 48));
    *(v3 + 16) = *(a2 + 64);
    v3[72] = 0;
    if (*(a2 + 72) != 1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
    *(result + 16) = *(a2 + 64);
    result[72] = 0;
    if (*(a2 + 72) != 1)
    {
      return result;
    }
  }

  *(v3 + 20) = *(a2 + 80);
  if (*(a2 + 111) < 0)
  {
    result = sub_100003228(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(v3 + 13) = *(a2 + 104);
    *(v3 + 88) = v5;
  }

  v3[72] = 1;
  return result;
}

void sub_100311AC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100311ADC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      v2 = a1;
      operator delete(*(a1 + 88));
      a1 = v2;
    }

    *(a1 + 72) = 0;
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

uint64_t sub_100311B44(uint64_t result)
{
  if (*(result + 40) != 1)
  {
    if ((*(result + 31) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_8:
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  if (*(result + 79) < 0)
  {
    v1 = result;
    operator delete(*(result + 56));
    result = v1;
    *(v1 + 40) = 0;
    if (*(v1 + 31) < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(result + 40) = 0;
    if (*(result + 31) < 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100311BCC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

double sub_100311C10(uint64_t a1, uint64_t a2)
{
  v4 = strlen((a2 & 0x7FFFFFFFFFFFFFFFLL));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, (a2 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_100311CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100311D14(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100311DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311E88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100311DFC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_100311E88(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    while (1)
    {
      *(a1 + 16) = v3 - 48;
      v4 = *(v3 - 8);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = *(v3 - 40);
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_3:
      v3 = *(a1 + 16);
      if (v3 == v2)
      {
        goto LABEL_10;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(v3 - 40);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(*v5 + 8))(v5);
    goto LABEL_3;
  }

LABEL_10:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100311F70()
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_100311FD0(exception);
}

uint64_t sub_100311FD0(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *result = &off_100449398;
  *(result + 8) = off_1004493C8;
  *(result + 16) = off_1004493F0;
  return result;
}

std::bad_cast *sub_100312040(std::bad_cast *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);
  return a1;
}

void sub_100312264(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_100312618(exception, a1);
}

void sub_1003122C0(std::bad_cast *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);

  operator delete();
}

void sub_100312364(std::bad_cast *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);
}

void sub_1003123F8(std::bad_cast *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_1003124B4(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);
}

void sub_10031253C(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);

  operator delete();
}

void sub_1003125E0(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

__n128 sub_100312618(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100449410;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_100449398;
  a1->n128_u64[1] = off_1004493C8;
  a1[1].n128_u64[0] = off_1004493F0;
  return result;
}

uint64_t sub_10031274C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1003127E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_100312980(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::mutex::lock((a1 + 48));
  {
LABEL_33:
    if (qword_10045B050 != -1)
    {
      sub_100387534();
    }

    v24 = qword_10045B058;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100311C10(&v35, "N7actions9upload_db14UploadProgressE");
      v25 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "No listeners for event %s", &buf, 0xCu);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    std::mutex::unlock((a1 + 48));
    goto LABEL_42;
  }

  {
    v10 = v9[1];
LABEL_6:
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == v7)
    {
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        v10 = v9[1];
        if ((v10 & 0x8000000000000000) == 0)
        {
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_10:
  sub_100311D14(&__p, 0xAAAAAAAAAAAAAAABLL * ((v9[4] - v9[3]) >> 4));
  v11 = v9[3];
  v12 = v9[4];
  if (v11 != v12)
  {
    v13 = v41;
    do
    {
      while (v13 >= v42)
      {
        sub_1000DABA0(&__p, v11);
        v13 = v16;
        v41 = v16;
        v11 += 48;
        if (v11 == v12)
        {
          goto LABEL_19;
        }
      }

      *v13 = *v11;
      v14 = *(v11 + 8);
      if (v14)
      {
        v14 = (*(*v14 + 24))(v14);
      }

      *(v13 + 1) = v14;
      *(v13 + 1) = *(v11 + 16);
      *(v13 + 4) = *(v11 + 32);
      v15 = *(v11 + 40);
      *(v13 + 5) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v13 += 48;
      v41 = v13;
      v11 += 48;
    }

    while (v11 != v12);
  }

LABEL_19:
  std::mutex::unlock((a1 + 48));
  sub_100311C10(&v35, "N7actions9upload_db14UploadProgressE");
  v17 = std::string::insert(&v35, 0, "delivering event ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v39 = v17->__r_.__value_.__r.__words[2];
  *v38 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  *&buf = off_1004494A0;
  *(&buf + 1) = a2;
  v44 = v38;
  p_buf = &buf;
  sub_1000E6C18(&__p, &buf, &v36);
  v19 = v36;
  if (v36 != v37)
  {
    std::mutex::lock((a1 + 48));
    if (*(a1 + 16))
    {
      v20 = (*(a1 + 8) - 1) & v6;
      v21 = *(*(a1 + 40) + 8 * v20);
      if (v21)
      {
        v22 = *v21;
        if (v22)
        {
          {
LABEL_31:
            if (v36 != v37)
            {
              operator new();
            }
          }

          else
          {
            v23 = v22[1];
LABEL_27:
            if ((v23 & 0x7FFFFFFFFFFFFFFFLL) == v20)
            {
              while (1)
              {
                v22 = *v22;
                if (!v22)
                {
                  break;
                }

                v23 = v22[1];
                if ((v23 & 0x8000000000000000) == 0)
                {
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_31;
                }
              }
            }
          }
        }
      }
    }

    std::mutex::unlock((a1 + 48));
    v19 = v36;
  }

  if (v19)
  {
    v31 = v37;
    v32 = v19;
    if (v37 != v19)
    {
      do
      {
        v33 = *(v31 - 1);
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v34 = *(v31 - 5);
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        v31 -= 48;
      }

      while (v31 != v19);
      v32 = v36;
    }

    v37 = v19;
    operator delete(v32);
  }

  if (p_buf != &buf)
  {
    if (p_buf)
    {
      (*(*p_buf + 40))(p_buf);
    }

    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

  (*(*p_buf + 32))(p_buf);
  if (SHIBYTE(v39) < 0)
  {
LABEL_73:
    operator delete(v38[0]);
  }

LABEL_42:
  v26 = __p;
  if (!__p)
  {
    return;
  }

  v27 = v41;
  v28 = __p;
  if (v41 == __p)
  {
    goto LABEL_53;
  }

  do
  {
    v30 = *(v27 - 1);
    if (!v30 || atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = *(v27 - 5);
      if (!v29)
      {
        goto LABEL_47;
      }

LABEL_46:
      (*(*v29 + 8))(v29);
      goto LABEL_47;
    }

    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v29 = *(v27 - 5);
    if (v29)
    {
      goto LABEL_46;
    }

LABEL_47:
    v27 -= 48;
  }

  while (v27 != v26);
  v28 = __p;
LABEL_53:
  v41 = v26;
  operator delete(v28);
}

void sub_100313194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  std::bad_cast::~bad_cast(&a10);
  (*(*v34 + 8))(v34);
  std::mutex::unlock((v33 + 48));
  sub_1000DA348(&a21);
  sub_100311DFC(v35 - 128);
  if (a29 < 0)
  {
    operator delete(__p);
    sub_1000DA348(&a30);
    _Unwind_Resume(a1);
  }

  sub_1000DA348(&a30);
  _Unwind_Resume(a1);
}

__n128 sub_100313384(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004494A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003133BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_100313434(void *a1, uint64_t *a2)
{
  v3 = a2[4];
  v5 = *a1;
  v4 = a1[1];
  if (*(*a1 + 23) < 0)
  {
    sub_100003228(__p, *v5, *(v5 + 1));
    v11 = *(v5 + 24);
    v7 = a2[1];
    v12 = *a2;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *v5;
    v10 = *(v5 + 2);
    *__p = v6;
    v11 = *(v5 + 24);
    v7 = a2[1];
    v12 = *a2;
    if (!v7)
    {
LABEL_6:
      v13 = v7;
      v14 = *(a2 + 1);
      v8 = a2[5];
      v15 = a2[4];
      v16 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1003135DC(v3, v4, __p);
    }
  }

  v7 = (*(*v7 + 24))(v7);
  goto LABEL_6;
}

void sub_1003135AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}