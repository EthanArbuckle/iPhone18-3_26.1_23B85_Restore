void sub_100490778(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024568C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004907CC()
{
  v1 = xmmword_101C79238;
  v2 = 0x100000002;
  sub_100490438(&unk_1026563A0, &v1, 3);
  return __cxa_atexit(sub_100488E58, &unk_1026563A0, dword_100000000);
}

uint64_t sub_100490A98(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v23 = objc_alloc_init(ALCLNatalieFeatures);

          *(a1 + 24) = v23;
          v25 = 0;
          v26 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = sub_1004A5E7C(v23, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        if (v12 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v25) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v25 & 0x7F) << v15;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              LOBYTE(v20) = 0;
              goto LABEL_43;
            }
          }

          v20 = (v17 != 0) & ~[a2 hasError];
LABEL_43:
          *(a1 + 32) = v20;
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 == 1)
        {
          *(a1 + 36) |= 1u;
          v25 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v25;
          goto LABEL_46;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(ALCMMotionContextMotionState);

          *(a1 + 16) = v13;
          v25 = 0;
          v26 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = sub_100493670(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_41:
          PBReaderRecallMark();
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10049138C(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_102656410, memory_order_acquire) & 1) == 0)
  {
    sub_1018912F0();
  }

  if (qword_102656400 != -1)
  {
    sub_101891360();
  }

  v2 = *(&xmmword_102656420 + 1);
  *a1 = xmmword_102656420;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_1004913FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_100491480(uint64_t a1, uint64_t a2, double a3)
{
  result = sub_100072814(a2);
  if (!result)
  {
    return result;
  }

  if (!sub_100072814(a1 + 40))
  {
    sub_100491C08(a1, a2, a3);
    return 0;
  }

  v7 = *(a1 + 200);
  if (v7 >= 0.0 && v7 <= a3)
  {
    v11 = vabdd_f64(a3, v7);
    v12 = *(sub_1001A8F5C() + 17);
    if (v11 <= v12)
    {
      v15 = sub_100109D18(a1, *(a2 + 4), *(a2 + 12), *(a1 + 44), *(a1 + 52), 0.0);
      v16 = *(sub_1001A8F5C() + 16);
      if (v15 <= v16)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101891374();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100B1AA60(__p);
          v18 = SHIBYTE(v39);
          v19 = *__p;
          sub_100B1AA60(v34);
          v20 = __p;
          if (v18 < 0)
          {
            v20 = v19;
          }

          if (v35 >= 0)
          {
            *&v21 = COERCE_DOUBLE(v34);
          }

          else
          {
            v21 = v34[0];
          }

          *buf = 136643587;
          v44 = v20;
          v45 = 2085;
          v46 = *&v21;
          v47 = 2050;
          v48 = a3;
          v49 = 2050;
          v50 = v15;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WifiPositionHysteresis, applying hysteresis %{sensitive}s to %{sensitive}s at time %{public}.1f, distance %{public}.1f", buf, 0x2Au);
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018913B0(buf);
          sub_100B1AA60(v34);
          v27 = v35;
          v28 = v34[0];
          sub_100B1AA60(v32);
          v29 = v34;
          if (v27 < 0)
          {
            v29 = v28;
          }

          if (v33 >= 0)
          {
            v30 = v32;
          }

          else
          {
            v30 = v32[0];
          }

          *__p = 136643587;
          *&__p[4] = v29;
          v37 = 2085;
          v38 = *&v30;
          v39 = 2050;
          v40 = a3;
          v41 = 2050;
          v42 = v15;
          v31 = _os_log_send_and_compose_impl();
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }

          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionHysteresis::apply(CL::Wifi1::Types::ComputedLocation &, const CFTimeInterval)", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        *(a2 + 4) = *(a1 + 44);
        *(a2 + 20) = *(a1 + 60);
        *(a2 + 36) = *(a1 + 76);
        return 1;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101891374();
      }

      v22 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_100B1AA60(__p);
        v23 = v39 >= 0 ? __p : *__p;
        *buf = 136643331;
        v44 = v23;
        v45 = 2050;
        v46 = v15;
        v47 = 2050;
        v48 = v16;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "WifiPositionHysteresis, invalidating hysteresis session %{sensitive}s due to distance %{public}.1f greater than %{public}.1f", buf, 0x20u);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101891388();
      }

      sub_100B1AA60(v34);
      if (v35 >= 0)
      {
        v26 = v34;
      }

      else
      {
        v26 = v34[0];
      }

      *__p = 136643331;
      *&__p[4] = v26;
      v37 = 2050;
      v38 = v15;
      v39 = 2050;
      v40 = v16;
      v25 = _os_log_send_and_compose_impl();
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionHysteresis::apply(CL::Wifi1::Types::ComputedLocation &, const CFTimeInterval)", "%s\n", v25);
      if (v25 == buf)
      {
LABEL_26:
        sub_100491C08(a1, a2, a3);
        return 0;
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101891374();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_100B1AA60(__p);
        v14 = v39 >= 0 ? __p : *__p;
        *buf = 136643331;
        v44 = v14;
        v45 = 2050;
        v46 = v11;
        v47 = 2050;
        v48 = v12;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "WifiPositionHysteresis, invalidating hysteresis session %{sensitive}s due to age %{public}.1f greater than %{public}.1f", buf, 0x20u);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101891388();
      }

      sub_100B1AA60(v34);
      if (v35 >= 0)
      {
        v24 = v34;
      }

      else
      {
        v24 = v34[0];
      }

      *__p = 136643331;
      *&__p[4] = v24;
      v37 = 2050;
      v38 = v11;
      v39 = 2050;
      v40 = v12;
      v25 = _os_log_send_and_compose_impl();
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionHysteresis::apply(CL::Wifi1::Types::ComputedLocation &, const CFTimeInterval)", "%s\n", v25);
      if (v25 == buf)
      {
        goto LABEL_26;
      }
    }

    free(v25);
    goto LABEL_26;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101891374();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v10 = *(a1 + 200);
    *buf = 134349312;
    v44 = v10;
    v45 = 2050;
    v46 = a3;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "WifiPositionHysteresis, invalid fStartMachContinuousTime %{public}.1f with machContinuousTime %{public}.1f", buf, 0x16u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018913F4((a1 + 200), a3);
    return 0;
  }

  return result;
}

void sub_100491BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100491C08(uint64_t a1, __int128 *a2, double a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101891374();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100B1AA60(v27);
    v7 = SHIBYTE(v30);
    v8 = *v27;
    sub_100B1AA60(__p);
    v9 = v27;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v26 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136643331;
    v33 = v9;
    v34 = 2085;
    v35 = v10;
    v36 = 2050;
    v37 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WifiPositionHysteresis, starting new hysteresis session %{sensitive}s from %{sensitive}s at time %{public}.1f", buf, 0x20u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*v27);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018913B0(buf);
    sub_100B1AA60(__p);
    v18 = v26;
    v19 = __p[0];
    sub_100B1AA60(v23);
    v20 = __p;
    if (v18 < 0)
    {
      v20 = v19;
    }

    if (v24 >= 0)
    {
      v21 = v23;
    }

    else
    {
      v21 = v23[0];
    }

    *v27 = 136643331;
    *&v27[4] = v20;
    v28 = 2085;
    v29 = v21;
    v30 = 2050;
    v31 = a3;
    v22 = _os_log_send_and_compose_impl();
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiPositionHysteresis::setHysteresisLocation(const CLDaemonLocation &, const CFTimeInterval)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v11 = *a2;
  *(a1 + 56) = a2[1];
  *(a1 + 40) = v11;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  *(a1 + 120) = a2[5];
  *(a1 + 104) = v14;
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[8];
  *(a1 + 180) = *(a2 + 140);
  *(a1 + 168) = v17;
  *(a1 + 152) = v16;
  *(a1 + 136) = v15;
  *(a1 + 200) = a3;
}

void sub_100491ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100491F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000081AC();

  return sub_100491480(a1, a2, v4);
}

uint64_t sub_100491FD0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102456978;
  sub_1004920A8((a1 + 24));
  return a1;
}

void sub_10049204C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102456978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1004920A8(_OWORD *a1)
{
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_10018D404(a1);
  *(v1 + 40) = 0xFFFF;
  *(v1 + 52) = 0;
  *(v1 + 44) = 0;
  *(v1 + 60) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v1 + 76) = result;
  *(v1 + 92) = result;
  *(v1 + 108) = result;
  *(v1 + 124) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 0xBFF0000000000000;
  *(v1 + 152) = 0;
  *(v1 + 156) = 0xBFF0000000000000;
  *(v1 + 164) = 0x7FFFFFFF;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 168) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  return result;
}

void sub_10049213C()
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

uint64_t sub_100493670(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v65 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v69 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v69 & 0x7F) << v41;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v10 = v42++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_129;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v43;
            }

LABEL_129:
            v62 = 24;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_110;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              v68 = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v68 & 0x7F) << v25;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_119;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_119:
            v62 = 28;
          }
        }

        else if (v12 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v71 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v71 & 0x7F) << v36;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_125;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v38;
          }

LABEL_125:
          v62 = 36;
        }

        else
        {
          if (v12 != 2)
          {
            goto LABEL_110;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v70 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v70 & 0x7F) << v19;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v21;
          }

LABEL_115:
          v62 = 16;
        }

        goto LABEL_145;
      }

      if (v12 <= 6)
      {
        break;
      }

      if (v12 == 7)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v72 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v72 & 0x7F) << v46;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            LOBYTE(v35) = 0;
            goto LABEL_131;
          }
        }

        v35 = (v48 != 0) & ~[a2 hasError];
LABEL_131:
        v63 = 40;
LABEL_132:
        *(a1 + v63) = v35;
        goto LABEL_146;
      }

      if (v12 == 8)
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v66 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v66 & 0x7F) << v56;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v10 = v57++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_144;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v58;
        }

LABEL_144:
        v62 = 20;
LABEL_145:
        *(a1 + v62) = v24;
        goto LABEL_146;
      }

      if (v12 != 9)
      {
        goto LABEL_110;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 1u;
      while (1)
      {
        v74 = 0;
        v16 = [a2 position] + 1;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v74 & 0x7F) << v13;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_140;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v15;
      }

LABEL_140:
      *(a1 + 8) = v18;
LABEL_146:
      v64 = [a2 position];
      if (v64 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 5)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      *(a1 + 44) |= 0x10u;
      while (1)
      {
        v67 = 0;
        v54 = [a2 position] + 1;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v53 |= (v67 & 0x7F) << v51;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v51 += 7;
        v10 = v52++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_136;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v53;
      }

LABEL_136:
      v62 = 32;
      goto LABEL_145;
    }

    if (v12 != 6)
    {
LABEL_110:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_146;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(a1 + 44) |= 0x40u;
    while (1)
    {
      v73 = 0;
      v33 = [a2 position] + 1;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v32 |= (v73 & 0x7F) << v30;
      if ((v73 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v10 = v31++ >= 9;
      if (v10)
      {
        LOBYTE(v35) = 0;
        goto LABEL_121;
      }
    }

    v35 = (v32 != 0) & ~[a2 hasError];
LABEL_121:
    v63 = 41;
    goto LABEL_132;
  }

  return [a2 hasError] ^ 1;
}

uint64_t *sub_100494960(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1004949C8(a1, v2);
  }

  return a1;
}

void sub_1004949C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    if (v2)
    {
      *(a2 + 48) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_100494A50(id a1)
{
  v1[0] = @"gsp10-ssl.apple.com";
  v2[0] = +[NSNull null];
  v1[1] = @"gs-loc.apple.com";
  v2[1] = +[NSNull null];
  v2[2] = @"1.2.840.113635.100.6.27.35";
  v1[2] = @"iphone-ld.apple.com";
  v1[3] = @"configuration.apple.com";
  v2[3] = +[NSNull null];
  v1[4] = @"cl5.apple.com";
  v2[4] = +[NSNull null];
  v1[5] = @"cl4.apple.com";
  v2[5] = +[NSNull null];
  v1[6] = @"cl3.apple.com";
  v2[6] = +[NSNull null];
  v1[7] = @"cl2.apple.com";
  v2[7] = +[NSNull null];
  v1[8] = @"ingest.apple-studies.com";
  v2[8] = +[NSNull null];
  v1[9] = @"ingest.stg.apple-studies.com";
  v2[9] = +[NSNull null];
  qword_102656448 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:10];
}

uint64_t sub_100495648(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v62 & 0x7F) << v12;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_102:
              v56 = 48;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_102;
        case 2u:
          v62 = 0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 16;
          goto LABEL_122;
        case 3u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v62 & 0x7F) << v33;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_98:
          v56 = 44;
          goto LABEL_107;
        case 4u:
          LODWORD(v62) = 0;
          v38 = [a2 position] + 4;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v59 = v62;
          v60 = 36;
          goto LABEL_125;
        case 5u:
          LODWORD(v62) = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v59 = v62;
          v60 = 40;
          goto LABEL_125;
        case 6u:
          LODWORD(v62) = 0;
          v44 = [a2 position] + 4;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v59 = v62;
          v60 = 52;
          goto LABEL_125;
        case 7u:
          v62 = 0;
          v47 = [a2 position] + 8;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 8;
          goto LABEL_122;
        case 8u:
          LODWORD(v62) = 0;
          v40 = [a2 position] + 4;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 4, v41 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v59 = v62;
          v60 = 32;
          goto LABEL_125;
        case 9u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v62 & 0x7F) << v51;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v53;
          }

LABEL_106:
          v56 = 64;
          goto LABEL_107;
        case 0xAu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v62 & 0x7F) << v28;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v30;
          }

LABEL_94:
          v56 = 56;
LABEL_107:
          *(a1 + v56) = v17;
          goto LABEL_126;
        case 0xBu:
          LODWORD(v62) = 0;
          v49 = [a2 position] + 4;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 4, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v59 = v62;
          v60 = 60;
LABEL_125:
          *(a1 + v60) = v59;
          goto LABEL_126;
        case 0xCu:
          *(a1 + 72) |= 1u;
          v62 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 24;
LABEL_122:
          *(a1 + v58) = v57;
          goto LABEL_126;
        case 0xDu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 72) |= 8u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_126;
      }

      while (1)
      {
        LOBYTE(v62) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v62 & 0x7F) << v22;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v10 = v23++ >= 9;
        if (v10)
        {
          LOBYTE(v27) = 0;
          goto LABEL_90;
        }
      }

      v27 = (v24 != 0) & ~[a2 hasError];
LABEL_90:
      *(a1 + 68) = v27;
LABEL_126:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *sub_100496E80(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_100496F60(a1, "CardioChangeFeatureHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102456A70;
  a1[9] = off_102456B20;
  sub_1004977D4(a1);
  return a1;
}

uint64_t sub_100496F60(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v12 = &off_102450CC8;
  *a1 = off_102456CD0;
  *(a1 + 72) = off_102456D78;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_102456CD0;
  *(a1 + 72) = off_102456D78;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 12000;
  *(a1 + 264) = off_102450C98;
  sub_1003FFA38((a1 + 272));
  *(a1 + 272) = &off_102450CC8;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((a3 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_100497348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_10049AC1C(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1004973F0(void *a1)
{
  *a1 = off_102456CD0;
  v2 = (a1 + 9);
  a1[9] = off_102456D78;
  sub_10049AD58(a1, 0, 0);
  a1[33] = off_102450C98;
  sub_1003FFCFC(a1 + 34);
  sub_10049AC1C(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1004974CC(void *a1)
{
  sub_1004973F0(a1);

  operator delete();
}

void sub_100497504(uint64_t a1)
{
  sub_1004973F0((a1 - 72));

  operator delete();
}

uint64_t sub_100497540(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 8) - 16) == 1.79769313e308 && sub_100099160(a1 + 72))
  {
    sub_100144A84(*(a1 + 80));
    CFAbsoluteTimeGetCurrent();
    sub_1000388D8(*(a1 + 80), "DELETE FROM CardioChangeFeatureHistory WHERE startTime < ?");
  }

  return -1;
}

void sub_10049768C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004976AC(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "SELECT COUNT(*) FROM CardioChangeFeatureHistory");
  }

  return 0xFFFFFFFFLL;
}

void sub_100497768(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004977D4(uint64_t a1)
{
  result = sub_100023B68(*(a1 + 80));
  if (result)
  {
    v3 = *(a1 + 80);

    return sub_100608EC8(v3, "CardioChangeFeatureHistory", &off_102456BB0, &off_1025D5D78, 0);
  }

  return result;
}

uint64_t sub_10049783C(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "INSERT INTO CardioChangeFeatureHistory (startTime, aggregateFeatureName, aggregateFeatureValue) VALUES (?, ?, ?)");
  }

  return result;
}

void sub_100497920(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

void sub_100497944(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v4, 0);
  v5 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_double(v5, 1);
  v6 = sub_100008880(*a1);
  *(a2 + 16) = sqlite3_column_int(v6, 2);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 3);
}

uint64_t sub_1004979BC(uint64_t a1, void *a2)
{
  if (sub_100099160(a1 + 72))
  {
    a2[1] = *a2;
    sub_1000388D8(*(a1 + 80), "SELECT * FROM CardioChangeFeatureHistory WHERE startTime >= ? ORDER BY startTime");
  }

  if (qword_1025D44E0 != -1)
  {
    sub_1018916EC();
  }

  v4 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CardioChangeFeatureHistory, DB not accessible", &v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101891700();
  }

  return 109;
}

void sub_100497BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100497C1C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  sub_100497944(a1, a2);
  return 0;
}

uint64_t sub_100497C7C(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "SELECT * FROM CardioChangeFeatureHistory WHERE aggregateFeatureName = ? ORDER BY id DESC LIMIT 1");
  }

  if (qword_1025D44E0 != -1)
  {
    sub_1018916EC();
  }

  v2 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CardioChangeFeatureHistory, DB not accessible", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018917F8();
  }

  return 109;
}

void sub_100497EE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100497F28(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "SELECT * FROM CardioChangeFeatureHistory ORDER BY id DESC LIMIT 1");
  }

  return 2;
}

void sub_100497FC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100497FDC(void *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v7 = BYTE7(v16);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1004985C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100498650(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v8 = *v16;
  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v4 = BYTE7(v14);
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (SBYTE7(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_100498C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100498D08(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_10049AFA4(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_10189195C();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2082;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018919DC(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CLCardioChange::AggregateFeatureEntry, CLActivityDB::ClassBDataProtectionPolicy>::setDatabaseAccessible() [T = CLCardioChange::AggregateFeatureEntry, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_1004993B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1004993F4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

id *sub_100499400(uint64_t a1, uint64_t a2, char a3)
{
  v30[0] = os_transaction_create();
  v30[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v30);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v26 = 0;
  v27 = 0.0;
  v28 = -1;
  v29 = 0;
  v6 = (*(*a1 + 104))(a1, &v26);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018919DC(buf);
        LOWORD(v31) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLCardioChange::AggregateFeatureEntry, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLCardioChange::AggregateFeatureEntry, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 8);
    v8 = v27;
    v9 = v7 - v27;
    if (v7 - v27 < 0.0)
    {
      v9 = -(v7 - v27);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 8);
        *buf = 134349312;
        v36 = v27;
        v37 = 2050;
        v38 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018919DC(buf);
        v21 = *(a2 + 8);
        v31 = 134349312;
        v32 = v27;
        v33 = 2050;
        v34 = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLCardioChange::AggregateFeatureEntry, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLCardioChange::AggregateFeatureEntry, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 8);
      v8 = v27;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101891680();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 8);
          *buf = 134217984;
          v36 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018919DC(buf);
          v23 = *(a2 + 8);
          v31 = 134217984;
          v32 = v23;
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLCardioChange::AggregateFeatureEntry, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLCardioChange::AggregateFeatureEntry, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v36 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018919DC(buf);
        v31 = 134217984;
        v32 = v17;
        v25 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLCardioChange::AggregateFeatureEntry, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLCardioChange::AggregateFeatureEntry, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, &v26, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *(a2 + 16);
  *(a1 + 224) = *a2;
  *(a1 + 240) = v19;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v30);
}

void sub_100499B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100499B58(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_10049A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10049A10C(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v16[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " SET startTime = startTime + ?", 30);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return result;
}

void sub_10049A62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10049A6B8(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101891680();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_10049ABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10049AC1C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_10049ACC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_10049AD58(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_10189195C();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101891A20(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101891680();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101891B68(a1);
    }
  }

  *(a1 + 336) = a2;
  v10 = *(a1 + 344);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 344) = _Block_copy(a3);
  }
}

void sub_10049B020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_10049B06C(int a1, float a2)
{
  v2 = a2 > 12.07;
  v3 = a2 * 2.2369;
  if ((v2 & a1) != 0)
  {
    v3 = 27.0;
  }

  return (v3 * 1.5395) + 0.34316;
}

float sub_10049B0B0(int a1, float a2)
{
  v2 = a2 > 4.47;
  v3 = a2 * 2.2369;
  if ((v2 & a1) != 0)
  {
    v3 = 9.9991;
  }

  return ((v3 * -0.793) + ((v3 * 0.3564) * v3)) + 3.142;
}

void sub_10049B108(float a1, float a2, float a3, float a4)
{
  if (a2 <= 5.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 5.0;
  }

  if (a2 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = 25.0;
  if (a1 <= 25.0)
  {
    v5 = a1;
  }

  if (a1 < 0.0)
  {
    v5 = 0.0;
  }

  if (a4 == 0.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (a4 == 0.0)
  {
    v7 = a1;
  }

  else
  {
    v7 = v5;
  }

  if (a3 > 0.0)
  {
    v8 = pow(v7, 3.0) * 0.167999998 / a3;
    if (qword_1025D4230 != -1)
    {
      sub_101891CBC();
    }

    v9 = v6 * 7.884;
    v11 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v14 = (v7 * 0.194);
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v10 = v8;
      v18 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Cycle, RollingResistance,%f,gravity,%f,wind,%f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101891CD0();
      }

      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "float CLCalorieWorkRateRegression::computeCyclingMets(float, float, float, float)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

float sub_10049B378(int a1, float a2)
{
  v2 = 8.0;
  if (a2 <= 8.0)
  {
    v2 = a2;
  }

  if (a2 < 0.0)
  {
    v2 = 0.0;
  }

  if (!a1)
  {
    v2 = a2;
  }

  result = 2.0;
  if (v2 < 0.3 || v2 > 0.5)
  {
    result = 1.5;
    if (v2 >= 0.3)
    {
      return (v2 * -0.94) + v2 * v2 * 0.699999988 + 2.29999995;
    }
  }

  return result;
}

uint64_t sub_10049B750(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v51 = 0;
            v39 = [a2 position] + 8;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v48 = v51;
            v49 = 8;
            goto LABEL_109;
          }

          if (v12 != 4)
          {
            goto LABEL_82;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v51 & 0x7F) << v21;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_99;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v23;
          }

LABEL_99:
          v47 = 36;
        }

        else
        {
          if (v12 == 1)
          {
            *(a1 + 52) |= 2u;
            v51 = 0;
            v32 = [a2 position] + 8;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v48 = v51;
            v49 = 24;
LABEL_109:
            *(a1 + v49) = v48;
            goto LABEL_110;
          }

          if (v12 != 2)
          {
            goto LABEL_82;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v51 & 0x7F) << v13;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_95;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_95:
          v47 = 32;
        }

        goto LABEL_100;
      }

      if (v12 <= 6)
      {
        break;
      }

      if (v12 == 7)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 52) |= 4u;
        while (1)
        {
          LOBYTE(v51) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v51 & 0x7F) << v41;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v10 = v42++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v43;
        }

LABEL_91:
        v47 = 44;
LABEL_100:
        *(a1 + v47) = v18;
        goto LABEL_110;
      }

      if (v12 != 8)
      {
LABEL_82:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_110;
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v51 & 0x7F) << v26;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v10 = v27++ >= 9;
        if (v10)
        {
          LOBYTE(v31) = 0;
          goto LABEL_102;
        }
      }

      v31 = (v28 != 0) & ~[a2 hasError];
LABEL_102:
      *(a1 + 48) = v31;
LABEL_110:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 != 5)
    {
      if (v12 != 6)
      {
        goto LABEL_82;
      }

      *(a1 + 52) |= 1u;
      v51 = 0;
      v19 = [a2 position] + 8;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v48 = v51;
      v49 = 16;
      goto LABEL_109;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v37 = [a2 position] + 1;
      if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v36 |= (v51 & 0x7F) << v34;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v34 += 7;
      v10 = v35++ >= 9;
      if (v10)
      {
        v18 = 0;
        goto LABEL_87;
      }
    }

    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v36;
    }

LABEL_87:
    v47 = 40;
    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

void *sub_10049C760(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

uint64_t sub_10049C768(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

id sub_10049C7BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_1012D11E0();
  }

  return [*(v1 + 16) register:*(v1 + 8) forNotification:3 registrationInfo:0];
}

void sub_10049C888(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101891CF8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifi1SettingsOta::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101891D0C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifi1SettingsOta::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10049CAD0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_10049CA54(void *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    [*(v1 + 16) unregister:*(v1 + 8) forNotification:3];
    result = v2[1];
    v2[1] = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_10049CAD0(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 3)
  {
    v5 = result;
    if (qword_1025D4630 != -1)
    {
      sub_101891D34();
    }

    v6 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138477827;
      v8 = sub_10007005C(a4);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#Mobile Asset Wifi1 Settings notification data: %{private}@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101891D48(a4);
    }

    return sub_10122718C(v5, a4);
  }

  return result;
}

void sub_10049CC30()
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

void sub_10049CCE8(uint64_t a1, void *a2, uint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v7 = 26;
    v15 = vdupq_n_s64(0x1AuLL);
    v16 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (sub_1000081AC() - *&a3);
    v17 = v10;
    v18 = 0xFFFFFFFF00000000;
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v11 = a2[16];
        v7 = a2[5];
        v15.i64[0] = v11;
        v15.i64[1] = v7;
        v9 = a2[8];
        v8 = 6;
        goto LABEL_17;
      }

      v11 = 26;
      if (a5 == 3)
      {
        v11 = a2[16];
        v7 = a2[4];
        v15.i64[0] = v11;
        v15.i64[1] = v7;
        v9 = a2[7];
        v8 = 7;
        goto LABEL_17;
      }
    }

    else
    {
      if (!a5)
      {
        v9 = 0;
        v7 = 26;
        v15 = vdupq_n_s64(0x1AuLL);
        v8 = 4;
        v11 = 26;
        goto LABEL_17;
      }

      v11 = 26;
      if (a5 == 1)
      {
        v11 = a2[16];
        v7 = a2[5];
        v15.i64[0] = v11;
        v15.i64[1] = v7;
        v9 = a2[8];
        v8 = 5;
LABEL_17:
        v16 = v9;
        LODWORD(v18) = v8;
      }
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101891E7C();
    }

    v13 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v30 = v8;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v7;
      v35 = 2048;
      v36 = v9;
      v37 = 1024;
      v38 = v10;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Escalation analytics, attempting to send event with resolution, %d, escalation type, %ld, workout type, %ld, location type, %ld, escalation durationS, %d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_101891FAC();
      }

      v19 = 67110144;
      v20 = v8;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutEscalationMetrics::feedEarlyEscalationUpdate(const CLWorkoutPredictor_Type::WorkoutPrediction &, std::optional<CFTimeInterval>, EarlyEscalationResolution)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    sub_10049D034(v15.i64);
    return;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_101891E7C();
  }

  v12 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = a5;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Escalation analytics, not tracking an early escalation for resolution %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101891E90(a5);
  }
}

void sub_10049D034(uint64_t *a1)
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v2 = (a1 + 3);
    if (*(a1 + 6) <= 0)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101891E7C();
      }

      v11 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
      {
        v12 = *v2;
        *buf = 67109120;
        v14 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Not sending escalation event to CoreAnalytics, invalid escalation time recorded %d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101891FD4(v2);
      }
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101891E7C();
      }

      v3 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *a1;
        v5 = a1[1];
        v6 = a1[2];
        v7 = *(a1 + 6);
        v8 = *(a1 + 7);
        v9 = *(a1 + 8);
        *buf = 68290562;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 1026;
        v18 = v4;
        v19 = 1026;
        v20 = v5;
        v21 = 1026;
        v22 = v6;
        v23 = 1026;
        v24 = v7;
        v25 = 1026;
        v26 = v8;
        v27 = 1026;
        v28 = v9;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending escalation event to CoreAnalytics, escType:%{public}d, workoutType:%{public}d, workoutLocation:%{public}d, escTime:%{public}d, escToWorkout:%{public}d, pctBackgroundEscalation:%{public}d}", buf, 0x36u);
      }

      AnalyticsSendEventLazy();
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101891E7C();
    }

    v10 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Not sending escalation event to CoreAnalytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018920F4();
    }
  }
}

void sub_10049D2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 <= 8)
  {
    if (!v3)
    {
      if (*a1 != 1)
      {
        return;
      }

      v4 = 2;
      goto LABEL_16;
    }

    if (v3 == 8)
    {
      *(a1 + 16) = vdupq_n_s64(0x1AuLL);
      *(a1 + 32) = 0;
      *(a1 + 40) = -1;
      *(a1 + 44) = 0xFFFFFFFF00000000;
      *a1 = 1;
      *(a1 + 8) = *(a2 + 24);
      *(a1 + 16) = *(a2 + 48);
    }
  }

  else if (v3 == 9)
  {
    if (*a1 == 1)
    {
      *(a1 + 24) = *(a2 + 96);
    }
  }

  else
  {
    if (v3 == 10)
    {
      if (*a1 != 1)
      {
        return;
      }

      *(a1 + 40) = (*(a2 + 24) - *(a1 + 8));
      *(a1 + 44) = 1;
      *(a1 + 48) = (*(a2 + 40) * 100.0);
      sub_10049D034((a1 + 16));
      *(a1 + 16) = vdupq_n_s64(0x1AuLL);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0xFFFFFFFFLL;
      *(a1 + 48) = -1;
      goto LABEL_17;
    }

    if (v3 == 11 && *a1 == 1)
    {
      v4 = 3;
LABEL_16:
      *(a1 + 40) = (*(a2 + 24) - *(a1 + 8));
      *(a1 + 44) = v4;
      *(a1 + 48) = (*(a2 + 40) * 100.0);
      sub_10049D034((a1 + 16));
      *(a1 + 16) = vdupq_n_s64(0x1AuLL);
      *(a1 + 32) = 0;
      *(a1 + 40) = -1;
      *(a1 + 44) = 0xFFFFFFFF00000000;
LABEL_17:
      *(a1 + 8) = 0xBFF0000000000000;
      *a1 = 0;
    }
  }
}

NSDictionary *sub_10049D448(uint64_t a1)
{
  v3[0] = @"escType";
  v4[0] = [NSNumber numberWithInteger:**(a1 + 32)];
  v3[1] = @"workoutType";
  v4[1] = [NSNumber numberWithInteger:*(*(a1 + 32) + 8)];
  v3[2] = @"workoutLocation";
  v4[2] = [NSNumber numberWithInteger:*(*(a1 + 32) + 16)];
  v3[3] = @"escTime";
  v4[3] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v3[4] = @"escToWorkout";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  v3[5] = @"pctBackgroundEscalation";
  v4[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 32)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

void sub_10049D780(_Unwind_Exception *a1)
{
  v3 = v1[9];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_10095D914(v1);
  _Unwind_Resume(a1);
}

void *sub_10049D7E8(void *a1)
{
  *a1 = off_102456E88;
  v2 = a1[9];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100008080(v3);
  }

  return sub_10095D914(a1);
}

const __CFString *sub_10049D858(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_102456F30[a1 - 1];
  }
}

const __CFString *sub_10049D880(int a1)
{
  v1 = @"?";
  if (a1 == 1)
  {
    v1 = @"Disconnected";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Connected";
  }
}

const __CFString *sub_10049D8AC(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"?";
  }

  else
  {
    return off_102456F80[a1];
  }
}

uint64_t sub_10049D918()
{
  v6 = 0;
  v5 = 1;
  v0 = sub_1010FCFFC();
  sub_1010FECB8(v0, &v6 + 1, &v6, &v5);
  if (v5 != 1)
  {
    return 5;
  }

  if (v6)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  if (HIDWORD(v6))
  {
    result = 3;
  }

  else
  {
    result = v1;
  }

  if (HIDWORD(v6))
  {
    v4 = HIDWORD(v6) != 3 || v6 != 3;
    if (v6)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }

  return result;
}

BOOL sub_10049D9AC(uint64_t a1, int *a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    sub_101892258();
  }

  sub_10049DC80(a1);
  a2[25] = *(a1 + 48);
  v5 = sub_10026E634(*(a1 + 32));
  if (v5)
  {
    if (!sub_1012AC030(a2, v5, @"LocationID"))
    {
      sub_1012AC030(a2, v5, @"SIDE");
    }

    sub_1012AC1E8(v5, @"CFG#", &__p);
    v6 = v22;
    if (v22 == 1)
    {
      if (SHIBYTE(v21) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      snprintf(a2 + 4, 0x40uLL, "%s", p_p);
      v6 = v22;
    }

    if ((v6 & 1) != 0 && SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    sub_1012AC1E8(v5, @"SerialNumber", &__p);
    v8 = v22;
    if (v22 == 1)
    {
      if (SHIBYTE(v21) >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      snprintf(a2 + 68, 0x20uLL, "%s", v9);
      v8 = v22;
    }

    if ((v8 & 1) != 0 && SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    if (qword_1025D4320 != -1)
    {
      sub_10189252C();
    }

    v10 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[25];
      v12 = *a2;
      LODWORD(__p) = 67240707;
      HIDWORD(__p) = v11;
      v18 = 1026;
      v19 = v12;
      v20 = 2081;
      v21 = a2 + 17;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "[CLAccessoryFitnessNotifier] getConfig,hardwareModel,%{public}d,side,%{public}d,SN,%{private}s", &__p, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101892554(a2 + 25, a2);
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_101892200();
    }

    v13 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 52);
      v15 = *(a1 + 56);
      LODWORD(__p) = 67240448;
      HIDWORD(__p) = v14;
      v18 = 1026;
      v19 = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[CLAccessoryFitnessNotifier] getConfig failed for usage pair (%{public}d, %{public}d). No valid service", &__p, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101892428(a1);
    }
  }

  return v5 != 0;
}

void sub_10049DC80(uint64_t a1)
{
  v2 = *(sub_1010FCFFC() + 32);
  if (v2 <= 8216)
  {
    if (v2 > 8210)
    {
      if (v2 == 8211)
      {
        v4 = 3;
        goto LABEL_30;
      }

      if (v2 == 8212)
      {
        goto LABEL_24;
      }

      if (v2 != 8215)
      {
        goto LABEL_32;
      }

      v4 = 6;
LABEL_30:
      *(a1 + 48) = v4;
      return;
    }

    if (v2 == 8202)
    {
      goto LABEL_23;
    }

    if (v2 == 8206)
    {
      v4 = 1;
      goto LABEL_30;
    }

    v3 = 8210;
LABEL_21:
    if (v2 != v3)
    {
      goto LABEL_32;
    }

    v4 = 4;
    goto LABEL_30;
  }

  if (v2 <= 8222)
  {
    switch(v2)
    {
      case 0x2019:
        v4 = 7;
        break;
      case 0x201B:
        v4 = 8;
        break;
      case 0x201D:
        v4 = 9;
        break;
      default:
        goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v2 > 8230)
  {
    if (v2 == 8231)
    {
      v4 = 10;
      goto LABEL_30;
    }

    v3 = 8239;
    goto LABEL_21;
  }

  if (v2 == 8223)
  {
LABEL_23:
    v4 = 2;
    goto LABEL_30;
  }

  if (v2 == 8228)
  {
LABEL_24:
    v4 = 5;
    goto LABEL_30;
  }

LABEL_32:
  v5 = sub_1010FCFFC();
  if ((sub_100542498(v5) & 1) == 0)
  {
    if (qword_1025D4320 != -1)
    {
      sub_101892200();
    }

    v6 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67174657;
      v7[1] = v2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CLAccessoryFitnessNotifier] Warning! The connected device %{private}d might not be supported", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189266C(v2);
    }
  }
}

void sub_10049DE84(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (qword_1025D4320 != -1)
  {
    sub_101892200();
  }

  v8 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
  {
    *buf = 67240704;
    v11 = a2;
    v12 = 2050;
    v13 = a3;
    v14 = 2050;
    v15 = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[CLAccessoryFitnessNotifier] numberOfClientsChanged notification:%{public}d, from:%{public}zu, to:%{public}zu", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4320 != -1)
    {
      sub_10189252C();
    }

    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryFitnessNotifier::numberOfClientsChanged(int, size_t, size_t)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (a3 < a4)
  {
    *(a1 + 29) = 0;
  }
}

void sub_10049E058(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    sub_10049E1C4(a1);
    v3 = sub_1010FCFFC();
    v9 = sub_1010FE840(v3);
    if (v9)
    {
      v4 = [NSData dataWithBytes:&v9 length:6];
      v5 = *(a1 + 32);
      v16 = @"BT_ADDR";
      v17 = v4;
      sub_1009B6184(v5, [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]);
    }

    else
    {
      sub_1009B69DC(*(a1 + 32));
    }

    if (qword_1025D4320 != -1)
    {
      sub_10189252C();
    }

    v6 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 52);
      v8 = *(a1 + 56);
      *buf = 67240705;
      v11 = v7;
      v12 = 1026;
      v13 = v8;
      v14 = 2049;
      v15 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CLAccessoryFitnessNotifier] Usage pair (%{public}d, %{public}d) received kActiveDeviceUpdated. Update BT address to %{private}llx", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189276C(a1, &v9);
    }
  }
}

uint64_t sub_10049E1C4(uint64_t result)
{
  if (!*(result + 32))
  {
    sub_1010FCFFC();
    v1 = sub_1009B38EC();
    sub_101860780(v1);
  }

  return result;
}

void sub_10049E2C4(uint64_t a1)
{
  v21 = 0;
  v2 = sub_1010FCFFC();
  v3 = sub_1010FE840(v2);
  v20 = v3;
  v4 = sub_10026E634(*(a1 + 32));
  if (!v4 || (v5 = v4, !sub_1012AC674(&v21, v4, @"BT_ADDR", 6)))
  {
LABEL_17:
    *(a1 + 48) = 0;
    *(a1 + 29) = 0;
    return;
  }

  if (!v3 || v21 == v3)
  {
    if (qword_1025D4320 != -1)
    {
      sub_10189252C();
    }

    v11 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 52);
      v13 = *(a1 + 56);
      *buf = 134284289;
      *v30 = v5;
      *&v30[8] = 1026;
      *v31 = v12;
      *&v31[4] = 1026;
      *&v31[6] = v13;
      v32 = 2049;
      v33 = v21;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[CLAccessoryFitnessNotifier] onNewHidService. New service %{private}p for usage pair (%{public}d, %{public}d) with BT address %{private}llx", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4320 != -1)
      {
        sub_10189252C();
      }

      v14 = *(a1 + 52);
      v15 = *(a1 + 56);
      v24 = 134284289;
      *v25 = v5;
      *&v25[8] = 1026;
      *v26 = v14;
      *&v26[4] = 1026;
      *&v26[6] = v15;
      v27 = 2049;
      v28 = v21;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLAccessoryFitnessNotifier::onNewHidService(void *)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    goto LABEL_17;
  }

  if (qword_1025D4320 != -1)
  {
    sub_10189252C();
  }

  v6 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 52);
    v8 = *(a1 + 56);
    *buf = 67240961;
    *v30 = v7;
    *&v30[4] = 1026;
    *&v30[6] = v8;
    *v31 = 2049;
    *&v31[2] = v3;
    v32 = 2049;
    v33 = v21;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CLAccessoryFitnessNotifier] onNewHidService error! BT Address mismatched for usage pair (%{public}d, %{public}d). Expecting %{private}llx, got %{private}llx", buf, 0x22u);
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4320 != -1)
    {
      sub_10189252C();
    }

    v17 = *(a1 + 52);
    v18 = *(a1 + 56);
    v24 = 67240961;
    *v25 = v17;
    *&v25[4] = 1026;
    *&v25[6] = v18;
    *v26 = 2049;
    *&v26[2] = v3;
    v27 = 2049;
    v28 = v21;
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "static void CLAccessoryFitnessNotifier::onNewHidService(void *)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v9 = [NSData dataWithBytes:&v20 length:6];
  v10 = *(a1 + 32);
  v22 = @"BT_ADDR";
  v23 = v9;
  sub_1009B6184(v10, [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]);
}

uint64_t sub_10049E708(int *a1)
{
  if (qword_1025D4320 != -1)
  {
    sub_101892200();
  }

  v2 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[13];
    v4 = a1[14];
    v6[0] = 67240448;
    v6[1] = v3;
    v7 = 1026;
    v8 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLAccessoryFitnessNotifier] Service removed for usage page %{public}d usage %{public}d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101892884(a1);
  }

  return (*(*a1 + 48))(a1);
}

void sub_10049E844()
{
  if (sub_1000D7E48() == 1)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_10049E90C(uint64_t result, uint64_t a2)
{
  *result = off_102456FA8;
  *(result + 8) = 1;
  *(result + 12) = 0;
  *(result + 16) = a2;
  return result;
}

void *sub_10049E93C(void *result, uint64_t a2)
{
  v3 = result;
  if (a2 == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101892988();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*v3 + 32))(v3, 1);
      *buf = 67240192;
      v13 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "FitnessMode, checking to start collector in active energy mode, should start %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189299C(v3);
    }

    result = sub_10049ECA0(v3);
  }

  if (*(v3 + 8) != a2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101892AE4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 8);
      v8 = (*(*v3 + 32))(v3, a2);
      *buf = 67240704;
      v13 = v7;
      v14 = 1026;
      v15 = a2;
      v16 = 1026;
      v17 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "FitnessMode, activity move mode changed from %{public}d to %{public}d, should start %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101892AE4();
      }

      (*(*v3 + 32))(v3, a2);
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFitnessModeControllerBase::feedMoveModeUpdate(CLFitnessTrackingNotifier_Type::ActivityMoveMode)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(v3 + 8) = a2;
    v9 = *(v3 + 16);
    if (v9)
    {
      (**v9)(v9, a2);
      v10 = *(v3 + 16);
      if (v10)
      {
        (*(*v10 + 16))(v10);
      }
    }

    return sub_10049ECA0(v3);
  }

  return result;
}

void *sub_10049ECA0(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = (*(*result + 32))(result);
    if (result)
    {
      v2 = *(*v1[2] + 8);

      return v2();
    }
  }

  return result;
}

void *sub_10049ED4C(uint64_t a1, int a2)
{
  if (qword_1025D4230 != -1)
  {
    sub_101892988();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 12);
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "FitnessMode, fitness tracking update from %{public}d to %{public}d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101892B0C(a1, a2);
  }

  *(a1 + 12) = a2;
  if (a2)
  {
    return sub_10049ECA0(a1);
  }

  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

uint64_t sub_10049EE8C(void *a1)
{
  result = (*(*a1 + 32))(a1);
  if ((result & 1) == 0)
  {
    result = a1[2];
    if (result)
    {
      v3 = *(*result + 16);

      return v3();
    }
  }

  return result;
}

uint64_t sub_10049F2C0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v39 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 8;
          goto LABEL_71;
        }

        if (v12 != 2)
        {
LABEL_56:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_72;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v39 & 0x7F) << v19;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_66;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v21;
        }

LABEL_66:
        *(a1 + 24) = v24;
      }

      else
      {
        switch(v12)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v39 & 0x7F) << v25;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_59;
              }
            }

            v18 = (v27 != 0) & ~[a2 hasError];
LABEL_59:
            v35 = 28;
            break;
          case 4:
            *(a1 + 32) |= 1u;
            v39 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 16;
LABEL_71:
            *(a1 + v37) = v36;
            goto LABEL_72;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v39 & 0x7F) << v13;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_61;
              }
            }

            v18 = (v15 != 0) & ~[a2 hasError];
LABEL_61:
            v35 = 29;
            break;
          default:
            goto LABEL_56;
        }

        *(a1 + v35) = v18;
      }

LABEL_72:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10049FD74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 <= 9)
  {
    if (!v4)
    {
      if (*a1 != 1)
      {
        return;
      }

      *(a1 + 36) = 1;
      *(a1 + 24) = sub_100EB14D4(*(a2 + 96), *(a2 + 104));
      *(a1 + 32) = (*(a2 + 24) - *(a1 + 8));
      goto LABEL_14;
    }

    if (v4 != 6 || *a1 != 1)
    {
      return;
    }

    v5 = 2;
LABEL_13:
    *(a1 + 32) = (*(a2 + 24) - *(a1 + 8));
    *(a1 + 36) = v5;
LABEL_14:

    sub_10049FE80(a1);
    return;
  }

  if (v4 == 10)
  {
    if (*a1 != 1)
    {
      return;
    }

    v5 = 3;
    goto LABEL_13;
  }

  if (v4 == 11)
  {
    *(a1 + 16) = vdupq_n_s64(0x1AuLL);
    *(a1 + 32) = 0xFFFFFFFFLL;
    *a1 = 1;
    *(a1 + 8) = *(a2 + 24);
    *(a1 + 16) = sub_100EB14D4(*(a2 + 96), *(a2 + 104));
  }
}

void sub_10049FE80(uint64_t a1)
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v2 = (a1 + 32);
    if (*(a1 + 32) <= 0)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101892C40();
      }

      v9 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v10 = *v2;
        *buf = 67109120;
        v12 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Not sending alert event to CoreAnalytics, invalid escalation time recorded %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101892C54(v2);
      }
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101892C40();
      }

      v3 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 16);
        v5 = *(a1 + 24);
        v6 = *(a1 + 32);
        v7 = *(a1 + 36);
        *buf = 68290050;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 1026;
        v16 = v4;
        v17 = 1026;
        v18 = v5;
        v19 = 1026;
        v20 = v6;
        v21 = 1026;
        v22 = v7;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending alert event to CoreAnalytics, alertWorkoutType:%{public}d, acceptedWorkoutType:%{public}d, alertActiveTime:%{public}d, alertStatus:%{public}d}", buf, 0x2Au);
      }

      AnalyticsSendEventLazy();
      *(a1 + 16) = vdupq_n_s64(0x1AuLL);
      *(a1 + 32) = 0xFFFFFFFFLL;
      *(a1 + 8) = 0xBFF0000000000000;
      *a1 = 0;
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101892C40();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Not sending alert event to CoreAnalytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101892D7C();
    }
  }
}

NSDictionary *sub_1004A0110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = @"alertWorkoutType";
  v4[0] = [NSNumber numberWithInteger:*(v1 + 16)];
  v3[1] = @"acceptedWorkoutType";
  v4[1] = [NSNumber numberWithInteger:*(v1 + 24)];
  v3[2] = @"alertActiveTime";
  v4[2] = [NSNumber numberWithInt:*(v1 + 32)];
  v3[3] = @"alertStatus";
  v4[3] = [NSNumber numberWithUnsignedInt:*(v1 + 36)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_1004A0A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1004A0AB8@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v22);
  sub_100038730(&v23, "enabled,", 8);
  v2 = std::ostream::operator<<();
  v3 = sub_100038730(v2, ",light,", 7);
  sub_1004A1D90(v20);
  if ((v21 & 0x80u) == 0)
  {
    v4 = v20;
  }

  else
  {
    v4 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v5 = v21;
  }

  else
  {
    v5 = v20[1];
  }

  v6 = sub_100038730(v3, v4, v5);
  v7 = sub_100038730(v6, ",moderate,", 10);
  sub_1004A1D90(v18);
  if ((v19 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v9 = v19;
  }

  else
  {
    v9 = v18[1];
  }

  v10 = sub_100038730(v7, v8, v9);
  v11 = sub_100038730(v10, ",heavyAndGreater,", 17);
  sub_1004A1D90(__p);
  if ((v17 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = __p[1];
  }

  sub_100038730(v11, v12, v13);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  sub_100073518(v22, a1);
  v23 = v14;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004A0D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1004A0DD0(uint64_t a1)
{
  if (qword_1025D4660 != -1)
  {
    sub_101892E90();
  }

  v2 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[CLEEDCoexMonitorPower initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]_block_invoke";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#EED2CXPB,%{public}s PeakPowerMitigation Disabled, returning with nominal.", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101892F10();
  }

  result = *(a1 + 32);
  v4 = result[2];
  if (v4)
  {
    return (*(v4 + 16))(v4, [result getMitigationForCurrentlevel], 0);
  }

  return result;
}

id sub_1004A0ED0(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result queryPeakPowerLevel];
  }

  return result;
}

uint64_t sub_1004A1D90@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v9);
  sub_100038730(&v10, "allowNewStreamingRequests,", 26);
  v2 = std::ostream::operator<<();
  sub_100038730(v2, ",allowNewMediaRequests,", 23);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ",maxFramerateFps,", 17);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ",maxStreamingBitrateKbps,", 25);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ",dropStreaming,", 15);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, ",delayMedia,", 12);
  std::ostream::operator<<();
  sub_100073518(v9, a1);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004A1FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004A1FCC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  if (sub_1000CD414(a2 + 3728, a3))
  {
    sub_1004A2080(a2 + 3728, v7, v4);
    if (v7[208] == 1)
    {
      sub_1004A243C(a2 + 3296);
      sub_1004A2598(a2 + 4016);
    }
  }

  return nullsub_1993(a1 + 8, a2, v4);
}

uint64_t sub_1004A2080(uint64_t a1, uint64_t a2, double a3)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_1004A33C4();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v22 = v9;
      v23 = 2048;
      v24 = a3;
      v25 = 1024;
      v26 = v7;
      v27 = 2048;
      v28 = *&v37[0];
      v29 = 1024;
      v30 = 0;
      v31 = 2048;
      v32 = *&v35[0];
      v33 = 1024;
      v34 = *v37 == *v35;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>, T = CLMotionStateMediator_Type::MediatedMotionActivity, LegacyT = CLMotionStateMediator_Type::MediatedMotionActivity, ConverterT = void]", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v37;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v35;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    *(a2 + 224) = *(v11 + 28);
    v13 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v13;
    v14 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v14;
    v15 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v15;
    v16 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v16;
    v17 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v17;
    v18 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v18;
  }

  return v7 & 1;
}

void sub_1004A243C(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101893978();
  }

  v7 = *(a1 + 24);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_1004A34E8(*a1);
    v7 = *(a1 + 24);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1004A3578(a1, 0, *(a1 + 40));
  }
}

void sub_1004A2598(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101893AA8();
  }

  v7 = *(a1 + 24);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_1004A38EC(*a1);
    v7 = *(a1 + 24);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1004A397C(a1, 0, *(a1 + 40));
  }
}

uint64_t sub_1004A26F4(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1.n128_u64[0];
  result = sub_1000CCE3C(a3 + 3296, a1);
  if (result)
  {
    v6.n128_u64[0] = v4;

    return sub_1004A2754(a3 + 4016, v6);
  }

  return result;
}

uint64_t sub_1004A2754(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_1004A2BC8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 916);
  v32 = *(a1 + 192);
  v5 = v32 >= 10.0;
  v33 = *(a1 + 912);
  if (v33 >= 0.6)
  {
    v5 = 1;
  }

  v6 = v4 > 0.1 || v5;
  if (v4 < 0.2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 352);
  v10 = (*(*a1 + 8))(a1);
  if (v9 <= 120.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 28) = 0;
  v13 = *(a1 + 4584);
  v14 = v13;
  v31 = v9;
  v15 = (*(a1 + 4548) - v9) / (*(a1 + 4548) - *(a1 + 4544));
  v17 = (sub_100161F00(v15, *(a1 + 4540)) * *(a1 + 4536)) / (v14 + 1.0);
  *a2 = v17;
  v18 = 8.5;
  if (v4 <= 2.1)
  {
    v18 = sub_1004A30F0(v16, a1);
  }

  v19 = v18;
  if (!v6)
  {
    v19 = 1.6;
  }

  if (v4 < 0.2)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    v19 = v19 / 1.27;
  }

  *(a2 + 4) = v19;
  *(a2 + 12) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x500000000;
  if (v12 == 2)
  {
    if (!v6 || v4 < 0.2)
    {
      v21 = 1;
      *(a2 + 24) = 1;
      *(a2 + 32) = 1;
      v22 = 0.0;
      goto LABEL_36;
    }

LABEL_33:
    v21 = 2;
    *(a2 + 24) = 2;
    *(a2 + 32) = 2;
    v22 = 0.5;
    v23 = 4.40208912;
    goto LABEL_37;
  }

  if (v12 != 1)
  {
    v21 = 0;
    v23 = dbl_101C79490[v8 == 2];
    v22 = 1.0;
    goto LABEL_37;
  }

  if (v8 == 2)
  {
    goto LABEL_33;
  }

  v21 = 0;
  v22 = 1.0;
LABEL_36:
  v23 = 2.0999999;
LABEL_37:
  v24 = v17;
  v25 = v19;
  v26 = v22 * v19 + (1.0 - v22) * v24;
  *(a2 + 20) = v26;
  *(a2 + 28) = v26;
  v27 = v26;
  if (v23 > v26)
  {
    v26 = v23;
    *(a2 + 20) = v26;
    v21 = 3;
    *(a2 + 24) = 3;
  }

  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v28 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 24);
    *buf = 134221568;
    v35 = v25;
    v36 = 2048;
    v37 = v24;
    v38 = 2048;
    v39 = v27;
    v40 = 2048;
    v41 = v26;
    v42 = 2048;
    v43 = v29;
    v44 = 2048;
    v45 = v18;
    v46 = 1024;
    v47 = v8;
    v48 = 2048;
    v49 = v13;
    v50 = 2048;
    v51 = v22;
    v52 = 1024;
    v53 = v21;
    v54 = 2048;
    v55 = v4;
    v56 = 2048;
    v57 = v32;
    v58 = 2048;
    v59 = v31;
    v60 = 1024;
    v61 = v12;
    v62 = 2048;
    v63 = v33;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Dance,metsWR,%f,metsHR,%f,truthMets,%f,userMets,%f,endTime,%f,danceWrMets,%f,motionIntensity,%d,hrDrift,%f,wrWeight,%f,metsSource,%d,accelZ,%f,vm,%f,hr,%f,hrIntensity,%d,rotationRate,%f", buf, 0x8Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLNatalieDanceModel::computeMETS(const CLNatalieModelInput &)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }
}

float sub_1004A30F0(uint64_t a1, float *a2)
{
  v2 = 0;
  v3 = a2[228];
  v4 = a2[229];
  v5 = a2[230];
  v6 = a2[1133];
  v7 = a2[1132] * 100.0;
  *v12 = v4;
  *&v12[1] = v3;
  *&v12[2] = v3 * v5;
  *&v12[3] = v6;
  *&v12[4] = v7;
  v8 = -1.8389;
  do
  {
    v8 = v8 + (*&v12[v2] * *&dword_101C794A0[v2]);
    ++v2;
  }

  while (v2 != 5);
  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v9 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219264;
    v25 = v4;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "iz,%f,w,%f,cr,%f,weight,%f,height,%f,wr,%f", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v12[5] = 134219264;
    v13 = v4;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "float CLNatalieDanceModel::computeWRRegression(const CLNatalieModelInput &) const", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return v8;
}

void sub_1004A34CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A34E8(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_1004A3578(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_1004A3858(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_1004A3858(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_1004A38EC(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_1004A397C(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_1004A3C5C(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_1004A3C5C(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_1004A4010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(*a2 + 24))(a2) != 7)
  {
    return 0;
  }

  result = [*(v3 + 16) isEqual:sub_100008880(a2)];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101893C00();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(*a2 + 24))(a2);
      v7 = *(v3 + 16);
      v8[0] = 68289794;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2050;
      v16 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical consumeMatchingButterfly, dicType:%{public}d, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", v8, 0x2Cu);
    }

    return 1;
  }

  return result;
}

void sub_1004A4190(uint64_t a1)
{
  if (sub_10102DEF4(a1))
  {
    sub_10102E054(a1);
  }

  sub_10102E4D0(a1);
  if (sub_1007A8220(*(a1 + 24), *(a1 + 16), 2))
  {
    sub_10102E4C8(a1);
    sub_10102E558(a1);
    if ([*(a1 + 40) isAuthorizedForServiceTypeMask:4718592])
    {
      *(a1 + 200) = 1;
      v2 = sub_1004A4B10(a1);
      if (v2)
      {
        v3 = v2;
        v4 = [[NSSet alloc] initWithObjects:{&off_10254E978, 0}];
        v5 = [RTStoredVisitFetchOptions alloc];
        LOBYTE(v15) = 1;
        v6 = [v5 initWithAscending:1 confidence:+[NSNumber numberWithDouble:](NSNumber dateInterval:"numberWithDouble:" labelVisit:RTVisitConfidenceHigh) limit:v3 sources:1 redact:{0, v4, v15}];
        if (qword_1025D47A0 != -1)
        {
          sub_101893C00();
        }

        v7 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a1 + 16);
          *buf = 68289538;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2114;
          v23 = v8;
          v24 = 2050;
          v25 = a1;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#pcHistorical fetching historical visits, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
        }

        v9 = *(a1 + 216);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1004A5540;
        v16[3] = &unk_1024571C0;
        v16[4] = a1;
        [v9 fetchStoredVisitsWithOptions:v6 withReply:v16];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101893C00();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 16);
          *buf = 68289538;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2114;
          v23 = v13;
          v24 = 2050;
          v25 = a1;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip #pcHistorical nil dateInterval, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
        }

        v14 = [*(a1 + 32) silo];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1004A5530;
        v17[3] = &unk_102449A78;
        v17[4] = a1;
        [v14 async:v17];
      }
    }

    else
    {
      *(a1 + 200) = 0;
    }

    sub_10102E798(a1);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 16);
    *buf = 68289538;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v11;
    v24 = 2050;
    v25 = a1;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip #pcHistorical VisitHistory NotSupported, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
  }

  *(a1 + 200) = 0;
  sub_10102E798(a1);
}

void sub_1004A4570(uint64_t a1)
{
  *a1 = off_102457148;
  sub_10102BA5C(a1);

  *(a1 + 216) = 0;
  [*(a1 + 208) invalidate];

  *(a1 + 208) = 0;
  *(a1 + 184) = 0;

  *(a1 + 192) = 0;

  sub_10102B660(a1);
}

void sub_1004A463C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 44 && !memcmp(*v4, "kCLConnectionMessageDestroyUponDisconnection", 0x2CuLL))
  {
    *(a1 + 48) = 1;
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101893C14();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 16);
      v7 = CLConnectionMessage::name(*a2);
      v8 = *(v7 + 23) >= 0 ? v7 : *v7;
      v13 = 68289794;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v6;
      v19 = 2050;
      v20 = a1;
      v21 = 2082;
      v22 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #pcHistorical received unhandled message, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, message:%{public, location:escape_only}s}", &v13, 0x30u);
      if (qword_1025D4790 != -1)
      {
        sub_101893BD8();
      }
    }

    v9 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v10 = *(a1 + 16);
      v11 = CLConnectionMessage::name(*a2);
      if (*(v11 + 23) >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *v11;
      }

      v13 = 68289794;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v10;
      v19 = 2050;
      v20 = a1;
      v21 = 2082;
      v22 = v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning #pcHistorical received unhandled message", "{msg%{public}.0s:#Warning #pcHistorical received unhandled message, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, message:%{public, location:escape_only}s}", &v13, 0x30u);
    }
  }
}

void sub_1004A4858(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 16);
    [*(a1 + 40) registrationResult];
    v4 = [*(a1 + 40) registrationResult];
    v5[0] = 68289794;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2114;
    v9 = v3;
    v10 = 2050;
    v11 = v4;
    v12 = 2050;
    v13 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#pcHistorical updateAuthContext change, ClientKeyPath:%{public, location:escape_only}@, RegistrationResult:%{public, location:CLClientRegistrationResult}lld, this:%{public}p}", v5, 0x30u);
  }

  sub_1004A4190(a1);
}

uint64_t sub_1004A4988(uint64_t a1)
{
  if (*(a1 + 200))
  {
    return 0;
  }

  v3 = [*(a1 + 40) diagnosticMask];
  if (sub_10102E960(a1))
  {
    v1 = v3 & 3 | 0x10;
  }

  else
  {
    v1 = v3 & 3;
  }

  if (!sub_1007A8220(*(a1 + 24), *(a1 + 16), 2))
  {
    v1 |= 0x20000uLL;
  }

  v4 = v1 | 0x1000;
  if ([*(a1 + 40) isAuthorizedForServiceTypeMask:16])
  {
    v1 |= 0x1000uLL;
  }

  if (([*(a1 + 40) isAuthorizedForServiceTypeMask:0x100000] & 1) == 0 && objc_msgSend(*(a1 + 40), "transientAwareRegistrationResult") == 4)
  {
    v1 = v4;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 16);
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v6;
    v13 = 2050;
    v14 = a1;
    v15 = 1026;
    v16 = v1;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#pcHistorical NonFunctional diagnosticMask, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, DiagnosticMask:%{public}d}", v8, 0x2Cu);
  }

  return v1;
}

id sub_1004A4B10(uint64_t a1)
{
  sub_1007A92B4(*(a1 + 24), *(a1 + 16));
  v3 = v2;
  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 184);
    v7 = *(a1 + 192);
    v18 = 68290306;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v5;
    v24 = 2050;
    v25 = a1;
    v26 = 2114;
    v27 = v6;
    v28 = 2114;
    v29 = v7;
    v30 = 2050;
    v31 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical compute dateInterval, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, fStartDate:%{public, location:escape_only}@, fEndDate:%{public, location:escape_only}@, VisitHistoryAccessAllowTime:%{public}f}", &v18, 0x44u);
  }

  if (v3 == 0.0)
  {
    return 0;
  }

  [*(a1 + 192) timeIntervalSinceReferenceDate];
  v9 = v8;
  [*(a1 + 184) timeIntervalSinceReferenceDate];
  if (v9 <= v10)
  {
    return 0;
  }

  [*(a1 + 192) timeIntervalSinceReferenceDate];
  if (v11 <= v3)
  {
    return 0;
  }

  v12 = *(a1 + 184);
  [v12 timeIntervalSinceReferenceDate];
  if (v13 < v3)
  {
    v12 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v3];
  }

  v14 = [[NSDateInterval alloc] initWithStartDate:v12 endDate:*(a1 + 192)];
  if (qword_1025D47A0 != -1)
  {
    sub_101893C28();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 16);
    v18 = 68289794;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v16;
    v24 = 2050;
    v25 = a1;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical compute dateInterval, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, clmapedStartDate:%{public, location:escape_only}@}", &v18, 0x30u);
  }

  return v14;
}

void sub_1004A4D5C(uint64_t a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    *buf = 68289794;
    *&buf[4] = 0;
    v41[0] = 2082;
    *&v41[1] = "";
    v42 = 2114;
    v43 = v4;
    v44 = 1026;
    *v45 = [a2 count];
    *&v45[4] = 2050;
    *&v45[6] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical processHistoricalVisits, ClientKeyPath:%{public, location:escape_only}@, historicalVisits:%{public}d, this:%{public}p}", buf, 0x2Cu);
  }

  context = objc_autoreleasePoolPush();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v5)
  {
LABEL_34:
    objc_autoreleasePoolPop(context);
    sub_1004A58C4();
  }

  v6 = *v37;
LABEL_7:
  v7 = 0;
  while (1)
  {
    if (*v37 != v6)
    {
      objc_enumerationMutation(a2);
    }

    v8 = *(*(&v36 + 1) + 8 * v7);
    [objc_msgSend(v8 "placeInference")];
    if (v9 >= 0.6)
    {
      v15 = [objc_msgSend(v8 "placeInference")];
      [objc_msgSend(v8 "placeInference")];
      v17 = v16;
      if ([objc_msgSend(v8 "placeInference")])
      {
        [objc_msgSend(v8 "placeInference")];
        if (v18 >= 0.85)
        {
          v15 = [objc_msgSend(v8 "placeInference")];
          [objc_msgSend(v8 "placeInference")];
          v17 = v19;
          if (qword_1025D47A0 != -1)
          {
            sub_101893C28();
          }

          v20 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 16);
            v22 = [objc_msgSend(objc_msgSend(objc_msgSend(v8 "placeInference")];
            v23 = [objc_msgSend(objc_msgSend(objc_msgSend(v8 "placeInference")];
            *buf = 68290051;
            *&buf[4] = 0;
            v41[0] = 2082;
            *&v41[1] = "";
            v42 = 2114;
            v43 = v21;
            v44 = 2050;
            *v45 = a1;
            *&v45[8] = 2085;
            *&v45[10] = v22;
            v46 = 2085;
            v47 = v23;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical selecting finerGranularityMapItem, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, mapItem:%{sensitive, location:escape_only}s, finerGranularityMapItem:%{sensitive, location:escape_only}s}", buf, 0x3Au);
          }
        }
      }

      if ([v15 validMUID])
      {
        v24 = +[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClass:fromData:error:", objc_opt_class(), [v15 geoMapItemIdentifier], 0);
        v35 = +[NSMutableDictionary dictionary];
        v25 = [v24 mapsIdentifierString];
        [v35 setObject:v25 forKeyedSubscript:@"kCLConnectionMessageMapItemIdKey"];
        [v35 setObject:objc_msgSend(v15 forKeyedSubscript:{"geoMapItemHandle"), @"kCLConnectionMessageMapItemHandleKey"}];
        [v35 setObject:objc_msgSend(v15 forKeyedSubscript:{"name"), @"kCLConnectionMessageMapItemWellKnownNameKey"}];
        [v35 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v15 forKeyedSubscript:{"address"), "geoAddressObject"), "fullAddressWithMultiline:", 0), @"kCLConnectionMessageMapItemAddressKey"}];
        [objc_msgSend(v8 "location")];
        [v35 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"kCLConnectionMessageLatitudeKey"}];
        [objc_msgSend(v8 "location")];
        [v35 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"kCLConnectionMessageLongitudeKey"}];
        [v35 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", (v17 < 0.85) << 14), @"kCLConnectionMessageDiagnosticsKey"}];
        [v35 setObject:objc_msgSend(v8 forKeyedSubscript:{"identifier"), @"kCLConnectionMessageVisitHistoryUUIDKey"}];
        [v35 setObject:objc_msgSend(v8 forKeyedSubscript:{"entry"), @"kCLConnectionMessageVisitHistoryStartDateKey"}];
        if (qword_1025D47A0 != -1)
        {
          sub_101893C28();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 16);
          v28 = [objc_msgSend(v8 "description")];
          v29 = [v25 UTF8String];
          *buf = 68290051;
          *&buf[4] = 0;
          v41[0] = 2082;
          *&v41[1] = "";
          v42 = 2114;
          v43 = v27;
          v44 = 2050;
          *v45 = a1;
          *&v45[8] = 2085;
          *&v45[10] = v28;
          v46 = 2082;
          v47 = v29;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical sending  visit, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, visit:%{sensitive, location:escape_only}s, geoMapItemId:%{public, location:escape_only}s}", buf, 0x3Au);
        }

        sub_1004A56F4();
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101893C28();
      }

      v30 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v31 = *(a1 + 16);
      v32 = [objc_msgSend(v15 "description")];
      *buf = 68289795;
      *&buf[4] = 0;
      v41[0] = 2082;
      *&v41[1] = "";
      v42 = 2114;
      v43 = v31;
      v44 = 2050;
      *v45 = a1;
      *&v45[8] = 2085;
      *&v45[10] = v32;
      v13 = v30;
      v14 = "{msg%{public}.0s:#pcHistorical dropping invalid MUID, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, mapItem:%{sensitive, location:escape_only}s}";
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101893C28();
      }

      v10 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v11 = *(a1 + 16);
      v12 = [objc_msgSend(v8 "description")];
      *buf = 68289794;
      *&buf[4] = 0;
      v41[0] = 2082;
      *&v41[1] = "";
      v42 = 2114;
      v43 = v11;
      v44 = 2050;
      *v45 = a1;
      *&v45[8] = 2082;
      *&v45[10] = v12;
      v13 = v10;
      v14 = "{msg%{public}.0s:#pcHistorical dropping confidence < kPOIConfidenceLow, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, visit:%{public, location:escape_only}s}";
    }

    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x30u);
LABEL_32:
    if (v5 == ++v7)
    {
      v5 = [a2 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
    }
  }
}

void sub_1004A54F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a19)
  {
    sub_100008080(a19);
  }

  if (a34)
  {
    sub_100008080(a34);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A5540(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_101893C00();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v5 + 16);
    v8[0] = 68290050;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v7;
    v13 = 2050;
    v14 = v5;
    v15 = 2082;
    v16 = [objc_msgSend(a3 "description")];
    v17 = 1026;
    v18 = [a2 count];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical historical visits replay-handler, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, Error:%{public, location:escape_only}s, historicalVisits:%{public}d}", v8, 0x36u);
  }

  sub_1004A4D5C(v5, a2);
}

int64x2_t sub_1004A5678@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 27) = 0;
  return result;
}

void *sub_1004A5768(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1004A57C4((a1 + 3), a2);
  return a1;
}

uint64_t sub_1004A57C4(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_1004A58A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004A5930(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1004A598C((a1 + 3), a2);
  return a1;
}

uint64_t sub_1004A598C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_1004A5A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A5E7C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        break;
      }

      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v39 = 0;
          v26 = [a2 position] + 4;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 20;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_44;
          }

          v39 = 0;
          v13 = [a2 position] + 4;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 24;
        }

LABEL_77:
        *(a1 + v37) = v36;
        goto LABEL_78;
      }

      if (v12 == 6)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v10 = v29++ >= 9;
          if (v10)
          {
            v33 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v30;
        }

LABEL_64:
        *(a1 + 8) = v33;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_44:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v39 & 0x7F) << v17;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v10 = v18++ >= 9;
          if (v10)
          {
            LOBYTE(v22) = 0;
            goto LABEL_66;
          }
        }

        v22 = (v19 != 0) & ~[a2 hasError];
LABEL_66:
        *(a1 + 32) = v22;
      }

LABEL_78:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 1:
        v39 = 0;
        v23 = [a2 position] + 4;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v36 = v39;
        v37 = 28;
        break;
      case 2:
        v39 = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v36 = v39;
        v37 = 12;
        break;
      case 3:
        v39 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v36 = v39;
        v37 = 16;
        break;
      default:
        goto LABEL_44;
    }

    goto LABEL_77;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1004A6DC8(uint64_t a1)
{
  v2 = sub_1000206B4();
  sub_100021668(v2, &__str);
  if (*(a1 + 79) < 0)
  {
    sub_100007244(__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *__p = *(a1 + 56);
    v9 = *(a1 + 72);
  }

  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(&__str, v3, v4);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 32), &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v6 = sub_100021690(p_str);
  if (!v6)
  {
    *(a1 + 80) = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1004A6EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A6EDC(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101893C50();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "HRSE,clear AVL status cache", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101893C64();
  }

  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
}

uint64_t sub_1004A6F7C(uint64_t a1, double a2, long double a3)
{
  if ((sub_1004A7D68(a1) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101893D4C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 80);
      *buf = 67240192;
      *v60 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#Warning,HRSE,isTileAvailableBasedOnAvlFile,availability file is not valid,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101893D60(a1);
    }

    return 0;
  }

  v74 = 0;
  v73 = 0;
  v75 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  v53 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_101893D4C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v7 = *v7;
    }

    *buf = 136446210;
    *v60 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "HRSE,isTileAvailableBasedOnAvlFile,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v45 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v45 = *v45;
    }

    v54 = 136446210;
    *v55 = v45;
    v46 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  v8 = (a1 + 32);
  v9 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v9 = *v8;
  }

  v10 = fopen(v9, "rb");
  v11 = v10;
  if (!v10)
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v19 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v19 = *v8;
      }

      v20 = *(a1 + 80);
      v21 = *__error();
      *buf = 136446722;
      *v60 = v19;
      *&v60[8] = 1026;
      v61 = v20;
      v62 = 1026;
      v63 = v21;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#Error,HRSE,isTileAvailableBasedOnAvlFile,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101893E7C();
      }

      if (*(a1 + 55) < 0)
      {
        v8 = *v8;
      }

      v47 = *(a1 + 80);
      v48 = *__error();
      v54 = 136446722;
      *v55 = v8;
      *&v55[8] = 1026;
      v56 = v47;
      v57 = 1026;
      v58 = v48;
      v49 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    return 0;
  }

  v52 = 0;
  if ((sub_1004A8884(v10, v64, &v65, &v53, &v52) & 1) == 0)
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 80);
      *buf = 67240192;
      *v60 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "#Warning,HRSE,isTileAvailableBasedOnAvlFile,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    sub_101893EA4(buf);
    v50 = *(a1 + 80);
    v54 = 67240192;
    *v55 = v50;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v15);
    goto LABEL_112;
  }

  v12 = v72[24];
  v13 = v72[24];
  if (v13 > a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      *v60 = a2;
      *&v60[8] = 1029;
      v61 = v12;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "HRSE,isTileAvailableBasedOnAvlFile,input latitude,%{sensitive}.3lf, below minimum acceptable latitude,%{sensitive}d", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  v12 = v72[25];
  if (v72[25] > a2)
  {
    sub_1001D08A4(a3);
    v27 = vcvtmd_s64_f64(v26 * 20.0) + 7200 * (vcvtmd_s64_f64((a2 + 90.0) * 20.0) - ((v13 + 90.0) * 20.0));
    if (v27 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 7;
    }

    __ptr = 0;
    if (v28 >> 3 >= v75)
    {
      *(a1 + 80) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_101893E7C();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 80);
        *buf = 67240448;
        *v60 = v28 >> 3;
        *&v60[4] = 1026;
        *&v60[6] = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#Warning,HRSE,isTileAvailableBasedOnAvlFile,avl byte index,%{public}d,is larger than the data available in the availabilty file,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_101893EA4(buf);
      v33 = *(a1 + 80);
      v54 = 67240448;
      *v55 = v28 >> 3;
      *&v55[4] = 1026;
      *&v55[6] = v33;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v15);
      goto LABEL_112;
    }

    fseek(v11, v28 >> 3, 1);
    if (fread(&__ptr, 1uLL, 1uLL, v11) != 1)
    {
      *(a1 + 80) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_101893E7C();
      }

      v34 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 80);
        *buf = 67240192;
        *v60 = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "#Warning,HRSE,isTileAvailableBasedOnAvlFile,unable to get data byte,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_101893EA4(buf);
      v36 = *(a1 + 80);
      v54 = 67240192;
      *v55 = v36;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v15);
      goto LABEL_112;
    }

    v29 = v27 - (v28 & 0xFFFFFFF8);
    fclose(v11);
    if (v29 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v22 = (__ptr >> 3) & 1;
        }

        else
        {
          v22 = (__ptr >> 2) & 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v22 = (__ptr >> 1) & 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v22 = __ptr & 1;
        goto LABEL_85;
      }
    }

    else
    {
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v22 = (__ptr >> 5) & 1;
        }

        else
        {
          v22 = (__ptr >> 4) & 1;
        }

        goto LABEL_85;
      }

      if (!v29)
      {
        v22 = (__ptr & 0x80u) != 0;
        goto LABEL_85;
      }

      if (v29 == 1)
      {
        v22 = (__ptr >> 6) & 1;
LABEL_85:
        if (qword_1025D4650 != -1)
        {
          sub_101893E7C();
        }

        v37 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 80);
          *buf = 67240448;
          *v60 = v22;
          *&v60[4] = 1026;
          *&v60[6] = v38;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "HRSE,isTileAvailableBasedOnAvlFile,isTileAvailable,%{public}d,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101893EA4(buf);
          v39 = *(a1 + 80);
          v54 = 67240448;
          *v55 = v22;
          *&v55[4] = 1026;
          *&v55[6] = v39;
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        goto LABEL_41;
      }
    }

    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v42 = *(a1 + 80);
      *buf = 67240192;
      *v60 = v42;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "HRSE,isTileAvailableBasedOnAvlFile,unexpected case,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101893EA4(buf);
      v43 = *(a1 + 80);
      v54 = 67240192;
      *v55 = v43;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    goto LABEL_40;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101893E7C();
  }

  v30 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134545921;
    *v60 = a2;
    *&v60[8] = 1029;
    v61 = v12;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "HRSE,isTileAvailableBasedOnAvlFile,input latitude,%{sensitive}.3lf, beyond maximum acceptable latitude,%{sensitive}d", buf, 0x12u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_39;
  }

LABEL_19:
  sub_101893EA4(buf);
  v54 = 134545921;
  *v55 = a2;
  *&v55[8] = 1029;
  v56 = v12;
  v15 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v15);
LABEL_112:
  if (v15 != buf)
  {
    free(v15);
  }

LABEL_39:
  fclose(v11);
LABEL_40:
  v22 = 0;
LABEL_41:
  if (SBYTE7(v66) < 0)
  {
    operator delete(v65);
  }

  return v22;
}

void sub_1004A7D0C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004A7D68(uint64_t a1)
{
  v66 = 0uLL;
  v67 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v43 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_101893D4C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 80);
    *buf = 67240192;
    LODWORD(v52) = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "HRSE,checkAvlFileValidityAndSetDownloadFlag,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101893EA4(buf);
    v31 = *(a1 + 80);
    *v46 = 67240192;
    *&v46[4] = v31;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  if (!sub_1004A6DC8(a1))
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 80);
      *buf = 67240192;
      LODWORD(v52) = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#Warning,HRSE,checkAvlFileValidityAndSetDownloadFlag,availability file does not exist,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101893EA4(buf);
    v17 = *(a1 + 80);
    *v46 = 67240192;
    *&v46[4] = v17;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v18);
    if (v18 == buf)
    {
      return 0;
    }

LABEL_75:
    free(v18);
    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101893E7C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    *buf = 136446210;
    v52 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "HRSE,checkAvlFileValidityAndSetDownloadFlag,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v33 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v33 = *v33;
    }

    *v46 = 136446210;
    *&v46[4] = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  v6 = (a1 + 32);
  v7 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v7 = *v6;
  }

  v8 = fopen(v7, "rb");
  v9 = v8;
  if (!v8)
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v20 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v20 = *v6;
      }

      v21 = *(a1 + 80);
      v22 = *__error();
      *buf = 136446722;
      v52 = v20;
      v53 = 1026;
      v54 = v21;
      v55 = 1026;
      v56 = v22;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error,HRSE,checkAvlFileValidityAndSetDownloadFlag,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    v35 = *(a1 + 80);
    v36 = *__error();
    *v46 = 136446722;
    *&v46[4] = v6;
    v47 = 1026;
    v48 = v35;
    v49 = 1026;
    v50 = v36;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v18);
    if (v18 == buf)
    {
      return 0;
    }

    goto LABEL_75;
  }

  *v46 = 0;
  if ((sub_1004A8884(v8, v57, &v58, &v43, v46) & 1) == 0)
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 80);
      *buf = 67240192;
      LODWORD(v52) = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,HRSE,checkAvlFileValidityAndSetDownloadFlag,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101893EA4(buf);
      v37 = *(a1 + 80);
      v44 = 67240192;
      v45 = v37;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    fclose(v9);
    goto LABEL_52;
  }

  fclose(v9);
  if (v65[22] != 1)
  {
    *(a1 + 80) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 80);
      *buf = 67240192;
      LODWORD(v52) = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "#Warning,HRSE,checkAvlFileValidityAndSetDownloadFlag,availability file version does not match expected,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_52;
    }

    goto LABEL_78;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *(&v66 + 4);
  v12 = HIDWORD(v66);
  if (Current <= v11 + v12 + (random() % 86400))
  {
    *(a1 + 80) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_101893E7C();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 80);
      *buf = 67240192;
      LODWORD(v52) = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "HRSE,checkAvlFileValidityAndSetDownloadFlag,reached end of function,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101893EA4(buf);
      v41 = *(a1 + 80);
      v44 = 67240192;
      v45 = v41;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v23 = 1;
    goto LABEL_53;
  }

  *(a1 + 80) = 1;
  if (qword_1025D4650 != -1)
  {
    sub_101893E7C();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 80);
    *buf = 67240192;
    LODWORD(v52) = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#Warning,HRSE,checkAvlFileValidityAndSetDownloadFlag,availability file has expired,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_78:
    sub_101893EA4(buf);
    v39 = *(a1 + 80);
    v44 = 67240192;
    v45 = v39;
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLHrseTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

LABEL_52:
  v23 = 0;
LABEL_53:
  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

  return v23;
}

void sub_1004A8834(_Unwind_Exception *exception_object)
{
  if (*(v1 - 233) < 0)
  {
    operator delete(*(v1 - 256));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A8884(FILE *a1, _OWORD *a2, uint64_t a3, int *a4, void *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (!feof(a1))
      {
        v14 = 0;
        v15 = (a3 + 24);
        while (1)
        {
          LOBYTE(__ptr[0]) = 0;
          if (fread(__ptr, 1uLL, 1uLL, a1) != 1)
          {
            return 0;
          }

          v16 = ftell(a1);
          if (LOBYTE(__ptr[0]) == 67)
          {
            v17 = v16;
            LOBYTE(v107) = 67;
            if (fread(&v107 + 1, 1uLL, 8uLL, a1) != 8)
            {
              return 0;
            }

            *(a3 + 32) = v108;
            *v15 = v107;
            if (*(a3 + 24) == 0x5641455352484C43 && *(a3 + 32) == 76)
            {
              v19 = 0;
              *a4 = 9;
              do
              {
                *(a2 + v19) = *(v15 + v19);
                ++v19;
                v20 = *a4;
              }

              while (*a4 > v19);
              v21 = (110 - v20);
              if (fread(a2 + v20, 1uLL, v21, a1) == v21)
              {
                v22 = *a2;
                v23 = a2[2];
                *(a3 + 40) = a2[1];
                *(a3 + 56) = v23;
                *v15 = v22;
                v24 = a2[3];
                v25 = a2[4];
                v26 = a2[5];
                *(a3 + 118) = *(a2 + 94);
                *(a3 + 88) = v25;
                *(a3 + 104) = v26;
                *(a3 + 72) = v24;
                v27 = *a4 + v21;
                *a4 = v27;
                if (*(a3 + 24) == 0x5641455352484C43 && *(a3 + 32) == 76)
                {
                  if (fread(a2 + v27, 1uLL, 1uLL, a1) == 1)
                  {
                    v28 = *a4;
                    *(a3 + 134) = *(a2 + *a4);
                    *a4 = ++v28;
                    if (fread(a2 + v28, 1uLL, 1uLL, a1) == 1)
                    {
                      v29 = *a4;
                      *(a3 + 135) = *(a2 + *a4);
                      *a4 = ++v29;
                      if (fread(a2 + v29, 1uLL, 1uLL, a1) == 1)
                      {
                        v30 = *a4;
                        *(a3 + 136) = *(a2 + *a4);
                        *a4 = ++v30;
                        if (fread(a2 + v30, 1uLL, 1uLL, a1) == 1)
                        {
                          v31 = *a4;
                          *(a3 + 137) = *(a2 + *a4);
                          *a4 = ++v31;
                          if (fread(a2 + v31, 1uLL, 4uLL, a1) == 4)
                          {
                            v32 = *a4;
                            v33 = COERCE_FLOAT(bswap32(*(a2 + *a4)));
                            *(a3 + 140) = v33;
                            v34 = v32 + 4;
                            *a4 = v34;
                            if (fabsf(v33 + -0.05) <= 0.0001)
                            {
                              if (fread(a2 + v34, 1uLL, 8uLL, a1) == 8)
                              {
                                v46 = *a4;
                                *(a3 + 144) = bswap64(*(a2 + *a4));
                                v46 += 8;
                                *a4 = v46;
                                if (fread(a2 + v46, 1uLL, 4uLL, a1) == 4)
                                {
                                  v47 = *a4;
                                  *(a3 + 152) = bswap32(*(a2 + *a4));
                                  v47 += 4;
                                  *a4 = v47;
                                  if (fread(a2 + v47, 1uLL, 4uLL, a1) == 4)
                                  {
                                    v48 = *a4;
                                    *(a3 + 156) = bswap32(*(a2 + *a4));
                                    v48 += 4;
                                    *a4 = v48;
                                    if (fread(a2 + v48, 1uLL, 4uLL, a1) == 4)
                                    {
                                      *a5 = *a4;
                                      v49 = *a4;
                                      *(a3 + 160) = bswap32(*(a2 + *a4));
                                      *a4 = v49 + 4;
                                      if (qword_1025D4650 != -1)
                                      {
                                        sub_101893D4C();
                                      }

                                      v50 = qword_1025D4658;
                                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                                      {
                                        v51 = *(a3 + 134);
                                        v52 = *(a3 + 135);
                                        v53 = *(a3 + 136);
                                        v54 = *(a3 + 137);
                                        v55 = *(a3 + 140);
                                        v56 = *(a3 + 144);
                                        v57 = *(a3 + 152);
                                        v58 = *(a3 + 156);
                                        v59 = *(a3 + 160);
                                        *buf = 67176705;
                                        *v92 = v51;
                                        *&v92[4] = 1025;
                                        *&v92[6] = v52;
                                        v93 = 1029;
                                        v94 = v53;
                                        v95 = 1029;
                                        v96 = v54;
                                        v97 = 2049;
                                        v98 = v55;
                                        v99 = 2049;
                                        v100 = v56;
                                        v101 = 1025;
                                        v102 = v57;
                                        v103 = 1025;
                                        v104 = v58;
                                        v105 = 1025;
                                        v106 = v59;
                                        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "HRSE,readAvlHelper,vers,%{private}d,headerLen,%{private}d,minLat,%{sensitive}d,maxLat,%{sensitive}d,binsize,%{private}.7f,timestamp,%{private}.1f,expirationAge,%{private}d,dataSizeBytes,%{private}d,crc,%{private}d", buf, 0x40u);
                                      }

                                      if (sub_10000A100(121, 2))
                                      {
                                        bzero(buf, 0x65CuLL);
                                        if (qword_1025D4650 != -1)
                                        {
                                          sub_101893E7C();
                                        }

                                        v64 = *(a3 + 134);
                                        v65 = *(a3 + 135);
                                        v66 = *(a3 + 136);
                                        v67 = *(a3 + 137);
                                        v68 = *(a3 + 140);
                                        v69 = *(a3 + 144);
                                        v70 = *(a3 + 152);
                                        v71 = *(a3 + 156);
                                        v72 = *(a3 + 160);
                                        __ptr[0] = 67176705;
                                        __ptr[1] = v64;
                                        v75 = 1025;
                                        v76 = v65;
                                        v77 = 1029;
                                        v78 = v66;
                                        v79 = 1029;
                                        v80 = v67;
                                        v81 = 2049;
                                        v82 = v68;
                                        v83 = 2049;
                                        v84 = v69;
                                        v85 = 1025;
                                        v86 = v70;
                                        v87 = 1025;
                                        v88 = v71;
                                        v89 = 1025;
                                        v90 = v72;
                                        v73 = _os_log_send_and_compose_impl();
                                        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLHrseTileAvailability::readAvlHelper(FILE *, unsigned char *, CLHRSETileAvailability &, size_t &, size_t &)", "%s\n", v73);
                                        if (v73 != buf)
                                        {
                                          free(v73);
                                        }
                                      }

                                      return 1;
                                    }

                                    else
                                    {
                                      if (qword_1025D4650 != -1)
                                      {
                                        sub_101893D4C();
                                      }

                                      v63 = qword_1025D4658;
                                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                      {
                                        *buf = 0;
                                        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - crc", buf, 2u);
                                      }

                                      result = sub_10000A100(121, 0);
                                      if (result)
                                      {
                                        sub_101894938();
                                        return 0;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1025D4650 != -1)
                                    {
                                      sub_101893D4C();
                                    }

                                    v62 = qword_1025D4658;
                                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 0;
                                      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - data size", buf, 2u);
                                    }

                                    result = sub_10000A100(121, 0);
                                    if (result)
                                    {
                                      sub_10189485C();
                                      return 0;
                                    }
                                  }
                                }

                                else
                                {
                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_101893D4C();
                                  }

                                  v61 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - expiration age", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 0);
                                  if (result)
                                  {
                                    sub_101894780();
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                if (qword_1025D4650 != -1)
                                {
                                  sub_101893D4C();
                                }

                                v60 = qword_1025D4658;
                                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 0;
                                  _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - timestamp", buf, 2u);
                                }

                                result = sub_10000A100(121, 0);
                                if (result)
                                {
                                  sub_1018946A4();
                                  return 0;
                                }
                              }
                            }

                            else
                            {
                              v35 = (a3 + 140);
                              if (qword_1025D4650 != -1)
                              {
                                sub_101893D4C();
                              }

                              v36 = qword_1025D4658;
                              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                              {
                                v37 = *v35;
                                *buf = 134349056;
                                *v92 = v37;
                                _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,coarse avl file is not 0.05 deg by 0.05 deg,spacing unexpected,%{public}.1f,re-download needed", buf, 0xCu);
                              }

                              result = sub_10000A100(121, 0);
                              if (result)
                              {
                                sub_101894A14(v35);
                                return 0;
                              }
                            }
                          }

                          else
                          {
                            if (qword_1025D4650 != -1)
                            {
                              sub_101893D4C();
                            }

                            v45 = qword_1025D4658;
                            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - binsize", buf, 2u);
                            }

                            result = sub_10000A100(121, 0);
                            if (result)
                            {
                              sub_1018945C8();
                              return 0;
                            }
                          }
                        }

                        else
                        {
                          if (qword_1025D4650 != -1)
                          {
                            sub_101893D4C();
                          }

                          v44 = qword_1025D4658;
                          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - maxLat", buf, 2u);
                          }

                          result = sub_10000A100(121, 0);
                          if (result)
                          {
                            sub_1018944EC();
                            return 0;
                          }
                        }
                      }

                      else
                      {
                        if (qword_1025D4650 != -1)
                        {
                          sub_101893D4C();
                        }

                        v43 = qword_1025D4658;
                        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - minLat", buf, 2u);
                        }

                        result = sub_10000A100(121, 0);
                        if (result)
                        {
                          sub_101894410();
                          return 0;
                        }
                      }
                    }

                    else
                    {
                      if (qword_1025D4650 != -1)
                      {
                        sub_101893D4C();
                      }

                      v42 = qword_1025D4658;
                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - headerLength", buf, 2u);
                      }

                      result = sub_10000A100(121, 0);
                      if (result)
                      {
                        sub_101894334();
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4650 != -1)
                    {
                      sub_101893D4C();
                    }

                    v41 = qword_1025D4658;
                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - version", buf, 2u);
                    }

                    result = sub_10000A100(121, 0);
                    if (result)
                    {
                      sub_101894258();
                      return 0;
                    }
                  }
                }

                else
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_101893D4C();
                  }

                  v40 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - invalid header string", buf, 2u);
                  }

                  result = sub_10000A100(121, 0);
                  if (result)
                  {
                    sub_10189417C();
                    return 0;
                  }
                }
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101893D4C();
                }

                v39 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - header string", buf, 2u);
                }

                result = sub_10000A100(121, 0);
                if (result)
                {
                  sub_1018940A0();
                  return 0;
                }
              }

              return result;
            }

            if (fseek(a1, v17, 0))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101893D4C();
              }

              v38 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,fseek returned non-zero", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101893EE8();
              }

              return 0;
            }
          }

          if (!feof(a1) && v14++ < 0x1FF)
          {
            continue;
          }

          break;
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_101893D4C();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,did not synchronize to tile header_string", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101893FC4();
        return 0;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101893D4C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,null buffer", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101894B24();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101893D4C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101894C00();
      return 0;
    }
  }

  return result;
}

void *sub_1004A95C0(uint64_t a1)
{
  result = sub_1001FB750(a1);
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t sub_1004A964C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = a3;
  sub_100F44CC0(a1 + 8, a2);
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v12 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v10 = _Q0;
  v11 = _Q0;
  sub_1004ABBB4(a1 + 208, 0xCuLL, &v11);
  *(a1 + 256) = v10;
  *(a1 + 272) = v10;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  sub_1004A9728(a1);
  return a1;
}

void sub_1004A96EC(_Unwind_Exception *a1)
{
  sub_1000F8B58(v3 + 12);
  sub_1003FFD68(v4);
  sub_100102BC8(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

double sub_1004A9728(uint64_t a1)
{
  v2 = ([+[NSTimeZone secondsFromGMT]% 3600 localTimeZone];
  if (v2 != *(a1 + 296))
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 296);
      v6[0] = 67109376;
      v6[1] = v5;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,time zone change,clearing everything,old,%d,new,%d", v6, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101894CF0((a1 + 296), v2);
    }

    *(a1 + 296) = v2;
    *&result = sub_1004A986C(a1).n128_u64[0];
  }

  return result;
}

__n128 sub_1004A986C(uint64_t a1)
{
  sub_1008AFA98((a1 + 8));
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  *(a1 + 152) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 128);
      v2 = (*(a1 + 120) + 8);
      *(a1 + 120) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 256;
  }

  *(a1 + 144) = v6;
LABEL_8:
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  *(a1 + 200) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 176);
      v7 = (*(a1 + 168) + 8);
      *(a1 + 168) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = 102;
LABEL_14:
    *(a1 + 192) = v11;
  }

  v20 = 0;
  v22 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v18 = _Q0;
  memset(v19, 0, sizeof(v19));
  v21 = _Q0;
  sub_1004ABBB4(v19, 0xCuLL, &v21);
  v20 = 0xBFF0000000000000;
  sub_1004AC150((a1 + 208), v19);
  *(a1 + 256) = v20;
  sub_1000F8B58(v19);
  *(a1 + 264) = 0xBFF0000000000000;
  result = v18;
  *(a1 + 272) = v18;
  *(a1 + 288) = 0xBFF0000000000000;
  return result;
}

void sub_1004A99B4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 280) = *a2;
  if (*(a1 + 288) > *(a1 + 256))
  {
    sub_1004A9CA4(a1);
    v6 = *(a1 + 168);
    if (*(a1 + 176) == v6)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(a1 + 200) + *(a1 + 192);
      v8 = *(v6 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    }

    if (v8 == v5 || v4 < *(v5 + 8))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v9 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "StandPlus,ignoring calorimetry input", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101894F10();
      }

      sub_1004A9DF0(a1);
      sub_1004AA1F8(a1);
      return;
    }

    *(a1 + 288) = 0xBFF0000000000000;
  }

  sub_100F44CF0(a1 + 8, a2);
  v25.n128_f64[0] = v10;
  v25.n128_u64[1] = v11;
  if (v10 != *(a1 + 264) && (v10 != -1.0 || *(a1 + 152) != 0))
  {
    sub_1004AA308(a1, &v25);
  }

  sub_1004A9DF0(a1);
  sub_1004AA1F8(a1);
  if (*(a1 + 200) >= 8uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v13 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,sedentaryTimer", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101894E24();
    }

    v14 = *(a1 + 192);
    v15 = *(a1 + 168);
    v16 = (v15 + 8 * (v14 / 0x66));
    if (*(a1 + 176) == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + 40 * (v14 % 0x66));
    }

    v18 = *(a1 + 200);
    *buf = v15 + 8 * (v14 / 0x66);
    v27 = v17;
    sub_1000C5804(buf, v18);
    v19 = &v27[-**buf];
    v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 >> 3);
    if (v19 < 321)
    {
      v24 = 109 - v20;
      v22 = (*buf - 8 * (v24 / 0x66));
      v23 = (*v22 + 40 * (102 * (v24 / 0x66) - v24) + 4040);
    }

    else
    {
      v21 = v20 - 8;
      v22 = (*buf + 8 * (v21 / 0x66));
      v23 = (*v22 + 40 * (v21 % 0x66));
    }

    sub_1004AA4E8((a1 + 160), v16, v17, v22, v23);
  }
}

void *sub_1004A9CA4(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = v1 + *(a1 + 200);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = (v3 + 8 * (v2 / 0x66));
  v6 = *(a1 + 296);
  v7 = floor(*(a1 + 280) + v6) - (vcvtmd_s64_f64(*(a1 + 280) + v6) % 3600);
  v8 = (v3 + 8 * (v1 / 0x66));
  if (v4 == v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 40 * (v1 % 0x66);
  }

  v10 = v7 - v6;
  v11 = v2 % 0x66;
  v12 = 1.79769313e308;
  result = v5;
LABEL_5:
  v14 = v9;
  while (1)
  {
    v15 = v4 == v3 ? 0 : *v5 + 40 * v11;
    if (v14 == v15)
    {
      return result;
    }

    if (*(v14 + 16) == 2)
    {
      v16 = *(v14 + 8);
      if (v16 > v10 && v16 < v12)
      {
        v12 = *(v14 + 8);
        result = v8;
      }
    }

    v9 += 40;
    v14 += 40;
    if (*v8 + 4080 == v9)
    {
      v18 = v8[1];
      ++v8;
      v9 = v18;
      goto LABEL_5;
    }
  }
}

double *sub_1004A9DF0(double *result)
{
  v1 = floor(result[35] + *(result + 74)) - (vcvtmd_s64_f64(result[35] + *(result + 74)) % 3600) - *(result + 74);
  if (v1 > result[32])
  {
    v2 = result;
    sub_1004AA1F8(result);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v52 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v51 = _Q0;
    sub_1004ABBB4(v49, 0xCuLL, &v51);
    v50 = 0xBFF0000000000000;
    sub_1004AC150(v2 + 26, v49);
    *(v2 + 32) = v50;
    sub_1000F8B58(v49);
    v8 = *(v2 + 27);
    if (*(v2 + 28) != v8)
    {
      v9 = *(v2 + 30);
      v10 = (v8 + 8 * (v9 / 0xAA));
      v11 = *v10;
      v12 = &(*v10)[3 * (v9 % 0xAA)];
      v13 = *(v8 + 8 * ((*(v2 + 31) + v9) / 0xAA)) + 24 * ((*(v2 + 31) + v9) % 0xAA);
      if (v12 != v13)
      {
        v14 = 0;
        do
        {
          v15 = v1 + v14;
          *v12 = v15;
          v12[1] = v15 + 300.0;
          v12 += 3;
          if (v12 - v11 == 4080)
          {
            v16 = v10[1];
            ++v10;
            v11 = v16;
            v12 = v16;
          }

          v14 += 300;
        }

        while (v12 != v13);
      }
    }

    v2[32] = v1;
    sub_1008AFA98(v2 + 1);
    v2[36] = -1.0;
    v17 = *(v2 + 24);
    v18 = *(v2 + 21);
    v19 = *(v2 + 22);
    v20 = (v18 + 8 * (v17 / 0x66));
    if (v19 == v18)
    {
      v22 = 0;
      v31 = 0;
      v32 = (v18 + 8 * ((v17 + *(v2 + 25)) / 0x66));
    }

    else
    {
      v21 = *(v18 + 8 * (v17 / 0x66));
      v22 = v21 + 40 * (v17 % 0x66);
      v23 = *(v18 + 8 * ((*(v2 + 25) + v17) / 0x66)) + 40 * ((*(v2 + 25) + v17) % 0x66);
      if (v22 != v23)
      {
        while (*(v22 + 8) >= v1)
        {
          v22 += 40;
          if (v22 - v21 == 4080)
          {
            v24 = v20[1];
            ++v20;
            v21 = v24;
            v22 = v24;
          }

          if (v22 == v23)
          {
            v22 = *(v18 + 8 * ((*(v2 + 25) + v17) / 0x66)) + 40 * ((*(v2 + 25) + v17) % 0x66);
            goto LABEL_26;
          }
        }
      }

      if (v22 != v23)
      {
        v25 = v22;
        for (i = v20; ; v21 = *i)
        {
          v25 += 40;
          if (v25 - v21 == 4080)
          {
            v27 = i[1];
            ++i;
            v25 = v27;
          }

          if (v25 == v23)
          {
            break;
          }

          if (*(v25 + 8) >= v1)
          {
            v28 = *v25;
            v29 = *(v25 + 16);
            *(v22 + 32) = *(v25 + 32);
            *v22 = v28;
            *(v22 + 16) = v29;
            v22 += 40;
            if (v22 - *v20 == 4080)
            {
              v30 = v20[1];
              ++v20;
              v22 = v30;
            }
          }
        }

        v17 = *(v2 + 24);
        v18 = *(v2 + 21);
        v19 = *(v2 + 22);
      }

LABEL_26:
      v33 = v17 + *(v2 + 25);
      v32 = (v18 + 8 * (v33 / 0x66));
      if (v19 == v18)
      {
        v31 = 0;
      }

      else
      {
        v31 = (*v32 + 40 * (v33 % 0x66));
      }
    }

    sub_1004AA4E8(v2 + 20, v20, v22, v32, v31);
    v34 = *(v2 + 18);
    v35 = *(v2 + 15);
    v36 = *(v2 + 16);
    v37 = (v35 + 8 * (v34 >> 8));
    if (v36 == v35)
    {
      v39 = 0;
      v46 = 0;
      v47 = (v35 + 8 * ((v34 + *(v2 + 19)) >> 8));
    }

    else
    {
      v38 = *v37;
      v39 = *v37 + 16 * v34;
      v40 = *(v35 + (((*(v2 + 19) + v34) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v2 + 152) + v34);
      if (v39 != v40)
      {
        while (*(v39 + 8) >= v1)
        {
          v39 += 16;
          if (v39 - v38 == 4096)
          {
            v41 = v37[1];
            ++v37;
            v38 = v41;
            v39 = v41;
          }

          if (v39 == v40)
          {
            v39 = *(v35 + (((*(v2 + 19) + v34) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v2 + 152) + v34);
            goto LABEL_47;
          }
        }
      }

      if (v39 != v40)
      {
        v42 = v39;
        for (j = v37; ; v38 = *j)
        {
          v42 += 16;
          if (v42 - v38 == 4096)
          {
            v44 = j[1];
            ++j;
            v42 = v44;
          }

          if (v42 == v40)
          {
            break;
          }

          if (*(v42 + 8) >= v1)
          {
            *v39 = *v42;
            v39 += 16;
            if (v39 - *v37 == 4096)
            {
              v45 = v37[1];
              ++v37;
              v39 = v45;
            }
          }
        }

        v34 = *(v2 + 18);
        v35 = *(v2 + 15);
        v36 = *(v2 + 16);
      }

LABEL_47:
      v48 = v34 + *(v2 + 19);
      v47 = (v35 + 8 * (v48 >> 8));
      if (v36 == v35)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v47 + 16 * v48;
      }
    }

    return sub_1000B3638(v2 + 14, v37, v39, v47, v46);
  }

  return result;
}

void sub_1004AA1F8(uint64_t a1)
{
  sub_1004AB0EC(a1);
  sub_1004AAF64(a1);
  v2 = *(a1 + 240);
  v3 = *(*(a1 + 216) + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  v4 = *(v3 + 8);
  if (*(a1 + 280) > v4)
  {
    v5 = *v3;
    v6 = sub_1004AB3CC(a1, *v3, v4);
    if (v6 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }

    *(v3 + 16) = v7;
    v8 = *a1;
    if (v5 > 0.0 && v8 != 0)
    {
      v10 = *v3;
      v13 = *(v3 + 16);
      v12 = v10;
      (**v8)(v8, &v12);
      v2 = *(a1 + 240);
    }

    v11 = *(a1 + 248) - 1;
    *(a1 + 240) = v2 + 1;
    *(a1 + 248) = v11;
    sub_10027E208(a1 + 208, 1);
    sub_1004A9728(a1);
  }
}

void sub_1004AA308(uint64_t a1, __n128 *a2)
{
  if (qword_1025D4230 != -1)
  {
    sub_101894CDC();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2->n128_u64[0];
    v6 = a2->n128_u64[1];
    v9 = 134349312;
    v10 = v5;
    v11 = 2050;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,minuteAdded,startTime,%{public}f,endTime,%{public}f", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101894FFC();
  }

  if (*(a1 + 152) >= 0xF0uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v7 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 120) + ((*(a1 + 144) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 144));
      v9 = 134349056;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,minutes,startTime,%{public}f", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895100();
    }

    *(a1 + 144) = vaddq_s64(*(a1 + 144), xmmword_101C66230);
    sub_100014444(a1 + 112, 1);
  }

  sub_1004AB450((a1 + 112), a2);
  *(a1 + 264) = *a2;
  sub_1004AB618(a1, a2);
}

unint64_t sub_1004AA4E8(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 3) + 0x3333333333333333 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x66));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[40 * (v7 % 0x66)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 3) + 0x3333333333333333 * ((v10 - *v9) >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x66);
  v24[0].n128_u64[1] = v10;
  sub_1000C5804(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C5804(v24, v6);
      sub_1004AC444(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C5804(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x66));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 40 * (v14 % 0x66));
      }

      v24[0] = v12;
      sub_1004AC604(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x66));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 40 * (v19 % 0x66);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C5804(v24, v11);
  return v24[0].n128_u64[0];
}