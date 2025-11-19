uint64_t sub_100053CE0(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001FCB30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_100053D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100053D9C(a1, &v4);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return sub_100053E5C(&v4);
}

CFTypeID sub_100053D9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  CFProperty = IORegistryEntryCreateCFProperty(**a1, **(a1 + 8), kCFAllocatorDefault, 0);
  result = CFNumberGetTypeID();
  if (CFProperty)
  {
    v5 = result;
    result = CFGetTypeID(CFProperty);
    if (result != v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      CFGetTypeID(CFProperty);
      v7 = sub_100053B68(exception);
    }
  }

  *a2 = CFProperty;
  return result;
}

const void **sub_100053E5C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10005459C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a15)
  {
    sub_10000E984(a15);
  }

  sub_100054638(&a20);

  _Unwind_Resume(a1);
}

void *sub_100054638(void *a1)
{
  *a1 = off_10021C798;
  a1[3] = off_10021C888;
  a1[4] = off_10021C8C0;
  sub_1000571A8(a1 + 8);
  v2 = a1[6];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1000555D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100054638(va);
  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"failed to open existing output file" error:v6];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x100055478);
  }

  _Unwind_Resume(a1);
}

void sub_100056380(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    if (a2 == 2)
    {
      v10 = [objc_begin_catch(exception_object) reason];
      [DIError nilWithEnumValue:150 verboseInfo:v10 error:v3];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
      JUMPOUT(0x100055EC0);
    }

    objc_begin_catch(exception_object);
    v11 = *(v2 + 152);
    *(v2 + 152) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10005666C(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100056874;
  v25 = sub_100056884;
  v26 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 prepareConvertWithError:&obj];
  objc_storeStrong(&v26, obj);
  if (v3)
  {
    v4 = [v3 remoteProxy];
    v5 = *(a1 + 32);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10005688C;
    v14 = &unk_1001FCB48;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v6;
    v16 = v7;
    v19 = &v21;
    v17 = v8;
    v18 = *(a1 + 48);
    v9 = [v4 convertWithParams:v5 reply:&v11];

    [*(a1 + 40) addChild:v9 withPendingUnitCount:{99, v11, v12, v13, v14}];
  }

  else
  {
    v10 = v22[5];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
}

void sub_1000567FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100056874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005688C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 onConvertCompletionWithInError:v3 outError:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 48) setCompletedUnitCount:100];
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_100056CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100192AE0(a1);
  *v5 = off_10021C798;
  v5[3] = off_10021C888;
  v5[4] = off_10021C8C0;
  sub_100151D3C(v6, a2, a3);
  sub_100056E04();
}

void sub_100056DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001516AC(va);
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100056E78(void *a1, uint64_t a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FCBA0;
  sub_100056FC0((a1 + 3), a2, *a3);
}

void sub_100056EF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FCBA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100056F4C(uint64_t a1)
{
  sub_10005715C(a1 + 128);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return sub_1001516AC(a1 + 24);
}

void sub_100056FC0(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = -1;
  *a1 = off_1001FCBF0;
  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 28) = v5;
  *(a1 + 12) = v4;
  *(a1 + 48) = a3;
  *(a1 + 49) = sub_100057078(a1);
  v6 = *(a1 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  sub_100153560(a1);
}

BOOL sub_100057078(uint64_t a1)
{
  sub_100151E60(a1);
  if (v7 < 0)
  {
    v2 = v6 == 5 && *v5 == 1717726579 && v5[4] == 115;
    operator delete(v5);
  }

  else
  {
    return v7 == 5 && v5 == 1717726579 && BYTE4(v5) == 115;
  }

  return v2;
}

void sub_100057124(uint64_t a1)
{
  sub_1001516AC(a1);

  operator delete();
}

uint64_t sub_10005715C(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    sub_100015888(result, 0);

    return sub_10001590C(v2 + 8);
  }

  return result;
}

uint64_t sub_1000571A8(void *a1)
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
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 15);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          sub_10000E984(v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10003363C(a1);
}

void sub_100058008(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/DiskImages2.framework"];
  v1 = [NSBundle bundleWithURL:?];
  v2 = qword_100235398;
  qword_100235398 = v1;
}

void sub_1000587BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000587E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

void sub_100058C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100058C68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

diskimage_uio::stack_image_node **sub_100059238(diskimage_uio::stack_image_node **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    diskimage_uio::stack_image_node::~stack_image_node(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100059280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 144))(*(a1 + 8));
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

uint64_t make_error_code(uint64_t result)
{
  if ((atomic_load_explicit(&qword_1002353A8, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    sub_1001983A0();
    LODWORD(result) = v1;
  }

  return result;
}

void diskimage_uio::diskimage_open_params::diskimage_open_params()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_1000594B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000596CC(&a12);
  _Unwind_Resume(a1);
}

const std::error_category *sub_1000594D8@<X0>(std::__fs::filesystem::path *a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::__fs::filesystem::__status(a1, 0);
  if (LOBYTE(v16[0]) == 255 || LOBYTE(v16[0]) == 0)
  {
    *&v14 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::set_path(const std::filesystem::path &, const diskimage_open_params::mode)";
    *(&v14 + 1) = 75;
    v15 = 16;
    sub_100066838(v16, &v14);
    sub_100001FE8(v17, "Diskimageuio: path ", 19);
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100050108(__p, a1->__pn_.__r_.__value_.__l.__data_, a1->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *__p = *&a1->__pn_.__r_.__value_.__l.__data_;
      v13 = a1->__pn_.__r_.__value_.__r.__words[2];
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v13 >= 0)
    {
      v11 = HIBYTE(v13);
    }

    else
    {
      v11 = __p[1];
    }

    sub_100001FE8(v17, v10, v11);
    sub_100001FE8(v17, " doesn't exist", 14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostream::~ostream();
    sub_1000671D4(v16);
    std::ios::~ios();
    result = std::generic_category();
    *a4 = 2;
    *(a4 + 8) = result;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a2 + 572) = a3;
    std::string::operator=(a2, &a1->__pn_);
    return sub_1000669A4(a2, 0, 1);
  }

  return result;
}

uint64_t sub_100059674(uint64_t result)
{
  if (*(result + 16))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_1001FCD60;
  }

  return result;
}

uint64_t *sub_1000596CC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 624);
    if (v2)
    {
      sub_10000E984(v2);
    }

    v3 = *(v1 + 608);
    if (v3)
    {
      sub_10000E984(v3);
    }

    v4 = *(v1 + 592);
    if (v4)
    {
      sub_10000E984(v4);
    }

    sub_10005BEAC(v1 + 56);
    v5 = *(v1 + 48);
    if (v5)
    {
      sub_10000E984(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      sub_10000E984(v6);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_100059868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000596CC(&a12);
  _Unwind_Resume(a1);
}

void sub_10005988C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  memset(v11, 0, sizeof(v11));
  if (a4 == 1)
  {
    v7 = &_mh_execute_header + 2;
  }

  else
  {
    v7 = &_mh_execute_header;
  }

  sub_10007CEC8(&v8, a2, a3, v7, v11, 0);
  sub_10005C430(a1 + 56, a1 + 56, &v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (*(&v8 + 1))
  {
    sub_10000E984(*(&v8 + 1));
  }

  *(a1 + 568) = 12;
  *a5 = 0;
  a5[16] = 1;
}

void sub_100059AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_1000596CC(&a12);
  _Unwind_Resume(a1);
}

void sub_100059AE4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 572) = a3;
  *(a1 + 576) = a3;
  sub_10006F06C();
}

void diskimage_uio::diskimage_open_params::create()
{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

uint64_t *diskimage_uio::diskimage_open_params::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 624);
    if (v3)
    {
      sub_10000E984(v3);
    }

    v4 = *(v2 + 608);
    if (v4)
    {
      sub_10000E984(v4);
    }

    v5 = *(v2 + 592);
    if (v5)
    {
      sub_10000E984(v5);
    }

    sub_10005BEAC(v2 + 56);
    v6 = *(v2 + 48);
    if (v6)
    {
      sub_10000E984(v6);
    }

    v7 = *(v2 + 32);
    if (v7)
    {
      sub_10000E984(v7);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  *result = *a2;
  *a2 = 0;
  return result;
}

void diskimage_uio::diskimage_open_params::~diskimage_open_params(diskimage_uio::diskimage_open_params *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 624);
    if (v2)
    {
      sub_10000E984(v2);
    }

    v3 = *(v1 + 608);
    if (v3)
    {
      sub_10000E984(v3);
    }

    v4 = *(v1 + 592);
    if (v4)
    {
      sub_10000E984(v4);
    }

    sub_10005BEAC(v1 + 56);
    v5 = *(v1 + 48);
    if (v5)
    {
      sub_10000E984(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      sub_10000E984(v6);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  *this = 0;
}

_OWORD *sub_100059E94@<X0>(const std::error_category *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005B2F8(a1, v7);
  if (v7[16])
  {
    v5 = a1[5].__vftable;
    if (v5)
    {
      LOBYTE(v5) = !a1[73].__vftable || !a1[75].__vftable || a1[77].__vftable == 0;
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    result = sub_100059674(v7);
    v6 = 0;
    *a2 = *result;
  }

  a2[16] = v6;
  return result;
}

__n128 sub_100059F28@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_10006F588(a1, v16);
  if (v16[16])
  {
    v4 = *(a1 + 560);
    if (v4 == -1)
    {
      sub_100015D74();
    }

    v14[0] = &v12;
    (off_100200B60[v4])(v14, a1 + 56);
  }

  else
  {
    *&v12 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks() const";
    *(&v12 + 1) = 80;
    v13 = 16;
    sub_100071534(v14, &v12);
    sub_100001FE8(v15, "Diskimageuio: query format failed ", 34);
    v6 = sub_100059674(v16);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = sub_100001FE8(v15, v7, v8);
    v17 = 58;
    sub_100001FE8(v9, &v17, 1);
    v10 = *v6;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100071768(v14);
    std::ios::~ios();
    v11 = sub_100059674(v16);
    result = *v11;
    *a2 = *v11;
    a2[1].n128_u8[0] = 0;
  }

  return result;
}

void sub_10005A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007165C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005A09C(uint64_t result)
{
  if (*(result + 56))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_1001FCD60;
  }

  return result;
}

void diskimage_uio::diskimage::~diskimage(diskimage_uio::diskimage *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = 0;
}

void sub_10005A148(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = **v1;
    if (v4)
    {
      v1 = *(v4[3] - 24);
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = *v1;
    }

    v5 = *v2;
    {
      operator new();
    }
  }

LABEL_7:
  operator new();
}

void sub_10005A3E8(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10005A484(va);
  if (a2 == 1)
  {
    *(__cxa_begin_catch(a1) + 2);
    __cxa_end_catch();
    JUMPOUT(0x10005A3B4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10005A484(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100072A40(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10005A4CC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100073B14(v1 + 248);
    sub_1000739E8(v1 + 120);
    operator delete();
  }

  return result;
}

void *diskimage_uio::operator<<(void *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = "auto";
    v3 = 4;
  }

  else if (a2 == 1)
  {
    v2 = "read write";
    v3 = 10;
  }

  else if (a2)
  {
    v2 = "unknown";
    v3 = 7;
  }

  else
  {
    v2 = "read only";
    v3 = 9;
  }

  return sub_100001FE8(a1, v2, v3);
}

{
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v2 = "udzo";
      }

      else
      {
        v2 = "ulfo";
      }

      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v2 = "raw";
      v3 = 3;
      return sub_100001FE8(a1, v2, v3);
    }

    if (a2 == 2)
    {
      v2 = "asif";
LABEL_22:
      v3 = 4;
      return sub_100001FE8(a1, v2, v3);
    }

LABEL_23:
    v2 = "unknown";
    v3 = 7;
    return sub_100001FE8(a1, v2, v3);
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      v2 = "ulmo";
      goto LABEL_22;
    }

    if (a2 == 6)
    {
      v2 = "udzo_max";
      v3 = 8;
      return sub_100001FE8(a1, v2, v3);
    }

    goto LABEL_23;
  }

  if (a2 == 8)
  {
    v2 = "udro";
    goto LABEL_22;
  }

  if (a2 == 9)
  {
    v2 = "udsb";
    goto LABEL_22;
  }

  if (a2 != 11)
  {
    goto LABEL_23;
  }

  v2 = "pstack";
  v3 = 6;
  return sub_100001FE8(a1, v2, v3);
}

uint64_t sub_10005A664(uint64_t a1, uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2), uint64_t a3, uint64_t a4)
{
  *(a1 + 120) = 850045863;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = a3;
  if (*(a4 + 24))
  {
    sub_100074AA4(a1 + 248, a4);
  }

  else
  {
    *(a1 + 248) = off_100201048;
    *(a1 + 256) = a1;
    *(a1 + 272) = a1 + 248;
  }

  sub_1000BC534(a1, a2);
  *a1 = sub_100073654;
  return a1;
}

uint64_t sub_10005A758@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 15;
  v5 = a1[28];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_exchange((*(a1[24] + (((v6 + a1[27]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v6 + a1[27]) & 0x1FF)), 0);
      if (v7)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    *a2 = v4;
    a2[1] = v7;
    v15 = v4;
    a2[2] = v6;
    v16 = -2;
  }

  else
  {
LABEL_5:
    v15 = 0uLL;
    v16 = -1;
    v8 = a1[34];
    if (!v8)
    {
      sub_10001583C();
    }

    (*(*v8 + 48))(&v13);
    if (v14)
    {
      v9 = a1[29];
      if ((v9 & 0x8000000000000000) != 0 || a1[28] + 1 <= v9)
      {
        v10 = -1;
      }

      else
      {
        v10 = -2;
      }

      v11 = v13;
      *a2 = v4;
      a2[1] = v11;
      a2[2] = v10;
    }

    else
    {
      *a2 = v15;
      a2[2] = v16;
      *(&v15 + 1) = 0;
      v16 = -2;
    }
  }

  return sub_100074B3C(&v15);
}

void sub_10005A888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100074B3C(va);
  _Unwind_Resume(a1);
}

void sub_10005A89C(void *a1, char ***a2, std::string *a3, char a4)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    v7 = **v4;
    if (v8)
    {
      memset(&v14[3], 0, 24);
      v9 = (*(*v8 + 192))(v8);
      sub_1000752C0(&__p, a3);
      sub_100168914(v9, &__p, a4, v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v14[0] != v14[1])
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      v13 = std::generic_category();
      exception[1] = 22;
      exception[2] = v13;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "pstack_header";
      *exception = &off_100201020;
    }
  }

  v10 = __cxa_allocate_exception(0x40uLL);
  v11 = std::generic_category();
  v10[1] = 22;
  v10[2] = v11;
  *(v10 + 24) = 0;
  *(v10 + 48) = 0;
  v10[7] = "pstack_header";
  *v10 = &off_100201020;
}

void sub_10005AD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char **a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, char a27, int a28, __int16 a29, char a30)
{
  a16 = &a19;
  sub_10005B238(&a16);
  a19 = &a22;
  sub_1000738CC(&a19);
  sub_100073718(v30, 0);
  _Unwind_Resume(a1);
}

void sub_10005AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 != 1)
  {
    JUMPOUT(0x10005ADDCLL);
  }

  JUMPOUT(0x10005ADD0);
}

uint64_t sub_10005AE3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *a1 = &off_100201020;
  return a1;
}

void *sub_10005AEA8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100073830(result, a2);
    }

    sub_100015B70();
  }

  return result;
}

void sub_10005AF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100073878(va);
  _Unwind_Resume(a1);
}

diskimage_uio::diskimage_open_params *sub_10005AF38(diskimage_uio::diskimage_open_params *a1, __int128 *a2)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    *&v4 = *a2;
    *a2 = 0;
  }

  else
  {
    v4 = *a2;
  }

  sub_100075550(&v4, a1);
  if (v5 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&v4);
  }

  return a1;
}

void sub_10005AFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::stack_image_node::stack_image_node(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5, CFTypeRef cf)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100050108((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100050108((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_10005B064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::stack_image_node::~stack_image_node(diskimage_uio::stack_image_node *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_10005B0F8(uint64_t a1)
{
  sub_100073954(a1);

  operator delete();
}

void sub_10005B130(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

_BYTE *sub_10005B174@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 150) > 0x13)
  {
    v2 = "(unrecognized error)";
  }

  else
  {
    v2 = off_1002010C8[a1 - 150];
  }

  return sub_100010B0C(a2, v2);
}

void sub_10005B1A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_10005B1E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100059238((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10005B238(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100059238(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10005B2C0(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

const std::error_category *sub_10005B2F8@<X0>(const std::error_category *result@<X0>, uint64_t a2@<X8>)
{
  if (LODWORD(result[71].__vftable) == 12 || result[3].__vftable)
  {
    *a2 = 0;
    v3 = 1;
  }

  else
  {
    *&v4 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::verify_backend() const";
    *(&v4 + 1) = 81;
    v5 = 16;
    sub_10005B450(v6, &v4);
    sub_100001FE8(v7, "Diskimageuio: backend doesn't exist", 35);
    std::ostream::~ostream();
    sub_10005B684(v6);
    std::ios::~ios();
    result = std::generic_category();
    v3 = 0;
    *a2 = 6;
    *(a2 + 8) = result;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_10005B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10005B578(va);
  _Unwind_Resume(a1);
}

char **sub_10005B3CC@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_10005B450(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005B5BC(a1, a2);
  *a1 = off_1001FCD90;
  a1[45] = &off_1001FCE90;
  a1[46] = &off_1001FCEB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FCD90;
  a1[45] = off_1001FCE18;
  a1[46] = off_1001FCE40;
  return a1;
}

void sub_10005B554(_Unwind_Exception *a1)
{
  sub_10005B684(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005B578(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005B684(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005B5BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FCF28;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10005B66C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B684(uint64_t a1)
{
  *a1 = off_1001FCF28;
  sub_10005BAC4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005B7F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005B684(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005B858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005B894(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005B900(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005B684(v1);

  return std::ios::~ios();
}

void sub_10005B94C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005B684(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005B9B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005B684(v1);

  return std::ios::~ios();
}

void sub_10005BA10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005B684(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005BA8C(uint64_t a1)
{
  sub_10005B684(a1);

  operator delete();
}

uint64_t sub_10005BAC4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10005BC38((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005BC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005BC38(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 603;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 603;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10005BE1C(void *a1, unsigned int *a2)
{
  v4 = (*(**(a2 + 1) + 16))(*(a2 + 1));
  v5 = strlen(v4);
  v6 = sub_100001FE8(a1, v4, v5);
  v9 = 58;
  sub_100001FE8(v6, &v9, 1);
  v7 = *a2;
  return std::ostream::operator<<();
}

uint64_t sub_10005BEAC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 504);
  if (v2 != -1)
  {
    result = (off_1001FCFA8[v2])(&v3, result);
  }

  *(v1 + 504) = -1;
  return result;
}

void sub_10005BF20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  v3 = *(a2 + 8);
  if (v3)
  {

    sub_10000E984(v3);
  }
}

uint64_t sub_10005BF74(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 504);
  if (*(result + 504) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10005BEAC(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1001FCFD8[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_10005BFE4(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 504))
  {
    result = sub_10005BEAC(*result);
    *(v1 + 504) = 0;
  }

  return result;
}

double sub_10005C020(uint64_t *a1, _OWORD *a2, __int128 *a3)
{
  v5 = *a1;
  if (*(*a1 + 504) == 2)
  {
    v6 = *a3;
    v7 = a3[2];
    a2[1] = a3[1];
    a2[2] = v7;
    *a2 = v6;
    v8 = a3[3];
    v9 = a3[4];
    v10 = a3[5];
    *(a2 + 92) = *(a3 + 92);
    a2[4] = v9;
    a2[5] = v10;
    a2[3] = v8;
  }

  else
  {
    v12[2] = v3;
    v12[3] = v4;
    v12[0] = v5;
    v12[1] = a3;
    *&v8 = sub_10005C32C(v12).n128_u64[0];
  }

  return *&v8;
}

__n128 sub_10005C084(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 504) == 3)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_10005BEAC(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 504) = 3;
  }

  return result;
}

__n128 sub_10005C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 504) == 1)
  {
    *a2 = *a3;
    v4 = *(a3 + 16);
    v5 = *(a3 + 32);
    v6 = *(a3 + 64);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = v6;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    *(a2 + 80) = *(a3 + 80);
    *(a2 + 84) = *(a3 + 84);
    v7 = *(a3 + 88);
    v8 = *(a3 + 104);
    v9 = *(a3 + 120);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 120) = v9;
    *(a2 + 104) = v8;
    *(a2 + 88) = v7;
    v10 = *(a3 + 152);
    v11 = *(a3 + 168);
    v12 = *(a3 + 184);
    *(a2 + 200) = *(a3 + 200);
    *(a2 + 184) = v12;
    *(a2 + 168) = v11;
    *(a2 + 152) = v10;
    v13 = *(a3 + 248);
    v14 = *(a3 + 264);
    v15 = *(a3 + 280);
    *(a2 + 232) = *(a3 + 232);
    *(a2 + 264) = v14;
    *(a2 + 280) = v15;
    *(a2 + 248) = v13;
    v17 = *(a3 + 312);
    v16 = *(a3 + 328);
    v18 = *(a3 + 296);
    *(a2 + 344) = *(a3 + 344);
    *(a2 + 312) = v17;
    *(a2 + 328) = v16;
    *(a2 + 296) = v18;
    *(a2 + 216) = *(a3 + 216);
    *(a2 + 352) = *(a3 + 352);
    *(a2 + 356) = *(a3 + 356);
    v19 = *(a3 + 360);
    v20 = *(a3 + 376);
    v21 = *(a3 + 408);
    *(a2 + 392) = *(a3 + 392);
    *(a2 + 408) = v21;
    *(a2 + 360) = v19;
    *(a2 + 376) = v20;
    result = *(a3 + 424);
    v23 = *(a3 + 440);
    v24 = *(a3 + 472);
    *(a2 + 456) = *(a3 + 456);
    *(a2 + 472) = v24;
    *(a2 + 424) = result;
    *(a2 + 440) = v23;
    v25 = *(a3 + 488);
    *(a2 + 496) = *(a3 + 496);
    *(a2 + 488) = v25;
  }

  else
  {
    sub_10005BEAC(a1);
    *a1 = 0x4796C6F6BLL;
    *(a1 + 8) = 512;
    *(a1 + 12) = *(a3 + 12);
    v27 = *(a3 + 16);
    v28 = *(a3 + 32);
    *(a1 + 48) = *(a3 + 48);
    *(a1 + 16) = v27;
    *(a1 + 32) = v28;
    *(a1 + 56) = *(a3 + 56);
    *(a1 + 60) = *(a3 + 60);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = *(a3 + 80);
    v29 = *(a3 + 88);
    v30 = *(a3 + 104);
    v31 = *(a3 + 120);
    *(a1 + 136) = *(a3 + 136);
    *(a1 + 120) = v31;
    *(a1 + 104) = v30;
    *(a1 + 88) = v29;
    v32 = *(a3 + 152);
    v33 = *(a3 + 168);
    v34 = *(a3 + 184);
    *(a1 + 200) = *(a3 + 200);
    *(a1 + 184) = v34;
    *(a1 + 168) = v33;
    *(a1 + 152) = v32;
    v35 = *(a3 + 248);
    v36 = *(a3 + 264);
    v37 = *(a3 + 280);
    *(a1 + 232) = *(a3 + 232);
    *(a1 + 264) = v36;
    *(a1 + 280) = v37;
    *(a1 + 248) = v35;
    v39 = *(a3 + 312);
    v38 = *(a3 + 328);
    v40 = *(a3 + 296);
    *(a1 + 344) = *(a3 + 344);
    *(a1 + 312) = v39;
    *(a1 + 328) = v38;
    *(a1 + 296) = v40;
    *(a1 + 216) = *(a3 + 216);
    *(a1 + 352) = *(a3 + 352);
    v41 = *(a3 + 360);
    v42 = *(a3 + 376);
    v43 = *(a3 + 408);
    *(a1 + 392) = *(a3 + 392);
    *(a1 + 408) = v43;
    *(a1 + 360) = v41;
    *(a1 + 376) = v42;
    result = *(a3 + 424);
    v44 = *(a3 + 440);
    v45 = *(a3 + 472);
    *(a1 + 456) = *(a3 + 456);
    *(a1 + 472) = v45;
    *(a1 + 424) = result;
    *(a1 + 440) = v44;
    *(a1 + 488) = *(a3 + 488);
    *(a1 + 492) = *(a3 + 492);
    *(a1 + 504) = 1;
  }

  return result;
}

__n128 sub_10005C32C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10005BEAC(*a1);
  *v1 = 2003069043;
  *(v1 + 4) = *(v2 + 4);
  *(v1 + 12) = *(v2 + 12);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v1 + 62) = *(v2 + 62);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = v3;
  *(v1 + 70) = 0;
  result = *(v2 + 72);
  *(v1 + 88) = *(v2 + 88);
  *(v1 + 72) = result;
  *(v1 + 96) = *(v2 + 96);
  *(v1 + 100) = *(v2 + 100);
  *(v1 + 104) = *(v2 + 104);
  *(v1 + 504) = 2;
  return result;
}

void ***sub_10005C3BC(uint64_t a1, void ***a2, void ***a3)
{
  if (*(a1 + 504) == 4)
  {
    v4 = *a3;
    *a3 = 0;

    return sub_100073718(a2, v4);
  }

  else
  {
    result = sub_10005BEAC(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 504) = 4;
  }

  return result;
}

__n128 sub_10005C430(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 504) == 5)
  {
    v5 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v6 = *(a2 + 8);
    *a2 = v5;
    if (v6)
    {
      sub_10000E984(v6);
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    result = a3[1];
    *(a2 + 32) = *(a3 + 4);
    *(a2 + 16) = result;
    *(a3 + 39) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    sub_10005BEAC(a1);
    *a1 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    result = a3[1];
    *(a1 + 32) = *(a3 + 4);
    *(a1 + 16) = result;
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 2) = 0;
    *(a1 + 504) = 5;
  }

  return result;
}

uint64_t sub_10005C4E0(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10003363C(a1);
}

uint64_t sub_10005C58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10013F28C(&v9, a1);
  *&v5 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_udif (std::shared_ptr<Backend> &)";
  *(&v5 + 1) = 137;
  v6 = 16;
  sub_10005C704(v7, &v5);
  sub_100001FE8(v8, "UDIF images are currently not supported in diskimage_uio", 56);
  std::ostream::~ostream();
  sub_10005CB30(v7);
  std::ios::~ios();
  *a2 = make_error_code(161);
  *(a2 + 8) = v3;
  *(a2 + 520) = 0;
  if (v10)
  {
    sub_10000E984(v10);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10005C664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10005C82C(va);
  sub_10005C6B4((v5 - 56));
  __cxa_begin_catch(a1);
  sub_10005C870();
}

uint64_t *sub_10005C6B4(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete();
  }

  return a1;
}

void *sub_10005C704(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005CA68(a1, a2);
  *a1 = off_1001FD020;
  a1[45] = &off_1001FD120;
  a1[46] = &off_1001FD148;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FD020;
  a1[45] = off_1001FD0A8;
  a1[46] = off_1001FD0D0;
  return a1;
}

void sub_10005C808(_Unwind_Exception *a1)
{
  sub_10005CB30(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005C82C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005CB30(a1);
  std::ios::~ios();
  return a1;
}

void sub_10005C8A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (a2 != 3 && a2 != 2)
  {
    if (a2 == 1)
    {
      v4 = __cxa_begin_catch(a1);
      *&v7 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_handle_exceptions()";
      *(&v7 + 1) = 146;
      v8 = 16;
      sub_10005D2C8(v10, &v7);
      sub_100195A20(&v11, v4);
      std::ostream::~ostream();
      sub_10005D4FC(v10);
      std::ios::~ios();
      *v2 = make_error_code(161);
      *(v2 + 8) = v5;
      *(v2 + 520) = 0;
      goto LABEL_7;
    }

LABEL_8:
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  v9 = 0;
  sub_10005DC94(v10, &v7);
  v12 = 0;
  sub_10005DC94(v2, v10);
  *(v2 + 512) = v12;
  *(v2 + 520) = 1;
  sub_10005BEAC(v10);
  sub_10005BEAC(&v7);
LABEL_7:
  __cxa_end_catch();
  v6 = *(v3 - 40);
}

uint64_t sub_10005CA68(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FD1B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10005CB18(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005CB30(uint64_t a1)
{
  *a1 = off_1001FD1B8;
  sub_10005CF70(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005CC9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005CB30(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005CD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005CD40(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005CDAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005CB30(v1);

  return std::ios::~ios();
}

void sub_10005CDF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005CB30(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005CE5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005CB30(v1);

  return std::ios::~ios();
}

void sub_10005CEBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005CB30(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005CF38(uint64_t a1)
{
  sub_10005CB30(a1);

  operator delete();
}

uint64_t sub_10005CF70(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10005D0E4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005D0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005D0E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 414;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 414;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10005D2C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005D434(a1, a2);
  *a1 = off_1001FD258;
  a1[45] = &off_1001FD358;
  a1[46] = &off_1001FD380;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FD258;
  a1[45] = off_1001FD2E0;
  a1[46] = off_1001FD308;
  return a1;
}

void sub_10005D3CC(_Unwind_Exception *a1)
{
  sub_10005D4FC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005D3F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005D4FC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005D434(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FD3F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10005D4E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D4FC(uint64_t a1)
{
  *a1 = off_1001FD3F0;
  sub_10005D93C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005D668(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005D4FC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005D6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005D70C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005D778(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005D4FC(v1);

  return std::ios::~ios();
}

void sub_10005D7C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005D4FC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005D828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005D4FC(v1);

  return std::ios::~ios();
}

void sub_10005D888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005D4FC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005D904(uint64_t a1)
{
  sub_10005D4FC(a1);

  operator delete();
}

uint64_t sub_10005D93C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10005DAB0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005DAB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 382;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 382;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10005DC94(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 504) = -1;
  sub_10005DCDC(a1, a2);
  return a1;
}

uint64_t sub_10005DCDC(uint64_t a1, uint64_t a2)
{
  result = sub_10005BEAC(a1);
  v5 = *(a2 + 504);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1001FD460[v5])(&v6, a2);
    *(a1 + 504) = v5;
  }

  return result;
}

__n128 sub_10005DD44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0x4796C6F6BLL;
  *(v2 + 8) = 512;
  *(v2 + 12) = *(a2 + 12);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 60) = *(a2 + 60);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  *(v2 + 136) = *(a2 + 136);
  *(v2 + 120) = v7;
  *(v2 + 104) = v6;
  *(v2 + 88) = v5;
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  *(v2 + 200) = *(a2 + 200);
  *(v2 + 184) = v10;
  *(v2 + 168) = v9;
  *(v2 + 152) = v8;
  v11 = *(a2 + 248);
  v12 = *(a2 + 264);
  v13 = *(a2 + 280);
  *(v2 + 232) = *(a2 + 232);
  *(v2 + 264) = v12;
  *(v2 + 280) = v13;
  *(v2 + 248) = v11;
  v15 = *(a2 + 312);
  v14 = *(a2 + 328);
  v16 = *(a2 + 296);
  *(v2 + 344) = *(a2 + 344);
  *(v2 + 312) = v15;
  *(v2 + 328) = v14;
  *(v2 + 296) = v16;
  *(v2 + 216) = *(a2 + 216);
  *(v2 + 352) = *(a2 + 352);
  v17 = *(a2 + 360);
  v18 = *(a2 + 376);
  v19 = *(a2 + 408);
  *(v2 + 392) = *(a2 + 392);
  *(v2 + 408) = v19;
  *(v2 + 360) = v17;
  *(v2 + 376) = v18;
  result = *(a2 + 424);
  v21 = *(a2 + 440);
  v22 = *(a2 + 472);
  *(v2 + 456) = *(a2 + 456);
  *(v2 + 472) = v22;
  *(v2 + 424) = result;
  *(v2 + 440) = v21;
  *(v2 + 488) = *(a2 + 488);
  *(v2 + 492) = *(a2 + 492);
  return result;
}

__n128 sub_10005DE60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 2003069043;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 12) = *(a2 + 12);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 62) = *(a2 + 62);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = v3;
  *(v2 + 70) = 0;
  result = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = result;
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 100) = *(a2 + 100);
  *(v2 + 104) = *(a2 + 104);
  return result;
}

__n128 sub_10005DEC8(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void **sub_10005DED8(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

__n128 sub_10005DEEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return result;
}

BOOL sub_10005DF18(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && (v2 = a1[1], v2 == a2[1]))
  {
    return memcmp(a1 + 2, a2 + 2, v2 >> 3) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005E04C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &off_1001FD4E0;
  v5 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *sub_10005F244(a1 + 64, a2) = &off_1001FD4A0;
  if (*(a2 + 88) == 1)
  {
    v6 = *(a2 + 96);
    *(a1 + 16) = v6;
    *(a1 + 24) = 1;
    *(a1 + 32) = 2 * v6;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  return a1;
}

void sub_10005E100(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005E11C(uint64_t a1)
{
  sub_100063044(a1);

  operator delete();
}

__n128 sub_10005E17C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_10005E294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!sub_10002DE0C(a3, a4))
  {
    v7 = *(a3 + 104) != 1 || *(a3 + 48) == 0;
    if (!v7)
    {
      return -45;
    }
  }

  v95 = v97;
  v96 = xmmword_1001BC760;
  __p = v94;
  v93 = xmmword_1001BC760;
  v8 = sub_10005F69C(a3, a4);
  v9 = v8;
  if (v8 > 0x10)
  {
    if (v8 >= 0x555555555555556)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v10 = operator new(24 * v8);
    sub_10005FFD8(&__p, v10, v9, __p + 24 * v93, 0, 0);
  }

  sub_10013CDE8(a1 + 64, *(a3 + 24), (a4[26] - *(a3 + 208)) & ~((a4[26] - *(a3 + 208)) >> 63), &v95);
  sub_1000302E0(v88, a4);
  v80[0] = 0;
  v87 = 0;
  v55 = *(v95 + 3);
  sub_1000302E0(&v76, a3);
  if (!v96)
  {
    v39 = 0;
    v57 = 0;
    goto LABEL_85;
  }

  v54 = a4;
  v57 = 0;
  v39 = 0;
  v11 = v95;
  v12 = (v95 + 64 * v96);
  while (1)
  {
    v13 = *(v11 + 4);
    if (v13)
    {
      if (sub_10002DE0C(&v76, v88))
      {
        break;
      }
    }

    if (v13 > v78)
    {
      sub_10002E834(&v76);
    }

    if (sub_10002DE0C(&v76, v88))
    {
      *&v73 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
      *(&v73 + 1) = 75;
      v74 = 16;
      sub_10005F900(&v58, &v73);
      sub_100001FE8(v65, "Udif: advanced buffer, needs to read ", 37);
      sub_10013E810(v65, v11);
      sub_100001FE8(v65, " but buffer is full", 19);
      std::ios_base::getloc((v65 + *(v65[0] - 24)));
      v40 = std::locale::use_facet(&v71, &std::ctype<char>::id);
      (v40->__vftable[2].~facet_0)(v40, 10);
      std::locale::~locale(&v71);
      std::ostream::put();
      std::ostream::flush();
      std::ostream::~ostream();
      sub_100060AE8(&v58);
      goto LABEL_84;
    }

    sub_100030254(&v73, &v76);
    v14 = v75;
    if (v13 <= v75)
    {
      if (*v11)
      {
        sub_100061AE0(&v71, &v73, *(v11 + 2), 0, *(v11 + 1), *(v11 + 4));
        if (v57)
        {
          *&v69 = v11;
          v17 = sub_100061BC0(a2 + 16, v11);
          (*(*v17[5] + 136))(&v58);
          v18 = __p + 24 * v93;
          if (v93 == *(&v93 + 1))
          {
            sub_1000624F4(&__p, v18, 1, &v58, &v69);
          }

          else
          {
            *v18 = 0;
            v18[4] = 0;
            *(v18 + 1) = 0;
            if (BYTE4(v58) == 1)
            {
              *v18 = v58;
              v18[4] = 1;
            }

            *(v18 + 2) = v60;
            v60 = 0;
            v19 = *(v18 + 2);
            if (v19)
            {
              *v19 = v18;
            }

            *&v93 = v93 + 1;
          }

          sub_10002E6D0(&v76, v13);
          goto LABEL_28;
        }

        v58 = v11;
        v21 = sub_100061BC0(a2 + 16, v11);
        v22 = (*(*v21[5] + 128))(v21[5], &v71);
        v39 = v22;
        if (v22 < 0)
        {
          v20 = 0;
          v16 = 2;
        }

        else if (*(a2 + 56) == 1 && v11[8] > v22)
        {
          *&v69 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v69 + 1) = 75;
          v70 = 16;
          sub_10005FBD8(&v58, &v69);
          sub_100001FE8(v65, "Error: Not enough data read. expected: ", 39);
          v23 = *(v11 + 4);
          std::ostream::operator<<();
          sub_100001FE8(v65, " read: ", 7);
          std::ostream::operator<<();
          sub_100001FE8(v65, " backend: ", 10);
          v24 = *(a1 + 48);
          std::ostream::operator<<();
          std::ios_base::getloc((v65 + *(v65[0] - 24)));
          v25 = std::locale::use_facet(&v91, &std::ctype<char>::id);
          (v25->__vftable[2].~facet_0)(v25, 10);
          std::locale::~locale(&v91);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          sub_100061D5C(&v58);
          std::ios::~ios();
          v20 = 0;
          v16 = 2;
          v39 = -5;
        }

        else
        {
          v26 = sub_10005FD44(a1, &v71, v11, &v95, v14);
          v13 -= v26;
          sub_10002E6D0(&v76, v13);
          if (v96)
          {
            v27 = 0;
            v28 = 0;
            v29 = v96 << 6;
            v30 = (v95 + 32);
            do
            {
              v32 = *v30;
              v30 += 8;
              v31 = v32;
              v33 = v32 + v27;
              v34 = v32 + v28;
              v35 = v14 - v28;
              v36 = v32 + v28 > v14;
              if (v32 + v28 >= v14)
              {
                v28 = 0;
              }

              else
              {
                v28 = v34;
              }

              if (v36)
              {
                v28 = v31;
                v37 = v35;
              }

              else
              {
                v37 = 0;
              }

              v27 = v33 + v37;
              v29 -= 64;
            }

            while (v29);
          }

          else
          {
            v27 = 0;
          }

          v38 = sub_10002F168(a3);
          v55 += v26;
          sub_10002E0A0(&v58, a3 + 120, v54 + 120, v55, v27 - v26, v38);
          if (!sub_10002DE0C(a3, v54) && *(a3 + 104) == 1 && *(a3 + 48))
          {
            sub_10002F410(&v58, a3 + 48);
          }

          sub_10005FDDC(v80, &v58);
          if (v68)
          {
            sub_10000E984(v68);
          }

          if (v67)
          {
            sub_10000E984(v67);
          }

          if (v66)
          {
            sub_10000E984(v66);
          }

          if (v64)
          {
            sub_10000E984(v64);
          }

          if (v62)
          {
            sub_10000E984(v62);
          }

          if (v61)
          {
            sub_10000E984(v61);
          }

          sub_10002E310(v80, &v58);
          sub_100030B94(&v76, &v58);
          if (v63)
          {
            sub_10000E984(v63);
          }

          if (v59)
          {
            sub_10000E984(v59);
          }

          sub_10002E60C(&v76, v13);
          sub_10002DF68(v80, &v58);
          sub_100030B94(v88, &v58);
          if (v63)
          {
            sub_10000E984(v63);
          }

          if (v59)
          {
            sub_10000E984(v59);
          }

LABEL_28:
          v16 = 0;
          v20 = 1;
        }

        if (*(&v71 + 1))
        {
          sub_10000E984(*(&v71 + 1));
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        bzero(v73, v13);
        sub_10002E6D0(&v76, v13);
      }

      v16 = 0;
      v57 += v13;
      goto LABEL_35;
    }

    *&v71 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
    *(&v71 + 1) = 75;
    v72 = 16;
    sub_10005FA6C(&v58, &v71);
    sub_100001FE8(v65, "Udif: needs to read ", 20);
    sub_10013E810(v65, v11);
    sub_100001FE8(v65, " but buffer is too small ", 25);
    std::ostream::operator<<();
    std::ios_base::getloc((v65 + *(v65[0] - 24)));
    v15 = std::locale::use_facet(&v69, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v69);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_100061348(&v58);
    std::ios::~ios();
    v16 = 2;
    v39 = -28;
LABEL_35:
    if (*(&v73 + 1))
    {
      sub_10000E984(*(&v73 + 1));
    }

    if (!v16)
    {
      v11 += 16;
      if (v11 != v12)
      {
        continue;
      }
    }

    goto LABEL_85;
  }

  *&v73 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
  *(&v73 + 1) = 75;
  v74 = 16;
  sub_10005F794(&v58, &v73);
  sub_100001FE8(v65, "Udif: needs to read ", 20);
  sub_10013E810(v65, v11);
  sub_100001FE8(v65, " but buffer is full", 19);
  std::ios_base::getloc((v65 + *(v65[0] - 24)));
  v41 = std::locale::use_facet(&v71, &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v71);
  std::ostream::put();
  std::ostream::flush();
  std::ostream::~ostream();
  sub_100060288(&v58);
LABEL_84:
  std::ios::~ios();
  v39 = -28;
LABEL_85:
  v42 = *(a2 + 16);
  if (v42 != (a2 + 24))
  {
    do
    {
      (*(*v42[5] + 152))(v42[5]);
      v43 = v42[1];
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
          v44 = v42[2];
          v7 = *v44 == v42;
          v42 = v44;
        }

        while (!v7);
      }

      v42 = v44;
    }

    while (v44 != (a2 + 24));
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    if (v93)
    {
      v45 = __p;
      v46 = (__p + 24 * v93);
      v47 = v95;
      while (1)
      {
        do
        {
          v48 = v47[16];
          v47 += 16;
        }

        while (!v48);
        v49 = sub_100044D64(v45);
        v39 = v49;
        if (v49 < 0)
        {
          break;
        }

        if (*(a2 + 56) == 1 && v47[8] > v49)
        {
          *&v73 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v73 + 1) = 75;
          v74 = 16;
          sub_10005FE6C(&v58, &v73);
          sub_100001FE8(v65, "Error: Not enough data read. expected: ", 39);
          v51 = *(v47 + 4);
          std::ostream::operator<<();
          sub_100001FE8(v65, " read: ", 7);
          std::ostream::operator<<();
          sub_100001FE8(v65, " backend: ", 10);
          v52 = *(a1 + 48);
          std::ostream::operator<<();
          std::ios_base::getloc((v65 + *(v65[0] - 24)));
          v53 = std::locale::use_facet(&v71, &std::ctype<char>::id);
          (v53->__vftable[2].~facet_0)(v53, 10);
          std::locale::~locale(&v71);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          sub_1000628AC(&v58);
          std::ios::~ios();
          v39 = -5;
          break;
        }

        v45 += 6;
        if (v45 == v46)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
LABEL_100:
      v39 = v57;
    }
  }

  if (v79)
  {
    sub_10000E984(v79);
  }

  if (v77)
  {
    sub_10000E984(v77);
  }

  if (v87 == 1)
  {
    if (v86)
    {
      sub_10000E984(v86);
    }

    if (v85)
    {
      sub_10000E984(v85);
    }

    if (v84)
    {
      sub_10000E984(v84);
    }

    if (v83)
    {
      sub_10000E984(v83);
    }

    if (v82)
    {
      sub_10000E984(v82);
    }

    if (v81)
    {
      sub_10000E984(v81);
    }
  }

  if (v90)
  {
    sub_10000E984(v90);
  }

  if (v89)
  {
    sub_10000E984(v89);
  }

  if (*(&v93 + 1) && v94 != __p)
  {
    operator delete(__p);
  }

  if (*(&v96 + 1) && v97 != v95)
  {
    operator delete(v95);
  }

  return v39;
}

void sub_10005EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000FF88(&STACK[0x400]);
  sub_10002F2A8(&STACK[0x4E0]);
  sub_10000FF88(&STACK[0x7B8]);
  if (STACK[0x8B0] && a11 != STACK[0x8A0])
  {
    operator delete(STACK[0x8A0]);
  }

  if (STACK[0xA48])
  {
    if (a12 != STACK[0xA38])
    {
      operator delete(STACK[0xA38]);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005F0F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100043098(v14, a3);
  sub_10002E310(v15, v11);
  v5 = sub_10002DF68(v15, v8);
  v6 = (*(*a1 + 160))(a1, a2, v11, v8, v5);
  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  sub_1000157A4(v14);
  return v6;
}

void sub_10005F1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F244(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  *result = off_10021A218;
  *(result + 16) = v3;
  v4 = result + 16;
  v5 = *(a2 + 24);
  *(result + 24) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(a2 + 8) = v2;
    *v2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(result + 8) = v4;
  }

  *(result + 32) = *(a2 + 32);
  v6 = (a2 + 40);
  v7 = *(a2 + 40);
  *(result + 40) = v7;
  v8 = result + 40;
  v9 = *(a2 + 48);
  *(result + 48) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 32) = v6;
    *v6 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(result + 32) = v8;
  }

  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v10 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v10;
  v11 = *(a2 + 80);
  *(result + 96) = *(a2 + 96);
  *(result + 80) = v11;
  *(result + 104) = *(a2 + 104);
  v12 = (a2 + 112);
  v13 = *(a2 + 112);
  *(result + 112) = v13;
  v14 = result + 112;
  v15 = *(a2 + 120);
  *(result + 120) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 104) = v12;
    *v12 = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    *(result + 104) = v14;
  }

  return result;
}

__n128 sub_10005F334@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  a2[1].n128_u32[2] = 1;
  return result;
}

uint64_t sub_10005F3E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v3 = a1 + 16;
  *a1 = off_1001FD660;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 48) = 0;
  sub_10013BB54(a2 + 64, v7);
  v6[0] = v3;
  v6[1] = v4;
  sub_10005F4B4(v6, v7);
  if (v9)
  {
    sub_10000E984(v9);
  }

  sub_10005F63C(v7, v8);
  *(a1 + 56) = 1;
  return a1;
}

void sub_10005F490(_Unwind_Exception *a1)
{
  v5 = *(v1 + 48);
  if (v5)
  {
    sub_10000E984(v5);
  }

  sub_10005F63C(v2, *v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_10005F4B4(uint64_t *a1, uint64_t a2)
{
  sub_10005F5D0(*a1, a2);
  v4 = a1[1];
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    sub_10000E984(v6);
  }

  return a1;
}

uint64_t sub_10005F500(uint64_t a1)
{
  *a1 = off_1001FD660;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_10005F63C(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_10005F558(uint64_t a1)
{
  *a1 = off_1001FD660;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_10005F63C(a1 + 16, *(a1 + 24));

  operator delete();
}

void sub_10005F5D0(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_10005F63C(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_10005F63C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10005F63C(a1, *a2);
    sub_10005F63C(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_10000E984(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_10005F69C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  v12 = *(a1 + 120);
  v13 = v2;
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  v3 = *(a1 + 184);
  v16 = *(a1 + 176);
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 192);
  v4 = a2[15];
  v5 = a2[16];
  v6 = a2[17];
  v7 = a2[23];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; ; ++i)
  {
    v9 = v12 == v4 && *(&v12 + 1) == v5;
    if (v9 && v13 == v6)
    {
      break;
    }

    sub_10002D8EC(&v12);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v17)
  {
    sub_10000E984(v17);
  }

  return i;
}

void sub_10005F770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (v17)
  {
    sub_10000E984(v17);
  }

  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005F794(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000601C0(a1, a2);
  *a1 = off_1001FD6C0;
  a1[45] = &off_1001FD7C0;
  a1[46] = &off_1001FD7E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FD6C0;
  a1[45] = off_1001FD748;
  a1[46] = off_1001FD770;
  return a1;
}

void sub_10005F898(_Unwind_Exception *a1)
{
  sub_100060288(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005F8BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060288(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005F900(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100060A20(a1, a2);
  *a1 = off_1001FD8E0;
  a1[45] = &off_1001FD9E0;
  a1[46] = &off_1001FDA08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FD8E0;
  a1[45] = off_1001FD968;
  a1[46] = off_1001FD990;
  return a1;
}

void sub_10005FA04(_Unwind_Exception *a1)
{
  sub_100060AE8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005FA28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060AE8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005FA6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100061280(a1, a2);
  *a1 = off_1001FDB00;
  a1[45] = &off_1001FDC00;
  a1[46] = &off_1001FDC28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FDB00;
  a1[45] = off_1001FDB88;
  a1[46] = off_1001FDBB0;
  return a1;
}

void sub_10005FB70(_Unwind_Exception *a1)
{
  sub_100061348(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005FB94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061348(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005FBD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100061C94(a1, a2);
  *a1 = off_1001FDD20;
  a1[45] = &off_1001FDE20;
  a1[46] = &off_1001FDE48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FDD20;
  a1[45] = off_1001FDDA8;
  a1[46] = off_1001FDDD0;
  return a1;
}

void sub_10005FCDC(_Unwind_Exception *a1)
{
  sub_100061D5C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005FD00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061D5C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005FD44(uint64_t a1, void **a2, uint64_t a3, void *a4, unint64_t a5)
{
  v5 = a4[1];
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 << 6;
  v9 = (*a4 + 32);
  do
  {
    v11 = *v9;
    v9 += 8;
    v10 = v11;
    v12 = v11 + v6;
    v13 = v11 + v7;
    v14 = a5 - v7;
    v15 = v11 + v7 > a5;
    if (v11 + v7 >= a5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v13;
    }

    if (v15)
    {
      v7 = v10;
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v6 = v12 + v16;
    v8 -= 64;
  }

  while (v8);
  if (v6 <= a5 + a5 * *(a1 + 24))
  {
    return 0;
  }

  v17 = *(a3 + 48);
  memmove(*a2, *a2 + v17, *(a3 + 32) - v17);
  return v17;
}

uint64_t sub_10005FDDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    v4 = *(a1 + 680);
    if (v4)
    {
      sub_10000E984(v4);
    }

    v5 = *(a1 + 504);
    if (v5)
    {
      sub_10000E984(v5);
    }

    v6 = *(a1 + 456);
    if (v6)
    {
      sub_10000E984(v6);
    }

    v7 = *(a1 + 280);
    if (v7)
    {
      sub_10000E984(v7);
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_10000E984(v8);
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      sub_10000E984(v9);
    }

    *(a1 + 720) = 0;
  }

  result = sub_100030578(a1, a2);
  *(a1 + 720) = 1;
  return result;
}

void *sub_10005FE6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000627E4(a1, a2);
  *a1 = off_1001FDF40;
  a1[45] = &off_1001FE040;
  a1[46] = &off_1001FE068;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FDF40;
  a1[45] = off_1001FDFC8;
  a1[46] = off_1001FDFF0;
  return a1;
}

void sub_10005FF70(_Unwind_Exception *a1)
{
  sub_1000628AC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005FF94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000628AC(a1);
  std::ios::~ios();
  return a1;
}

void sub_10005FFD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_100060088(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_100060064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100060088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  if (a6)
  {
    v11 = 0;
    v12 = a6;
    do
    {
      v13 = a5 + v11;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a7 + v11;
      if (*(a7 + v11 + 4) == 1)
      {
        *v13 = *(a7 + v11);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
  }

  if (a3 != a4)
  {
    v16 = 0;
    do
    {
      v17 = a5 + 24 * a6 + v16;
      *v17 = 0;
      *(v17 + 4) = 0;
      *(v17 + 8) = 0;
      v18 = a3 + v16;
      if (*(a3 + v16 + 4) == 1)
      {
        *v17 = *(a3 + v16);
        *(v17 + 4) = 1;
      }

      *(v17 + 16) = *(v18 + 16);
      *(v18 + 16) = 0;
      v19 = *(v17 + 16);
      if (v19)
      {
        *v19 = v17;
      }

      v16 += 24;
    }

    while (a3 + v16 != a4);
  }
}

uint64_t sub_1000601C0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FD858;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100060270(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100060288(uint64_t a1)
{
  *a1 = off_1001FD858;
  sub_1000606C8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000603F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060288(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006045C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100060498(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100060504(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060288(v1);

  return std::ios::~ios();
}

void sub_100060550(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060288(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000605B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060288(v1);

  return std::ios::~ios();
}

void sub_100060614(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060288(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100060690(uint64_t a1)
{
  sub_100060288(a1);

  operator delete();
}

uint64_t sub_1000606C8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10006083C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100060814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006083C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 178;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 178;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100060A20(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FDA78;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100060AD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100060AE8(uint64_t a1)
{
  *a1 = off_1001FDA78;
  sub_100060F28(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100060C54(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060AE8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100060CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100060CF8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100060D64(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060AE8(v1);

  return std::ios::~ios();
}

void sub_100060DB0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060AE8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100060E14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060AE8(v1);

  return std::ios::~ios();
}

void sub_100060E74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060AE8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100060EF0(uint64_t a1)
{
  sub_100060AE8(a1);

  operator delete();
}

uint64_t sub_100060F28(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10006109C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100061074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006109C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 187;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 187;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100061280(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FDC98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100061330(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100061348(uint64_t a1)
{
  *a1 = off_1001FDC98;
  sub_100061788(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000614B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061348(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100061558(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000615C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061348(v1);

  return std::ios::~ios();
}

void sub_100061610(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061348(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100061674(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061348(v1);

  return std::ios::~ios();
}

void sub_1000616D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061348(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100061750(uint64_t a1)
{
  sub_100061348(a1);

  operator delete();
}

uint64_t sub_100061788(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1000618FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000618D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000618FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 196;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 196;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100061AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  *a1 = *a2 + a4;
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = *(a2 + 40);
  sub_100061B58(a2, a4, (a1 + 48));
  return a1;
}

void sub_100061B40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100061B58(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 104))
  {
    sub_100093838(a1 + 48, *(a1 + 24), *(a1 + 24) + a2, v5);
    sub_10009386C(a3, v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  a3[56] = v4;
}

uint64_t *sub_100061BC0(uint64_t a1, unsigned int *a2)
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

uint64_t sub_100061C94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FDEB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100061D44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100061D5C(uint64_t a1)
{
  *a1 = off_1001FDEB8;
  sub_10006219C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100061EC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061D5C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100061F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100061F6C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100061FD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061D5C(v1);

  return std::ios::~ios();
}

void sub_100062024(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061D5C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100062088(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061D5C(v1);

  return std::ios::~ios();
}

void sub_1000620E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061D5C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100062164(uint64_t a1)
{
  sub_100061D5C(a1);

  operator delete();
}

uint64_t sub_10006219C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100062310((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000622E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100062310(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 217;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 217;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000624F4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000625A4(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(24 * v11);
  sub_10006261C(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1000625A4(uint64_t a1, uint64_t a2)
{
  v2 = 0x555555555555555;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x555555555555555 - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x555555555555555)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_10006261C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000626CC(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_1000626A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1000626CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  if (*(a7 + 4) == 1)
  {
    *a5 = *a7;
    *(a5 + 4) = 1;
  }

  *(a5 + 16) = *(a7 + 16);
  *(a7 + 16) = 0;
  v11 = *(a5 + 16);
  if (v11)
  {
    *v11 = a5;
  }

  if (a3 != a4)
  {
    v12 = 0;
    do
    {
      v13 = a5 + 24 * a6 + v12;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a3 + v12;
      if (*(a3 + v12 + 4) == 1)
      {
        *v13 = *(a3 + v12);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v12 += 24;
    }

    while (a3 + v12 != a4);
  }
}

uint64_t sub_1000627E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FE0D8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100062894(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000628AC(uint64_t a1)
{
  *a1 = off_1001FE0D8;
  sub_100062CEC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100062A18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000628AC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100062A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100062ABC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100062B28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000628AC(v1);

  return std::ios::~ios();
}

void sub_100062B74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000628AC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100062BD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000628AC(v1);

  return std::ios::~ios();
}

void sub_100062C38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000628AC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100062CB4(uint64_t a1)
{
  sub_1000628AC(a1);

  operator delete();
}

uint64_t sub_100062CEC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100062E60((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100062E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100062E60(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 257;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 257;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100063044(uint64_t a1)
{
  *a1 = off_10021A218;
  sub_10005F63C(a1 + 104, *(a1 + 112));
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_1000285E0(a1 + 32, *(a1 + 40));
  sub_1000285E0(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_1000630D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100101694(v4, *a1);
  v11 = 2003069043;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  *v16 = *v9;
  *&v16[14] = *(&v9[1] + 6);
  v17 = 0;
  v18 = *&v9[3];
  v19 = v9[5];
  v20 = v9[6];
  v21 = v10;
  v22 = 2;
  v23 = 2;
  sub_10005DC94(a2, &v11);
  *(a2 + 512) = v23;
  *(a2 + 520) = 1;
  return sub_10005BEAC(&v11);
}

void sub_1000631CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_10005BEAC(&a23);
    __cxa_begin_catch(exception_object);
    sub_10005C870();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006322C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100063358(&v5, *a1, a2);
  v6[0] = v5;
  v7 = 3;
  sub_10005DC94(v8, v6);
  v9 = 1;
  sub_10005DC94(a3, v8);
  *(a3 + 512) = v9;
  *(a3 + 520) = 1;
  sub_10005BEAC(v8);
  return sub_10005BEAC(v6);
}

void sub_1000632E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a2)
  {
    sub_10005BEAC(&STACK[0x210]);
    sub_10005BEAC(va);
    __cxa_begin_catch(a1);
    sub_10005C870();
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_100063358(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*a2 + 40))(a2);
  v6 = 512;
  if (a3)
  {
    v6 = a3;
  }

  if (v5 % v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_10005AE3C(exception, "raw_header", 0x16u);
  }

  *a1 = v6;
  a1[1] = v5 / v6;
  return a1;
}

uint64_t sub_100063414(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = off_1001FE158;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a3;
  if (!a4)
  {
    if (!((*(**a2 + 40))() % a3))
    {
      return a1;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v11 = std::generic_category();
    exception[1] = 152;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Size is not a multiple of block size";
  }

  if (a4 % a3)
  {
    goto LABEL_9;
  }

  v6 = (*(*a1 + 72))(a1, a4);
  if (v6)
  {
    v7 = __cxa_allocate_exception(0x40uLL);
    *v7 = &off_1002260F0;
    v8 = std::generic_category();
    v7[1] = v6;
    v7[2] = v8;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    v7[7] = "set size failed";
  }

  return a1;
}

void sub_1000635D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000635F4(void *a1)
{
  *a1 = off_1001FE158;
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_100063640(void *a1)
{
  *a1 = off_1001FE158;
  v1 = a1[3];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

uint64_t sub_1000638B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __p = v26;
  v25 = xmmword_1001BC760;
  v7 = sub_10005F69C(a3, a4);
  v8 = v7;
  if (v7 > 0x10)
  {
    if (v7 >= 0x555555555555556)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v9 = operator new(24 * v7);
    sub_10005FFD8(&__p, v9, v8, __p + 24 * v25, 0, 0);
  }

  v23[0] = &__p;
  v23[1] = a2;
  sub_1000302E0(v20, a3);
  sub_1000302E0(&v17, a4);
  sub_100063FD0(v23, v20, &v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v19)
  {
    sub_10000E984(v19);
  }

  if (v18)
  {
    sub_10000E984(v18);
  }

  if (v22)
  {
    sub_10000E984(v22);
  }

  if (v21)
  {
    sub_10000E984(v21);
  }

  (*(**(a2 + 16) + 152))(*(a2 + 16));
  if (v25)
  {
    v10 = 0;
    v11 = __p;
    v12 = 24 * v25;
    do
    {
      v13 = sub_100044D64(v11);
      if (v13 < 0)
      {
        break;
      }

      v10 += v13;
      v11 += 6;
      v13 = v10;
      v12 -= 24;
    }

    while (v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 24);
  if (*(&v25 + 1) && v26 != __p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_100063A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  if (a69)
  {
    if (v69 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100063AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = ((a4[26] - *(a3 + 208)) & ~((a4[26] - *(a3 + 208)) >> 63)) + *(a3 + 24);
  if (v8 > (*(**(a1 + 16) + 40))(*(a1 + 16)))
  {
    *&v27 = "io_result_t DiskImageRaw::write(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v27 + 1) = 31;
    v28 = 16;
    sub_100064518(&__p, &v27);
    sub_100001FE8(v32, "Requested write is out of range - offset ", 41);
    v19 = *(a3 + 24);
    std::ostream::operator<<();
    sub_100001FE8(v32, " length ", 8);
    v20 = a4[26] - *(a3 + 208);
    std::ostream::operator<<();
    sub_100001FE8(v32, " backend size ", 14);
    (*(**(a1 + 16) + 40))(*(a1 + 16));
    std::ostream::operator<<();
    sub_100064640(&__p);
    return -34;
  }

  else
  {
    __p = v31;
    v30 = xmmword_1001BC760;
    v9 = sub_10005F69C(a3, a4);
    v10 = v9;
    if (v9 > 0x10)
    {
      if (v9 >= 0x555555555555556)
      {
        sub_100012CFC("get_next_capacity, allocator's max size reached");
      }

      v11 = operator new(24 * v9);
      sub_10005FFD8(&__p, v11, v10, __p + 24 * v30, 0, 0);
    }

    *&v27 = &__p;
    *(&v27 + 1) = a2;
    sub_1000302E0(&v24, a3);
    sub_1000302E0(v21, a4);
    sub_100064684(&v27, &v24, v21, 0xFFFFFFFFFFFFFFFFLL);
    if (v23)
    {
      sub_10000E984(v23);
    }

    if (v22)
    {
      sub_10000E984(v22);
    }

    if (v26)
    {
      sub_10000E984(v26);
    }

    if (v25)
    {
      sub_10000E984(v25);
    }

    (*(**(a2 + 16) + 152))(*(a2 + 16));
    if (v30)
    {
      v12 = 0;
      v13 = __p;
      v14 = 24 * v30;
      do
      {
        v15 = sub_100044D64(v13);
        if (v15 < 0)
        {
          break;
        }

        v12 += v15;
        v13 += 6;
        v15 = v12;
        v14 -= 24;
      }

      while (v14);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a3 + 24);
    if (*(&v30 + 1) && v31 != __p)
    {
      operator delete(__p);
    }
  }

  return v16;
}

uint64_t sub_100063E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    result = (*(**(a2 + 16) + 24))(*(a2 + 16), *(a1 + 32) * *(i - 1), *i * *(a1 + 32));
    if (result)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_100063F18(void *a1)
{
  *a1 = off_1001FE268;
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_100063F64(void *a1)
{
  *a1 = off_1001FE268;
  v1 = a1[3];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

uint64_t sub_100063FD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100030464(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100030464(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_100064134(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000E984(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v13;
}

void sub_100064110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_100064134(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_10002DE0C(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v29 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:54:22)]";
      *(&v29 + 1) = 104;
      LODWORD(v30) = 2;
      sub_1000339C8(v26, &v29);
      sub_100001FE8(v28, "sg: ", 4);
      sub_100192838(v28, a2);
      std::ostream::~ostream();
      sub_100033C40(v26);
      std::ios::~ios();
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    sub_100093990(a2, v26, &v29);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 136))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      sub_1000624F4(v12, v14, 1, v26, &v40);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v30;
    if (v30 >= 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = v30;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v31;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_10002F220(a2, a3, v31, v17))
      {
        sub_1000302E0(v25, a2);
        sub_10002F174(v25, a3, v20, v17, a4, v26);
        sub_100033B34(v32, v26);
        sub_10002F23C(v26);
        sub_10000FF88(v25);
        sub_10002E310(v32, v26);
        sub_100030B94(a2, v26);
        sub_10000FF88(v26);
        sub_10002DF68(v32, v26);
        sub_100030B94(a3, v26);
        sub_10000FF88(v26);
      }

      if (a5)
      {
        sub_10002E60C(a2, v17);
      }

      else
      {
        sub_10002E6D0(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v30 >= 0)
      {
        v16 = -v30;
      }

      v22 = v16;
    }

    if (*(&v29 + 1))
    {
      sub_10000E984(*(&v29 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000E984(v38);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    if (v36)
    {
      sub_10000E984(v36);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v33)
    {
      sub_10000E984(v33);
    }
  }

  return v22;
}

void sub_100064494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_10000FF88(&a40);
  if (STACK[0x3D0])
  {
    sub_10000E984(STACK[0x3D0]);
  }

  sub_10002F2A8(&STACK[0x438]);
  _Unwind_Resume(a1);
}

void *sub_100064518(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000647E8(a1, a2);
  *a1 = off_1001FE2C8;
  a1[45] = &off_1001FE3C8;
  a1[46] = &off_1001FE3F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FE2C8;
  a1[45] = off_1001FE350;
  a1[46] = off_1001FE378;
  return a1;
}

void sub_10006461C(_Unwind_Exception *a1)
{
  sub_1000648B0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100064640(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000648B0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100064684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100030464(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100030464(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_100065048(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000E984(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v13;
}

void sub_1000647C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1000647E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FE460;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100064898(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000648B0(uint64_t a1)
{
  *a1 = off_1001FE460;
  sub_100064CF0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100064A1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000648B0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100064A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100064AC0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100064B2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000648B0(v1);

  return std::ios::~ios();
}

void sub_100064B78(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000648B0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100064BDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000648B0(v1);

  return std::ios::~ios();
}

void sub_100064C3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000648B0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100064CB8(uint64_t a1)
{
  sub_1000648B0(a1);

  operator delete();
}

uint64_t sub_100064CF0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100064E64((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100064E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100064E64(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 65;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 65;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100065048(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_10002DE0C(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v29 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:72:22)]";
      *(&v29 + 1) = 104;
      LODWORD(v30) = 2;
      sub_1000339C8(v26, &v29);
      sub_100001FE8(v28, "sg: ", 4);
      sub_100192838(v28, a2);
      std::ostream::~ostream();
      sub_100033C40(v26);
      std::ios::~ios();
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    sub_100093990(a2, v26, &v29);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 144))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      sub_1000624F4(v12, v14, 1, v26, &v40);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v30;
    if (v30 >= 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = v30;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v31;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_10002F220(a2, a3, v31, v17))
      {
        sub_1000302E0(v25, a2);
        sub_10002F174(v25, a3, v20, v17, a4, v26);
        sub_100033B34(v32, v26);
        sub_10002F23C(v26);
        sub_10000FF88(v25);
        sub_10002E310(v32, v26);
        sub_100030B94(a2, v26);
        sub_10000FF88(v26);
        sub_10002DF68(v32, v26);
        sub_100030B94(a3, v26);
        sub_10000FF88(v26);
      }

      if (a5)
      {
        sub_10002E60C(a2, v17);
      }

      else
      {
        sub_10002E6D0(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v30 >= 0)
      {
        v16 = -v30;
      }

      v22 = v16;
    }

    if (*(&v29 + 1))
    {
      sub_10000E984(*(&v29 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000E984(v38);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    if (v36)
    {
      sub_10000E984(v36);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v33)
    {
      sub_10000E984(v33);
    }
  }

  return v22;
}

void sub_1000653A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_10000FF88(&a40);
  if (STACK[0x3D0])
  {
    sub_10000E984(STACK[0x3D0]);
  }

  sub_10002F2A8(&STACK[0x438]);
  _Unwind_Resume(a1);
}

void sub_100065430(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_10006546C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100065764(a1, a2);
  *a1 = off_1001FE588;
  a1[45] = &off_1001FE688;
  a1[46] = &off_1001FE6B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FE588;
  a1[45] = off_1001FE610;
  a1[46] = off_1001FE638;
  return a1;
}

void sub_100065570(_Unwind_Exception *a1)
{
  sub_10006582C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100065594(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006582C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000655DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100065614(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_100065644(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100065684(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10000ED20();
}

void **sub_1000656DC(void **a1)
{
  sub_100065710(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100065710(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      sub_10000E984(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t sub_100065764(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FE720;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100065814(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006582C(uint64_t a1)
{
  *a1 = off_1001FE720;
  sub_100065C6C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100065998(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006582C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100065A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100065A3C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100065AA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006582C(v1);

  return std::ios::~ios();
}

void sub_100065AF4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006582C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100065B58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006582C(v1);

  return std::ios::~ios();
}

void sub_100065BB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006582C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100065C34(uint64_t a1)
{
  sub_10006582C(a1);

  operator delete();
}

uint64_t sub_100065C6C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100065DE0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100065DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100065DE0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 1010;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 1010;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100065FC8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_100066000(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_10017204C(a1);
  sub_100010B0C(v17, v4);
  sub_100028820(v12);
  if ((v18 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17[1];
  }

  v7 = sub_100001FE8(&v13, v5, v6);
  v8 = sub_100001FE8(v7, " [", 2);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = *(a1 + 32);
  v10 = std::ostream::operator<<();
  sub_100001FE8(v10, "]", 1);
  sub_100028B04(&v14, a2);
  v13 = v11;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100066290(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000662E4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000662E4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_10000E984(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100066330(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_1002015F0;
  v3 = *(a2 + 8);
  *(a1 + 16) = *a2;
  *(a1 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_100050108((a1 + 32), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 48) = *(a2 + 32);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_1000663C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000663DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = off_1001FCC88;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  return a1;
}

void sub_100066464(_Unwind_Exception *a1)
{
  v4 = v3;
  std::mutex::~mutex(v4);
  sub_10005C4E0(v2);
  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v6)
  {
    sub_100198088(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100066550(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001FE860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006659C(uint64_t a1)
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

uint64_t sub_10006661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000666B8(a1 + 56, a1, *(a1 + 8));
  sub_10006670C(a2, &v5, *(a1 + 48));
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_10006669C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_100198434(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000666B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_10006670C(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = qword_1002349D8;
  *(a1 + 8) = qword_1002349D8;
  v6 = (a1 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  sub_10012E140(a1, v8);
  *v6 = v8[0];
  *(v6 + 12) = *(v8 + 12);
  return a1;
}

void sub_100066780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_100198434(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006679C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000666B8(a1 + 56, a1, *(a1 + 16));
  sub_10006670C(a2, &v5, *(a1 + 48));
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_10006681C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_100198434(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100066838(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006710C(a1, a2);
  *a1 = off_1001FE888;
  a1[45] = &off_1001FE988;
  a1[46] = &off_1001FE9B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FE888;
  a1[45] = off_1001FE910;
  a1[46] = off_1001FE938;
  return a1;
}

void sub_10006693C(_Unwind_Exception *a1)
{
  sub_1000671D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100066960(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000671D4(a1);
  std::ios::~ios();
  return a1;
}

_OWORD *sub_1000669A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*(a1 + 24) || *(a1 + 576) != a2)
  {
    v8 = (a1 + 584);
    v9 = *(a1 + 32);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if (v9)
    {
      sub_10000E984(v9);
    }

    v10 = *(a1 + 592);
    *v8 = 0;
    *(a1 + 592) = 0;
    if (v10)
    {
      sub_10000E984(v10);
    }

    v11 = *(a1 + 608);
    *(a1 + 600) = 0;
    *(a1 + 608) = 0;
    if (v11)
    {
      sub_10000E984(v11);
    }

    v12 = *(a1 + 624);
    *(a1 + 616) = 0;
    *(a1 + 624) = 0;
    if (v12)
    {
      sub_10000E984(v12);
    }

    if (*(a1 + 23) < 0)
    {
      sub_100050108(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      __p[2] = *(a1 + 16);
    }

    v30[0] = 2 * ((a2 - 1) < 2);
    sub_100068760();
  }

  sub_100059E94(a1, v30);
  if ((v31 & 1) == 0)
  {
    *&v27 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v27 + 1) = 83;
    v28 = 16;
    sub_10006796C(__p, &v27);
    sub_100001FE8(v33, "Diskimageuio: Couldn't get locked status ", 41);
    v15 = sub_100059674(v30);
    v16 = (*(**(v15 + 1) + 16))(*(v15 + 1));
    v17 = strlen(v16);
    v18 = sub_100001FE8(v33, v16, v17);
    LOBYTE(v25) = 58;
    sub_100001FE8(v18, &v25, 1);
    v19 = *v15;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100068B14(__p);
    std::ios::~ios();
    result = sub_100059674(v30);
    *a4 = *result;
    goto LABEL_19;
  }

  if (v30[0])
  {
    *&v27 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v27 + 1) = 83;
    v28 = 0;
    sub_1000685F4(__p, &v27);
    sub_100001FE8(v33, "Diskimageuio: decryption key missing", 36);
    std::ostream::~ostream();
    sub_10006DF08(__p);
    std::ios::~ios();
    result = make_error_code(162);
    *a4 = result;
    *(a4 + 8) = v14;
LABEL_19:
    *(a4 + 16) = 0;
    return result;
  }

  *&v27 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
  *(&v27 + 1) = 83;
  v28 = 2;
  sub_100067AD8(__p, &v27);
  sub_100001FE8(v33, "Diskimageuio: backend isn't locked", 34);
  std::ostream::~ostream();
  sub_100069374(__p);
  std::ios::~ios();
  sub_100067C44(a1, 0, __p);
  if (v34)
  {
    v20 = sub_10006841C(__p);
    sub_10005BF74(a1 + 56, v20);
    *(a1 + 568) = *(v20 + 512);
    *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v25 + 1) = 83;
    v26 = 2;
    sub_100068488(&v27, &v25);
    sub_100001FE8(v29, "Diskimageuio: resolved disk image format ", 41);
    diskimage_uio::operator<<(v29, *(a1 + 568));
    std::ostream::~ostream();
    sub_10006D6A8(&v27);
    result = std::ios::~ios();
    *a4 = 0;
    v21 = 1;
  }

  else
  {
    v22 = *(a1 + 572);
    if (v22)
    {
      if (*(a1 + 576) != v22)
      {
        v23 = sub_100067F80(__p);
        v24 = std::generic_category();
        *&v27 = 35;
        *(&v27 + 1) = v24;
        if ((*(**(v23 + 1) + 32))(*(v23 + 1), *v23, &v27) || (*(**(&v27 + 1) + 40))(*(&v27 + 1), v23, v27))
        {
          *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
          *(&v25 + 1) = 83;
          v26 = 2;
          sub_100067FD8(&v27, &v25);
          sub_100001FE8(v29, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(v29, *(a1 + 572));
          sub_100001FE8(v29, " is different than current mode ", 32);
          diskimage_uio::operator<<(v29, *(a1 + 576));
          std::ostream::~ostream();
          sub_10006BD88(&v27);
          std::ios::~ios();
          if (a3)
          {
            *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
            *(&v25 + 1) = 83;
            v26 = 2;
            sub_100068144(&v27, &v25);
            sub_100001FE8(v29, "Diskimageuio: reopen backend to required mode ", 46);
            diskimage_uio::operator<<(v29, *(a1 + 572));
            sub_10006826C(&v27);
            result = sub_1000669A4(a1, *(a1 + 572), 0);
            goto LABEL_32;
          }

          *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
          *(&v25 + 1) = 83;
          v26 = 0;
          sub_1000682B0(&v27, &v25);
          sub_100001FE8(v29, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(v29, *(a1 + 572));
          sub_100001FE8(v29, " is different than current mode ", 32);
          diskimage_uio::operator<<(v29, *(a1 + 576));
          sub_1000683D8(&v27);
        }
      }
    }

    result = sub_100067F80(__p);
    v21 = 0;
    *a4 = *result;
  }

  *(a4 + 16) = v21;
LABEL_32:
  if (v34 == 1)
  {
    return sub_10005BEAC(__p);
  }

  return result;
}

void sub_100066FA8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x458]) == 1)
  {
    sub_10005BEAC(&STACK[0x250]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006710C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FEA20;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000671BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000671D4(uint64_t a1)
{
  *a1 = off_1001FEA20;
  sub_100067614(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100067340(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000671D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000673A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000673E4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100067450(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000671D4(v1);

  return std::ios::~ios();
}

void sub_10006749C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000671D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100067500(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000671D4(v1);

  return std::ios::~ios();
}

void sub_100067560(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000671D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000675DC(uint64_t a1)
{
  sub_1000671D4(a1);

  operator delete();
}

uint64_t sub_100067614(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100067788((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100067760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100067788(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 559;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 559;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10006796C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100068A4C(a1, a2);
  *a1 = off_1001FEB48;
  a1[45] = &off_1001FEC48;
  a1[46] = &off_1001FEC70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FEB48;
  a1[45] = off_1001FEBD0;
  a1[46] = off_1001FEBF8;
  return a1;
}

void sub_100067A70(_Unwind_Exception *a1)
{
  sub_100068B14(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100067A94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100068B14(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100067AD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000692AC(a1, a2);
  *a1 = off_1001FED68;
  a1[45] = &off_1001FEE68;
  a1[46] = &off_1001FEE90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FED68;
  a1[45] = off_1001FEDF0;
  a1[46] = off_1001FEE18;
  return a1;
}

void sub_100067BDC(_Unwind_Exception *a1)
{
  sub_100069374(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100067C00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100069374(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100067C44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100069B0C(0, (a1 + 24), *(a1 + 572) == 0, a1, a2, v25);
  if (v27)
  {
    v5 = sub_10006841C(v25);
    sub_10005DC94(v22, v5);
    v24 = *(v5 + 512);
    v6 = v24 > 0xB || ((1 << v24) & 0xA06) == 0;
    if (v6 || *(a1 + 576) || !*(a1 + 572))
    {
      sub_10005DC94(&v18, v22);
      v21 = v24;
      sub_10005DC94(a3, &v18);
      *(a3 + 512) = v21;
      *(a3 + 520) = 1;
      sub_10005BEAC(&v18);
    }

    else
    {
      *&v16 = "image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_image_header(size_t)";
      *(&v16 + 1) = 107;
      v17 = 2;
      sub_10006A0C8(&v18, &v16);
      sub_100001FE8(v20, "Diskimageuio: Required read-write disk image (", 46);
      v14 = diskimage_uio::operator<<(v20, v24);
      sub_100001FE8(v14, ")", 1);
      std::ostream::~ostream();
      sub_10006B528(&v18);
      std::ios::~ios();
      v15 = std::generic_category();
      *a3 = 35;
      *(a3 + 8) = v15;
      *(a3 + 520) = 0;
    }

    result = sub_10005BEAC(v22);
  }

  else
  {
    *&v18 = "image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_image_header(size_t)";
    *(&v18 + 1) = 107;
    v19 = 16;
    sub_100069F5C(v22, &v18);
    sub_100001FE8(v23, "Diskimageuio: Couldn't get diskimage: ", 38);
    v8 = sub_100067F80(v25);
    v9 = (*(**(v8 + 1) + 16))(*(v8 + 1));
    v10 = strlen(v9);
    v11 = sub_100001FE8(v23, v9, v10);
    LOBYTE(v16) = 58;
    sub_100001FE8(v11, &v16, 1);
    v12 = *v8;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10006ACC8(v22);
    result = std::ios::~ios();
    *a3 = 0;
    v13 = v27;
    *(a3 + 520) = v27;
    if (v13 == 1)
    {
      result = sub_10005DC94(a3, v25);
      *(a3 + 512) = v26;
    }

    else
    {
      *a3 = v25[0];
    }
  }

  if (v27 == 1)
  {
    return sub_10005BEAC(v25);
  }

  return result;
}

void sub_100067F0C(_Unwind_Exception *a1)
{
  sub_10005BEAC(&STACK[0x220]);
  if (LOBYTE(STACK[0x630]) == 1)
  {
    sub_10005BEAC(&STACK[0x428]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100067F80(uint64_t result)
{
  if (*(result + 520))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_1001FCD60;
  }

  return result;
}

void *sub_100067FD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006BCC0(a1, a2);
  *a1 = off_1001FF5E8;
  a1[45] = &off_1001FF6E8;
  a1[46] = &off_1001FF710;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FF5E8;
  a1[45] = off_1001FF670;
  a1[46] = off_1001FF698;
  return a1;
}

void sub_1000680DC(_Unwind_Exception *a1)
{
  sub_10006BD88(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100068100(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006BD88(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100068144(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006C520(a1, a2);
  *a1 = off_1001FF808;
  a1[45] = &off_1001FF908;
  a1[46] = &off_1001FF930;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FF808;
  a1[45] = off_1001FF890;
  a1[46] = off_1001FF8B8;
  return a1;
}

void sub_100068248(_Unwind_Exception *a1)
{
  sub_10006C5E8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006826C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006C5E8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000682B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006CD80(a1, a2);
  *a1 = off_1001FFA28;
  a1[45] = &off_1001FFB28;
  a1[46] = &off_1001FFB50;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FFA28;
  a1[45] = off_1001FFAB0;
  a1[46] = off_1001FFAD8;
  return a1;
}

void sub_1000683B4(_Unwind_Exception *a1)
{
  sub_10006CE48(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000683D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006CE48(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006841C(uint64_t result)
{
  if (*(result + 520) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *v1;
    *exception = &off_1001FE4F8;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_100068488(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006D5E0(a1, a2);
  *a1 = off_1001FFC48;
  a1[45] = &off_1001FFD48;
  a1[46] = &off_1001FFD70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FFC48;
  a1[45] = off_1001FFCD0;
  a1[46] = off_1001FFCF8;
  return a1;
}

void sub_10006858C(_Unwind_Exception *a1)
{
  sub_10006D6A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000685B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006D6A8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000685F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006DE40(a1, a2);
  *a1 = off_1001FFE68;
  a1[45] = &off_1001FFF68;
  a1[46] = &off_1001FFF90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FFE68;
  a1[45] = off_1001FFEF0;
  a1[46] = off_1001FFF18;
  return a1;
}

void sub_1000686F8(_Unwind_Exception *a1)
{
  sub_10006DF08(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006871C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006DF08(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000687EC(void *a1, uint64_t a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  v4 = *a3;
  v5 = sub_100150D40(a2, *a3);
  sub_100056CC8(a1 + 3, v5, (v4 & 3) != 0);
}

void sub_10006888C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FEAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100068974(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAF0;
  sub_100180620(a1 + 3);
  return a1;
}

void sub_1000689F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FEAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100068A4C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FECE0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100068AFC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100068B14(uint64_t a1)
{
  *a1 = off_1001FECE0;
  sub_100068F54(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100068C80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100068B14(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100068CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100068D24(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100068D90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100068B14(v1);

  return std::ios::~ios();
}

void sub_100068DDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100068B14(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100068E40(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100068B14(v1);

  return std::ios::~ios();
}

void sub_100068EA0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100068B14(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100068F1C(uint64_t a1)
{
  sub_100068B14(a1);

  operator delete();
}

uint64_t sub_100068F54(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1000690C8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000690A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000690C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 519;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 519;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000692AC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FEF00;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10006935C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100069374(uint64_t a1)
{
  *a1 = off_1001FEF00;
  sub_1000697B4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000694E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100069374(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100069548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100069584(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000695F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100069374(v1);

  return std::ios::~ios();
}

void sub_10006963C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100069374(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000696A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100069374(v1);

  return std::ios::~ios();
}

void sub_100069700(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100069374(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006977C(uint64_t a1)
{
  sub_100069374(a1);

  operator delete();
}

uint64_t sub_1000697B4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100069928((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100069900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100069928(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 524;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 524;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100069B0C@<X0>(int a1@<W0>, char ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 > 8)
  {
    if ((a1 - 9) < 2)
    {
      goto LABEL_11;
    }

    if (a1 == 11)
    {
      if (*(a4 + 23) < 0)
      {
        sub_100050108(__p, *a4, *(a4 + 8));
      }

      else
      {
        __p[0] = *a4;
      }

      sub_10005A89C(&v16, a2, __p, a3);
    }

    if (a1 == 12)
    {
LABEL_11:
      v18 = 0;
      sub_10005DC94(v19, __p);
      v21 = 0;
      sub_10005DC94(a6, v19);
      *(a6 + 512) = v21;
      *(a6 + 520) = 1;
      sub_10005BEAC(v19);
      return sub_10005BEAC(__p);
    }

    goto LABEL_34;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = 1;
      while (1)
      {
        if ((v13 - 3) >= 5 && v13 != 1)
        {
          result = sub_100069B0C(v13, a2, a3, a4, a5);
          if (*(a6 + 520) != 1)
          {
            return result;
          }

          result = sub_10006841C(a6);
          if (*(result + 512))
          {
            return result;
          }

          if (*(a6 + 520) == 1)
          {
            sub_10005BEAC(a6);
          }
        }

        v13 = (v13 + 1);
        if (v13 == 13)
        {
          goto LABEL_5;
        }
      }
    }

    if (a1 == 1)
    {
LABEL_5:

      return sub_10006322C(a2, a5, a6);
    }

LABEL_34:
    __p[0].__r_.__value_.__r.__words[0] = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr(image_format, std::shared_ptr<Backend> &, BOOL, const std::filesystem::path &, size_t)";
    __p[0].__r_.__value_.__l.__size_ = 132;
    LODWORD(__p[0].__r_.__value_.__r.__words[2]) = 16;
    sub_10006A234(v19, __p);
    sub_100001FE8(v20, "Diskimageuio: Unsupported image format", 38);
    diskimage_uio::operator<<(v20, a1);
    std::ostream::~ostream();
    sub_10006A468(v19);
    std::ios::~ios();
    result = make_error_code(161);
    *a6 = result;
    *(a6 + 8) = v15;
    *(a6 + 520) = 0;
    return result;
  }

  if (a1 == 2)
  {

    return sub_1000630D4(a2, a6);
  }

  else
  {
    if (a1 != 8)
    {
      goto LABEL_34;
    }

    return sub_10005C58C(a2, a6);
  }
}

void sub_100069E8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_10005C870();
  }

  _Unwind_Resume(a1);
}

void *sub_100069F5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006AC00(a1, a2);
  *a1 = off_1001FF1A8;
  a1[45] = &off_1001FF2A8;
  a1[46] = &off_1001FF2D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FF1A8;
  a1[45] = off_1001FF230;
  a1[46] = off_1001FF258;
  return a1;
}

void sub_10006A060(_Unwind_Exception *a1)
{
  sub_10006ACC8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006A084(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006ACC8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10006A0C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006B460(a1, a2);
  *a1 = off_1001FF3C8;
  a1[45] = &off_1001FF4C8;
  a1[46] = &off_1001FF4F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FF3C8;
  a1[45] = off_1001FF450;
  a1[46] = off_1001FF478;
  return a1;
}

void sub_10006A1CC(_Unwind_Exception *a1)
{
  sub_10006B528(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006A1F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006B528(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10006A234(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006A3A0(a1, a2);
  *a1 = off_1001FEF88;
  a1[45] = &off_1001FF088;
  a1[46] = &off_1001FF0B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FEF88;
  a1[45] = off_1001FF010;
  a1[46] = off_1001FF038;
  return a1;
}

void sub_10006A338(_Unwind_Exception *a1)
{
  sub_10006A468(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006A35C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006A468(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006A3A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FF120;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10006A450(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A468(uint64_t a1)
{
  *a1 = off_1001FF120;
  sub_10006A8A8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10006A5D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006A468(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006A63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006A678(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10006A6E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006A468(v1);

  return std::ios::~ios();
}

void sub_10006A730(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006A468(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006A794(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006A468(v1);

  return std::ios::~ios();
}

void sub_10006A7F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006A468(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006A870(uint64_t a1)
{
  sub_10006A468(a1);

  operator delete();
}

uint64_t sub_10006A8A8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10006AA1C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10006A9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006AA1C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 470;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 470;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006AC00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FF340;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10006ACB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006ACC8(uint64_t a1)
{
  *a1 = off_1001FF340;
  sub_10006B108(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10006AE34(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006ACC8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006AE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006AED8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10006AF44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006ACC8(v1);

  return std::ios::~ios();
}

void sub_10006AF90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006ACC8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006AFF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006ACC8(v1);

  return std::ios::~ios();
}

void sub_10006B054(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006ACC8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006B0D0(uint64_t a1)
{
  sub_10006ACC8(a1);

  operator delete();
}

uint64_t sub_10006B108(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10006B27C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10006B254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006B27C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 480;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 480;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006B460(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FF560;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10006B510(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B528(uint64_t a1)
{
  *a1 = off_1001FF560;
  sub_10006B968(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10006B694(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006B528(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006B738(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10006B7A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006B528(v1);

  return std::ios::~ios();
}

void sub_10006B7F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006B528(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006B854(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006B528(v1);

  return std::ios::~ios();
}

void sub_10006B8B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006B528(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006B930(uint64_t a1)
{
  sub_10006B528(a1);

  operator delete();
}

uint64_t sub_10006B968(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10006BADC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10006BAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006BADC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 488;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 488;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}