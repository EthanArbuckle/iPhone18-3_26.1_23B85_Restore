BOOL sub_1000006B0(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = (a1 + 8);
  v6 = (a2 + 8);
  if (sub_1000007A8((a1 + 8), (a2 + 8)) > 0)
  {
    return 1;
  }

  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = *(a2 + 31);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 16);
  }

  if (v8 != v9)
  {
    return 0;
  }

  v11 = v7 >= 0 ? v5 : *v5;
  v12 = *v6;
  v13 = v10 >= 0 ? v6 : *v6;
  if (memcmp(v11, v13, v8))
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (v14 > v15)
  {
    return 1;
  }

  return v14 == v15 && *(a1 + 36) > *(a2 + 36);
}

uint64_t sub_1000007A8(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

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
    v6 = a2[1];
  }

  return sub_1000045DC(a1, v2, v5, v6);
}

BOOL sub_1000007E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5) && *(a1 + 32) == *(a2 + 32)))
  {
    return *(a1 + 36) == *(a2 + 36);
  }

  else
  {
    return 0;
  }
}

std::logic_error *sub_100000E2C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100000E74(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_10000463C(locale);
  }

  std::locale::~locale(this);
}

double sub_100000EB4(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  result = NAN;
  *(a1 + 32) = -1;
  return result;
}

void sub_100000ED8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_1000008A0();
}

void sub_100000F14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100000F34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100000FC0(a1, v5);
  if ((v6 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1000010BC(a1, a2);
    return;
  }

  v4 = v5[1];
  operator delete(v5[0]);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 23) < 0)
  {
    sub_100004784(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }
}

double sub_100000FC0@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100001088(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1000010BC@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void *sub_100001184(void *result)
{
  *result = &off_100014340;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1000011A8(void *a1, uint64_t a2)
{
  *a1 = &off_100014340;
  sub_100000F34(a2, (a1 + 1));
  return a1;
}

uint64_t sub_1000011F4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_100014360;
  sub_10000F7A0((a1 + 32), "/usr/share/zoneinfo.default");
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1000012D8(a1);
  return a1;
}

void sub_100001290(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000012D8(uint64_t a1)
{
  sub_10000F7A0(&v3.__pn_, "+VERSION");
  sub_10000161C(&v3, a1 + 32, &__p);
  sub_10000F9CC(v5);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  sub_100001694(v5, a1 + 56);
  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

uint64_t sub_1000014A0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100014340;
  sub_100000F34(a2, a1 + 8);
  *a1 = off_100014360;
  *(a1 + 32) = 0u;
  v4 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    sub_10000F7A0(&__p, "zoneinfo");
    sub_10000161C(&__p, a2, &v8);
    if (*(a1 + 55) < 0)
    {
      operator delete(*v4);
    }

    *v4 = *&v8.__pn_.__r_.__value_.__l.__data_;
    *(a1 + 48) = *(&v8.__pn_.__r_.__value_.__l + 2);
    *(&v8.__pn_.__r_.__value_.__s + 23) = 0;
    v8.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10000F974((a1 + 32), "/usr/share/zoneinfo.default");
  }

  sub_1000012D8(a1);
  return a1;
}

void sub_1000015C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 79) < 0)
  {
    operator delete(*(v14 + 56));
  }

  if (*(v14 + 55) < 0)
  {
    operator delete(*v16);
  }

  *v14 = v15;
  if (*(v14 + 31) < 0)
  {
    operator delete(*(v14 + 8));
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *sub_10000161C@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004784(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return sub_1000030E8(a3, this);
}

void sub_100001674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100001694(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1000018D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x100001898);
  }

  __cxa_rethrow();
}

void *sub_100001988(void *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

char *sub_100001A5C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    return sub_100004784(a2, *(result + 7), *(result + 8));
  }

  *a2 = *(result + 56);
  *(a2 + 16) = *(result + 9);
  return result;
}

void sub_100001A84(uint64_t a1)
{
  sub_10000F7A0(&__new_symlink.__pn_, "/var/db/timezone/zoneinfo");
  std::__fs::filesystem::__remove(&__new_symlink, 0);
  std::__fs::filesystem::__create_symlink((a1 + 32), &__new_symlink, 0);
  if (SHIBYTE(__new_symlink.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__new_symlink.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_100001AEC(void *a1)
{
  __cxa_begin_catch(a1);
  warn("Unlink of zoneinfo symlink failed");
  __cxa_end_catch();
  JUMPOUT(0x100001ABCLL);
}

void sub_100001B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_end_catch();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100001B30(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &off_100014380;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10000F7A0((a1 + 56), "/usr/share/icu");
  sub_100001C18(a1);
  return a1;
}

void sub_100001BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v4);
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100001C18(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
LABEL_3:
      sub_100004B88(__p, "icutz([0-9]+[lbe])", 0);
    }
  }

  else if (*(a1 + 31))
  {
    goto LABEL_3;
  }

  sub_10000F7A0(&__dst, "icutzformat.txt");
  sub_10000161C(&__dst, a1 + 56, __p);
  sub_10000F9CC(v5);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  sub_100001694(v5, a1 + 32);
  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_1000020C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46)
{
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  sub_100000E74(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1000021C0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100014340;
  sub_100000F34(a2, a1 + 8);
  *a1 = &off_100014380;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    sub_10000F7A0(&__p, "icutz");
    sub_10000161C(&__p, a2, &v7);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = v7;
    *(&v7.__pn_.__r_.__value_.__s + 23) = 0;
    v7.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10000F974((a1 + 56), "/usr/share/icu");
  }

  sub_100001C18(a1);
  return a1;
}

void sub_1000022E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 79) < 0)
  {
    operator delete(*(v14 + 56));
  }

  if (*(v14 + 55) < 0)
  {
    operator delete(*v16);
  }

  *v14 = v15;
  if (*(v14 + 31) < 0)
  {
    operator delete(*(v14 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_100002340@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__stem(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

BOOL sub_100002408(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

double sub_100002444@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

BOOL sub_10000250C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  if (!v4)
  {
    warn("tzu_icu::compatible_schema: could not dynamic_cast other component");
    return 0;
  }

  v5 = *(a1 + 55);
  if (v5 >= 0)
  {
    v6 = *(a1 + 55);
  }

  else
  {
    v6 = *(a1 + 40);
  }

  v7 = *(v4 + 55);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = v4[5];
  }

  if (v6 != v7)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v9 = v11;
  if (v5 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v15 = v4[4];
  v13 = (v4 + 4);
  v14 = v15;
  if (v8 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  return memcmp(v12, v16, v6) == 0;
}

void sub_1000025E4(uint64_t a1)
{
  sub_10000F7A0(&__new_symlink.__pn_, "/var/db/timezone/icutz");
  sub_10000F7A0(&__p, "/var/db/icutz");
  std::__fs::filesystem::__remove(&__new_symlink, 0);
  std::__fs::filesystem::__remove(&__p, 0);
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 31))
  {
LABEL_5:
    std::__fs::filesystem::__create_symlink((a1 + 56), &__new_symlink, 0);
  }

LABEL_6:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__new_symlink.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__new_symlink.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_100002694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000026F0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  sub_10000279C();
}

void sub_100002760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 88);
  sub_100004938(&a10);
  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  sub_1000102E8(v10, v12, v11);
  _Unwind_Resume(a1);
}

void sub_100002A94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = -1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100000F34(a2, a1 + 64);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_10000279C();
}

void sub_100002B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v11;
  a10 = v14;
  sub_100004938(&a10);
  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  if (*(v10 + 63) < 0)
  {
    operator delete(*v13);
  }

  if (*(v10 + 31) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void **sub_100002B70(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000049D8();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_1000049F0(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_100004A38(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

BOOL sub_100002C68(uint64_t a1, uint64_t a2)
{
  if (sub_1000006B0(a1, a2))
  {
    return 1;
  }

  return sub_1000007E0(a1, a2);
}

uint64_t sub_100002CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  v4 = *(a1 + 88);
  if (v4 == *(a1 + 96))
  {
    return v3 == *(a2 + 96);
  }

  if (v3 == *(a2 + 96))
  {
    return 0;
  }

  for (i = v4 + 16; ; i += 16)
  {
    result = (***(i - 16))(*(i - 16), *v3);
    if (!result)
    {
      break;
    }

    v3 += 2;
    if (i == *(a1 + 96))
    {
      return v3 == *(a2 + 96);
    }

    if (v3 == *(a2 + 96))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002D78(uint64_t result)
{
  v1 = *(result + 88);
  v2 = *(result + 96);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*v3 + 8))(v3);
  }

  return result;
}

char *sub_100002DCC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[63] < 0)
  {
    return sub_100004784(a2, *(result + 5), *(result + 6));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 7);
  return result;
}

void sub_100002DF4(std::__fs::filesystem::path *this@<X1>, const std::__fs::filesystem::path *a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  a3->__pn_.__r_.__value_.__r.__words[0] = 0;
  a3->__pn_.__r_.__value_.__l.__size_ = 0;
  a3->__pn_.__r_.__value_.__r.__words[2] = 0;
  std::__fs::filesystem::path::begin(&v20, this);
  std::__fs::filesystem::path::begin(&v19, a2);
  while (1)
  {
    std::__fs::filesystem::path::end(&v18, a2);
    if (v19.__path_ptr_ == v18.__path_ptr_ && v19.__entry_.__data_ == v18.__entry_.__data_)
    {
      v9 = 0;
    }

    else
    {
      std::__fs::filesystem::path::end(&v17, this);
      if (v20.__path_ptr_ == v17.__path_ptr_ && v20.__entry_.__data_ == v17.__entry_.__data_)
      {
        v9 = 0;
      }

      else
      {
        if (SHIBYTE(v19.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100004784(&__dst, v19.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v19.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v19.__stashed_elem_;
        }

        if (SHIBYTE(v20.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100004784(__p, v20.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v20.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          *__p = *&v20.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
          v15 = v20.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
        }

        v7.__data_ = __p;
        v9 = sub_100002408(&__dst, v7);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v17.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v18.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

    if (!v9)
    {
      break;
    }

    std::__fs::filesystem::path::iterator::__increment(&v19);
    std::__fs::filesystem::path::iterator::__increment(&v20);
  }

  std::__fs::filesystem::path::end(&v18, this);
  v11 = v20.__path_ptr_ == v18.__path_ptr_ && v20.__entry_.__data_ == v18.__entry_.__data_;
  if (SHIBYTE(v18.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else if (!v11)
  {
    goto LABEL_53;
  }

  while (1)
  {
    std::__fs::filesystem::path::end(&v18, a2);
    v13 = v19.__path_ptr_ != v18.__path_ptr_ || v19.__entry_.__data_ != v18.__entry_.__data_;
    if (SHIBYTE(v18.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

    if (!v13)
    {
      break;
    }

    if (SHIBYTE(v19.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100004784(&v18, v19.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v19.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v18.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = *&v19.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
      v18.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v19.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
    }

    sub_1000030E8(a3, &v18.__stashed_elem_);
    if (SHIBYTE(v18.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::iterator::__increment(&v19);
  }

LABEL_53:
  if (SHIBYTE(v19.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_10000303C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v35 - 137) < 0)
  {
    operator delete(*(v35 - 160));
  }

  if (*(v35 - 81) < 0)
  {
    operator delete(*(v35 - 104));
  }

  if (*(v34 + 23) < 0)
  {
    operator delete(*v34);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path *sub_1000030E8(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void sub_100003214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100003228(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100003228(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_100004938(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100003294(std::__fs::filesystem::path *a1@<X8>)
{
  sub_10000F7A0(&v2.__pn_, "/var/db/timezone/tz_latest");
  std::__fs::filesystem::__read_symlink(a1, &v2, 0);
  if (SHIBYTE(v2.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1000032F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000330C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_100000F34(a1, &__p);
  sub_1000010BC(&__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000010BC(&__str, &__p);
  v11.__data_ = &unk_100018000;
  v4 = sub_100002408(&__p, v11);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    std::string::operator=(a2, &__str);
    goto LABEL_10;
  }

  sub_10000F7A0(&__p, "/usr/share/zoneinfo.default");
  v12.__data_ = &__p;
  v6 = sub_100002408(a1, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    warn("Bad zoneinfo link %s", v7);
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "bad_zoneinfo_link");
  }

LABEL_10:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100003474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v23);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void sub_1000034D4(std::string *a1@<X8>)
{
  sub_10000F7A0(&__p, "/var/db/timezone/zoneinfo");
  std::__fs::filesystem::__read_symlink(&v3, &__p, 0);
  sub_10000330C(&v3, a1);
  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10000354C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003580()
{
  sub_10000F7A0(&v7.__pn_, "/var/db/timezone/localtime");
  std::__fs::filesystem::__read_symlink(&__to, &v7, 0);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  sub_10000F7A0(&__p, "/var/db/timezone/zoneinfo");
  sub_100002DF4(&__p, &__to, &v7);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v0 = v7.__pn_.__r_.__value_.__l.__size_ == 0;
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  else
  {
    v0 = SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) == 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v0)
  {
    sub_10000F7A0(&__p, "/usr/share/zoneinfo");
    sub_100002DF4(&__p, &__to, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]);
    if ((v7.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v7.__pn_.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_10000F7A0(&v5, "/var/db/timezone/zoneinfo");
      sub_10000161C(&v7, &v5, &__p);
      sub_100010354(&__to, &__p, &v5, &v9);
      if (*v9 >= 0)
      {
        p_to = &__to;
      }

      else
      {
        p_to = __to.__pn_.__r_.__value_.__r.__words[0];
      }

      warn("Correcting localtime link to %s", p_to);
      std::__fs::filesystem::__status(&__to, 0);
      if (__p.__r_.__value_.__s.__data_[0] != 255 && __p.__r_.__value_.__s.__data_[0])
      {
        remove("/var/db/timezone/localtime", v3);
        sub_10000F7A0(&__p, "/var/db/timezone/localtime");
        std::__fs::filesystem::__create_symlink(&__to, &__p, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v7.__pn_.__r_.__value_.__l.__data_);
        }

        goto LABEL_9;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "localtime_link_bad_zone");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "localtime_link_invalid");
    }
  }

LABEL_9:
  if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__to.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1000038F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_10000393C(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = open(a1, 0x1000000);
  if (result != -1)
  {
    v2 = result;
    fcntl(result, 64, 4);

    return close(v2);
  }

  return result;
}

void sub_1000039B8()
{
  sub_10000F7A0(&__p, "/var/db/timezone/");
  sub_10000393C(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000F7A0(&__p, "/var/db/timezone/tz/");
  sub_10000393C(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100003A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003A54()
{
  sub_10000F7A0(&__new_symlink.__pn_, "/var/db/timezone/icutz");
  sub_10000F7A0(&v1.__pn_, "/var/db/icutz");
  std::__fs::filesystem::__status(&v1, 0);
  if (__to.__pn_.__r_.__value_.__s.__data_[0] && __to.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::__status(&__new_symlink, 0);
  }

  std::__fs::filesystem::__status(&v1, 0);
  if (__to.__pn_.__r_.__value_.__s.__data_[0] && __to.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::__remove(&v1, 0);
  }

  if (SHIBYTE(v1.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__new_symlink.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__new_symlink.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_100003B5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  warn("Could not migrate /var/db/icutz to /var/db/timezone/icutz");
  __cxa_end_catch();
  JUMPOUT(0x100003B00);
}

void sub_100003B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(a1);
}

void start()
{
  v0 = setiopolicy_np(9, 0, 1);
  if (v0)
  {
    warn("setiopolicy IOPOL_TYPE_VFS_ALLOW_LOW_SPACE_WRITES returned error code %d", v0);
  }

  sub_1000039B8();
  sub_100003A54();
  remove("/var/db/icu", v1);
  sub_1000026F0(v2);
}

void sub_1000041C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    std::ios::~ios();
    sub_100003228(&a22);
    sub_100003228(&a36);
    if (a55 < 0)
    {
      operator delete(a50);
    }

    if (a61 < 0)
    {
      operator delete(a56);
    }

    sub_100003228(&a62);
    __cxa_begin_catch(a1);
    warn("Unable to locate data; resetting to system partition");
    sub_100003160();
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10000441C(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000045A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000045DC(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_10000463C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1000046C0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000471C(exception, a1);
}

std::logic_error *sub_10000471C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100004750()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_100004784(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000046A8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100004828(std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  if (((1 << a1[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
  {
    std::__fs::filesystem::__status(a1, __ec);
    LOBYTE(v4) = v7;
  }

  else
  {
    v4 = a1[3].__pn_.__r_.__value_.__s.__data_[0];
    if (__ec)
    {
      if ((v4 - 255) > 0xFFFFFF01)
      {
        __ec->__val_ = 0;
        __ec->__cat_ = std::system_category();
      }

      else
      {
        v5 = std::generic_category();
        *&__ec->__val_ = 2;
        __ec->__cat_ = v5;
        LOBYTE(v4) = a1[3].__pn_.__r_.__value_.__s.__data_[0];
      }
    }
  }

  return v4;
}

std::__fs::filesystem::file_status sub_1000048C4@<X0>(std::__fs::filesystem::path *a1@<X0>, std::error_code *a2@<X1>, uint64_t a3@<X8>)
{
  if (((1 << a1[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x57) != 0)
  {

    return std::__fs::filesystem::__status(a1, a2);
  }

  else
  {
    result = sub_100004828(a1, a2);
    v6 = HIDWORD(a1[2].__pn_.__r_.__value_.__r.__words[2]);
    *a3 = result.__ft_;
    *(a3 + 4) = v6;
  }

  return result;
}

void sub_100004938(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000498C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000498C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000463C(v4);
    }
  }

  a1[1] = v2;
}

void sub_1000049F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100004750();
}

void **sub_100004A38(void **a1)
{
  sub_100004A6C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100004A6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_10000463C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_100004AC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void sub_100004B88(std::locale *a1, const char *a2, int a3)
{
  v5 = sub_100004C20(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  strlen(a2);
  sub_100004C80();
}

void sub_100004C00(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_10000463C(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_100004C20(std::locale *a1)
{
  v2 = std::locale::locale(a1);
  a1[1].__locale_ = std::locale::use_facet(v2, &std::ctype<char>::id);
  a1[2].__locale_ = std::locale::use_facet(a1, &std::collate<char>::id);
  return a1;
}

void sub_100004E74()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_100004F14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_1000059C0(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_1000059C0(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_1000058C0();
  }

  return v7;
}

unsigned __int8 *sub_100005084(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_1000061C4();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_10000CCB0(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_100006248();
      }
    }

    if (v3 != a3)
    {
      sub_10000CC58();
    }
  }

  return v3;
}

unsigned __int8 *sub_100005138(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_10000D368(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_10000CC58();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_10000D368(a1, result + 1, a3) != result + 1)
    {
      sub_1000058C0();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_1000051D8(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_100005084(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_100005084(a1, v8, v10);
      sub_1000058C0();
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_100005348(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_100005138(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_100005138(a1, v8, v10);
      sub_1000058C0();
    }

    operator new();
  }

  return v8;
}

void sub_1000054B8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_1000055A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000103C4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000055C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000055F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100005628(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100005668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_1000056BC(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100005728(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1000057B4(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1000057C8(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100005834(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned __int8 *sub_1000059C0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_100005A68(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_100005C78(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_100005EC0(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_100005A68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v14 = a2[1];
          if (v14 == 66 || v14 == 98)
          {
            sub_1000062CC();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_1000061C4();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_100006248();
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_100004C20(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_100004C80(v16, a2 + 3, a3);
            v15 = *(a1 + 28);
            sub_100006360();
          }

          if (v11 == 61)
          {
            sub_100004C20(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_100004C80(v16, a2 + 3, a3);
            v12 = *(a1 + 28);
            sub_100006360();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_100005C78(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_100007F70();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = (a1 + 36);
        ++*(a1 + 36);
        v9 = sub_100004F14(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_100007E68(a1);
      v11 = *(a1 + 28);
      v8 = (a1 + 36);
      ++*(a1 + 36);
      v12 = sub_100004F14(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_100007EF0(a1);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_100006400();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_100007D4C(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_100007FC8(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_100007CA4(a1, a2, a3);
}

unsigned __int8 *sub_100005EC0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = *(a1 + 24) & 0x1F0;
  v6 = *a2;
  if (v6 > 0x3E)
  {
    if (v6 == 63)
    {
      v14 = a2 + 1;
      if (v5)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == a3;
      }

      if (!v15)
      {
        *v14;
      }
    }

    else
    {
      if (v6 != 123)
      {
        return a2;
      }

      v8 = a2 + 1;
      v9 = sub_10000C7EC(a1, a2 + 1, a3, &v21);
      if (v9 == v8)
      {
        goto LABEL_47;
      }

      if (v9 == a3)
      {
        goto LABEL_48;
      }

      v10 = *v9;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v9 + 1;
          if (!v5 && v11 != a3)
          {
            *v11;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_10000C888();
      }

      v16 = v9 + 1;
      if (v9 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v16 == 125)
      {
        v17 = v9 + 2;
        if (!v5 && v17 != a3)
        {
          *v17;
        }

        goto LABEL_37;
      }

      v20 = -1;
      v19 = sub_10000C7EC(a1, v16, a3, &v20);
      if (v19 == v16 || v19 == a3 || *v19 != 125)
      {
LABEL_48:
        sub_10000C8E0();
      }

      if (v20 < v21)
      {
        goto LABEL_47;
      }

      if (!v5 && v19 + 1 != a3)
      {
        v13 = v19[1] == 63;
      }
    }

LABEL_37:
    sub_10000C65C();
  }

  if (v6 == 42)
  {
    v12 = a2 + 1;
    if (v5)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == a3;
    }

    if (!v13)
    {
      *v12;
    }

    goto LABEL_37;
  }

  if (v6 == 43)
  {
    v7 = a2 + 1;
    if (!v5 && v7 != a3)
    {
      *v7;
    }

    goto LABEL_37;
  }

  return a2;
}

void sub_100006400()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_100006458(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000064C4(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100006550(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_1000065B8(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100006624(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1000066B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_100006704(std::locale *a1)
{
  a1->__locale_ = off_1000145E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100006790(std::locale *a1)
{
  a1->__locale_ = off_1000145E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10000683C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_100006950(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_100014630;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_1000069E0(std::locale *a1)
{
  a1->__locale_ = off_100014630;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_10000463C(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_100006A7C(std::locale *a1)
{
  a1->__locale_ = off_100014630;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_10000463C(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_100006B38(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_1000070E0(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_100006D34(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:
  v20 = v10;
  operator delete(v10);
}

void sub_100006CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100006CC0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_1000070E0(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_100006D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_1000072E8(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_1000073C4((v13 - 64), *(a1 + 28), &v40);
  sub_100007400((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_100007430();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_100007AF0(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_100007B70(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_1000072E8(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_100007488();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_100007764((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_100007C20(v36);
  return v24;
}

void sub_100007088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_100007380(&a11);
  a11 = v16 - 112;
  sub_100007C20(&a11);
  _Unwind_Resume(a1);
}

char *sub_1000070E0(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_100007244(a1, v9);
    }

    sub_1000049D8();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_100007244(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100007290(a1, a2);
  }

  sub_1000049D8();
}

void sub_100007290(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100004750();
}

uint64_t sub_1000072E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000074E0(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_100007380(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000073C4(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_10000780C(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_100007400(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_100007994(a1, a2 - v2);
  }
}

void sub_100007430()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_100007488()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

uint64_t sub_1000074E0(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000049D8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100007658(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_1000076B0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000077BC(&v16);
  return v15;
}

void sub_100007644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000077BC(va);
  _Unwind_Resume(a1);
}

void sub_100007658(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100004750();
}

void sub_1000076B0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_100007764(v5);
      v5 += 12;
    }
  }
}

void sub_100007764(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_1000077BC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_100007764((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000780C(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000049D8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100007290(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_100007994(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1000049D8();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100007AA8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_100007AA8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100004750();
}

uint64_t sub_100007AF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100007244(result, a4);
  }

  return result;
}

void sub_100007B54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100007B70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100007BE4(result, a4);
  }

  return result;
}

void sub_100007BC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007BE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100007AA8(a1, a2);
  }

  sub_1000049D8();
}

void sub_100007C20(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_100007764(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_100007CA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_100008130();
    }

    v7 = sub_100008188(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_100008240(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_100008310(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_100007D4C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_1000094F8();
    }

    sub_10000A7B8();
  }

  return a2;
}

uint64_t sub_100007E68(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_100007EF0(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_100007F70()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_100007FC8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_10000870C(a1);
    }
  }

  return a2;
}

void *sub_100008038(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000080A4(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_100008130()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_100008188(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_10000870C(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_1000088A4(a1);
        }
      }

LABEL_13:
      sub_10000884C();
    }
  }

  return a2;
}

unsigned __int8 *sub_100008240(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_1000094F8();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_1000094F8();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_1000094F8();
  }

  return a2;
}

unsigned __int8 *sub_100008310(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v14 + v13 + 16 * (v12 + v6 + v11);
            if (!a4)
            {
              sub_10000870C(a1);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_100008130();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        if ((v5 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return a2 + 1;
        }

LABEL_77:
        sub_10000870C(a1);
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 11;
    }

LABEL_90:
    *a4 = v16;
    return a2 + 1;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_10000870C(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_10000870C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_10000884C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_1000088A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_1000089D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1000146C0;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_100008A60(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_100014528;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_1000103C4(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_100008AA0(std::locale *a1)
{
  a1->__locale_ = off_1000146C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100008B2C(std::locale *a1)
{
  a1->__locale_ = off_1000146C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100008BD8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_100008C6C(std::locale *a1)
{
  a1->__locale_ = off_100014708;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100008CF8(std::locale *a1)
{
  a1->__locale_ = off_100014708;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100008DA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_100008DEC(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100008E58(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100008EE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_100008F2C(std::locale *a1)
{
  a1->__locale_ = off_100014798;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100008FB8(std::locale *a1)
{
  a1->__locale_ = off_100014798;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_100009064(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_100009180(std::locale *a1)
{
  a1->__locale_ = off_1000147E0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000920C(std::locale *a1)
{
  a1->__locale_ = off_1000147E0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1000092B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_100009344(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000093B0(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_10000943C(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_10000884C();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_10000958C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_10000A6C8(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_10000A6C8(a1 + 40, &v7);
}

uint64_t sub_100009628(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_100014870;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_100009768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_100009F48(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_100009FEC(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100009804(std::locale *a1)
{
  sub_10000A10C(a1);

  operator delete();
}

void sub_10000983C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v18 = 0;
    v19 = *(a1 + 168);
    goto LABEL_54;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_31;
  }

  v72 = *v4;
  v6 = v4[1];
  v73 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v72 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v73 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_10000A35C(a1 + 16, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    v19 = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v72 != *(v10 - 1) || v73 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_10000A1F4(a1 + 16, &v72, &v74);
    v12 = *(a1 + 88);
    if (*(a1 + 96) == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (sub_1000007A8((v12 + v13), &__p) > 0 || sub_1000007A8(&__p, (*(a1 + 88) + v13 + 24)) >= 1)
      {
        ++v14;
        v12 = *(a1 + 88);
        v13 += 48;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  sub_10000A5B8(a1 + 16, &v72, &v74, &__p);
  v36 = *(a1 + 136);
  v37 = v71;
  v38 = *(a1 + 144) - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      v44 = *(v36 + 23);
      v45 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(v36 + 8);
      }

      if (v40 == v44)
      {
        v46 = v45 >= 0 ? v36 : *v36;
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      v36 += 24;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      v66 = *(a1 + 164);
    }

    else
    {
      v63 = *(a1 + 160);
      v64 = *(*(a1 + 24) + 16);
      v65 = *(v64 + 4 * v72);
      if (((v65 & v63) != 0 || v72 == 95 && (v63 & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((*(v64 + 4 * v73) & v63) != 0 || (v63 & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      v66 = *(a1 + 164);
      if ((v65 & v66) != 0 || v72 == 95 && (v66 & 0x80) != 0)
      {
LABEL_147:
        v19 = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v73) & v66) == 0)
      {
        v19 = 1;
        if (v73 != 95 || (v66 & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    v19 = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  v19 = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = **(a2 + 16);
  v72 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v21) = (*(**(a1 + 24) + 40))(*(a1 + 24), v21);
    v72 = v21;
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 48) - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = *(a1 + 164);
  if (v25 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v21 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v21) & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v27 = *(a1 + 72);
    v28 = memchr(*(a1 + 64), v21, v27 - *(a1 + 64));
    v29 = !v28 || v28 == v27;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      v19 = 1;
      goto LABEL_54;
    }
  }

  v33 = *(a1 + 88);
  v34 = *(a1 + 96);
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (*(a1 + 170) == 1)
  {
    sub_10000A1F4(a1 + 16, &v72, &v73);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (sub_1000007A8((v33 + v47), &__p) > 0 || sub_1000007A8(&__p, (*(a1 + 88) + v47 + 24)) >= 1)
    {
      ++v48;
      v33 = *(a1 + 88);
      v47 += 48;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    v19 = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_119:
      v61 = *(a1 + 160);
      if ((v72 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v72) & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      v19 |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    sub_10000A5B8(a1 + 16, &v72, &v73, &__p);
    v51 = *(a1 + 136);
    v52 = *(a1 + 144) - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = *(v51 + 23);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v51 + 8);
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : *v51;
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        v51 += 24;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      v19 = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (*(a1 + 168) == (v19 & 1))
  {
    v31 = 0;
    v32 = -993;
  }

  else
  {
    *(a2 + 16) += v18;
    v31 = *(a1 + 8);
    v32 = -995;
  }

  *a2 = v32;
  *(a2 + 80) = v31;
}

void sub_100009F48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100009F9C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100009F9C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_100009FEC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_10000A070(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000A070(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000A0C8(uint64_t a1)
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

std::locale *sub_10000A10C(std::locale *a1)
{
  a1->__locale_ = off_100014870;
  v7 = a1 + 17;
  sub_100009F48(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_100009FEC(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100014528;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_10000A1F4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_10000A508(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000A2AC(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_10000A35C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000A508(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_10000A4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000A508(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000046A8();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_10000A5B8(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000A508(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A6C8(uint64_t a1, _BYTE *a2)
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
      sub_1000049D8();
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

void sub_10000A7B8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

unsigned __int8 *sub_10000A810(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_10000AE38(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = sub_10000ADA4(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_10000ABE8(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = sub_10000B070(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = sub_10000AF00(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          sub_10000B754(v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      sub_10000958C(v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = sub_10000AE38(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = sub_10000B070(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = sub_10000AF00(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_10000B354(v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_10000AB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000ABE8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_10000A7B8();
  }

  sub_10000B888(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_10000B830();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_10000BA34(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_10000BB44((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_10000B754(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_10000B830();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_10000958C(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_10000AD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000ADA4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_10000A7B8();
  }

  v9 = sub_10000BE68(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_10000BE10();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_10000AE38(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_10000A7B8();
  }

  sub_10000B888(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_10000B830();
  }

  return v6 + 2;
}

unsigned __int8 *sub_10000AF00(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_100008130();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_10000958C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_10000BF3C(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_100008310(a1, a2, a3, a4);
}

unsigned __int8 *sub_10000B070(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_100008130();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_10000870C(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_10000870C(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_10000B354(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_10000C138(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_10000C138(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_10000BFD8(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_10000C1F0();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_10000BFD8(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_10000B754(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_10000C2F0(v6, v7);
}

void sub_10000B830()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_10000B888(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000A508(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_10000BA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000BA34(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000A508(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000BB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000BB44(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10000BBE4(a1, a2);
  }

  else
  {
    sub_10000BB84(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_10000BB84(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100004784(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_10000BBE4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000049D8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10000BD24(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100004784(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_10000BD7C(&v17);
  return v11;
}

void sub_10000BD10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000BD7C(va);
  _Unwind_Resume(a1);
}

void sub_10000BD24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100004750();
}

uint64_t sub_10000BD7C(uint64_t a1)
{
  sub_10000BDB4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000BDB4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10000BE10()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_10000BE68(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_10000A508(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_10000BF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000BF3C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_10000A6C8(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_10000A6C8(a1 + 64, &v7);
}

uint64_t sub_10000BFD8(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000049D8();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_10000C248(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_10000C2A0(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_10000C138(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_10000A508(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000C1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C1F0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_10000C248(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100004750();
}

uint64_t sub_10000C2A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_10000A070(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000C2F0(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_1000049D8();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10000C3C0(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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
}

void sub_10000C3C0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100004750();
}

void *sub_10000C404(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10000C470(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10000C4FC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000C52C(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10000C598(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10000C624(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_10000C7EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_10000C888();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_10000C888()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_10000C8E0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void sub_10000C93C(void *a1)
{
  sub_10000CA90(a1);

  operator delete();
}

unsigned int *sub_10000C974(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_10000CB44(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_10000CA24(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_10000CB44(result, a3);
  }

  return result;
}

void sub_10000CA58(void *a1)
{
  sub_10000CA90(a1);

  operator delete();
}

void *sub_10000CA90(void *a1)
{
  *a1 = off_1000149A8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100014528;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_10000CB44(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10000CBAC(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_10000CBC4(void *a1)
{
  sub_10000CA90(a1);

  operator delete();
}

uint64_t sub_10000CC08(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_10000CC44(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_10000CC58()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_10000CCB0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_10000CD4C(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_10000CE50(a1, v8, a3);
}

_BYTE *sub_10000CD4C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_10000D014(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_100007E68(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_10000CCB0(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_100006400();
      }

      v7 = v12 + 2;
      sub_100007EF0(a1);
    }

    else
    {
      v13 = sub_10000D308(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_10000CE50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_10000C65C();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_10000C7EC(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_10000C7EC(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_10000C65C();
            }

LABEL_24:
            sub_10000C888();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_10000C65C();
        }
      }

      sub_10000C8E0();
    }
  }

  return a2;
}

_BYTE *sub_10000D014(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_10000870C(a1);
    }

    v8 = sub_10000D158(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_10000D158(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_100007D4C(a1, a2, a3);
}

_BYTE *sub_10000D158(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_10000870C(a1);
    }
  }

  return a2;
}

void *sub_10000D1D0(void *a1)
{
  *a1 = off_100014528;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10000D23C(void *a1)
{
  *a1 = off_100014528;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10000D2C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_10000D308(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1000088A4(a1);
    }

    sub_10000884C();
  }

  return 0;
}

unsigned __int8 *sub_10000D368(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_10000D3C8(a1, a2, a3);
  if (v6 == a2)
  {
    sub_10000CC58();
  }

  do
  {
    v7 = v6;
    v6 = sub_10000D3C8(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_10000D3C8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_10000D50C(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_100006248();
      case '(':
        sub_100007E68(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_100005138(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_100006400();
        }

        sub_100007EF0(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_1000061C4();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_100005EC0(a1, v9, a3);
}

unsigned __int8 *sub_10000D50C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_10000D600(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_10000D68C(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_100007D4C(a1, a2, a3);
}

unsigned __int8 *sub_10000D600(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_10000870C(a1);
  }

  return a2;
}

unsigned __int8 *sub_10000D68C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_10000870C(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_10000D308(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_10000B070(a1, v4, a3, 0);
}

uint64_t sub_10000D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = sub_10000D860(a4, a1, a2, __p, a5 | 0x1040u);
  sub_10000DA2C(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_10000D844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_100006CC0(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_10000DBB0(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_1000070E0(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_10000DBB0(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_1000070E0(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_1000070E0(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_10000DBB0(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_10000DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_10000F5E8(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_10000DBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_100006D34(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_10000E11C(a1, a2, a3, a4, a5, a6);
  }

  return sub_10000DBD0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_10000E5FC(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_100007400((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_100007430();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_10000E788(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_10000E700(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_100007764(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_10000E700(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_100007AF0(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_100007B70(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_10000E5FC(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_100007488();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_10000F188(&v59);
  return v49;
}

uint64_t sub_10000E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_1000072E8(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_1000073C4(v13 - 8, *(a1 + 28), &v48);
  sub_100007400(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_100007430();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_100007AF0(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_100007B70(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_1000072E8(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_100007488();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_100007764(v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_10000F338(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_10000F4C4(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_100007764(v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_100007764(v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_100007C20(v50);
  return v41;
}

void sub_10000E59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100007380(&a11);
  sub_100007380(&a27);
  a27 = v27 - 120;
  sub_100007C20(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_10000E5FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10000E87C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_10000E700(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_100007764((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_10000EEC0(a1, 1);
}

int64x2_t sub_10000E788(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_10000EF38(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_100010950);
  a1[2] = result;
  return result;
}

void *sub_10000E87C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    sub_10000EE78(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10000EA50(a1, &v10);
}

void sub_10000EA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10000EA50(void *result, void *a2)
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

      sub_10000EE78(result, v11);
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

const void **sub_10000EB58(const void **result, void *a2)
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

      sub_10000EE78(result, v9);
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

void *sub_10000EC64(void *result, void *a2)
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

      sub_10000EE78(result[4], v11);
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

const void **sub_10000ED6C(const void **result, void *a2)
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

      sub_10000EE78(result[4], v9);
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

void sub_10000EE78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100004750();
}

uint64_t sub_10000EEC0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

const void **sub_10000EF38(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_10000EE78(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10000EB58(a1, v11);
}

void sub_10000F13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000F188(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_100007764(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_10000F2E8(a1);
}

uint64_t sub_10000F2E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_10000F338(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_100007244(a1, v11);
    }

    sub_1000049D8();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_10000F4C4(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100007BE4(a1, v10);
    }

    sub_1000049D8();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_10000F5E8(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10000F624(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_10000F624(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000049D8();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100007290(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

std::string *sub_10000F7A0(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  sub_10000F7FC(this, a2, v3);
  return this;
}