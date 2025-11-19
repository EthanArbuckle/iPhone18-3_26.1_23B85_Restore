void sub_1005BDD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

CLAvengerScannerClient *sub_1005BDD78(CLAvengerScannerClient *result)
{
  queue = result->_queue;
  if (queue != -1)
  {
    v2 = result;
    result->_queue = (queue + 1);
    if (!result->_delegate)
    {
      if (qword_1025D4610 != -1)
      {
        sub_1018D4D18();
      }

      v3 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [(CLAvengerScannerClientController *)v2->_controller clientname];
        v5[0] = 68289282;
        v5[1] = 0;
        v6 = 2082;
        v7 = "";
        v8 = 2114;
        v9 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client initiating scanner, name:%{public, location:escape_only}@}", v5, 0x1Cu);
      }

      result = -[CLAvengerScannerClient initWithDelegate:queue:]([CLAvengerScannerClient alloc], "initWithDelegate:queue:", v2->_controller, [-[CLAvengerPowerAssertion silo](v2->_avengerPowerAssertion "silo")]);
      v2->_delegate = result;
    }
  }

  return result;
}

void sub_1005BDEB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = v1 - 1;
    *(a1 + 40) = v3;
    if (!v3)
    {
      if (qword_1025D4610 != -1)
      {
        sub_1018D4D18();
      }

      v4 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 56) clientname];
        v6[0] = 68289282;
        v6[1] = 0;
        v7 = 2082;
        v8 = "";
        v9 = 2114;
        v10 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client tearing down scanner, name:%{public, location:escape_only}@}", v6, 0x1Cu);
      }

      *(a1 + 32) = 0;
    }
  }
}

uint64_t sub_1005BE07C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      sub_1005BE0F8(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1005BE0F8(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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
    sub_1005BE358();
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1005BE334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BE3D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1005BE3F0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  return __dst;
}

void sub_1005BE448(uint64_t a1, char *a2)
{
  sub_10000EC00(v4, a2);
  sub_10000EC00(&__p, "");
  sub_1005BE4F8(a1, v4);
}

void sub_1005BE4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1005BE4F8(uint64_t a1, uint64_t a2)
{
  *v2 = *a2;
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  operator new();
}

void sub_1005BE600(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1018D4E44(&a15, a1, a2, v21 - 48);
  v24 = *(v21 - 48);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(v24);
}

void sub_1005BE654(uint64_t a1, __int128 *a2, int a3, uint64_t *a4, __int128 *a5)
{
  *a1 = 0;
  v8 = (a1 + 8);
  v9 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 40) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 49) = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 56), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 72) = *(a5 + 2);
    *(a1 + 56) = v10;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *a4;
  *a4 = 0;
  *(a1 + 96) = v11;
  if (qword_1025D4600 != -1)
  {
    sub_1018D4EB0();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v13 = v8;
    if (*(a1 + 31) < 0)
    {
      v13 = *v8;
    }

    buf[0] = 136315650;
    *&buf[1] = v13;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = 1;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Creating managed location database %s (count triggers %d, use cache %d)", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018D4EC4();
    }

    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLManagedLocationDatabase<CLNrCellLocationDatabase, CLTelephonyService_Type::NrCell>::CLManagedLocationDatabase(std::string, BOOL, std::unique_ptr<IExternal>, std::string) [Database = CLNrCellLocationDatabase, DataType = CLTelephonyService_Type::NrCell]", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if ((*(**(a1 + 96) + 16))(*(a1 + 96)))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018D4EC4();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v15 = v8;
      if (*(a1 + 31) < 0)
      {
        v15 = *v8;
      }

      buf[0] = 136315138;
      *&buf[1] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "Data protection is enabled, creating in-memory database for table %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018D4EC4();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLManagedLocationDatabase<CLNrCellLocationDatabase, CLTelephonyService_Type::NrCell>::CLManagedLocationDatabase(std::string, BOOL, std::unique_ptr<IExternal>, std::string) [Database = CLNrCellLocationDatabase, DataType = CLTelephonyService_Type::NrCell]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_1005BEDA8(a1, a3);
  }

  sub_1005BEEC0();
}

void sub_1005BECF4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v2 + 16));
  }

  v6 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BEDA8(uint64_t a1, char a2)
{
  sub_10000EC00(__p, "");
  v6 = 0;
  v5 = 0;
  v7 = a2;
  if (SHIBYTE(v4) < 0)
  {
    sub_100007244(v8, __p[0], __p[1]);
    v9 = 0;
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v8 = *__p;
    v8[2] = v4;
    v9 = 0;
  }

  sub_1005BEEC0();
}

void sub_1005BEE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BEF90(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1005BF00C(uint64_t a1)
{
  if (*(a1 + 88))
  {
    sub_1018D5298();
  }

  if (*(a1 + 31) >= 0)
  {
    v2 = *(a1 + 31);
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = __p;
  sub_100070148(__p, v2 + 17);
  if (v10 < 0)
  {
    v3 = __p[0];
  }

  if (v2)
  {
    if (*(a1 + 31) >= 0)
    {
      v4 = (a1 + 8);
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "-InMemoryDatabase");
  v5 = v10;
  v6 = __p[0];
  v7 = [CLOSTransaction alloc];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 88) = [(CLOSTransaction *)v7 initWithDescription:v8];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005BF0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005BF120(uint64_t a1)
{
  result = sub_100D83718(a1, 0);
  *result = &off_1024621C0;
  *(result + 96) = 0;
  return result;
}

uint64_t *sub_1005BF15C(uint64_t *result, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v4 = result;
  if (*a2 >= 3u)
  {
    if (*a2 != 9 || *(result + 24) != a4)
    {
      return result;
    }
  }

  else
  {
    v5 = *(result + 24) == a3;
    a3 = a4;
    if (!v5)
    {
      return result;
    }
  }

  sub_1005BF1DC(result, a3);

  return sub_1005BF2E0(v4);
}

void sub_1005BF1DC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 96) != a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018D5470();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 96);
      v6[0] = 68289538;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = v5;
      v11 = 2050;
      v12 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Transitioned state, old state:%{public, location:CLStreamingAwareLocationProviderNoLocalGPSStateMachine::LocationSourceState}lld, new state:%{public, location:CLStreamingAwareLocationProviderNoLocalGPSStateMachine::LocationSourceState}lld}", v6, 0x26u);
    }

    *(a1 + 96) = a2;
  }
}

uint64_t *sub_1005BF2E0(uint64_t *result)
{
  v1 = result;
  __asm { FMOV            V0.2D, #-1.0 }

  v8 = _Q0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7 = *(result + 24);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      sub_1001ED860(result, 0);
      return sub_1000F2160(v1, 1, &v8);
    }

    if (v7 != 3)
    {
      if (v7 == 4)
      {
        sub_1000F2160(result, 0, &v8);
        return sub_1001ED860(v1, 1u);
      }

      return result;
    }

LABEL_8:
    sub_1000F2160(result, 0, &v8);
    return sub_1000F2160(v1, 1, &v8);
  }

  if (v7)
  {
    if (v7 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_1001ED860(result, 0);

  return sub_1001ED860(v1, 1u);
}

uint64_t *sub_1005BF3CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    v4 = *(v3 + 7);
    if (v4 <= 0)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      v5 = *(a1 + 16);
      while (1)
      {
        v6 = *(v5 + 7);
        if (v6 <= 1)
        {
          if (v6 == 1)
          {
LABEL_21:
            if (*(a1 + 96) > 2u)
            {
              goto LABEL_18;
            }

            v8 = 4;
LABEL_17:
            sub_1005BF1DC(a1, v8);
            goto LABEL_18;
          }

          ++v5;
        }

        v5 = *v5;
        if (!v5)
        {
          do
          {
            v7 = *(v2 + 7);
            if (v7 <= 2)
            {
              if (v7 == 2)
              {
                goto LABEL_21;
              }

              ++v2;
            }

            v2 = *v2;
          }

          while (v2);
          goto LABEL_16;
        }
      }
    }
  }

  if (v4 < 0)
  {
    ++v3;
    goto LABEL_6;
  }

  v10 = *(a1 + 96);
  v11 = v10 > 4;
  v12 = (1 << v10) & 0x19;
  if (!v11 && v12 != 0)
  {
    v8 = 2;
    goto LABEL_17;
  }

LABEL_18:

  return sub_1005BF2E0(a1);
}

uint64_t sub_1005BF4B4(uint64_t a1, int a2, unsigned int *a3)
{
  result = sub_100D836FC(*a3);
  if (result)
  {
    v7 = *(a1 + 96);
    v8 = v7 != 4 || a2 == 0;
    if (v7 == 2)
    {
      v9 = a2 == 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 == 1)
  {
    v10 = a1;
    v11 = a3;
    v12 = 1;
    v13 = 2;
  }

  else
  {
    if (a2)
    {
      goto LABEL_14;
    }

    v10 = a1;
    v11 = a3;
    v12 = 3;
    v13 = 4;
  }

  result = sub_1005BF15C(v10, v11, v12, v13);
LABEL_14:
  if (v9)
  {
    v14 = *(**(a1 + 32) + 8);

    return v14();
  }

  return result;
}

void sub_1005BF5B4(uint64_t a1)
{
  sub_100475640(a1);

  operator delete();
}

void sub_1005BF61C(uint64_t a1, double a2)
{
  if (*(a1 + 80) && *(a1 + 16) > 0.0)
  {
    sub_1005BFC48(a1);
    operator new();
  }

  if (*(a1 + 224))
  {
    v4 = sub_10000B1F8();
    *buf = 1;
    v5 = sub_10001A6B0(v4, buf);
    v6 = *(a1 + 216);
    if (v6 != (a1 + 208))
    {
      v7 = v5;
      do
      {
        v8 = v6[3];
        if (v8 <= 0.0 || v7 - v8 >= 86400.0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_1018D5484();
          }

          v9 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v10 = a1 + 256;
            if (*(a1 + 279) < 0)
            {
              v10 = *(a1 + 256);
            }

            v17 = v6[3];
            *buf = 136446978;
            v15 = v10;
            v16 = 2050;
            v18 = 2050;
            v19 = v7;
            v20 = 2050;
            v21 = v7 - v17;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,old segment is deleted,startMCT,%{public}.3f,currentMCT,%{public}.3f,age_s,%{public}.3f", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_1018D5484();
            }

            v13 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::createSegmentAndRestart(const CFTimeInterval)", "%s\n", v13);
            if (v13 != buf)
            {
              free(v13);
            }
          }

          v11 = *v6;
          v12 = *(v6 + 1);
          *(*&v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 224);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          v6 = *(v6 + 1);
        }
      }

      while (v6 != (a1 + 208));
    }
  }

  sub_10020C740(a1);
  *(a1 + 8) = a2;
}

void sub_1005BFC38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

double sub_1005BFC48(uint64_t a1)
{
  if (*(a1 + 112) <= 0.0)
  {
    return *(a1 + 104);
  }

  v2 = sub_10000B1F8();
  v6 = 1;
  v3 = sub_10001A6B0(v2, &v6);
  v4 = *(a1 + 104) + v3 - *(a1 + 112);
  *(a1 + 104) = v4;
  *(a1 + 112) = v3;
  return v4;
}

void *sub_1005BFCE8(uint64_t a1)
{
  if (*(a1 + 16) > 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v2 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 256);
      if (*(a1 + 279) < 0)
      {
        v3 = *v3;
      }

      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      *buf = 136446722;
      v9 = v3;
      v10 = 2050;
      v11 = v4;
      v12 = 2050;
      v13 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,reset dPos cumsum,prev_IntgStartTimeMCT,%{public}.3f,lastIOSampleMCT,%{public}.3f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::reset()", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  sub_10020C740(a1);
  return sub_1001FB750((a1 + 208));
}

void sub_1005BFEE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1005BFEEC(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 24);
  if (v4 <= 0.0 || v4 <= a2)
  {
    ++*(a1 + 104);
    *(a1 + 160) = vmlaq_n_f64(*(a1 + 160), xmmword_101C7FE30, a3 * a3);
  }

  v6 = *(a1 + 304);
  if (*(a1 + 312) != v6)
  {
    v7 = *(a1 + 328);
    v8 = (v6 + 8 * (v7 >> 8));
    v9 = (*v8 + 16 * v7);
    v10 = *(v6 + (((*(a1 + 336) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v7);
    if (v9 != v10)
    {
      v16 = vdupq_lane_s64(COERCE__INT64(a3 * a3), 0);
      do
      {
        v12 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          v13 = *(v12 + 8);
          if (v13 <= 0.0 || v13 <= a2)
          {
            ++*(v12 + 88);
            *(v12 + 144) = vmlaq_f64(*(v12 + 144), xmmword_101C7FE30, v16);
          }
        }

        if (v11)
        {
          sub_100008080(v11);
        }

        v9 += 2;
        if ((v9 - *v8) == 4096)
        {
          v15 = v8[1];
          ++v8;
          v9 = v15;
        }
      }

      while (v9 != v10);
    }
  }
}

double sub_1005C0018(uint64_t a1)
{
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 360) = 0xBFF0000000000000;
  *(a1 + 576) = 0xBFF0000000000000;
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 560) = 0xBFF0000000000000;
  *(a1 + 568) = 0;
  *(a1 + 376) = 0xBFF0000000000000;
  result = 0.0;
  *(a1 + 384) = xmmword_101C76220;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 432) = xmmword_101C76220;
  *(a1 + 448) = xmmword_101C76220;
  *(a1 + 464) = xmmword_101C75BF0;
  *(a1 + 480) = 0xBFF0000000000000;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0xBFF0000000000000;
  *(a1 + 512) = xmmword_101C76220;
  *(a1 + 528) = xmmword_101C75BF0;
  *(a1 + 544) = xmmword_101C75BF0;
  return result;
}

void sub_1005C0070(uint64_t a1, double a2)
{
  v3 = *(a1 + 328);
  v4 = v3 >> 8;
  v5 = *(a1 + 304);
  v6 = *(a1 + 312);
  if (v6 != v5)
  {
    v7 = (v5 + 8 * v4);
    v8 = (*v7 + 16 * v3);
    v9 = *(v5 + (((*(a1 + 336) + v3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v3);
    if (v8 != v9)
    {
      do
      {
        v11 = *v8;
        v12 = v8[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          sub_1005BF61C(v11, a2);
        }

        if (v12)
        {
          sub_100008080(v12);
        }

        v8 += 2;
        if ((v8 - *v7) == 4096)
        {
          v13 = v7[1];
          ++v7;
          v8 = v13;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 328);
      v5 = *(a1 + 304);
      v6 = *(a1 + 312);
      v4 = v3 >> 8;
    }
  }

  v14 = (v5 + 8 * v4);
  if (v6 == v5)
  {
    v15 = 0;
  }

  else
  {
    v15 = (*v14 + 16 * v3);
  }

LABEL_16:
  v16 = v15;
  while (1)
  {
    if (v6 == v5)
    {
      v18 = 0;
    }

    else
    {
      v17 = *(a1 + 336) + *(a1 + 328);
      v18 = *(v5 + ((v17 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v17;
    }

    if (v16 == v18)
    {
      break;
    }

    if (!*v16)
    {
      v14 = sub_1005C0300((a1 + 296), v14, v15);
      v15 = v20;
      v5 = *(a1 + 304);
      v6 = *(a1 + 312);
      goto LABEL_16;
    }

    v16 += 16;
    v15 += 16;
    if ((*v14 + 4096) == v15)
    {
      v19 = *(v14 + 1);
      v14 += 8;
      v15 = v19;
      goto LABEL_16;
    }
  }
}

const char *sub_1005C01DC(unsigned int a1)
{
  if (a1 > 5)
  {
    return "";
  }

  else
  {
    return (&off_1024622A8)[a1];
  }
}

char *sub_1005C0208(uint64_t a1)
{
  sub_1005C0018(a1);
  result = sub_1005BFCE8(a1 + 16);
  *(a1 + 560) = 0xBFF0000000000000;
  *(a1 + 568) = 0;
  *a1 = 1;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 368) = 0xBFF0000000000000;
  *(a1 + 576) = 0xBFF0000000000000;
  v3 = *(a1 + 328);
  v4 = *(a1 + 304);
  v5 = *(a1 + 312);
  v6 = (v4 + 8 * (v3 >> 8));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 16 * v3);
  }

  while (1)
  {
    if (v5 == v4)
    {
      v11 = 0;
    }

    else
    {
      v10 = *(a1 + 336) + *(a1 + 328);
      v11 = *(v4 + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
    }

    if (v7 == v11)
    {
      break;
    }

    if (*v7)
    {
      result = sub_1005BFCE8(*v7);
      v7 += 2;
      if ((v7 - *v6) == 4096)
      {
        v8 = *(v6 + 1);
        v6 += 8;
        v7 = v8;
      }
    }

    else
    {
      result = sub_1005C0300((a1 + 296), v6, v7);
      v6 = result;
      v7 = v9;
    }

    v4 = *(a1 + 304);
    v5 = *(a1 + 312);
  }

  return result;
}

void *sub_1005C0300(int64x2_t *a1, char *a2, char *a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v6)[16 * v4];
  }

  v35 = v6;
  v36 = v7;
  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = (&a3[-*a2] >> 4) + 32 * (a2 - v6) - ((v7 - *v6) >> 4);
  }

  v9 = sub_100014378(&v35, v8);
  v11 = v9;
  v12 = v10;
  v13 = a1[2].i64[1];
  if (v8 <= (v13 - 1) >> 1)
  {
    v18 = (v10 - *v9) >> 4;
    if (v18 < 0)
    {
      v27 = 254 - v18;
      v20 = &v9[-(v27 >> 8)];
      v21 = *v20 + 16 * ~v27;
    }

    else
    {
      v19 = v18 + 1;
      v20 = &v9[v19 >> 8];
      v21 = *v20 + 16 * v19;
    }

    sub_1005C0540(v35, v36, v9, v10, v20, v21, v37);
    v28 = *(v36 + 1);
    if (v28)
    {
      sub_100008080(v28);
    }

    a1[2] = vaddq_s64(a1[2], xmmword_101C66230);
    sub_100014444(a1, 1);
  }

  else
  {
    v14 = (v10 - *v9) >> 4;
    if (v14 < 0)
    {
      v22 = 254 - v14;
      v16 = &v9[-(v22 >> 8)];
      v17 = &(*v16)[~v22];
    }

    else
    {
      v15 = v14 + 1;
      v16 = &v9[v15 >> 8];
      v17 = &(*v16)[v15];
    }

    v23 = a1[2].i64[0] + v13;
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = &(*v25)[v23];
    }

    v37[0].n128_u64[0] = v11;
    v37[0].n128_u64[1] = v12;
    sub_1005C0764(v16, v17, v25, v26, v37);
    v29 = *(v37[0].n128_u64[1] + 8);
    if (v29)
    {
      sub_100008080(v29);
    }

    --a1[2].i64[1];
    sub_1001151D0(a1, 1);
  }

  v30 = a1[2].u64[0];
  v31 = a1->i64[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[1].i64[0] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v37[0].n128_u64[0] = v32;
  v37[0].n128_u64[1] = v33;
  return sub_100014378(v37, v8);
}

__n128 sub_1005C0540@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
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
      sub_1005C0610(v16, v18, v13, v14, &v21);
      v14 = v22.n128_i64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  sub_1005C0610(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1005C0610@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if ((a2 - a1) >> 4 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = (a2 - a1) >> 4;
    }

    v11 = &a2[-16 * v10];
    result = sub_1005C0700(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *(v5 - 1);
        v5 -= 8;
        v14 = v15;
        v16 = (v11 - a1) >> 4;
        if (v16 >= 256)
        {
          v16 = 256;
        }

        v17 = &v11[-16 * v16];
        result = sub_1005C0700(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = *(v5 + 1);
      v5 += 8;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

void *sub_1005C0700(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_100008080(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

double sub_1005C0764(__int128 **a1, __int128 *a2, __int128 **a3, __int128 *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 256; ; i = v12 + 256)
    {
      sub_1005C0808(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_1005C0808(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

void sub_1005C0808(__int128 *a1@<X1>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, __int128 **a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if (a2 - a1 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = a2 - a1;
    }

    for (i = sub_1005C08E0(&v16, a1, &a1[v10], a4); i != a2; i = sub_1005C08E0(&v16, i, &i[v14], v12))
    {
      v13 = *(v5 + 1);
      v5 = (v5 + 8);
      v12 = v13;
      v14 = a2 - i;
      if (v14 >= 256)
      {
        v14 = 256;
      }
    }

    a4 = v11;
    if (*v5 + 4096 == v11)
    {
      v15 = *(v5 + 1);
      v5 = (v5 + 8);
      a4 = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

__int128 *sub_1005C08E0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100008080(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1005C0960(float32x4_t *a1, float a2, float a3, float a4, float a5)
{
  if (sub_1005C0E70(0, &unk_1025D7238, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0))
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D54F0();
    }

    v10 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WMM initialization encountered an error", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D5504();
    }

    return 0xFFFFFFFFLL;
  }

  dword_102657058 = LODWORD(a2);
  dword_10265705C = LODWORD(a3);
  *&dword_102657060 = a4 / 1000.0;
  dword_102657064 = LODWORD(a5);
  if (sub_1005C0E70(1, 0, &dword_102657068, &dword_10265706C, &dword_102657070, &flt_102657074, a4 / 1000.0, a2, a3, a5))
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D54F0();
    }

    v11 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "WMM evaluation encountered an error", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D55E0();
    }

    return 0xFFFFFFFFLL;
  }

  dword_102657078 = dword_102657068;
  dword_10265707C = dword_10265706C;
  dword_102657080 = dword_102657070;
  *&dword_102657064 = *&dword_102657064 + 1.0;
  sub_1005C0E70(1, 0, &dword_102657068, &dword_10265706C, &dword_102657070, &flt_102657074, *&dword_102657060, *&dword_102657058, *&dword_10265705C, *&dword_102657064);
  v21 = *&dword_102657080;
  v12 = *&dword_102657078;
  v14 = __sincosf_stret(*&dword_102657078 * 0.017453);
  cosval = v14.__cosval;
  LODWORD(v20) = *&v14;
  v15 = dword_10265707C;
  v16 = __sincosf_stret(*&dword_10265707C * 0.017453);
  if ((v21 * v16.__cosval) < 100.0)
  {
    v12 = log(-1.0);
    dword_102657078 = LODWORD(v12);
  }

  if (90.0 - fabsf(*&dword_102657058) <= 0.001)
  {
    v12 = log(-1.0);
    dword_102657078 = LODWORD(v12);
    v18 = v12;
    v17.f32[0] = v12;
  }

  else
  {
    v17.f32[0] = v21 * (cosval * v16.__cosval);
    v18 = v21 * (v20 * v16.__cosval);
  }

  result = 0;
  v17.f32[1] = v18;
  v17.f32[2] = v21 * v16.__sinval;
  v17.f32[3] = v21;
  *a1 = vdivq_f32(v17, vdupq_n_s32(0x447A0000u));
  a1[1].f32[0] = (v21 * v16.__cosval) / 1000.0;
  a1[1].f32[1] = v12;
  a1[1].i32[2] = v15;
  return result;
}

uint64_t sub_1005C0E70(int a1, int *a2, float *a3, float *a4, float *a5, float *a6, float a7, float a8, float a9, float a10)
{
  if (a1 == 1)
  {
    v16 = a10 - *&dword_102658184;
    v17 = &unk_102658000;
    v18 = *&dword_102658198;
    if (*&dword_102658198 < 0.0 && v16 < 0.0)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D54F0();
      }

      v19 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v136 = a10;
        v137 = 2050;
        v138 = *&dword_102658184;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "supplied date (%{public}f) outside valid range (epoch=%{public}f)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D59C4(a10);
      }

      return 1;
    }

    v48 = __sincosf_stret(a9 * 0.017453);
    sinval = v48.__sinval;
    cosval = v48.__cosval;
    v51 = &unk_102658000;
    v52 = *&dword_1026581A0 != a8 || *&dword_10265819C != a7;
    dword_102657DC8 = LODWORD(v48.__sinval);
    dword_102657DFC = LODWORD(v48.__cosval);
    v53 = &unk_102658000;
    v54 = &unk_102658000;
    if (v52)
    {
      v55 = __sincosf_stret(a8 * 0.017453);
      v53 = &unk_102658000;
      v17 = &unk_102658000;
      v51 = &unk_102658000;
      v56 = sqrtf(*&dword_102658170 - (*&dword_102658178 * (v55.__sinval * v55.__sinval)));
      v57 = (*&dword_102658170 + (v56 * a7)) / ((v56 * a7) + *&dword_102658174);
      *&dword_1026581A8 = v55.__sinval / sqrtf((v55.__sinval * v55.__sinval) + ((v57 * v57) * (v55.__cosval * v55.__cosval)));
      *&v58 = sqrt(1.0 - (*&dword_1026581A8 * *&dword_1026581A8));
      dword_1026581AC = v58;
      v59 = (a7 * a7) + (v56 * a7) * 2.0 + ((*&dword_10265817C - (*&dword_102658180 * (v55.__sinval * v55.__sinval))) / (v56 * v56));
      dword_1026581B0 = sqrtf(v59);
      v60 = sqrtf(((v55.__sinval * v55.__sinval) * *&dword_102658174) + (*&dword_102658170 * (v55.__cosval * v55.__cosval)));
      *&dword_1026581B4 = (v60 + a7) / *&dword_1026581B0;
      *&dword_1026581B8 = (v55.__sinval * (v55.__cosval * *&dword_102658178)) / (v60 * *&dword_1026581B0);
    }

    v61 = dword_102657084;
    if (*&dword_1026581A4 != a9)
    {
      if (dword_102657084 >= 2)
      {
        v62 = dword_102657084 + 1;
        v67 = dword_102657084 - 1;
        v68 = &dword_102657E00;
        v69 = v48.__sinval;
        v70 = &dword_102657DCC;
        do
        {
          v71 = *&dword_102657DFC;
          v72 = (*&dword_102657DFC * sinval) + (v69 * cosval);
          *v70++ = v72;
          v69 = *&dword_102657DC8;
          cosval = (v71 * cosval) - (*&dword_102657DC8 * sinval);
          *v68++ = cosval;
          sinval = v72;
          --v67;
        }

        while (v67);
      }

      else
      {
        v62 = 2;
      }

      dword_10265708C = v62;
    }

    v73 = *&dword_1026581AC;
    if (v61 >= 1)
    {
      v74 = 0;
      v75 = 0;
      v76 = 3;
      v77 = &unk_102657608;
      v78 = &unk_1026570C0;
      v79 = &unk_102657364;
      v80 = 1;
      v81 = *&dword_10265816C / *&dword_1026581B0;
      v82 = v81 * v81;
      v83 = *&dword_1026581A8;
      v84 = -*&dword_1026581AC;
      v85 = *dword_102657DF8;
      v86 = dword_102657E94[0];
      v87 = *dword_102657DC4;
      v88 = 0.0;
      v89 = 0.0;
      v90 = 0.0;
      v91 = 0.0;
      while (1)
      {
        v92 = 0;
        v93 = 0;
        v94 = -(v81 * v82);
        v82 = v81 * v82;
        v132 = v80 + 1;
        v95 = flt_102657E2C[v80];
        v96 = &dword_102657B20[v80];
        v97 = v80 - 2;
        v98 = v96 - 1;
        v99 = v74;
        v100 = v80 - 1;
        v133 = v75;
        v134 = v99;
        v101 = v75 + 1;
        v102 = v99;
        v103 = v76;
        do
        {
          if (v52)
          {
            if (v101 == v93)
            {
              *&v96[13 * v80] = v73 * *&v98[13 * v80 - 13];
              *&dword_10265787C[13 * v80 + v80] = (v83 * *&v98[13 * v80 - 13]) + (v73 * *&dword_10265787C[13 * v80 - 14 + v80]);
            }

            else
            {
              if (v80 == 1 && !v93)
              {
                v111 = *&dword_10265787C[v100];
                *&dword_102657B24 = v83 * *dword_102657B20;
                *&dword_102657880 = (*(v96 - 1) * v84) + (v83 * v111);
                if (v18 == a10)
                {
LABEL_68:
                  v104 = v82 * *(&dword_102657B20[1] + v102);
LABEL_69:
                  v112 = flt_1026575D8[v80];
                  v109 = v112 * v85;
                  v110 = v112 * v87;
                  goto LABEL_70;
                }

LABEL_61:
                *(&flt_1026575D8[1] + v102) = *(&dword_102657090[1] + v102) + (v16 * *(&dword_102657334[1] + v102));
                if (!v93)
                {
                  goto LABEL_68;
                }

                v77[v93] = v78[v93] + (v16 * v79[v93]);
                v104 = v82 * *(&dword_102657B20[1] + v102);
                goto LABEL_64;
              }

              if (v80 >= 2)
              {
                if (v93 <= v97)
                {
                  v117 = *(&dword_10265787C[-1] + v102);
                  v116 = v92;
                }

                else
                {
                  v116 = 13 * v93;
                  *(&dword_102657B20[-1] + v102) = 0;
                  *(&dword_10265787C[-1] + v102) = 0;
                  v117 = 0.0;
                }

                v118 = *&v98[v116];
                v119 = *(&unk_102657EC8 + v102 + 4);
                *&v96[v116] = (v83 * v118) - (v119 * *&v96[v116 - 2]);
                *(&dword_10265787C[1] + v102) = ((v118 * v84) + (v83 * *(dword_10265787C + v102))) - (v119 * v117);
              }
            }
          }

          if (v18 != a10)
          {
            goto LABEL_61;
          }

          v104 = v82 * *(&dword_102657B20[1] + v102);
          if (!v93)
          {
            goto LABEL_69;
          }

LABEL_64:
          v105 = *(&flt_1026575D8[1] + v102);
          v106 = *&dword_102657DF8[v93];
          v107 = v77[v93];
          v108 = *&dword_102657DC4[v93];
          v109 = (v107 * v108) + (v105 * v106);
          v110 = (v105 * v108) - (v107 * v106);
LABEL_70:
          v113 = *(&dword_10265787C[1] + v102);
          v114 = v110 * flt_102657E60[v93];
          if (v93 == 1 && v73 == 0.0)
          {
            if (v80 == 1)
            {
              dword_102657E98 = v86;
              v115 = *&v86;
            }

            else
            {
              v115 = (v83 * *&dword_102657E94[v100]) - (*(&unk_102657EC8 + v80 + 13) * *&dword_102657E94[v97]);
              *&dword_102657E94[v80] = v115;
            }

            v91 = v91 + (v114 * (v82 * v115));
          }

          v88 = v88 + ((v109 * v94) * v113);
          v89 = v89 + (v114 * v104);
          v90 = v90 + ((v109 * v95) * v104);
          ++v93;
          --v103;
          v92 += 13;
          v102 += 52;
        }

        while (v103 > 1);
        ++v76;
        v75 = v133 + 1;
        v74 = v134 + 4;
        v77 += 13;
        v78 += 13;
        v79 += 13;
        v120 = v61 + 1;
        ++v80;
        if (v132 == v61 + 1)
        {
          dword_10265708C = v93;
          v17 = &unk_102658000;
          v51 = &unk_102658000;
          v53 = &unk_102658000;
          v54 = &unk_102658000;
          goto LABEL_86;
        }
      }
    }

    v120 = 1;
    v90 = 0.0;
    v88 = 0.0;
    v91 = 0.0;
    v89 = 0.0;
LABEL_86:
    dword_102657088 = v120;
    if (v73 == 0.0)
    {
      v121 = v91;
    }

    else
    {
      v121 = v89 / v73;
    }

    v122 = v53[109];
    v123 = v54[110];
    v124 = -(v90 * v123) - (v88 * v122);
    v125 = (v88 * v123) - (v90 * v122);
    v126 = sqrtf((v121 * v121) + (v124 * v124));
    *a5 = sqrtf((v125 * v125) + (v126 * v126));
    *a3 = atan2f(v121, v124) / 0.017453;
    *a4 = atan2f(v125, v126) / 0.017453;
    *a6 = -999.0;
    if (fabsf(a8) >= 55.0)
    {
      v127 = -999.0;
      if (a9 >= 0.0 && a8 > 0.0)
      {
        v127 = *a3 - a9;
        *a6 = v127;
      }

      if (a8 > 0.0 && a9 < 0.0)
      {
        v127 = fabsf(a9) + *a3;
        *a6 = v127;
      }

      if (a9 >= 0.0 && a8 < 0.0)
      {
        v127 = *a3 + a9;
        *a6 = v127;
      }

      if (a8 < 0.0 && a9 < 0.0)
      {
        v127 = *a3 - fabsf(a9);
        *a6 = v127;
      }

      if (v127 > 180.0)
      {
        v127 = v127 + -360.0;
LABEL_105:
        if (v127 < -180.0)
        {
          v127 = v127 + 360.0;
        }

        *a6 = v127;
        goto LABEL_108;
      }

      if (v127 < -180.0)
      {
        goto LABEL_105;
      }
    }

LABEL_108:
    result = 0;
    v17[102] = a10;
    v51[103] = a7;
    dword_1026581A0 = LODWORD(a8);
    dword_1026581A4 = LODWORD(a9);
    return result;
  }

  v21 = fopen(byte_102636F40, "r");
  if (!v21)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D54F0();
    }

    v63 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      v64 = __error();
      v65 = strerror(*v64);
      *buf = 136315394;
      v136 = COERCE_DOUBLE(byte_102636F40);
      v137 = 2082;
      v138 = *&v65;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_INFO, "could not open geomagnetic data file %s (%{public}s)", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D589C();
    }

    return 1;
  }

  v22 = v21;
  dword_102657084 = *a2;
  dword_102657DC4[0] = 0;
  dword_102657E94[0] = 1065353216;
  dword_102657B20[0] = 1065353216;
  dword_102657DF8[0] = 1065353216;
  dword_10265787C[0] = 0;
  dword_10265816C = 1170676122;
  dword_102658170 = 1276849967;
  dword_102658174 = 1276781883;
  dword_102658178 = 1216674304;
  dword_10265817C = 1488725079;
  dword_102658180 = 1436593536;
  dword_102657090[0] = 0;
  dword_102657334[0] = 0;
  if (!fgets(byte_1026581BC, 80, v21))
  {
    fclose(v22);
    if (qword_1025D42E0 != -1)
    {
      sub_1018D54F0();
    }

    v66 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_INFO, "geomagnetic data file appears to be empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D57C0();
    }

    return 1;
  }

  sscanf(byte_1026581BC, "%f", &dword_102658184);
  if (fgets(byte_1026581BC, 80, v22))
  {
    v23 = 0;
    do
    {
      do
      {
        if (!byte_1026581BC[v23])
        {
          break;
        }

        *(&dword_10265820D + v23) = byte_1026581BC[v23];
        ++v23;
        *(&dword_10265820D + v23) = 0;
      }

      while (v23 != 4);
      if (!(dword_10265820D ^ 0x39393939 | byte_102658211))
      {
        break;
      }

      sscanf(byte_1026581BC, "%d%d%f%f%f%f", &dword_102657088, &dword_10265708C, &dword_102658188, &dword_10265818C, &dword_102658190, &dword_102658194);
      v24 = dword_10265708C;
      if (dword_10265708C > 0xC || (v25 = dword_102657088, dword_102657088 >= 0xD))
      {
        fclose(v22);
        if (qword_1025D42E0 != -1)
        {
          sub_1018D54F0();
        }

        v129 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_INFO, "geomagnetic data file appears to have invalid dimensions", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D56E4();
        }

        return 1;
      }

      if (dword_10265708C <= dword_102657088)
      {
        dword_102657090[13 * dword_10265708C + dword_102657088] = dword_102658188;
        dword_102657334[13 * v24 + v25] = dword_102658190;
        if (v24)
        {
          v26 = v24 - 1;
          dword_102657090[13 * v25 + v26] = dword_10265818C;
          dword_102657334[13 * v25 + v26] = dword_102658194;
        }
      }

      v27 = fgets(byte_1026581BC, 80, v22);
      v23 = 0;
    }

    while (v27);
  }

  dword_102657B20[0] = 1065353216;
  if (dword_102657084 < 1)
  {
    LODWORD(v29) = 1;
  }

  else
  {
    v28 = 0;
    v29 = dword_102657084 + 1;
    v30 = &unk_102657338;
    v31 = &unk_102657364;
    v32 = &unk_102657094;
    v33 = &unk_1026570C0;
    v34 = &dword_102657B24;
    v35 = &unk_102657ECC;
    v36 = 1;
    do
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &dword_102657B20[v36];
      v41 = 2 * v36 - 1;
      *v40 = (*(v40 - 1) * v41) / v36;
      v42 = v36 + 1;
      v43 = (v41 * (2 * v36 - 3));
      v44 = 2;
      v45 = 3;
      do
      {
        v35[v38] = ((v28 + v39) * (v28 + v37)) / v43;
        if (v38)
        {
          v46 = v40[v38 - 13] * sqrtf((v44 * (v28 + v37 + 2)) / (v28 + v39 + 1));
          v40[v38] = v46;
          v33[v39] = v33[v39] * v46;
          v31[v39] = v46 * v31[v39];
          v44 = 1;
        }

        v47 = *&v34[v38];
        v32[v38] = v47 * v32[v38];
        v30[v38] = v47 * v30[v38];
        ++v39;
        v38 += 13;
        --v37;
        --v45;
      }

      while (v28 + v45 > 1);
      flt_102657E2C[v36] = v42;
      flt_102657E60[v36] = v36;
      ++v34;
      ++v28;
      ++v30;
      ++v32;
      ++v35;
      v31 += 13;
      v33 += 13;
      ++v36;
    }

    while (v42 != v29);
    dword_10265708C = v39;
  }

  dword_102657088 = v29;
  dword_102657F00 = 0;
  dword_1026581A4 = -998637568;
  dword_1026581A0 = -998637568;
  dword_10265819C = -998637568;
  dword_102658198 = -998637568;
  fclose(v22);
  return 0;
}

uint64_t sub_1005C1EC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C22CC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658228 != -1)
  {
    dispatch_once(&qword_102658228, block);
  }

  return qword_102637040;
}

void sub_1005C22A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C22CC()
{
  v4 = 1;
  v0 = sub_100011660();
  sub_100185AC0(v0, &v2);
  v1 = sub_10001CB4C(v2, "OscarActivity", &v4);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (v1)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 1;
  }

  if (sub_100023ED4(0))
  {
    operator new();
  }

LABEL_9:
  operator new();
}

uint64_t sub_1005C23E8(uint64_t a1, void *a2)
{
  v3 = sub_1005C2684(a1, "CLMotionState", a2);
  *v3 = off_102462348;
  Init = CLMotionActivity::getInit((v3 + 112), v3);
  *(a1 + 248) = 0;
  *(a1 + 250) = 0;
  CLMotionActivity::getInit((a1 + 256), Init);
  *(a1 + 392) = a1 + 392;
  *(a1 + 400) = a1 + 392;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v5 = sub_100011660();
  sub_100185AC0(v5, buf);
  v6 = sub_10001CB4C(*buf, "LogMotionStateReplay", (a1 + 248));
  if (v14)
  {
    sub_100008080(v14);
  }

  if ((v6 & 1) == 0)
  {
    *(a1 + 248) = 0;
  }

  v7 = sub_100011660();
  sub_100185AC0(v7, buf);
  v8 = sub_10001CB4C(*buf, "DisableMotionStateNotify", (a1 + 249));
  if (v14)
  {
    sub_100008080(v14);
  }

  if ((v8 & 1) == 0)
  {
    *(a1 + 249) = 0;
  }

  if (qword_1025D4250 != -1)
  {
    sub_1018D5C98();
  }

  v9 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 249);
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "DisableMotionStateNotifyDefaultsWrite,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D5CC0(buf);
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionState::CLMotionState(id<CLIntersiloUniverse>)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return a1;
}

void sub_1005C2634(_Unwind_Exception *a1)
{
  sub_1001FB750(v2);
  sub_1005C2730(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C2684(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102462528;
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

void sub_1005C2714(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C2730(uint64_t a1)
{
  *a1 = off_102462528;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1005C27B4(void *a1)
{
  *a1 = off_102462348;
  sub_1001FB750(a1 + 49);

  return sub_1005C2730(a1);
}

uint64_t sub_1005C280C(void *a1)
{
  *a1 = off_102462348;
  sub_1001FB750(a1 + 49);

  return sub_1005C2730(a1);
}

void sub_1005C2864(void *a1)
{
  *a1 = off_102462348;
  sub_1001FB750(a1 + 49);
  sub_1005C2730(a1);

  operator delete();
}

void sub_1005C28D0(uint64_t a1)
{
  *(a1 + 108) = 1;
  v2 = *(a1 + 416);
  if (v2)
  {
    [v2 invalidate];

    *(a1 + 416) = 0;
  }
}

__n128 sub_1005C2934(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 112);
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  v4 = *(a1 + 176);
  *(a2 + 48) = *(a1 + 160);
  *(a2 + 64) = v4;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  result = *(a1 + 192);
  v6 = *(a1 + 208);
  v7 = *(a1 + 224);
  *(a2 + 128) = *(a1 + 240);
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_1005C29E4(uint64_t result, int *a2)
{
  if ((*(result + 249) & 1) == 0)
  {
    v2 = result;
    v3 = result + 112;
    if (*(result + 112))
    {
      v4 = *a2;
      if (*a2 > 1)
      {
        switch(v4)
        {
          case 2:
            v5 = 2;
            break;
          case 3:
            LODWORD(v23) = 3;
            result = sub_10000608C(result, &v23, 1);
            if (result > 1)
            {
              return result;
            }

            v14 = *(v2 + 368);
            v29 = *(v2 + 352);
            v30 = v14;
            v31 = *(v2 + 384);
            v15 = *(v2 + 304);
            v25 = *(v2 + 288);
            v26 = v15;
            v16 = *(v2 + 336);
            v27 = *(v2 + 320);
            v28 = v16;
            v17 = *(v2 + 272);
            v23 = *(v2 + 256);
            v24 = v17;
            v22 = 3;
            return (*(*v2 + 152))(v2, &v22, &v23, 1, 0xFFFFFFFFLL, 0);
          case 4:
            v5 = 4;
            break;
          default:
            return result;
        }

        LODWORD(v23) = v5;
        result = sub_10000608C(result, &v23, 1);
        if (result > 1)
        {
          return result;
        }

        v10 = *(v3 + 112);
        v29 = *(v3 + 96);
        v30 = v10;
        v31 = *(v3 + 128);
        v11 = *(v3 + 48);
        v25 = *(v3 + 32);
        v26 = v11;
        v12 = *(v3 + 80);
        v27 = *(v3 + 64);
        v28 = v12;
        v13 = *(v3 + 16);
        v23 = *v3;
        v24 = v13;
        v22 = v5;
        return (*(*v2 + 152))(v2, &v22, &v23, 1, 0xFFFFFFFFLL, 0);
      }

      if (!v4)
      {
        LODWORD(v23) = 0;
        result = sub_10000608C(result, &v23, 1);
        if (result > 1)
        {
          return result;
        }

        v18 = *(v3 + 112);
        v29 = *(v3 + 96);
        v30 = v18;
        v31 = *(v3 + 128);
        v19 = *(v3 + 48);
        v25 = *(v3 + 32);
        v26 = v19;
        v20 = *(v3 + 80);
        v27 = *(v3 + 64);
        v28 = v20;
        v21 = *(v3 + 16);
        v23 = *v3;
        v24 = v21;
        v22 = 0;
        return (*(*v2 + 152))(v2, &v22, &v23, 1, 0xFFFFFFFFLL, 0);
      }

      if (v4 == 1)
      {
        LODWORD(v23) = 1;
        result = sub_10000608C(result, &v23, 1);
        if (result <= 1)
        {
          v6 = *(v3 + 112);
          v29 = *(v3 + 96);
          v30 = v6;
          v31 = *(v3 + 128);
          v7 = *(v3 + 48);
          v25 = *(v3 + 32);
          v26 = v7;
          v8 = *(v3 + 80);
          v27 = *(v3 + 64);
          v28 = v8;
          v9 = *(v3 + 16);
          v23 = *v3;
          v24 = v9;
          v22 = 1;
          return (*(*v2 + 152))(v2, &v22, &v23, 1, 0xFFFFFFFFLL, 0);
        }
      }
    }
  }

  return result;
}

void sub_1005C2C04(uint64_t a1)
{
  v2 = *(a1 + 224);
  v6[6] = *(a1 + 208);
  v6[7] = v2;
  v7 = *(a1 + 240);
  v3 = *(a1 + 160);
  v6[2] = *(a1 + 144);
  v6[3] = v3;
  v4 = *(a1 + 192);
  v6[4] = *(a1 + 176);
  v6[5] = v4;
  v5 = *(a1 + 128);
  v6[0] = *(a1 + 112);
  v6[1] = v5;
  CLMotionActivity::init((a1 + 112));
  sub_1005C2C84(a1);
  CLMotionActivity::init((a1 + 256));
  sub_1005C2DD0(a1);
  sub_1008D4B8C(v6, (a1 + 112), "");
}

uint64_t sub_1005C2C84(uint64_t result)
{
  if ((*(result + 249) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 224);
    v7[6] = *(result + 208);
    v7[7] = v2;
    v8 = *(result + 240);
    v3 = *(result + 160);
    v7[2] = *(result + 144);
    v7[3] = v3;
    v4 = *(result + 192);
    v7[4] = *(result + 176);
    v7[5] = v4;
    v5 = *(result + 128);
    v7[0] = *(result + 112);
    v7[1] = v5;
    v6 = 0;
    (*(*result + 152))(result, &v6, v7, 1, 0xFFFFFFFFLL, 0);
    v6 = 1;
    (*(*v1 + 152))(v1, &v6, v7, 1, 0xFFFFFFFFLL, 0);
    v6 = 2;
    return (*(*v1 + 152))(v1, &v6, v7, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_1005C2DD0(uint64_t result)
{
  if ((*(result + 249) & 1) == 0)
  {
    v1 = *(result + 368);
    v6[6] = *(result + 352);
    v6[7] = v1;
    v7 = *(result + 384);
    v2 = *(result + 304);
    v6[2] = *(result + 288);
    v6[3] = v2;
    v3 = *(result + 336);
    v6[4] = *(result + 320);
    v6[5] = v3;
    v4 = *(result + 272);
    v6[0] = *(result + 256);
    v6[1] = v4;
    v5 = 3;
    return (*(*result + 152))(result, &v5, v6, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_1005C2E98(uint64_t result, uint64_t a2)
{
  *(result + 112) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(result + 160) = *(a2 + 48);
  *(result + 176) = v4;
  *(result + 128) = v2;
  *(result + 144) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(result + 240) = *(a2 + 128);
  *(result + 208) = v6;
  *(result + 224) = v7;
  *(result + 192) = v5;
  return sub_1005C2C84(result);
}

uint64_t sub_1005C2ECC(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 3)
  {
    return 1;
  }

  v11 = v2;
  v12 = v3;
  if (*(a1 + 250))
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018D5D04();
    }

    v5 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "DOMINANT ACTIVITY: already monitoring dominant activity", v9, 2u);
    }

    v6 = sub_10000A100(121, 0);
    result = 0;
    if (v6)
    {
      sub_1018D5E04();
      return 0;
    }
  }

  else
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018D5D04();
    }

    v8 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "DOMINANT ACTIVITY: start monitoring dominant activity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D5D18();
    }

    result = 1;
    *(a1 + 250) = 1;
  }

  return result;
}

uint64_t sub_1005C2FFC(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 3)
  {
    return 1;
  }

  v12 = v2;
  v13 = v3;
  if (*(a1 + 250) == 1)
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018D5D04();
    }

    v5 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "DOMINANT ACTIVITY: stop monitoring dominant activity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D5FCC();
    }

    CLMotionActivity::init((a1 + 256));
    *(a1 + 250) = 0;
    v6 = *(a1 + 416);
    if (v6)
    {
      [v6 invalidate];

      *(a1 + 416) = 0;
    }

    return 1;
  }

  else
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018D5D04();
    }

    v8 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "DOMINANT ACTIVITY: not monitoring dominant activity yet", v10, 2u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018D5EE8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005C3158(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v10 = *(a2 + 128);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8 = 4;
  result = (*(*a1 + 152))(a1, &v8, v9, 1, 0xFFFFFFFFLL, 0);
  if (a1[250])
  {
    operator new();
  }

  return result;
}

double sub_1005C328C()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018D60B8();
  }

  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG) || sub_10000A100(121, 3))
  {

    return CFAbsoluteTimeGetCurrent();
  }

  return result;
}

void sub_1005C32F4(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    [v2 invalidate];

    *(a1 + 416) = 0;
  }

  if (!*(a1 + 250))
  {
    return;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  v5 = (a1 + 392);
  v6 = *(a1 + 400);
  if (v6 != a1 + 392)
  {
    v7 = *(a1 + 400);
    v8 = (a1 + 392);
    if (*(v6 + 96) < Current + -30.0)
    {
      v7 = *(a1 + 400);
      while (1)
      {
        v8 = v7;
        v7 = *(v7 + 8);
        if (v7 == v5)
        {
          break;
        }

        if (*(v7 + 96) >= Current + -30.0)
        {
          goto LABEL_11;
        }
      }

      v7 = a1 + 392;
    }

LABEL_11:
    if (v8 != v5)
    {
      v9 = v8[3];
      *&buf[16] = v8[2];
      v76 = v9;
      v10 = v8[5];
      v77 = v8[4];
      v78 = v10;
      *buf = v8[1];
      v11 = *(v8 + 120);
      v52 = *(v8 + 104);
      v53 = v11;
      v54 = *(v8 + 136);
      if (v7 == v5)
      {
        v13 = *v8;
        v12 = *(v8 + 1);
        *(v13 + 8) = v12;
        *v12 = v13;
        --*(a1 + 408);
        operator delete(v8);
      }

      else
      {
        sub_1005C3A50(a1 + 392, v6, v7);
      }

      operator new();
    }
  }

  sub_1005C328C();
  v65 = 0;
  v66 = 0;
  v64 = &v65;
  v15 = *(a1 + 400);
  if (v5 == v15)
  {
    __p = 0;
    v62 = 0;
    v16 = 0.0;
    v63 = 0;
    goto LABEL_54;
  }

  v16 = 0.0;
  v17 = v4;
  do
  {
    v18 = *v5;
    v19 = *(*v5 + 96);
    v20 = v17 - v19;
    v21 = v65;
    if (!v65)
    {
      v22 = v18[4];
LABEL_30:
      v24 = v18[5];
      *buf = v22;
      *&buf[8] = v22;
      *&buf[12] = v24;
      *&buf[16] = v17 - v19;
      v14 = sub_1005C5B50(&v64, buf);
      v18 = *v5;
      v19 = *(*v5 + 96);
      v15 = *(a1 + 400);
      goto LABEL_31;
    }

    v22 = v18[4];
    v23 = &v65;
    do
    {
      if (*(v21 + 8) >= v22)
      {
        v23 = v21;
      }

      v21 = v21[*(v21 + 8) < v22];
    }

    while (v21);
    if (v23 == &v65 || v22 < *(v23 + 8))
    {
      goto LABEL_30;
    }

    if (v18[5] == 2 && *(v23 + 11) != 2)
    {
      *(v23 + 11) = 2;
    }

    *(v23 + 6) = v20 + *(v23 + 6);
LABEL_31:
    v16 = v16 + v20;
    v17 = v19;
    v5 = v18;
  }

  while (v18 != v15);
  v25 = v64;
  __p = 0;
  v62 = 0;
  v63 = 0;
  if (v64 != &v65)
  {
    v26 = 0;
    do
    {
      if (v26 >= v63)
      {
        v27 = (v26 - __p) >> 4;
        if ((v27 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v28 = (v63 - __p) >> 3;
        if (v28 <= v27 + 1)
        {
          v28 = v27 + 1;
        }

        if (v63 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v29 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          sub_1003E5FE8(&__p, v29);
        }

        *(16 * v27) = *(v25 + 5);
        v26 = (16 * v27 + 16);
        memcpy((16 * v27 - (v62 - __p)), __p, v62 - __p);
        v14 = __p;
        __p = (16 * v27 - (v62 - __p));
        v62 = v26;
        v63 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v26++ = *(v25 + 5);
      }

      v62 = v26;
      v30 = v25[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v25[2];
          v32 = *v31 == v25;
          v25 = v31;
        }

        while (!v32);
      }

      v25 = v31;
    }

    while (v31 != &v65);
  }

LABEL_54:
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  CLMotionActivity::getInit(&v52, v14);
  v33.n128_u64[0] = 30.0;
  if (v16 >= 30.0)
  {
    v37 = 126 - 2 * __clz((v62 - __p) >> 4);
    if (v62 == __p)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    sub_1005C46AC(__p, v62, buf, v38, 1, v33);
    v36 = v62;
    *&v52 = v62[-1].n128_u64[0];
    v35 = v62[-1].n128_u64[1];
    v34 = v52;
  }

  else
  {
    v34 = 0;
    *&v52 = 0;
    v35 = 0xBFF0000000000000;
    v36 = v62;
  }

  *&v57 = v4;
  if ((v36 - __p) >= 0x11 && (*(a1 + 112) != *(a1 + 256) || *(a1 + 116) != *(a1 + 260)))
  {
    v39 = [*(a1 + 40) newTimer];
    *(a1 + 416) = v39;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1005C3AC0;
    v51[3] = &unk_102449A78;
    v51[4] = a1;
    [v39 setHandler:v51];
    if (v66 - 2 >= ((v62 - __p) >> 4))
    {
      sub_10046F324();
    }

    v40 = (v62[-1].n128_f64[1] - *(__p + 2 * v66 - 3)) * 0.5;
    if (v40 < 1.0)
    {
      v40 = 1.0;
    }

    [*(a1 + 416) setNextFireDelay:v40];
    v34 = v52;
  }

  if (*(a1 + 256) != __PAIR64__(DWORD1(v52), v34))
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018D5C98();
    }

    v41 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      v42 = CLMotionActivity::activityTypeToString();
      v43 = CLMotionActivity::activityConfidenceToString();
      *buf = 134218754;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v42;
      *&buf[22] = 2080;
      *&buf[24] = v43;
      LOWORD(v76) = 2048;
      *(&v76 + 2) = v35;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "DOMINANT ACTIVITY: dominant activity during the last %f seconds, type, %s, confidence, %s, interval, %f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D5CC0(buf);
      v48 = CLMotionActivity::activityTypeToString();
      v49 = CLMotionActivity::activityConfidenceToString();
      v67 = 134218754;
      v68 = v16;
      v69 = 2080;
      v70 = v48;
      v71 = 2080;
      v72 = v49;
      v73 = 2048;
      v74 = v35;
      v50 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionState::processDominantActivity()", "%s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    v44 = v59;
    *(a1 + 352) = v58;
    *(a1 + 368) = v44;
    *(a1 + 384) = v60;
    v45 = v55;
    *(a1 + 288) = v54;
    *(a1 + 304) = v45;
    v46 = v57;
    *(a1 + 320) = v56;
    *(a1 + 336) = v46;
    v47 = v53;
    *(a1 + 256) = v52;
    *(a1 + 272) = v47;
    sub_1005C2DD0(a1);
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  sub_1003C93BC(&v64, v65);
}

void sub_1005C39F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, char a38, void *a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1003C93BC(&a38, a39);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C3A50(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

uint64_t sub_1005C3AC8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102462678;
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

void sub_1005C3C6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_1005C3C9C(uint64_t a1)
{
  v2 = [+[CLServiceVendor sharedInstance](CLServiceVendor proxyForService:"proxyForService:", @"CLMotionState"];

  return [v2 syncgetDoSync:a1];
}

void sub_1005C3CE8(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
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
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018D60CC();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
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
        sub_1018D60E0(a1, a2);
      }
    }
  }
}

BOOL sub_1005C3F1C(uint64_t a1, void *a2, int *a3)
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
      sub_1018D60CC();
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
      sub_1018D62E0(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_1005C4250(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018D60CC();
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
      sub_1018D6504(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018D60CC();
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
      sub_1018D63E0(a1);
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
              sub_1003286C0();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = a1 + 8;
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
                sub_1003286C0();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLMotionState_Type::Notification, CLMotionState_Type::NotificationData>::listClients() [Notification_T = CLMotionState_Type::Notification, NotificationData_T = CLMotionState_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_1005C4614(uint64_t a1)
{
  sub_1005C5C24(a1);

  operator delete();
}

__n128 sub_1005C46AC(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v47 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] < v12->n128_f64[1])
        {
          v66 = *v12;
          *v12 = a2[-1];
          result = v66;
          a2[-1] = v66;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v40 = v12[1].n128_f64[1];
      v41 = v12[2].n128_f64[1];
      if (v40 >= v12->n128_f64[1])
      {
        if (v41 < v40)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f64[1] < v12->n128_f64[1])
          {
            v68 = *v12;
            *v12 = v12[1];
            v12[1] = v68;
          }
        }
      }

      else
      {
        if (v41 < v40)
        {
          v67 = *v12;
          *v12 = v12[2];
          result = v67;
          goto LABEL_108;
        }

        v70 = *v12;
        *v12 = v12[1];
        v12[1] = v70;
        if (v41 < v12[1].n128_f64[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_108:
          v12[2] = result;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] >= v12[2].n128_f64[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] >= v12[1].n128_f64[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_112:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[1])
      {
        v71 = *v12;
        *v12 = v12[1];
        result = v71;
        v12[1] = v71;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1005C4EC0(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1005C5044(v12, a2);
      }

      else if (v12 != a2)
      {
        while (&a1[1] != a2)
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v42 = a1->n128_f64[1];
          v46 = ++a1;
          if (result.n128_f64[0] < v42)
          {
            v43 = v46->n128_u64[0];
            v44 = a1;
            do
            {
              *v44 = v44[-1];
              v45 = v44[-2].n128_f64[1];
              --v44;
            }

            while (result.n128_f64[0] < v45);
            v44->n128_u64[0] = v43;
            v44->n128_u64[1] = result.n128_u64[0];
          }
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_1005C5590(v12->n128_f64, a2->n128_f64, a2->n128_f64, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f64[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f64[1];
      if (v18 >= v12->n128_f64[1])
      {
        if (v17 < v18)
        {
          v50 = *v16;
          *v16 = *v10;
          *v10 = v50;
          if (v16->n128_f64[1] < v12->n128_f64[1])
          {
            v51 = *v12;
            *v12 = *v16;
            *v16 = v51;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v48 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v54 = *v12;
        *v12 = *v16;
        *v16 = v54;
        if (a2[-1].n128_f64[1] < v16->n128_f64[1])
        {
          v48 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v48;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_f64[1];
      v22 = a2[-2].n128_f64[1];
      if (v21 >= v12[1].n128_f64[1])
      {
        if (v22 < v21)
        {
          v55 = *v20;
          *v20 = *v47;
          *v47 = v55;
          if (v16[-1].n128_f64[1] < v12[1].n128_f64[1])
          {
            v25 = v12[1];
            v12[1] = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v47;
          goto LABEL_42;
        }

        v26 = v12[1];
        v12[1] = *v20;
        *v20 = v26;
        if (a2[-2].n128_f64[1] < v16[-1].n128_f64[1])
        {
          v57 = *v20;
          v24 = a2 - 2;
          *v20 = *v47;
          v23 = v57;
LABEL_42:
          *v24 = v23;
        }
      }

      v27 = v16[1].n128_f64[1];
      v28 = a2[-3].n128_f64[1];
      if (v27 >= v12[2].n128_f64[1])
      {
        if (v28 < v27)
        {
          v58 = v16[1];
          v16[1] = *v11;
          *v11 = v58;
          if (v16[1].n128_f64[1] < v12[2].n128_f64[1])
          {
            v30 = v12[2];
            v12[2] = v16[1];
            v16[1] = v30;
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v29 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v31 = v12[2];
        v12[2] = v16[1];
        v16[1] = v31;
        if (a2[-3].n128_f64[1] < v16[1].n128_f64[1])
        {
          v59 = v16[1];
          v16[1] = *v11;
          v29 = v59;
LABEL_51:
          *v11 = v29;
        }
      }

      v32 = v16->n128_f64[1];
      v33 = v16[1].n128_f64[1];
      if (v32 >= v16[-1].n128_f64[1])
      {
        if (v33 < v32)
        {
          v61 = *v16;
          *v16 = v16[1];
          v16[1] = v61;
          if (v16->n128_f64[1] < v16[-1].n128_f64[1])
          {
            v62 = *v20;
            *v20 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v60 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v63 = *v20;
        *v20 = *v16;
        *v16 = v63;
        if (v16[1].n128_f64[1] < v16->n128_f64[1])
        {
          v60 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v60;
        }
      }

      v64 = *v12;
      *v12 = *v16;
      *v16 = v64;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_f64[1];
    if (v19 < v16->n128_f64[1])
    {
      if (v17 < v19)
      {
        v49 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v56 = *v16;
      *v16 = *v12;
      *v12 = v56;
      if (a2[-1].n128_f64[1] < v12->n128_f64[1])
      {
        v49 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v49;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 >= v19)
    {
      goto LABEL_38;
    }

    v52 = *v12;
    *v12 = *v10;
    *v10 = v52;
    if (v12->n128_f64[1] >= v16->n128_f64[1])
    {
      goto LABEL_38;
    }

    v53 = *v16;
    *v16 = *v12;
    *v12 = v53;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_f64[1] >= v12->n128_f64[1])
    {
      v12 = sub_1005C50C8(v12->n128_f64, a2->n128_f64);
      goto LABEL_68;
    }

LABEL_63:
    v34 = sub_1005C51AC(v12->n128_f64, a2->n128_f64);
    if ((v36 & 1) == 0)
    {
      goto LABEL_66;
    }

    v37 = sub_1005C5290(v12, v34, v35);
    v12 = v34 + 1;
    if (sub_1005C5290(v34 + 1, a2, v38))
    {
      a4 = -v14;
      a2 = v34;
      if (v37)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v37)
    {
LABEL_66:
      sub_1005C46AC(a1, v34, a3, -v14, a5 & 1);
      v12 = v34 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v39 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] >= v12->n128_f64[1])
  {
    if (v39 >= result.n128_f64[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_112;
  }

  if (v39 >= result.n128_f64[0])
  {
    v69 = *v12;
    *v12 = v12[1];
    v12[1] = v69;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] >= v12[1].n128_f64[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v65 = *v12;
    *v12 = *v10;
    result = v65;
  }

  *v10 = result;
  return result;
}

__n128 sub_1005C4EC0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C5044(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 16;
            if (v5 >= v9)
            {
              v10 = result + v8 + 16;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 8) = v5;
        }

        v2 = v4 + 2;
        v3 += 16;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t sub_1005C50C8(double *a1, double *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 1))
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 8);
      v6 += 16;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v14 = *v4;
    *v4 = *v8;
    *v8 = v14;
    do
    {
      v11 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 >= v11);
    do
    {
      v12 = *(v8 - 1);
      v8 -= 2;
    }

    while (v2 < v12);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  return v4;
}

unint64_t sub_1005C51AC(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 < v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 < v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10 + 24);
        v10 += 16;
      }

      while (v13 < v4);
      do
      {
        v14 = *(v11 - 1);
        v11 -= 2;
      }

      while (v14 >= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 16) != a1)
  {
    *a1 = *(v10 - 16);
  }

  *(v10 - 16) = v3;
  *(v10 - 8) = v4;
  return v10 - 16;
}

BOOL sub_1005C5290(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f64[1];
      v7 = a2[-1].n128_f64[1];
      if (v6 < a1->n128_f64[1])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f64[1] >= a1[1].n128_f64[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f64[1] < a1->n128_f64[1])
      {
        v36 = *a1;
        *a1 = a1[1];
        a1[1] = v36;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1005C4EC0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f64[1];
    v15 = a1->n128_f64[1];
    v16 = a1[2].n128_f64[1];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f64[1] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v33 = *a1;
      *a1 = a1[1];
      a1[1] = v33;
      if (v16 >= a1[1].n128_f64[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f64[1] >= a1[2].n128_f64[1])
    {
      return 1;
    }

    v34 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v34;
    if (a1[2].n128_f64[1] >= a1[1].n128_f64[1])
    {
      return 1;
    }

    v35 = a1[1];
    a1[1] = a1[2];
    a1[2] = v35;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f64[1] < a1->n128_f64[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f64[1];
  v11 = a1->n128_f64[1];
  v12 = a1[2].n128_f64[1];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f64[1] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_f64[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f64[1];
    if (v28 < v9->n128_f64[1])
    {
      v29 = v25->n128_u64[0];
      v30 = v26;
      while (1)
      {
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v31 = *(&a1[1].n128_f64[1] + v30);
        v30 -= 16;
        if (v28 >= v31)
        {
          v32 = &a1[3] + v30;
          goto LABEL_41;
        }
      }

      v32 = a1;
LABEL_41:
      *v32 = v29;
      *(v32 + 8) = v28;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

double *sub_1005C5590(double *a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_1005C5788(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1005C5788(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v31 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[3];
            v20 = v16[5];
            v21 = v16 + 4;
            if (v19 >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v31;
        }

        else
        {
          *v17 = *v6;
          *v6 = v31;
          v22 = (v17 - a1 + 16) >> 4;
          v23 = v22 < 2;
          v24 = v22 - 2;
          if (!v23)
          {
            v25 = v24 >> 1;
            v26 = &a1[2 * v25];
            v27 = v17[1];
            if (v26[1] < v27)
            {
              v28 = *v17;
              do
              {
                v29 = v17;
                v17 = v26;
                *v29 = *v26;
                if (!v25)
                {
                  break;
                }

                v25 = (v25 - 1) >> 1;
                v26 = &a1[2 * v25];
              }

              while (v26[1] < v27);
              *v17 = v28;
              v17[1] = v27;
            }
          }
        }

        v23 = v8-- <= 2;
      }

      while (!v23);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1005C5788(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] < v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

void sub_1005C586C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102462608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1005C58C0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005C5A98(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018D6618();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D662C();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018D6618();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D672C();
    }
  }

  return 0;
}

id sub_1005C5A98(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EBD0))
  {
    if ([objc_msgSend(a2 "serialized")] != 160)
    {
      sub_1018D6A2C();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t *sub_1005C5B50(uint64_t a1, int *a2)
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

uint64_t sub_1005C5C24(uint64_t a1)
{
  *a1 = off_102462678;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1005C5C94(uint64_t a1, uint64_t a2)
{
  *a1 = off_1024626A0;
  *(a1 + 8) = a2;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 16) = Current;
  *(a1 + 24) = Current;
  *(a1 + 32) = 0;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1005C5D08(uint64_t a1)
{
  *a1 = off_1024626A0;
  *(a1 + 8) = 14400;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 16) = Current;
  *(a1 + 24) = Current;
  *(a1 + 32) = 0;
  (*(*a1 + 16))(a1);
  return a1;
}

double sub_1005C5DBC(uint64_t a1, int a2)
{
  result = -1.0;
  if (!a2 && *(a1 + 10))
  {
    v3 = *(a1 + 10) + *(a1 + 8) - 1;
    v4 = *(a1 + 12);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 24 * (v3 - v4) + 16);
  }

  return result;
}

void *sub_1005C5DF8(void *a1)
{
  *a1 = off_1024626E0;
  v2 = a1[93];
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1005C5E44(void *a1)
{
  *a1 = off_1024626E0;
  v1 = a1[93];
  if (v1)
  {
    sub_100008080(v1);
  }

  operator delete();
}

void *sub_1005C5F40(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102462748;
  sub_1005C6038(a1 + 3, a2);
  return a1;
}

void sub_1005C5FBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102462748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005C6038(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_1024626E0;
  a1[1] = 0x1E00000000;
  a1[92] = v4;
  a1[93] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v3);
  }

  return a1;
}

void sub_1005C60B4(uint64_t a1, const std::string *a2, int **a3)
{
  *a1 = off_102462798;
  sub_101301B44((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 144) = 0x3200000000;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v12 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "creating composite %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D6BB0(buf);
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMDataProviderComposite::Composite::Composite(const std::string &, const std::vector<CMDataProviderFactory::FactoryStream> &)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v9 = *a3;
  v8 = a3[1];
  while (v9 != v8)
  {
    sub_1005C63B0(a1, *v9++, 0);
  }

  *(a1 + 560) = sub_1005C687C(a1);
  std::string::operator=((a1 + 48), a2);
  operator new();
}

void sub_1005C6344(_Unwind_Exception *a1)
{
  v5 = *(v1 + 568);
  *(v1 + 568) = 0;
  if (v5)
  {
    operator delete();
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  sub_100574ED8(v3 - 8, *(v1 + 32));
  v6 = *(v1 + 16);
  if (v6)
  {
    sub_100008080(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1005C63B0(uint64_t a1, int a2, char a3)
{
  v26[0] = a2;
  *&v38[4] = 0;
  v6 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(buf);
  if (v6)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Requesting stream that's already in the subpool %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D6C1C();
    }
  }

  else
  {
    sub_101302F20(*(a1 + 8), a2, a1, a3, buf);
    v10 = *buf;
    v9 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v10 + 48))(v10);
    v12 = (*(*v10 + 56))(v10);
    v13 = (*(*v10 + 40))(v10, 0);
    v14 = (*(*v10 + 40))(v10, 1);
    if (a3)
    {
      v15 = 0;
      v16 = 0.0;
    }

    else
    {
      v16 = (*(*a1 + 24))(a1, 0);
      v15 = 1;
    }

    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v17 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v18 = *v18;
      }

      *buf = 136316162;
      *&buf[4] = v18;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      v37 = 2048;
      *v38 = v11;
      *&v38[8] = 2048;
      *&v38[10] = v12;
      v39 = 2048;
      v40 = a1;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Adding stream info %d with interval, %f, latency, %f, this, %p", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v22 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v22 = *v22;
      }

      v26[1] = 136316162;
      v27 = v22;
      v28 = 1024;
      v29 = a2;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = a1;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::addStreamToSubpool(CMDataProviderFactory::FactoryStream, BOOL)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    *buf = v26;
    v19 = sub_1005C7FDC(a1 + 24, v26);
    v20 = v19;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v19[6];
    v20[5] = v10;
    v20[6] = v9;
    if (v21)
    {
      sub_100008080(v21);
    }

    *(v20 + 7) = v11;
    *(v20 + 8) = v12;
    *(v20 + 72) = v13;
    *(v20 + 73) = v14;
    *(v20 + 74) = v24;
    *(v20 + 39) = v25;
    *(v20 + 10) = v16;
    *(v20 + 88) = v15;
    if (v9)
    {
      sub_100008080(v9);
      sub_100008080(v9);
    }
  }
}

void sub_1005C683C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    sub_100008080(v19);
    sub_100008080(v19);
  }

  _Unwind_Resume(exception_object);
}

double sub_1005C687C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 0.0;
  if (v2 != (a1 + 32))
  {
    do
    {
      if (v2[7] != 1.79769313e308 && v3 < v2[8])
      {
        v3 = v2[8];
      }

      v4 = *(v2 + 1);
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
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 32));
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v8 = *v8;
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[Composite-%s] computed latency is %f", &v10, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D6D24(a1, v3);
  }

  return v3;
}

void sub_1005C69EC(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_102462798;
  sub_101301B44((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 144) = 0x3200000000;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v9 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v16 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating composite %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D6BB0(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMDataProviderComposite::Composite::Composite(const std::string &, const std::vector<CMDataProviderFactory::FactoryStream> &, Protocol *, Configuration)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *(a1 + 72) = a4;
  v11 = *(a1 + 120);
  v12 = *(a5 + 32);
  v13 = *(a5 + 16);
  *(a1 + 80) = *a5;
  *(a1 + 96) = v13;
  *(a1 + 112) = v12;
  if ((v11 & 1) == 0)
  {
    *(a1 + 120) = 1;
  }

  std::string::operator=((a1 + 48), a2);
  operator new();
}

void sub_1005C6E2C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 568);
  *(v1 + 568) = 0;
  if (v5)
  {
    operator delete();
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v3);
  }

  sub_100574ED8(v2 - 8, *(v1 + 32));
  v6 = *(v1 + 16);
  if (v6)
  {
    sub_100008080(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1005C6EA8(uint64_t a1, void *a2)
{
  v9 = a2;
  *&v15[4] = 0;
  v4 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(buf);
  if (v4)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315650;
      v11 = v6;
      v12 = 1024;
      v13 = a2;
      v14 = 2048;
      *v15 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Removing stream %d, this %p", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D7054(a1, a2);
    }

    sub_1005C80C8(a1 + 24, &v9);
    sub_10130394C(*(a1 + 8), v9, a1);
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      v11 = v8;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Stream isn't in subpool %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D6F4C();
    }
  }
}

void sub_1005C7088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A69EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C70A4(uint64_t a1)
{
  *a1 = off_102462798;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    v13 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "destroying composite %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderComposite::Composite::~Composite()", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v4 = *(a1 + 24);
  if (v4 != (a1 + 32))
  {
    do
    {
      sub_10130394C(*(a1 + 8), *(v4 + 8), a1);
      v5 = v4[1];
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
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (a1 + 32));
  }

  v8 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v8)
  {
    operator delete();
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_100574ED8(a1 + 24, *(a1 + 32));
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100008080(v9);
  }

  return a1;
}

void sub_1005C732C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1005C7340(uint64_t a1)
{
  sub_1005C70A4(a1);

  operator delete();
}

void sub_1005C7378(uint64_t a1, int a2, int a3)
{
  v39 = a2;
  *buf = off_102462810;
  *(v48 + 4) = buf;
  v5 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(buf);
  if (v5)
  {
    if (*(a1 + 120) == 1 && *(a1 + 80) == v39 && a3)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v6 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
      {
        v7 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v39;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[Composite-%s] Trying to leech stream %d that's currently set as the key", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D718C(a1);
      }
    }

    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v8 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = v39;
      v47 = 1024;
      LODWORD(v48[0]) = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Updating leech mode for stream %d to %d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v32 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v32 = *v32;
      }

      v40 = 136315650;
      v41 = v32;
      v42 = 1024;
      v43 = v39;
      v44 = 1024;
      LODWORD(v45) = a3;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::updateLeechMode(CMDataProviderFactory::FactoryStream, BOOL)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v10 = sub_1003DD9F8(a1 + 24, &v39);
    if (a3)
    {
      if (v10[6])
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018D6BF4();
        }

        v11 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v12 = *v12;
          }

          v13 = v39;
          (*(*a1 + 24))(a1, 0);
          if ((v10[6] & 1) == 0)
          {
            sub_100173BA0();
          }

          v15 = v14 - *(v10 + 5);
          *buf = 136315650;
          *&buf[4] = v12;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          v47 = 2048;
          v48[0] = v15;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Source %d has been active for %f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45A0 != -1)
          {
            sub_1018D6BF4();
          }

          v34 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v34 = *v34;
          }

          v35 = v39;
          (*(*a1 + 24))(a1, 0);
          if ((v10[6] & 1) == 0)
          {
            sub_100173BA0();
          }

          v37 = v36 - *(v10 + 5);
          v40 = 136315650;
          v41 = v34;
          v42 = 1024;
          v43 = v35;
          v44 = 2048;
          v45 = v37;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::updateLeechMode(CMDataProviderFactory::FactoryStream, BOOL)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        sub_10130394C(*(a1 + 8), v39, a1);
        sub_101302F20(*(a1 + 8), v39, a1, 1, buf);
        v16 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v17 = v10[1];
        *v10 = v16;
        if (v17)
        {
          sub_100008080(v17);
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }
        }

        if (*(v10 + 48) == 1)
        {
          *(v10 + 48) = 0;
        }
      }

      else
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018D6BF4();
        }

        v28 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v29 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v29 = *v29;
          }

          *buf = 136315394;
          *&buf[4] = v29;
          *&buf[12] = 1024;
          *&buf[14] = v39;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Source hasn't been activated yet %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D72A8(a1);
        }
      }
    }

    else if (*(v10 + 48))
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v18 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v19 = *v19;
        }

        v20 = v39;
        (*(*a1 + 24))(a1, 0);
        if ((v10[6] & 1) == 0)
        {
          sub_100173BA0();
        }

        v22 = v21 - *(v10 + 5);
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 1024;
        *&buf[14] = v20;
        v47 = 2048;
        v48[0] = v22;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Source %d is already active for %f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45A0 != -1)
        {
          sub_1018D6BF4();
        }

        v23 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v23 = *v23;
        }

        v24 = v39;
        (*(*a1 + 24))(a1, 0);
        if ((v10[6] & 1) == 0)
        {
          sub_100173BA0();
        }

        v26 = v25 - *(v10 + 5);
        v40 = 136315650;
        v41 = v23;
        v42 = 1024;
        v43 = v24;
        v44 = 2048;
        v45 = v26;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::updateLeechMode(CMDataProviderFactory::FactoryStream, BOOL)", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }
    }

    else
    {
      sub_10130394C(*(a1 + 8), v39, a1);
      sub_101302F20(*(a1 + 8), v39, a1, 0, buf);
      v30 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v31 = v10[1];
      *v10 = v30;
      if (v31)
      {
        sub_100008080(v31);
        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }
      }

      *(v10 + 5) = (*(*a1 + 24))(a1, 0);
      *(v10 + 48) = 1;
    }
  }
}

void sub_1005C7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A69EC(va);
  _Unwind_Resume(a1);
}

void sub_1005C7C20(uint64_t a1, int a2, char a3)
{
  v13 = 0;
  v6 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(&v9);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v8 = *v8;
      }

      v9 = 136315394;
      v10 = v8;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Adding stream to subpool %d", &v9, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D73C4();
    }

    sub_1005C63B0(a1, a2, a3);
  }
}

void sub_1005C7D6C(uint64_t a1, void *a2)
{
  v11 = 0;
  v4 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(&v7);
  if (v4)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v6 = *v6;
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Removing stream from subpool %d", &v7, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D74CC();
    }

    sub_1005C6EA8(a1, a2);
  }
}

void sub_1005C7EB0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && (*(*v2 + 8))(v2))
  {
    v3 = (*(**(a1 + 72) + 8))(*(a1 + 72));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C7FA4;
    block[3] = &unk_102449A78;
    block[4] = a1;
    dispatch_async(v3, block);
  }

  else
  {

    sub_1000E11A0(a1);
  }
}

uint64_t *sub_1005C7FDC(uint64_t a1, int *a2)
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

uint64_t sub_1005C80C8(uint64_t a1, int *a2)
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

  sub_1001F3424(a1, v4);
  return 1;
}

void sub_1005C81C0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "[Composite] Trying to set leech mode for a source that's missing from the subpool %d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D77FC(v2);
  }
}

uint64_t sub_1005C8294(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C8364(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[Composite] Can't check stream readiness for missing stream %d", v4, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D78EC(v2);
  }
}

uint64_t sub_1005C8438(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C8484(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1005C8550(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "[Composite] Can't find preferred time base for missing stream %d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D79DC(v2);
  }
}

uint64_t sub_1005C8624(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C86F4(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "[Composite] Can't find stream compatibility for missing stream %d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D7ACC(v2);
  }
}

uint64_t sub_1005C87C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C8898()
{
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v0 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_ERROR, "[Composite] missing key from update()", v1, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D7BBC();
  }
}

uint64_t sub_1005C892C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C8984()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

double sub_1005C8CB0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 187) = 0;
  *(a1 + 180) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 224;
  *(a1 + 232) = a1 + 224;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = xmmword_101C80730;
  *(a1 + 272) = unk_101C80740;
  *(a1 + 288) = xmmword_101C80750;
  *(a1 + 300) = *(&xmmword_101C80750 + 12);
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  return result;
}

void sub_1005C8D50(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1005CA804(a1, 0x6DB6DB6DB6DB6DB7 * (v4 >> 3));
    }

    v6 = 0;
    if (0x6DB6DB6DB6DB6DB7 * (v3 >> 3))
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

void sub_1005C8E44(uint64_t a1, int *a2)
{
  v2 = *(a1 + 208);
  if (*(a1 + 200) != v2)
  {
    v4 = (a2 + 20);
    if (*(a2 + 10) - *(v2 - 56) >= 840.0)
    {
      if (qword_1025D4430 != -1)
      {
        sub_1018D7CC8();
      }

      v15 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "Walking bout ended due to exceeding max duration without stepNotifications", &v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D7CDC();
      }

      sub_1005C904C(a1);
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_1018D7CC8();
      }

      v5 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v6 = CLMotionActivity::activityTypeToString();
        v7 = *a2;
        v8 = a2[1];
        v9 = CLMotionActivity::activityTypeToString();
        v10 = a2[22];
        v11 = a2[23];
        isMounted = CLMotionActivity::isMounted(a2);
        v13 = *(a2 + 10);
        v16 = 136382467;
        v17 = v6;
        v18 = 1025;
        v19 = v7;
        v20 = 1025;
        v21 = v8;
        v22 = 2081;
        v23 = v9;
        v24 = 1025;
        v25 = v10;
        v26 = 1025;
        v27 = v11;
        v28 = 1025;
        v29 = isMounted;
        v30 = 2048;
        v31 = v13;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Activity type is %{private}s (%{private}d), conf, %{private}d, raw activity type %{private}s (%{private}d), raw conf, %{private}d, mounted, %{private}d, startTime, %f", &v16, 0x3Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D7DB8(a2, v4);
      }
    }
  }
}

void sub_1005C904C(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1 != *(a1 + 208))
  {
    v2[0] = v2;
    v2[1] = v2;
    v2[2] = 0;
    memset(&v2[9], 0, 24);
    operator new();
  }

  *(a1 + 208) = v1;
  sub_1005C8D50((a1 + 200));
}

__n128 sub_1005C9568(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4430 != -1)
  {
    sub_1018D7CC8();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 96);
    v7 = *(a2 + 32);
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 174);
    *buf = 134284801;
    *v54 = v8;
    *&v54[8] = 1025;
    *&v54[10] = v5;
    *&v54[14] = 2049;
    *&v54[16] = v6;
    v55 = 2049;
    *v56 = v7;
    *&v56[8] = 2049;
    v57 = v9;
    v58 = 1025;
    v59 = v10;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Received stepCountEntry, startTime, %{private}f, count, %{private}d, activeTime, %{private}f, distance, %{private}f, firstStepTime, %{private}f, distanceSource, %{private}d", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D7FBC(a2);
  }

  if (!*(a1 + 296))
  {
    v13 = *(a2 + 24);
    v14 = *(a1 + 40);
    v15 = v13 - v14;
    if (*(a2 + 8) >= *(a1 + 24))
    {
      goto LABEL_20;
    }

    if (qword_1025D4430 != -1)
    {
      sub_1018D7F50();
    }

    v16 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "Saw time go backwards", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D81D8();
      if ((v15 & 0x80000000) == 0)
      {
LABEL_21:
        v17 = *(a1 + 200);
        v18 = *(a1 + 208);
        if (v15 >= 0x29)
        {
          if (v17 != v18)
          {
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v19 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a2 + 8) - *(a1 + 24);
              *buf = 67240448;
              *v54 = v13 - v14;
              *&v54[4] = 2050;
              *&v54[6] = v20;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Unexpected large jump in steps, %{public}d new steps, %{public}.1f seconds delay since last entry, stopping bout", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4430 != -1)
              {
                sub_1018D7F50();
              }

              v21 = *(a2 + 8) - *(a1 + 24);
              *v47 = 67240448;
              v48 = v13 - v14;
              v49 = 2050;
              v50 = v21;
              v22 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLPredictedWalkDistanceBoutDetector::handleStepCountNotification(const CLStepCountEntry &)", "%s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }

LABEL_102:
            sub_1005C904C(a1);
LABEL_103:
            v39 = *a2;
            v40 = *(a2 + 16);
            v41 = *(a2 + 48);
            *(a1 + 48) = *(a2 + 32);
            *(a1 + 64) = v41;
            *(a1 + 16) = v39;
            *(a1 + 32) = v40;
            v42 = *(a2 + 64);
            v43 = *(a2 + 80);
            v44 = *(a2 + 112);
            *(a1 + 112) = *(a2 + 96);
            *(a1 + 128) = v44;
            *(a1 + 80) = v42;
            *(a1 + 96) = v43;
            result = *(a2 + 128);
            v45 = *(a2 + 144);
            v46 = *(a2 + 160);
            *(a1 + 192) = *(a2 + 176);
            *(a1 + 160) = v45;
            *(a1 + 176) = v46;
            *(a1 + 144) = result;
            return result;
          }

          v25 = *(a1 + 24);
          if (*(a2 + 8) - v25 <= 3.84)
          {
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v33 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a2 + 8) - *(a1 + 24);
              *buf = 67240448;
              *v54 = v13 - v14;
              *&v54[4] = 2050;
              *&v54[6] = v34;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "Unexpected large jump in steps, %{public}d new steps, %{public}.1f seconds delay since last entry", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_103;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 == -1)
            {
              goto LABEL_86;
            }
          }

          else
          {
            if (v25 <= 0.0)
            {
              goto LABEL_103;
            }

            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v26 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
            {
              v27 = *(a2 + 8) - *(a1 + 24);
              *buf = 67240448;
              *v54 = v13 - v14;
              *&v54[4] = 2050;
              *&v54[6] = v27;
              _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "Possibly missing step count entries, %{public}d new steps, %{public}.1f seconds delay since last entry", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_103;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 == -1)
            {
              goto LABEL_86;
            }
          }

          sub_1018D7F50();
LABEL_86:
          v35 = *(a2 + 8) - *(a1 + 24);
          *v47 = 67240448;
          v48 = v13 - v14;
          v49 = 2050;
          v50 = v35;
          v36 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLPredictedWalkDistanceBoutDetector::handleStepCountNotification(const CLStepCountEntry &)", "%s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }

          goto LABEL_103;
        }

        if (v17 != v18)
        {
          v23 = *(a2 + 8);
          if (v23 - *(v18 - 56) <= 240.0)
          {
            if (v23 - *(v17 + 8) <= 36000.0)
            {
              goto LABEL_57;
            }

            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v28 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "Walking bout has ended due to exceeding the max duration", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018D82B4();
            }
          }

          else
          {
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v24 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "Walking bout ended due to exceeding max duration without steps", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018D8390();
            }
          }

          sub_1005C904C(a1);
        }

LABEL_57:
        if (v13 != v14)
        {
          if (*(a2 + 16) <= 0.0)
          {
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v32 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "StepCountEntry with steps but no firstStepTime", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018D846C();
            }
          }

          else if (*(a2 + 96) <= *(a1 + 112))
          {
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v37 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "StepCountEntry with steps but activeTime doesn't advance", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D8548();
            }
          }

          else
          {
            if (*(a1 + 200) == *(a1 + 208))
            {
              if (qword_1025D4430 != -1)
              {
                sub_1018D7F50();
              }

              v29 = qword_1025D4438;
              if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
              {
                v30 = *(a2 + 16);
                *buf = 134349056;
                *v54 = v30;
                _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "Potential walking bout identified... fBoutStartTime: %{public}f", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018D8624();
              }
            }

            sub_1005C9FA4(a1, a2, v15, buf);
            if (qword_1025D4430 != -1)
            {
              sub_1018D7F50();
            }

            v31 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
            {
              *v47 = 67109632;
              v48 = *&v54[20];
              v49 = 2048;
              v50 = *&v56[2];
              v51 = 2048;
              v52 = *&v54[12] - *&v54[4];
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "Extending bout...,deltaSteps,%d,dist,%.3f,activeTime,%.3f", v47, 0x1Cu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018D8710(buf);
            }

            sub_1005CA890(a1 + 200, buf);
            sub_1005CA0DC(a1, (a1 + 224), (a1 + 248), buf, 1);
          }
        }

        goto LABEL_103;
      }
    }

    else
    {
LABEL_20:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    if (qword_1025D4430 != -1)
    {
      sub_1018D7F50();
    }

    v38 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "Saw step count go backwards", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8830();
    }

    if (*(a1 + 200) == *(a1 + 208))
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (qword_1025D4430 != -1)
  {
    sub_1018D7F50();
  }

  v11 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Ignoring step count while in wheelchair mode", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D80FC();
  }

  return result;
}

void sub_1005C9FA4(double *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v4 = (a2 + 8);
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 24) = a3;
  *(a4 + 32) = *(a2 + 32) - a1[6];
  *(a4 + 40) = *(a2 + 174);
  *(a4 + 44) = *(a2 + 164);
  if (v5 >= a1[3] + 3.84)
  {
    *(a4 + 16) = v5;
    if (qword_1025D4430 != -1)
    {
      sub_1018D7CC8();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v4;
      v9 = 134349056;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Missing previous epoch before an epoch with steps, starttime, %{public}f", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D890C();
    }
  }

  else
  {
    *(a4 + 16) = v6 + *(a2 + 96) - a1[14];
  }
}

uint64_t sub_1005CA0DC(uint64_t result, void *a2, _DWORD *a3, uint64_t a4, int a5)
{
  if (a2[2])
  {
    v7 = *(*a2 + 32);
    if (vabdd_f64(*(a4 + 8), v7) > 0.01)
    {
      if (v7 - *(a2[1] + 24) >= 30.0)
      {
        sub_1005CA250(result, a2, a5);
      }

      sub_1001FB750(a2);
      *a3 = 1;
LABEL_7:
      operator new();
    }
  }

  v8 = (*a3)++;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1005CA250(uint64_t a1, void *a2, int a3)
{
  v21 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = *(v5 + 24);
  v8 = *(*a2 + 32);
  v22 = v7;
  v23 = v8;
  v27 = vsub_s32(*(v6 + 60), *(v5 + 60));
  v30 = a3;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  if (v5 == a2)
  {
    v10 = 0;
    v9 = 0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *(v5 + 40);
      v9 += v14;
      v15 = *(v5 + 48);
      v11 = v15 + v11;
      v12 = v12 + *(v5 + 32) - *(v5 + 24);
      v16 = v15 + v13;
      if (*(v5 + 56) == 1)
      {
        v13 = v16;
      }

      else
      {
        v14 = 0;
      }

      v10 += v14;
      v5 = *(v5 + 8);
    }

    while (v5 != a2);
  }

  v24 = v9;
  v25 = v11;
  v26 = v12;
  v28 = v10;
  v29 = v13;
  v17 = sub_1005CA580(a1, &v21);
  if (qword_1025D4430 != -1)
  {
    sub_1018D7CC8();
  }

  v18 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67242240;
    v52 = a3;
    v53 = 2050;
    v54 = v7;
    v55 = 2050;
    v56 = v8;
    v57 = 1026;
    v58 = v9;
    v59 = 2050;
    v60 = v11;
    v61 = 2050;
    v62 = v12;
    v63 = 1026;
    v64 = v10;
    v65 = 2050;
    v66 = v13;
    v67 = 1026;
    v68 = v17;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "type,%{public}d,boutStart,%{public}f,boutEnd,%{public}f,steps,%{public}d,distance,%{public}f,activeTime,%{public}f,gpsSteps,%{public}d,gpsDistance,%{public}f,report,%{public}d", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4430 != -1)
    {
      sub_1018D7F50();
    }

    v33 = 67242240;
    v34 = a3;
    v35 = 2050;
    v36 = v7;
    v37 = 2050;
    v38 = v8;
    v39 = 1026;
    v40 = v9;
    v41 = 2050;
    v42 = v11;
    v43 = 2050;
    v44 = v12;
    v45 = 1026;
    v46 = v10;
    v47 = 2050;
    v48 = v13;
    v49 = 1026;
    v50 = v17;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLPredictedWalkDistanceBoutDetector::assembleAndReportBout(const std::list<P6MWDStepEntry> &, P6MWDBoutType) const", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (v17)
  {
    v19 = *(a1 + 320);
    if (v19)
    {
      v19(&v21, *(a1 + 328));
    }
  }
}

uint64_t sub_1005CA580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) >= 60.0 || *(a2 + 72) == 1;
  v3 = v2;
  if (!v2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_1018D7CC8();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Discarding bout since it does not meet minimum timeWithSteps requirement", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D89F8();
    }
  }

  return v3;
}

void sub_1005CA638(uint64_t a1, __int128 *a2)
{
  if (qword_1025D4430 != -1)
  {
    sub_1018D7CC8();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 252))
    {
      v5 = "update";
    }

    else
    {
      v5 = "init";
    }

    v12 = 136315138;
    v13 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceBoutDetector: Received user info (%s)", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8AD4();
  }

  v6 = *(a1 + 200);
  v7 = *(a2 + 44);
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 288) = a2[2];
  *(a1 + 272) = v9;
  *(a1 + 256) = v8;
  *(a1 + 300) = v7;
  *(a1 + 252) = 1;
  if (v6 != *(a1 + 208) && *(a1 + 296))
  {
    if (qword_1025D4430 != -1)
    {
      sub_1018D7F50();
    }

    v10 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v11 = **(a1 + 200);
      v12 = 134349056;
      v13 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceBoutDetector: Ending walking bout due to wheelchair (%{public}.2f)", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8BD8();
    }

    sub_1005C904C(a1);
  }
}

void sub_1005CA804(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005CA890(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_10028C64C();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1005CA804(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
  return v9 - 56;
}

void sub_1005CA9C8()
{
  sub_10001CAF4(buf);
  v0 = *buf;
  sub_100ED3410();
  LOBYTE(v1) = 0;
  sub_10001CB4C(v0, "EnableLocationControllerRecorder", &v1);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_10001CAF4(buf);
  LOBYTE(v1) = 0;
  sub_10001CB4C(*buf, "EnableLocationControllerRecorderDebugLogs", &v1);
  if (v3)
  {
    sub_100008080(v3);
  }

  operator new();
}

void sub_1005CAC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005D64CC(va);
  _Unwind_Resume(a1);
}

void sub_1005CACA4()
{
  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v0 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v1 = sub_10000B1F8();
    v3 = 1;
    v2 = sub_10001A6B0(v1, &v3);
    v3 = 134349056;
    v4 = v2;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "#locctl,#rec,shutdown recorder instance,mct,%{public}.3f", &v3, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D48();
  }

  if (qword_102658230 != -1)
  {
    sub_1018D8E48();
  }

  if (qword_102637048)
  {
    sub_1005CADAC(qword_102637048);
  }
}

void sub_1005CADAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10106A17C(v2);
    v3 = sub_10000B1F8();
    v17 = 1;
    *(a1 + 32) = sub_10001A6B0(v3, &v17);
    *(a1 + 24) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = sub_10000B1F8();
      v17 = 1;
      v6 = sub_10001A6B0(v5, &v17);
      v7 = sub_10000B1F8();
      v8 = sub_100125220(v7);
      v17 = 134349312;
      v18 = v6;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#locctl,#rec,close record session,mct,%{public}.3f,propagation_us,%{public}.3f", &v17, 0x16u);
    }

    v9 = sub_10000A100(121, 2);
    if (v9)
    {
      sub_1018D8E70(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_1005CAEDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 24) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v3 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v4 = sub_10000B1F8();
        v43 = 1;
        v5 = sub_10001A6B0(v4, &v43);
        v6 = sub_10000B1F8();
        v7 = sub_100125220(v6);
        v43 = 134349312;
        v44 = v5;
        v45 = 2050;
        v46 = v7;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#locctl,#rec,#Warning,previous record session is still open,ignoring open,mct,%{public}.3f,propagation_us,%{public}.3f", &v43, 0x16u);
      }

      v8 = sub_10000A100(121, 2);
      if (v8)
      {
        sub_1018D9170(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      sub_101066F20(v2);
      *(a1 + 24) = 1;
      if (*(a1 + 32) < 0.0)
      {
        v16 = sub_10000B1F8();
        v43 = 1;
        *(a1 + 32) = sub_10001A6B0(v16, &v43);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v17 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v18 = sub_10000B1F8();
          v43 = 1;
          v19 = sub_10001A6B0(v18, &v43);
          v20 = sub_10000B1F8();
          v21 = sub_100125220(v20);
          v43 = 134349312;
          v44 = v19;
          v45 = 2050;
          v46 = v21;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#locctl,#rec,open record session for the first time since boot,mct,%{public}.3f,propagation_us,%{public}.3f", &v43, 0x16u);
        }

        v22 = sub_10000A100(121, 2);
        if (v22)
        {
          sub_1018D8F70(v22, v23, v24, v25, v26, v27, v28, v29);
        }
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v30 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v31 = sub_10000B1F8();
        v43 = 1;
        v32 = sub_10001A6B0(v31, &v43);
        v33 = sub_10000B1F8();
        v34 = sub_100125220(v33);
        v43 = 134349312;
        v44 = v32;
        v45 = 2050;
        v46 = v34;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "#locctl,#rec,open record session,mct,%{public}.3f,propagation_us,%{public}.3f", &v43, 0x16u);
      }

      v35 = sub_10000A100(121, 2);
      if (v35)
      {
        sub_1018D9070(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }
  }
}

void sub_1005CB16C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10106A2E0(v1);
  }
}

uint64_t sub_1005CB17C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_10000AED0(v17);
    v2 = sub_10000B1F8();
    sub_10000AED4(v2, v16);
    sub_100017DD0(v16, v17);
    v19 |= 2u;
    v3 = v18;
    if (!v18)
    {
      operator new();
    }

    *(v18 + 492) |= 0x10u;
    v4 = *(v3 + 296);
    if (!v4)
    {
      operator new();
    }

    *(v4 + 28) |= 2u;
    v5 = *(v4 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = sub_1001AE054();
    sub_10126E388(v5, v6);
    v7 = sub_10000BFC0(v1);
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = v16[0].n128_u64[0];
      v10 = sub_10000B1F8();
      v11 = sub_100125220(v10);
      *buf = 67240704;
      v27 = v7;
      v28 = 2050;
      v29 = v9;
      v30 = 2050;
      v31 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#locctl,#rec,wrote platform info,success,%{public}d,mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v12 = v16[0].n128_u64[0];
      v13 = sub_10000B1F8();
      v14 = sub_100125220(v13);
      v20 = 67240704;
      v21 = v7;
      v22 = 2050;
      v23 = v12;
      v24 = 2050;
      v25 = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRavenPlatformInfo()", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return sub_10000CE1C(v17);
  }

  return result;
}

void sub_1005CB430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB4AC(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    sub_10000AED0(v39);
    v4 = sub_10000B1F8();
    sub_10000AED4(v4, v38);
    v37 = 1;
    LODWORD(__str.__r_.__value_.__l.__data_) = 21;
    v36[0] = 21;
    v36[1] = sub_10000AD98(&__str);
    sub_10000AFE4(v39, &v37, v36, v36, v38);
    v41 |= 2u;
    v5 = v40;
    if (!v40)
    {
      operator new();
    }

    *(v40 + 492) |= 0x800u;
    v6 = *(v5 + 352);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 200) |= 0x10u;
    v7 = *(v6 + 32);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 28) |= 1u;
    *(v7 + 8) = -1;
    if (!sub_1000183C8(2u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v8 = *(v7 + 28);
    *(v7 + 12) = 2;
    *(v7 + 28) = v8 | 6;
    v9 = *(v7 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = getpid();
    v34 = v3;
    v35 = a2;
    v9[19] |= 4u;
    v9[5] = v10;
    v11 = a2 + 1;
    v12 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v13 = v9[9];
        v14 = v9[8];
        if (v14 >= v13)
        {
          if (v13 == v9[10])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 6), v13 + 1);
            v13 = v9[9];
          }

          v9[9] = v13 + 1;
          sub_1005D6588();
        }

        v15 = *(v9 + 3);
        v9[8] = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = *(v12 + 8);
        v18 = *(v16 + 40) | 1;
        *(v16 + 40) = v18;
        *(v16 + 32) = v17;
        if (*(v12 + 63) < 0)
        {
          sub_100007244(&__str, v12[5], v12[6]);
          v18 = *(v16 + 40);
        }

        else
        {
          __str = *(v12 + 5);
        }

        *(v16 + 40) = v18 | 2;
        v19 = *(v16 + 8);
        if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v19, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_1005D65EC(&__str, (v12 + 8));
        v20 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[1])
        {
          do
          {
            v21 = *(v20 + 28);
            v22 = *(v16 + 24);
            if (v22 == *(v16 + 28))
            {
              sub_1003945DC(v16 + 16, v22 + 1);
              v22 = *(v16 + 24);
            }

            v23 = *(v16 + 16);
            *(v16 + 24) = v22 + 1;
            *(v23 + 4 * v22) = v21;
            v24 = *(v20 + 8);
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = v24->__r_.__value_.__r.__words[0];
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = *(v20 + 16);
                v26 = v25->__r_.__value_.__r.__words[0] == v20;
                v20 = v25;
              }

              while (!v26);
            }

            v20 = v25;
          }

          while (v25 != &__str.__r_.__value_.__r.__words[1]);
        }

        sub_1003C93BC(&__str, __str.__r_.__value_.__l.__size_);
        v27 = v12[1];
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
            v28 = v12[2];
            v26 = *v28 == v12;
            v12 = v28;
          }

          while (!v26);
        }

        v12 = v28;
      }

      while (v28 != v11);
    }

    v29 = sub_10000BFC0(v34);
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v30 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v31 = v35[2];
      LODWORD(__str.__r_.__value_.__l.__data_) = 67240448;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v29;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 2050;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordLocationControllerClientList,success,%{public}d,clientList_size,%{public}zu", &__str, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(&__str);
      v32 = v35[2];
      v42 = 67240448;
      v43 = v29;
      v44 = 2050;
      v45 = v32;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLocationControllerClientList(const CLLocationControllerRecorder_Types::ClientList &)", "%s\n", v33);
      if (v33 != &__str)
      {
        free(v33);
      }
    }

    return sub_10000CE1C(v39);
  }

  return result;
}

void sub_1005CB9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CBAC0(uint64_t result, int a2, int a3)
{
  if (!*(result + 16))
  {
    return result;
  }

  v5 = result;
  sub_10000AED0(v26);
  v6 = sub_10000B1F8();
  sub_10000AED4(v6, v25);
  v24 = 1;
  LODWORD(__str.__r_.__value_.__l.__data_) = 21;
  v23[0] = 21;
  v23[1] = sub_10000AD98(&__str);
  sub_10000AFE4(v26, &v24, v23, v23, v25);
  v28 |= 2u;
  v7 = v27;
  if (!v27)
  {
    operator new();
  }

  *(v27 + 492) |= 0x800u;
  v8 = *(v7 + 352);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 200) |= 0x10u;
  v9 = *(v8 + 32);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 28) |= 1u;
  *(v9 + 8) = -1;
  if (!sub_1000183C8(3u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v10 = *(v9 + 28);
  *(v9 + 12) = 3;
  *(v9 + 28) = v10 | 6;
  v11 = *(v9 + 16);
  if (!v11)
  {
    operator new();
  }

  if (a2)
  {
    if (sub_10041ECEC(1u))
    {
      v12 = 1;
      goto LABEL_16;
    }

LABEL_37:
    v17 = "::CLP::LogEntry::PrivateData::SystemNotification_FilterType_IsValid(value)";
    v18 = 9682;
    v19 = "set_filter_type";
    goto LABEL_39;
  }

  if (!sub_10041ECEC(2u))
  {
    goto LABEL_37;
  }

  v12 = 2;
LABEL_16:
  *(v11 + 76) |= 0x10u;
  *(v11 + 56) = v12;
  if (!a3)
  {
    if (sub_10041ECEC(1u))
    {
      v13 = 1;
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  if (!sub_10041ECEC(2u))
  {
LABEL_38:
    v17 = "::CLP::LogEntry::PrivateData::SystemNotification_GnssOdometerProcessingSilo_IsValid(value)";
    v18 = 9817;
    v19 = "set_gnss_odometer_processing_silo";
LABEL_39:
    __assert_rtn(v19, "CLPLocationController.pb.h", v18, v17);
  }

  v13 = 2;
LABEL_21:
  *(v11 + 76) |= 0x80u;
  *(v11 + 60) = v13;
  sub_10001CAF4(&v29);
  __p = 1685025392;
  v22 = 4;
  sub_1005CC044(v29, "LCPlaybackSystemVersionInfo", &__p, &__str);
  *(v11 + 76) |= 0x20u;
  v14 = *(v11 + 48);
  if (v14 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v14, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    sub_100008080(v30);
  }

  v15 = sub_10000BFC0(v5);
  if (qword_1025D4600 != -1)
  {
    sub_1018D8CDC();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 67240704;
    HIDWORD(__str.__r_.__value_.__r.__words[0]) = v15;
    LOWORD(__str.__r_.__value_.__r.__words[1]) = 1026;
    *(&__str.__r_.__value_.__r.__words[1] + 2) = a2;
    HIWORD(__str.__r_.__value_.__r.__words[1]) = 1026;
    LODWORD(__str.__r_.__value_.__r.__words[2]) = a3;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#locctl,#rec,recordLocationControllerVersionParameters,success,%{public}d,locationControllerFilterUsageIsLegacy,%{public}d,enableGnssOdometerInLocationController,%{public}d", &__str, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D04(&__str);
    LODWORD(v29) = 67240704;
    HIDWORD(v29) = v15;
    LOWORD(v30) = 1026;
    *(&v30 + 2) = a2;
    HIWORD(v30) = 1026;
    v31 = a3;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLocationControllerVersionParameters(BOOL, BOOL)", "%s\n", v20);
    if (v20 != &__str)
    {
      free(v20);
    }
  }

  return sub_10000CE1C(v26);
}

void sub_1005CC044(uint64_t a1@<X0>, const char *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v6 = sub_100175094(a1, a2, __p);
  if (v6)
  {
    v7 = __p;
  }

  else
  {
    v7 = a3;
  }

  if (*(v7 + 23) < 0)
  {
    v8 = *v7;
    v9 = __p;
    if (!v6)
    {
      v9 = a3;
    }

    sub_100007244(a4, v8, v9[1]);
  }

  else
  {
    *a4 = *v7;
    *(a4 + 16) = v7[2];
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005CC0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CC0FC(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v77 = 1024;
          LODWORD(v78) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v72 = 67109376;
          *v73 = v16;
          *&v73[4] = 1024;
          *&v73[6] = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v19);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        sub_10000AED0(v72);
        v26 = sub_10000B1F8();
        sub_10000AED4(v26, v60);
        sub_10000AFE4(v72, a2, a3->i32, a4, v60);
        v75 |= 2u;
        v27 = v74;
        if (!v74)
        {
          operator new();
        }

        *(v74 + 492) |= 0x800u;
        v28 = *(v27 + 352);
        if (!v28)
        {
          operator new();
        }

        *(v28 + 200) |= 0x40u;
        v29 = *(v28 + 48);
        if (!v29)
        {
          operator new();
        }

        v30 = *a5;
        *(v29 + 28) |= 1u;
        *(v29 + 8) = v30;
        v31 = sub_1005CC9C4(a6);
        if (!sub_10041ECEC(v31))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10317, "::CLP::LogEntry::PrivateData::ClientManagerNotification_NotificationType_IsValid(value)");
        }

        v32 = *(v29 + 28);
        *(v29 + 12) = v31;
        *(v29 + 28) = v32 | 6;
        v33 = *(v29 + 16);
        if (!v33)
        {
          operator new();
        }

        v34 = sub_1005CCAC0((a7 + 188));
        if (!sub_10041ECF8(v34))
        {
          __assert_rtn("set_location_enabled", "CLPLocationController.pb.h", 10268, "::CLP::LogEntry::PrivateData::LocationServicesEnabled_IsValid(value)");
        }

        *(v33 + 16) |= 1u;
        *(v33 + 8) = v34;
        v35 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v36 = v35;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v61);
            if (SBYTE3(v65) >= 0)
            {
              v38 = &v61;
            }

            else
            {
              v38 = v61;
            }

            v51 = v38;
            LODWORD(v53[0]) = a3->i32[0];
            sub_1013230DC(v53, v58);
            if (v59 >= 0)
            {
              v39 = v58;
            }

            else
            {
              v39 = v58[0];
            }

            v55 = *a4;
            v40 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v40 = __p[0];
            }

            v41 = *a6;
            v42 = sub_10000B1F8();
            v43 = sub_100125220(v42);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v36;
            v77 = 2080;
            v78 = v51;
            v79 = 2080;
            v80 = v39;
            v81 = 2080;
            v82 = v40;
            v83 = 1024;
            v84 = v41;
            v85 = 2050;
            v86 = v43;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SBYTE3(v65) < 0)
            {
              operator delete(v61);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v58);
            if (v59 >= 0)
            {
              v44 = v58;
            }

            else
            {
              v44 = v58[0];
            }

            v55 = a3->i32[0];
            v45 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v45 = __p[0];
            }

            v52 = *a4;
            sub_1013230DC(&v52, v53);
            if (v54 >= 0)
            {
              v46 = v53;
            }

            else
            {
              v46 = v53[0];
            }

            v47 = *a6;
            v48 = sub_10000B1F8();
            v49 = sub_100125220(v48);
            LODWORD(v61) = 67110402;
            HIDWORD(v61) = v36;
            v62 = 2080;
            v63 = v44;
            v64 = 2080;
            v65 = v45;
            v66 = 2080;
            v67 = v46;
            v68 = 1024;
            v69 = v47;
            v70 = 2050;
            v71 = v49;
            v50 = _os_log_send_and_compose_impl();
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v50);
            if (v50 != &buf)
            {
              free(v50);
            }
          }
        }

        sub_10000CE1C(v72);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v80) >= 0 ? &buf : buf;
        *v72 = 136315138;
        *v73 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,unsupported message type,%s", v72, 0xCu);
        if (SBYTE3(v80) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9668();
      }
    }
  }
}

uint64_t sub_1005CC9C4(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 4)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertClientManagerNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D976C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CCAC0(int *a1)
{
  if (*a1 < 3)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLocationServicesEnabledTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9858(a1);
    return 0;
  }

  return result;
}

void sub_1005CCBB0(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, char *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v83 = 1024;
        LODWORD(v84) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v78 = 67109376;
        *v79 = v16;
        *&v79[4] = 1024;
        *&v79[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v78);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v66);
    sub_10000AFE4(v78, a2, a3->i32, a4, v66);
    v81 |= 2u;
    v27 = v80;
    if (!v80)
    {
      operator new();
    }

    *(v80 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x80u;
    v29 = *(v28 + 56);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_1002E5A3C(a6);
    if (!sub_1002E5B3C(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10607, "::CLP::LogEntry::PrivateData::WifiNotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    v34 = *a6;
    if (*a6 > 9)
    {
      if (v34 - 10 < 2)
      {
        v36 = a7[137];
        *(v33 + 36) |= 0x20u;
        *(v33 + 30) = v36;
      }
    }

    else
    {
      switch(v34)
      {
        case 1u:
          v37 = *a7;
          *(v33 + 36) |= 1u;
          *(v33 + 28) = v37;
          goto LABEL_70;
        case 3u:
          v38 = sub_1002E5B48(a7 + 1);
          sub_1005CD54C(v33, v38);
          v39 = sub_1005CD590(v33);
          sub_1002E5FF8((a7 + 104), v39, 0);
          v34 = *a6;
          break;
        case 6u:
          v35 = a7[138];
          *(v33 + 36) |= 0x40u;
          *(v33 + 31) = v35;
LABEL_67:
          *(v33 + 36) |= 4u;
          v40 = *(v33 + 8);
          if (!v40)
          {
            operator new();
          }

          sub_1002E5C54((a7 + 8), v40, 0);
          goto LABEL_70;
      }
    }

    if (v34 <= 7 && ((1 << v34) & 0xC8) != 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    v41 = sub_10000BFC0(a1);
    if (*(a1 + 8) == 1)
    {
      v42 = v41;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v43 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v67);
        if (SBYTE3(v71) >= 0)
        {
          v44 = &v67;
        }

        else
        {
          v44 = v67;
        }

        v57 = v44;
        LODWORD(v59[0]) = a3->i32[0];
        sub_1013230DC(v59, v64);
        if (v65 >= 0)
        {
          v45 = v64;
        }

        else
        {
          v45 = v64[0];
        }

        v61 = *a4;
        v46 = __p;
        sub_1013230DC(&v61, __p);
        if (v63 < 0)
        {
          v46 = __p[0];
        }

        v47 = *a6;
        v48 = sub_10000B1F8();
        v49 = sub_100125220(v48);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v42;
        v83 = 2080;
        v84 = v57;
        v85 = 2080;
        v86 = v45;
        v87 = 2080;
        v88 = v46;
        v89 = 1024;
        v90 = v47;
        v91 = 2050;
        v92 = v49;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }

        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

        if (SBYTE3(v71) < 0)
        {
          operator delete(v67);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        sub_101322EE0(a2, v64);
        if (v65 >= 0)
        {
          v50 = v64;
        }

        else
        {
          v50 = v64[0];
        }

        v61 = a3->i32[0];
        v51 = __p;
        sub_1013230DC(&v61, __p);
        if (v63 < 0)
        {
          v51 = __p[0];
        }

        v58 = *a4;
        sub_1013230DC(&v58, v59);
        if (v60 >= 0)
        {
          v52 = v59;
        }

        else
        {
          v52 = v59[0];
        }

        v53 = *a6;
        v54 = sub_10000B1F8();
        v55 = sub_100125220(v54);
        LODWORD(v67) = 67110402;
        HIDWORD(v67) = v42;
        v68 = 2080;
        v69 = v50;
        v70 = 2080;
        v71 = v51;
        v72 = 2080;
        v73 = v52;
        v74 = 1024;
        v75 = v53;
        v76 = 2050;
        v77 = v55;
        v56 = _os_log_send_and_compose_impl();
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v63 < 0)
        {
          operator delete(__p[0]);
        }

        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v56);
        if (v56 != &buf)
        {
          free(v56);
        }
      }
    }

    sub_10000CE1C(v78);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v86) >= 0 ? &buf : buf;
    *v78 = 136315138;
    *v79 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,unsupported message type,%s", v78, 0xCu);
    if (SBYTE3(v86) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9944();
  }
}

BOOL sub_1005CD54C(uint64_t a1, unsigned int a2)
{
  result = sub_1002E5B3C(a2);
  if (!result)
  {
    sub_1018D9A48();
  }

  *(a1 + 36) |= 2u;
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_1005CD590(uint64_t a1)
{
  *(a1 + 36) |= 8u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

void sub_1005CD610(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, int *a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v77 = 1024;
          LODWORD(v78) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v72 = 67109376;
          *v73 = v16;
          *&v73[4] = 1024;
          *&v73[6] = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDataProtectionManager_Type::Notification &, const CLDataProtectionManager_Type::NotificationData &)", "%s\n", v19);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        sub_10000AED0(v72);
        v26 = sub_10000B1F8();
        sub_10000AED4(v26, v60);
        sub_10000AFE4(v72, a2, a3->i32, a4, v60);
        v75 |= 2u;
        v27 = v74;
        if (!v74)
        {
          operator new();
        }

        *(v74 + 492) |= 0x800u;
        v28 = *(v27 + 352);
        if (!v28)
        {
          operator new();
        }

        *(v28 + 200) |= 0x100u;
        v29 = *(v28 + 64);
        if (!v29)
        {
          operator new();
        }

        v30 = *a5;
        *(v29 + 28) |= 1u;
        *(v29 + 8) = v30;
        v31 = sub_1005CDED8(a6);
        if (!sub_100437D64(v31))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10725, "::CLP::LogEntry::PrivateData::DataProtectionManagerNotification_NotificationType_IsValid(value)");
        }

        v32 = *(v29 + 28);
        *(v29 + 12) = v31;
        *(v29 + 28) = v32 | 6;
        v33 = *(v29 + 16);
        if (!v33)
        {
          operator new();
        }

        v34 = sub_1005CDFC0(a7);
        if (!sub_10041ECEC(v34))
        {
          __assert_rtn("set_availability", "CLPLocationController.pb.h", 10676, "::CLP::LogEntry::PrivateData::DataAvailability_IsValid(value)");
        }

        *(v33 + 16) |= 1u;
        *(v33 + 8) = v34;
        v35 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v36 = v35;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v61);
            if (SBYTE3(v65) >= 0)
            {
              v38 = &v61;
            }

            else
            {
              v38 = v61;
            }

            v51 = v38;
            LODWORD(v53[0]) = a3->i32[0];
            sub_1013230DC(v53, v58);
            if (v59 >= 0)
            {
              v39 = v58;
            }

            else
            {
              v39 = v58[0];
            }

            v55 = *a4;
            v40 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v40 = __p[0];
            }

            v41 = *a6;
            v42 = sub_10000B1F8();
            v43 = sub_100125220(v42);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v36;
            v77 = 2080;
            v78 = v51;
            v79 = 2080;
            v80 = v39;
            v81 = 2080;
            v82 = v40;
            v83 = 1024;
            v84 = v41;
            v85 = 2050;
            v86 = v43;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SBYTE3(v65) < 0)
            {
              operator delete(v61);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v58);
            if (v59 >= 0)
            {
              v44 = v58;
            }

            else
            {
              v44 = v58[0];
            }

            v55 = a3->i32[0];
            v45 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v45 = __p[0];
            }

            v52 = *a4;
            sub_1013230DC(&v52, v53);
            if (v54 >= 0)
            {
              v46 = v53;
            }

            else
            {
              v46 = v53[0];
            }

            v47 = *a6;
            v48 = sub_10000B1F8();
            v49 = sub_100125220(v48);
            LODWORD(v61) = 67110402;
            HIDWORD(v61) = v36;
            v62 = 2080;
            v63 = v44;
            v64 = 2080;
            v65 = v45;
            v66 = 2080;
            v67 = v46;
            v68 = 1024;
            v69 = v47;
            v70 = 2050;
            v71 = v49;
            v50 = _os_log_send_and_compose_impl();
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDataProtectionManager_Type::Notification &, const CLDataProtectionManager_Type::NotificationData &)", "%s\n", v50);
            if (v50 != &buf)
            {
              free(v50);
            }
          }
        }

        sub_10000CE1C(v72);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v80) >= 0 ? &buf : buf;
        *v72 = 136315138;
        *v73 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,unsupported message type,%s", v72, 0xCu);
        if (SBYTE3(v80) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9A74();
      }
    }
  }
}

uint64_t sub_1005CDED8(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertDataProtectionManagerNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9B78(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CDFC0(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertDataAvailabilityTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9C64(a1);
    return 0;
  }

  return result;
}

void sub_1005CE0BC(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v77 = 1024;
          LODWORD(v78) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v72 = 67109376;
          *v73 = v16;
          *&v73[4] = 1024;
          *&v73[6] = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLBluetoothService_Type::Notification &, const CLBluetoothService_Type::NotificationData &)", "%s\n", v19);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        sub_10000AED0(v72);
        v26 = sub_10000B1F8();
        sub_10000AED4(v26, v60);
        sub_10000AFE4(v72, a2, a3->i32, a4, v60);
        v75 |= 2u;
        v27 = v74;
        if (!v74)
        {
          operator new();
        }

        *(v74 + 492) |= 0x800u;
        v28 = *(v27 + 352);
        if (!v28)
        {
          operator new();
        }

        *(v28 + 200) |= 0x200u;
        v29 = *(v28 + 72);
        if (!v29)
        {
          operator new();
        }

        v30 = *a5;
        *(v29 + 28) |= 1u;
        *(v29 + 8) = v30;
        v31 = sub_10126ED48(a6);
        if (!sub_10041ECF8(v31))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11209, "::CLP::LogEntry::PrivateData::BluetoothServiceNotification_NotificationType_IsValid(value)");
        }

        v32 = *(v29 + 28);
        *(v29 + 12) = v31;
        *(v29 + 28) = v32 | 6;
        v33 = *(v29 + 16);
        if (!v33)
        {
          operator new();
        }

        v34 = *(a7 + 113);
        *(v33 + 24) |= 1u;
        *(v33 + 16) = v34;
        v35 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v36 = v35;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v61);
            if (SBYTE3(v65) >= 0)
            {
              v38 = &v61;
            }

            else
            {
              v38 = v61;
            }

            v51 = v38;
            LODWORD(v53[0]) = a3->i32[0];
            sub_1013230DC(v53, v58);
            if (v59 >= 0)
            {
              v39 = v58;
            }

            else
            {
              v39 = v58[0];
            }

            v55 = *a4;
            v40 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v40 = __p[0];
            }

            v41 = *a6;
            v42 = sub_10000B1F8();
            v43 = sub_100125220(v42);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v36;
            v77 = 2080;
            v78 = v51;
            v79 = 2080;
            v80 = v39;
            v81 = 2080;
            v82 = v40;
            v83 = 1024;
            v84 = v41;
            v85 = 2050;
            v86 = v43;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SBYTE3(v65) < 0)
            {
              operator delete(v61);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v58);
            if (v59 >= 0)
            {
              v44 = v58;
            }

            else
            {
              v44 = v58[0];
            }

            v55 = a3->i32[0];
            v45 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v45 = __p[0];
            }

            v52 = *a4;
            sub_1013230DC(&v52, v53);
            if (v54 >= 0)
            {
              v46 = v53;
            }

            else
            {
              v46 = v53[0];
            }

            v47 = *a6;
            v48 = sub_10000B1F8();
            v49 = sub_100125220(v48);
            LODWORD(v61) = 67110402;
            HIDWORD(v61) = v36;
            v62 = 2080;
            v63 = v44;
            v64 = 2080;
            v65 = v45;
            v66 = 2080;
            v67 = v46;
            v68 = 1024;
            v69 = v47;
            v70 = 2050;
            v71 = v49;
            v50 = _os_log_send_and_compose_impl();
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLBluetoothService_Type::Notification &, const CLBluetoothService_Type::NotificationData &)", "%s\n", v50);
            if (v50 != &buf)
            {
              free(v50);
            }
          }
        }

        sub_10000CE1C(v72);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v80) >= 0 ? &buf : buf;
        *v72 = 136315138;
        *v73 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,unsupported message type,%s", v72, 0xCu);
        if (SBYTE3(v80) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9D50();
      }
    }
  }
}

void sub_1005CE950(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, char *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v80 = 1024;
        LODWORD(v81) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v75 = 67109376;
        *v76 = v16;
        *&v76[4] = 1024;
        *&v76[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v75);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v63);
    sub_10000AFE4(v75, a2, a3->i32, a4, v63);
    v78 |= 2u;
    v27 = v77;
    if (!v77)
    {
      operator new();
    }

    *(v77 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x400u;
    v29 = *(v28 + 80);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_10126EF8C(a6);
    if (!sub_100437D64(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11326, "::CLP::LogEntry::PrivateData::CompanionNotifierNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    if (*a6 == 5)
    {
      v34 = *a7;
      *(v33 + 16) |= 1u;
      *(v33 + 8) = v34;
      v35 = sub_10000BFC0(a1);
      if (*(a1 + 8) != 1)
      {
        goto LABEL_97;
      }

      v36 = v35;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v37 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v64);
        if (SBYTE3(v68) >= 0)
        {
          v38 = &v64;
        }

        else
        {
          v38 = v64;
        }

        v54 = v38;
        LODWORD(v56[0]) = a3->i32[0];
        sub_1013230DC(v56, v61);
        if (v62 >= 0)
        {
          v39 = v61;
        }

        else
        {
          v39 = v61[0];
        }

        v58 = *a4;
        v40 = __p;
        sub_1013230DC(&v58, __p);
        if (v60 < 0)
        {
          v40 = __p[0];
        }

        v41 = *a6;
        v42 = sub_10000B1F8();
        v43 = sub_100125220(v42);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v36;
        v80 = 2080;
        v81 = v54;
        v82 = 2080;
        v83 = v39;
        v84 = 2080;
        v85 = v40;
        v86 = 1024;
        v87 = v41;
        v88 = 2050;
        v89 = v43;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (SBYTE3(v68) < 0)
        {
          operator delete(v64);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_97;
      }

      sub_1018D8D04(&buf);
      sub_101322EE0(a2, v61);
      if (v62 >= 0)
      {
        v44 = v61;
      }

      else
      {
        v44 = v61[0];
      }

      v58 = a3->i32[0];
      v45 = __p;
      sub_1013230DC(&v58, __p);
      if (v60 < 0)
      {
        v45 = __p[0];
      }

      v55 = *a4;
      sub_1013230DC(&v55, v56);
      if (v57 >= 0)
      {
        v46 = v56;
      }

      else
      {
        v46 = v56[0];
      }

      v47 = *a6;
      v48 = sub_10000B1F8();
      v49 = sub_100125220(v48);
      LODWORD(v64) = 67110402;
      HIDWORD(v64) = v36;
      v65 = 2080;
      v66 = v44;
      v67 = 2080;
      v68 = v45;
      v69 = 2080;
      v70 = v46;
      v71 = 1024;
      v72 = v47;
      v73 = 2050;
      v74 = v49;
      v50 = _os_log_send_and_compose_impl();
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v60 < 0)
      {
        operator delete(__p[0]);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v50);
      if (v50 == &buf)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v51 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v52 = *a6;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v52;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,unsupported notification type,%d", &buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_97;
      }

      sub_1018D8D04(&buf);
      v53 = *a6;
      LODWORD(v64) = 67109120;
      HIDWORD(v64) = v53;
      v50 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v50);
      if (v50 == &buf)
      {
        goto LABEL_97;
      }
    }

    free(v50);
LABEL_97:
    sub_10000CE1C(v75);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v83) >= 0 ? &buf : buf;
    *v75 = 136315138;
    *v76 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,unsupported message type,%s", v75, 0xCu);
    if (SBYTE3(v83) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9E54();
  }
}