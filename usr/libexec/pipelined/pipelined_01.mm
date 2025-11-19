void sub_10001530C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, atomic_uint *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_10045B140 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      sub_100016DC8(&a19);
      __cxa_end_catch();
      JUMPOUT(0x100015224);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1000152FCLL);
}

void sub_1000153F4(void *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  JUMPOUT(0x100015304);
}

void sub_100015408(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  memset(&v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  while (1)
  {
    *v20 = 0;
    *__error() = 0;
    if (sysconf(91) < 0)
    {
      *__error() = 0;
      v8 = readdir(v5);
      *v20 = v8;
      if (v8)
      {
LABEL_14:
        sub_100014C1C(&v25, v8->d_name);
        memset(&__p, 0, sizeof(__p));
        v26 = 0;
        v27 = 0;
        goto LABEL_15;
      }

      v7 = *__error();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 56);
      if (!v6)
      {
        v14 = sub_100016B44();
        v15 = malloc(v14 + 25);
        *(v4 + 56) = v15;
        if (!v15)
        {
          v7 = 12;
LABEL_31:
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = v7;
          __p.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          __p.__r_.__value_.__r.__words[2] = v9;
          goto LABEL_9;
        }

        v6 = v15;
        bzero(v15, v14 + 25);
      }

      v7 = readdir_r(v5, v6, v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    v8 = *v20;
    if (*v20)
    {
      goto LABEL_14;
    }

    sub_100014DC8((v4 + 48), (v4 + 56), &__p);
    LODWORD(v7) = __p.__r_.__value_.__l.__data_;
    v9 = __p.__r_.__value_.__r.__words[2];
LABEL_9:
    v26 = *(__p.__r_.__value_.__r.__words + 4);
    v27 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
    if ((v9 & 1) != 0 && (v9 != 1 || v7))
    {
      v23 = *a1;
      v18 = v23;
      *a1 = 0;
      sub_1000158BC((v18 + 8), &__p);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *v20 = v7;
        *&v20[4] = v26;
        v21 = v27;
        v22 = v9;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &__p, v20);
      }

      *a2 = v7;
      *(a2 + 4) = v26;
      *(a2 + 12) = v27;
      *(a2 + 16) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      p_p = &v23;
      goto LABEL_42;
    }

LABEL_15:
    v4 = *a1;
    v5 = *(*a1 + 48);
    if (!v5)
    {
      __p.__r_.__value_.__r.__words[0] = *a1;
      *a1 = 0;
      p_p = &__p;
LABEL_42:
      sub_100016DC8(p_p);
      goto LABEL_46;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v25;
    }

    else
    {
      v10 = v25.__r_.__value_.__r.__words[0];
    }

    if (v10->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v11 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
    v12 = v11->__r_.__value_.__s.__data_[1];
    if (v12)
    {
      if (v12 != 46)
      {
        break;
      }

      v13 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      if (v13->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v25;
  }

  sub_10001ADC4((v4 + 8));
  sub_10001A754(v4 + 8, &__p);
  *&v17 = 0xFFFF00000000;
  *(&v17 + 1) = 0xFFFF00000000;
  *(v4 + 32) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1000158A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000158BC@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_100007C48(a1);

  return sub_100016BF8(a2, v3, v3 + v4, v4);
}

atomic_uint **sub_100015910(void ***a1, uint64_t a2, int a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v16 = 0;
  sub_100014EFC(&v16, a2, a3, a4);
  if (!a4 || (v7 = a4[2], (v7 & 1) == 0) || v7 == 1 && !*a4)
  {
    v17 = 0;
    if (v16 && *(v16 + 6))
    {
      sub_100016DC8(&v17);
      v15 = 0;
      if (a4)
      {
        v8 = operator new(0x28uLL, &std::nothrow);
        if (v8)
        {
          *v8 = 0;
          v8[2] = 0;
          v8[3] = 0;
          v8[1] = 0;
          *(v8 + 8) = a3;
          v17 = v8;
          atomic_fetch_add(v8, 1u);
          v9 = v8;
          v10 = v15;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v17 = v10;
        v15 = v9;
        sub_100016E58(&v17);
        v12 = v15;
        if (!v15)
        {
          sub_100382554(a4);
          goto LABEL_18;
        }
      }

      else
      {
        v11 = operator new(0x28uLL);
        *v11 = 0;
        v11[2] = 0;
        v11[3] = 0;
        v11[1] = 0;
        *(v11 + 8) = a3;
        v17 = v11;
        atomic_fetch_add(v11, 1u);
        v17 = v15;
        v15 = v11;
        sub_100016E58(&v17);
        v12 = v15;
      }

      sub_100015B14(v12 + 1, &v16);
      v13 = *a1;
      *a1 = v15;
      v15 = v13;
LABEL_18:
      sub_100016E58(&v15);
      return sub_100016DC8(&v16);
    }

    sub_100016DC8(&v17);
  }

  return sub_100016DC8(&v16);
}

void sub_100015A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  sub_100016E58(va);
  sub_100016DC8(va1);
  _Unwind_Resume(a1);
}

void *sub_100015B14(void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_10000FC84();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v13[4] = result;
    if (v10)
    {
      v11 = sub_100016D40(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v7];
    v13[0] = v11;
    v13[1] = v12;
    *v12 = *a2;
    *a2 = 0;
    v13[2] = v12 + 8;
    v13[3] = &v11[8 * v10];
    sub_100016C98(v3, v13);
    v6 = *(v3 + 8);
    result = sub_100016D78(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_100015BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100016D78(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_100015C08(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = sub_100016DC8((i - 8));
    *(a1 + 16) = result;
    if (*(a1 + 8) == result)
    {
      break;
    }

    v4 = (i - 16);
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    sub_100015408(v4, v7);
    if ((v8 & 1) != 0 && (v8 != 1 || LODWORD(v7[0]) != 0))
    {
      continue;
    }

    v6 = 0;
    if (*v4 && *(*v4 + 48))
    {
      return sub_100016DC8(&v6);
    }

    sub_100016DC8(&v6);
  }

  return result;
}

double sub_100015CA8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) != 0)
  {
    *(v4 + 32) = v5 & 0xFFFFFFEF;
    goto LABEL_19;
  }

  if ((*(v4 + 32) & 6) == 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  sub_100014D5C((*(*(v4 + 16) - 8) + 8), &v20, &v18);
  v6 = v18;
  if ((v21 & 1) == 0 || (v11 = 1, v21 == 1) && !v20)
  {
    if ((*(v4 + 32) & 2) != 0 || v18 != 4)
    {
LABEL_6:
      sub_100014CD8(*(*(v4 + 16) - 8) + 8, &v20, &v23);
      if ((v21 & 1) != 0 && (v21 != 1 || v20))
      {
        *&v18 = 2;
        *(&v18 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
        if (sub_100016158(&v20, &v18) && v6 == 4 && (~*(v4 + 32) & 6) == 0)
        {
          v20 = 0uLL;
          v11 = 1;
          v21 = 0;
          goto LABEL_20;
        }
      }

      else if (v23 == 3)
      {
        v7 = *(v4 + 16);
        if ((((v7 - *(v4 + 8)) >> 3) - 1) >= 0x7FFFFFFF)
        {
          sub_100382658(&v20, &v21);
          v11 = 0;
          goto LABEL_20;
        }

        v8 = *(v7 - 8);
        v9 = *(v4 + 32);
        *&v18 = 0;
        sub_100014EFC(&v18, v8 + 8, v9, &v20);
        if ((v21 & 1) == 0 || v21 == 1 && !v20)
        {
          v22 = 0;
          if (v18 && *(v18 + 48))
          {
            sub_100016DC8(&v22);
            sub_100015B14((v4 + 8), &v18);
LABEL_17:
            sub_100016DC8(&v18);
            return result;
          }

          sub_100016DC8(&v22);
        }

        sub_100016DC8(&v18);
      }
    }

LABEL_19:
    v11 = 1;
  }

LABEL_20:
  if ((v21 & 1) != 0 && (v21 != 1 || v20))
  {
LABEL_44:
    if ((*(v4 + 32) & 8) != 0)
    {
      if ((v11 & 1) == 0)
      {
        v19 = 0;
        v18 = 0uLL;
        v16 = (*(v4 + 16) - 8);
        sub_100015408(v16, &v18);
        if ((v19 & 1) == 0 || v19 == 1 && !v18)
        {
          v23 = 0;
          if (*v16 && *(*v16 + 48))
          {
            sub_100016DC8(&v23);
LABEL_55:
            if (!a2)
            {
              exception = __cxa_allocate_exception(0x30uLL);
              v18 = v20;
              v19 = v21;
              boost::filesystem::filesystem_error::filesystem_error(exception, "filesystem::recursive_directory_iterator increment error", &v18);
            }

            result = *&v20;
            *a2 = v20;
            a2[2] = v21;
            return result;
          }

          sub_100016DC8(&v23);
        }
      }

      sub_100015C08(v4);
      if (*(v4 + 8) != *(v4 + 16))
      {
        goto LABEL_55;
      }
    }

    *&v18 = *a1;
    *a1 = 0;
    sub_100016E58(&v18);
    goto LABEL_55;
  }

  v13 = *(v4 + 8);
  v12 = *(v4 + 16);
  while (v13 != v12)
  {
    v14 = v12 - 1;
    sub_100015408(v12 - 1, &v20);
    if ((v21 & 1) != 0 && (v21 != 1 || v20 != 0))
    {
      goto LABEL_44;
    }

    *&v18 = 0;
    if (*v14 && *(*v14 + 6))
    {
      goto LABEL_17;
    }

    sub_100016DC8(&v18);
    v12 = sub_100016DC8((*(v4 + 16) - 8));
    *(v4 + 16) = v12;
    v13 = *(v4 + 8);
  }

  *&v18 = *a1;
  *a1 = 0;
  sub_100016E58(&v18);
  return result;
}

void sub_10001603C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (***a13)(), atomic_uint *a14)
{
  sub_100016DC8(&a9);
  if (a2 == 2)
  {
    sub_1003826E0(a1, &a9);
    a12 = 12;
    a13 = &boost::system::detail::generic_cat_holder<void>::instance;
    a14 = a9;
    __cxa_end_catch();
    JUMPOUT(0x100015DC8);
  }

  sub_10000D388(a1);
}

void *sub_1000160A4@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_100014A08(a2, v4);
}

const char *sub_1000160F0(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_100016158(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[2];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_1000162CC(a1);
      v7 = v6;
      v16[0] = v5;
      v16[1] = v6;
      v14 = sub_1000163F4(a2);
      v15 = v8;
      if (((*(*v7 + 32))(v7, v5, &v14) & 1) == 0)
      {
        return (*(*v15 + 40))(v15, v16, v14);
      }

      return 1;
    }

    v10 = a1[1];
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if (((*v10)[2])(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = *a2;
  v13 = (*v11)[3];

  return v13();
}

unint64_t sub_1000162CC(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      v2 = a1[1];
      v4 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v3) = *a1;
      v5 = a1[1];
      v6 = *(v5 + 8);
      if (v6 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v6 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v5 + 16), memory_order_acquire))
      {
        v7 = operator new(0x10uLL);
        v8 = 0;
        *v7 = &off_100432508;
        v7[1] = v5;
        atomic_compare_exchange_strong((v5 + 16), &v8, v7);
        if (v8)
        {
          (*(*v7 + 8))(v7);
          v4 = 0;
          return v4 | v3;
        }
      }

      v4 = 0;
    }
  }

  else
  {
    std::system_category();
    v4 = 0;
    LODWORD(v3) = 0;
  }

  return v4 | v3;
}

uint64_t sub_1000163F4(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = &off_100432508;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void sub_1000164E4(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

uint64_t sub_100016534(uint64_t a1)
{
  v3[0] = (*(**(a1 + 8) + 8))(*(a1 + 8));
  v3[1] = v1;
  return sub_1000163F4(v3);
}

uint64_t sub_100016588(void *a1, uint64_t a2, int *a3)
{
  v6 = *(a3 + 1);
  if (v6 == a1)
  {
    v8 = a1[1];
    v18 = *a3;
    v19 = v8;
    return ((*v8)[2])(v8, a2, &v18);
  }

  explicit = std::generic_category();
  if (v6 == explicit)
  {
    goto LABEL_13;
  }

  if (qword_10045B140 != 0xB2AB117A257EDFD0)
  {
    if (qword_10045B140 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_10045B148, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = &off_100432508;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_10045B148, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (v6 == explicit)
  {
LABEL_13:
    v18 = *a3;
    v19 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  v10 = *(a3 + 1);
  v11 = **v10;
  if (v12)
  {
    v13 = v12[1];
    v18 = *a3;
    v19 = v13;
LABEL_14:
    v8 = a1[1];
    return ((*v8)[2])(v8, a2, &v18);
  }

  v15 = (*(*a1 + 24))(a1, a2);
  return *(a3 + 1) == v16 && *a3 == v15;
}

uint64_t sub_10001678C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  if (v6 == a1)
  {
    v10 = *a2;
    v11 = *(a1 + 8);
    v32 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = v10 != 0;
      v13 = v11;
    }

    else
    {
      v12 = ((*v11)[6])(v11, v10);
      v13 = *(a1 + 8);
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v32) = v10;
    v33 = v11;
    v34 = v15;
    return ((*v13)[3])(v13, &v32, a3);
  }

  explicit = std::generic_category();
  v8 = qword_10045B140;
  if (v6 == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_10045B140 != 0xB2AB117A257EDFD0)
  {
    if (qword_10045B140 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_10045B148, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = &off_100432508;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_10045B148, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (v6 == explicit)
  {
    v8 = qword_10045B140;
LABEL_20:
    v23 = *a2;
    v32 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v24 = v23 != 0;
    }

    else
    {
      v24 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v23);
    }

    v25 = 2;
    if (v24)
    {
      v25 = 3;
    }

    LODWORD(v32) = v23;
    v33 = &boost::system::detail::generic_cat_holder<void>::instance;
    v34 = v25;
    goto LABEL_36;
  }

  v17 = *(a2 + 1);
  v18 = **v17;
  if (v19)
  {
    v20 = *a2;
    v21 = v19[1];
    v32 = 0;
    if (v21[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = ((*v21)[6])(v21, v20);
    }

    v31 = 2;
    if (v22)
    {
      v31 = 3;
    }

    LODWORD(v32) = v20;
    v33 = v21;
    v34 = v31;
LABEL_36:
    v13 = *(a1 + 8);
    return ((*v13)[3])(v13, &v32, a3);
  }

  v26 = *(a1 + 8);
  v27 = v26 == &boost::system::detail::generic_cat_holder<void>::instance;
  v28 = v26[1] == qword_10045B140;
  if (!qword_10045B140)
  {
    v28 = v27;
  }

  if (!v28)
  {
    return 0;
  }

  v29 = *(*v9 + 40);

  return v29(v9, a2, a3);
}

uint64_t sub_100016B44()
{
  if ((atomic_load_explicit(&qword_10045C5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045C5B0))
  {
    qword_10045C5A8 = sub_100016BB8();
    __cxa_guard_release(&qword_10045C5B0);
  }

  return qword_10045C5A8;
}

uint64_t sub_100016BB8()
{
  *__error() = 0;
  v0 = pathconf("/", 5);
  if (v0 <= 0x400)
  {
    v1 = 1024;
  }

  else
  {
    v1 = v0;
  }

  if (v0 >= 0)
  {
    return v1;
  }

  else
  {
    return 1024;
  }
}

void *sub_100016BF8(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

atomic_uint **sub_100016C98(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_100016DC8(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void *sub_100016D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_10000D444();
  }

  return operator new(8 * a2);
}

uint64_t sub_100016D78(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100016DC8((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **sub_100016DC8(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_100016E0C(v2);
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100016E0C(uint64_t a1)
{
  sub_100014DC8((a1 + 48), (a1 + 56), v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void ***sub_100016E58(void ***a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v4 = v2 + 1;
    sub_100016EB4(&v4);
    operator delete(v2);
  }

  return a1;
}

void sub_100016EB4(void ***a1)
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
        v4 = sub_100016DC8(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100016F50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  sub_10001B06C(a1);
  if (v8)
  {
    if (*(a1 + 23) < 0)
    {
      v9 = *a1;
      v10 = *(a1 + 8);

      sub_100003228(a4, v9, v10);
    }

    else
    {
      *a4 = *a1;
      *(a4 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100003228(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  sub_10001B06C(a2);
  if (v11)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    sub_100018AFC(0, &v22);
    sub_100016F50(&__p, a2, &v22, 0);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v23 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  sub_100018AFC(a3, &__p);
  v13 = a3[2];
  if ((v13 & 1) != 0 && (v13 != 1 || *a3))
  {
    memset(&v22, 0, sizeof(v22));
  }

  else
  {
    sub_100016F50(&v22, a2, &__p, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v23 = v22;
  v21 = a3[2];
  if ((v21 & 1) == 0 || v21 == 1 && !*a3)
  {
LABEL_13:
    v12 = *(a1 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 8);
    }

    if (v12)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (sub_10001AFD4(a1))
      {
        sub_100017334(a1, &__p);
      }

      else
      {
        sub_100017334(&v23, &__p);
      }

      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = __p;
      sub_10001B06C(a1);
      if (v14)
      {
        sub_100017388(a1, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, p_p, size);
      }

      else
      {
        sub_100017388(&v23, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &__p;
        }

        else
        {
          v17 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, v17, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_1000173DC(&v23, &__p);
        sub_10001A754(a4, &__p);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_1000173DC(a1, &__p);
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      if (v19)
      {
        sub_10001A754(a4, &__p);
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v20 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a4 = v23;
      memset(&v23, 0, sizeof(v23));
    }

    goto LABEL_65;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_65:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_100017294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100017334@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_10001AFD4(a1);

  return sub_100016BF8(a2, v3, v3 + v4, v4);
}

void *sub_100017388@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_10001B06C(a1);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  return sub_100016BF8(a2, &v2[v4], &v2[v4 + v5], v5);
}

void *sub_1000173DC@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_10001B0C4(a1);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  return sub_100016BF8(a2, &v2[v4], &v2[v4 + v5], v5);
}

void sub_100017430(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, size_t a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v38, *a1, *(a1 + 8));
  }

  else
  {
    v38 = *a1;
  }

  sub_10001B06C(a1);
  if (!v8)
  {
    sub_100016F50(a1, a2, a3, &v32);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v38 = v32;
    if (a3)
    {
      v24 = a3[2];
      if ((v24 & 1) != 0 && (v24 != 1 || *a3))
      {
LABEL_107:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        goto LABEL_108;
      }
    }
  }

  memset(&v37, 0, sizeof(v37));
  sub_100002F5C(&v38, &v37, &v36);
  if (v36 == 1)
  {
    if (qword_10045B140 >> 1 == 0x595588BD12BF6FE8 || (v9 = 2, (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 2)))
    {
      v9 = 3;
    }

    v37.__r_.__value_.__r.__words[0] = 2;
    v37.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v37.__r_.__value_.__r.__words[2] = v9;
    goto LABEL_105;
  }

  if ((v37.__r_.__value_.__s.__data_[16] & 1) != 0 && (v37.__r_.__value_.__r.__words[2] != 1 || LODWORD(v37.__r_.__value_.__l.__data_)))
  {
    goto LABEL_105;
  }

  sub_100017B1C(&v38, &__p);
  v10 = sub_10001B398();
  v11 = sub_10001B504();
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v12 = 40;
  while (2)
  {
    sub_10001AAD4(&v38, &v32);
    sub_10001ABEC(&v38, &v28);
    while (1)
    {
      if (v33 == v30 && v34 == v31)
      {
        v21 = 6;
        goto LABEL_77;
      }

      if (!sub_10001AC08(&v32, v10))
      {
        goto LABEL_75;
      }

      if (!sub_10001AC08(&v32, v11))
      {
        if (sub_10001AC08(a4, &__p))
        {
          sub_10001ADC4(a4);
        }

        goto LABEL_75;
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v32.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_32;
        }

        v14 = v32.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_32;
        }

        v14 = &v32;
      }

      if (v14->__r_.__value_.__s.__data_[0] == 47)
      {
        std::string::push_back(a4, 47);
        goto LABEL_75;
      }

LABEL_32:
      sub_10001A754(a4, &v32);
      sub_10001B06C(a4);
      if (v15)
      {
        sub_100017B70(a4, a3, &__str);
        if (a3)
        {
          v16 = a3[2];
          if ((v16 & 1) != 0 && (v16 != 1 || *a3))
          {
            v21 = 2;
            goto LABEL_77;
          }
        }

        if (LODWORD(__str.__r_.__value_.__l.__data_) == 4)
        {
          break;
        }
      }

LABEL_75:
      sub_10001C1C8(&v32);
    }

    if (v12)
    {
      sub_100017DEC(a4, a3, &__str);
      if (a3)
      {
        v17 = a3[2];
        if ((v17 & 1) != 0 && (v17 != 1 || *a3))
        {
          v20 = 0;
          v21 = 2;
          goto LABEL_72;
        }
      }

      sub_10001ADC4(a4);
      sub_10001B06C(&__str);
      if (v18)
      {
        while (1)
        {
          sub_10001C1C8(&v32);
          if (v33 == v30 && v34 == v31)
          {
            break;
          }

          if (sub_10001AC08(&v32, v10))
          {
            sub_10001A754(&__str, &v32);
          }
        }

        std::string::operator=(&v38, &__str);
        sub_100017B1C(&v38, &v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v20 = 0;
        __p = v26;
        goto LABEL_71;
      }

      sub_10001AE1C(&__str);
      if (sub_10001AC08(&__str, v10))
      {
        if (*(a4 + 23) < 0)
        {
          sub_100003228(&v26, *a4, *(a4 + 8));
        }

        else
        {
          v26 = *a4;
        }

        sub_10001A754(&v26, &__str);
        sub_10001C1C8(&v32);
        while (v33 != v30 || v34 != v31)
        {
          if (sub_10001AC08(&v32, v10))
          {
            sub_10001A754(&v26, &v32);
          }

          sub_10001C1C8(&v32);
        }

        std::string::operator=(&v38, &v26);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        v20 = 0;
LABEL_71:
        v21 = 15;
      }

      else
      {
        v21 = 8;
        v20 = 1;
      }

LABEL_72:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      --v12;
      if ((v20 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    if ((qword_10045B140 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 62))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v12 = 0;
    v37.__r_.__value_.__r.__words[0] = 62;
    v37.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v21 = 3;
    v37.__r_.__value_.__r.__words[2] = v23;
LABEL_77:
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v21 == 15)
    {
      if (*(a4 + 23) < 0)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }

      continue;
    }

    break;
  }

  if (v21 == 6)
  {
    v21 = 1;
  }

  else if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v21 == 3)
  {
LABEL_105:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v32 = v37;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::canonical", &v38, &v32);
    }

    *a3 = v37;
    goto LABEL_107;
  }

  if (v21 == 2)
  {
    goto LABEL_107;
  }

LABEL_108:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_100017A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(exception_object);
}

void *sub_100017B1C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_10001B00C(a1);

  return sub_100016BF8(a2, v3, v3 + v4, v4);
}

int *sub_100017B70@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = lstat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::symlink_status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 <= 4)
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_57;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    else
    {
      v9 = v23.st_mode & 0xFFF;
      if ((v23.st_mode - 4096) >> 12 > 8)
      {
        v10 = 4;
        if (v8 == 11)
        {
          v11 = 8;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 11)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 9;
      }

      else
      {
        v10 = 5;
        if (v8 == 7)
        {
          v11 = 2;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 7)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 5;
      }
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_57:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

void sub_100017DEC(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = readlink(v6, v22, 0x400uLL);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    v13 = *__error();
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v19 = 0;
      if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
      {
        v15 = v13 != 0;
      }

      else
      {
        v15 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v13);
      }

      v16 = 2;
      LODWORD(v19) = v13;
      if (v15)
      {
        v16 = 3;
      }

      v20 = &boost::system::detail::system_cat_holder<void>::instance;
      v21 = v16;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::read_symlink", a1, &v19);
    }

    sub_1000198C8(a2, v13, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else if (v7 >= 0x400)
  {
    for (i = 2048; ; i *= 2)
    {
      v9 = operator new[](i);
      v10 = readlink(v6, v9, i);
      if ((v10 & 0x8000000000000000) != 0)
      {
        operator delete[](v9);
        goto LABEL_24;
      }

      if (v10 < i)
      {
        break;
      }

      operator delete[](v9);
      if (i > 0x4000)
      {
        if (!a2)
        {
          v17 = __cxa_allocate_exception(0x30uLL);
          v19 = 0;
          if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, 63))
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          LODWORD(v19) = 63;
          v20 = &boost::system::detail::system_cat_holder<void>::instance;
          v21 = v18;
          boost::filesystem::filesystem_error::filesystem_error(v17, "boost::filesystem::read_symlink", a1, &v19);
        }

        if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, 63))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        *a2 = 63;
        a2[1] = &boost::system::detail::system_cat_holder<void>::instance;
        a2[2] = v12;
        return;
      }
    }

    sub_10001A658(a3, v9, &v9[v10], v10);
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    operator delete[](v9);
  }

  else
  {
    sub_10001A658(a3, v22, &v22[v7], v7);
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }
}

void sub_1000181B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000181FC(const char *a1, uint64_t a2, int a3, std::string *a4)
{
  v7 = a1;
  if ((a3 & 0x1600) != 0)
  {
    sub_100017B70(a1, a4, &v30);
  }

  else
  {
    sub_100002F5C(a1, a4, &v30);
  }

  if (a4)
  {
    v8 = a4->__r_.__value_.__r.__words[2];
    if ((v8 & 1) != 0 && (v8 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
    {
      return;
    }
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) <= 1)
  {
    v9 = 2;
    goto LABEL_14;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) == 2)
  {
    if ((a3 & 0x800) != 0)
    {
      return;
    }

    if ((a3 & 0x1000) != 0)
    {
      memset(&v30, 0, sizeof(v30));
      sub_10001B06C(v7);
      if (v12)
      {
        goto LABEL_132;
      }

      sub_100018AFC(a4, &v29);
      if (a4 && (v13 = a4->__r_.__value_.__r.__words[2], (v13 & 1) != 0) && (v13 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
      {
        v24 = 0;
      }

      else
      {
        sub_1000158BC(v7, &__p);
        sub_100016F50(&__p, &v29, a4, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (a4 && (v14 = a4->__r_.__value_.__r.__words[2], (v14 & 1) != 0) && (v14 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
        {
          v24 = 0;
        }

        else
        {
          sub_1000158BC(a2, &__p);
          sub_10001B06C(&__p);
          if (!v15)
          {
            sub_100016F50(&__p, &v29, a4, &v26);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v26;
            if (a4)
            {
              v25 = a4->__r_.__value_.__r.__words[2];
              if ((v25 & 1) != 0 && (v25 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                goto LABEL_120;
              }
            }
          }

          sub_100018C58(&v28, &__p, a4, &v26);
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          v30 = v26;
          if (a4 && (v16 = a4->__r_.__value_.__r.__words[2], (v16 & 1) != 0) && (v16 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
          {
LABEL_120:
            v24 = 0;
          }

          else
          {
            v17 = sub_10001B398();
            if (sub_10001AC08(&v30, v17))
            {
              sub_10001A40C(v7, &v26);
              sub_10001A754(&v30, &v26);
              if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v26.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              sub_10001A40C(v7, &v26);
              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v30.__r_.__value_.__l.__data_);
              }

              v30 = v26;
            }

            v24 = 1;
            v7 = &v30;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
LABEL_132:
        sub_100018E98(v7, a2, a4);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v30.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((a3 & 0x2000) != 0)
      {

        sub_100018F38(v7, a2, a4);
        return;
      }

      memset(&v30, 0, sizeof(v30));
      if ((a3 & 0x400) != 0)
      {
        sub_100017B70(a2, &v30, &v29);
      }

      else
      {
        sub_100002F5C(a2, &v30, &v29);
      }

      if (LODWORD(v29.__r_.__value_.__l.__data_) != 3)
      {
        if (LODWORD(v29.__r_.__value_.__l.__data_))
        {
          sub_100018FDC(v7, a2, a3, a4);
          return;
        }

        if (!a4)
        {
          goto LABEL_35;
        }

        goto LABEL_84;
      }

      sub_10001A40C(v7, &v28);
      sub_1000192E8(a2, &v28, &v29);
      sub_100018FDC(v7, &v29, a3, a4);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v28.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    return;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) == 3)
  {
    memset(&v30, 0, sizeof(v30));
    if ((a3 & 0x1000) != 0)
    {
      if (qword_10045B140 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 21))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v30.__r_.__value_.__r.__words[0] = 21;
      v30.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
      v30.__r_.__value_.__r.__words[2] = v10;
      if (!a4)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v29 = v30;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v7, a2, &v29);
LABEL_137:
      }

      goto LABEL_84;
    }

    if ((a3 & 0x400) != 0)
    {
      sub_100017B70(a2, &v30, &v29);
    }

    else
    {
      sub_100002F5C(a2, &v30, &v29);
    }

    if (LODWORD(v29.__r_.__value_.__l.__data_) == 1)
    {
      sub_100007D28(a2, v7, a4);
      if (a4)
      {
        v18 = a4->__r_.__value_.__r.__words[2];
        if ((v18 & 1) != 0 && (v18 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
        {
          return;
        }
      }
    }

    else if (!LODWORD(v29.__r_.__value_.__l.__data_))
    {
      if (!a4)
      {
LABEL_35:
        exception = __cxa_allocate_exception(0x30uLL);
        v29 = v30;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v7, a2, &v29);
        goto LABEL_137;
      }

LABEL_84:
      *a4 = v30;
      return;
    }

    if (!a3 || (a3 & 0x100) != 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      sub_100014EFC(&__p, v7, 0, a4);
      if (!a4 || (v19 = a4->__r_.__value_.__r.__words[2], (v19 & 1) == 0) || v19 == 1 && !LODWORD(a4->__r_.__value_.__l.__data_))
      {
        v26.__r_.__value_.__r.__words[0] = 0;
        v20 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          do
          {
            if (!v20 || !*(v20 + 48))
            {
              break;
            }

            sub_10001A40C((v20 + 8), &v28);
            if (*(a2 + 23) < 0)
            {
              sub_100003228(&v29, *a2, *(a2 + 8));
            }

            else
            {
              v29 = *a2;
            }

            sub_10001A754(&v29, &v28);
            sub_1000181FC(v20 + 8, &v29, a3 | 0x4000u, a4);
            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            if (a4)
            {
              v21 = a4->__r_.__value_.__r.__words[2];
              if ((v21 & 1) != 0 && (v21 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                break;
              }
            }

            sub_100015408(&__p, a4);
            if (a4)
            {
              v22 = a4->__r_.__value_.__r.__words[2];
              if ((v22 & 1) != 0 && (v22 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                break;
              }
            }

            v20 = __p.__r_.__value_.__r.__words[0];
          }

          while (__p.__r_.__value_.__r.__words[0] != v26.__r_.__value_.__r.__words[0]);
        }

        sub_100016DC8(&v26);
      }

      sub_100016DC8(&__p);
    }

    return;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) != 4)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x400) != 0)
  {
    return;
  }

  if ((a3 & 0x200) == 0)
  {
LABEL_12:
    v9 = 78;
LABEL_14:

    sub_1000142A8(v9, v7, a2, a4, "boost::filesystem::copy");
    return;
  }

  sub_100018A68(v7, a2, a4);
}

void sub_100018928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_100018A68(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100017DEC(a1, a3, &__p);
  if (!a3 || (v5 = a3[2], (v5 & 1) == 0) || v5 == 1 && !*a3)
  {
    sub_100018E98(&__p, a2, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100018AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100018AFC(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = getcwd(v9, 0x400uLL);
  if (v4)
  {
    sub_100014C1C(a2, v4);
    if (a1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }
  }

  else if (!sub_100019960(a1))
  {
    for (i = 2048; ; i *= 2)
    {
      v6 = operator new[](i);
      if (getcwd(v6, i))
      {
        break;
      }

      v7 = sub_100019960(a1);
      operator delete[](v6);
      if (v7)
      {
        return;
      }

      if (i > 0x4000)
      {
        sub_100013FD0(63, a1, "boost::filesystem::current_path");
        return;
      }
    }

    sub_100014C1C(a2, v6);
    if (a1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    operator delete[](v6);
  }
}

void sub_100018C20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100018C58(_BYTE *a1@<X0>, _BYTE *a2@<X1>, std::string *a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  memset(&v15, 0, sizeof(v15));
  memset(&__p, 0, sizeof(__p));
  sub_10001B06C(a1);
  if (v8)
  {
    sub_10001B06C(a2);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  sub_100018AFC(&v15, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v13;
  if ((v15.__r_.__value_.__s.__data_[16] & 1) == 0 || v15.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v15.__r_.__value_.__l.__data_))
  {
LABEL_10:
    sub_100019B68(a2, &__p, &v15, &v12);
    if ((v15.__r_.__value_.__s.__data_[16] & 1) != 0 && (v15.__r_.__value_.__r.__words[2] != 1 || LODWORD(v15.__r_.__value_.__l.__data_)))
    {
      sub_100382754(&v12);
    }

    else
    {
      sub_100019B68(a1, &__p, &v15, &v11);
      if ((v15.__r_.__value_.__s.__data_[16] & 1) == 0 || v15.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v15.__r_.__value_.__l.__data_))
      {
        sub_10001B734(&v11, &v12, a4);
        if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }

        goto LABEL_20;
      }

      sub_100382780(&v11, &v12);
    }
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13 = v15;
    boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::relative", a1, a2, &v13);
  }

  *a3 = v15;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
LABEL_20:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100018E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v30);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100018E98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = symlink(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    v7 = *__error();

    return sub_1000142A8(v7, v5, v4, a3, "boost::filesystem::create_symlink");
  }

  return result;
}

uint64_t sub_100018F38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = link(a1, a2);
  if (result && (result = *__error(), result))
  {

    return sub_1000142A8(result, v5, v4, a3, "boost::filesystem::create_hard_link");
  }

  else if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_100018FDC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v25 = -1;
  v26 = -1;
  while (1)
  {
    v8 = *(a1 + 23) >= 0 ? a1 : *a1;
    v9 = open(v8, 0x1000000);
    v26 = v9;
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    v10 = *__error();
    if (v10 != 4)
    {
      goto LABEL_33;
    }
  }

  if (fstat(v9, &v24))
  {
LABEL_60:
    v10 = *__error();
    goto LABEL_33;
  }

  st_mode = v24.st_mode;
  if ((v24.st_mode & 0xF000) != 0x8000)
  {
LABEL_61:
    v10 = 78;
    goto LABEL_33;
  }

  if ((a3 & 4) != 0)
  {
    while (1)
    {
      v12 = *(a2 + 23) >= 0 ? a2 : *a2;
      v13 = open(v12, 16777217, st_mode | 0x80u);
      v25 = v13;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v10 = *__error();
      if (v10 != 4)
      {
        if (v10 != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }
    }

    v18 = 1;
LABEL_37:
    if (fstat(v13, &v23))
    {
      goto LABEL_60;
    }

    v19 = v23.st_mode;
    if ((v23.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_61;
    }

    if (v24.st_dev != v23.st_dev || v24.st_ino != v23.st_ino)
    {
      if (v18)
      {
        if (v24.st_mtimespec.tv_sec < v23.st_mtimespec.tv_sec || v24.st_mtimespec.tv_sec == v23.st_mtimespec.tv_sec && v24.st_mtimespec.tv_nsec <= v23.st_mtimespec.tv_nsec)
        {
          goto LABEL_34;
        }

        if (ftruncate(v25, 0))
        {
          goto LABEL_60;
        }
      }

      v10 = sub_10001A464();
      if (v10)
      {
        goto LABEL_33;
      }

      if (v19 == st_mode || !fchmod(v25, st_mode))
      {
        if ((a3 & 0x18) != 0)
        {
          v20 = v25;
          if ((a3 & 0x10) != 0)
          {
            while (fcntl(v20, 51) < 0)
            {
              v10 = *__error();
              if (v10 != 4)
              {
LABEL_56:
                if (v10)
                {
                  goto LABEL_33;
                }

                break;
              }
            }
          }

          else
          {
            while (fcntl(v20, 51) < 0)
            {
              v10 = *__error();
              if (v10 != 4)
              {
                goto LABEL_56;
              }
            }
          }
        }

        v21 = close(v25);
        v25 = -1;
        if ((v21 & 0x80000000) == 0 || (v10 = *__error(), (v10 & 0xFFFFFFDF) == 4))
        {
          v17 = 1;
          goto LABEL_59;
        }

        goto LABEL_33;
      }

      goto LABEL_60;
    }

LABEL_32:
    v10 = 17;
LABEL_33:
    sub_1000142A8(v10, a1, a2, a4, "boost::filesystem::copy_file");
    goto LABEL_34;
  }

LABEL_19:
  if ((a3 & 4) != 0 || (a3 & 3) == 2)
  {
    v15 = 16778753;
  }

  else
  {
    v15 = 16780801;
  }

  do
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v13 = open(v16, v15, st_mode | 0x80u);
    v25 = v13;
    if ((v13 & 0x80000000) == 0)
    {
      v18 = 0;
      goto LABEL_37;
    }

    v10 = *__error();
  }

  while (v10 == 4);
  if (v10 != 17)
  {
    goto LABEL_33;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v17 = 0;
LABEL_59:
  sub_10001935C(&v25);
  sub_10001935C(&v26);
  return v17;
}

void sub_1000192B0(_Unwind_Exception *a1)
{
  sub_10001935C((v1 - 72));
  sub_10001935C((v1 - 68));
  _Unwind_Resume(a1);
}

void sub_1000192E8(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  sub_10001A754(a3, a2);
}

void sub_100019340(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10001935C(int *a1)
{
  v2 = *a1;
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return a1;
}

uint64_t sub_100019390(uint64_t a1, void *a2)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    sub_10001ABEC(a1, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v26, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v28;
    }

    v27 = v29;
    if (*(a1 + 23) < 0)
    {
      sub_100003228(&v25, *a1, *(a1 + 8));
    }

    else
    {
      v25 = *a1;
    }

    v6 = sub_10001B398();
    v7 = sub_10001B504();
    v23 = 0uLL;
    v24 = 0;
    sub_10001A40C(&v25, __p);
    while (1)
    {
      sub_10001B0C4(&v25);
      if (!v8)
      {
LABEL_28:
        v10 = 1;
        goto LABEL_29;
      }

      v9 = HIBYTE(v22);
      if (v22 < 0)
      {
        v9 = __p[1];
      }

      if (v9 && sub_10001AC08(__p, v6) && sub_10001AC08(__p, v7))
      {
        sub_100002F5C(&v25, &v23, &v20);
        if (v20 == 3)
        {
          goto LABEL_28;
        }

        if (!v20)
        {
          break;
        }
      }

      sub_10001C460(&v26);
      sub_10001ADC4(&v25);
      sub_10001A40C(&v25, &v18);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v18;
      v22 = v19;
    }

    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v18 = v23;
      v19 = v24;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::create_directories", a1, &v25, &v18);
    }

    v10 = 0;
    *a2 = v23;
    a2[2] = v24;
LABEL_29:
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
      if (!v10)
      {
LABEL_51:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        return v10 & 1;
      }
    }

    else if (!v10)
    {
      goto LABEL_51;
    }

    LOBYTE(v10) = 0;
    while (v27 != v29 || *(&v27 + 1) != *(&v29 + 1))
    {
      sub_10001A754(&v25, &v26);
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (sub_10001AC08(&v26, v6))
        {
          if (sub_10001AC08(&v26, v7))
          {
            LOBYTE(v10) = sub_100007D28(&v25, 0, &v23);
            if ((v24 & 1) != 0 && (v24 != 1 || v23))
            {
              if (!a2)
              {
                v16 = __cxa_allocate_exception(0x30uLL);
                *__p = v23;
                v22 = v24;
                boost::filesystem::filesystem_error::filesystem_error(v16, "boost::filesystem::create_directories", a1, &v25, __p);
              }

              LOBYTE(v10) = 0;
              *a2 = v23;
              a2[2] = v24;
              goto LABEL_51;
            }
          }
        }
      }

      sub_10001C1C8(&v26);
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    v14 = __cxa_allocate_exception(0x30uLL);
    v28.__r_.__value_.__r.__words[0] = 0;
    if ((qword_10045B140 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v28.__r_.__value_.__l.__data_) = 22;
    v28.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v28.__r_.__value_.__r.__words[2] = v15;
    boost::filesystem::filesystem_error::filesystem_error(v14, "boost::filesystem::create_directories", a1, &v28);
  }

  if ((qword_10045B140 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 22))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  LOBYTE(v10) = 0;
  *a2 = 22;
  a2[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a2[2] = v5;
  return v10 & 1;
}

void sub_100019814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000198C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    result = a2 != 0;
  }

  else
  {
    result = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a1 = v4;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = v7;
  return result;
}

BOOL sub_100019960(void *a1)
{
  v2 = *__error();
  if (v2 == 34)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    sub_100013FD0(v3, a1, "boost::filesystem::current_path");
  }

  else if (a1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return v3 != 0;
}

off_t sub_1000199C0(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5) < 0)
  {
    sub_1003827C0();
    return -1;
  }

  if ((v5.st_mode & 0xF000) != 0x8000)
  {
    sub_10001413C(78, v3, a2, "boost::filesystem::file_size");
    return -1;
  }

  return v5.st_size;
}

__darwin_time_t sub_100019A58(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_mtimespec.tv_sec;
  }

  sub_1003827F0();
  return 0x8000000000000000;
}

uint64_t sub_100019AC4(const char *a1, time_t a2, void *a3)
{
  v4 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v8) < 0)
  {
    return sub_1003827F0();
  }

  v7.actime = v8.st_atimespec.tv_sec;
  v7.modtime = a2;
  if (v4[23] >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  result = utime(v5, &v7);
  if ((result & 0x80000000) != 0)
  {
    return sub_1003827F0();
  }

  return result;
}

void sub_100019B68(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  p_p = a1;
  memset(&v24, 0, sizeof(v24));
  sub_10001ABEC(a1, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&v20, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v22;
  }

  v21 = v23;
  if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&__p, p_p->__r_.__value_.__l.__data_, p_p->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *p_p;
  }

  while (1)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_13;
    }

    sub_100002F5C(&__p, &v24, &v17);
    if (LODWORD(v17.__r_.__value_.__l.__data_) != 1)
    {
      break;
    }

    sub_10001ADC4(&__p);
    sub_10001C460(&v20);
  }

  if (LODWORD(v17.__r_.__value_.__l.__data_))
  {
LABEL_13:
    v9 = sub_10001B398();
    v10 = sub_10001B504();
    v11 = 0;
    memset(&v18, 0, sizeof(v18));
    while (v21 != v23 || *(&v21 + 1) != *(&v23 + 1))
    {
      sub_10001A754(&v18, &v20);
      v11 = v11 || !sub_10001AC08(&v20, v9) || !sub_10001AC08(&v20, v10);
      sub_10001C1C8(&v20);
    }

    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (!v13)
    {
      goto LABEL_37;
    }

    sub_100017430(&__p, a2, &v24, &v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v17;
    if ((v24.__r_.__value_.__s.__data_[16] & 1) != 0 && (v24.__r_.__value_.__r.__words[2] != 1 || LODWORD(v24.__r_.__value_.__l.__data_)))
    {
      if (!a3)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v17 = v24;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::weakly_canonical", &__p, &v17);
      }

      *a3 = v24;
    }

    else
    {
      v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v18.__r_.__value_.__l.__size_;
      }

      if (v14)
      {
        sub_10001A754(&__p, &v18);
        if (v11)
        {
          p_p = &__p;
LABEL_37:
          sub_10001BBD4(p_p, a4);
          goto LABEL_40;
        }
      }

      *a4 = __p;
      a4 = &__p;
    }

    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
LABEL_40:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (!a3)
  {
    v15 = __cxa_allocate_exception(0x30uLL);
    v18 = v24;
    boost::filesystem::filesystem_error::filesystem_error(v15, "boost::filesystem::weakly_canonical", &__p, &v18);
  }

  *a3 = v24;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_100019EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v41);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100019F68(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return sub_100019F78(a1, a2);
}

uint64_t sub_100019F78(uint64_t a1, void *a2)
{
  v22 = 0uLL;
  v23 = 0;
  sub_100017B70(a1, &v22, &v20);
  result = 0;
  v5 = v20;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v20 = v22;
        v21 = v23;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove_all", a1, &v20);
      }

      *a2 = v22;
      a2[2] = v23;
      return -1;
    }

    if (v20 == 3)
    {
      *&v22 = 0;
      sub_100014EFC(&v22, a1, 0, a2);
      if (a2)
      {
        v6 = a2[2];
        if ((v6 & 1) != 0 && (v6 != 1 || *a2))
        {
          sub_100016DC8(&v22);
          return -1;
        }
      }

      *&v20 = 0;
      v7 = v22;
      if (v22)
      {
        v8 = 0;
        v9 = 0;
        while (v7 && *(v7 + 48) || v9 && *(v9 + 48))
        {
          v8 += sub_100019F78(v7 + 8, a2);
          if (a2 && (v10 = a2[2], (v10 & 1) != 0) && (v10 != 1 || *a2) || (sub_100015408(&v22, a2), a2) && (v11 = a2[2], (v11 & 1) != 0) && (v11 != 1 || *a2))
          {
            v12 = 0;
            goto LABEL_29;
          }

          v9 = v20;
          v7 = v22;
          if (v22 == v20)
          {
            break;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v12 = 1;
LABEL_29:
      sub_100016DC8(&v20);
      sub_100016DC8(&v22);
      if ((v12 & 1) == 0)
      {
        return -1;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 1)
    {
      goto LABEL_39;
    }

    if (v5 == 3)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (rmdir(v13))
      {
LABEL_36:
        v14 = __error();
        v15 = 0;
        v16 = *v14;
        if (v16 == 2 || v16 == 20)
        {
LABEL_40:
          if (a2)
          {
LABEL_41:
            v17 = a2[2];
            if ((v17 & 1) != 0 && (v17 != 1 || *a2))
            {
              return -1;
            }
          }

          return v15 + v8;
        }

        sub_10001413C(v16, a1, a2, "boost::filesystem::remove");
LABEL_39:
        v15 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a1 + 23) >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      if (unlink(v18))
      {
        goto LABEL_36;
      }
    }

    v15 = 1;
    if (a2)
    {
      goto LABEL_41;
    }

    return v15 + v8;
  }

  return result;
}

void sub_10001A224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  rename(a1, a2, a3);
  if (v6 && (v7 = *__error(), v7))
  {

    sub_1000142A8(v7, v5, v4, a3, "boost::filesystem::rename");
  }

  else if (a3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_10001A2C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  v4 = getenv("TMPDIR");
  if (!v4)
  {
    v4 = getenv("TMP");
    if (!v4)
    {
      v4 = getenv("TEMP");
      if (!v4)
      {
        v4 = getenv("TEMPDIR");
      }
    }
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "/tmp";
  }

  sub_100014A08(__p, v5);
  v6 = HIBYTE(v10);
  if (v10 < 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  sub_100002F5C(__p, a1, &v8);
  if (!a1 || (v7 = a1[2], (v7 & 1) == 0) || v7 == 1 && !*a1)
  {
    if (v8 == 3)
    {
LABEL_18:
      *a2 = *__p;
      *(a2 + 16) = v10;
      return;
    }

LABEL_20:
    sub_10001413C(20, __p, a1, "boost::filesystem::temp_directory_path");
    goto LABEL_18;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10001A3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10001A40C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_10001B3A4(a1);
  v5 = v2[23];
  if (v5 < 0)
  {
    v6 = v2;
    v2 = *v2;
    v5 = *(v6 + 1);
  }

  return sub_100016BF8(a2, &v2[v5 - v4], &v2[v5], v4);
}

ssize_t sub_10001A464()
{
  v0 = __chkstk_darwin();
  v4 = v3;
  v5 = v0;
  if (v1 == -1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v1 + 1;
  }

  if (v6 <= v2)
  {
    v6 = v2;
  }

  if (v6 <= 0x2000)
  {
    v6 = 0x2000;
  }

  if (v6 >= 0x40000)
  {
    LODWORD(v6) = 0x40000;
  }

  v7 = (v6 - 1) | ((v6 - 1) >> 1) | (((v6 - 1) | ((v6 - 1) >> 1)) >> 2);
  v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
  v9 = (v8 | HIWORD(v8)) + 1;
  v10 = operator new[](v9, &std::nothrow);
  if (!v10)
  {
    return sub_10001A5A0(v5, v4, v14, 0x2000uLL);
  }

  v11 = v10;
  v12 = sub_10001A5A0(v5, v4, v10, v9);
  operator delete[](v11);
  return v12;
}

ssize_t sub_10001A5A0(int a1, int a2, char *a3, size_t a4)
{
  result = read(a1, a3, a4);
  if (result)
  {
    v9 = result;
    do
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        while (1)
        {
          v11 = write(a2, &a3[v10], v9 - v10);
          if (v11 < 0)
          {
            result = *__error();
            if (result != 4)
            {
              return result;
            }
          }

          else
          {
            v10 += v11;
          }

          if (v10 >= v9)
          {
            goto LABEL_12;
          }
        }
      }

      result = *__error();
      if (result != 4)
      {
        break;
      }

LABEL_12:
      result = read(a1, a3, a4);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_10001A658(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_10001A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10001413C(a1, v5, v4, a4);
}

int *sub_10001A73C()
{

  return __error();
}

void sub_10001A754(uint64_t a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2;
    if (a1 == a2)
    {
      if (v3 < 0)
      {
        sub_100003228(__n, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        *__n = *&a2->__r_.__value_.__l.__data_;
        v15 = a2->__r_.__value_.__r.__words[2];
      }

      sub_10001A754(a1, __n);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__n[0]);
      }
    }

    else
    {
      if (v3 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      __n[0] = 0;
      if (sub_100007BAC(v6, size, __n) < size)
      {
LABEL_25:
        std::string::operator=(a1, v5);
        return;
      }

      v16 = 0;
      v7 = *(a1 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v8 = a1;
      }

      sub_100007BAC(v8, v7, &v16);
      v9 = __n[0];
      if (__n[0])
      {
        if (__n[0] != v16)
        {
          goto LABEL_25;
        }

        v10 = a1;
        if (*(a1 + 23) < 0)
        {
          v10 = *a1;
        }

        v11 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
        v12 = v5->__r_.__value_.__r.__words[0];
        v13 = v11 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
        if (memcmp(v10, v13, __n[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v11) = *(&v5->__r_.__value_.__s + 23);
        v12 = v5->__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) != 0)
      {
        v5 = v12;
      }

      if (v5->__r_.__value_.__s.__data_[v9] != 47)
      {
        sub_1000031C8(a1);
      }

      std::string::append(a1, v5 + v9, size - v9);
    }
  }

  else if (sub_10001B3A4(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_10001A8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001A918(size_t a1, size_t a2)
{
  sub_10001AAD4(a1, &v11);
  memset(v10, 0, 24);
  v10[3] = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v10[4] = v4;
  sub_10001AAD4(a2, &__p);
  memset(v8, 0, 24);
  v8[3] = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v8[4] = v5;
  v6 = sub_10001A9D0(&v11, v10, &__p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t sub_10001A9D0(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((sub_10001BF38(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((sub_10001BF38(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      sub_10001BF70(a1);
      sub_10001BF70(a3);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

size_t sub_10001AAD4@<X0>(size_t result@<X0>, std::string *a2@<X8>)
{
  v2 = result;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2[1].__r_.__value_.__r.__words[0] = result;
  v4 = *(result + 23);
  v5 = *(result + 8);
  if (v4 >= 0)
  {
    v6 = *(result + 23);
  }

  else
  {
    v6 = *(result + 8);
  }

  a2[1].__r_.__value_.__l.__size_ = 0;
  if (v4 < 0)
  {
    if (!v5)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
    result = *result;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
  }

  result = sub_100007BAC(result, v6, &v14);
  v7 = v14.__r_.__value_.__r.__words[0];
  if (v14.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

  v8 = result;
  if (result < v6)
  {
    a2[1].__r_.__value_.__l.__size_ = result;
    v7 = 1;
    goto LABEL_13;
  }

  v9 = *(v2 + 23);
  v10 = v9 < 0;
  if (v9 >= 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = *v2;
  }

  if (v10)
  {
    v7 = *(v2 + 8);
  }

  else
  {
    v7 = *(v2 + 23);
  }

  if (!v7)
  {
LABEL_25:
    if (!v7)
    {
      return result;
    }

LABEL_10:
    v8 = 0;
LABEL_13:
    result = std::string::basic_string(&v14, v2, v8, v7, &v15);
    *a2 = v14;
    return result;
  }

  v12 = 0;
  while (*(v11 + v12) != 47)
  {
    if (v7 == ++v12)
    {
      goto LABEL_25;
    }
  }

  if (v12 == -1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 != v12)
  {
    v7 = v13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10001ABEC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result;
  v2 = *(result + 23);
  if (v2 < 0)
  {
    v2 = *(result + 8);
  }

  a2[4] = v2;
  return result;
}

uint64_t sub_10001AC08(size_t a1, size_t a2)
{
  sub_10001AAD4(a1, &v11);
  memset(v10, 0, 24);
  v10[3] = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v10[4] = v4;
  sub_10001AAD4(a2, &__p);
  memset(v8, 0, 24);
  v8[3] = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v8[4] = v5;
  v6 = sub_10001ACC0(&v11, v10, &__p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t sub_10001ACC0(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((sub_10001BF38(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((sub_10001BF38(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      sub_10001C1C8(a1);
      sub_10001C1C8(a3);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

std::string *sub_10001ADC4(std::string *a1)
{
  v2 = sub_100007C48(a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    v4 = a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v4 = a1 + v3;
    v5 = a1;
  }

  std::string::erase(a1, v2, v4 - (v5 + v2));
  return a1;
}

std::string *sub_10001AE1C(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
      return this;
    }
  }

  else
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return this;
    }

    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v4 = size - 1;
  if ((v2 & 0x80000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    if (*(this->__r_.__value_.__r.__words[0] + v4) == 47)
    {
      v5 = (v6 + this->__r_.__value_.__l.__size_);
      goto LABEL_10;
    }
  }

  else if (this->__r_.__value_.__s.__data_[v4] == 47)
  {
    v5 = this + v2;
    v6 = this;
LABEL_10:
    std::string::erase(this, &v5[~v6], 1uLL);
  }

  return this;
}

std::string *sub_10001AEA8(std::string *a1, uint64_t a2)
{
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  sub_10001B5EC(a1, &__p);
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  v6 = size - v5;
  v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 <= v7)
    {
      *(&a1->__r_.__value_.__s + 23) = v6;
      v8 = a1;
      goto LABEL_10;
    }

LABEL_27:
    sub_10001C6BC();
  }

  if (a1->__r_.__value_.__l.__size_ < v6)
  {
    goto LABEL_27;
  }

  v8 = a1->__r_.__value_.__r.__words[0];
  a1->__r_.__value_.__l.__size_ = v6;
LABEL_10:
  v8->__r_.__value_.__s.__data_[v6] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      return a1;
    }
  }

  if (*v10 != 46)
  {
    std::string::push_back(a1, 46);
    LOBYTE(v9) = *(a2 + 23);
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(a2 + 8);
  }

  std::string::append(a1, v11, v12);
  return a1;
}

void sub_10001AFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_10001AFD4(_BYTE *a1)
{
  v4 = 0;
  v1 = a1[23];
  if ((v1 & 0x8000000000000000) != 0)
  {
    v2 = a1;
    a1 = *a1;
    v1 = *(v2 + 1);
  }

  sub_100007BAC(a1, v1, &v4);
  return v4;
}

size_t sub_10001B00C(_BYTE *a1)
{
  v1 = a1;
  v6 = 0;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v3 = sub_100007BAC(a1, v2, &v6);
  v4 = v1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v1 + 1);
  }

  if (v3 < v4)
  {
    return v3 + 1;
  }

  else
  {
    return v6;
  }
}

size_t sub_10001B06C(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  result = sub_100007BAC(a1, v2, &v5);
  if ((v1[23] & 0x8000000000000000) != 0)
  {
    v4 = *(v1 + 1);
  }

  return result;
}

size_t sub_10001B0C4(_BYTE *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v3 = sub_100007BAC(a1, v2, &v11);
  result = v11;
  v5 = v1[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(v1 + 1);
    if (v3 >= v6)
    {
LABEL_16:
      v10 = *(v1 + 1);
      return result;
    }
  }

  else
  {
    v6 = v1[23];
    if (v3 >= v5)
    {
      return result;
    }
  }

  v7 = v3 + 1;
  if (v6 <= v3 + 1)
  {
    result = v3 + 1;
  }

  else
  {
    result = v6;
  }

  while (v7 < v6)
  {
    v8 = v1;
    if ((v5 & 0x80000000) != 0)
    {
      v8 = *v1;
    }

    v9 = v8[v7++];
    if (v9 != 47)
    {
      result = v7 - 1;
      break;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

void *sub_10001B178@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v27 = 0;
  result = sub_100007BAC(a1, v4, &v27);
  if (result >= v4)
  {
    LOBYTE(v6) = v2[23];
  }

  else
  {
    v6 = v2[23];
    v7 = v2;
    if (v6 < 0)
    {
      v7 = *v2;
    }

    if (v7[v4 - 1] == 47)
    {
      v8 = *v2;
      if (v6 >= 0)
      {
        v8 = v2;
      }

      v9 = v8 - 2;
      v10 = v4;
      while (1)
      {
        v11 = (v10 - 1);
        if (v10 - 1 <= result)
        {
          break;
        }

        v12 = v9[v10--];
        if (v12 != 47)
        {
          if (result != v11)
          {
            goto LABEL_16;
          }

          break;
        }
      }

      v4 = 1;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_16:
  if (v27 == v4)
  {
    result = 0;
    if ((v6 & 0x80) == 0)
    {
LABEL_19:

      return sub_100016BF8(a2, result + v2, result + v2 + v4, v4);
    }

LABEL_18:
    v2 = *v2;
    goto LABEL_19;
  }

  v13 = *v2;
  if (v4 >= v27)
  {
    v14 = v27;
  }

  else
  {
    v14 = v4;
  }

  if ((v6 & 0x80u) == 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  v16 = v15 - 1;
  v17 = v4;
  while (v17 > v27)
  {
    v18 = v17 - 1;
    v19 = v16[v17--];
    if (v19 == 47)
    {
      v14 = v18 + 1;
      break;
    }
  }

  v4 -= v14;
  if (v4)
  {
LABEL_47:
    result = v14;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14 <= v27)
  {
    goto LABEL_46;
  }

  v20 = (v14 - 1);
  v21 = (v6 & 0x80u) == 0 ? v2 : *v2;
  if (*(v20 + v21) != 47)
  {
    goto LABEL_46;
  }

  if (v20 >= result)
  {
    v20 = result;
  }

  v22 = v21 - 2;
  v23 = v14;
  while (1)
  {
    v24 = (v23 - 1);
    if (v23 - 1 <= result)
    {
      break;
    }

    v25 = v22[v23--];
    if (v25 != 47)
    {
      goto LABEL_45;
    }
  }

  v24 = v20;
LABEL_45:
  if (v24 == result)
  {
LABEL_46:
    v4 = 0;
    goto LABEL_47;
  }

  if (byte_10045C5D7 < 0)
  {
    v26 = xmmword_10045C5C0;

    return sub_100003228(a2, v26, *(&v26 + 1));
  }

  else
  {
    *a2 = xmmword_10045C5C0;
    a2[2] = unk_10045C5D0;
  }

  return result;
}

size_t sub_10001B3A4(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v10 = 0;
  sub_100007BAC(a1, v2, &v10);
  if (v2 >= v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = v2;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  v5 = v4 - 1;
  v6 = v2;
  while (v6 > v10)
  {
    v7 = v6 - 1;
    v8 = v5[v6--];
    if (v8 == 47)
    {
      v3 = v7 + 1;
      return v2 - v3;
    }
  }

  return v2 - v3;
}

std::string *sub_10001B438@<X0>(_BYTE *a1@<X0>, size_t a2@<X8>)
{
  sub_10001B178(a1, a2);
  result = sub_10001AC08(a2, &xmmword_10045C5C0);
  if (result)
  {
    result = sub_10001AC08(a2, qword_10045C5D8);
    if (result)
    {
      v4 = *(a2 + 23);
      v5 = (v4 & 0x80u) == 0 ? a2 : *a2;
      v6 = (v4 & 0x80u) == 0 ? *(a2 + 23) : *(a2 + 8);
      if (v6)
      {
        v7 = v6 + v5;
        v8 = v5 - 1;
        while (v6)
        {
          v9 = *(v8 + v6);
          --v7;
          --v6;
          if (v9 == 46)
          {
            if (v6 != -1)
            {
              v10 = v4;
              v11 = a2 + v4;
              if (v10 < 0)
              {
                v11 = *a2 + *(a2 + 8);
              }

              return std::string::erase(a2, v6, v11 - v7);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_10001B4E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001B510(_BYTE *a1@<X0>, void *a2@<X8>)
{
  sub_10001B178(a1, __p);
  if (sub_10001AC08(__p, &xmmword_10045C5C0) && sub_10001AC08(__p, qword_10045C5D8))
  {
    v3 = v9;
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) != 0)
    {
      v3 = __p[1];
    }

    if (v3)
    {
      v5 = v4 + v3;
      v6 = ~v3;
      while (v6 != -1)
      {
        v7 = *--v5;
        ++v6;
        if (v7 == 46)
        {
          if (!v6)
          {
            break;
          }

          sub_100014A08(a2, v5);
          goto LABEL_15;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_15:
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10001B5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001B5EC(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v17 = 0;
  sub_100007BAC(a1, v4, &v17);
  v5 = v2[23];
  v6 = *v2;
  if (v4 >= v17)
  {
    v7 = v17;
  }

  else
  {
    v7 = v4;
  }

  if (v5 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  v9 = v8 - 1;
  v10 = v4;
  while (v10 > v17)
  {
    v11 = v10 - 1;
    v12 = v9[v10--];
    if (v12 == 47)
    {
      v7 = v11 + 1;
      break;
    }
  }

  v13 = v4 - v7;
  if (v4 != v7)
  {
    v14 = v5 >= 0 ? v2 : *v2;
    if (v14[v7] != 46 || v13 != 1 && (v13 != 2 || v14[v7 + 1] != 46))
    {
      v15 = 0;
      while (v4 + v15 > v7)
      {
        v16 = v14[v4 - 1 + v15--];
        if (v16 == 46)
        {
          if (v4 + v15 > v7)
          {
            sub_10001A658(a2, &v14[v4 + v15], &v14[v4], -v15);
          }

          return;
        }
      }
    }
  }
}

void sub_10001B718(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001B734(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001AAD4(a1, &v29);
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
  }

  sub_10001AAD4(a2, &v27);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&v21, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v29;
  }

  v22 = v30;
  v9 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&__p, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v27;
  }

  v20 = v28;
  while (v22 != __PAIR128__(v6, a1))
  {
    v10 = v20 == a2 && *(&v20 + 1) == v7;
    if (v10 || sub_10001AC08(&v21, &__p))
    {
      break;
    }

    sub_10001C1C8(&v21);
    sub_10001C1C8(&__p);
  }

  sub_10001C764(&v23, &v21, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v24 == v30 && v26 == v28)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_67;
  }

  if (v24 == __PAIR128__(v6, a1) && v26 == __PAIR128__(v7, a2))
  {
    if ((byte_10045C5D7 & 0x80000000) == 0)
    {
      *a3 = xmmword_10045C5C0;
      v11 = unk_10045C5D0;
LABEL_65:
      *(a3 + 16) = v11;
      goto LABEL_67;
    }

LABEL_66:
    sub_100003228(a3, xmmword_10045C5C0, *(&xmmword_10045C5C0 + 1));
    goto LABEL_67;
  }

  v12 = 0;
  while (v26 != a2 || *(&v26 + 1) != v7)
  {
    if (sub_10001AC08(&v25, qword_10045C5D8))
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      if (size && sub_10001AC08(&v25, &xmmword_10045C5C0))
      {
        ++v12;
      }
    }

    else
    {
      --v12;
    }

    sub_10001C1C8(&v25);
  }

  if (v12 < 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_67;
  }

  if (v12)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = v12 + 1;
    *(a3 + 16) = 0;
    do
    {
      sub_10001A754(a3, qword_10045C5D8);
      --v15;
    }

    while (v15 > 1);
  }

  else
  {
    if (v24 == a1 && *(&v24 + 1) == v6)
    {
      goto LABEL_63;
    }

    v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v23.__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
LABEL_63:
      if ((byte_10045C5D7 & 0x80000000) == 0)
      {
        *a3 = xmmword_10045C5C0;
        v11 = unk_10045C5D0;
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  while (v24 != a1 || *(&v24 + 1) != v6)
  {
    sub_10001A754(a3, &v23);
    sub_10001C1C8(&v23);
  }

LABEL_67:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

LABEL_75:
      operator delete(v29.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v8 < 0)
  {
    goto LABEL_75;
  }
}

void sub_10001BADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_10001BB90(&a30);
  if (v30 < 0)
  {
    operator delete(*(v31 - 176));
  }

  if (a11 < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10001BB90(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001BBD4(void *__s@<X0>, uint64_t a2@<X8>)
{
  v2 = __s;
  v4 = *(__s + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v2 = *__s;
    v4 = __s[1];
  }

  v32 = 0;
  v5 = sub_100007BAC(v2, v4, &v32);
  v6 = v32;
  sub_100016BF8(a2, v2, &v2[v32], v32);
  if (v5 < v4)
  {
    std::string::push_back(a2, 47);
    v6 = v5 + 1;
  }

  if (v6 >= v4)
  {
    return;
  }

  v7 = v6;
  while (v2[v7] == 47)
  {
    if (v4 == ++v7)
    {
      return;
    }
  }

  do
  {
    v13 = &v2[v7];
    v14 = v4 - v7;
    v15 = memchr(&v2[v7], 47, v4 - v7);
    if (v15)
    {
      v14 = v15 - v13;
    }

    v7 += v14;
    if (v14 == 2)
    {
      if (*v13 != 46 || v13[1] != 46)
      {
        goto LABEL_57;
      }

      v16 = *(a2 + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *(a2 + 8);
        if (v17 <= v6)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = *(a2 + 23);
        if (v6 >= v16)
        {
          goto LABEL_57;
        }
      }

      v12 = *a2;
      if (v17 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v17;
      }

      if ((v16 & 0x80000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = v18 - 1;
      v20 = v17;
      while (v20 > v6)
      {
        v21 = v20 - 1;
        v22 = *(v19 + v20--);
        if (v22 == 47)
        {
          v9 = v21 + 1;
          break;
        }
      }

      if (v17 - v9 != 2 || ((v16 & 0x80000000) == 0 ? (v23 = a2) : (v23 = *a2), *(v23 + v9) != 46 || *(v23 + v9 + 1) != 46))
      {
        if (v9 > v6)
        {
          v8 = (v16 & 0x80000000) == 0 ? a2 : *a2;
          if (*(v8 + v9 - 1) == 47)
          {
            --v9;
          }
        }

        v10 = (v16 & 0x80000000) != 0;
        if ((v16 & 0x80000000) == 0)
        {
          v11 = a2 + v16;
        }

        else
        {
          v11 = v12 + *(a2 + 8);
        }

        if (!v10)
        {
          v12 = a2;
        }

        std::string::erase(a2, v9, v11 - (v9 + v12));
LABEL_58:
        if (v7 == v4)
        {
          goto LABEL_79;
        }

        goto LABEL_10;
      }

LABEL_57:
      sub_1000031C8(a2);
      std::string::append(a2, v13, v14);
      goto LABEL_58;
    }

    if (v14 != 1 || *v13 != 46)
    {
      goto LABEL_57;
    }

    if (v7 == v4)
    {
      break;
    }

LABEL_10:
    if (v7 < v4)
    {
      while (v2[v7] == 47)
      {
        if (++v7 >= v4)
        {
          goto LABEL_60;
        }
      }
    }
  }

  while (v7 != v4);
LABEL_60:
  v24 = *(a2 + 23);
  v25 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v26 = *(a2 + 8);
    if (!v26)
    {
      goto LABEL_79;
    }

    if (v26 == 1)
    {
      goto LABEL_78;
    }

LABEL_66:
    v27 = v26 - 1;
    if ((v25 & 0x80) != 0)
    {
      if (*(*a2 + v27) != 46)
      {
        goto LABEL_78;
      }

      v28 = *(a2 + 8);
    }

    else
    {
      if (*(a2 + v27) != 46)
      {
        goto LABEL_78;
      }

      v28 = *(a2 + 23);
    }

    v29 = v28 - 2;
    if ((v25 & 0x80) != 0)
    {
      v30 = *a2;
      if (*(*a2 + v29) != 46)
      {
        goto LABEL_78;
      }

      v24 = *(a2 + 8);
      if (v24 == 2)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (*(a2 + v29) != 46)
      {
        goto LABEL_78;
      }

      if (v25 == 2)
      {
        goto LABEL_79;
      }

      v30 = a2;
    }

    if (*(v24 + v30 - 3) != 47)
    {
      goto LABEL_78;
    }
  }

  else if (*(a2 + 23))
  {
    if (v25 != 1)
    {
      v26 = *(a2 + 23);
      goto LABEL_66;
    }

LABEL_78:
    sub_1000031C8(a2);
  }

LABEL_79:
  v31 = *(a2 + 23);
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(a2 + 8);
  }

  if (!v31)
  {
    std::string::push_back(a2, 46);
  }
}

void sub_10001BF0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001BF38(void *a1, void **a2)
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

  return sub_10001C814(a1, v2, v5, v6);
}

void sub_10001BF70(std::string *this)
{
  v1 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(data + 1);
  }

  v4 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v6 = v1[1].__r_.__value_.__l.__size_ + v1->__r_.__value_.__l.__size_;
    v1[1].__r_.__value_.__l.__size_ = v6;
    if (v6 >= v3)
    {
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v6 = v1[1].__r_.__value_.__l.__size_ + v4;
    v1[1].__r_.__value_.__l.__size_ = v6;
    if (v6 >= v3)
    {
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v7 = data;
  if (data[23] < 0)
  {
    v7 = *data;
  }

  if (v7[v6] == 47)
  {
    v21 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v8 = sub_100007BAC(data, v3, &v21);
    v6 = *p_size;
    if (*p_size == v8)
    {
      v9 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
      if (v9 < 0)
      {
        if (v1->__r_.__value_.__l.__size_ == v21)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
          goto LABEL_19;
        }
      }

      else if (v21 == v9)
      {
        *(&v1->__r_.__value_.__s + 23) = 1;
LABEL_19:
        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    data = v1[1].__r_.__value_.__l.__data_;
    if (v6 == v3)
    {
LABEL_25:
      if (v3 - 1 >= v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v3 - 1;
      }

      if (data[23] >= 0)
      {
        v12 = data;
      }

      else
      {
        v12 = *data;
      }

      v13 = v12 - 2;
      v14 = v3;
      while (1)
      {
        v15 = v14 - 1;
        if (v14 - 1 <= v8)
        {
          break;
        }

        v16 = v13[v14--];
        if (v16 != 47)
        {
          goto LABEL_36;
        }
      }

      v15 = v11;
LABEL_36:
      v6 = v3;
      if (v15 != v8)
      {
        v1[1].__r_.__value_.__l.__size_ = v3 - 1;
        std::string::operator=(v1, &xmmword_10045C5C0);
        return;
      }
    }

    else
    {
      while (1)
      {
        v10 = data;
        if (data[23] < 0)
        {
          v10 = *data;
        }

        if (v10[v6] != 47)
        {
          break;
        }

        *p_size = ++v6;
        if (v3 == v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v17 = data[23];
  if (v17 < 0)
  {
    v18 = *data;
    v19 = *(data + 1);
  }

  else
  {
    v18 = data;
    v19 = data[23];
  }

  if (v19 <= v6)
  {
    goto LABEL_47;
  }

  v20 = v6;
  while (v18[v20] != 47)
  {
    if (v19 == ++v20)
    {
      goto LABEL_47;
    }
  }

  if (v19 == v20 || v20 == -1)
  {
LABEL_47:
    v20 = v3;
  }

  if ((v17 & 0x80000000) != 0)
  {
    data = *data;
  }

  sub_10001A658(v1, &data[v6], &data[v20], v20 - v6);
}

void sub_10001C1C8(std::string *this)
{
  v1 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if (v3 < 0)
  {
    v4 = *(data + 1);
  }

  else
  {
    v4 = data[23];
  }

  v5 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    if (v1->__r_.__value_.__l.__size_)
    {
      goto LABEL_13;
    }
  }

  else if (*(&v1->__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  size = v1[1].__r_.__value_.__l.__size_;
  if (size + 1 == v4)
  {
    v7 = data;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = *data;
    }

    if (v7[size] == 47)
    {
      v1[1].__r_.__value_.__l.__size_ = v4;
      return;
    }
  }

LABEL_13:
  if ((v5 & 0x80000000) != 0)
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v1->__r_.__value_.__l.__size_;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_63:
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v5;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_15:
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v10 = data;
  if (data[23] < 0)
  {
    v10 = *data;
  }

  if (v10[v9] == 47)
  {
    v24 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v11 = sub_100007BAC(data, v4, &v24);
    v9 = *p_size;
    if (*p_size == v11)
    {
      v12 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
      if (v12 < 0)
      {
        if (v1->__r_.__value_.__l.__size_ == v24)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
          goto LABEL_28;
        }
      }

      else if (v24 == v12)
      {
        *(&v1->__r_.__value_.__s + 23) = 1;
LABEL_28:
        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    for (data = v1[1].__r_.__value_.__l.__data_; v4 != v9; *p_size = ++v9)
    {
      v13 = data;
      if (data[23] < 0)
      {
        v13 = *data;
      }

      if (v13[v9] != 47)
      {
        goto LABEL_46;
      }
    }

    v14 = v4 - 1 >= v11 ? v11 : v4 - 1;
    v15 = data[23] >= 0 ? data : *data;
    v16 = v15 - 2;
    v17 = v4;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v11)
      {
        break;
      }

      v19 = v16[v17--];
      if (v19 != 47)
      {
        goto LABEL_45;
      }
    }

    v18 = v14;
LABEL_45:
    v9 = v4;
    if (v18 != v11)
    {
      v1[1].__r_.__value_.__l.__size_ = v4 - 1;
      if ((SHIBYTE(v1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_63;
    }
  }

LABEL_46:
  v20 = data[23];
  if (v20 < 0)
  {
    v21 = *data;
    v22 = *(data + 1);
  }

  else
  {
    v21 = data;
    v22 = data[23];
  }

  if (v22 <= v9)
  {
    goto LABEL_56;
  }

  v23 = v9;
  while (v21[v23] != 47)
  {
    if (v22 == ++v23)
    {
      goto LABEL_56;
    }
  }

  if (v22 == v23 || v23 == -1)
  {
LABEL_56:
    v23 = v4;
  }

  if ((v20 & 0x80000000) != 0)
  {
    data = *data;
  }

  sub_10001A658(v1, &data[v9], &data[v23], v23 - v9);
}

void sub_10001C460(std::string *a1)
{
  v1 = a1;
  data = a1[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = data;
    data = *data;
    v3 = *(v4 + 1);
  }

  v31 = 0;
  v5 = sub_100007BAC(data, v3, &v31);
  size = v1[1].__r_.__value_.__l.__size_;
  if (v5 >= v3 || size != v5)
  {
    if (v3 >= 2 && size == v3)
    {
      v9 = v1[1].__r_.__value_.__l.__data_;
      v10 = v3 - 1;
      v11 = v9;
      if (v9[23] < 0)
      {
        v11 = *v9;
      }

      if (v11[v10] == 47)
      {
        if (v10 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = v3 - 1;
        }

        if (v9[23] < 0)
        {
          v9 = *v9;
        }

        v13 = v9 - 2;
        while (1)
        {
          v14 = v3 - 1;
          if (v3 - 1 <= v5)
          {
            break;
          }

          v15 = v13[v3--];
          if (v15 != 47)
          {
            goto LABEL_25;
          }
        }

        v14 = v12;
LABEL_25:
        if (v14 != v5)
        {
          v1[1].__r_.__value_.__l.__size_ = v10;
          if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
          {
            *v1->__r_.__value_.__l.__data_ = 0;
            v1->__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            v1->__r_.__value_.__s.__data_[0] = 0;
            *(&v1->__r_.__value_.__s + 23) = 0;
          }

          return;
        }
      }
    }

    v16 = v31;
    v17 = size + 1;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v31)
      {
        break;
      }

      if (v17 - v5 == 2)
      {
        v1[1].__r_.__value_.__l.__size_ = v5;
        if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v1->__r_.__value_.__s + 23) = 1;
        }

        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }

      v19 = v1[1].__r_.__value_.__l.__data_;
      v20 = v19;
      if (v19[23] < 0)
      {
        v20 = *v19;
      }

      v21 = v20[v17-- - 2];
      if (v21 != 47)
      {
        v22 = *v19;
        if (v19[23] >= 0)
        {
          v22 = v1[1].__r_.__value_.__l.__data_;
        }

        v23 = v18 - 1;
        v24 = v18;
        while (1)
        {
          v25 = v24;
          if (v23 + 1 <= v31)
          {
            break;
          }

          v26 = v22[v23--];
          --v24;
          if (v26 == 47)
          {
            v27 = v23 + 2;
            goto LABEL_47;
          }
        }

        v27 = v31;
LABEL_47:
        v1[1].__r_.__value_.__l.__size_ = v27;
        if (v19[23] < 0)
        {
          v19 = *v19;
        }

        if (v16 <= v25)
        {
          v16 = v25;
        }

        v29 = v18 - v16;
        v28 = &v19[v27];
        v30 = &v19[v18];
        goto LABEL_41;
      }
    }
  }

  v1[1].__r_.__value_.__l.__size_ = 0;
  v28 = v1[1].__r_.__value_.__l.__data_;
  if (v28[23] < 0)
  {
    v28 = *v28;
  }

  v29 = v31;
  v30 = &v28[v31];
LABEL_41:

  sub_10001A658(v1, v28, v30, v29);
}

uint64_t sub_10001C680(uint64_t a1)
{
  if (qword_10045C5F0)
  {
    std::locale::~locale(qword_10045C5F0);
    operator delete(v2);
  }

  qword_10045C5F0 = 0;
  return a1;
}

void sub_10001C6D4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10001C730(exception, a1);
}

std::logic_error *sub_10001C730(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10001C764(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(a1, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
  }

  *(a1 + 24) = *(a2 + 24);
  if (*(a3 + 23) < 0)
  {
    sub_100003228((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = *(a3 + 24);
  return a1;
}

void sub_10001C7F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001C814(const void *a1, size_t a2, void *__s2, size_t a4)
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

uint64_t sub_10001C874()
{
  __cxa_atexit(sub_10001C680, &unk_10045C5B8, &_mh_execute_header);
  sub_100014A08(&xmmword_10045C5C0, ".");
  __cxa_atexit(sub_100013F9C, &xmmword_10045C5C0, &_mh_execute_header);
  sub_100014A08(qword_10045C5D8, "..");

  return __cxa_atexit(sub_100013F9C, qword_10045C5D8, &_mh_execute_header);
}

void sub_10001C92C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100003228(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v20 = *(a1 + 16);
  }

  v21[0] = 0;
  v21[1] = 0;
  if (v20 >= 0)
  {
    v4 = HIBYTE(v20);
  }

  else
  {
    v4 = __p[1];
  }

  if (!v4)
  {
LABEL_37:
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a3 = *__p;
    *(a3 + 16) = v20;
    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v20 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (*(v7 + v5) != 37)
    {
      goto LABEL_32;
    }

    if (v6 == 32)
    {
      v8 = open("/dev/urandom", 0x1000000);
      if (v8 != -1 || (v8 = open("/dev/random", 0x1000000), v8 != -1))
      {
        v9 = 0;
        v10 = v21;
        while (1)
        {
          v11 = read(v8, v10, 16 - v9);
          if (v11 == -1)
          {
            v12 = *__error();
            if (v12 != 4)
            {
              close(v8);
              goto LABEL_35;
            }
          }

          else
          {
            v9 += v11;
            v10 = (v10 + v11);
          }

          if (v9 >= 0x10)
          {
            close(v8);
            goto LABEL_23;
          }
        }
      }

      v12 = *__error();
LABEL_35:
      if (v12)
      {
        sub_100013FD0(v12, a2, "boost::filesystem::unique_path");
      }

LABEL_23:
      if (!a2 || (v13 = a2[2], (v13 & 1) == 0))
      {
        v6 = 0;
        goto LABEL_28;
      }

      if (v13 != 1)
      {
        break;
      }

      v6 = *a2;
      if (*a2)
      {
        break;
      }
    }

LABEL_28:
    v14 = *(v21 + (v6 >> 1));
    v15 = 4 * (v6++ & 1);
    v16 = a0123456789abcd[(v14 >> v15) & 0xFLL];
    if (v20 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *(v17 + v5) = v16;
LABEL_32:
    if (++v5 == v4)
    {
      goto LABEL_37;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10001D1EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v5 = [v2 _defaultErrHandlerForCaller:@"retrieveLocationRelevancyDuration:"];
  v4 = [v3 remoteObjectProxyWithErrorHandler:?];
  [v4 retrieveLocationRelevancyDurationWithCompletionHandler:*(a1 + 40)];
}

id sub_10001D29C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10001D2D8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_10001D51C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10001D558(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_10001D8A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10001D8E0(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10001DACC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10001DB80;
  v3[3] = &unk_1004325E8;
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4 = v2;
  (*(v1 + 16))(v1, v3);
}

id sub_10001DB88(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_10001DD58(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_10001DE84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10001DFD4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_10001E294(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10001E2D0(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10001E404(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10001E438(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

void sub_10001E720(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001EB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10001EB8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained withinQueueReinitializeRemoteState];
}

void sub_10001EDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = CLIndoorXPCProvider;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_10001EE54(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      return [*(a1 + 32) withinQueueInvalidate];
    }

    goto LABEL_3;
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "performing dealloc", v4, 2u);
  }

  return [*(a1 + 32) withinQueueInvalidate];
}

id sub_10001EEF4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_10001EFBC(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) impl];
    v4 = [v3 endpointName];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "invalidate %{public}@", &v6, 0xCu);
  }

  return [*(a1 + 32) withinQueueInvalidate];
}

id sub_10001F0D8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_10001F454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id location, uint64_t a12, id a13)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a13);
  _Unwind_Resume(a1);
}

void sub_10001F484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, id a13)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a13);
  _Unwind_Resume(a1);
}

void sub_10001FD50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10045B060 != -1)
  {
    sub_10038285C();
  }

  v4 = qword_10045B068;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 description];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "xpc error invoking %{public}@: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_10001FE90(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10001FECC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10001FF70(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

void sub_10001FFB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020064;
    block[3] = &unk_100432828;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_10002006C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002011C;
    block[3] = &unk_100432828;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_10002011C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2 impl];
    v4 = [v3 withinQueuePermanentShutdownReason];

    if (v4)
    {
      if (qword_10045B060 != -1)
      {
        sub_10038285C();
      }

      v5 = qword_10045B068;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(a1 + 32) impl];
        v7 = [v6 endpointName];
        v8 = [v4 description];
        v12 = 138543618;
        v13 = v7;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "XPC connection invalidated by daemon to %{public}@: %{public}@", &v12, 0x16u);
      }

      [*(a1 + 32) withinQueueInvalidate];
    }

    else
    {
      if (qword_10045B060 != -1)
      {
        sub_10038285C();
      }

      v9 = qword_10045B068;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) impl];
        v11 = [v10 endpointName];
        v12 = 138543618;
        v13 = v11;
        v14 = 2050;
        v15 = 5000;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Invalidated pipelined XPC connection to %{public}@ - will retry in %{public}lld ms", &v12, 0x16u);
      }

      [*(a1 + 32) withinQueueHandleReconnect:std::chrono::steady_clock::now().__d_.__rep_];
    }
  }
}

void sub_100020380()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1000214F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000217A8(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

void sub_1000217EC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100022138(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "setting up play-back of %@", &v8, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = v4[2];
  v6 = [v4 _defaultErrHandlerForCaller:@"playbackDatarun:"];
  v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
  [v7 playbackDatarun:*(a1 + 40)];
}

id sub_10002226C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1000222A8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1000223B0(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 16);
    v22 = 134217984;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider startUpdatingLocationAtLocation], _connection = %p", &v22, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) state];
    [v5 setLastLocation:v4];
  }

  v6 = [*(a1 + 32) state];
  v7 = [v6 updateLocation];

  if (v7)
  {
    if (qword_10045B060 != -1)
    {
      sub_1003828D4();
    }

    v8 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[CLIndoorPositionProvider startUpdatingLocationAtLocation], already started", &v22, 2u);
    }
  }

  else
  {
    v9 = [*(a1 + 32) state];
    v10 = [v9 lastLocation];
    if (v10)
    {
      v11 = [*(a1 + 32) state];
      v12 = [v11 lastLocation];
      v13 = [v12 isStaleFix:std::chrono::steady_clock::now().__d_.__rep_];

      if (!v13)
      {
        v14 = [*(a1 + 32) state];
        [v14 setUpdateLocation:1];

        v15 = [*(a1 + 32) state];
        [v15 setPausedLocalization:0];

        v16 = *(a1 + 32);
        v17 = v16[2];
        v18 = [v16 _defaultErrHandlerForCaller:@"startUpdatingLocationAtLocation:"];
        v19 = [v17 remoteObjectProxyWithErrorHandler:v18];
        [v19 startUpdatingLocationAtLocation:*(a1 + 40)];

        return;
      }
    }

    else
    {
    }

    if (qword_10045B060 != -1)
    {
      sub_1003828D4();
    }

    v20 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "WARNING: [CLIndoorPositionProvider startUpdatingLocationWithMode], no valid location", &v22, 2u);
    }

    v21 = [*(a1 + 32) state];
    [v21 setPausedLocalization:1];
  }
}

id sub_1000226E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100022724(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_100022800(uint64_t a1)
{
  if (qword_10045B060 == -1)
  {
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1003828FC();
  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider stopUpdatingLocation], stop request", buf, 2u);
  }

LABEL_4:
  v3 = [*(a1 + 32) state];
  [v3 setPausedLocalization:0];

  v4 = [*(a1 + 32) state];
  v5 = [v4 updateLocation];

  if (v5)
  {
    v6 = [*(a1 + 32) state];
    [v6 setUpdateLocation:0];

    v7 = *(a1 + 32);
    v8 = v7[2];
    v9 = [v7 _defaultErrHandlerForCaller:@"stopUpdatingLocation"];
    v10 = [v8 remoteObjectProxyWithErrorHandler:v9];
    [v10 stopUpdatingLocation];

    return;
  }

  if (qword_10045B060 == -1)
  {
    v11 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider stopUpdatingLocation], already stopped", v12, 2u);
    }
  }

  else
  {
    sub_1003828D4();
    v11 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }
  }
}

void sub_1000229C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_100022A1C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_100022B1C(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "got outdoorLocationAvailabile", v21, 2u);
    v3 = (a1 + 40);
    if (*(a1 + 40))
    {
      if (qword_10045B060 != -1)
      {
        sub_1003828D4();
      }

      goto LABEL_8;
    }

    if (qword_10045B060 != -1)
    {
      sub_1003828D4();
    }
  }

  else
  {
    v3 = (a1 + 40);
    if (*(a1 + 40))
    {
LABEL_8:
      v4 = qword_10045B068;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [*(a1 + 32) state];
        v6 = [v5 pausedLocalization];
        v7 = [*(a1 + 32) state];
        v8 = [v7 updateLocation];
        v21[0] = 67109376;
        v21[1] = v6;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[CLIndoorPositionProvider outdoorLocationAvailabile], state = %d,%d", v21, 0xEu);
      }

      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) state];
      [v10 setLastLocation:v9];

      v11 = *(a1 + 32);
      v12 = v11[2];
      v13 = [v11 _defaultErrHandlerForCaller:@"outdoorLocationAvailable"];
      v14 = [v12 remoteObjectProxyWithErrorHandler:v13];
      [v14 outdoorLocationAvailable:*v3];

      v15 = [*(a1 + 32) state];
      LODWORD(v14) = [v15 pausedLocalization];

      if (v14)
      {
        v16 = [*(a1 + 32) state];
        [v16 setPausedLocalization:0];

        v17 = *(a1 + 32);
        v18 = [v17 state];
        v19 = [v18 lastLocation];
        [v17 startUpdatingLocationAtLocation:v19];
      }

      return;
    }
  }

  v20 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[CLIndoorPositionProvider outdoorLocationAvailable], got nil position", v21, 2u);
  }
}

id sub_100022E2C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100022E68(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_100022F70(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "gpsEstimateAvailable", v7, 2u);
  }

LABEL_4:
  v3 = *(a1 + 32);
  v4 = v3[2];
  v5 = [v3 _defaultErrHandlerForCaller:@"gpsEstimateAvailable"];
  v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
  [v6 gpsEstimateAvailable:*(a1 + 40)];
}

id sub_100023080(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1000230BC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1000231C4(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "gpsSignalQualityAvailable", v7, 2u);
  }

LABEL_4:
  v3 = *(a1 + 32);
  v4 = v3[2];
  v5 = [v3 _defaultErrHandlerForCaller:@"gpsSignalQualityAvailable"];
  v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
  [v6 gpsSignalQualityAvailable:*(a1 + 40)];
}

id sub_1000232D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100023310(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_100023418(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "clVisionNotificationAvailable", v7, 2u);
  }

LABEL_4:
  v3 = *(a1 + 32);
  v4 = v3[2];
  v5 = [v3 _defaultErrHandlerForCaller:@"clVisionNotificationAvailable"];
  v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
  [v6 clVisionNotificationAvailable:*(a1 + 40)];
}

id sub_100023528(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100023564(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10002366C(uint64_t a1)
{
  if (qword_10045B060 != -1)
  {
    sub_1003828FC();
    v2 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "clpOutdoorEstimatorLogEntryNotificationAvailable", v7, 2u);
  }

LABEL_4:
  v3 = *(a1 + 32);
  v4 = v3[2];
  v5 = [v3 _defaultErrHandlerForCaller:@"clpOutdoorEstimatorLogEntryNotificationAvailable"];
  v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
  [v6 clpOutdoorEstimatorLogEntryNotificationAvailable:*(a1 + 40)];
}

id sub_10002377C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1000237B8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10002382C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

void sub_100023870()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100023B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  if (a5 == 1)
  {
    sub_10014E2CC(va);
  }

  _Unwind_Resume(a1);
}

void sub_100023C9C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_100024218()
{
  if (qword_10045B060 == -1)
  {
    v1 = qword_10045B068;
  }

  else
  {
    sub_100382910();
    v1 = qword_10045B068;
  }

  return v1;
}

void sub_100026034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, void *a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  sub_100344504(v50 - 240);

  _Unwind_Resume(a1);
}

std::string::size_type sub_10002629C@<X0>(std::string::size_type result@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = *(*v5 + 23);
    if (v7 >= 0)
    {
      v8 = *v5;
    }

    else
    {
      v8 = **v5;
    }

    if (v7 >= 0)
    {
      v9 = *(*v5 + 23);
    }

    else
    {
      v9 = (*v5)[1];
    }

    result = sub_100026F84(a3, a3, v8, (v8 + v9), v9);
    v10 = v5 + 1;
    v11 = &v5[v6];
    if (v10 == v11)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
    v11 = &v5[v6];
    if (v10 == v11)
    {
      return result;
    }
  }

  do
  {
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    v15 = strlen(a2);
    sub_1000272BC(a3, v13 + v14, a2, &a2[v15], v15);
    v16 = *(a3 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a3 + 8);
    }

    v18 = *(*v10 + 23);
    if (v18 >= 0)
    {
      v19 = *v10;
    }

    else
    {
      v19 = **v10;
    }

    if (v18 >= 0)
    {
      v20 = *(*v10 + 23);
    }

    else
    {
      v20 = (*v10)[1];
    }

    result = sub_100026F84(a3, v17 + v16, v19, (v19 + v20), v20);
    ++v10;
  }

  while (v10 != v11);
  return result;
}

void sub_1000263BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100026664(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100026F40(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

std::string::size_type sub_100026F84(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (a3 < this || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a4 == a3)
      {
        size = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v19 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v20 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v19;
      }

      if ((v20 & 0x80u) == 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_34:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_34;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void sub_100027270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type sub_1000272BC(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (this > a3 || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a3 == a4)
      {
        size = 0;
        v20 = 0;
        v18 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v18 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v20 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v18 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v20;
      }

      if ((v18 & 0x80u) == 0)
      {
        v22 = v18;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_36:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_36;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}

void sub_1000275A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000275F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000275F4(a1, *a2);
    sub_1000275F4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_10002764C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void sub_1000277F8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100027918(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v3 >= 0x21)
  {
    v4 = *v1;
    v5 = *(v2 - 2);
    if (*v1 != v5)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v66 = fabs(v4);
      v67 = fabs(v5);
      v68 = vabdd_f64(v4, v5);
      if (v66 < v67)
      {
        v66 = v67;
      }

      if (v66 < 1.0)
      {
        v66 = 1.0;
      }

      if (v68 > v66 * 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    v6 = *(v1 + 8);
    v7 = *(v2 - 1);
    if (v6 != v7)
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v9 = fabs(v6);
      v10 = fabs(v7);
      v11 = vabdd_f64(v6, v7);
      if (v9 >= v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      if (v11 > v12 * 2.22044605e-16)
      {
LABEL_20:
        v14 = *(v1 + 8);
        *&v69 = *v1;
        *(&v69 + 1) = v14;
        v15 = a1;
        sub_1000277F8(a1, &v69);
        a1 = v15;
        v1 = *v15;
        v2 = v15[1];
        v3 = v2 - *v15;
      }
    }

    v16 = v3 >= 0x40;
    v17 = v1 + 16;
    if (v16 && v17 != v2)
    {
      v53 = v2 - v1 - 32;
      v54 = 0.0;
      v55 = (v1 + 16);
      v56 = v1;
      if (v53 < 0x30)
      {
        goto LABEL_90;
      }

      v57 = (v53 >> 4) + 1;
      v58 = 16 * (v57 & 0x1FFFFFFFFFFFFFFCLL);
      v55 = (v17 + v58);
      v56 = (v1 + v58);
      v59 = (v1 + 32);
      v60 = v57 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v61 = v59 - 4;
        v71 = vld2q_f64(v61);
        v73 = vld2q_f64(v59);
        v62 = v59 - 2;
        v63 = v59 + 2;
        v75 = vld2q_f64(v62);
        v77 = vld2q_f64(v63);
        v71.val[0] = vmulq_f64(vaddq_f64(v71.val[0], v75.val[0]), vsubq_f64(v71.val[1], v75.val[1]));
        v71.val[1] = vmulq_f64(vaddq_f64(v73.val[0], v77.val[0]), vsubq_f64(v73.val[1], v77.val[1]));
        v54 = v54 + v71.val[0].f64[0] + v71.val[0].f64[1] + v71.val[1].f64[0] + v71.val[1].f64[1];
        v59 += 8;
        v60 -= 4;
      }

      while (v60);
      if (v57 != (v57 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_90:
        do
        {
          v64 = *v55;
          v55 += 2;
          v54 = v54 + (*v56 + v64) * (v56[1] - v56[3]);
          v56 += 2;
        }

        while (v55 != v2);
      }

      if (v54 * 0.5 < 0.0 && v1 != v2)
      {
        v65 = v2 - 2;
        if (v65 > v1)
        {
          do
          {
            v69 = *(v17 - 16);
            *(v17 - 16) = *v65;
            *v65 = v69;
            v65 -= 2;
            v16 = v17 >= v65;
            v17 += 16;
          }

          while (!v16);
        }
      }
    }
  }

  v19 = a1[3];
  for (i = a1[4]; v19 != i; v19 += 3)
  {
    v21 = *v19;
    v22 = v19[1];
    v23 = v22 - *v19;
    if (v23 >= 0x21)
    {
      v24 = *v21;
      v25 = *(v22 - 2);
      if (*v21 != v25)
      {
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v50 = fabs(v24);
        v51 = fabs(v25);
        v52 = vabdd_f64(v24, v25);
        if (v50 < v51)
        {
          v50 = v51;
        }

        if (v50 < 1.0)
        {
          v50 = 1.0;
        }

        if (v52 > v50 * 2.22044605e-16)
        {
          goto LABEL_48;
        }
      }

      v26 = *(v21 + 8);
      v27 = *(v22 - 1);
      if (v26 != v27)
      {
        if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v29 = fabs(v26);
        v30 = fabs(v27);
        v31 = vabdd_f64(v26, v27);
        if (v29 >= v30)
        {
          v32 = v29;
        }

        else
        {
          v32 = v30;
        }

        if (v32 < 1.0)
        {
          v32 = 1.0;
        }

        if (v31 > v32 * 2.22044605e-16)
        {
LABEL_48:
          v34 = *(v21 + 8);
          *&v69 = *v21;
          *(&v69 + 1) = v34;
          sub_1000277F8(v19, &v69);
          v21 = *v19;
          v22 = v19[1];
          v23 = v22 - *v19;
        }
      }

      v16 = v23 >= 0x40;
      v35 = v21 + 16;
      if (v16 && v35 != v22)
      {
        v37 = v22 - v21 - 32;
        v38 = 0.0;
        v39 = (v21 + 16);
        v40 = v21;
        if (v37 < 0x30)
        {
          goto LABEL_91;
        }

        v41 = (v37 >> 4) + 1;
        v42 = 16 * (v41 & 0x1FFFFFFFFFFFFFFCLL);
        v39 = (v35 + v42);
        v40 = (v21 + v42);
        v43 = (v21 + 32);
        v44 = v41 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = v43 - 4;
          v70 = vld2q_f64(v45);
          v72 = vld2q_f64(v43);
          v46 = v43 - 2;
          v47 = v43 + 2;
          v74 = vld2q_f64(v46);
          v76 = vld2q_f64(v47);
          v70.val[0] = vmulq_f64(vaddq_f64(v70.val[0], v74.val[0]), vsubq_f64(v70.val[1], v74.val[1]));
          v70.val[1] = vmulq_f64(vaddq_f64(v72.val[0], v76.val[0]), vsubq_f64(v72.val[1], v76.val[1]));
          v38 = v38 + v70.val[0].f64[0] + v70.val[0].f64[1] + v70.val[1].f64[0] + v70.val[1].f64[1];
          v43 += 8;
          v44 -= 4;
        }

        while (v44);
        if (v41 != (v41 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_91:
          do
          {
            v48 = *v39;
            v39 += 2;
            v38 = v38 + (*v40 + v48) * (v40[1] - v40[3]);
            v40 += 2;
          }

          while (v39 != v22);
        }

        if (v38 * 0.5 > 0.0 && v21 != v22)
        {
          v49 = v22 - 2;
          if (v49 > v21)
          {
            do
            {
              v69 = *(v35 - 16);
              *(v35 - 16) = *v49;
              *v49 = v69;
              v49 -= 2;
              v16 = v35 >= v49;
              v35 += 16;
            }

            while (!v16);
          }
        }
      }
    }
  }
}

void sub_100027E4C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10002827C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_10002B8B4(&a9);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v13 = sub_10002833C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(a9) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "_openTileFileForIncrementalIO: fail to open availability tile; most likely due to race condition", &a9, 2u);
    }

    a9 = 0uLL;
    sub_100028394(v9 + 8, &a9);
    sub_10002BB1C(&a9);
    __cxa_end_catch();
    JUMPOUT(0x100028204);
  }

  if (*(v10 - 49) < 0)
  {
    operator delete(*(v10 - 72));
  }

  _Unwind_Resume(a1);
}

id sub_10002833C()
{
  if (qword_10045B060 == -1)
  {
    v1 = qword_10045B068;
  }

  else
  {
    sub_100382E38();
    v1 = qword_10045B068;
  }

  return v1;
}

uint64_t sub_100028394(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1000285D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);

  _Unwind_Resume(a1);
}

uint64_t sub_10002B4FC(uint64_t a1)
{
  result = wireless_diagnostics::google::protobuf::MessageLite::SerializeToZeroCopyStream();
  if ((result & 1) == 0)
  {
    v3 = sub_10002BB94();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 16))(__p, a1);
      v4 = v9 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = v4;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "serialized";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = sub_10002BB94();
    if (os_signpost_enabled(v5))
    {
      (*(*a1 + 16))(__p, a1);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = v6;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "serialized";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to serialize-append properly", "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_10002BB94();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 16))(__p, a1);
      sub_100382E4C(__p, buf, v7);
    }

    abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_10002B870(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

uint64_t sub_10002B8B4(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    sub_100170CB4(v2);
    operator delete();
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_10002B9B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100432AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10002BA38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  *(a2 + 80) = 0;
  if (v3)
  {
    sub_100170CB4(v3);
    operator delete();
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a2 + 8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_10002BB1C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

id sub_10002BB94()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_100382F00();
    v1 = qword_10045B058;
  }

  return v1;
}

void sub_10002BBEC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10002BC30()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10002BC58(uint64_t result, char a2, char a3, char a4, char a5, double a6, double a7)
{
  *result = a6;
  *(result + 8) = a2;
  *(result + 9) = a3;
  *(result + 10) = a4;
  *(result + 11) = a5;
  *(result + 16) = a7;
  return result;
}

uint64_t sub_10002BC74(uint64_t result, char a2, char a3, __int128 *a4, char a5, char a6, char a7, char a8, double a9)
{
  *result = a2;
  *(result + 1) = a3;
  v9 = *a4;
  *(result + 24) = *(a4 + 2);
  *(result + 8) = v9;
  *(result + 32) = a5;
  *(result + 33) = a6;
  *(result + 34) = a7;
  *(result + 40) = a9;
  *(result + 48) = a8;
  return result;
}

uint64_t sub_10002BCD0(uint64_t a1)
{
  if ((~*(a1 + 52) & 0xC) != 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100382F1C();
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
      {
        return *(a1 + 40) - (*(a1 + 32) * 1000000000.0);
      }

      goto LABEL_4;
    }

    v2 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
LABEL_4:
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Can't compute raven time offset to pipelined due to missing info", v4, 2u);
    }
  }

  return *(a1 + 40) - (*(a1 + 32) * 1000000000.0);
}

uint64_t sub_10002BD98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10002CA50((a1 + 8));
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = off_10043DB28;
  *(a1 + 400) &= 0xFCu;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *a1 = 0;
  sub_10002CBB0(v14);
  if (!sub_100032AB4(a3, a2, v14) || (sub_10002C018(v14, a1 + 8) & 1) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 384) = sub_1000BC014(*(a1 + 216));
  *(a1 + 392) = sub_1000BC014(*(a1 + 224));
  *(a1 + 368) = sqrt(*(a1 + 240) + *(a1 + 264));
  *(a1 + 416) = *(a2 + 40);
  if ((~*(a2 + 52) & 0xC) != 0)
  {
    if (qword_10045B050 == -1)
    {
      v8 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_100382F30();
    v8 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
LABEL_6:
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Can't compute raven time offset to pipelined due to missing info", v12, 2u);
    }
  }

LABEL_7:
  *(a1 + 408) = *(a2 + 40) - (*(a2 + 32) * 1000000000.0) + ((*(a1 + 24) + *(a1 + 16)) * 1000000000.0);
  *a1 = 1;
  (*(**a4 + 16))(*a4, a1 + 8);
  (*(**a4 + 24))(v12);
  v9 = v13;
  if (v13 == 1)
  {
    v10 = v12[1];
    *(a1 + 424) = v12[0];
    *(a1 + 432) = v9;
    *(a1 + 440) = v10;
    *(a1 + 448) = v9;
  }

LABEL_9:
  sub_100037BF8(v14);
  return a1;
}

void sub_10002BFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100037BF8(va);
  nullsub_76(v6);
  cnframework::TimestampedEvent::~TimestampedEvent((v5 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10002C018(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1080) != 1)
  {
    return 0;
  }

  v47 = v5;
  v48 = v4;
  v49 = v2;
  v50 = v3;
  memset(v46, 0, 360);
  sub_10002CA50(v46);
  memcpy((a2 + 8), &v46[0].u64[1], 0x160uLL);
  cnframework::TimestampedEvent::~TimestampedEvent(v46);
  v8 = *(a1 + 104);
  *(a2 + 24) = *(a1 + 120);
  *(a2 + 8) = v8;
  v9 = *(a1 + 136);
  v10 = *(a1 + 152);
  v11 = *(a1 + 168);
  *(a2 + 88) = *(a1 + 184);
  *(a2 + 72) = v11;
  *(a2 + 56) = v10;
  *(a2 + 40) = v9;
  v12 = *(a1 + 120);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = v12;
  v13 = *(a1 + 136);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 168) = v15;
  *(a2 + 152) = v14;
  *(a2 + 136) = v13;
  *(a2 + 200) = 14;
  *(a2 + 280) = 1;
  v16 = *(a1 + 704);
  *(a2 + 288) = *v16;
  *(a2 + 296) = v16[1];
  *(a2 + 304) = v16[2];
  v17 = *(a1 + 880);
  *(a2 + 312) = *v17;
  *(a2 + 320) = v17[1];
  *(a2 + 328) = v17[2];
  v18 = *(a1 + 868);
  v19 = &v17[v18];
  *(a2 + 336) = v19[1];
  *(a2 + 344) = v19[2];
  *(a2 + 352) = v17[2 * v18 + 2];
  *&v13 = *(a1 + 1096);
  v20 = *&v13 > 0.0;
  if (*&v13 >= 2.0)
  {
    v20 = 0;
  }

  if ((*(a1 + 1096) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v20)
  {
    v21 = *(a1 + 1096);
  }

  else
  {
    v21 = 0.0;
  }

  v44 = 0;
  v45 = 0.0;
  CNTimeSpan::SetTimeSpan(&v44, 0, 2.0);
  v42 = 0;
  v43 = 0.0;
  CNTimeSpan::SetTimeSpan(&v42, 0, v21);
  v40 = *(a1 + 104);
  (*(*a1 + 16))(a1);
  v22 = CNTimeSpan::operator-();
  v46[0] = 0uLL;
  v24 = CNTimeSpan::SetTimeSpan(v46, 0, fabs(v23 + v22));
  v41 = v46[0];
  if (!v46[0].i64[0] && (v46[0].i64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v45 >= *&v46[0].i64[1])
    {
LABEL_24:
      v28 = v43;
      goto LABEL_25;
    }

LABEL_17:
    if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
    {
      v46[0].i16[0] = 12;
      (*(*a1 + 16))(a1);
      v39 = *(a1 + 112) + *(a1 + 104);
      cnprint::CNPrinter::Print();
    }

    v27 = 0;
    return v27 & 1;
  }

  if (v44 || (v26 = v45, (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    if (v46[0].i64[0] != v44)
    {
      if (v46[0].i64[0] > v44)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    v26 = v45;
  }

  if (v26 < *&v46[0].i64[1])
  {
    goto LABEL_17;
  }

LABEL_21:
  if (v42 || (v28 = v43, (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    if (v46[0].i64[0] != v42)
    {
      if (v46[0].i64[0] <= v42)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (v28 >= *&v46[0].i64[1])
  {
    goto LABEL_35;
  }

LABEL_28:
  v29 = *(a1 + 104);
  v30 = *(a1 + 112);
  v31 = (*(*a1 + 16))(a1);
  if ((v29 || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v31 || (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v29 != v31)
  {
    if (v29 >= v31)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v30 < v32)
  {
LABEL_34:
    memset(v46, 0, 96);
    CNTimeSpan::SetTimeSpan(v46, 0, 0.0);
    v46[1].i8[0] = 0;
    v46[1].i64[1] = 0;
    v46[2].i64[0] = 0;
    CNTimeSpan::SetTimeSpan(&v46[1].u64[1], 0, 0.0);
    v46[2].i8[8] = 0;
    v46[3] = 0uLL;
    CNTimeSpan::SetTimeSpan(&v46[3], 0, 0.0);
    v46[4].i8[0] = 0;
    v46[4].i64[1] = 0;
    v46[5].i64[0] = 0;
    CNTimeSpan::SetTimeSpan(&v46[4].u64[1], 0, 0.0);
    v46[5].i64[1] = 0x7FF8000000000000;
    v33 = v46[3];
    *(a2 + 136) = v46[2];
    *(a2 + 152) = v33;
    v34 = v46[5];
    *(a2 + 168) = v46[4];
    v35 = v46[1];
    *(a2 + 104) = v46[0];
    *(a2 + 120) = v35;
    *(a2 + 184) = v34;
    v46[0] = *(a1 + 104);
    v36 = CNTimeSpan::operator+();
    *(a2 + 104) = v36;
    *(a2 + 112) = v37;
    *(a2 + 8) = v36;
    *(a2 + 16) = v37;
    v38 = (*&v41.i64[1] + v41.i64[0]) * 2.5 * ((*&v41.i64[1] + v41.i64[0]) * 2.5);
    *(a2 + 312) = *(a2 + 312) + v38;
    *(a2 + 336) = *(a2 + 336) + v38;
    *(a2 + 352) = v38 + *(a2 + 352);
  }

LABEL_35:
  if (sub_10002CEF8(a2))
  {
    sub_10002D988(a2);
  }

  v27 = *(a2 + 201) | *(a2 + 280);
  return v27 & 1;
}

uint64_t sub_10002C528(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  *a1 = 0;
  v7 = a1 + 8;
  *(a1 + 8) = &off_1004331A8;
  memcpy((a1 + 16), (a3 + 8), 0x160uLL);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = off_10043DB28;
  *(a1 + 400) &= 0xFCu;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 384) = sub_1000BC014(*(a1 + 216));
  *(a1 + 392) = sub_1000BC014(*(a1 + 224));
  *(a1 + 368) = sqrt(*(a1 + 240) + *(a1 + 264));
  v8 = *a2;
  *(a1 + 408) = *a2;
  *(a1 + 416) = v8;
  *a1 = 1;
  (*(**a4 + 16))(*a4, v7);
  (*(**a4 + 24))(v12);
  v9 = v13;
  if (v13 == 1)
  {
    v10 = v12[1];
    *(a1 + 424) = v12[0];
    *(a1 + 432) = v9;
    *(a1 + 440) = v10;
    *(a1 + 448) = v9;
  }

  return a1;
}

void sub_10002C694(_Unwind_Exception *a1)
{
  nullsub_76(v2);
  cnframework::TimestampedEvent::~TimestampedEvent(v1);
  _Unwind_Resume(a1);
}

void sub_10002C6C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DF18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) &= 0xF800u;
  sub_10012E9D4(a2, a1 + 376);
  sub_10013D0D4(a2, *(a1 + 368));
  sub_100126648(a2, *(a1 + 408));
  sub_10012A88C(a2, *(a1 + 416));
  sub_10012E9CC(a2, *(a1 + 408));
  v4 = *(a1 + 208);
  if (v4 == 14)
  {
    std::to_string(&v5, 0x80u);
    sub_10013D08C(a2, &v5);
  }

  else
  {
    if (v4 != 15)
    {
      return;
    }

    std::to_string(&v5, 0x81u);
    sub_10013D08C(a2, &v5);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_10002C7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10013CFA4(v15);
    _Unwind_Resume(a1);
  }

  sub_10013CFA4(v15);
  _Unwind_Resume(a1);
}

void sub_10002C83C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DBE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = off_10043DBC8;
  *(a2 + 184) = 0;
  *(a2 + 188) &= ~1u;
  *(a2 + 192) = 0;
  *(a2 + 194) &= 0xFCu;
  sub_10012E9D4(a2, a1 + 376);
  sub_10012EA24(a2, *(a1 + 368));
  sub_100126648(a2, *(a1 + 408));
  sub_10012A88C(a2, *(a1 + 416));
  sub_10012E9CC(a2, *(a1 + 408));
  if (*(a1 + 432) == 1)
  {
    sub_10012EA38(a2, *(a1 + 424));
  }

  if (*(a1 + 448) == 1)
  {
    sub_10012EAB8(a2, *(a1 + 440));
  }

  v4 = *(a1 + 208);
  if (v4 == 15)
  {
    std::to_string(&v5, 0x81u);
    sub_10012E9DC(a2, &v5);
  }

  else
  {
    if (v4 != 14)
    {
      return;
    }

    std::to_string(&v5, 0x80u);
    sub_10012E9DC(a2, &v5);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_10002C9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10012E8E4(v15);
    _Unwind_Resume(a1);
  }

  sub_10012E8E4(v15);
  _Unwind_Resume(a1);
}

int64x2_t *sub_10002CA50(int64x2_t *a1)
{
  a1->i64[0] = &off_1004331A8;
  a1[1].i64[0] = 0;
  a1->i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1->u64[1], 0, 0.0);
  a1[2].i64[0] = 0;
  a1[1].i8[8] = 0;
  a1[2].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[2], 0, 0.0);
  a1[3].i64[1] = 0;
  a1[3].i8[0] = 0;
  a1[4].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[3].u64[1], 0, 0.0);
  a1[5].i64[0] = 0;
  a1[4].i8[8] = 0;
  a1[5].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[5], 0, 0.0);
  a1[6].i64[1] = 0;
  a1[6].i64[0] = 0x7FF8000000000000;
  a1[7].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[6].u64[1], 0, 0.0);
  a1[8].i64[0] = 0;
  a1[7].i8[8] = 0;
  a1[8].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[8], 0, 0.0);
  a1[9].i64[1] = 0;
  a1[9].i8[0] = 0;
  a1[10].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[9].u64[1], 0, 0.0);
  a1[11].i64[0] = 0;
  a1[10].i8[8] = 0;
  a1[11].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[11], 0, 0.0);
  a1[12].i64[0] = 0x7FF8000000000000;
  a1[12].i16[4] = 0;
  a1[12].i8[10] = 0;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[13] = v2;
  a1[14] = v2;
  a1[15] = v2;
  a1[16] = v2;
  a1[17].i64[0] = 0x7FF8000000000000;
  a1[17].i8[8] = 0;
  a1[18] = v2;
  a1[19] = v2;
  a1[20] = v2;
  a1[21] = v2;
  a1[22].i64[0] = 0x7FF8000000000000;
  return a1;
}

int64x2_t *sub_10002CBB0(int64x2_t *a1)
{
  a1->i64[0] = off_100433178;
  a1[1].i64[0] = 0;
  a1->i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1->u64[1], 0, 0.0);
  a1[2].i64[0] = 0;
  a1[1].i8[8] = 0;
  a1[2].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[2], 0, 0.0);
  a1[3].i64[1] = 0;
  a1[3].i8[0] = 0;
  a1[4].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[3].u64[1], 0, 0.0);
  a1[5].i64[0] = 0;
  a1[4].i8[8] = 0;
  a1[5].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[5], 0, 0.0);
  a1[6].i64[1] = 0;
  a1[6].i64[0] = 0x7FF8000000000000;
  a1[7].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[6].u64[1], 0, 0.0);
  a1[8].i64[0] = 0;
  a1[7].i8[8] = 0;
  a1[8].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[8], 0, 0.0);
  a1[9].i64[1] = 0;
  a1[9].i8[0] = 0;
  a1[10].i64[0] = 0;
  CNTimeSpan::SetTimeSpan(&a1[9].u64[1], 0, 0.0);
  a1[11].i64[0] = 0;
  a1[10].i8[8] = 0;
  a1[11].i64[1] = 0;
  CNTimeSpan::SetTimeSpan(&a1[11], 0, 0.0);
  a1[12].i64[0] = 0x7FF8000000000000;
  cntransformation::CNRigidTransformation::CNRigidTransformation(&a1[12].u64[1]);
  cntransformation::CNRigidTransformation::CNRigidTransformation(&a1[40]);
  a1[67].i8[8] = 0;
  a1[68] = vdupq_n_s64(0x7FF8000000000000uLL);
  return a1;
}