void *sub_1003628C4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A75E0;
  sub_100230D44((a1 + 3));
  return a1;
}

void sub_100362940(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A75E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100362994(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1003629EC(uint64_t a1, uint64_t a2)
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

void *sub_100362A84(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100362CDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_100362CE8()
{
  exception = __cxa_allocate_exception(8uLL);
}

void *sub_100362D38(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_100362FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100362FE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100362FE4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100362454(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_100363030(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_100363288(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_100363374(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10018AF1C(a1 + 2, (a2 + 2));
  return a1;
}

void sub_1003633BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003633D4(uint64_t a1)
{
  sub_10002074C(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_100363484(uint64_t result, uint64_t a2)
{
  *a2 = off_1009A7630;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_1003634B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 104))(v3, a1 + 8);
  }

  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_10036352C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100363544(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100363590(uint64_t a1)
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

uint64_t sub_100363680(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A76C0;
  a2[1] = v2;
  return result;
}

void sub_1003636AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 72))(v3, *(a1 + 8));
  }

  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_100363724(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036373C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003637F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A7740;
  a2[1] = v2;
  return result;
}

void sub_100363824(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 80))(v3, *(a1 + 8));
  }

  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_10036389C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003638B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100363970(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A77C0;
  a2[1] = v2;
  return result;
}

void sub_10036399C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 96))(v3, **(a1 + 8), *(*(a1 + 8) + 4));
  }

  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_100363A18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100363A30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100363A7C(uint64_t a1, uint64_t a2)
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

void *sub_100363B14(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_100363BF0(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_100037488(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100363C30(void *a1, void *a2)
{
  result = sub_100363288(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100362FE4(v4);
    return 1;
  }

  return result;
}

__n128 sub_100363D40(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A7840;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  result = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v9;
  *(a2 + 136) = v8;
  *(a2 + 120) = result;
  return result;
}

void sub_100363DC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3, a1 + 8);
  }

  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_100363E38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100363E50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100363E9C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100363F1C(uint64_t a1, uint64_t a2)
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

void sub_100363FB4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_100363FD0()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100364080()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100364130()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1003641E0()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100364290()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100364340()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1003643F0()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1003644A0()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100364550()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056C7E0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100364644()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F5658 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F5648 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5648, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F5670 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F5660 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5660, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F5688 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F5678 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5678, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F56A0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F5690 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5690, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F56B8 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F56A8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F56A8, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F56D0 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F56C0 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F56C0, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F56E8 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F56D8 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F56D8, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F5700 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F56F0 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F56F0, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F5718 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F5708 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5708, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100364C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100364E58(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (v12)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 DataCallback:v12];
    }
  }

  if (v5)
  {
    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) delegate];
      [v11 ErrorCallback:v5];
    }
  }
}

void sub_1003650E4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (v12)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 DataCallback:v12];
    }
  }

  if (v5)
  {
    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) delegate];
      [v11 ErrorCallback:v5];
    }
  }
}

void sub_1003655DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100365AD0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100040094(result);

    operator delete();
  }

  return result;
}

void sub_100366194(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100366288(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10036641C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003669F0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100366C6C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100367428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100367464(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = _NIServerTestWiFiOnlySession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 uwbSessionDidFailWithError:*(a1 + 40)];
}

void sub_10036786C(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    v4.receiver = *(a1 + 32);
    v4.super_class = _NIServerTestWiFiOnlySession;
    v2 = objc_msgSendSuper2(&v4, "resourcesManager");
    v3 = [v2 remote];
    [v3 didUpdateNearbyObjects:*(a1 + 40)];
  }
}

void sub_100367A28(uint64_t a1)
{

  operator delete();
}

id sub_100367ADC(uint64_t a1, void *a2)
{
  *a2 = off_1009A7A88;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100367B2C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_100367B74(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A7AE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100367BEC(uint64_t a1)
{

  operator delete();
}

id sub_100367CA0(uint64_t a1, void *a2)
{
  *a2 = off_1009A7B08;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100367CF0(id *a1)
{

  operator delete(a1);
}

uint64_t sub_100367D5C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A7B68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100367DD4(uint64_t a1)
{

  operator delete();
}

id sub_100367E88(uint64_t a1, void *a2)
{
  *a2 = off_1009A7B88;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100367ED8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_100367F44(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A7BE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100367F90()
{
  v0 = objc_autoreleasePoolPush();
  v8 = xmmword_10056D330;
  v9[0] = unk_10056D340;
  sub_1001BD0B0(qword_1009F70F0, &v8, 4);
  xmmword_1009F7108 = xmmword_100563BD0;
  unk_1009F7118 = xmmword_100563BE0;
  qword_1009F7130 = 0;
  unk_1009F7138 = 0;
  qword_1009F7128 = 0x3FD999999999999ALL;
  unk_1009F7140 = xmmword_100563BF0;
  dword_1009F7150 = 5;
  qword_1009F7158 = 0x4000000000000000;
  dword_1009F7160 = 5;
  byte_1009F7168 = 0;
  unk_1009F716C = 0x30000000ALL;
  xmmword_1009F7178 = xmmword_100563C00;
  unk_1009F7188 = xmmword_100563C10;
  xmmword_1009F7198 = xmmword_100563C20;
  qword_1009F71A8 = 0x3FE3333333333333;
  dword_1009F71B0 = 3;
  xmmword_1009F71B8 = xmmword_100563C30;
  unk_1009F71C8 = xmmword_100563C10;
  xmmword_1009F71D8 = xmmword_100563C00;
  qword_1009F71E8 = 0x3FE3333333333333;
  byte_1009F71F0 = 0;
  xmmword_1009F71F8 = xmmword_100563C40;
  unk_1009F7208 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7218 = _Q0;
  qword_1009F7228 = 0xBFD3333333333333;
  xmmword_1009F7230 = xmmword_100563C60;
  qword_1009F7240 = 0x3E99999A40000000;
  xmmword_1009F7248 = xmmword_100563BE0;
  qword_1009F7260 = 0;
  unk_1009F7268 = 0;
  qword_1009F7258 = 0x3FD999999999999ALL;
  xmmword_1009F7270 = xmmword_100563BF0;
  dword_1009F7280 = 5;
  qword_1009F7288 = 0x4000000000000000;
  dword_1009F7290 = 4;
  qword_1009F7298 = 0x300000008;
  qword_1009F72A0 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(algn_1009F72A8, &v7, 1);
  xmmword_1009F72C0 = xmmword_100563C70;
  qword_1009F72D0 = 0x4024000000000000;
  dword_1009F72D8 = 45;
  byte_1009F72E0 = 0;
  byte_1009F72F8 = 0;
  qword_1009F7300 = 0;
  byte_1009F7308 = 0;
  dword_1009F730C = 1;
  byte_1009F7310 = 1;
  xmmword_1009F7318 = xmmword_100563C80;
  xmmword_1009F7328 = xmmword_100563C90;
  xmmword_1009F7338 = v6;
  qword_1009F7348 = 0xC059000000000000;
  xmmword_1009F7350 = xmmword_100563CA0;
  qword_1009F7360 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F7368 = xmmword_100563BE0;
  qword_1009F7378 = 0x3FD999999999999ALL;
  xmmword_1009F7380 = 0u;
  unk_1009F7390 = xmmword_100563BF0;
  dword_1009F73A0 = 5;
  qword_1009F73A8 = 0x4000000000000000;
  dword_1009F73B0 = 10;
  qword_1009F73B8 = 0x4034000000000000;
  dword_1009F73C0 = 3;
  xmmword_1009F73C8 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F70F0, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EC138, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC140, &_mh_execute_header);
  v8 = xmmword_10056D350;
  v9[0] = unk_10056D360;
  v9[1] = xmmword_10056D370;
  v9[2] = unk_10056D380;
  qword_1009F73E0 = 0;
  unk_1009F73E8 = 0;
  qword_1009F73D8 = 0;
  sub_10004EEB8(&qword_1009F73D8, &v8, &v10, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F73D8, &_mh_execute_header);
  v8 = xmmword_10056D390;
  qword_1009F73F8 = 0;
  unk_1009F7400 = 0;
  qword_1009F73F0 = 0;
  sub_10004EEB8(&qword_1009F73F0, &v8, v9, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F73F0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100368548(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 4);

  _Unwind_Resume(a1);
}

void sub_1003687F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  [v4 timestamp];
  if (v5 - v6 <= *(a1 + 48))
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#recent-obj-cache,Result too old: %@", &v8, 0xCu);
    }
  }
}

int64_t sub_1003688F0(id a1, NINearbyObject *a2, NINearbyObject *a3)
{
  v4 = a3;
  [(NINearbyObject *)a2 distance];
  v6 = v5;
  [(NINearbyObject *)v4 distance];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  return v8;
}

void sub_100369284(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:EAAccessoryKey];
  v4 = qword_1009F7408;
  if (os_log_type_enabled(qword_1009F7408, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,acc,connected,accessory,%@,userinfo,%@", &v5, 0x16u);
  }

  [*(a1 + 40) accessoryNotify:v3 isAttached:1];
}

void sub_100369434(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:EAAccessoryKey];
  v4 = qword_1009F7408;
  if (os_log_type_enabled(qword_1009F7408, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,acc,disconnected,accessory,%@,userinfo,%@", &v5, 0x16u);
  }

  [*(a1 + 40) accessoryNotify:v3 isAttached:0];
}

void sub_100369820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100369A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_100369B40(void *a1, const void **a2)
{
  v4 = sub_100014630(a1, a2);
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
    sub_100369DB8();
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

  if (!sub_1000143B0(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100369D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_100021510(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100369E5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100021510(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100369E78()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F7408 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

id sub_100369ECC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UWBSessionServerProtocol];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v70 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v69 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v8 = [NSSet alloc];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v68 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v11 = [NSMutableSet alloc];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v71 = [v11 initWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v80[2] = objc_opt_class();
  v80[3] = objc_opt_class();
  v66 = [NSArray arrayWithObjects:v80 count:4];
  [v71 addObjectsFromArray:?];
  v79 = objc_opt_class();
  v67 = [NSArray arrayWithObjects:&v79 count:1];
  [v71 addObjectsFromArray:?];
  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v78[2] = objc_opt_class();
  v65 = [NSArray arrayWithObjects:v78 count:3];
  [v71 addObjectsFromArray:?];
  v77[0] = objc_opt_class();
  v77[1] = objc_opt_class();
  v77[2] = objc_opt_class();
  v77[3] = objc_opt_class();
  v77[4] = objc_opt_class();
  v77[5] = objc_opt_class();
  v62 = [NSArray arrayWithObjects:v77 count:6];
  [v71 addObjectsFromArray:?];
  v76[0] = objc_opt_class();
  v76[1] = objc_opt_class();
  v60 = [NSArray arrayWithObjects:v76 count:2];
  [v71 addObjectsFromArray:?];
  v75 = objc_opt_class();
  v63 = [NSArray arrayWithObjects:&v75 count:1];
  [v71 addObjectsFromArray:?];
  v74[0] = objc_opt_class();
  v74[1] = objc_opt_class();
  v74[2] = objc_opt_class();
  v64 = [NSArray arrayWithObjects:v74 count:3];
  [v71 addObjectsFromArray:?];
  v73[0] = objc_opt_class();
  v73[1] = objc_opt_class();
  v73[2] = objc_opt_class();
  v73[3] = objc_opt_class();
  v73[4] = objc_opt_class();
  v73[5] = objc_opt_class();
  v61 = [NSArray arrayWithObjects:v73 count:6];
  [v71 addObjectsFromArray:?];
  v72[0] = objc_opt_class();
  v72[1] = objc_opt_class();
  v72[2] = objc_opt_class();
  v17 = [NSArray arrayWithObjects:v72 count:3];
  [v71 addObjectsFromArray:v17];

  v18 = [NSSet alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v59 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
  v21 = [v71 setByAddingObjectsFromSet:?];
  [v0 setClasses:v21 forSelector:"runWithConfiguration:reply:" argumentIndex:0 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:"_addObject:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"_removeObject:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"processDCKMessage:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"processDCKMessage:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"processDCKMessage:reply:" argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"processBluetoothHostTimeSyncWithType:btcClockTicks:eventCounter:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"isRangingLimitExceeded:" argumentIndex:1 ofReply:1];
  v22 = [NSSet alloc];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v58 = [v22 initWithObjects:{v23, v24, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [v0 setClass:objc_opt_class() forSelector:"_processCarKeyEvent:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"processAcwgM1Msg:withSessionTriggerReason:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"processAcwgM3Msg:" argumentIndex:0 ofReply:0];
  v25 = [NSSet alloc];
  v26 = objc_opt_class();
  v57 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v56 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v27 = [NSSet alloc];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v55 = [v27 initWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v30 = [NSSet alloc];
  v31 = objc_opt_class();
  v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
  [v0 setClasses:v32 forSelector:"setLocalDeviceCanInteract:withDiscoveryTokens:reply:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"setLocalDeviceCanInteract:withDiscoveryTokens:reply:" argumentIndex:0 ofReply:1];
  [v0 setClasses:v32 forSelector:"setLocalDeviceInteractableDiscoveryTokens:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"setLocalDeviceInteractableDiscoveryTokens:reply:" argumentIndex:0 ofReply:1];
  [v0 setClasses:v32 forSelector:"getInteractableDiscoveryTokens:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"getInteractableDiscoveryTokens:" argumentIndex:1 ofReply:1];
  [v0 setClasses:v32 forSelector:"getActivelyInteractingDiscoveryTokens:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"getActivelyInteractingDiscoveryTokens:" argumentIndex:1 ofReply:1];
  v33 = [NSSet alloc];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v54 = [v33 initWithObjects:{v34, v35, objc_opt_class(), 0}];
  [v0 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [v0 setClass:objc_opt_class() forSelector:"getLocalDevicePrintableState:" argumentIndex:1 ofReply:1];
  v36 = [NSSet alloc];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v36 initWithObjects:{v37, v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:"_processFindingEvent:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"_processFindingEvent:reply:" argumentIndex:0 ofReply:1];
  v45 = [NSSet alloc];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [v45 initWithObjects:{v46, v47, objc_opt_class(), 0}];
  [v0 setClasses:v48 forSelector:"setLocalDeviceDebugParameters:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"setLocalDeviceDebugParameters:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"generateSOSBeaconDataForSubject:peerData:reply:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"generateSOSBeaconDataForSubject:peerData:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"generateSOSBeaconDataForSubject:peerData:reply:" argumentIndex:1 ofReply:1];
  v49 = [NSSet alloc];
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = [v49 initWithObjects:{v50, v51, objc_opt_class(), 0}];
  [v0 setClasses:v52 forSelector:"_processSystemEvent:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"_processSystemEvent:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_10036AE64()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UWBSessionDelegateProxyProtocol];
  [v0 setClass:objc_opt_class() forSelector:"didUpdateLocalDiscoveryToken:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"uwbSessionDidInvalidateWithError:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"uwbSessionDidFailWithError:" argumentIndex:0 ofReply:0];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:"didUpdateNearbyObjects:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v8 forSelector:"didRemoveNearbyObjects:withReason:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didDiscoverNearbyObject:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"object:didUpdateRegion:previousRegion:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"object:didUpdateRegion:previousRegion:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"object:didUpdateRegion:previousRegion:" argumentIndex:2 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"relayDCKMessage:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didProcessAcwgM1MsgWithResponse:error:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didProcessAcwgM3MsgWithResponse:error:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didProcessAcwgRangingSessionResumeRequestMsgWithResponse:error:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didReceiveAopSFZoneUpdate:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didReceiveRangingAuthRecommendation:forObject:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didUpdateAlgorithmState:forObject:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didUpdateAlgorithmState:forObject:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"systemDidUpdateState:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"systemDidUpdateResourceUsageLimitExceeded:forSessionConfigurationTypeWithName:" argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"didUpdateNICoordinates:" argumentIndex:0 ofReply:0];
  v9 = [NSSet alloc];
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:"didUpdateDLTDOAMeasurements:" argumentIndex:0 ofReply:0];

  return v0;
}

const __CFString *sub_10036B2EC(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"AirplaneModeActive";
  }

  else
  {
    return off_1009A7D30[a1];
  }
}

const __CFString *sub_10036B310(uint64_t a1)
{
  v1 = @"Timeout";
  if (a1 == 1)
  {
    v1 = @"PeerEnded";
  }

  if (a1 == 2)
  {
    return @"LocalForceRemoved";
  }

  else
  {
    return v1;
  }
}

void sub_10036B38C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_1009A7D90;
  *(a1 + 8) = off_1009A7E60;
  *(a1 + 16) = a3;
  *(a1 + 24) = *(sub_1000054A8() + 144);
  *(a1 + 32) = v5;
  *(a1 + 40) = dispatch_queue_create("com.apple.nearbyd.regulatory", 0);
  sub_100309CDC(a1 + 48);
  *(a1 + 272) = 0;
  v6 = *(a1 + 40);
  v9[0] = off_1009A7FC0;
  v9[1] = a1;
  v9[3] = v9;
  v8[0] = off_1009A8040;
  v8[1] = a1;
  v8[3] = v8;
  v7[0] = off_1009A80C0;
  v7[1] = a1;
  v7[3] = v7;
  sub_100229CA4((a1 + 280), v6);
}

void sub_10036B6E0(_Unwind_Exception *a1)
{
  sub_100229E80((v1 + 35));
  sub_10036E8BC((v1 + 6));

  _Unwind_Resume(a1);
}

uint64_t sub_10036B798(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  v2 = *(a1 + 272);
  if ((v2 & 1) == 0)
  {
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      v3 = qword_1009F7410;
      if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#reg-prov,regulatory provider processing device unlocked since boot", v6, 2u);
      }

      v4 = sub_100003AE0();
      sub_100229E84(a1 + 280);
      sub_10045744C(v4);
      sub_10022D524(a1 + 280);
      v2 = 1;
      *(a1 + 272) = 1;
    }

    else
    {
      v2 = *(a1 + 272);
    }
  }

  return v2 & 1;
}

char *sub_10036B850(uint64_t a1)
{
  v1 = sub_10036B8A8(*(a1 + 32));
  v2 = sub_10003FA2C(@"PRRegulatoryProvider", v1);

  return v2;
}

id sub_10036B8A8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 40));
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  [v2 addObject:@"GeoMonitor"];
  v4 = sub_10022DCF8(a1 + 280);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10036E748;
  v14[3] = &unk_10099D008;
  v5 = v2;
  v15 = v5;
  [v4 enumerateObjectsUsingBlock:v14];
  [v5 addObject:@"Settings"];
  v6 = sub_10030C144(a1 + 48);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036E7C4;
  v12[3] = &unk_10099D008;
  v7 = v5;
  v13 = v7;
  [v6 enumerateObjectsUsingBlock:v12];
  if (*(a1 + 2160))
  {
    [v7 addObject:@"Narrowband SAR"];
    v8 = [*(a1 + 2160) printableStateOnQueue];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10036E840;
    v10[3] = &unk_10099D008;
    v11 = v7;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v8 = v6;
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

uint64_t sub_10036BB0C(uint64_t a1)
{
  *a1 = off_1009A7D90;
  *(a1 + 8) = off_1009A7E60;

  sub_100229E80(a1 + 280);
  std::mutex::~mutex((a1 + 200));
  sub_10002074C(a1 + 176, *(a1 + 184));
  sub_10017AC74(a1 + 152, *(a1 + 160));
  sub_10002074C(a1 + 128, *(a1 + 136));
  sub_10017AC74(a1 + 104, *(a1 + 112));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void sub_10036BBF8(uint64_t a1)
{
  sub_10036BB0C(a1);

  operator delete();
}

void sub_10036BC30(uint64_t a1)
{
  sub_10036BB0C(a1 - 8);

  operator delete();
}

id sub_10036BC6C(uint64_t a1)
{
  sub_100229E8C(a1 + 280);
  sub_10036BF44(a1);
  v2 = *(a1 + 2144);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10036C0E4;
  v14[3] = &unk_1009A7EE0;
  v14[4] = a1;
  [v2 setAirplaneModeChangedHandler:v14];
  v3 = *(a1 + 2152);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10036C268;
  v13[3] = &unk_1009A7F00;
  v13[4] = a1;
  [v3 setStateChangedHandler:v13];
  v4 = *(a1 + 2160);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036C440;
  v12[3] = &unk_1009A7F20;
  v12[4] = a1;
  [v4 setStateChangeHandler:v12];
  if (!sub_1000149C4(*(a1 + 24)))
  {
    v7 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,fGeoMonitor startMonitoring,skipped,device does not support UWB.", buf, 2u);
    }

    goto LABEL_8;
  }

  v5 = sub_10022A3A8(a1 + 280);
  v6 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#reg-prov,fGeoMonitor startMonitoring completed, status, %d", buf, 8u);
  }

  if (v5)
  {
LABEL_8:
    v5 = [*(a1 + 2144) startMonitoring];
  }

  v8 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#reg-prov,fSystemSettingsMonitor startMonitoring done, status, %d", buf, 8u);
  }

  if (v5)
  {
    v5 = [*(a1 + 2152) startMonitoring];
  }

  v9 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-prov,fAttachedAccessoryMonitor startMonitoring done, status, %d", buf, 8u);
  }

  v10 = *(a1 + 2160);
  result = ((v10 == 0) & v5);
  if (v10)
  {
    if (((v5 ^ 1) & 1) == 0)
    {
      return [*(a1 + 2160) startMonitoring];
    }
  }

  return result;
}

void *sub_10036BF44(void *result)
{
  if (!result[271])
  {
    v1 = result;
    v2 = [PRSettingsObserver alloc];
    v3 = +[PRGlobalDebugSettings sharedSettings];
    v4 = [(PRSettingsObserver *)v2 initWithSettings:v3 queue:v1[5]];
    v5 = v1[271];
    v1[271] = v4;

    v6 = v1[271];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10036DC6C;
    v11[3] = &unk_10099D2D8;
    v11[4] = v1;
    [v6 startObserving:PRDebugConfigArgMcc observeImmediately:0 callback:v11];
    v7 = v1[271];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10036DE64;
    v10[3] = &unk_10099D2D8;
    v10[4] = v1;
    [v7 startObserving:PRDebugConfigArgAccessoryState observeImmediately:0 callback:v10];
    v8 = v1[271];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10036DFE4;
    v9[3] = &unk_10099D2D8;
    v9[4] = v1;
    return [v8 startObserving:PRDebugConfigArgIsoCountry observeImmediately:0 callback:v9];
  }

  return result;
}

void sub_10036C0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000149C4(*(a1 + 24));
  v5 = qword_1009F7410;
  if (v4)
  {
    v6 = qword_1009F7410;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100316574(a2);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#reg-prov,Airplane Mode changed: %@.", &v11, 0xCu);
    }

    v8 = a2 == 1;
    v9 = sub_10030AC1C(a1 + 48, v8);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    sub_10022D9D4(a1 + 280, v10);
    if (v9)
    {
      sub_10036C760(a1, 1u, 1);
    }

    if ((v9 & 0x10000) != 0)
    {
      sub_10036C938(a1, 1u, 1);
    }
  }

  else if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#reg-prov,onAirplaneModeStateChange,exited early,device does not support UWB.", &v11, 2u);
  }
}

void sub_10036C270(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = qword_1009F7410;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    v9 = "detached";
    if (a2)
    {
      v9 = "attached";
    }

    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v22 = v9;
    v23 = 2080;
    v24 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#reg-prov,accessory:%s,type:%s", buf, 0x16u);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = sub_1000054A8();
  if (sub_100014670(v11))
  {
    if (!a3)
    {
      v12 = sub_10030AAEC(a1 + 48, a2, a4);
      if (a2)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      LODWORD(__p) = 2;
      HIDWORD(__p) = v13;
      v16 = BYTE1(v12) & 1;
      v17 = a4;
      v18 = 1;
      v19 = 0;
      sub_10036CB1C(a1, &__p);
    }
  }

  else
  {
    v14 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#reg-prov,Ignore accessory event", &__p, 2u);
    }
  }
}

void sub_10036C448(uint64_t a1, int a2)
{
  v4 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 67109120;
    DWORD1(v5) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,onNarrowbandSARChange,index,%d", &v5, 8u);
  }

  *&v5 = 0x800000005;
  BYTE8(v5) = 1;
  BYTE12(v5) = 0;
  v6 = 0;
  v7 = a2;
  v8 = 1;
  sub_10036C690(a1, &v5);
}

uint64_t sub_10036C52C(id *a1)
{
  [a1[269] setStateChangedHandler:0];
  [a1[268] setAirplaneModeChangedHandler:0];
  [a1[270] setStateChangeHandler:0];
  return 1;
}

uint64_t sub_10036C574(id *a1)
{
  [a1[268] setStateChangedHandler:0];
  [a1[267] setAirplaneModeChangedHandler:0];
  [a1[269] setStateChangeHandler:0];
  return 1;
}

void sub_10036C5BC(uint64_t a1)
{
  if (sub_1000149C4(*(a1 + 24)))
  {
    v2 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10036C688;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#reg-prov,onFirstUnlock,exited early,device does not support UWB.", buf, 2u);
    }
  }
}

void sub_10036C690(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10036C720;
    v3[3] = &unk_1009A7F40;
    v3[4] = a1;
    v4 = *a2;
    v5 = *(a2 + 2);
    dispatch_async(v2, v3);
  }
}

void sub_10036C720(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  sub_1001A45D0(v1, &v2);
}

void sub_10036C760(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_10036C8F0(a1);
  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 8)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_1009A8238[a2];
    }

    sub_100004A08(__p, v8);
    v9 = __p[0];
    v10 = "UWBDisallowed";
    if (v13 >= 0)
    {
      v9 = __p;
    }

    if (v6)
    {
      v10 = "UWBAllowed";
    }

    *buf = 136315650;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    if (a3)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,relayUwbState,%s,allowed,%s,actionRequired,%s", buf, 0x20u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = v6;
  LODWORD(v15) = a2;
  BYTE4(v15) = a3;
  LOBYTE(v16) = 0;
  BYTE2(v17) = 0;
  HIWORD(v17) = 0;
  sub_10036C690(a1, buf);
}

uint64_t sub_10036C8F0(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v3);
  v1 = v3[0];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_10036C938(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_10036CAD4(a1);
  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 8)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_1009A8238[a2];
    }

    sub_100004A08(__p, v8);
    v9 = __p[0];
    v10 = "NBDisallowed";
    if (v14 >= 0)
    {
      v9 = __p;
    }

    if (v6)
    {
      v10 = "NBAllowed";
    }

    *buf = 136315650;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    if (a3)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v19 = 2080;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,relayNBState,%s,allowed,%s,actionRequired,%s", buf, 0x20u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v6)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  *buf = v12;
  LODWORD(v16) = a2;
  BYTE4(v16) = a3;
  LOBYTE(v17) = 0;
  BYTE2(v18) = 0;
  HIWORD(v18) = 0;
  sub_10036C690(a1, buf);
}

uint64_t sub_10036CAD4(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v3);
  v1 = v3[1];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_10036CB1C(uint64_t a1, uint64_t a2)
{
  sub_10030BF58(a1 + 48, v12);
  v4 = qword_1009F7410;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 4);
    if (v5 > 8)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_1009A8238[v5];
    }

    sub_100004A08(__p, v6);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = &v13;
    if (v14 < 0)
    {
      v8 = v13;
    }

    if (*(a2 + 8))
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    *buf = 136315906;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    v20 = 1024;
    v21 = v15;
    v22 = 2080;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,relaySettingsChange,%s,country,%s,flags,%d,actionRequired,%s", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10036C690(a1, a2);
  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_10036CCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036CCC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  sub_10045BB78(v4, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_10036CD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CDA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  sub_10045BDD0(v4, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_10036CE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CE88(uint64_t a1, char *a2)
{
  v4 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,onCountryChange", buf, 2u);
  }

  if ((a2[23] & 0x80000000) == 0)
  {
    if (a2[23])
    {
      __p = *a2;
      goto LABEL_8;
    }

LABEL_14:
    v6 = sub_10030BA54(a1 + 48);
    v11 = qword_1009F7410;
    if (!os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v8 = "#reg-prov,onCountryChange callback: <empty isoCode>.";
    v9 = v11;
    v10 = 2;
    goto LABEL_16;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    goto LABEL_14;
  }

  sub_1000056BC(&__p, *a2, v5);
LABEL_8:
  v6 = sub_10030B0D8(a1 + 48, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v8 = "#reg-prov,onCountryChange callback: %s.";
    v9 = v7;
    v10 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }

LABEL_17:
  if (v6)
  {
    sub_10036C760(a1, 3u, 1);
  }

  if ((v6 & 0x100) != 0)
  {
    *buf = 0x300000002;
    buf[8] = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10036CB1C(a1, buf);
  }

  if ((v6 & 0x10000) != 0)
  {
    sub_10036C938(a1, 3u, 1);
  }

  if ((v6 & 0x1000000) != 0)
  {
    *buf = 0x300000005;
    buf[8] = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10036CB1C(a1, buf);
  }
}

void sub_10036D0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D0C4(uint64_t a1, int a2)
{
  v4 = sub_10030AE88(a1 + 48, a2);
  if (v4)
  {
    v5 = qword_1009F7410;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        sub_1000056BC(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        v10 = *(a1 + 72);
      }

      v6 = __p;
      if (v10 < 0)
      {
        v6 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#reg-prov,onRestrictedRegionChanged,%d,isoCountry,%s,uwbChannelSettingChanged", buf, 0x12u);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10036C760(a1, 7u, 1);
  }

  if ((v4 & 0x10000) != 0)
  {
    v7 = qword_1009F7410;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        sub_1000056BC(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        v10 = *(a1 + 72);
      }

      v8 = __p;
      if (v10 < 0)
      {
        v8 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2080;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,onRestrictedRegionChanged,%d,isoCountry,%s,isNBChannelSettingChanged", buf, 0x12u);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10036C938(a1, 7u, 1);
  }
}

uint64_t sub_10036D2CC(uint64_t a1)
{
  v2 = sub_10036D3CC();
  if ((v2 & 0x100) != 0)
  {
    v3 = v2;
    v4 = qword_1009F7410;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100457E08(v3, v6);
      sub_1004C3E20(v6, buf, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C3E94();
    }

    sub_10030BF58(a1 + 48, v6);
    v3 = v9;
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  return v3 | 0x100u;
}

uint64_t sub_10036D3CC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 stringForKey:@"RegulatoryGroup"];
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"US"])
    {
      v3 = 0;
LABEL_7:
      v4 = 1;
      goto LABEL_8;
    }

    if ([v2 isEqualToString:@"EU"])
    {
      v3 = 1;
      goto LABEL_7;
    }

    if ([v2 isEqualToString:@"TW"])
    {
      v4 = 1;
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"CN"])
    {
      v4 = 1;
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"JP"])
    {
      v4 = 1;
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"KR"])
    {
      v4 = 1;
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"RU"])
    {
      v4 = 1;
      v3 = 6;
    }

    else
    {
      v4 = [v2 isEqualToString:@"AR"];
      if (v4)
      {
        v3 = 7;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

LABEL_8:

  return v3 | (v4 << 8);
}

uint64_t sub_10036D554(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v19);
  v1 = sub_10036D3CC();
  v2 = v22;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"UNII3RegulatoryGroup"];
  v5 = v4;
  if (!v4)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"CC0"])
  {
    LOBYTE(v6) = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"CC1"])
  {
    LOBYTE(v6) = 1;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"CC2"])
  {
    v7 = 1;
    LOBYTE(v6) = 2;
  }

  else if ([v5 isEqualToString:@"CC3"])
  {
    v7 = 1;
    LOBYTE(v6) = 3;
  }

  else if ([v5 isEqualToString:@"CC4"])
  {
    v7 = 1;
    LOBYTE(v6) = 4;
  }

  else if ([v5 isEqualToString:@"CC5"])
  {
    v7 = 1;
    LOBYTE(v6) = 5;
  }

  else if ([v5 isEqualToString:@"NA"])
  {
    v7 = 1;
    LOBYTE(v6) = -2;
  }

  else
  {
    v7 = [v5 isEqualToString:@"UNKNOWN"];
    v6 = (v7 << 31) >> 31;
  }

LABEL_8:

  v8 = v23;
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 stringForKey:@"UNII3SARGroup"];
  v11 = v10;
  if (!v10)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
    goto LABEL_15;
  }

  if ([v10 isEqualToString:@"CC0"])
  {
    LOBYTE(v12) = 0;
LABEL_14:
    v13 = 1;
    goto LABEL_15;
  }

  if ([v11 isEqualToString:@"CC1"])
  {
    LOBYTE(v12) = 1;
    goto LABEL_14;
  }

  if ([v11 isEqualToString:@"CC2"])
  {
    v13 = 1;
    LOBYTE(v12) = 2;
  }

  else if ([v11 isEqualToString:@"CC3"])
  {
    v13 = 1;
    LOBYTE(v12) = 3;
  }

  else if ([v11 isEqualToString:@"NA"])
  {
    v13 = 1;
    LOBYTE(v12) = -2;
  }

  else
  {
    v13 = [v11 isEqualToString:@"UNKNOWN"];
    v12 = (v13 << 31) >> 31;
  }

LABEL_15:

  v14 = v24;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = v6;
  }

  else
  {
    v16 = v8;
  }

  if ((v1 & 0x100) != 0)
  {
    v17 = v1;
  }

  else
  {
    v17 = v2;
  }

  return (v16 << 8) | (v15 << 16) | v17 | 0x1000000u;
}

void sub_10036D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10036D864(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036D910;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10036D910(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10036B798(v2);
  result = sub_10036C8F0(v2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10036D958(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036DA04;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10036DA04(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10036B798(v2);
  result = sub_10036CAD4(v2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t *sub_10036DA4C(uint64_t a1)
{
  v2 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  v3 = sub_10045AF8C(v2, __p, v10, v11);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }

  return v3;
}

void sub_10036DAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036DB3C(uint64_t a1, _DWORD *a2)
{
  if (!*a2 && os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3ED4();
  }

  return 0;
}

void sub_10036DB8C(uint64_t a1)
{
  if (sub_1000149C4(*(a1 + 24)))
  {
    v2 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10036DC58;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#reg-prov,refreshRegulatoryInformation,exited early,device does not support UWB.", buf, 2u);
    }
  }
}

void sub_10036DC6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 objectForKey:v3 ofClass:objc_opt_class()];

  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received mcc: %s", __p, 0xCu);
  }

  if (sub_1000149C4(*(v4 + 24)))
  {
    v8 = v6;
    sub_100004A08(__p, [v6 UTF8String]);
    sub_10022CA28((v4 + 280), __p);
    if (v11 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v9 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received mcc,skipped,device does not support UWB", __p, 2u);
    }
  }
}

void sub_10036DE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036DE64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 integerForKey:v3];

  v7 = sub_10041CB6C(v6);
  v8 = qword_1009F7410;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 67109378;
    v13 = v6;
    v14 = 2080;
    v15 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received accessoryState %d, accessoryType %s", buf, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  sub_10036C270(v4, v7 != 0, 0, v7);
}

void sub_10036DFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 objectForKey:v3 ofClass:objc_opt_class()];

  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received isoCountry %s", buf, 0xCu);
  }

  if (sub_1000149C4(*(v4 + 24)))
  {
    v8 = v6;
    sub_100004A08(__p, [v6 UTF8String]);
    sub_10036CE88(v4, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received isoCountry,skipped,device does not support UWB", buf, 2u);
    }
  }
}

void sub_10036E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036E1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030BF58(a1 + 48, v15);
  if (v15[4])
  {
    v3 = 0;
    goto LABEL_8;
  }

  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_FAULT))
    {
      sub_1004C3F14();
    }

    v6 = 662;
LABEL_36:
    __assert_rtn("toRegulatoryState", "PRRegulatoryProvider.mm", v6, "false");
  }

  if ((v16 - 2) < 2)
  {
    v3 = 2;
    goto LABEL_8;
  }

  if (!v16)
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_FAULT))
    {
      sub_1004C3F54();
    }

    v6 = 674;
    goto LABEL_36;
  }

  v3 = 1;
LABEL_8:
  v4 = sub_100003AE0();
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(__dst, v18, *(&v18 + 1));
  }

  else
  {
    *__dst = v18;
    v14 = v19;
  }

  v5 = sub_10045AF8C(v4, __dst, v20, v21);
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(v10, v18, *(&v18 + 1));
  }

  else
  {
    *v10 = v18;
    v11 = v19;
  }

  sub_10045B2E8(v4, v10, v20, v21, v12);
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(v7, v18, *(&v18 + 1));
  }

  else
  {
    *v7 = v18;
    v8 = v19;
  }

  sub_10045B730(v4, v7, v20, v21, __p);
  sub_10036E928(a2, v3, v5, v12, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }
}

void sub_10036E3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036E4A0(uint64_t a1, uint64_t *a2)
{
  if (sub_10041C748(*(a1 + 24)) && sub_1000149C4(*(a1 + 24)))
  {
    v4 = sub_10022CED0((a1 + 280), a2);
    v5 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C3F94(a2, v4, v5);
    }
  }

  else
  {
    v6 = qword_1009F7410;
    v4 = 0;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#reg-prov,injectIsoCode,exited early,device is not a UWB watch.", v8, 2u);
      return 0;
    }
  }

  return v4;
}

id sub_10036E57C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 2160);
  if (v3)
  {

    return [v3 injectNarrowbandSARState:a2];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4030();
    }

    return 0;
  }
}

id sub_10036E5F4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10036E6E4;
  v9 = sub_10036E6F4;
  v10 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036E6FC;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t sub_10036E6E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10036E6FC(uint64_t a1)
{
  v2 = sub_10036B8A8(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10036E748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_10036E7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_10036E840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

uint64_t sub_10036E8BC(uint64_t a1)
{
  std::mutex::~mutex((a1 + 152));
  sub_10002074C(a1 + 128, *(a1 + 136));
  sub_10017AC74(a1 + 104, *(a1 + 112));
  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_10017AC74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10036E928(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC(a1 + 32, *a4, a4[1], (a4[1] - *a4) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58(a1 + 56, *a5, a5[1], (a5[1] - *a5) >> 3);
  return a1;
}

void sub_10036E9C4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036EA68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A7FC0;
  a2[1] = v2;
  return result;
}

void sub_10036EA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_10036CE88(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10036EB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036EB20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036EBDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8040;
  a2[1] = v2;
  return result;
}

uint64_t sub_10036EC14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036ECD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A80C0;
  a2[1] = v2;
  return result;
}

void sub_10036ECFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(v3 + 79) < 0)
  {
    sub_1000056BC(__s1, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *__s1 = *(v3 + 56);
    v22 = *(v3 + 72);
  }

  v4 = qword_1009F7410;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v3 + 79) < 0)
    {
      sub_1000056BC(__p, *(v3 + 56), *(v3 + 64));
    }

    else
    {
      *__p = *(v3 + 56);
      v20 = *(v3 + 72);
    }

    v5 = __p;
    if (v20 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,IsoCountry %s", buf, 0xCu);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = strlen(off_1009EC420[0]);
  v7 = v6;
  v8 = SHIBYTE(v22);
  if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
  {
    if (v6 != __s1[1])
    {
      goto LABEL_19;
    }

    if (v6 == -1)
    {
      sub_1001B96B4();
    }

    v9 = __s1[0];
  }

  else
  {
    if (v6 != SHIBYTE(v22))
    {
      goto LABEL_19;
    }

    v9 = __s1;
  }

  if (!memcmp(v9, off_1009EC420[0], v7))
  {
    goto LABEL_41;
  }

LABEL_19:
  v10 = strlen(off_1009EC438[0]);
  v11 = v10;
  if ((v8 & 0x80000000) != 0)
  {
    if (v10 != __s1[1])
    {
      goto LABEL_26;
    }

    if (v10 == -1)
    {
      sub_1001B96B4();
    }

    v12 = __s1[0];
  }

  else
  {
    if (v10 != v8)
    {
      goto LABEL_26;
    }

    v12 = __s1;
  }

  if (!memcmp(v12, off_1009EC438[0], v11))
  {
    goto LABEL_41;
  }

LABEL_26:
  v13 = strlen(off_1009EC408[0]);
  v14 = v13;
  if ((v8 & 0x80000000) != 0)
  {
    if (v13 != __s1[1])
    {
      goto LABEL_33;
    }

    if (v13 == -1)
    {
      sub_1001B96B4();
    }

    v15 = __s1[0];
  }

  else
  {
    if (v13 != v8)
    {
      goto LABEL_33;
    }

    v15 = __s1;
  }

  if (!memcmp(v15, off_1009EC408[0], v14))
  {
    goto LABEL_41;
  }

LABEL_33:
  v16 = strlen(off_1009EC430[0]);
  v17 = v16;
  if ((v8 & 0x80000000) == 0)
  {
    if (v16 == v8)
    {
      v18 = __s1;
      goto LABEL_39;
    }

LABEL_40:
    *a2 = *__s1;
    *(a2 + 16) = v22;
    return;
  }

  if (v16 != __s1[1])
  {
    goto LABEL_40;
  }

  if (v16 == -1)
  {
    sub_1001B96B4();
  }

  v18 = __s1[0];
LABEL_39:
  if (memcmp(v18, off_1009EC430[0], v17))
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_100004A08(a2, "");
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__s1[0]);
  }
}

void sub_10036EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036F008(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10036F054()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F7410 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_10036F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100372390(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NIServerHomePassiveSensingSession;
  v2 = objc_msgSendSuper2(&v5, "resourcesManager");
  v3 = v2;
  if (*(*(a1 + 32) + 72) == 1)
  {
    v4 = [v2 remote];
    [v4 didUpdateNearbyObjects:*(a1 + 40)];
  }
}

void sub_100372648()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003726F8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1003727A8()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100372858()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100372908()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1003729B8()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100372A68()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100372B18()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100372BC8()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056DAB0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100372CBC()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F7428 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F7418 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7418, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F7440 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F7430 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7430, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F7458 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F7448 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7448, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F7470 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F7460 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7460, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F7488 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F7478 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7478, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F74A0 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F7490 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7490, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F74B8 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F74A8 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74A8, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F74D0 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F74C0 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74C0, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F74E8 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F74D8 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74D8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1003732FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003733B4(id a1)
{
  v1 = [[_FindingAdvertiser alloc] _initInternal];
  v2 = qword_1009F74F0;
  qword_1009F74F0 = v1;

  v3 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
  [v3 addPayloadChangeObserver:qword_1009F74F0];
}

uint64_t sub_1003735D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003735F0(uint64_t a1)
{
  v2 = sub_1000086B0(*(a1 + 64));
  v3 = *(a1 + 32);
  v12 = 0;
  v13 = 0;
  v4 = [v3 _peerIndexReferenceForAdvertisementType:v2 outPeers:&v13 outAdvertisements:&v12];
  v5 = v13;
  v6 = v12;
  v7 = [v5 indexOfObject:*(a1 + 40)];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 32) _configureAdvertiserForType:v2 toPeer:*(a1 + 40) withAdvertisement:*(a1 + 48)];
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
    }

    else
    {
      [v5 addObject:*(a1 + 40)];
      [v6 addObject:*(a1 + 48)];
      v11 = [v5 count];
      if (v11 != [v6 count])
      {
        __assert_rtn("[_FindingAdvertiser startAdvertisingAsFinder:toPeer:withAdvertisement:]_block_invoke", "NIServerFindingDiscovery.mm", 169, "_peers.count == _advertisements.count");
      }

      *v4 = [v5 count] - 1;
      if ([*(a1 + 32) _totalPeers] == 1)
      {
        [*(a1 + 32) _startRoundRobinTimer];
      }
    }

    goto LABEL_10;
  }

  [v6 setObject:*(a1 + 48) atIndexedSubscript:v7];
  if (*v4 == v7)
  {
    v9 = [*(a1 + 32) _configureAdvertiserForType:v2 toPeer:*(a1 + 40) withAdvertisement:*(a1 + 48)];
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8);
      v8 = *(v10 + 40);
      *(v10 + 40) = v9;
LABEL_10:
    }
  }
}

void sub_1003738D4(uint64_t a1)
{
  v2 = sub_1000086B0(*(a1 + 56));
  v3 = *(a1 + 32);
  v16 = 0;
  v17 = 0;
  v4 = [v3 _peerIndexReferenceForAdvertisementType:v2 outPeers:&v17 outAdvertisements:&v16];
  v5 = v17;
  v6 = v16;
  v7 = [v5 indexOfObject:*(a1 + 40)];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v7];
    [v6 removeObjectAtIndex:v7];
    v8 = [v5 count];
    if (v8 != [v6 count])
    {
      __assert_rtn("[_FindingAdvertiser stopAdvertisingAsFinder:toPeer:]_block_invoke", "NIServerFindingDiscovery.mm", 203, "_peers.count == _advertisements.count");
    }

    *v4 = 0;
    v9 = [v5 count];
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v5 firstObject];
      v12 = [v6 firstObject];
      v13 = [v10 _configureAdvertiserForType:v2 toPeer:v11 withAdvertisement:v12];

      if (v13)
      {
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        goto LABEL_9;
      }
    }

    else
    {
      [*(a1 + 32) _resetAdvertiserForType:v2];
    }

    if (![*(a1 + 32) _totalPeers])
    {
      [*(a1 + 32) _stopRoundRobinTimer];
    }
  }

LABEL_9:
}

void sub_100373B94(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [NSString stringWithFormat:@"Advertiser singleton. Round robin timer active: %d", *(*(a1 + 32) + 16) != 0];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5 && (v6 & 1) != 0)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v5 advertisingAddressDataConnectable];
    v9 = CUPrintNSDataAddress();
    v10 = [*(*(a1 + 32) + 24) advertiseRate];
    if (v10 > 39)
    {
      if (v10 <= 44)
      {
        if (v10 == 40)
        {
          v11 = "Medium";
          goto LABEL_28;
        }

        if (v10 == 42)
        {
          v11 = "MediumMid";
          goto LABEL_28;
        }
      }

      else
      {
        switch(v10)
        {
          case '-':
            v11 = "MediumHigh";
            goto LABEL_28;
          case '2':
            v11 = "High";
            goto LABEL_28;
          case '<':
            v11 = "Max";
            goto LABEL_28;
        }
      }
    }

    else if (v10 <= 14)
    {
      if (!v10)
      {
        v11 = "Default";
        goto LABEL_28;
      }

      if (v10 == 10)
      {
        v11 = "Periodic";
        goto LABEL_28;
      }
    }

    else
    {
      switch(v10)
      {
        case 15:
          v11 = "PeriodicHigh";
          goto LABEL_28;
        case 20:
          v11 = "Background";
          goto LABEL_28;
        case 30:
          v11 = "Low";
LABEL_28:
          v14 = [NSString stringWithFormat:@"    T26 conn-addr: %@. Adv rate: %s.", v9, v11];
          [v7 addObject:v14];

          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [*(*(a1 + 32) + 24) nearbyActionNoWakeType];
          v13 = [*(*(a1 + 32) + 24) nearbyActionNoWakeAuthTagData];
          v17 = CUPrintNSDataHex();
          v18 = [*(*(a1 + 32) + 24) nearbyActionNWPrecisionFindingStatus];
          v19 = [*(*(a1 + 32) + 24) nearbyActionNoWakeConfigData];
          v20 = CUPrintNSDataHex();
          v21 = [NSString stringWithFormat:@"    T26 type: %d. ATag: 0x%@. Status: 0x%02X. Cfg: 0x%@", v16, v17, v18, v20];
          [v15 addObject:v21];

          goto LABEL_29;
      }
    }

    v11 = "?";
    goto LABEL_28;
  }

  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = [NSString stringWithFormat:@"    T26 advertiser: %d. Activated: %d", v5 != 0, v6];
  [v12 addObject:v13];
LABEL_29:

  v22 = *(a1 + 32);
  v23 = *(v22 + 40);
  v24 = *(v22 + 48);
  if (v23 && (v24 & 1) != 0)
  {
    v25 = *(*(*(a1 + 40) + 8) + 40);
    v26 = [v23 advertisingAddressData];
    v27 = CUPrintNSDataAddress();
    v28 = [*(*(a1 + 32) + 40) advertiseRate];
    if (v28 > 39)
    {
      if (v28 <= 44)
      {
        if (v28 == 40)
        {
          v29 = "Medium";
          goto LABEL_56;
        }

        if (v28 == 42)
        {
          v29 = "MediumMid";
          goto LABEL_56;
        }
      }

      else
      {
        switch(v28)
        {
          case '-':
            v29 = "MediumHigh";
            goto LABEL_56;
          case '2':
            v29 = "High";
            goto LABEL_56;
          case '<':
            v29 = "Max";
            goto LABEL_56;
        }
      }
    }

    else if (v28 <= 14)
    {
      if (!v28)
      {
        v29 = "Default";
        goto LABEL_56;
      }

      if (v28 == 10)
      {
        v29 = "Periodic";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v28)
      {
        case 15:
          v29 = "PeriodicHigh";
          goto LABEL_56;
        case 20:
          v29 = "Background";
          goto LABEL_56;
        case 30:
          v29 = "Low";
LABEL_56:
          v32 = [*(*(a1 + 32) + 40) clientIrkData];
          v33 = CUPrintNSObjectMasked();
          v34 = [*(*(a1 + 32) + 40) clientIdentifierData];
          v35 = CUPrintNSDataHex();
          v36 = [NSString stringWithFormat:@"    T19 non-conn-addr: %@. Adv rate: %s. CIRK: %@. CID: %@", v27, v29, v33, v35];
          [v25 addObject:v36];

          v37 = *(*(*(a1 + 40) + 8) + 40);
          v38 = [*(*(a1 + 32) + 40) controlFlags];
          v31 = [*(*(a1 + 32) + 40) uwbConfigData];
          v39 = CUPrintNSDataHex();
          v40 = [NSString stringWithFormat:@"    T19 control flags: 0x%08X. UWB config data: %@", v38, v39];
          [v37 addObject:v40];

          goto LABEL_57;
      }
    }

    v29 = "?";
    goto LABEL_56;
  }

  v30 = *(*(*(a1 + 40) + 8) + 40);
  v31 = [NSString stringWithFormat:@"    T19 advertiser: %d. Activated: %d", v23 != 0, v24];
  [v30 addObject:v31];
LABEL_57:

  v41 = 1;
  do
  {
    v42 = v41;
    v43 = 80;
    if (v41)
    {
      v43 = 56;
      v44 = 64;
    }

    else
    {
      v44 = 88;
    }

    if (v41)
    {
      v45 = 72;
    }

    else
    {
      v45 = 96;
    }

    if (v41)
    {
      v46 = @"T26";
    }

    else
    {
      v46 = @"T19";
    }

    v47 = *(*(a1 + 32) + v43);
    v48 = *(*(a1 + 32) + v44);
    v49 = *(*(a1 + 32) + v45);
    v50 = [v47 count];
    v51 = [v48 count];
    v52 = *(*(*(a1 + 40) + 8) + 40);
    v61 = v42;
    if (v50 == v51)
    {
      v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    %@ peers (%d)", v46, [v47 count]);
      [v52 addObject:v53];

      for (i = 0; i < [v47 count]; ++i)
      {
        v55 = *(*(*(a1 + 40) + 8) + 40);
        if (v49 == i)
        {
          v56 = [v47 objectAtIndexedSubscript:v49];
          v57 = [v56 descriptionInternal];
          v58 = [v48 objectAtIndexedSubscript:v49];
          [NSString stringWithFormat:@"      > %@: %@", v57, v58];
        }

        else
        {
          v56 = [v47 objectAtIndexedSubscript:i];
          v57 = [v56 descriptionInternal];
          v58 = [v48 objectAtIndexedSubscript:i];
          [NSString stringWithFormat:@"        %@: %@", v57, v58];
        }
        v59 = ;
        [v55 addObject:v59];
      }
    }

    else
    {
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    %@ state mismatch!!! %d peers, %d advertisements, %d current index", v46, [v47 count], objc_msgSend(v48, "count"), v49);
      [v52 addObject:v60];
    }

    v41 = 0;
  }

  while ((v61 & 1) != 0);
}

void sub_100374D74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbAdvertisingAddressChanged];
}

void sub_100374DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5238();
      }

      v9 = WeakRetained[3];
      WeakRetained[3] = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activate advertiser complete [%0.6f s]", &v10, 0xCu);
      }

      *(WeakRetained + 32) = 1;
      [*(a1 + 32) _updateAdvertisementAfterActivationForType:26];
    }
  }
}

id sub_100374F1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = "token";
    v14 = 2500;
    goto LABEL_19;
  }

  if (!v4)
  {
    v13 = "address";
    v14 = 2501;
LABEL_19:
    __assert_rtn("_getAuthTagForToken", "NIServerFindingDiscovery.mm", v14, v13);
  }

  v6 = [v3 getIRK];
  v7 = v6;
  if (v6 && [v6 length] == 16)
  {
    if (qword_1009F7508 != -1)
    {
      sub_1004C52A8();
    }

    v8 = byte_1009F7500;
    v9 = v7;
    [v7 bytes];
    if (v8 != 1)
    {
      [v5 bytes];
      [v5 length];
    }

    v10 = SipHash();
    v15 = v10;
    v16 = BYTE2(v10);
    v11 = [NSData dataWithBytes:&v15 length:3];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C52BC();
    }

    v11 = 0;
  }

  return v11;
}

void sub_1003757E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5334();
      }

      v9 = WeakRetained[5];
      WeakRetained[5] = 0;

      v10 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v10 setFindingEnabled:0];

      v11 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v11 commitChange];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activate advertiser complete [%0.6f s]", &v12, 0xCu);
      }

      *(WeakRetained + 48) = 1;
      [*(a1 + 32) _updateAdvertisementAfterActivationForType:19];
    }
  }
}

void sub_100375D2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _roundRobinTimerHandler];
}

void sub_100375FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003761C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100376C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_100376D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbInterruptionHandler];
}

void sub_100376DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbErrorHandler:v3];
}

void sub_100376E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbBluetoothStateChangedHandler];
}

void sub_100376E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C53A4();
      }

      v9 = *(WeakRetained + 8);
      *(WeakRetained + 8) = 0;
      goto LABEL_6;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,Activate controller complete [%0.6f s]", &v10, 0xCu);
    }

    *(WeakRetained + 72) = 1;
    [WeakRetained _cbBluetoothStateChangedHandler];
    if (*(WeakRetained + 72) == 1 && *(WeakRetained + 88) == 1)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 5);
      [v9 bluetoothDiscoveryFinishedActivating];
LABEL_6:
    }
  }
}

void sub_100376FD8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10037700C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbAdvertisingAddressChangedHandler];
}

void sub_100377068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5414();
      }

      v9 = *(WeakRetained + 10);
      *(WeakRetained + 10) = 0;
      goto LABEL_6;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,Activate address observer complete [%0.6f s]", &v10, 0xCu);
    }

    *(WeakRetained + 88) = 1;
    [WeakRetained _cbAdvertisingAddressChangedHandler];
    if (*(WeakRetained + 72) == 1 && *(WeakRetained + 88) == 1)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 5);
      [v9 bluetoothDiscoveryFinishedActivating];
LABEL_6:
    }
  }
}

void sub_1003771B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100377314(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[_FindingAdvertiser sharedInstance];
  v4 = [v3 stopAdvertisingAsFinder:*(*(a1 + 32) + 32) toPeer:v5];
}

void sub_100377794(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_100377808(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    dispatch_source_cancel(v5);
    [*(a1 + 40) addObject:v6];
  }
}

void sub_100377BD0(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained didUpdateAdvertisement:a1[5] toSendOOBToPeer:a1[6]];
}

void sub_100378354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained didLosePeer:*(a1 + 40)];
}

void sub_100378DF4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 144), 8);

  _Unwind_Resume(a1);
}

const char *sub_100378ED4(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1009A8568[a1];
  }
}

void sub_100378EF8(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = [NSString stringWithFormat:@"        %@: %@", v6, v8];
  [v5 addObject:v7];
}

void sub_100378FCC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = sub_1003465F0(v9);
  v8 = [NSString stringWithFormat:@"        %@: %@", v6, v7];
  [v5 addObject:v8];
}

void sub_1003790BC(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = [NSString stringWithFormat:@"        %@: %@", v6, v8];
  [v5 addObject:v7];
}

void sub_100379E84(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 168) objectForKey:?];
  v4 = [v3 copy];

  [v4 setAddress:*(a1 + 40) | (*(a1 + 44) << 32)];
  [*(*(a1 + 32) + 168) setObject:v4 forKey:v5];
}

void sub_100379F4C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[_FindingAdvertiser sharedInstance];
  v7 = [v6 startAdvertisingAsFinder:*(*(a1 + 32) + 32) toPeer:v8 withAdvertisement:v5];
}

void sub_10037A5A4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_new();
  [v3 setKeyType:1];
  v4 = [v6 getIRK];
  [v3 setIrkData:v4];

  v5 = sub_100346F54(v6);
  [v3 setBtAddressData:v5];

  [*(a1 + 32) addObject:v3];
}

void sub_10037A7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained[17] count] && (objc_msgSend(v2[12], "discoveryFlags") & 0x200100000) != 0)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: disabling scan dupes", v5, 2u);
      }

      [v2[12] setDiscoveryFlags:{objc_msgSend(v2[12], "discoveryFlags") & 0xFFFFFFFDFFEFFFFFLL}];
    }

    v4 = v2[15];
    v2[15] = 0;
  }
}

void sub_10037AD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbDeviceFoundHandler:v3];
}

void sub_10037AD80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = v4 - v5;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C57C8();
      }

      v9 = v7[12];
      v7[12] = 0;
    }

    else
    {
      *(WeakRetained + 112) = 1;
      v10 = [WeakRetained _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers];
      [v7[12] setOobKeys:v10];

      if (![v7[17] count])
      {
        [v7 _nearbyActionNoWakeDisableScanDupesIfNecessary];
      }

      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v7[12];
        v14 = 134218243;
        v15 = v8;
        v16 = 2113;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activated scanner [%0.6f s]: %{private}@", &v14, 0x16u);
      }

      v9 = qword_1009F9820;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7[12] discoveredDevices];
        v14 = 138477827;
        v15 = *&v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: discovered devices after activating scanner: %{private}@", &v14, 0xCu);
      }
    }
  }
}

void sub_10037B2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbDeviceFoundHandler:v3];
}

void sub_10037B32C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = v4 - v5;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5838();
      }

      v9 = v7[13];
      v7[13] = 0;

      v10 = v7[23];
      v7[23] = 0;
    }

    else
    {
      *(WeakRetained + 112) = 1;
      v11 = +[NSDate now];
      v12 = v7[23];
      v7[23] = v11;

      v13 = v7[16];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10037B50C;
      v16[3] = &unk_10099EEB0;
      v16[4] = v7;
      [v13 enumerateObjectsUsingBlock:v16];
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v7[13];
        *buf = 134218243;
        v18 = v8;
        v19 = 2113;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activated scanner [%0.6f s]: %{private}@", buf, 0x16u);
      }
    }
  }
}

void sub_10037B50C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(*(a1 + 32) + 104);
  v6 = [v3 rawToken];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10037B604;
  v8[3] = &unk_1009A06B8;
  v10 = v4;
  v7 = v3;
  v9 = v7;
  [v5 addPeerToken:v6 completion:v8];
}

void sub_10037B604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288() - *(a1 + 40);
  v5 = qword_1009F9820;
  if (v3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C58A8();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138478083;
    v8 = v6;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: added %{private}@ to scanner [%0.6f s]", &v7, 0x16u);
  }
}

void sub_10037BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v24 = v23;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10037BAA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = sub_100346F54(v6);
  v4 = [v6 getIRK];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v5, "btAd", [v3 bytes], objc_msgSend(v3, "length"));
  xpc_dictionary_set_data(v5, "irkD", [v4 bytes], objc_msgSend(v4, "length"));
  xpc_dictionary_set_uint64(v5, "irkT", 1uLL);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL, v5);
}

void sub_10037BDE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[22] removeObjectForKey:*(a1 + 32)];
    v3 = [v6[21] objectForKey:*(a1 + 32)];

    WeakRetained = v6;
    if (v3)
    {
      v4 = [v6 stopAdvertisingToPeer:*(a1 + 32)];
      v5 = objc_loadWeakRetained(v6 + 5);
      [v5 didStopAdvertisingToPeer:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

void sub_10037C070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[19] removeObjectForKey:*(a1 + 32)];
    v3 = [v5[17] objectForKey:*(a1 + 32)];

    [v5 _resetDiscoveryStateForPeer:*(a1 + 32)];
    WeakRetained = v5;
    if (v3)
    {
      v4 = objc_loadWeakRetained(v5 + 5);
      [v4 didLosePeer:*(a1 + 32)];

      WeakRetained = v5;
    }
  }
}

void sub_10037C3C4(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [*(a1 + 32) btAddressData];
  v7 = sub_100374F1C(v10, v6);

  v8 = [*(a1 + 32) nearbyActionNoWakeAuthTagData];
  v9 = [v7 isEqualToData:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10037C750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10037D258(_Unwind_Exception *a1)
{
  if (!v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10037D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10037DF5C(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10037E09C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_10037E450(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
}

char **sub_10037E0D4(char **result, char **a2)
{
  if (result != a2)
  {
    return sub_10037E4CC(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void sub_10037E1B0(id a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_1009F7500 = [v1 BOOLForKey:@"FindingTestModeStaticAuthTag"];

    v2 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7[0] = 67109120;
    v7[1] = byte_1009F7500;
    v3 = "#find-disc,Static tag test mode: %d";
    v4 = v2;
    v5 = 8;
  }

  else
  {
    byte_1009F7500 = 0;
    v6 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v7[0]) = 0;
    v3 = "#find-disc,Static tag test mode never allowed";
    v4 = v6;
    v5 = 2;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, v7, v5);
}

void sub_10037E2F4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1009F7518 = [v1 BOOLForKey:@"FindingDisableClientDiscoveryEvents"];

  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1009F7518;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-disc,Disable client discovery events: %d", v3, 8u);
  }
}

uint64_t sub_10037E3DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10037E434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10037E450(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10037E4B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10037E4CC(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_10004F5E0(v6, v10);
    }

    sub_100019B38();
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

void sub_10037EC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a12 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100380CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_10029B230(&a41);
  sub_10002074C(&STACK[0x278], STACK[0x280]);

  STACK[0x440] = &STACK[0x310];
  sub_10038C574(&STACK[0x440]);

  _Unwind_Resume(a1);
}

void sub_100381238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  operator delete();
}

void sub_1003814EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1009F7960);

  _Unwind_Resume(a1);
}

void sub_1003833DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100383530(int a1)
{
  sub_10026B0D4(&v4);
  v2 = v4;
  *(&v6[0].__locale_ + *(v4 - 3)) = a1;
  *(&v4 + *(v2 - 3) + 8) = *(&v4 + *(v2 - 3) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003836F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_100384740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100384FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, char a47)
{
  sub_10038C500(&a16);

  a16 = v50 - 168;
  sub_10038E8C0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1003850A0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10038EA0C(a1, a2);
  }

  else
  {
    sub_10038E964(a1, a2);
    result = v3 + 248;
  }

  a1[1] = result;
  return result;
}

void *sub_100385D00()
{
  if ((atomic_load_explicit(&qword_1009EC1C0, memory_order_acquire) & 1) == 0)
  {
    sub_1004C5F84();
  }

  return &unk_1009EC1B8;
}

void sub_100385E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100385FA0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10040E500();

    operator delete();
  }

  return result;
}

uint64_t *sub_100385FEC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 984);
    if (v3)
    {
      sub_10000AD84(v3);
    }

    sub_10038F4A4((v2 + 928));
    *(v2 + 824) = off_1009991A0;
    *(v2 + 656) = off_1009991A0;
    *(v2 + 584) = off_1009991A0;
    *(v2 + 384) = off_1009991A0;
    *(v2 + 312) = off_1009991A0;
    sub_10002074C(v2 + 272, *(v2 + 280));
    sub_10002074C(v2 + 248, *(v2 + 256));
    sub_1001B3D00((v2 + 176));
    sub_10038F4A4((v2 + 128));
    sub_100021914(v2 + 48);
    sub_100021914(v2 + 8);

    operator delete();
  }

  return result;
}

void sub_100387B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100387C80()
{
  sub_100193120(v2);
  *(&v2[2] + *(v2[0] - 3)) = 4;
  std::ostream::operator<<();
  std::stringbuf::str();
  v2[2] = v0;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  std::locale::~locale(v4);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100387E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100387FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10038B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10038B85C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_10038BFE4(_Unwind_Exception *a1)
{
  sub_10002074C(v1, *(v1 + 8));

  _Unwind_Resume(a1);
}

uint64_t sub_10038C4A8(uint64_t a1)
{
  if (*(a1 + 520) == 1 && *(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  sub_10002074C(a1 + 440, *(a1 + 448));
  sub_10002074C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10038C500(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      *(a1 + 176) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 144);
    if (v3)
    {
      *(a1 + 152) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 120);
    if (v4)
    {
      *(a1 + 128) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_10038C574(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038C5C8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038C5C8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10038C618(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100019B38();
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

  v19 = a1;
  if (v6)
  {
    sub_10038C760(a1, v6);
  }

  v7 = 48 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 20);
  *(v7 + 24) = v9;
  *&v18 = 48 * v2 + 48;
  v10 = *(a1 + 8);
  v11 = 48 * v2 + *a1 - v10;
  sub_10038C7B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10038C8FC(&v16);
  return v15;
}

void sub_10038C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038C8FC(va);
  _Unwind_Resume(a1);
}

void sub_10038C760(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10038C7B8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 20);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return sub_10038C87C(v10);
}

uint64_t sub_10038C87C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038C8B4(a1);
  }

  return a1;
}

void sub_10038C8B4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_10038C8FC(uint64_t a1)
{
  sub_10038C934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10038C934(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_10038C990(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10038C9E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10038C9E8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001BD130(v5, v5 + 1, v4 + 7);
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

uint64_t sub_10038CA70(uint64_t a1)
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

uint64_t sub_10038CAF0(uint64_t a1)
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

uint64_t sub_10038CB70(uint64_t a1)
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

uint64_t sub_10038CBF0(uint64_t a1)
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

uint64_t sub_10038CC70(uint64_t a1)
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

void sub_10038CD1C(uint64_t a1)
{

  operator delete();
}

id sub_10038CDD0(uint64_t a1, void *a2)
{
  *a2 = off_1009A85D0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038CE20(id *a1)
{

  operator delete(a1);
}

void sub_10038CE5C(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t *a7, unsigned __int8 *a8)
{
  v8 = *a2;
  v9 = *a3;
  LOBYTE(v33[0]) = 0;
  v37 = 0;
  if (*(a4 + 48) == 1)
  {
    *v33 = *a4;
    v34 = *(a4 + 16);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    v35 = *(a4 + 24);
    v36 = *(a4 + 40);
    v37 = 1;
  }

  LOBYTE(__p[0]) = 0;
  v32 = 0;
  if (*(a5 + 48) == 1)
  {
    *__p = *a5;
    v29 = *(a5 + 16);
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    v30 = *(a5 + 24);
    v31 = *(a5 + 40);
    v32 = 1;
  }

  v25 = a6[12];
  v26 = a6[13];
  v27 = a6[14];
  v21 = a6[8];
  v22 = a6[9];
  v23 = a6[10];
  v24 = a6[11];
  v17 = a6[4];
  v18 = a6[5];
  v19 = a6[6];
  v20 = a6[7];
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v10 = *a7;
  v11 = *a8;
  v12 = *(a1 + 8);
  sub_100012FB4(__dst, v33);
  sub_100012FB4(v39, __p);
  v38[12] = v25;
  v38[13] = v26;
  v38[14] = v27;
  v38[8] = v21;
  v38[9] = v22;
  v38[10] = v23;
  v38[11] = v24;
  v38[4] = v17;
  v38[5] = v18;
  v38[6] = v19;
  v38[7] = v20;
  v38[0] = v13;
  v38[1] = v14;
  v38[2] = v15;
  v38[3] = v16;
  [v12 _handleRegionChangeForDevice:v9 currentRegion:__dst prevRegion:v39 timestamp:v38 rangeResult:v10 intentPrediction:v11 regionTransitionSuppressed:v8];
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v32 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 == 1 && SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_10038D064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (*(v59 - 128) == 1 && *(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (*(v59 - 72) == 1 && *(v59 - 97) < 0)
  {
    operator delete(*(v59 - 120));
  }

  if (a48 == 1 && a44 < 0)
  {
    operator delete(__p);
  }

  if (a59 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038D0F0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A8640))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10038D168(uint64_t a1)
{

  operator delete();
}

id sub_10038D21C(uint64_t a1, void *a2)
{
  *a2 = off_1009A8660;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038D26C(id *a1)
{

  operator delete(a1);
}

void sub_10038D2A8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, double *a4, unsigned int *a5, __int128 *a6, unsigned int *a7)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  LOBYTE(v13) = 0;
  v15 = 0;
  if (*(a6 + 24) == 1)
  {
    v13 = *a6;
    v14 = *(a6 + 2);
    *(a6 + 1) = 0;
    *(a6 + 2) = 0;
    *a6 = 0;
    v15 = 1;
  }

  else if (v7)
  {
    __assert_rtn("operator()", "NIServerNearbyUpdatesEngine.mm", 521, "regionsVector.has_value()");
  }

  v11 = *a7;
  v12 = *(a1 + 8);
  sub_10038D458(v16, &v13);
  [v12 _handleDeviceMonitorActivation:v7 forDevice:v8 timestamp:v10 regionSizeCategory:v16 regions:v11 predictorType:{v9, v13}];
  if (v17 == 1)
  {
    v18 = v16;
    sub_10038C574(&v18);
  }

  if (v15 == 1)
  {
    v16[0] = &v13;
    sub_10038C574(v16);
  }
}

void sub_10038D3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t *a18)
{
  if (a17 == 1)
  {
    a18 = &a14;
    sub_10038C574(&a18);
  }

  if (a12 == 1)
  {
    a18 = &a9;
    sub_10038C574(&a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038D40C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A86D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038D458(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10038D4B4(a1, a2);
  return a1;
}

void sub_10038D490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_10038C574(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038D4B4(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10038D514(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_10038D514(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038D59C(result, a4);
  }

  return result;
}

void sub_10038D57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10038C574(&a9);
  _Unwind_Resume(a1);
}

void sub_10038D59C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10038C760(a1, a2);
  }

  sub_100019B38();
}

char *sub_10038D5E8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 20) = *(v6 + 20);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_10038C87C(v11);
  return v4;
}

void sub_10038D6E8(uint64_t a1)
{

  operator delete();
}

id sub_10038D79C(uint64_t a1, void *a2)
{
  *a2 = off_1009A86F0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038D7EC(id *a1)
{

  operator delete(a1);
}

id sub_10038D828(uint64_t a1, double *a2, uint64_t *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a4[13];
  v14[12] = a4[12];
  v14[13] = v6;
  v14[14] = a4[14];
  v7 = a4[9];
  v14[8] = a4[8];
  v14[9] = v7;
  v8 = a4[11];
  v14[10] = a4[10];
  v14[11] = v8;
  v9 = a4[5];
  v14[4] = a4[4];
  v14[5] = v9;
  v10 = a4[7];
  v14[6] = a4[6];
  v14[7] = v10;
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v12 = a4[3];
  v14[2] = a4[2];
  v14[3] = v12;
  return [*(a1 + 8) _handleBoundedRegionRange:v5 forDevice:v14 rangeResult:v4];
}

uint64_t sub_10038D8A0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A8760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038D8EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038D984(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DA1C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DAB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DB4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DBE4(uint64_t a1)
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

uint64_t sub_10038DC64(uint64_t a1)
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

uint64_t sub_10038DCE4(uint64_t a1)
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

void *sub_10038DD64(void *a1, unint64_t *a2)
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

void sub_10038DFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10038DFD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10038DFD8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100385FA0(v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10038E028(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 576);
    sub_10038E148(&v6);
    sub_10004EDBC((v2 + 504));
    v3 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v3)
    {
      v3[21] = off_1009991A0;
      v3[13] = off_1009991A0;
      v3[5] = off_1009991A0;
      operator delete();
    }

    if (*(v2 + 128) == 1)
    {
      v4 = *(v2 + 96);
      if (v4)
      {
        *(v2 + 104) = v4;
        operator delete(v4);
      }
    }

    v5 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v5)
    {
      sub_10038E1EC(v5);
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_10038E148(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E19C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E19C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 73);
    v3 -= 12;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10038E1EC(uint64_t a1)
{
  *(a1 + 856) = off_1009991A0;
  *(a1 + 776) = off_1009991A0;
  v7 = (a1 + 712);
  sub_10038E378(&v7);
  v7 = (a1 + 688);
  sub_10038E3D0(&v7);
  v7 = (a1 + 664);
  sub_10038E378(&v7);
  *(a1 + 536) = off_1009991A0;
  *(a1 + 472) = off_1009991A0;
  *(a1 + 336) = off_1009991A0;
  *(a1 + 264) = off_1009991A0;
  *(a1 + 192) = off_1009991A0;
  v7 = (a1 + 168);
  sub_10038E448(&v7);
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_10038E378(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = off_1009991A0;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_10038E3D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 14) = off_1009991A0;
        *(v3 - 22) = off_1009991A0;
        v4 -= 208;
        v3 -= 208;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_10038E448(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E49C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10038E49C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = off_1009991A0;
      *(v4 - 192) = off_1009991A0;
      *(v2 + v3 - 304) = off_1009991A0;
      *(v2 + v3 - 368) = off_1009991A0;
      *(v2 + v3 - 432) = off_1009991A0;
      v3 -= 432;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10038E568(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038E5F0(result, a4);
  }

  return result;
}

void sub_10038E5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10038E814(&a9);
  _Unwind_Resume(a1);
}

void sub_10038E5F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    sub_10038E63C(a1, a2);
  }

  sub_100019B38();
}

void sub_10038E63C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10038E694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_100009A48(v4, *v6, *(v6 + 8), *(v6 + 8) - *v6);
      *(v4 + 24) = *(v6 + 24);
      v7 = *(v6 + 40);
      v8 = *(v6 + 56);
      v9 = *(v6 + 72);
      *(v4 + 88) = *(v6 + 88);
      *(v4 + 72) = v9;
      *(v4 + 56) = v8;
      *(v4 + 40) = v7;
      v10 = *(v6 + 104);
      v11 = *(v6 + 120);
      v12 = *(v6 + 136);
      *(v4 + 152) = *(v6 + 152);
      *(v4 + 136) = v12;
      *(v4 + 120) = v11;
      *(v4 + 104) = v10;
      v6 += 160;
      v4 = v17 + 160;
      v17 += 160;
    }

    while (v6 != a3);
  }

  v15 = 1;
  sub_10038E78C(v14);
  return v4;
}

uint64_t sub_10038E78C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038E7C4(a1);
  }

  return a1;
}

void sub_10038E7C4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 160);
      v3 -= 160;
      v4 = v5;
      if (v5)
      {
        *(v1 - 152) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_10038E814(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E868(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E868(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 160);
      v4 -= 160;
      v5 = v6;
      if (v6)
      {
        *(v2 - 152) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_10038E8C0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E914(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E914(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 248)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10038E964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 192);
  *(v3 + 201) = *(a2 + 201);
  *(v3 + 176) = v12;
  *(v3 + 192) = v13;
  *(v3 + 160) = v11;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 224) = 0;
  result = sub_10038EBB8(v3 + 224, *(a2 + 224), *(a2 + 232), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 232) - *(a2 + 224)) >> 4));
  *(a1 + 8) = v3 + 248;
  return result;
}

uint64_t sub_10038EA0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_100019B38();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    sub_10038ECE0(a1, v6);
  }

  v7 = 248 * v2;
  v24 = 0;
  v25 = v7;
  v26 = 248 * v2;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v10;
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  v13 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v13;
  *(v7 + 96) = v11;
  *(v7 + 112) = v12;
  v14 = *(a2 + 160);
  v15 = *(a2 + 176);
  v16 = *(a2 + 192);
  *(v7 + 201) = *(a2 + 201);
  *(v7 + 176) = v15;
  *(v7 + 192) = v16;
  *(v7 + 160) = v14;
  v17 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v17;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 224) = 0;
  sub_10038EBB8(248 * v2 + 224, *(a2 + 224), *(a2 + 232), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 232) - *(a2 + 224)) >> 4));
  *&v26 = v26 + 248;
  v18 = a1[1];
  v19 = v25 + *a1 - v18;
  sub_10038ED3C(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_10038EEB8(&v24);
  return v23;
}

void sub_10038EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038EEB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10038EBB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038EC34(result, a4);
  }

  return result;
}

void sub_10038EC18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038EC34(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10038EC84(a1, a2);
  }

  sub_100019B38();
}

void sub_10038EC84(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_10038ECE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10038ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v10;
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      v11 = *(v6 + 96);
      v12 = *(v6 + 112);
      v13 = *(v6 + 144);
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = v13;
      *(a4 + 96) = v11;
      *(a4 + 112) = v12;
      v14 = *(v6 + 160);
      v15 = *(v6 + 176);
      v16 = *(v6 + 192);
      *(a4 + 201) = *(v6 + 201);
      *(a4 + 176) = v15;
      *(a4 + 192) = v16;
      *(a4 + 160) = v14;
      *(a4 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 224) = 0;
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = *(v6 + 240);
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(v6 + 240) = 0;
      v6 += 248;
      a4 += 248;
    }

    while (v6 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      v17 = *(v5 + 224);
      if (v17)
      {
        *(v5 + 232) = v17;
        operator delete(v17);
      }

      v5 += 248;
    }
  }

  return sub_10038EE38(v19);
}

uint64_t sub_10038EE38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038EE70(a1);
  }

  return a1;
}

void sub_10038EE70(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 248;
  }
}

uint64_t sub_10038EEB8(uint64_t a1)
{
  sub_10038EEF0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10038EEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 248;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 248;
    }
  }
}

void sub_10038EF50(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 24);

  sub_10002074C(a1 + 16, v2);
}

uint64_t *sub_10038EFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10038F064();
  }

  v3 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 5);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10038F15C(_Unwind_Exception *a1)
{
  sub_10002074C(v2 + 48, *(v2 + 56));
  sub_10038F184(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10038F184(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10038EF50(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10038F1D0(void *a1, double *a2, uint64_t a3)
{
  v3 = *sub_10038F264(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_10038F064();
  }

  return v3;
}

double *sub_10038F264(void *a1, double *a2, double **a3, double *a4, uint64_t a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *(a5 + 8), v7 = a2[5], v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *(a5 + 8);
    if (v10[5] < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[5];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[5])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[5];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_10038F400(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10038F45C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10038F45C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100385FA0(v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10038F4A4(void *a1)
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
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void *sub_10038F550(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10038F61C(uint64_t a1)
{
  sub_10038F45C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10038F660()
{
  v0 = objc_autoreleasePoolPush();
  sub_100004A08(&qword_1009F7520, "/System/Library/NearbyInteractionBundles");
  __cxa_atexit(&std::string::~string, &qword_1009F7520, &_mh_execute_header);
  sub_100004A08(&qword_1009F7538, "BiasEstimatorResourceBundle.bundle");
  __cxa_atexit(&std::string::~string, &qword_1009F7538, &_mh_execute_header);
  v7 = xmmword_10056DBE8;
  v8[0] = unk_10056DBF8;
  sub_1001BD0B0(qword_1009F7550, &v7, 4);
  xmmword_1009F7568 = xmmword_100563BD0;
  *&qword_1009F7578 = xmmword_100563BE0;
  qword_1009F7590 = 0;
  unk_1009F7598 = 0;
  qword_1009F7588 = 0x3FD999999999999ALL;
  unk_1009F75A0 = xmmword_100563BF0;
  dword_1009F75B0 = 5;
  qword_1009F75B8 = 0x4000000000000000;
  LODWORD(qword_1009F75C0) = 5;
  byte_1009F75C8 = 0;
  unk_1009F75CC = 0x30000000ALL;
  xmmword_1009F75D8 = xmmword_100563C00;
  unk_1009F75E8 = xmmword_100563C10;
  xmmword_1009F75F8 = xmmword_100563C20;
  qword_1009F7608 = 0x3FE3333333333333;
  dword_1009F7610 = 3;
  xmmword_1009F7618 = xmmword_100563C30;
  unk_1009F7628 = xmmword_100563C10;
  xmmword_1009F7638 = xmmword_100563C00;
  qword_1009F7648 = 0x3FE3333333333333;
  LOBYTE(qword_1009F7650) = 0;
  xmmword_1009F7658 = xmmword_100563C40;
  unk_1009F7668 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7678 = _Q0;
  qword_1009F7688 = 0xBFD3333333333333;
  xmmword_1009F7690 = xmmword_100563C60;
  qword_1009F76A0 = 0x3E99999A40000000;
  xmmword_1009F76A8 = xmmword_100563BE0;
  qword_1009F76C0 = 0;
  unk_1009F76C8 = 0;
  qword_1009F76B8 = 0x3FD999999999999ALL;
  xmmword_1009F76D0 = xmmword_100563BF0;
  dword_1009F76E0 = 5;
  qword_1009F76E8 = 0x4000000000000000;
  dword_1009F76F0 = 4;
  *&xmmword_1009F76F8 = 0x300000008;
  *(&xmmword_1009F76F8 + 1) = 0xC04E800000000000;
  v10 = 0xC04E800000000000;
  sub_1001BD370(algn_1009F7708, &v10, 1);
  xmmword_1009F7720 = xmmword_100563C70;
  qword_1009F7730 = 0x4024000000000000;
  dword_1009F7738 = 45;
  LOBYTE(byte_1009F7740) = 0;
  byte_1009F7758 = 0;
  *&xmmword_1009F7760 = 0;
  BYTE8(xmmword_1009F7760) = 0;
  HIDWORD(xmmword_1009F7760) = 1;
  byte_1009F7770 = 1;
  xmmword_1009F7778 = xmmword_100563C80;
  xmmword_1009F7788 = xmmword_100563C90;
  xmmword_1009F7798 = v6;
  qword_1009F77A8 = 0xC059000000000000;
  xmmword_1009F77B0 = xmmword_100563CA0;
  *&xmmword_1009F77C0 = vdup_n_s32(0x3DCCCCCDu);
  *(&xmmword_1009F77C0 + 8) = xmmword_100563BE0;
  qword_1009F77D8 = 0x3FD999999999999ALL;
  xmmword_1009F77E0 = 0u;
  unk_1009F77F0 = xmmword_100563BF0;
  LODWORD(xmmword_1009F7800) = 5;
  *(&xmmword_1009F7800 + 1) = 0x4000000000000000;
  dword_1009F7810 = 10;
  qword_1009F7818 = 0x4034000000000000;
  LODWORD(xmmword_1009F7820) = 3;
  *(&xmmword_1009F7820 + 8) = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F7550, &_mh_execute_header);
  __cxa_atexit(nullsub_73, off_1009EC1A8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC1B0, &_mh_execute_header);
  v7 = xmmword_10056DC08;
  v8[0] = unk_10056DC18;
  v8[1] = xmmword_10056DC28;
  v8[2] = unk_10056DC38;
  qword_1009F7840 = 0;
  unk_1009F7848 = 0;
  qword_1009F7838 = 0;
  sub_10004EEB8(&qword_1009F7838, &v7, &v9, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7838, &_mh_execute_header);
  v7 = xmmword_10056DC48;
  qword_1009F7858 = 0;
  unk_1009F7860 = 0;
  qword_1009F7850 = 0;
  sub_10004EEB8(&qword_1009F7850, &v7, v8, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7850, &_mh_execute_header);
  *&v7 = "AntennaMask_1_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  *(&v7 + 1) = "net";
  sub_1002EB624(byte_1009F7868, &v7);
  v10 = "AntennaMask_2_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  v11 = "net";
  sub_1002EB624(byte_1009F7898, &v10);
  __cxa_atexit(sub_1002D901C, byte_1009F7868, &_mh_execute_header);
  *&v7 = "AntennaMask_1_NN_V5_ScalingModel_DeviceType_201";
  *(&v7 + 1) = "mlmodelc";
  sub_1002EB624(byte_1009F78C8, &v7);
  v10 = "AntennaMask_2_NN_V5_ScalingModel_DeviceType_201";
  v11 = "mlmodelc";
  sub_1002EB624(byte_1009F78F8, &v10);
  __cxa_atexit(sub_1002D901C, byte_1009F78C8, &_mh_execute_header);
  sub_100004A08(byte_1009F7928, "input_1");
  __cxa_atexit(&std::string::~string, byte_1009F7928, &_mh_execute_header);
  sub_100004A08(byte_1009F7940, "Identity");
  __cxa_atexit(&std::string::~string, byte_1009F7940, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10038FE50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100391850(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100391FF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100392A48(id a1)
{
  v1 = objc_alloc_init(PRGlobalDebugSettings);
  v2 = qword_1009F7968;
  qword_1009F7968 = v1;
}

void sub_100394318(char *a1@<X0>, std::string *a2@<X8>)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [NSMutableString stringWithString:v5];
  v7 = objc_alloc_init(NSDateFormatter);
  v8 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6904(v11);
    }

    v12 = sub_100005288();
    std::to_string(&v21, v12);
    sub_100175684(a1, &v21.__r_.__value_.__l.__data_, &__p);
    v13 = std::string::append(&__p, ".protobuf.log");
    *a2 = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    [v7 setLocale:v8];
    [v7 setDateFormat:@"yyyy_MM_dd_HH_mm_ss"];
    v14 = [NSTimeZone timeZoneWithName:@"UTC"];
    [v7 setTimeZone:v14];

    v15 = +[NSDate date];
    v16 = [v7 stringFromDate:v15];

    [v6 appendString:v16];
    [v6 appendString:@".protobuf.log"];
    v17 = [v6 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100013AEC();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&a2->__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(a2, v17, v18);
    }

    a2->__r_.__value_.__s.__data_[v19] = 0;
  }
}

id sub_100394AE8(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a2 = [v5 intValue];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = off_1009A8978[v6];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %d", &v10, 0x1Cu);
  }

  return a2;
}

id sub_100394C68(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    a2 = [v4 BOOLForKey:v3];
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = off_1009A8978[v5 != 0];
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %d", &v9, 0x1Cu);
  }

  return a2;
}

double sub_100394DC0(void *a1, double a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
    a2 = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v9 = off_1009A8978[v7];
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %f", &v11, 0x20u);
  }

  return a2;
}

id sub_1003958A8()
{
  result = [objc_allocWithZone(type metadata accessor for AONSenseSampleProvider()) init];
  static AONSenseSampleProvider.shared = result;
  return result;
}

id AONSenseSampleProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *AONSenseSampleProvider.shared.unsafeMutableAddressor()
{
  if (qword_1009F7978 != -1)
  {
    swift_once();
  }

  return &static AONSenseSampleProvider.shared;
}

id static AONSenseSampleProvider.shared.getter()
{
  if (qword_1009F7978 != -1)
  {
    swift_once();
  }

  v1 = static AONSenseSampleProvider.shared;

  return v1;
}

uint64_t AONSenseSampleProvider.register(queue:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  v7 = *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  v8 = *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout + 8];
  *v6 = a2;
  *(v6 + 1) = a3;

  sub_1000085A8(v7);
  v9 = type metadata accessor for ALFBtAdvResultsRequester();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a1;
  v13 = ALFBtAdvResultsRequester.init(queue:)();
  v14 = *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense];
  *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense] = v13;

  *(swift_allocObject() + 16) = v4;
  v15 = v4;
  dispatch thunk of ALFBtAdvResultsRequester.register(callback:intervalSec:)();
}

id AONSenseSampleProvider.init()()
{
  Logger.init(subsystem:category:)();
  v1 = &v0[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AONSenseSampleProvider();
  return objc_msgSendSuper2(&v3, "init");
}

id AONSenseSampleProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AONSenseSampleProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AONSenseSampleProvider()
{
  result = qword_1009F7990;
  if (!qword_1009F7990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100395ED0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100395F74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100395FBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003967E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100396EA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100396088(v11);
  return v7;
}

uint64_t sub_100396088(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

const char *sub_1003960EC(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  if (a1 <= 8193)
  {
    switch(a1)
    {
      case 0:
        return "Invalid";
      case 614:
        return "ATVRemote1,1";
      case 621:
        return "ATVRemote1,2";
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      result = "AirPods1,1";
      break;
    case 8195:
      result = "PowerBeats3,1";
      break;
    case 8197:
      result = "BeatsX1,1";
      break;
    case 8198:
      result = "BeatsSolo3,1";
      break;
    case 8201:
      result = "BeatsStudio3,2";
      break;
    case 8202:
      result = "Device1,8202";
      break;
    case 8203:
      result = "PowerbeatsPro1,1";
      break;
    case 8204:
      result = "BeatsSoloPro1,1";
      break;
    case 8205:
      result = "Powerbeats4,1";
      break;
    case 8206:
      result = "AirPodsPro1,1";
      break;
    case 8207:
      result = "AirPods1,3";
      break;
    case 8208:
      result = "Device1,8208";
      break;
    case 8209:
      result = "BeatsStudioBuds1,1";
      break;
    case 8210:
      result = "Device1,8210";
      break;
    case 8211:
      result = "Device1,8211";
      break;
    case 8212:
      result = "Device1,8212";
      break;
    case 8213:
      result = "Device1,8213";
      break;
    case 8214:
      result = "BeatsStudioBuds1,2";
      break;
    case 8215:
      result = "BeatsStudioPro1,1";
      break;
    case 8216:
      result = "Device1,8216";
      break;
    case 8217:
      result = "Device1,8217";
      break;
    case 8218:
      result = "Device1,8218";
      break;
    case 8219:
      result = "Device1,8219";
      break;
    case 8220:
      result = "Device1,8220";
      break;
    case 8221:
      result = "Powerb3,1";
      break;
    case 8222:
      result = "Device1,8222";
      break;
    case 8223:
      result = "Device1,8223";
      break;
    case 8224:
      result = "Device1,8224";
      break;
    case 8228:
      result = "Device1,8228";
      break;
    case 8229:
      result = "Device1,8229";
      break;
    case 8230:
      result = "Device1,8230";
      break;
    case 8231:
      result = "AirPods3,4";
      break;
    case 8232:
      result = "Device1,8232";
      break;
    case 8233:
      result = "Device1,8233";
      break;
    case 8239:
      result = "Device1,8239";
      break;
    default:
      return "?";
  }

  return result;
}

id sub_100396430(uint64_t a1)
{
  if (a1 > 619)
  {
    if (a1 <= 799)
    {
      if (a1 > 776)
      {
        if (a1 <= 780)
        {
          if (a1 == 777)
          {
            v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v3 = v2;
            v4 = @"apple_wireless_mouse";
            goto LABEL_49;
          }

          if (a1 != 780)
          {
            goto LABEL_68;
          }

          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_mighty_mouse";
LABEL_49:
          v5 = [v2 localizedStringForKey:v4 value:&stru_1009B1428 table:@"CBLocalizable"];
LABEL_50:
          v6 = v5;

          goto LABEL_51;
        }

        if (a1 != 781)
        {
          if (a1 != 782)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (a1 <= 667)
      {
        if (a1 == 620)
        {
          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_magic_keyboard_keypad";
          goto LABEL_49;
        }

        if (a1 != 666)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (a1 == 668)
      {
LABEL_60:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_keyboard";
        goto LABEL_49;
      }

      if (a1 != 671)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (a1 > 803)
      {
        if (a1 > 8215)
        {
          if (a1 == 8216 || a1 == 8220)
          {
            goto LABEL_42;
          }

          v1 = 8233;
LABEL_41:
          if (a1 == v1)
          {
LABEL_42:
            v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v3 = v2;
            v4 = @"apple_airpods_case";
            goto LABEL_49;
          }

LABEL_68:
          v3 = [CBProductInfo productInfoWithProductID:a1];
          v5 = [v3 productName];
          goto LABEL_50;
        }

        if (a1 != 804)
        {
          v1 = 8213;
          goto LABEL_41;
        }

LABEL_63:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_trackpad";
        goto LABEL_49;
      }

      if (a1 <= 801)
      {
        if (a1 != 800)
        {
LABEL_26:
          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_magic_keyboard_touch";
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      if (a1 != 802)
      {
LABEL_64:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_mouse";
        goto LABEL_49;
      }
    }

    v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v3 = v2;
    v4 = @"apple_magic_keyboard_touch_keypad";
    goto LABEL_49;
  }

  if (a1 > 569)
  {
    if (a1 > 598)
    {
      if (a1 > 614)
      {
        if (a1 == 615)
        {
          goto LABEL_60;
        }

        if (a1 != 617)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if (a1 != 599)
      {
        if (a1 != 613)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    else if (a1 <= 596 && a1 != 570 && a1 != 571)
    {
      goto LABEL_68;
    }

LABEL_48:
    v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v3 = v2;
    v4 = @"apple_wireless_keyboard";
    goto LABEL_49;
  }

  if (a1 > 555)
  {
    if (a1 > 558 && a1 != 569)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (a1 > 520)
  {
    if (a1 != 521 && a1 != 522)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 520)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  v6 = 0;
LABEL_51:

  return v6;
}

unint64_t sub_1003967E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1003968F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1003968F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100396940(a1, a2);
  sub_100396A70(&off_1009A8988);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100396940(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100396B5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100396B5C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100396A70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100396BD0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100396B5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100395F74(&qword_1009EC208, &qword_10056E2B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100396BD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100395F74(&qword_1009EC208, &qword_10056E2B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100396CC4(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v7 = __chkstk_darwin(v2, v5, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v9, a1, v2, v7);
  v10 = (*(v3 + 88))(v9, v2);
  v11 = 0;
  if (v10 != enum case for ALBtAdvInfoType7.Placement.unknown(_:))
  {
    if (v10 == enum case for ALBtAdvInfoType7.Placement.inEar(_:))
    {
      return 1;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.outOfEar(_:))
    {
      return 2;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.inCase(_:))
    {
      return 3;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.onEar(_:))
    {
      return 4;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.offEar(_:))
    {
      return 5;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.onNeck(_:))
    {
      return 6;
    }

    else if (v10 == enum case for ALBtAdvInfoType7.Placement.disabled(_:))
    {
      return 7;
    }

    else
    {
      (*(v3 + 8))(v9, v2);
      return 0;
    }
  }

  return v11;
}

uint64_t sub_100396EA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100396F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100395F74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100396F7C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4[1];
  *a1 = *a4;
  *(a1 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1001FBC68(a1 + 32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(a1 + 72) = 0;
  *(a1 + 64) = v11;
  *(a1 + 56) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_100009A48(a1 + 72, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  *(a1 + 96) = 0;
  sub_1003980F8(a1 + 104, a5);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 204) = 0;
  if (!*(a1 + 16))
  {
    v13 = "_uwbSystem";
    v14 = 254;
    goto LABEL_12;
  }

  if (!*a1)
  {
    v13 = "_configProvider";
    v14 = 255;
    goto LABEL_12;
  }

  if (!*(a1 + 128))
  {
    v13 = "_getTimeCb";
    v14 = 256;
LABEL_12:
    __assert_rtn("ParameterNegotiator", "AlishaParameterNegotiation.cpp", v14, v13);
  }

  return a1;
}

void sub_1003970BC(_Unwind_Exception *a1)
{
  sub_10034335C(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  _Unwind_Resume(a1);
}