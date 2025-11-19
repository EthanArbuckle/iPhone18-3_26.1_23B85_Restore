void sub_1001FE4D0(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_100019B38();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_1001FE630(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099DFB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FE664(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FE6B0(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 105))
  {
    v5 = *(a2 + 104);
    if (!sub_1004272D8(v5))
    {
      sub_1004ABA28();
    }

    v3 = *a1;
    v6 = &v5;
    v4 = sub_1001FE7D0(v3, &v5);
    ++*(v4 + 14);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AB9F4();
  }
}

uint64_t sub_1001FE750(uint64_t a1)
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

uint64_t *sub_1001FE7D0(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 26);
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

void sub_1001FE8C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099E048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FE918(void *a1)
{
  sub_1001FEA6C((a1 + 16));
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

uint64_t sub_1001FEA20(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099E108))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FEA6C(uint64_t a1)
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

void sub_1001FEB0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099E128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FEB98(uint64_t a1)
{

  operator delete();
}

id sub_1001FEC4C(uint64_t a1, void *a2)
{
  *a2 = off_10099E178;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FEC9C(id *a1)
{

  operator delete(a1);
}

void sub_1001FECD8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v6 = *(a1 + 8);
  v7 = [v6[42] debugOptions];
  [v6 _ownerDeviceServiceRequestDebugParams:v7];

  v8 = *(a1 + 8);
  if (v8)
  {
    [v8 _aopJobConfigWithTimeouts];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v15 = *a2;
  LODWORD(v16) = *(a2 + 4);
  if (sub_100394C68(@"ACWGDisableMacModeVariant", 0) && BYTE3(v16) == 1)
  {
    BYTE3(v16) = 0;
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_10039C050(&v15);
    v10 = v21 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-acwg,RangeEnableCommand: %s", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&v11 = sub_10019CFAC(&v15, 106, v17, v18, __p).n128_u64[0];
  v12 = *(a1 + 8);
  if (v12)
  {
    [v12 _buildAlishaSession:{__p, v11, v15, v16}];
    if (*buf)
    {
      v13 = *buf + 8;
      v14 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        *a3 = 0;
        *(a3 + 8) = v13;
        *(a3 + 16) = v14;
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 24) = 1;
        sub_10000AD84(v14);
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = v13;
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *buf = 0uLL;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ABAC0();
  }

  *a3 = -1013;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
LABEL_21:
  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }
}

uint64_t sub_1001FEF3C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099E1E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FEFB4(uint64_t a1)
{

  operator delete();
}

id sub_1001FF068(uint64_t a1, void *a2)
{
  *a2 = off_10099E208;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FF0B8(id *a1)
{

  operator delete(a1);
}

id sub_1001FF0F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v6 = *(a1 + 8);

  return [v6 _alishaStateChangedFromState:v4 toNewState:v5];
}

uint64_t sub_1001FF154(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099E278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FF1A0(uint64_t a1)
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

uint64_t sub_1001FF220(uint64_t a1)
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

uint64_t *sub_1001FF2A0(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

void sub_1001FF2B0()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1001FF360()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1001FF410()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1001FF4C0()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1001FF570()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1001FF620()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1001FF6D0()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_1001FF780()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1001FF830()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100564CE0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_1001FF924()
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
  qword_1009F0E00 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F0DF0 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0DF0, &_mh_execute_header);
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
  qword_1009F0E18 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F0E08 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E08, &_mh_execute_header);
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
  qword_1009F0E30 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F0E20 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E20, &_mh_execute_header);
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
  qword_1009F0E48 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F0E38 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E38, &_mh_execute_header);
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
  qword_1009F0E60 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F0E50 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E50, &_mh_execute_header);
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
  qword_1009F0E78 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F0E68 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E68, &_mh_execute_header);
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
  qword_1009F0E90 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F0E80 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E80, &_mh_execute_header);
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
  qword_1009F0EA8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F0E98 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0E98, &_mh_execute_header);
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
  qword_1009F0EC0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F0EB0 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F0EB0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1001FFF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100200140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PRLowPowerModeMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100200338(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lpm-mon, Callback. LPM is %s", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 25) != v3)
  {
    *(v6 + 25) = v3;
    v7 = *(*(a1 + 32) + 16);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }
}

id sub_1002004F8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#lpm-mon, startMonitoring", v4, 2u);
  }

  return [*(a1 + 32) _initLowPowerModeListner];
}

void sub_10020062C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#lpm-mon, stopMonitoring", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:WeakRetained name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }
}

void sub_100200A44(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 6);

  _Unwind_Resume(a1);
}

void sub_100200B94(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100200CF8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100200FA8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 6);

  _Unwind_Resume(a1);
}

void sub_100201104(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100201268(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_1002013C0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100201550(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v4 + 6);

  _Unwind_Resume(a1);
}

void sub_1002017F0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100201948(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100201AA0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100201EB0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 6);

  _Unwind_Resume(a1);
}

void sub_100202164(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 6);

  _Unwind_Resume(a1);
}

void sub_1002022D8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 6);

  _Unwind_Resume(a1);
}

void sub_10020244C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 6);

  _Unwind_Resume(a1);
}

void sub_10020297C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100202AD4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100202C2C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100202D90(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_100202EF4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_10020304C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_1002031A4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

const __CFString *NIAcwgSessionTriggerReasonToString(uint64_t a1)
{
  v1 = @"DeviceCloserIntent";
  v2 = @"DeviceFallbackWalletInteractionIntent";
  v3 = @"LockSelfInitiated";
  if (a1 != 200)
  {
    v3 = @"DeviceCloserIntent";
  }

  if (a1 != 103)
  {
    v2 = v3;
  }

  if (a1 == 102)
  {
    v1 = @"DeviceFallbackGeofenceEntryIntent";
  }

  if (a1 == 101)
  {
    v1 = @"DeviceFallbackWristRaiseIntent";
  }

  if (a1 <= 102)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const __CFString *NIAcwgSuspendTriggerReasonToString(uint64_t a1)
{
  v1 = @"DeviceFarther";
  v2 = @"DeviceClientPause";
  v3 = @"LockSelfInitiatedRequest";
  v4 = @"LockUnilaterallySuspended";
  if (a1 != 201)
  {
    v4 = @"DeviceFarther";
  }

  if (a1 != 200)
  {
    v3 = v4;
  }

  if (a1 != 107)
  {
    v2 = v3;
  }

  v5 = @"DeviceNIError";
  if (a1 != 106)
  {
    v5 = @"DeviceFarther";
  }

  if (a1 == 105)
  {
    v5 = @"DeviceNIInvalidated";
  }

  if (a1 <= 106)
  {
    v2 = v5;
  }

  v6 = @"DeviceNITimeout";
  v7 = @"DeviceNIInterrupted";
  if (a1 != 104)
  {
    v7 = @"DeviceFarther";
  }

  if (a1 != 103)
  {
    v6 = v7;
  }

  if (a1 == 102)
  {
    v1 = @"DeviceStationary";
  }

  if (a1 == 101)
  {
    v1 = @"DeviceReceivedUnlockNotification";
  }

  if (a1 > 102)
  {
    v1 = v6;
  }

  if (a1 <= 104)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_100204E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_100204EC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v23 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  v17 = a2;
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 longLongValue];
        v9 = __src[1];
        if (__src[1] >= v23)
        {
          v11 = __src[0];
          v12 = __src[1] - __src[0];
          v13 = (__src[1] - __src[0]) >> 1;
          if (v13 <= -2)
          {
            sub_100019B38();
          }

          if (v23 - __src[0] <= (v13 + 1))
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v23 - __src[0];
          }

          if ((v23 - __src[0]) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            sub_1001679B0(__src, v15);
          }

          *(2 * v13) = v8;
          v10 = (2 * v13 + 2);
          memcpy(0, v11, v12);
          v16 = __src[0];
          __src[0] = 0;
          __src[1] = v10;
          v23 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *__src[1] = v8;
          v10 = v9 + 2;
        }

        __src[1] = v10;
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  *v17 = *__src;
  *(v17 + 16) = v23;
}

void sub_1002050A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002050E4(void *a1@<X0>, void *a2@<X8>)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  obj = a1;
  if ([obj countByEnumeratingWithState:&v4 objects:v8 count:16])
  {
    *v5;
    *v5;
    [**(&v4 + 1) longLongValue];
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_100206954(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4, int a5, char a6, __int16 a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1001FBC68(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_100009A48(a1 + 24, *a3, a3[1], a3[1] - *a3);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 58) = a7;
  return a1;
}

void sub_1002069E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002069FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = a1 + 5889;
  if ((a1 + 5889) <= 9)
  {
    v6 = off_10099E4B0[v5];
    v7 = off_10099E500[v5];
    v8 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:off_10099E460[v5]];
    [v4 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];

    v9 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:v6];
    [v4 setObject:v9 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v10 = [NILocalization _niLocalizedStringFromFrameworkBundleWithKey:v7];
    [v4 setObject:v10 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:a1 userInfo:v4];

  return v11;
}

id sub_100206B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  if (a1 > -10018)
  {
    if (a1 <= -10011)
    {
      if (a1 > -10014)
      {
        if (a1 == -10013)
        {
          v6 = @"Ensure region predicates are using NIDevicePresencePreset. Use NIRegionPredicate initWithName:devicePresencePreset: initializer. Ensure the smaller region predicate is specified as the inner boundary.";
          v7 = @"Region predicate verification failed.";
        }

        else if (a1 == -10012)
        {
          v6 = @"Ensure peer discovery token was generated correctly.";
          v7 = @"Peer discovery token was either invalid or did not contain required information for specialized session.";
        }

        else
        {
          v6 = @"Try running the session again at a later time. Implement throttling if necessary.";
          v7 = @"Activation reply not received. The server may be unavailable right now.";
        }
      }

      else
      {
        switch(a1)
        {
          case -10017:
            v6 = @"Check Bluetooth settings, status and configuration.";
            v7 = @"Bluetooth is currently unavailable.";
            break;
          case -10016:
            v6 = @"Check Bluetooth settings, status and configuration.";
            v7 = @"Failed to produce a Discovery Token.";
            break;
          case -10014:
            v6 = @"Monitor session suspension callbacks. Try again when suspension ends.";
            v7 = @"Usage while suspended.";
            break;
          default:
            goto LABEL_59;
        }
      }
    }

    else if (a1 <= 300)
    {
      switch(a1)
      {
        case -10010:
          v6 = @"Check the errors and run the session again.";
          v7 = @"Camera Assistance ARSession failed.";
          break;
        case -10008:
          v6 = @"No action needed as the session completed successfully";
          v7 = @"The session completed successfully";
          break;
        case 300:
          v6 = @"Change tag cell";
          v7 = @"Tag cell low power";
          break;
        default:
          goto LABEL_59;
      }
    }

    else if (a1 > 302)
    {
      if (a1 == 303)
      {
        v6 = @"Check localized description";
        v7 = @"Reconfigure errored out";
      }

      else
      {
        if (a1 != 304)
        {
          goto LABEL_59;
        }

        v6 = @"Check localized description";
        v7 = @"Beacon resolution failed";
      }
    }

    else
    {
      v6 = @"Check localized description";
      if (a1 == 301)
      {
        v7 = @"Tag errored out";
      }

      else
      {
        v7 = @"Bluetooth errored out";
      }
    }
  }

  else if (a1 <= -19884)
  {
    if (a1 > -19887)
    {
      if (a1 == -19886)
      {
        v6 = @"Check the logs for specific internal error";
        v7 = @"The given debug key was invalid or the system was not able to set it. Inspect error message.";
      }

      else if (a1 == -19885)
      {
        v6 = @"Vehicle possibly changed its ranging capabilities";
        v7 = @"The capabilities specified in a DCK message are not supported. An action should be taken to indicate this to the vehicle.";
      }

      else
      {
        v6 = @"Try again at a later time";
        v7 = @"A DCK request to recover a suspended ranging session has been received, but recovery has failed. An action should be taken to indicate this to the vehicle.";
      }
    }

    else
    {
      switch(a1)
      {
        case -19889:
          v6 = @"Check the message from the vehicle for format violation";
          v7 = @"The session was given an invalid or unexpected DCK message.";
          break;
        case -19888:
          v6 = @"Try again or check the vehicle";
          v7 = @"The session was expecting a response from the vehicle and did not receive it for over the allowed time.";
          break;
        case -19887:
          v6 = @"Event from bluetooth is corrupted";
          v7 = @"The bluetooth event provided to the session was of an invalid type or contained invalid values.";
          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= -19704)
  {
    switch(a1)
    {
      case -19883:
        v6 = @"Most likely an internal error, try again.";
        v7 = @"URSKs could not be deleted";
        break;
      case -19882:
        v6 = @"Pick one of the supported policies";
        v7 = @"The priority provided to the session was of an invalid type or contained invalid values";
        break;
      case -19881:
        v6 = @"Check the event notification parameters or format";
        v7 = @"The session was notified of a Car Key event, but the event or its parameters were invalid";
        break;
      default:
        goto LABEL_59;
    }
  }

  else if (a1 > -19702)
  {
    if (a1 == -19701)
    {
      v6 = @"Try again later";
      v7 = @"Indicates internal resource unavailability.";
    }

    else
    {
      if (a1 != -19700)
      {
        goto LABEL_59;
      }

      v6 = @"Check the logs for specific internal error";
      v7 = @"No specific reason for failure is indicated.";
    }
  }

  else if (a1 == -19703)
  {
    v6 = @"Wrong UWB session ID possibly";
    v7 = @"Indicates URSK corresponding to the UWB Session Identifier is not found.";
  }

  else
  {
    v6 = @"Rework the message parameters or fix the order";
    v7 = @"Indicates use of unsupported message or message format.";
  }

  [v4 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  [v5 setObject:v6 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
LABEL_59:
  if (v3)
  {
    [v5 addEntriesFromDictionary:v3];
  }

  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:a1 userInfo:v5];

  return v8;
}

void sub_1002071F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100207B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerSystemConfiguratorSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100207C38(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerSystemConfiguratorSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 systemDidUpdateState:*(a1 + 40)];
}

void sub_100207D48(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = NIServerSystemConfiguratorSession;
  v2 = objc_msgSendSuper2(&v6, "resourcesManager");
  v3 = [v2 remote];
  v4 = *(a1 + 48);
  v5 = NSStringFromClass(*(a1 + 40));
  [v3 systemDidUpdateResourceUsageLimitExceeded:v4 forSessionConfigurationTypeWithName:v5];
}

void sub_100207DDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10020828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));

  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v24 - 120));

  _Unwind_Resume(a1);
}

void sub_100208324(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _process:v6 didTerminate:v5];
}

void sub_1002083B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  v11 = FBSSceneVisibilityEndowmentNamespace;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  v6 = [RBSProcessPredicate predicateMatchingIdentifier:*(a1 + 32)];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  [v3 setPredicates:v7];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100208598;
  v8[3] = &unk_10099E6A0;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);
}

void sub_10020853C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  _Unwind_Resume(a1);
}

void sub_100208598(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _process:v7 didUpdateState:v6];
}

void sub_10020862C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActivityContentUpdate:v3];
}

void sub_1002086E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PRAppStateMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

const __CFString *sub_100208CC4(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_10099E738 + (a1 - 1));
  }
}

uint64_t sub_100208CEC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 objectForKey:@"appConsideredVisibleWithActiveLiveActivity"];

  if (!v1)
  {
    return 1;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"appConsideredVisibleWithActiveLiveActivity"];

  return v3;
}

uint64_t sub_100209234(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 endowmentNamespaces];
    v4 = [v3 containsObject:FBSSceneVisibilityEndowmentNamespace];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_10020AD2C(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_10020BF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10020CFB8(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_10020D7E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(WeakRetained + 10) UUID];
      v4 = [v3 UUIDString];
      v5 = 136315138;
      v6 = [v4 UTF8String];
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,UT retry timer fired for device %s", &v5, 0xCu);
    }

    dispatch_source_cancel(*(WeakRetained + 20));
    [WeakRetained startRangingAsOwner:0];
  }
}

void sub_10020D8FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10020DF70(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerBTLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptionReasonEnded:8 timestamp:sub_100005288()];
}

void sub_10020E004(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NIServerBTLocalizerSession;
  v1 = objc_msgSendSuper2(&v3, "resourcesManager");
  v2 = [v1 remote];
  [v2 uwbSessionInterruptedWithReason:8 timestamp:sub_100005288()];
}

void sub_10020ECC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(WeakRetained + 10) UUID];
      v5 = [v4 UUIDString];
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = [v5 UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Measurement timeout fired for device %s", __p, 0xCu);
    }

    dispatch_source_cancel(*(WeakRetained + 21));
    [*(WeakRetained + 7) clearStateForToken:*(a1 + 32)];
    v6 = [WeakRetained objectFromIdentifier:{objc_msgSend(*(a1 + 32), "hash")}];
    sub_1002D63A8(v6, __p);

    v7 = *(WeakRetained + 23);
    if (v7)
    {
      [v7 updateWithNewRegion:0 withTimestamp:sub_100005288()];
    }

    v8 = *(WeakRetained + 14);
    if (v8)
    {
      v9 = sub_100005288();
      sub_1002E3E44(v8, __p, v9);
    }

    if (*&__p[0])
    {
      *(&__p[0] + 1) = *&__p[0];
      operator delete(*&__p[0]);
    }
  }
}

void sub_10020F114(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerBTLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 object:*(a1 + 40) didUpdateRegion:*(a1 + 48) previousRegion:*(a1 + 56)];
}

void sub_10020F248(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerBTLocalizerSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateNearbyObjects:*(a1 + 40)];
}

void sub_1002101AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100210444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100211020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a20)
  {
    sub_10000AD84(a20);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100211F38(uint64_t a1)
{

  operator delete();
}

id sub_100211FEC(uint64_t a1, void *a2)
{
  *a2 = off_10099E8D8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10021203C(id *a1)
{

  operator delete(a1);
}

void sub_100212078(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) serviceRequestDidUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002120F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100212108(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099E938))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100212180(uint64_t a1)
{

  operator delete();
}

id sub_100212234(uint64_t a1, void *a2)
{
  *a2 = off_10099E958;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100212284(id *a1)
{

  operator delete(a1);
}

void sub_1002122C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100212334(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021234C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099E9B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002123C4(uint64_t a1)
{

  operator delete();
}

id sub_100212478(uint64_t a1, void *a2)
{
  *a2 = off_10099E9D8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002124C8(id *a1)
{

  operator delete(a1);
}

void sub_100212504(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveRemoteData:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100212578(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100212590(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099EA38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100212608(uint64_t a1)
{

  operator delete();
}

id sub_1002126BC(uint64_t a1, void *a2)
{
  *a2 = off_10099EA58;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10021270C(id *a1)
{

  operator delete(a1);
}

void sub_100212748(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) _grSessionInvalidatedWithReason:v5];
  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_1002127BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002127D4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099EAB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10021284C(uint64_t a1)
{

  operator delete();
}

id sub_100212900(uint64_t a1, void *a2)
{
  *a2 = off_10099EAD8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100212950(id *a1)
{

  operator delete(a1);
}

void sub_10021298C(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v3) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#peer-gr,Unsupported functionality - update rate throttling.", &v3, 2u);
    v2 = qword_1009F9820;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerNearbyPeerGrSession.mm";
    v5 = 1024;
    v6 = 358;
    v7 = 2080;
    v8 = "operator()";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#peer-gr,%s:%d: assertion failure in %s", &v3, 0x1Cu);
  }

  abort();
}

uint64_t sub_100212A60(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099EB38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100212AAC()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100212B5C()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100212C0C()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100212CBC()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100212D6C()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100212E1C()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100212ECC()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100212F7C()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10021302C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100565980;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100213120()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_1005658F0;
  v44[0] = unk_100565900;
  sub_1001BD0B0(qword_1009F0EC8, &v43, 4);
  xmmword_1009F0EE0 = xmmword_100563BD0;
  *algn_1009F0EF0 = xmmword_100563BE0;
  qword_1009F0F08 = 0;
  unk_1009F0F10 = 0;
  qword_1009F0F00 = 0x3FD999999999999ALL;
  unk_1009F0F18 = xmmword_100563BF0;
  dword_1009F0F28 = 5;
  qword_1009F0F30 = 0x4000000000000000;
  dword_1009F0F38 = 5;
  byte_1009F0F40 = 0;
  *&algn_1009F0F41[3] = 0x30000000ALL;
  xmmword_1009F0F50 = xmmword_100563C00;
  unk_1009F0F60 = xmmword_100563C10;
  xmmword_1009F0F70 = xmmword_100563C20;
  qword_1009F0F80 = 0x3FE3333333333333;
  dword_1009F0F88 = 3;
  xmmword_1009F0F90 = xmmword_100563C30;
  unk_1009F0FA0 = xmmword_100563C10;
  xmmword_1009F0FB0 = xmmword_100563C00;
  qword_1009F0FC0 = 0x3FE3333333333333;
  byte_1009F0FC8 = 0;
  xmmword_1009F0FD0 = xmmword_100563C40;
  unk_1009F0FE0 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F0FF0 = _Q0;
  qword_1009F1000 = 0xBFD3333333333333;
  xmmword_1009F1008 = xmmword_100563C60;
  qword_1009F1018 = 0x3E99999A40000000;
  xmmword_1009F1020 = xmmword_100563BE0;
  qword_1009F1038 = 0;
  unk_1009F1040 = 0;
  qword_1009F1030 = 0x3FD999999999999ALL;
  xmmword_1009F1048 = xmmword_100563BF0;
  dword_1009F1058 = 5;
  qword_1009F1060 = 0x4000000000000000;
  dword_1009F1068 = 4;
  qword_1009F1070 = 0x300000008;
  qword_1009F1078 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F1080, &v45, 1);
  xmmword_1009F1098 = xmmword_100563C70;
  qword_1009F10A8 = 0x4024000000000000;
  dword_1009F10B0 = 45;
  byte_1009F10B8 = 0;
  byte_1009F10D0 = 0;
  qword_1009F10D8 = 0;
  byte_1009F10E0 = 0;
  dword_1009F10E4 = 1;
  byte_1009F10E8 = 1;
  xmmword_1009F10F0 = xmmword_100563C80;
  xmmword_1009F1100 = xmmword_100563C90;
  xmmword_1009F1110 = v42;
  qword_1009F1120 = 0xC059000000000000;
  xmmword_1009F1128 = xmmword_100563CA0;
  qword_1009F1138 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F1140 = xmmword_100563BE0;
  qword_1009F1150 = 0x3FD999999999999ALL;
  xmmword_1009F1158 = 0u;
  unk_1009F1168 = xmmword_100563BF0;
  dword_1009F1178 = 5;
  qword_1009F1180 = 0x4000000000000000;
  dword_1009F1188 = 10;
  qword_1009F1190 = 0x4034000000000000;
  dword_1009F1198 = 3;
  xmmword_1009F11A0 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F0EC8, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EB508, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EB510, &_mh_execute_header);
  v43 = xmmword_100565910;
  v44[0] = unk_100565920;
  v44[1] = xmmword_100565930;
  v44[2] = unk_100565940;
  qword_1009F11B8 = 0;
  unk_1009F11C0 = 0;
  qword_1009F11B0 = 0;
  sub_10004EEB8(&qword_1009F11B0, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F11B0, &_mh_execute_header);
  v43 = xmmword_100565950;
  qword_1009F11D0 = 0;
  unk_1009F11D8 = 0;
  qword_1009F11C8 = 0;
  sub_10004EEB8(&qword_1009F11C8, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F11C8, &_mh_execute_header);
  sub_10041C9CC();
  v6 = std::string::insert(&v45, 0, "reverseLUT_A");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v6->__r_.__value_.__l + 2);
  v43 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v43, ".bin");
  v9 = *&v8->__r_.__value_.__l.__data_;
  qword_1009F11F0 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F11E0 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F11E0, &_mh_execute_header);
  sub_10041C9CC();
  v10 = std::string::insert(&v45, 0, "reverseLUT_A");
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v10->__r_.__value_.__l + 2);
  v43 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v43, ".bin");
  v13 = *&v12->__r_.__value_.__l.__data_;
  qword_1009F1208 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F11F8 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F11F8, &_mh_execute_header);
  sub_10041C9CC();
  v14 = std::string::insert(&v45, 0, "reverseLUT_A");
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v14->__r_.__value_.__l + 2);
  v43 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, ".bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  qword_1009F1220 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F1210 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1210, &_mh_execute_header);
  sub_10041C9CC();
  v18 = std::string::insert(&v45, 0, "reverseLUT_A");
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v18->__r_.__value_.__l + 2);
  v43 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, ".bin");
  v21 = *&v20->__r_.__value_.__l.__data_;
  qword_1009F1238 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F1228 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1228, &_mh_execute_header);
  sub_10041C9CC();
  v22 = std::string::insert(&v45, 0, "reverseLUT_A");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v22->__r_.__value_.__l + 2);
  v43 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, ".bin");
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_1009F1250 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F1240 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1240, &_mh_execute_header);
  sub_10041C9CC();
  v26 = std::string::insert(&v45, 0, "reverseLUT_A");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v26->__r_.__value_.__l + 2);
  v43 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".bin");
  v29 = *&v28->__r_.__value_.__l.__data_;
  qword_1009F1268 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F1258 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1258, &_mh_execute_header);
  sub_10041C9CC();
  v30 = std::string::insert(&v45, 0, "reverseLUT_A");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v30->__r_.__value_.__l + 2);
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, ".bin");
  v33 = *&v32->__r_.__value_.__l.__data_;
  qword_1009F1280 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F1270 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1270, &_mh_execute_header);
  sub_10041C9CC();
  v34 = std::string::insert(&v45, 0, "reverseLUT_A");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v34->__r_.__value_.__l + 2);
  v43 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v43, ".bin");
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_1009F1298 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F1288 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F1288, &_mh_execute_header);
  sub_10041C9CC();
  v38 = std::string::insert(&v45, 0, "reverseLUT_A");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v38->__r_.__value_.__l + 2);
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v43, ".bin");
  v41 = *&v40->__r_.__value_.__l.__data_;
  qword_1009F12B0 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F12A0 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F12A0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100213B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_100213DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100214078(id a1)
{
  v1 = [[NIServerFindableDeviceProxySessionManager alloc] _initInternal];
  v2 = qword_1009F1390;
  qword_1009F1390 = v1;
}

void sub_100214178(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrepareTokenCache];
  if (v1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AC260();
  }
}

void sub_1002147D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1002148C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002148D8(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 data];
  v4 = [NIDiscoveryToken deserialize:v3];

  if ([v4 count])
  {
    v5 = a1[4];
    v6 = [v4 allObjects];
    v7 = [v9 account];
    v8 = [v5 _internalSetFindableDiscoveryTokens:v6 tokenGroup:v7 logInEventBuffer:0];

    if (v8)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v8);
    }

    ++*(*(a1[6] + 8) + 24);
    *(*(a1[7] + 8) + 24) += [v4 count];
  }
}

void sub_1002150C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  _Block_object_dispose((v42 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_100215204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_100215278(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_1002152EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) stopAdvertisingToPeer:v3];
  if (v4)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC4D8();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }

  v5 = [*(*(a1 + 32) + 40) stopRangingWithPeer:v3];
  if (v5)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC548();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  v6 = *(a1 + 32);
  v7 = +[NIServerFindingPeerTracking peerTrackingTerminalState];
  [v6 _updatePeerTrackingForToken:v3 newTrackingState:v7];
}

void sub_10021540C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100215640(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrepareTokenCache];
  v6 = v2;
  if (v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = v2;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v5 = [*(a1 + 32) _internalSetFindableDiscoveryTokens:*(a1 + 40) tokenGroup:*(a1 + 48) logInEventBuffer:1];
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    }
  }
}

void sub_1002158D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrepareTokenCache];
  v10 = v2;
  if (v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = v2;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
    v5 = [v6 mutableCopy];

    if (v5)
    {
      [v5 addObjectsFromArray:*(a1 + 48)];
    }

    else
    {
      v5 = [NSMutableSet setWithArray:*(a1 + 48)];
    }

    v7 = *(a1 + 32);
    v8 = [v5 allObjects];
    v9 = [v7 _internalSetFindableDiscoveryTokens:v8 tokenGroup:*(a1 + 40) logInEventBuffer:1];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
    }
  }
}

void sub_100215C10(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrepareTokenCache];
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v2);
  }

  else
  {
    v3 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
    v4 = [v3 mutableCopy];

    v5 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100215D88;
    v10[3] = &unk_10099ED08;
    v6 = v4;
    v11 = v6;
    [v5 enumerateObjectsUsingBlock:v10];
    v7 = *(a1 + 32);
    v8 = [v6 allObjects];
    v9 = [v7 _internalSetFindableDiscoveryTokens:v8 tokenGroup:*(a1 + 40) logInEventBuffer:1];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
    }
  }
}

id sub_100215E80(uint64_t a1)
{
  [*(a1 + 32) _activateProvidersLazy];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);

  return [v3 setDebugParameters:v2];
}

void sub_100215F88(uint64_t a1)
{
  v1 = a1 + 32;
  [*(a1 + 32) _activateProvidersLazy];
  v20 = [NIServerFindingAdvertisement advertisementFromByteRepresentation:*(v1 + 8)];
  v2 = [*v1 _isTokenFindable:*(a1 + 48)];
  v3 = [*(a1 + 32) _shouldInteract];
  v4 = v3;
  if (v20)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) descriptionInternal];
    *buf = 138478851;
    v31 = v8;
    v32 = 2113;
    v33 = v20;
    v34 = 1024;
    v35 = v2;
    v36 = 1024;
    v37 = v4;
    v38 = 1024;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-proxy,processClientDiscoveryEvent. Token: %{private}@. Adv: %{private}@. Token findable: %d. Should interact: %d. Proceed: %d", buf, 0x28u);
  }

  if (v6)
  {
    v9 = [*(*(a1 + 32) + 32) processAdvertisement:v20 receivedOOBFromPeer:*(a1 + 48)];
    v10 = [*(*(a1 + 32) + 32) advertisingPeers];
    v19 = [v10 objectForKey:*(a1 + 48)];

    v11 = v19;
    if (v19)
    {
      v12 = [v19 byteRepresentation];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = *(*(a1 + 32) + 80);
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            if (v17)
            {
              v18 = [*(*(&v25 + 1) + 8 * i) getQueueForInputingData];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1002162F8;
              block[3] = &unk_10099BB28;
              block[4] = v17;
              v23 = v12;
              v24 = *(a1 + 48);
              dispatch_async(v18, block);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      v11 = v19;
    }
  }
}

void sub_1002163A0(uint64_t a1)
{
  [*(a1 + 32) _activateProvidersLazy];
  v2 = [*(a1 + 32) _isTokenFindable:*(a1 + 40)];
  v3 = [*(a1 + 32) _shouldInteract];
  v4 = v3;
  v5 = v2 & v3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v11 = 138478595;
    v12 = v7;
    v13 = 1024;
    v14 = v2;
    v15 = 1024;
    v16 = v4 & 1;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-proxy,processClientRemovePeerEvent. Token: %{private}@. Token findable: %d. Should interact: %d. Proceed: %d", &v11, 0x1Eu);
  }

  if (v5)
  {
    v8 = [*(*(a1 + 32) + 32) stopAdvertisingToPeer:*(a1 + 40)];
    [*(a1 + 32) _updatePeerTrackingForToken:*(a1 + 40) newAdvertisingState:2];
    v9 = [*(*(a1 + 32) + 40) stopRangingWithPeer:*(a1 + 40)];
    [*(a1 + 32) _updatePeerTrackingForToken:*(a1 + 40) newRangingState:4];
    v10 = [*(*(a1 + 32) + 32) processLostEventReceivedOOBFromPeer:*(a1 + 40)];
  }
}

void sub_10021668C(void *a1)
{
  v5 = [*(a1[4] + 48) objectForKey:a1[5]];
  v2 = [v5 allObjects];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1002168CC(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100216978;
  v7[3] = &unk_10099ED30;
  v7[4] = v3;
  v5 = v2;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100216978(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 tellClientAboutPeer])
  {
    v6 = [*(a1[4] + 48) objectForKey:a1[5]];
    v7 = [v6 containsObject:v8];

    if (v7)
    {
      [*(*(a1[6] + 8) + 40) addObject:v8];
    }
  }
}

void sub_100216AD4(uint64_t a1)
{
  if (*(a1 + 32) && ([*(*(a1 + 40) + 80) containsObject:?] & 1) == 0)
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-proxy,addObserver", buf, 2u);
    }

    [*(*(a1 + 40) + 80) addObject:*(a1 + 32)];
    v3 = [*(*(a1 + 40) + 32) advertisingPeers];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100216BF8;
    v4[3] = &unk_10099ED80;
    v5 = *(a1 + 32);
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void sub_100216BF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) getQueueForInputingData];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100216CF4;
  block[3] = &unk_10099BB28;
  v11 = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_100216CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) byteRepresentation];
  v4 = *(a1 + 48);
  v5 = v3;
  [v2 didGenerateShareableConfigurationData:? forToken:?];
}

void *sub_100216DFC(void *result)
{
  if (result[4])
  {
    v1 = result;
    result = [*(result[5] + 80) containsObject:?];
    if (result)
    {
      v2 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-proxy,removeObserver", v3, 2u);
      }

      return [*(v1[5] + 80) removeObject:v1[4]];
    }
  }

  return result;
}

void sub_100216F80(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10021792C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  _Block_object_dispose((v21 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_100217A20(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    %@ (%d tokens)", v11, [v5 count]);
  [v6 addObject:v7];

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = [v5 allObjects];
  v10 = sub_100346A18(v9, 10, 2);
  [v8 addObjectsFromArray:v10];
}

void sub_100217B48(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = [v9 description];
  v8 = [NSString stringWithFormat:@"    %@: %@", v6, v7];
  [v5 addObject:v8];
}

void sub_100217D68(uint64_t a1)
{
  v2 = +[NSDate now];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 24) = 0;
  v5 = sub_100346034(@"FindingBTDiscoveryTimeoutSecondsOverride", 120.0);
  v6 = [NIServerFindingDiscoveryProvider alloc];
  sub_100004A08(__p, "FindableDeviceProxy");
  v7 = [(NIServerFindingDiscoveryProvider *)v6 initWithIdentifier:__p isFinder:0 enableBluetooth:1 launchOnDemand:1 scanRate:20 discoveryTimeout:v5 consumer:*(*(a1 + 32) + 8) queue:?];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [NIServerFindingRangingProvider alloc];
  sub_100004A08(__p, "FindableDeviceProxy");
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v13 = sub_10035D02C();
  v14 = *(v13 + 21);
  v52 = *(v13 + 20);
  v53 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = [(NIServerFindingRangingProvider *)v10 initWithIdentifier:__p isFinder:0 consumer:v11 queue:v12 pbLogger:&v52];
  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (v53)
  {
    sub_10000AD84(v53);
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = +[NSHashTable weakObjectsHashTable];
  v19 = *(a1 + 32);
  v20 = *(v19 + 80);
  *(v19 + 80) = v18;

  v21 = objc_opt_new();
  v22 = *(a1 + 32);
  v23 = *(v22 + 48);
  *(v22 + 48) = v21;

  v24 = objc_opt_new();
  v25 = *(a1 + 32);
  v26 = *(v25 + 56);
  *(v25 + 56) = v24;

  v27 = objc_opt_new();
  v28 = *(a1 + 32);
  v29 = *(v28 + 64);
  *(v28 + 64) = v27;

  v30 = objc_opt_new();
  v31 = *(a1 + 32);
  v32 = *(v31 + 72);
  *(v31 + 72) = v30;

  v33 = objc_opt_new();
  v34 = *(a1 + 32);
  v35 = *(v34 + 88);
  *(v34 + 88) = v33;

  v36 = *(a1 + 32);
  v37 = *(v36 + 104);
  *(v36 + 104) = 0;

  v38 = *(a1 + 32);
  v39 = *(v38 + 112);
  *(v38 + 112) = 0;

  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 124) = 0;
  *(*(a1 + 32) + 125) = 0;
  v40 = +[NSNotificationCenter defaultCenter];
  [v40 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePairingChanged_r121951698:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v41 = +[NSNotificationCenter defaultCenter];
  [v41 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePairingChanged_r121951698:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

  v42 = +[NSNotificationCenter defaultCenter];
  [v42 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePairingChanged_r121951698:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v43 = *(a1 + 32);
  *(v43 + 128) = [objc_opt_class() _queryNumPairedFinderWatches_r121951698];
  *(*(a1 + 32) + 96) = 0;
  v44 = objc_alloc_init(NSOperationQueue);
  v45 = *(a1 + 32);
  v46 = *(v45 + 136);
  *(v45 + 136) = v44;

  [*(*(a1 + 32) + 136) setUnderlyingQueue:*(*(a1 + 32) + 8)];
  *(*(a1 + 32) + 248) = 0;
  sub_1002181C0((*(a1 + 32) + 256), 0xFuLL);
  sub_1002181C0((*(a1 + 32) + 304), 0x3CuLL);
  sub_1002181C0((*(a1 + 32) + 352), 0xAuLL);
  if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 BOOLForKey:@"EnableStateDump"], v47, v48))
  {
    v49 = *(a1 + 32);
    v50 = v49[1];
    v51 = v49;
    os_state_add_handler();
  }
}

void sub_1002181C0(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    sub_100220F58(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[4];
    v7 = a1[1];
    v8 = (v7 + 8 * (v6 / 0xAA));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8 + 24 * (v6 % 0xAA);
    }

    v10 = v8;
    v11 = v9;
    sub_100221634(&v10, a2);
    sub_1002210D0(a1, v10, v11);
  }
}

char *sub_100218278(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Findable Device", v1);

  return v2;
}

void sub_10021A694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_10021A9B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isDoingAnything])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  if ([v4 isAttemptingToRange])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10021AA3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) discoveredPeers];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  if (v5)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && [v3 advertisingState] == 1 && objc_msgSend(v3, "hasReceivedRangingData"))
  {
    [*(a1 + 32) _advertiseAndRangeWithPeer:*(a1 + 40) peerAdvertisement:v5];
  }
}

void sub_10021B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10021B914(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_10021BE7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  *(*(a1 + 32) + 128) = [objc_opt_class() _queryNumPairedFinderWatches_r121951698];
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) name];
    v5 = *(*(a1 + 32) + 128);
    v7 = 138412802;
    v8 = v4;
    v9 = 1024;
    v10 = v2;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,rdar://121951698: pairing change notification (%@). Previous paired finder watches: %d. New: %d.", &v7, 0x18u);
  }

  result = [*(a1 + 32) _shouldInteract];
  if (result)
  {
    return [*(a1 + 32) _enableInteractionWithPersistedTokens];
  }

  return result;
}

BOOL sub_10021C02C(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsPaired];
  v4 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsSetup];
  v5 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v6 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsArchived];
  if ([v3 BOOLValue] && objc_msgSend(v4, "BOOLValue") && (objc_msgSend(v5, "BOOLValue") & 1) == 0)
  {
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

void sub_10021C710(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1003464D4("KeepAlive", 0, *(a1 + 32), @"Finished");
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v7, 0xCu);
    }

    [WeakRetained[11] removeObjectForKey:*(a1 + 32)];
    v5 = [WeakRetained[4] stopAdvertisingToPeer:*(a1 + 32)];
    if (v5 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC98C();
    }

    [WeakRetained _updatePeerTrackingForToken:*(a1 + 32) newAdvertisingState:2];
    v6 = [WeakRetained[5] stopRangingWithPeer:*(a1 + 32)];
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC9FC();
    }

    [WeakRetained _updatePeerTrackingForToken:*(a1 + 32) newRangingState:4];
  }
}

void sub_10021CBCC(uint64_t a1, void *a2)
{
  v3 = a2;
  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  v4 = [[NIServerFindingAdvertisement alloc] initForFinder:1 address:&v12];
  [v4 setCanRange:1];
  v5 = *(*(a1 + 32) + 40);
  if (v5)
  {
    [v5 supportedTechnologies];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (sub_100346F20(&v12, 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v15 = v6;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_1002216D0(&__p, &v15, &__p, 1uLL);
  [v4 setSupportedTechnologies:&__p];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  [v4 setProtocolVersion:2];
  v7 = sub_10035D02C();
  v8 = *(v7 + 406);
  v9 = *(v7 + 407);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100329F3C(v8);
  [v4 setNarrowBandMask:sub_100428064(v11)];
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v9)
  {
    sub_10000AD84(v9);
  }

  [v4 setMmsNumFragmentsOOB:0];
  [*(a1 + 32) _updatePeerTrackingForToken:v3 newDiscoveryState:2];
  v10 = [NSNumber numberWithInt:5];
  [*(a1 + 32) _updatePeerTrackingForToken:v3 newNbUwbAcquisitionChannelIdx:v10];
  [*(a1 + 32) _advertiseAndRangeWithPeer:v3 peerAdvertisement:v4];
}

void sub_10021CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10021CFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) stopAdvertisingToPeer:v3];
  v5 = a1 + 40;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACBC8((a1 + 40));
  }

  v8 = [*(*(a1 + 32) + 40) stopRangingWithPeer:v3];
  v9 = *(*v5 + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*v5 + 8) + 40) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACC40((a1 + 40));
  }

  v11 = *(a1 + 32);
  v12 = +[NIServerFindingPeerTracking peerTrackingTerminalState];
  [v11 _updatePeerTrackingForToken:v3 newTrackingState:v12];
}

void sub_10021DA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10021EDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021EE18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ACE34();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = v8;
      v10 = [v5 relativeAltitude];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v5 pressure];
      [v13 doubleValue];
      v15 = v14;

      v16 = WeakRetained[8];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10021EFB8;
      v17[3] = &unk_10099EEF8;
      v17[4] = v9;
      v17[5] = v12;
      v17[6] = v15;
      [v16 enumerateKeysAndObjectsUsingBlock:v17];
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ACEA4();
    }
  }

LABEL_9:
}

void sub_10021EF84(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10021EFB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptAltimeterData:a1 + 32];
}

void sub_10021F0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021F128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021F1FC;
    block[3] = &unk_10099BB28;
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_10021F1FC(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACEE0(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v25 = [v3 startDate];
    [v25 timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = [*(a1 + 40) endDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = [*(a1 + 40) numberOfSteps];
    v24 = [v9 unsignedIntValue];
    v10 = [*(a1 + 40) distance];
    [v10 doubleValue];
    v12 = v11;
    v13 = [*(a1 + 40) currentPace];
    [v13 doubleValue];
    v15 = v14;
    v16 = [*(a1 + 40) currentCadence];
    [v16 doubleValue];
    v18 = v17;
    v19 = [*(a1 + 40) floorsAscended];
    v20 = [v19 unsignedIntValue];
    v21 = [*(a1 + 40) floorsDescended];
    v22 = [v21 unsignedIntValue];

    v23 = *(*(a1 + 48) + 64);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10021F474;
    v26[3] = &unk_10099EF40;
    v26[4] = v5;
    v26[5] = v8;
    v27 = v24;
    v28 = v12;
    v29 = v15;
    v30 = v18;
    v31 = v20;
    v32 = v22;
    [v23 enumerateKeysAndObjectsUsingBlock:v26];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACF50();
  }
}

void sub_10021F474(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptPedometerData:a1 + 32];
}

void sub_10021F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021F5B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021F688;
    block[3] = &unk_10099BB28;
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_10021F688(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACF8C(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 date];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [*(a1 + 40) type] == 1;

    v8 = *(*(a1 + 48) + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10021F7B8;
    v9[3] = &unk_10099EF88;
    v9[4] = v6;
    v10 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACF50();
  }
}

void sub_10021F7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptPedometerEvent:a1 + 32];
}

void sub_10021F8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021F8FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3)
    {
      [v3 timestamp];
      v6 = v5;
      v7 = [v3 startDate];
      [v7 timeIntervalSinceReferenceDate];
      v9 = v8;
      v10 = [v3 confidence];
      v11 = [v3 stationary];
      v12 = [v3 walking];
      v13 = [v3 running];
      v14 = [v3 automotive];
      v15 = [v3 cycling];
      v16 = [v3 unknown];

      v17 = WeakRetained[8];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10021FAA8;
      v18[3] = &unk_10099EFD0;
      v18[4] = v6;
      v18[5] = v9;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = v14;
      v23 = v15;
      v24 = v16;
      v25 = v10;
      [v17 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ACFFC();
    }
  }
}

void sub_10021FAA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptMotionActivity:a1 + 32];
}

void sub_10021FBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021FBFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AD038();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AD074();
      if (v5)
      {
LABEL_7:
        [v5 timestamp];
        sub_1002FE75C((WeakRetained + 22), v8);
        if (v9)
        {
          v10 = [v5 deltaPositionX];

          if (v10)
          {
            v11 = [v5 deltaPositionX];
            [v11 doubleValue];
            v13 = v12;

            v14 = 1;
          }

          else
          {
            v14 = 0;
            v13 = 0;
          }

          v15 = [v5 deltaPositionY];

          if (v15)
          {
            v16 = [v5 deltaPositionY];
            [v16 doubleValue];
            v18 = v17;

            v19 = 1;
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v20 = [v5 deltaPositionZ];

          if (v20)
          {
            v21 = [v5 deltaPositionZ];
            [v21 doubleValue];
            v68 = v22;

            v23 = 1;
          }

          else
          {
            v23 = 0;
            v68 = 0;
          }

          v24 = [v5 deltaVelocityX];

          if (v24)
          {
            v25 = [v5 deltaVelocityX];
            [v25 doubleValue];
            v67 = v26;

            v27 = 1;
          }

          else
          {
            v27 = 0;
            v67 = 0;
          }

          v28 = [v5 deltaVelocityY];

          if (v28)
          {
            v29 = [v5 deltaVelocityY];
            [v29 doubleValue];
            v66 = v30;

            v65 = 1;
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          v31 = [v5 deltaVelocityZ];

          v63 = v19;
          v64 = v14;
          v61 = v27;
          v62 = v23;
          if (v31)
          {
            v32 = [v5 deltaVelocityZ];
            [v32 doubleValue];
            v34 = v33;

            v35 = 1;
          }

          else
          {
            v35 = 0;
            v34 = 0;
          }

          v36 = [v5 quaternionW];

          if (v36)
          {
            v37 = [v5 quaternionW];
            [v37 doubleValue];
            v39 = v38;
          }

          else
          {
            v39 = 0.0;
          }

          v40 = [v5 quaternionX];

          if (v40)
          {
            v41 = [v5 quaternionX];
            [v41 doubleValue];
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v44 = [v5 quaternionY];

          if (v44)
          {
            v45 = [v5 quaternionY];
            [v45 doubleValue];
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          v48 = [v5 quaternionZ];

          v49 = 0.0;
          v50 = 0.0;
          v51 = 0;
          if (v48)
          {
            v52 = [v5 quaternionZ];
            [v52 doubleValue];
            v51 = v53;

            v50 = v39;
          }

          v54 = v48 != 0;
          if (v36)
          {
            v55 = v40 == 0;
          }

          else
          {
            v55 = 1;
          }

          v56 = v55 || v44 == 0;
          v57 = v56;
          if (!v56)
          {
            v49 = v50;
          }

          [v5 timestamp];
          v59 = v58;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004AD120();
          }

          v60 = WeakRetained[8];
          v69[0] = _NSConcreteStackBlock;
          v69[1] = 3221225472;
          v69[2] = sub_100220198;
          v69[3] = &unk_10099F018;
          v69[4] = v59;
          v70 = 0;
          v71 = 0;
          v72 = v13;
          v73 = v64;
          v74 = v18;
          v75 = v63;
          v76 = v68;
          v77 = v62;
          v78 = v67;
          v79 = v61;
          v80 = v66;
          v81 = v65;
          v82 = v34;
          v83 = v35;
          v84 = v49;
          v85 = v43;
          v86 = v47;
          v87 = v51;
          v88 = v54 & ~v57;
          [v60 enumerateKeysAndObjectsUsingBlock:v69];
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AD0E4();
        }

        goto LABEL_56;
      }
    }

    else if (v5)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AD190();
    }
  }

LABEL_56:
}

void sub_100220198(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptDevicePDRInput:a1 + 32];
}

void sub_1002202CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002202EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AD1CC();
    if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = sub_1002FE75C((WeakRetained + 22), v8);
      if (v10)
      {
        v11 = v9;
        [v5 userAcceleration];
        v50 = v12;
        [v5 userAcceleration];
        v49 = v13;
        [v5 userAcceleration];
        v48 = v14;
        [v5 rotationRate];
        v47 = v15;
        [v5 rotationRate];
        v46 = v16;
        [v5 rotationRate];
        v45 = v17;
        v51 = [v5 attitude];
        [v51 quaternion];
        v44 = v18;
        v19 = [v5 attitude];
        [v19 quaternion];
        v43 = v20;
        v21 = [v5 attitude];
        [v21 quaternion];
        v23 = v22;
        v24 = [v5 attitude];
        [v24 quaternion];
        v26 = v25;
        [v5 gravity];
        v28 = v27;
        [v5 gravity];
        v30 = v29;
        [v5 gravity];
        v32 = v31;
        v33 = [v5 attitude];
        [v33 yaw];
        v35 = v34;
        v36 = [v5 attitude];
        [v36 pitch];
        v38 = v37;
        v39 = [v5 attitude];
        [v39 roll];
        v41 = v40;

        v42 = WeakRetained[8];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100220678;
        v52[3] = &unk_10099F060;
        v52[4] = v11;
        v52[5] = v50;
        v52[6] = v49;
        v52[7] = v48;
        v52[8] = v47;
        v52[9] = v46;
        v52[10] = v45;
        v52[11] = v44;
        v52[12] = v43;
        v52[13] = v23;
        v52[14] = v26;
        v52[15] = v28;
        v52[16] = v30;
        v52[17] = v32;
        v52[18] = v35;
        v52[19] = v38;
        v52[20] = v41;
        [v42 enumerateKeysAndObjectsUsingBlock:v52];
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AD23C();
      }

      goto LABEL_12;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AD190();
  }

LABEL_12:
}

void sub_100220678(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptDeviceMotionInput:a1 + 32];
}

void sub_1002209CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptSelfLocationData:a1 + 32];
}

void sub_100220AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [NIGnssExtensionsManager getGnssSatelliteDataVecFromDict:*(a1 + 32)];
  [v4 acceptGnssSatelliteData:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100220B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100220D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updatesEngine];
  [v4 acceptVisionInput:*(a1 + 32)];
}

void sub_100220F58(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    sub_100221278(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 / 0xAA));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + 24 * (v7 % 0xAA));
    v13 = v12;
  }

  v20 = v11;
  v21 = v13;
  sub_100221634(&v20, a2);
  v14 = v21;
  if (v12 != v21)
  {
    v15 = v20;
    do
    {
      if (v11 == v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v11 + 4080;
      }

      if (v12 == v16)
      {
        v18 = v12;
      }

      else
      {
        v17 = 24 * ((v16 - v12 - 24) / 0x18uLL) + 24;
        bzero(v12, v17);
        v18 = &v12[v17];
      }

      a1[5] -= 0x5555555555555555 * ((v18 - v12) >> 3);
      if (v11 == v15)
      {
        break;
      }

      v19 = v11[1];
      ++v11;
      v12 = v19;
    }

    while (v19 != v14);
  }
}

uint64_t sub_1002210D0(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0xAA));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 24 * (v5 % 0xAA);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 170 * (v8 - a2) - 0x5555555555555555 * ((v9 - *v8) >> 3) + 0x5555555555555555 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0xAA));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 24 * (v4 % 0xAA);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 170 * (a2 - v12) - 0x5555555555555555 * v10 + 0x5555555555555555 * ((v13 - *v12) >> 3);
      }

      v18 = v12;
      v19 = v13;
      sub_100221634(&v18, v14);
      v15 = v19;
      if (v19 != v9)
      {
        v16 = v18;
        do
        {
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          v15 += 24;
          if (v15 - *v16 == 4080)
          {
            v17 = v16[1];
            ++v16;
            v15 = v17;
          }
        }

        while (v15 != v9);
      }

      v3[5] -= v11;
      do
      {
        result = sub_1002215BC(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *sub_100221278(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = result[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10016EC70(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10016F098(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 170 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10016EC70(v2, v16);
    }
  }

  return result;
}

void sub_100221548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002215BC(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_100221634(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t sub_1002216D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_100221728(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100221744(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10004EE68(a1);
}

void sub_1002218A0()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100221950()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100221A00()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100221AB0()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100221B60()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100221C10()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100221CC0()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100221D70()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100221E20()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100565F80;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100221F14()
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
  qword_1009F12C8 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F12B8 = v4;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F12B8, &_mh_execute_header);
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
  qword_1009F12E0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F12D0 = v8;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F12D0, &_mh_execute_header);
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
  qword_1009F12F8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F12E8 = v12;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F12E8, &_mh_execute_header);
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
  qword_1009F1310 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F1300 = v16;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1300, &_mh_execute_header);
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
  qword_1009F1328 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F1318 = v20;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1318, &_mh_execute_header);
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
  qword_1009F1340 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F1330 = v24;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1330, &_mh_execute_header);
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
  qword_1009F1358 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F1348 = v28;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1348, &_mh_execute_header);
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
  qword_1009F1370 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F1360 = v32;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1360, &_mh_execute_header);
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
  qword_1009F1388 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F1378 = v36;
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

  __cxa_atexit(&std::string::~string, &xmmword_1009F1378, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100222554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1002225DC(void *a1)
{
  sub_100188E54(a1 + 12);
  sub_100188E54(a1 + 6);

  return sub_100188E54(a1);
}

uint64_t sub_100222620(uint64_t a1, void *a2, uint64_t a3, char a4, int a5)
{
  v9 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 17) = 0;
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  sub_1002247E0(a1 + 32, a3);
  v10 = v9;
  *(a1 + 248) = xmmword_100565F90;
  *(a1 + 64) = v10;
  *(a1 + 104) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = objc_opt_new();
  *(a1 + 288) = objc_opt_new();
  if (a5)
  {
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v17 = xmmword_100565FA0;
    sub_10022457C((a1 + 104), v14);
    sub_10022457C((a1 + 152), v15);
    sub_10022457C((a1 + 200), v16);
    *(a1 + 248) = v17;
    sub_100188E54(v16);
    sub_100188E54(v15);
    sub_100188E54(v14);
  }

  if (!*(a1 + 64))
  {
    v12 = "fUpdatesQueue";
    v13 = 77;
    goto LABEL_8;
  }

  if (!*(a1 + 56))
  {
    v12 = "fStateUpdateCb";
    v13 = 78;
LABEL_8:
    __assert_rtn("HybridMotionDetector", "NIServerMotionDetector.mm", v13, v12);
  }

  return a1;
}

void sub_1002227A8(_Unwind_Exception *a1)
{
  sub_1002225DC(v3);

  sub_1001C329C(v2 + 32);
  v5 = *(v2 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100222838(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nimd,HybridMotionDetector destructed", v5, 2u);
  }

  sub_100188E54((a1 + 200));
  sub_100188E54((a1 + 152));
  sub_100188E54((a1 + 104));

  sub_1001C329C(a1 + 32);
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100222920(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  sub_1002229D8(a1);
  v2 = *(a1 + 264);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 264);
    *(a1 + 264) = 0;
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 272);
    *(a1 + 272) = 0;
  }

  sub_100224878(a1 + 32);
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nimd,HybridMotionDetector invalided", v7, 2u);
  }
}

void sub_1002229D8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = *(a1 + 80);
  if (v2)
  {
    [v2 stopActivityUpdates];
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 80) = 0;

  v4 = *(a1 + 72);
  if (v4)
  {
    [v4 cancelAllOperations];
  }

  sub_100223348(a1);
  v5 = *(a1 + 96);
  *(a1 + 96) = 0;

  v6 = *(a1 + 88);
  if (v6)
  {
    [v6 cancelAllOperations];
  }

  *(a1 + 17) = 0;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#nimd,stopped monitoring motion updates", v8, 2u);
  }
}

void sub_100222AA4(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 64));
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_100222C30(a1, 5.0);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if (v8)
          {
            v9 = *(a1 + 280);
            v10 = [*(*(&v11 + 1) + 8 * v7) discoveryToken];
            [v9 setObject:v8 forKey:v10];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    sub_100222D7C(a1);
  }
}

void sub_100222C30(uint64_t *a1, double a2)
{
  dispatch_assert_queue_V2(a1[8]);
  v4 = a1[33];
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = a1[33];
    a1[33] = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1[8]);
  v7 = a1[33];
  a1[33] = v6;

  v8 = a1[33];
  v9 = dispatch_time(0, llround(a2 * 1000000000.0));
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a1[33];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_100224184;
  v13[3] = &unk_10099F2C8;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a2;
  dispatch_source_set_event_handler(v12, v13);
  dispatch_resume(a1[33]);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_100222D7C(uint64_t a1)
{
  v2 = sub_100223A38(a1);
  if (v2 != *(a1 + 28))
  {
    if (v2)
    {

      sub_100223100(a1);
    }

    else
    {

      sub_100223CA4(a1);
    }
  }
}

void sub_100222DF0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (+[CMMotionActivityManager isActivityAvailable])
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 72);
    *(a1 + 72) = v2;

    [*(a1 + 72) setUnderlyingQueue:*(a1 + 64)];
    v4 = objc_alloc_init(CMMotionActivityManager);
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    sub_100222FE4(a1);
    *(a1 + 28) = 0;
    v6 = objc_opt_new();
    v7 = *(a1 + 88);
    *(a1 + 88) = v6;

    [*(a1 + 88) setUnderlyingQueue:*(a1 + 64)];
    v8 = objc_alloc_init(CMMotionManager);
    v9 = *(a1 + 96);
    *(a1 + 96) = v8;

    [*(a1 + 96) setDeviceMotionUpdateInterval:0.01];
    *(a1 + 17) = 1;
    if (*(a1 + 16))
    {
      sub_100223100(a1);
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 28))
      {
        v11 = "DeviceMotionGravity";
      }

      else
      {
        v11 = "MotionActivity";
      }

      sub_100004A08(__p, v11);
      if (v15 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315138;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#nimd,started monitoring motion updates, detector type is %s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AD3D8(v13);
    }
  }
}

void sub_100222FE4(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[8]);
  v2 = a1[10];
  if (v2)
  {
    v3 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[10];
    }

    v5 = a1[9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3321888768;
    v7[2] = sub_100223DD4;
    v7[3] = &unk_10099F238;
    v7[4] = v3;
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    [v2 startActivityUpdatesToQueue:v5 withHandler:v7];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AD41C(v6);
    }
  }
}

void sub_1002230DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100223100(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 28))
  {
    v2 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v6 = 0;
    v3 = "#nimd,trying to switch to motion detector type DeviceMotionGravity which is current motion detector type";
    v4 = &v6;
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(a1 + 64));
  v5 = *(a1 + 80);
  if (v5)
  {
    [v5 stopActivityUpdates];
  }

  *(a1 + 28) = 1;
  sub_1002235BC(a1);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "#nimd,switched motion detector type to DeviceMotionGravity";
    v4 = buf;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

void sub_1002231D8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = *(a1 + 80);
  if (v2)
  {
    [v2 stopActivityUpdates];
  }

  sub_100223348(a1);
  v3 = [*(a1 + 280) count] || *(a1 + 16) == 1;
  *(a1 + 28) = v3;
  *(a1 + 17) = 0;
  v4 = *(a1 + 24) + 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = v4;
  sub_100223390(a1, v4);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 28))
    {
      v6 = "DeviceMotionGravity";
    }

    else
    {
      v6 = "MotionActivity";
    }

    sub_100004A08(__p, v6);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#nimd,paused monitoring motion updates, detector type is %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100223348(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = *(a1 + 96);
  if (v2)
  {
    [v2 stopDeviceMotionUpdates];
  }

  sub_100223E8C((a1 + 104));
}

void sub_100223390(uint64_t *a1, int a2)
{
  dispatch_assert_queue_V2(a1[8]);
  v4 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[8];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100223FC0;
  block[3] = &unk_10099F298;
  block[4] = v4;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a2;
  dispatch_async(v6, block);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_100223460(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if ((*(a1 + 17) & 1) == 0)
  {
    v2 = *(a1 + 28);
    if (v2 == 1)
    {
      sub_1002235BC(a1);
      *(a1 + 17) = 1;
      sub_100222C30(a1, 10.0);
    }

    else if (!v2)
    {
      sub_100222FE4(a1);
      *(a1 + 17) = 1;
    }

    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 28))
      {
        v4 = "DeviceMotionGravity";
      }

      else
      {
        v4 = "MotionActivity";
      }

      sub_100004A08(__p, v4);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nimd,continued monitoring motion updates, detector type is %s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1002235BC(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[8]);
  v2 = a1[12];
  if (v2)
  {
    v3 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[12];
    }

    v5 = a1[11];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3321888768;
    v7[2] = sub_10000ACDC;
    v7[3] = &unk_10099F268;
    v7[4] = v3;
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    [v2 startDeviceMotionUpdatesToQueue:v5 withHandler:v7];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AD460(v6);
    }
  }
}

void sub_1002236B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002236D8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nimd,motion state is forced to be Moving", v3, 2u);
  }

  *(a1 + 20) = 1;
  sub_100223390(a1, *(a1 + 24));
}

void sub_100223760(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 64));
  if (v3 && !*(a1 + 28))
  {
    if ([v3 stationary])
    {
      v4 = [v3 confidence] == 2 ? 2 : 1;
    }

    else
    {
      v4 = 1;
    }

    if (*(a1 + 20) != v4)
    {
      v5 = *(a1 + 24) + 1;
      *(a1 + 20) = v4;
      *(a1 + 24) = v5;
      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_100004A08(v15, (&off_10099F350)[*(a1 + 20)]);
        v7 = v16;
        v8 = v15[0];
        v9 = *(a1 + 24);
        if (*(a1 + 28))
        {
          v10 = "DeviceMotionGravity";
        }

        else
        {
          v10 = "MotionActivity";
        }

        sub_100004A08(__p, v10);
        v11 = v15;
        if (v7 < 0)
        {
          v11 = v8;
        }

        if (v14 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315650;
        v18 = v11;
        v19 = 1024;
        v20 = v9;
        v21 = 2080;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nimd,generated new motion state %s with event id %u, detector type is %s", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }

      sub_100223390(a1, *(a1 + 24));
    }
  }
}

void sub_10022392C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10022396C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 28) == 1)
  {
    sub_100223348(a1);
    *(a1 + 28) = 0;
    sub_100222FE4(a1);
    v2 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v6 = 0;
    v3 = "#nimd,switched motion detector type to MotionActivity";
    v4 = &v6;
  }

  else
  {
    v2 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v5 = 0;
    v3 = "#nimd,trying to switch to motion detector type MotionActivity which is current motion detector type";
    v4 = &v5;
  }

  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
}

uint64_t sub_100223A38(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 2139095039;
  v2 = sub_10041C3F0();
  v3 = *(a1 + 280);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100223BB8;
  v13[3] = &unk_10099F1F0;
  *&v13[5] = v2;
  v13[4] = &v14;
  [v3 enumerateKeysAndObjectsUsingBlock:v13];
  v4 = v15[6];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = *(a1 + 288);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100223C60;
  v8[3] = &unk_10099F218;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  if (v4 <= 1.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void sub_100223B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100223BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  v9 = v4;
  [v4 timestamp];
  if (v5 - v6 < 2.0)
  {
    [v9 distance];
    if (v7 < *(*(*(a1 + 32) + 8) + 24))
    {
      [v9 distance];
      *(*(*(a1 + 32) + 8) + 24) = v8;
    }
  }
}

id sub_100223C60(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 BOOLValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100223CA4(uint64_t *a1)
{
  dispatch_assert_queue_V2(a1[8]);
  if ((a1[2] & 1) == 0 && !a1[34])
  {
    v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1[8]);
    v3 = a1[34];
    a1[34] = v2;

    v4 = a1[34];
    v5 = dispatch_time(0, llround(3.5e10));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a1[34];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3321888768;
    handler[2] = sub_10022437C;
    handler[3] = &unk_10099F2F8;
    handler[4] = a1;
    handler[5] = v6;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(a1[34]);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_100223DD4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      if (v6)
      {
        sub_100223760(v6, v7);
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_100223E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_10000AD84(v10);

  _Unwind_Resume(a1);
}

uint64_t sub_100223E60(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100223E7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100223E8C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 512;
  }

  a1[4] = v6;
LABEL_8:
  v7 = a1[7];
  v8 = a1[8];
  a1[11] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[8];
      v7 = (a1[7] + 8);
      a1[7] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  a1[10] = v11;
LABEL_15:
  v12 = a1[13];
  v13 = a1[14];
  a1[17] = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = a1[14];
      v12 = (a1[13] + 8);
      a1[13] = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 512;
  }

  a1[16] = v16;
}

void sub_100223FC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(a1 + 48) == *(v5 + 24) && *(v5 + 56))
      {
        sub_100224130(v5 + 32, *(v5 + 20));
        v6 = qword_1009F9820;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_100004A08(__p, (&off_10099F350)[*(v5 + 20)]);
          if (v10 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          v8 = *(a1 + 48);
          *buf = 136315394;
          v12 = v7;
          v13 = 1024;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nimd,delivered motion state %s with motion event id %u", buf, 0x12u);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10000AD84(v4);
    }
  }
}

uint64_t sub_100224130(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100224184(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40) && *(v3 + 17) == 1 && (*(v3 + 16) & 1) == 0)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nimd,stale measurement timer fires", v7, 2u);
        }

        sub_10022425C(v3, *(a1 + 56));
        sub_100222D7C(v3);
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_10022425C(uint64_t a1, double a2)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v4 = sub_10041C3F0();
  v5 = +[NSMutableArray array];
  v6 = *(a1 + 280);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100224468;
  v8[3] = &unk_10099F330;
  v10 = v4;
  v11 = a2;
  v7 = v5;
  v9 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  [*(a1 + 280) removeObjectsForKeys:v7];
}

uint64_t sub_100224350(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10022436C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10022437C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        if ((*(v3 + 16) & 1) == 0 && *(v3 + 17) == 1 && !sub_100223A38(v3))
        {
          v6 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nimd,switching to motion activity detector timer fires", v8, 2u);
          }

          sub_10022396C(v3);
        }

        dispatch_source_cancel(*(v3 + 272));
        v7 = *(v3 + 272);
        *(v3 + 272) = 0;
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_100224468(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  [v5 timestamp];
  if (v6 - v7 > *(a1 + 48))
  {
    [*(a1 + 32) addObject:v8];
  }
}

void sub_100224500(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  a1[4] = v6;
}

uint64_t sub_10022457C(void **a1, uint64_t a2)
{
  sub_100224500(a1);
  sub_1002245CC(a1);
  result = sub_100224778(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1002245CC(void **a1)
{
  if (a1[5])
  {
    sub_1000139A8(a1, 0);
    sub_1001FC820(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_100224650(a1);
}

void sub_100224650(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100224730(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_100224730(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100224778(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_100224650(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t sub_1002247E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100224878(uint64_t a1)
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

void *sub_1002248FC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_100224730(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100224AD0(a1, &v10);
}

void sub_100224A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100224AD0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100224730(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100224BD8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100224730(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100224CE4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100224730(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100224DEC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100224730(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_100224EF8()
{
  if (qword_1009F13A8 != -1)
  {
    sub_1004AD580();
  }

  if (byte_1009F13A0 == 1)
  {

    kdebug_trace();
  }
}

void sub_100224FB0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1009F13A0 = [v1 BOOLForKey:@"LogAriadneSignposts"];
}

void sub_1002255D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100226F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  if (v17 != v18)
  {
  }

  if (v16 != v19)
  {
  }

  if (v15 != *(v13 - 168))
  {
  }

  if (v14 != *(v13 - 156))
  {
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1002270E8(__n128 a1)
{
  v1 = [NSNumber numberWithFloat:?];
  v2 = [v1 hash];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v4 = [NSNumber numberWithFloat:v3];
  v5 = [v4 hash];
  v6 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))];
  v7 = [v6 hash];

  return v5 ^ v2 ^ v7;
}

void sub_1002279CC(_Unwind_Exception *a1)
{
  if (v3 != v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100227FD0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10022818C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100229010(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100229074(_DWORD *a1, void *a2)
{
  v3 = a2;
  *a1 = *(sub_1000054A8() + 144);
  sub_100004A08(&__p, "regulatory,geo,sm");
  *buf = a1;
  operator new();
}

void sub_10022963C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100252824(v37 + 1736);
  sub_10022E38C(v37 + 1040);
  sub_10022E5C4(v37 + 632, v44, v45, v46, v47, v48, v49, v50);
  sub_10022E754(v37 + 480);

  if (*(v37 + 463) < 0)
  {
    operator delete(*v42);
  }

  sub_100005F4C((v37 + 408), 0, v51, v52, v53, v54, v55, v56);
  if (*(v37 + 399) < 0)
  {
    operator delete(*(v37 + 376));
  }

  if (*(v37 + 375) < 0)
  {
    operator delete(*(v37 + 352));
  }

  if (*(v37 + 343) < 0)
  {
    operator delete(*(v37 + 320));
  }

  if (*(v37 + 319) < 0)
  {
    operator delete(*v41);
  }

  sub_10022F9F4(v37 + 256);
  if (*(v37 + 239) < 0)
  {
    operator delete(*v40);
  }

  sub_1000197C8(v37 + 184);
  sub_10022F8F0(v37 + 152);
  sub_10022F970(v39);

  _Unwind_Resume(a1);
}

uint64_t sub_1002297F8(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    return a2 == 2;
  }

  sub_100229E94(a1);
  return 2;
}

uint64_t sub_100229830(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      return 2;
    case 2:
      sub_10022D5BC(a1, (a1 + 296));
      break;
    case 0:
      sub_10022D5BC(a1, (a1 + 296));
      sub_10022A034(a1);
      break;
  }

  return 1;
}

uint64_t sub_100229898(uint64_t a1, int a2)
{
  v4 = sub_100003AE0();
  if ((byte_1009F13B8 & 1) == 0)
  {
    v5 = v4;
    if (sub_10045C5F8(v4, &qword_1009EB960 + 1, &qword_1009EB960))
    {
      if ((sub_10045C70C(v5, &dword_1009EB968) & 1) == 0)
      {
        dword_1009EB968 = 35040;
      }
    }

    else
    {
      qword_1009EB960 = 0x12C00000258;
    }

    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AD75C();
    }

    byte_1009F13B8 = 1;
  }

  v6 = 2;
  if (a2 <= 5)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        sub_10022D694();
      }

      if (a2 == 1)
      {
        sub_10022A184(a1);
        sub_1001BEF10((a1 + 8), 8);
        sub_1001BEF10((a1 + 8), 9);
        sub_10022A034(a1);
        sub_100005F4C((a1 + 408), 0, v7, v8, v9, v10, v11, v12);
      }

      return v6;
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        sub_10022D5BC(a1, (a1 + 296));
      }

      return v6;
    }

    return 1;
  }

  if (a2 <= 7)
  {
    if (a2 == 6)
    {
      if (*(a1 + 432))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      sub_10022A184(a1);
      *(a1 + 436) = dword_1009EB968;
      sub_1001BEF10((a1 + 8), 8);
      sub_1001BEF10((a1 + 8), 9);
      sub_10022A034(a1);
    }

    return v6;
  }

  if (a2 == 8)
  {
    sub_10022A184(a1);
    v13 = *(a1 + 436);
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v15 < 0 == v14)
    {
      *(a1 + 436) = v15;
      v16 = qword_1009EB960;
      v17 = a1 + 8;
      v18 = 9;
      goto LABEL_37;
    }

    *(a1 + 436) = dword_1009EB968;
    std::string::assign((a1 + 296), off_1009EC438[0]);
    return 1;
  }

  if (a2 != 9)
  {
    if (a2 != 10)
    {
      return v6;
    }

    if (*(a1 + 432) == 1)
    {
      *(a1 + 436) = dword_1009EB968;
      if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
      {
        sub_1004AD880((a1 + 436));
      }

      return v6;
    }

    sub_100229E94(a1);
    if (*(a1 + 432) != 1)
    {
      return v6;
    }

    sub_10022A10C(a1);
    v19 = HIDWORD(qword_1009EB960);
    *(a1 + 436) = dword_1009EB968;
    v16 = v19;
    v17 = a1 + 8;
    v18 = 8;
LABEL_37:
    sub_10022FF98(v17, v18, v16);
    return v6;
  }

  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AD7F8(a1);
  }

  sub_10022A10C(a1);
  sub_10022FF98(a1 + 8, 8, SHIDWORD(qword_1009EB960));
  return 2;
}

uint64_t sub_100229B88(uint64_t a1, int a2)
{
  sub_100003AE0();
  v11 = 31536000;
  result = 3;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          sub_100229E94(a1);
          return 2;
        }

        return result;
      }

      std::string::assign((a1 + 296), off_1009EC438[0]);
    }

    return 1;
  }

  if (!a2)
  {
    sub_10022D694();
  }

  if (a2 == 1)
  {
    sub_1001BEF10((a1 + 8), 4);
    sub_100005F4C((a1 + 408), 0, v5, v6, v7, v8, v9, v10);
    return 3;
  }

  return result;
}

uint64_t sub_100229CA8(uint64_t a1)
{
  v2 = *(a1 + 424);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100229E28;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v2, block);
  sub_100252824(a1 + 1736);
  sub_10022E38C(a1 + 1040);
  sub_10022E5C4(a1 + 632, v3, v4, v5, v6, v7, v8, v9);
  sub_10022E7BC(a1 + 600, *(a1 + 608));
  sub_10022E820(a1 + 568, *(a1 + 576));
  sub_10022E8D4(a1 + 536);
  sub_10022E954(a1 + 512, *(a1 + 520));

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  sub_100005F4C((a1 + 408), 0, v10, v11, v12, v13, v14, v15);
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  sub_10022F9F4(a1 + 256);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  sub_1000197C8(a1 + 184);
  sub_10022F8F0(a1 + 152);
  sub_10022F970(a1 + 8);
  return a1;
}

void sub_100229E30(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 464);
    *(a1 + 464) = 0;
  }
}

void sub_100229E94(uint64_t a1)
{
  v2 = a1 + 216;
  if (!sub_100229FDC(a1 + 216))
  {
    *(a1 + 432) = 1;
    v3 = qword_1009F13B0;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    if ((*(a1 + 239) & 0x8000000000000000) != 0)
    {
      v2 = *(a1 + 216);
      if (*(a1 + 224))
      {
        goto LABEL_9;
      }
    }

    else if (*(a1 + 239))
    {
LABEL_9:
      v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 248);
LABEL_15:
      sub_1004AD968(v2, v6, *&v5);
      goto LABEL_16;
    }

    v5 = 0.0;
    goto LABEL_15;
  }

  v3 = qword_1009F13B0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if ((*(a1 + 239) & 0x8000000000000000) != 0)
    {
      v2 = *(a1 + 216);
      if (*(a1 + 224))
      {
        goto LABEL_5;
      }
    }

    else if (*(a1 + 239))
    {
LABEL_5:
      v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 248);
LABEL_12:
      sub_1004AD9A4(v2, v6, *&v4);
      goto LABEL_16;
    }

    v4 = 0.0;
    goto LABEL_12;
  }

LABEL_16:
}

BOOL sub_100229FDC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
      return CFAbsoluteTimeGetCurrent() - *(a1 + 32) < *&qword_1009EB870;
    }
  }

  else if (*(a1 + 23))
  {
    return CFAbsoluteTimeGetCurrent() - *(a1 + 32) < *&qword_1009EB870;
  }

  return 0;
}

void sub_10022A034(uint64_t a1)
{
  v2 = qword_1009F13B0;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if ((*(a1 + 239) & 0x8000000000000000) != 0)
    {
      v3 = *(a1 + 216);
      if (*(a1 + 224))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = a1 + 216;
      if (*(a1 + 239))
      {
LABEL_4:
        v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 248);
LABEL_7:
        sub_1004AD9E0(v3, &v5, *&v4);
        goto LABEL_8;
      }
    }

    v4 = 0.0;
    goto LABEL_7;
  }

LABEL_8:

  *(a1 + 432) = 0;
}

void sub_10022A10C(uint64_t a1)
{
  v2 = *(a1 + 432);
  v3 = os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      sub_1004ADA58();
    }

    sub_10032AFB8((a1 + 632));
    *(a1 + 433) = 1;
  }

  else if (v3)
  {
    sub_1004ADA1C();
  }
}

uint64_t sub_10022A184(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADA94();
  }

  result = sub_10032B070((a1 + 632));
  *(a1 + 433) = 0;
  return result;
}

uint64_t sub_10022A1D4(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_ERROR))
    {
      sub_1004ADB40();
    }

    goto LABEL_10;
  }

  sub_100229E30(a1);
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 424));
  v7 = *(a1 + 464);
  *(a1 + 464) = v6;

  v8 = *(a1 + 464);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_ERROR))
    {
      sub_1004ADB0C();
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 464);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022A364;
  v13[3] = &unk_10099F470;
  v15 = a1;
  v14 = v5;
  dispatch_source_set_event_handler(v10, v13);
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADAD0();
  }

  dispatch_resume(*(a1 + 464));

  v11 = 1;
LABEL_11:

  return v11;
}

uint64_t sub_10022A364(uint64_t a1)
{
  sub_100229E30(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_10022A3A8(uint64_t a1)
{
  v2 = sub_100358CCC(a1 + 480);
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADB74();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (sub_100003AA8(*a1))
  {
    sub_100252BF8(a1 + 1736);
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004ADBE8();
    }

    if (sub_10041C7EC(*a1))
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10022A578;
      v6[3] = &unk_10098AD98;
      v6[4] = a1;
      v3 = objc_retainBlock(v6);
      sub_10022A1D4(a1, v3, 0x168u);
    }
  }

  else
  {
    sub_10041C7EC(*a1);
  }

  v4 = sub_10032AF00((a1 + 632));
LABEL_12:
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADC24();
  }

  return v4;
}

uint64_t sub_10022A500(uint64_t a1)
{
  if (*(a1 + 399) < 0)
  {
    **(a1 + 376) = 0;
    *(a1 + 384) = 0;
  }

  else
  {
    *(a1 + 376) = 0;
    *(a1 + 399) = 0;
  }

  v2 = qword_1009F13B0;
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADC98((a1 + 399), (a1 + 376), v2);
  }

  v3 = sub_100003AE0();
  return sub_10045C228(v3, (a1 + 376));
}

void sub_10022A578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v19 = -1;
  v13 = 0;
  v12 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v14 = -1;
  v2 = sub_100003AE0();
  v7 = 0;
  v20 = &v7;
  v3 = sub_10022FA7C((v1 + 256), &v7);
  if (*(v3 + 55) < 0)
  {
    sub_1000056BC(__p, v3[4], v3[5]);
  }

  else
  {
    *__p = *(v3 + 2);
    v9 = v3[6];
  }

  sub_100459DC8(v2, __p, &v15);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = sub_100003AE0();
  if (*(v1 + 463) < 0)
  {
    sub_1000056BC(__dst, *(v1 + 440), *(v1 + 448));
  }

  else
  {
    *__dst = *(v1 + 440);
    v6 = *(v1 + 456);
  }

  sub_100459DC8(v4, __dst, v10);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst[0]);
  }

  AnalyticsSendEventLazy();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*(&v16 + 1));
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15);
  }
}

void sub_10022A750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10022A868(&a29);
  sub_10022A868(v29 - 112);
  _Unwind_Resume(a1);
}

id sub_10022A79C(uint64_t a1)
{
  v4 = @"ISOSources";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_10022A868(uint64_t a1)
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

void sub_10022A8AC(uint64_t a1@<X0>, BOOL *a2@<X1>, _BYTE *a3@<X2>, std::string *a4@<X8>)
{
  v8 = sub_100003AE0();
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v43 = -1;
  v37 = 0;
  *v35 = 0u;
  v36 = 0u;
  *v34 = 0u;
  v38 = -1;
  v32 = 0;
  *v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  v33 = -1;
  v28 = 0;
  v44 = &v28;
  v9 = sub_10022FA7C((a1 + 256), &v28);
  v28 = 2;
  v44 = &v28;
  v10 = sub_10022FA7C((a1 + 256), &v28);
  v28 = 3;
  v44 = &v28;
  v11 = sub_10022FA7C((a1 + 256), &v28);
  if (*(v9 + 55) < 0)
  {
    sub_1000056BC(__p, v9[4], v9[5]);
  }

  else
  {
    *__p = *(v9 + 2);
    v27 = v9[6];
  }

  v12 = sub_100459DC8(v8, __p, &v39);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v10 + 55) < 0)
  {
    sub_1000056BC(__dst, v10[4], v10[5]);
  }

  else
  {
    *__dst = *(v10 + 2);
    v25 = v10[6];
  }

  v13 = sub_100459DC8(v8, __dst, v34);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(v11 + 55) < 0)
  {
    sub_1000056BC(v22, v11[4], v11[5]);
  }

  else
  {
    *v22 = *(v11 + 2);
    v23 = v11[6];
  }

  v14 = sub_100459DC8(v8, v22, v29);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if (v12)
    {
LABEL_16:
      *a2 = 1;
      v28 = 0;
      v44 = &v28;
      v15 = sub_10022FA7C((a1 + 256), &v28);
      v16 = sub_10022ACE0((v15 + 3));
      if (!v13)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if (v12)
  {
    goto LABEL_16;
  }

  v16 = 0;
  *a2 = v13 || v14;
  if (!v13)
  {
LABEL_17:
    v17 = 0;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_25:
    v19 = 0;
    if (v16)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:
  v28 = 2;
  v44 = &v28;
  v21 = sub_10022FA7C((a1 + 256), &v28);
  v17 = sub_10022ACE0((v21 + 3));
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_18:
  v28 = 3;
  v44 = &v28;
  v18 = sub_10022FA7C((a1 + 256), &v28);
  v19 = sub_10022ACE0((v18 + 3));
  if (v16)
  {
LABEL_19:
    *a3 = 1;
    goto LABEL_20;
  }

LABEL_26:
  *a3 = (v17 | v19) & 1;
  if (v13 || v14)
  {
    sub_10022AD60(a1, a2, a3, a4);
    goto LABEL_31;
  }

  if (!v12)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_31;
  }

LABEL_20:
  if (*(v9 + 55) < 0)
  {
    sub_1000056BC(a4, v9[4], v9[5]);
  }

  else
  {
    v20 = *(v9 + 2);
    a4->__r_.__value_.__r.__words[2] = v9[6];
    *&a4->__r_.__value_.__l.__data_ = v20;
  }

LABEL_31:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  if (SHIBYTE(v30[0]) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  if (SHIBYTE(v35[0]) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&v40 + 1));
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39);
  }
}

void sub_10022AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_10022A868(&a30);
  sub_10022A868(&a38);
  sub_10022A868(v38 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_10022ACE0(uint64_t a1)
{
  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    v2 = *(a1 + 16);
    v3 = v2 == 0;
  }

  else
  {
    v3 = v2 == 0;
  }

  v4 = v3;
  if (!v2)
  {
    v5 = 0.0;
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = *a1 ^ 1 | (v5 < *&qword_1009EB868);
    return v6 & 1;
  }

  v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 32);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  return v6 & 1;
}

void sub_10022AD60(uint64_t a1@<X0>, BOOL *a2@<X1>, _BYTE *a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v8 = sub_100003AE0();
  v54 = 0;
  *v52 = 0u;
  v53 = 0u;
  *v51 = 0u;
  v55 = -1;
  v49 = 0;
  *v47 = 0u;
  v48 = 0u;
  *v46 = 0u;
  v50 = -1;
  v45 = 0;
  if (sub_100003AA8(*a1))
  {
    v9 = 0;
    v10 = 1;
    goto LABEL_5;
  }

  if (sub_10041C748(*a1))
  {
    v10 = 3;
    v9 = 2;
LABEL_5:
    v45 = __PAIR64__(v9, v10);
    *buf = &v45 + 4;
    v11 = sub_10022FD3C((a1 + 256), &v45 + 1);
    *buf = &v45;
    v12 = sub_10022FD3C((a1 + 256), &v45);
    v40 = (v11 + 4);
    if (*(v11 + 55) < 0)
    {
      sub_1000056BC(__p, v11[4], v11[5]);
    }

    else
    {
      *__p = *(v11 + 2);
      v44 = v11[6];
    }

    v13 = sub_100459DC8(v8, __p, v51);
    v14 = v12 + 4;
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(v12 + 55) < 0)
    {
      sub_1000056BC(__dst, v12[4], v12[5]);
    }

    else
    {
      *__dst = *v14;
      v42 = v12[6];
    }

    v15 = sub_100459DC8(v8, __dst, v46);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__dst[0]);
    }

    *a2 = v13 || v15;
    if (v13)
    {
      *buf = &v45 + 4;
      v16 = sub_10022FD3C((a1 + 256), &v45 + 1);
      v17 = sub_10022ACE0((v16 + 3));
      if (!v15)
      {
LABEL_17:
        v18 = 0;
LABEL_20:
        *a3 = (v17 | v18) & 1;
        v20 = qword_1009F13B0;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v29 = v11 + 4;
          if (*(v11 + 55) < 0)
          {
            v29 = *v40;
          }

          v38 = v29;
          v56 = (&v45 + 4);
          v30 = sub_10022FD3C((a1 + 256), &v45 + 1);
          v31 = *(v30 + 55);
          if (v31 < 0)
          {
            v31 = v30[5];
          }

          v32 = 0.0;
          if (v31)
          {
            v32 = CFAbsoluteTimeGetCurrent() - *(v30 + 7);
          }

          v56 = (&v45 + 4);
          v33 = *(sub_10022FD3C((a1 + 256), &v45 + 1) + 24) ^ 1;
          *buf = 67110146;
          *&buf[4] = v13;
          *&buf[8] = 2080;
          *&buf[10] = v38;
          v58 = 2048;
          v59 = v32;
          v60 = 1024;
          v61 = v33;
          v62 = 1024;
          v63 = v17;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,refreshCurrentGeoArea,candidate,mcc1Iso,valid:%d,value:%s,age:%.2f,current:%d,recent:%d", buf, 0x28u);
        }

        v21 = qword_1009F13B0;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          if (*(v12 + 55) < 0)
          {
            v39 = *v14;
          }

          else
          {
            v39 = v12 + 4;
          }

          v56 = &v45;
          v34 = sub_10022FD3C((a1 + 256), &v45);
          v35 = *(v34 + 55);
          if (v35 < 0)
          {
            v35 = v34[5];
          }

          v36 = 0.0;
          if (v35)
          {
            v36 = CFAbsoluteTimeGetCurrent() - *(v34 + 7);
          }

          v56 = &v45;
          v37 = *(sub_10022FD3C((a1 + 256), &v45) + 24) ^ 1;
          *buf = 67110146;
          *&buf[4] = v15;
          *&buf[8] = 2080;
          *&buf[10] = v39;
          v58 = 2048;
          v59 = v36;
          v60 = 1024;
          v61 = v37;
          v62 = 1024;
          v63 = v18;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,refreshCurrentGeoArea,candidate,mcc2Iso,valid:%d,value:%s,age:%.2f,current:%d,recent:%d", buf, 0x28u);
        }

        if (v13 && v15)
        {
          if (v17 == v18)
          {
            v24 = (HIBYTE(v54) ^ 1) + (v54 ^ 1);
            v25 = (HIBYTE(v49) ^ 1) + (v49 ^ 1);
            v26 = v11 + 4;
            if (v24 <= v25)
            {
              v27 = (v12 + 4);
            }

            else
            {
              v27 = (v11 + 4);
            }

            std::string::operator=(a4, v27);
            v28 = qword_1009F13B0;
            if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
            {
              if (*(v11 + 55) < 0)
              {
                v26 = *v40;
              }

              *buf = 136315650;
              *&buf[4] = v26;
              *&buf[12] = 1024;
              *&buf[14] = v24;
              v58 = 1024;
              LODWORD(v59) = v25;
              _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,refreshCurrentGeoArea,bestMccCandidate:%s,reason,restrictionCount,mcc1Count:%d,mcc2Count:%d,chosen", buf, 0x18u);
            }
          }

          else
          {
            if (v17)
            {
              v22 = (v11 + 4);
            }

            else
            {
              v22 = (v12 + 4);
            }

            std::string::operator=(a4, v22);
            if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
            {
              sub_1004ADDC4(a4);
            }
          }
        }

        else
        {
          if (v13)
          {
            v23 = (v11 + 4);
          }

          else
          {
            v23 = (v12 + 4);
          }

          std::string::operator=(a4, v23);
          if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
          {
            sub_1004ADD54(a4);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    *buf = &v45;
    v19 = sub_10022FD3C((a1 + 256), &v45);
    v18 = sub_10022ACE0((v19 + 3));
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_FAULT))
  {
    sub_1004ADD14();
  }

LABEL_40:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[1]);
  }

  if (SHIBYTE(v52[0]) < 0)
  {
    operator delete(v51[0]);
  }
}

void sub_10022B3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_10022A868(&a27);
  sub_10022A868(&a35);
  if (*(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  _Unwind_Resume(a1);
}

void sub_10022B42C(uint64_t a1@<X0>, BOOL *a2@<X1>, BOOL *a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v8 = sub_100003AE0();
  v34 = 0;
  *v32 = 0u;
  v33 = 0u;
  *v31 = 0u;
  v35 = -1;
  v29 = 0;
  *v27 = 0u;
  v28 = 0u;
  *v26 = 0u;
  v30 = -1;
  v25 = 0;
  *buf = &v25;
  v9 = sub_10022FA7C((a1 + 256), &v25);
  v10 = v9;
  v11 = (v9 + 4);
  if (*(v9 + 55) < 0)
  {
    sub_1000056BC(__p, v9[4], v9[5]);
  }

  else
  {
    *__p = *&v11->__r_.__value_.__l.__data_;
    v24 = v9[6];
  }

  v12 = sub_100459DC8(v8, __p, v31);
  v13 = (a1 + 440);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 463) < 0)
  {
    sub_1000056BC(v21, *(a1 + 440), *(a1 + 448));
  }

  else
  {
    *v21 = *v13;
    v22 = *(a1 + 456);
  }

  v14 = sub_100459DC8(v8, v21, v26);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  v15 = v12 || v14;
  *a2 = v15;
  *a3 = v15;
  v16 = qword_1009F13B0;
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    if (*(v10 + 55) < 0)
    {
      v19 = v11->__r_.__value_.__r.__words[0];
    }

    else
    {
      v19 = v11;
    }

    *buf = 67109378;
    *&buf[4] = v12;
    v37 = 2080;
    v38 = v19;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "geo,monitor,MccForHomepod,chooseBestMccForHomepod,candidate,mcc1Iso,valid:%d,value:%s", buf, 0x12u);
  }

  v17 = qword_1009F13B0;
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 463) < 0)
    {
      v20 = *v13;
    }

    else
    {
      v20 = (a1 + 440);
    }

    *buf = 67109378;
    *&buf[4] = v14;
    v37 = 2080;
    v38 = v20;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "geo,monitor,MccForHomepod,chooseBestMccForHomepod,candidate,mcc2Iso,valid:%d,value:%s", buf, 0x12u);
  }

  if (v12)
  {
    v18 = v11;
  }

  else
  {
    v18 = (a1 + 440);
  }

  std::string::operator=(a4, v18);
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ADE34(a4);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[1]);
  }

  if (SHIBYTE(v27[0]) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_10022B774(uint64_t a1)
{
  memset(&__str, 0, sizeof(__str));
  sub_100004A08(&v55, "none");
  v54 = 0;
  memset(&__p, 0, sizeof(__p));
  if (sub_10041C77C(*a1))
  {
    sub_10022A8AC(a1, &v54 + 1, &v54, &buf);
  }

  else if (sub_10041C7EC(*a1))
  {
    sub_10022B42C(a1, &v54 + 1, &v54, &buf);
  }

  else
  {
    sub_10022AD60(a1, &v54 + 1, &v54, &buf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
  if (sub_100229FDC(a1 + 216))
  {
    sub_10022C0E0(a1);
  }

  v2 = sub_100003AE0();
  v3 = &qword_1009F1000;
  if (!sub_10045C230(v2, (a1 + 376)))
  {
    v4 = qword_1009F13B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004ADEA4();
    }
  }

  if (*(a1 + 434) == 1)
  {
    std::string::operator=(&__str, (a1 + 376));
    v5 = "lastStoredBeforeAirplaneMode";
LABEL_18:
    std::string::assign(&v55, v5);
    v50 = 1;
    goto LABEL_19;
  }

  if (v54 == 1)
  {
    std::string::operator=(&__str, &__p);
    v5 = "currentMcc";
    goto LABEL_18;
  }

  if (sub_100229FDC(a1 + 216) && sub_10022C140((a1 + 216)))
  {
    std::string::operator=(&__str, (a1 + 216));
    v5 = "recentLocation";
    goto LABEL_18;
  }

  if ((*(a1 + 399) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 384))
    {
      goto LABEL_59;
    }
  }

  else if (*(a1 + 399))
  {
LABEL_59:
    std::string::operator=(&__str, (a1 + 376));
    v20 = "lastStored";
LABEL_65:
    std::string::assign(&v55, v20);
    goto LABEL_66;
  }

  if (HIBYTE(v54) == 1)
  {
    std::string::operator=(&__str, &__p);
    v20 = "lastKnownMcc";
    goto LABEL_65;
  }

LABEL_66:
  v50 = 0;
LABEL_19:
  v6 = (a1 + 296);
  v7 = *(a1 + 319);
  if (v7 >= 0)
  {
    v8 = *(a1 + 319);
  }

  else
  {
    v8 = *(a1 + 304);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v8 == size && (v7 >= 0 ? (v10 = (a1 + 296)) : (v10 = *v6), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), !memcmp(v10, p_str, v8) && *(a1 + 344) == v50 && *(a1 + 345) == 1))
  {
    v12 = *(a1 + 343);
    if (v12 >= 0)
    {
      v13 = *(a1 + 343);
    }

    else
    {
      v13 = *(a1 + 328);
    }

    v14 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v55.__r_.__value_.__l.__size_;
    }

    if (v13 == v14)
    {
      v15 = v12 >= 0 ? (a1 + 320) : *(a1 + 320);
      v16 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
      if (!memcmp(v15, v16, v13))
      {
        goto LABEL_151;
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = qword_1009F13B0;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 319) < 0)
    {
      if (*(a1 + 304))
      {
        v19 = *v6;
      }

      else
      {
        v19 = "__";
      }
    }

    else if (*(a1 + 319))
    {
      v19 = (a1 + 296);
    }

    else
    {
      v19 = "__";
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__str.__r_.__value_.__l.__size_)
      {
        v21 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        v21 = "__";
      }
    }

    else
    {
      v21 = &__str;
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        v21 = "__";
      }
    }

    v22 = *(a1 + 345);
    v23 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v23 = *v23;
    }

    v24 = &v55;
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v55.__r_.__value_.__r.__words[0];
    }

    v25 = *(a1 + 344);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67110914;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v17;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v22;
    HIWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
    buf.__r_.__value_.__r.__words[2] = v19;
    *v58 = 2080;
    *&v58[2] = v21;
    *v59 = 2080;
    *&v59[2] = v23;
    *&v59[10] = 2080;
    v60 = v24;
    v61 = 1024;
    v62 = v25;
    v63 = 1024;
    v64 = v50;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "regulatory,geo,monitor,refreshCurrentGeoArea,effectiveChange:%d,prevInitialized:%d,regulatoryArea:[%s]->[%s],source:[%s]->[%s],isCurrent:[%d]->[%d]", &buf, 0x42u);
  }

  v49 = (a1 + 296);

  v26 = qword_1009F13B0;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        p_p = "__";
      }
    }

    else
    {
      p_p = &__p;
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        p_p = "__";
      }
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = HIBYTE(v54);
    WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(buf.__r_.__value_.__r.__words[2]) = v54;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "regulatory,geo,monitor,refreshCurrentGeoArea,mccChoice,iso:%s,isAnyMccValid:%d,isAnyMccCurrent:%d", &buf, 0x18u);
  }

  v28 = qword_1009F13B0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 399) < 0)
    {
      v29 = *(a1 + 384) ? *(a1 + 376) : "__";
    }

    else
    {
      v29 = *(a1 + 399) ? (a1 + 376) : "__";
    }

    if (*(a1 + 375) < 0)
    {
      v30 = *(a1 + 360) ? *(a1 + 352) : "__";
    }

    else
    {
      v30 = *(a1 + 375) ? (a1 + 352) : "__";
    }

    if (*(a1 + 463) < 0)
    {
      v31 = *(a1 + 448) ? *(a1 + 440) : "__";
    }

    else
    {
      v31 = *(a1 + 463) ? (a1 + 440) : "__";
    }

    sub_100457DDC(*(a1 + 434), v51);
    v32 = v52 >= 0 ? v51 : v51[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = v29;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v30;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *v58 = v31;
    *&v58[8] = 2080;
    *v59 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "regulatory,geo,monitor,refreshCurrentGeoArea,state,lastStoredIso:%s,lastUpdatedIso:%s,wifiIso:%s,airplaneMode:%s", &buf, 0x2Au);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }
  }

  v33 = qword_1009F13B0;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 239) < 0)
    {
      if (!*(a1 + 224))
      {
        v35 = 0.0;
        v34 = "__";
        goto LABEL_126;
      }

      v34 = *(a1 + 216);
    }

    else
    {
      if (*(a1 + 239))
      {
        v34 = (a1 + 216);
      }

      else
      {
        v34 = "__";
      }

      if (!*(a1 + 239))
      {
        v35 = 0.0;
LABEL_126:
        v36 = *(a1 + 240);
        v37 = *(a1 + 400);
        v38 = *(a1 + 432);
        v39 = *(a1 + 433);
        v40 = *(a1 + 436);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
        *(buf.__r_.__value_.__r.__words + 4) = v34;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v35;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v58 = v36;
        *&v58[4] = 1024;
        *&v58[6] = v37;
        *v59 = 1024;
        *&v59[2] = v38;
        *&v59[6] = 1024;
        *&v59[8] = v39;
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v40;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "regulatory,geo,monitor,refreshCurrentGeoArea,state,locationIso:%s,age:%.2f,isLastKnown:%d,authorized:%d,needed:%d,monitoring:%d,retries:%d", &buf, 0x34u);
        goto LABEL_127;
      }
    }

    v35 = CFAbsoluteTimeGetCurrent() - *(a1 + 248);
    goto LABEL_126;
  }

LABEL_127:

  v41 = *(a1 + 272);
  if (v41)
  {
    while (1)
    {
      v42 = v3[118];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

LABEL_146:

      v41 = *v41;
      if (!v41)
      {
        goto LABEL_147;
      }
    }

    v43 = v3;
    v44 = a1;
    sub_100357E68(*(v41 + 4), v51);
    if (v52 >= 0)
    {
      v45 = v51;
    }

    else
    {
      v45 = v51[0];
    }

    if ((*(v41 + 55) & 0x8000000000000000) != 0)
    {
      if (v41[5])
      {
        v46 = v41[4];
      }

      else
      {
        v46 = "__";
      }

      if (v41[5])
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (*(v41 + 55))
      {
        v46 = (v41 + 4);
      }

      else
      {
        v46 = "__";
      }

      if (*(v41 + 55))
      {
LABEL_137:
        v47 = CFAbsoluteTimeGetCurrent() - *(v41 + 7);
LABEL_143:
        v48 = *(v41 + 24);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v45;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v46;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        *v58 = v47;
        *&v58[8] = 1024;
        *v59 = v48;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "regulatory,geo,monitor,refreshCurrentGeoArea,state,mccSlot:%s,iso:%s,age:%.2f,isLastKnown:%d", &buf, 0x26u);
        if (v52 < 0)
        {
          operator delete(v51[0]);
        }

        a1 = v44;
        v3 = v43;
        goto LABEL_146;
      }
    }

    v47 = 0.0;
    goto LABEL_143;
  }

LABEL_147:
  if (v17)
  {
    std::string::operator=(v49, &__str);
    *(a1 + 344) = v50;
    *(a1 + 345) = 1;
    if (v50)
    {
      sub_10022C1CC(a1);
    }

    else
    {
      sub_10022C230(a1);
    }
  }

LABEL_151:
  std::string::operator=((a1 + 320), &v55);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10022C040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a25 < 0)
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

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022C0E0(uint64_t result)
{
  if (*(result + 472) == 1)
  {
    v1 = result;
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004ADED8();
    }

    return sub_10022D788(v1 + 8, 7);
  }

  return result;
}

BOOL sub_10022C140(void *a1)
{
  v2 = strlen(off_1009EC420[0]);
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v2 != v3)
    {
      return 0;
    }

    return memcmp(a1, off_1009EC420[0], v2) == 0;
  }

  if (v2 == a1[1])
  {
    if (v2 == -1)
    {
      sub_1001B96B4();
    }

    a1 = *a1;
    return memcmp(a1, off_1009EC420[0], v2) == 0;
  }

  return 0;
}

uint64_t sub_10022C1CC(uint64_t result)
{
  if (*(result + 472) == 1)
  {
    v1 = result;
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004ADF14(v1);
    }

    return sub_10022D788(v1 + 8, 2);
  }

  return result;
}

uint64_t sub_10022C230(uint64_t result)
{
  if (*(result + 472) == 1)
  {
    v1 = result;
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004ADF94(v1);
    }

    return sub_10022D788(v1 + 8, 3);
  }

  return result;
}

void sub_10022C294(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v23 = a2;
  v7 = a2 & 0xFFFFFFFE;
  v8 = (a2 & 0xFFFFFFFE) == 2;
  *buf = &v23;
  v9 = sub_10022FD3C((a1 + 256), &v23);
  v10 = *(a1 + 434) != 1 || v8;
  v11 = qword_1009F13B0;
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_100357E68(v23, __p);
      if (v22 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (*(a3 + 23) < 0)
      {
        if (*(a3 + 8))
        {
          v14 = *a3;
        }

        else
        {
          v14 = "__";
        }
      }

      else if (*(a3 + 23))
      {
        v14 = a3;
      }

      else
      {
        v14 = "__";
      }

      v18 = (v9 + 4);
      if (*(v9 + 55) < 0)
      {
        if (v9[5])
        {
          v18 = *v18;
        }

        else
        {
          v18 = "__";
        }
      }

      else if (!*(v9 + 55))
      {
        v18 = "__";
      }

      v19 = *(v9 + 24);
      *buf = 136316162;
      *&buf[4] = v13;
      v25 = 2080;
      v26 = v14;
      v27 = 1024;
      v28 = a4;
      v29 = 2080;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,procesMcc,slot:%s,new:(%s:%d),past:(%s:%d)", buf, 0x2Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::operator=((v9 + 4), a3);
    if (!a4 || v7 == 2 || (v9[3] & 1) == 0)
    {
      *(v9 + 7) = CFAbsoluteTimeGetCurrent();
    }

    *(v9 + 24) = a4;
    sub_10022B774(a1);
  }

  else
  {
    if (v12)
    {
      sub_100357E68(v23, __p);
      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = "__";
      if (*(a3 + 23) < 0)
      {
        if (*(a3 + 8))
        {
          v17 = *a3;
        }

        else
        {
          v17 = "__";
        }
      }

      else if (*(a3 + 23))
      {
        v17 = a3;
      }

      else
      {
        v17 = "__";
      }

      if (*(v9 + 55) < 0)
      {
        if (v9[5])
        {
          v16 = v9[4];
        }

        else
        {
          v16 = "__";
        }
      }

      else if (*(v9 + 55))
      {
        v16 = (v9 + 4);
      }

      v20 = *(v9 + 24);
      *buf = 136316162;
      *&buf[4] = v15;
      v25 = 2080;
      v26 = v17;
      v27 = 1024;
      v28 = a4;
      v29 = 2080;
      v30 = v16;
      v31 = 1024;
      v32 = v20;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,procesMcc,slot:%s,new:(%s:%d),past:(%s:%d),skip MCC update in airplane mode", buf, 0x2Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10022C5BC(uint64_t a1, const std::string *a2, int a3, double a4)
{
  v8 = qword_1009F13B0;
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = a2->__r_.__value_.__r.__words[0];
    }

    v18 = 136315650;
    v19 = v17;
    v20 = 1024;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,processLocation:%s,isLastKnown:%d,ts:%.2f", &v18, 0x1Cu);
  }

  v9 = *(a1 + 239);
  if (v9 >= 0)
  {
    v10 = *(a1 + 239);
  }

  else
  {
    v10 = *(a1 + 224);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v12 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v10 == size && (v9 >= 0 ? (v13 = (a1 + 216)) : (v13 = *(a1 + 216)), (v14 = a2->__r_.__value_.__r.__words[0], v12 >= 0) ? (v15 = a2) : (v15 = a2->__r_.__value_.__r.__words[0]), !memcmp(v13, v15, v10) && sub_100229FDC(a1 + 216) && (*(a1 + 433) & 1) == 0 && *(a1 + 432) != 1))
  {
    *(a1 + 248) = a4;
    v16 = (a1 + 240);
  }

  else
  {
    std::string::operator=((a1 + 216), a2);
    *(a1 + 240) = a3;
    v16 = (a1 + 240);
    *(a1 + 248) = a4;
    if (!sub_10022C140((a1 + 216)) && sub_10022C7A0((a1 + 376)))
    {
      std::string::assign((a1 + 376), off_1009EC428[0]);
      if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
      {
        sub_1004AE014();
      }
    }

    sub_10022B774(a1);
  }

  *v16 = 1;
}

BOOL sub_10022C7A0(const void **a1)
{
  v2 = strlen(off_1009EC3F0[0]);
  v3 = v2;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (v2 != a1[1])
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_1001B96B4();
    }

    v5 = *a1;
  }

  else
  {
    v5 = a1;
    if (v3 != v4)
    {
      goto LABEL_8;
    }
  }

  if (!memcmp(v5, off_1009EC3F0[0], v3))
  {
    return 1;
  }

LABEL_8:
  v6 = strlen(off_1009EC410[0]);
  v7 = v6;
  if ((v4 & 0x80000000) != 0)
  {
    if (v6 != a1[1])
    {
      goto LABEL_15;
    }

    if (v6 == -1)
    {
      sub_1001B96B4();
    }

    v8 = *a1;
  }

  else
  {
    v8 = a1;
    if (v7 != v4)
    {
      goto LABEL_15;
    }
  }

  if (!memcmp(v8, off_1009EC410[0], v7))
  {
    return 1;
  }

LABEL_15:
  v9 = strlen(off_1009EC418[0]);
  v10 = v9;
  if ((v4 & 0x80000000) != 0)
  {
    if (v9 != a1[1])
    {
      goto LABEL_22;
    }

    if (v9 == -1)
    {
      sub_1001B96B4();
    }

    v11 = *a1;
  }

  else
  {
    v11 = a1;
    if (v10 != v4)
    {
      goto LABEL_22;
    }
  }

  if (!memcmp(v11, off_1009EC418[0], v10))
  {
    return 1;
  }

LABEL_22:
  v12 = strlen(off_1009EC420[0]);
  v13 = v12;
  if ((v4 & 0x80000000) != 0)
  {
    if (v12 != a1[1])
    {
      goto LABEL_29;
    }

    if (v12 == -1)
    {
      sub_1001B96B4();
    }

    v14 = *a1;
  }

  else
  {
    v14 = a1;
    if (v13 != v4)
    {
      goto LABEL_29;
    }
  }

  if (!memcmp(v14, off_1009EC420[0], v13))
  {
    return 1;
  }

LABEL_29:
  v15 = strlen(off_1009EC438[0]);
  v16 = v15;
  if ((v4 & 0x80000000) != 0)
  {
    if (v15 != a1[1])
    {
      goto LABEL_36;
    }

    if (v15 == -1)
    {
      sub_1001B96B4();
    }

    v17 = *a1;
  }

  else
  {
    v17 = a1;
    if (v16 != v4)
    {
      goto LABEL_36;
    }
  }

  if (!memcmp(v17, off_1009EC438[0], v16))
  {
    return 1;
  }

LABEL_36:
  v18 = strlen(off_1009EC408[0]);
  v19 = v18;
  if ((v4 & 0x80000000) == 0)
  {
    v20 = a1;
    if (v19 != v4)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (memcmp(v20, off_1009EC408[0], v19))
    {
      goto LABEL_43;
    }

    return 1;
  }

  if (v18 == a1[1])
  {
    if (v18 == -1)
    {
      sub_1001B96B4();
    }

    v20 = *a1;
    goto LABEL_42;
  }

LABEL_43:
  v21 = off_1009EC430[0];

  return sub_10022DC74(a1, v21);
}

void sub_10022CA28(int *a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AE050(a2);
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v19, 0, sizeof(v19));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6 >= 1)
  {
    v7 = (v5 + v6);
    v8 = v5;
    do
    {
      v9 = memchr(v8, 44, v6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 44)
      {
        if (v9 == v7)
        {
          break;
        }

        v10 = &v9[-v5];
        if (v10 == -1)
        {
          break;
        }

        std::string::basic_string(&v18, a2, 0, v10, v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v18;
        if (*(a2 + 23) >= 0)
        {
          v11 = *(a2 + 23);
        }

        else
        {
          v11 = *(a2 + 8);
        }

        std::string::basic_string(&v18, a2, v10 + 1, v11, v21);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v19 = v18;
        goto LABEL_29;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 1);
  }

  std::string::operator=(&__p, a2);
  if (sub_100003AA8(*a1))
  {
    v12 = "1";
  }

  else
  {
    v12 = "p1";
  }

  std::string::assign(&v19, v12);
LABEL_29:
  if (!std::string::compare(&__p, "000"))
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = (&v19 + HIBYTE(v19.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v13 = (v19.__r_.__value_.__r.__words[0] + v19.__r_.__value_.__l.__size_);
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  while (v14 != v13)
  {
    v14->__r_.__value_.__s.__data_[0] = __tolower(v14->__r_.__value_.__s.__data_[0]);
    v14 = (v14 + 1);
  }

  if (!std::string::compare(&v19, "1") && (sub_100003AA8(*a1) || sub_10041C77C(*a1)))
  {
    v15 = qword_1009F13B0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(0, &v18);
      sub_1004AE0C0(&v18);
    }

    v16 = 0;
LABEL_64:

    sub_100003C5C((a1 + 120), v16, &__p, 0);
    goto LABEL_65;
  }

  if (!std::string::compare(&v19, "2") && sub_100003AA8(*a1))
  {
    v15 = qword_1009F13B0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(1, &v18);
      sub_1004AE0C0(&v18);
    }

    v16 = 1;
    goto LABEL_64;
  }

  if (!std::string::compare(&v19, "p1") && !sub_100003AA8(*a1))
  {
    v15 = qword_1009F13B0;
    v16 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(2, &v18);
      sub_1004AE0C0(&v18);
    }

    goto LABEL_64;
  }

  if (!std::string::compare(&v19, "p2") && !sub_100003AA8(*a1))
  {
    v15 = qword_1009F13B0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(3, &v18);
      sub_1004AE0C0(&v18);
    }

    v16 = 3;
    goto LABEL_64;
  }

  v17 = qword_1009F13B0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100357E68(4, &v18);
    sub_1004AE0C0(&v18);
  }

LABEL_65:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}