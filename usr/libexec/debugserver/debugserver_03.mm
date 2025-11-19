double sub_10002E1B0(unsigned __int16 *a1, int a2, mach_vm_address_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  *a6 = 0;
  *a7 = 0;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && *a1 != 0xFFFF)
  {
    v13 = sub_10000D514(a2, a3);
    *a4 = v13;
    if (v13)
    {
      *a6 = sub_10000D444(a2, v13 + a1[7], a1[8], 0);
      *a7 = sub_10000D444(a2, *a4 + a1[5], a1[6], 0);
      if (*a1 < 4u)
      {
        v16 = a1[2];
        v17 = *a4 + a1[1];
        sub_10000D730(&v18);
        if ((*(a5 + 23) & 0x80000000) == 0)
        {
LABEL_13:
          result = *&v18.__r_.__value_.__l.__data_;
          *a5 = v18;
          return result;
        }
      }

      else
      {
        v15 = sub_10000D514(a2, *a4 + a1[1]);
        if (!v15)
        {
          return result;
        }

        sub_10000D678(a2, v15, &v18);
        if ((*(a5 + 23) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      operator delete(*a5);
      goto LABEL_13;
    }
  }

  return result;
}

void sub_10002E30C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100008888();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_100008888();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_10002E410@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 12))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *sub_100030344(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_100008888();
  }

  return result;
}

char *sub_100030410(uint64_t a1, char *__s1)
{
  if (*(a1 + 782) == 1)
  {
    if (__s1)
    {
      result = strstr(__s1, "thread:");
      if (result)
      {
        v4 = result + 7;

        return strtoul(v4, 0, 16);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(a1 + 544);
    if ((result + 1) <= 1)
    {
      v6 = *(a1 + 12);

      return sub_10000DE24(v6);
    }
  }

  return result;
}

uint64_t sub_10003049C(char **a1, std::string *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    __str[0] = v3;
    __str[1] = v2[1];
    __str[2] = 0;
    *__error() = 0;
    v6 = strtoul(__str, 0, 16);
    if (*__error() && v6 == 0)
    {
      break;
    }

    std::string::push_back(a2, v6);
    v2 = *a1 + 2;
    *a1 = v2;
    v3 = *v2;
    if (!*v2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_10003054C()
{
  v0 = qword_10007D998;
  v1 = qword_10007D9A0;
  if (qword_10007D9A0)
  {
    atomic_fetch_add_explicit((qword_10007D9A0 + 8), 1uLL, memory_order_relaxed);
  }

  if (v0)
  {
    result = *(v0 + 472) == -1;
    if (!v1)
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!v1)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    return v3;
  }

  return result;
}

std::string *sub_1000305EC(std::string *result, const std::string::value_type *a2)
{
  if (a2 && *a2)
  {
    return std::string::assign(&result->__r_.__value_.__r.__words[1], a2);
  }

  if (result[1].__r_.__value_.__s.__data_[7] < 0)
  {
    *result->__r_.__value_.__l.__size_ = 0;
    result->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    result->__r_.__value_.__s.__data_[8] = 0;
    result[1].__r_.__value_.__s.__data_[7] = 0;
  }

  return result;
}

BOOL sub_100030624(int a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_10000B4FC(&v10);
  if (v11 == v10)
  {
    v4 = 1;
    if (!v10)
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x2C3F35BA781948B1 * ((v11 - v10) >> 3);
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 0x2C3F35BA781948B1 * ((v11 - v10) >> 3);
    }

    if (v10[10] == a1)
    {
      v4 = 0;
    }

    else
    {
      v5 = v10 + 172;
      v6 = 1;
      do
      {
        v7 = v6;
        if (v3 == v6)
        {
          break;
        }

        v8 = *v5;
        ++v6;
        v5 += 162;
      }

      while (v8 != a1);
      v4 = v7 >= v2;
    }
  }

  v11 = v10;
  operator delete(v10);
  return v4;
}

BOOL sub_1000306E4(uint64_t a1)
{
  result = 0;
  if (sub_10000F4E8())
  {
    v2 = sub_10000F4E4(a1);
    if (v2 != getpid())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100030730(int a1, _DWORD *a2, _DWORD *a3)
{
  *v8 = 0xE00000001;
  v9 = 1;
  v10 = a1;
  v7 = 648;
  if (sysctl(v8, 4u, v11, &v7, 0, 0))
  {
    return 0;
  }

  result = geteuid();
  *a2 = result;
  if (result)
  {
    v6 = v12;
    *a3 = v12;
    return *a2 != v6;
  }

  return result;
}

void *sub_1000307F4(uint64_t *a1, int a2, const char *a3, char a4)
{
  if (a2)
  {
    v8 = *a1;
    v9 = a1 + *(*a1 - 24);
    if (*(v9 + 36) == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v16);
      v8 = *a1;
    }

    *(v9 + 36) = 32;
    *(a1 + *(v8 - 24) + 24) = a2;
    sub_100034978(a1, &unk_10005B2EA, 0);
  }

  LOBYTE(v16.__locale_) = 60;
  v11 = sub_100034978(a1, &v16, 1);
  v12 = strlen(a3);
  result = sub_100034978(v11, a3, v12);
  if ((a4 & 1) == 0)
  {
    LOBYTE(v16.__locale_) = 62;
    v14 = sub_100034978(a1, &v16, 1);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v16, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v16);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t sub_1000309BC(uint64_t *a1, int a2, const char *a3)
{
  if (a2)
  {
    v6 = *a1;
    v7 = a1 + *(*a1 - 24);
    if (*(v7 + 36) == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v8 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      (v8->__vftable[2].~facet_0)(v8, 32);
      std::locale::~locale(&v16);
      v6 = *a1;
    }

    *(v7 + 36) = 32;
    *(a1 + *(v6 - 24) + 24) = a2;
    sub_100034978(a1, &unk_10005B2EA, 0);
  }

  LOBYTE(v16.__locale_) = 60;
  v9 = sub_100034978(a1, &v16, 1);
  LOBYTE(v16.__locale_) = 47;
  v10 = sub_100034978(v9, &v16, 1);
  v11 = strlen(a3);
  v12 = sub_100034978(v10, a3, v11);
  LOBYTE(v16.__locale_) = 62;
  v13 = sub_100034978(v12, &v16, 1);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v16, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  return std::ostream::flush();
}

void *sub_100030B84(void *result, const char *a2, char *__s1, char *__s2)
{
  if (__s1)
  {
    if (!__s2 || (v6 = result, v7 = strcmp(__s1, __s2), result = v6, v7))
    {
      v14 = 32;
      v8 = sub_100034978(result, &v14, 1);
      v9 = strlen(a2);
      v10 = sub_100034978(v8, a2, v9);
      v11 = sub_100034978(v10, "=", 2);
      v12 = strlen(__s1);
      v13 = sub_100034978(v11, __s1, v12);
      return sub_100034978(v13, "", 1);
    }
  }

  return result;
}

void *sub_100030C4C(void *a1, const char *a2)
{
  v12 = 32;
  v3 = sub_100034978(a1, &v12, 1);
  v4 = strlen(a2);
  v5 = sub_100034978(v3, a2, v4);
  v6 = sub_100034978(v5, "=", 2);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 2;
  v8 = v6 + *(v7 - 24);
  if (*(v8 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v7 - 24)));
    v9 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v13);
  }

  *(v8 + 36) = 32;
  v10 = std::ostream::operator<<();
  return sub_100034978(v10, "", 1);
}

uint64_t sub_100030D9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 32);
  if (v7 == 4)
  {
    v9 = "vector";
    if (*(a5 + 8))
    {
      v8 = "vector";
    }

    else
    {
      v8 = "general";
    }
  }

  else if (v7 == 3)
  {
    if (*(a5 + 8))
    {
      v8 = "float";
    }

    else
    {
      v8 = "general";
    }

    v9 = "ieee754";
  }

  else
  {
    v8 = "general";
    if (v7 == 2)
    {
      v9 = "sint";
    }

    else
    {
      v9 = "uint";
    }
  }

  if (*(a5 + 34) - 1 > 0xB)
  {
    v12 = "int";
    v11 = "hex";
  }

  else
  {
    v10 = (*(a5 + 34) - 1);
    v11 = off_10006D010[v10];
    v12 = off_10006D070[v10];
  }

  sub_1000307F4(a1, 2, "reg", 1);
  sub_100030B84(a1, "name", *(a5 + 16), 0);
  sub_100030C4C(a1, "regnum");
  v13 = *(a5 + 4);
  sub_100030C4C(a1, "offset");
  v14 = *(a5 + 36);
  sub_100030C4C(a1, "bitsize");
  LOBYTE(v52.__locale_) = 32;
  v15 = sub_100034978(a1, &v52, 1);
  v16 = sub_100034978(v15, "group", 5);
  v17 = sub_100034978(v16, "=", 2);
  v18 = strlen(v8);
  v19 = sub_100034978(v17, v8, v18);
  sub_100034978(v19, "", 1);
  sub_100030B84(a1, "type", v12, "int");
  sub_100030B84(a1, "altname", *(a5 + 24), 0);
  sub_100030B84(a1, "encoding", v9, "uint");
  sub_100030B84(a1, "format", v11, "hex");
  v20 = *(a5 + 8);
  sub_100030C4C(a1, "group_id");
  if (*(a5 + 44) != -1)
  {
    sub_100030C4C(a1, "ehframe_regnum");
  }

  if (*(a5 + 48) != -1)
  {
    sub_100030C4C(a1, "dwarf_regnum");
  }

  v21 = *(a5 + 52);
  if (v21 > 0xC)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_10006D0D0[v21];
  }

  sub_100030B84(a1, "generic", v22, 0);
  if (*(a5 + 80) == *(a5 + 88))
  {
    v34 = *(a5 + 104);
    v35 = *(a5 + 112);
    if (v34 == v35)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v62 = 0;
    *(&v52.__locale_ + *(v52.__locale_ - 3)) = v23;
    v24 = (&v52 + *(v52.__locale_ - 3));
    std::ios_base::init(v24, &v53);
    v24[1].__vftable = 0;
    v24[1].__fmtflags_ = -1;
    std::locale::locale(&v54);
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    *__p = 0u;
    v59 = 0u;
    v60 = 16;
    sub_100034D34(&v53);
    locale = v52.__locale_;
    *(&v52 + *(v52.__locale_ - 3) + 8) = *(&v52 + *(v52.__locale_ - 3) + 8) & 0xFFFFFFB5 | 2;
    v26 = &v52 + *(locale - 3);
    if (*(v26 + 36) == -1)
    {
      std::ios_base::getloc((&v52 + *(locale - 3)));
      v27 = std::locale::use_facet(&v50, &std::ctype<char>::id);
      (v27->__vftable[2].~facet_0)(v27, 32);
      std::locale::~locale(&v50);
    }

    *(v26 + 36) = 32;
    v29 = *(a5 + 80);
    v28 = *(a5 + 88);
    if (v29 != v28)
    {
      v31 = *v29;
      v30 = v29 + 1;
      std::ostream::operator<<();
      while (v30 != v28)
      {
        v32 = *v30++;
        LOBYTE(v50.__locale_) = 44;
        sub_100034978(&v52, &v50, 1);
        std::ostream::operator<<();
      }
    }

    std::stringbuf::str();
    if (v51 >= 0)
    {
      v33 = &v50;
    }

    else
    {
      v33 = v50.__locale_;
    }

    sub_100030B84(a1, "value_regnums", v33, 0);
    if (v51 < 0)
    {
      operator delete(v50.__locale_);
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v54);
    std::ostream::~ostream();
    std::ios::~ios();
    v34 = *(a5 + 104);
    v35 = *(a5 + 112);
  }

  if (v34 != v35)
  {
    v62 = 0;
    *(&v52.__locale_ + *(v52.__locale_ - 3)) = v36;
    v37 = (&v52 + *(v52.__locale_ - 3));
    std::ios_base::init(v37, &v53);
    v37[1].__vftable = 0;
    v37[1].__fmtflags_ = -1;
    std::locale::locale(&v54);
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    *__p = 0u;
    v59 = 0u;
    v60 = 16;
    sub_100034D34(&v53);
    v38 = v52.__locale_;
    *(&v52 + *(v52.__locale_ - 3) + 8) = *(&v52 + *(v52.__locale_ - 3) + 8) & 0xFFFFFFB5 | 2;
    v39 = &v52 + *(v38 - 3);
    if (*(v39 + 36) == -1)
    {
      std::ios_base::getloc((&v52 + *(v38 - 3)));
      v40 = std::locale::use_facet(&v50, &std::ctype<char>::id);
      (v40->__vftable[2].~facet_0)(v40, 32);
      std::locale::~locale(&v50);
    }

    *(v39 + 36) = 32;
    v41 = *(a5 + 104);
    v42 = *(a5 + 112);
    if (v41 != v42)
    {
      v44 = *v41;
      v43 = v41 + 1;
      std::ostream::operator<<();
      while (v43 != v42)
      {
        v45 = *v43++;
        LOBYTE(v50.__locale_) = 44;
        sub_100034978(&v52, &v50, 1);
        std::ostream::operator<<();
      }
    }

    std::stringbuf::str();
    if (v51 >= 0)
    {
      v46 = &v50;
    }

    else
    {
      v46 = v50.__locale_;
    }

    sub_100030B84(a1, "invalidate_regnums", v46, 0);
    if (v51 < 0)
    {
      operator delete(v50.__locale_);
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v54);
    std::ostream::~ostream();
    std::ios::~ios();
  }

LABEL_52:
  LOBYTE(v52.__locale_) = 47;
  sub_100034978(a1, &v52, 1);
  LOBYTE(v52.__locale_) = 62;
  v47 = sub_100034978(a1, &v52, 1);
  std::ios_base::getloc((v47 + *(*v47 - 24)));
  v48 = std::locale::use_facet(&v52, &std::ctype<char>::id);
  (v48->__vftable[2].~facet_0)(v48, 10);
  std::locale::~locale(&v52);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_100031864(uint64_t *a1)
{
  v38 = 0;
  v2 = sub_10000E540(&v38);
  result = sub_10000E53C();
  if (!result)
  {
    return result;
  }

  v4 = result;
  LOBYTE(v27) = 60;
  v5 = sub_100034978(a1, &v27, 1);
  sub_100034978(v5, "feature", 7);
  v37 = 0;
  *(&v27 + *(v27 - 3)) = v6;
  v7 = (&v27 + *(v27 - 3));
  std::ios_base::init(v7, &v28);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::locale::locale(&v29);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  *v33 = 0u;
  v34 = 0u;
  v35 = 16;
  sub_100034D34(&v28);
  v9 = sub_100034978(&v27, "com.apple.debugserver.", 22);
  if (v4 <= 16777222)
  {
    if (v4 == 7)
    {
      v10 = v2;
      v11 = "i386";
      goto LABEL_14;
    }

    if (v4 == 12)
    {
      v10 = v2;
      v11 = "arm";
      goto LABEL_14;
    }

LABEL_13:
    v10 = v2;
    v11 = 0;
    goto LABEL_14;
  }

  if (v4 == 16777223)
  {
    v10 = v2;
    v11 = "x86_64";
    goto LABEL_14;
  }

  if (v4 == 33554444)
  {
    v10 = v2;
    v11 = "arm64_32";
    goto LABEL_14;
  }

  if (v4 != 16777228)
  {
    goto LABEL_13;
  }

  v10 = v2;
  v11 = "arm64";
LABEL_14:
  v12 = strlen(v11);
  sub_100034978(v9, v11, v12);
  std::stringbuf::str();
  if (v26 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  sub_100030B84(a1, "name", v13, 0);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(__p[0]) = 62;
  v14 = sub_100034978(a1, __p, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (qword_10007DAF0)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      sub_100030D9C(a1, v19, v16, v17, qword_10007DAE8 + (v18 << 7));
      v18 = (v19 + 1);
      v19 = v18;
    }

    while (qword_10007DAF0 > v18);
  }

  sub_1000309BC(a1, 0, "feature");
  if (v38)
  {
    sub_1000307F4(a1, 0, "groups", 0);
    if (v38 >= 2)
    {
      v20 = v10;
      v21 = 2;
      for (i = 1; i < v38; i = v21++)
      {
        sub_1000307F4(a1, 2, "group", 1);
        sub_100030C4C(a1, "id");
        sub_100030B84(a1, "name", *(v20 + 24 * i), 0);
        LOBYTE(__p[0]) = 47;
        sub_100034978(a1, __p, 1);
        LOBYTE(__p[0]) = 62;
        v23 = sub_100034978(a1, __p, 1);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(__p, &std::ctype<char>::id);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    sub_1000309BC(a1, 0, "groups");
  }

  if (SBYTE7(v34) < 0)
  {
    operator delete(v33[0]);
  }

  v28 = v8;
  std::locale::~locale(&v29);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100031EA4()
{
  v19 = 0;
  *(&v9 + *(v9 - 3)) = v0;
  v1 = (&v9 + *(v9 - 3));
  std::ios_base::init(v1, &v10);
  v1[1].__vftable = 0;
  v1[1].__fmtflags_ = -1;
  std::locale::locale(&v11);
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  *__p = 0u;
  v16 = 0u;
  v17 = 16;
  sub_100034D34(&v10);
  v2 = sub_100034978(&v9, "<?xml version=1.0?>\n<target version=1.0>", 44);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(v7, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(v7);
  std::ostream::put();
  std::ostream::flush();
  sub_100031864(&v9);
  v4 = sub_100034978(&v9, "</target>", 9);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(v7, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v7);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if (byte_10047DB1F < 0)
  {
    operator delete(xmmword_10047DB08);
  }

  xmmword_10047DB08 = *&v7[0].__locale_;
  unk_10047DB18 = v8;
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10003227C(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = a1[23];
  if (v3 >= 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  for (; v4; --v4)
  {
    v7 = *v5++;
    v6 = v7;
    v8 = (1 << v7) & 0x41800000000;
    v9 = v7 > 0x2A || v8 == 0;
    if (!v9 || v6 == 125)
    {
      std::string::push_back(a2, 125);
      LOBYTE(v6) = v6 & 0x5F;
    }

    std::string::push_back(a2, v6);
  }
}

uint64_t sub_100032330(std::string::value_type *__s, char *a2)
{
  *(&v14.__r_.__value_.__s + 23) = 1;
  LOWORD(v14.__r_.__value_.__l.__data_) = 34;
  std::string::append(&v14, __s);
  std::string::append(&v14, "");
  v3 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v4 = strstr(a2, v14.__r_.__value_.__l.__data_);
    if (!v4)
    {
      v12 = -1;
LABEL_24:
      operator delete(v14.__r_.__value_.__l.__data_);
      return v12;
    }

    size = v14.__r_.__value_.__l.__size_;
LABEL_6:
    for (i = &v4[size + 1]; ; ++i)
    {
      v7 = *(i - 1);
      if (v7 > 0x3A)
      {
        goto LABEL_20;
      }

      if (((1 << v7) & 0x100002600) == 0)
      {
        break;
      }
    }

    if (v7 != 58)
    {
LABEL_20:
      v12 = -1;
      if ((v3 & 0x80) == 0)
      {
        return v12;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v8 = *i;
      v9 = v8 > 0x20;
      v10 = (1 << v8) & 0x100002600;
      if (v9 || v10 == 0)
      {
        break;
      }

      ++i;
    }

    *__error() = 0;
    v12 = strtoul(i, 0, 10);
    if (*__error())
    {
      v12 = -1;
    }

    if ((*(&v14.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v12;
    }

    goto LABEL_24;
  }

  v4 = strstr(a2, &v14);
  if (v4)
  {
    size = v3;
    goto LABEL_6;
  }

  return -1;
}

uint64_t sub_10003247C(std::string::value_type *__s, char *a2, char *a3)
{
  *(&v18.__r_.__value_.__s + 23) = 1;
  LOWORD(v18.__r_.__value_.__l.__data_) = 34;
  std::string::append(&v18, __s);
  std::string::append(&v18, "");
  v5 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v6 = strstr(a2, v18.__r_.__value_.__l.__data_);
    if (!v6)
    {
      v15 = 0;
LABEL_26:
      operator delete(v18.__r_.__value_.__l.__data_);
      return v15;
    }

    size = v18.__r_.__value_.__l.__size_;
LABEL_6:
    for (i = &v6[size + 1]; ; ++i)
    {
      v9 = *(i - 1);
      if (v9 > 0x3A)
      {
        goto LABEL_19;
      }

      if (((1 << v9) & 0x100002600) == 0)
      {
        break;
      }
    }

    if (v9 == 58)
    {
      while (1)
      {
        v10 = *i;
        v11 = v10 > 0x20;
        v12 = (1 << v10) & 0x100002600;
        if (v11 || v12 == 0)
        {
          break;
        }

        ++i;
      }

      if (!strncmp(i, "true", 4uLL))
      {
        v16 = 1;
LABEL_25:
        *a3 = v16;
        v15 = 1;
        if ((v5 & 0x80000000) == 0)
        {
          return v15;
        }

        goto LABEL_26;
      }

      v14 = strncmp(i, "false", 5uLL);
      v15 = 0;
      if (!v14)
      {
        v16 = 0;
        goto LABEL_25;
      }
    }

    else
    {
LABEL_19:
      v15 = 0;
    }

    if ((v5 & 0x80000000) == 0)
    {
      return v15;
    }

    goto LABEL_26;
  }

  v6 = strstr(a2, &v18);
  if (v6)
  {
    size = v5;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1000325EC(std::string::value_type *__s, char *a2, uint64_t a3)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 34;
  std::string::append(&v21, __s);
  std::string::append(&v21, "");
  size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    result = strstr(a2, v21.__r_.__value_.__l.__data_);
    if (!result)
    {
LABEL_43:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_44;
    }

    size = v21.__r_.__value_.__l.__size_;
  }

  else
  {
    result = strstr(a2, &v21);
    if (!result)
    {
      return result;
    }
  }

  for (i = (size + result + 2); ; ++i)
  {
    v8 = *(i - 2);
    if (v8 > 0x3A)
    {
      goto LABEL_42;
    }

    if (((1 << v8) & 0x100002600) == 0)
    {
      break;
    }
  }

  if (v8 != 58)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v9 = *(i - 1);
    if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
    {
      break;
    }

    ++i;
  }

  if (v9 != 91)
  {
LABEL_42:
    result = 0;
    goto LABEL_43;
  }

  while (1)
  {
    v11 = *i;
    if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
    {
      break;
    }

    ++i;
  }

  if ((v11 & 0x80) == 0)
  {
    while ((_DefaultRuneLocale.__runetype[v11] & 0x400) != 0)
    {
      *__error() = 0;
      __endptr = 0;
      v19 = strtoul(i, &__endptr, 10);
      if (*__error())
      {
        goto LABEL_42;
      }

      sub_10002E30C(a3, &v19);
      v13 = __endptr;
      if (__endptr == i)
      {
        goto LABEL_42;
      }

      if (!__endptr)
      {
        goto LABEL_42;
      }

      v14 = *__endptr;
      if (!*__endptr)
      {
        goto LABEL_42;
      }

      if (v14 <= 0x20)
      {
        do
        {
          if (((1 << v14) & 0x100002600) == 0)
          {
            break;
          }

          v15 = *++v13;
          v14 = v15;
        }

        while (v15 <= 0x20);
      }

      for (i = v14 == 44 ? v13 + 1 : v13; ; ++i)
      {
        v16 = *i;
        if (v16 > 0x20 || ((1 << v16) & 0x100002600) == 0)
        {
          break;
        }
      }

      if (v16 == 93)
      {
        break;
      }

      v11 = *i;
      result = 1;
      if (*i < 0)
      {
        goto LABEL_43;
      }
    }
  }

  result = 1;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_44:
    v18 = result;
    operator delete(v21.__r_.__value_.__l.__data_);
    return v18;
  }

  return result;
}

void sub_10003282C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100034C98(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_100032A24(void *a1, __int128 *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  if (v3 >= v4)
  {
    v7 = a1[4];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100008888();
    }

    v10 = v4 - v7;
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

      sub_100008888();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[4];
    v15 = a1[5] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[4] = v16;
    a1[5] = v6;
    a1[6] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[5] = v6;
}

void sub_100032B4C(void *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100034C98(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v20 = *(a2 + 16);
  }

  v5 = a3[1];
  *&v21 = *a3;
  *(&v21 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[5];
  v7 = a1[6];
  if (v6 < v7)
  {
    v8 = *__p;
    *(v6 + 16) = v20;
    *v6 = v8;
    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    *(v6 + 24) = v21;
    v21 = 0uLL;
    v9 = v6 + 40;
LABEL_21:
    a1[5] = v9;
    goto LABEL_22;
  }

  v10 = a1[4];
  v11 = v6 - v10;
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
  v13 = v12 + 1;
  if (v12 + 1 > 0x666666666666666)
  {
    sub_100008888();
  }

  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x333333333333333)
  {
    v15 = 0x666666666666666;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 <= 0x666666666666666)
    {
      operator new();
    }

    sub_100008888();
  }

  v16 = 40 * v12;
  *v16 = *__p;
  *(v16 + 16) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  *(v16 + 24) = v21;
  v21 = 0uLL;
  v9 = 40 * v12 + 40;
  v17 = v16 - v11;
  memcpy((v16 - v11), v10, v11);
  a1[4] = v17;
  a1[5] = v9;
  a1[6] = 0;
  if (!v10)
  {
    goto LABEL_21;
  }

  operator delete(v10);
  v18 = *(&v21 + 1);
  a1[5] = v9;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_22:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100032D58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100034C98(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_100032F74(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100034C98(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_10003316C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (a4)
    {
      v5 = a3;
      v24 = 0;
      *(&v18 + *(v18 - 3)) = v6;
      v7 = (&v18 + *(v18 - 3));
      std::ios_base::init(v7, &v19);
      v7[1].__vftable = 0;
      v7[1].__fmtflags_ = -1;
      std::locale::locale(&v20);
      memset(v21, 0, sizeof(v21));
      v22 = 16;
      sub_100034D34(&v19);
      while (1)
      {
        v9 = v18;
        v10 = &v18 + *(v18 - 3);
        if (*(v10 + 36) == -1)
        {
          std::ios_base::getloc((&v18 + *(v18 - 3)));
          v11 = std::locale::use_facet(v15, &std::ctype<char>::id);
          (v11->__vftable[2].~facet_0)(v11, 32);
          std::locale::~locale(v15);
          v9 = v18;
        }

        *(v10 + 36) = 48;
        *(&v19 + *(v9 - 3)) = *(&v19 + *(v9 - 3)) & 0xFFFFFFB5 | 8;
        *(&v19 + *(v9 - 3)) = *(&v19 + *(v9 - 3)) & 0xFFFFFF4F | 0x80;
        *(v21 + *(v9 - 3)) = 2;
        v8 = *v5++;
        std::ostream::operator<<();
        if (!--v4)
        {
          if (*(a2 + 23) < 0)
          {
            sub_100034C98(v16, *a2, *(a2 + 8));
          }

          else
          {
            *v16 = *a2;
            v17 = *(a2 + 16);
          }

          operator new();
        }
      }
    }
  }

  if (*(a2 + 23) < 0)
  {
    sub_100034C98(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  operator new();
}

uint64_t sub_100033910(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__s, const char *a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  v11 = strlen(__s);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v13 = (a1 + 40);
  *(a1 + 63) = v11;
  if (v11)
  {
    memmove(v13, __s, v11);
  }

  *(v13 + v12) = 0;
  v14 = strlen(a8);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    sub_100008888();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  v16 = (a1 + 64);
  *(a1 + 87) = v14;
  if (v14)
  {
    memmove(v16, a8, v14);
  }

  *(v16 + v15) = 0;
  return a1;
}

pthread_mutex_t **sub_100033A5C(pthread_mutex_t **result, pthread_mutex_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (pthread_mutex_destroy(v2) && !pthread_mutex_unlock(v2))
    {
      pthread_mutex_destroy(v2);
    }

    operator delete();
  }

  return result;
}

void sub_100033AD8(void *a1)
{
  sub_100033EC4(a1);

  operator delete();
}

void *sub_100033B24(uint64_t a1, void *a2)
{
  sub_100034978(a2, "{", 1);
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 40))
  {
    v5 = sub_100034978(a2, "", 1);
    v6 = v4;
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
    }

    v7 = strlen(v6);
    v8 = sub_100034978(v5, v6, v7);
    sub_100034978(v8, ":", 2);
    (*(**(v4 + 24) + 32))(*(v4 + 24), a2);
    for (i = v4 + 40; i != *(a1 + 40); i += 40)
    {
      sub_100034978(a2, ",", 1);
      v12 = sub_100034978(a2, "", 1);
      v13 = i;
      if (*(i + 23) < 0)
      {
        v13 = *i;
      }

      v10 = strlen(v13);
      v11 = sub_100034978(v12, v13, v10);
      sub_100034978(v11, ":", 2);
      (*(**(i + 24) + 32))(*(i + 24), a2);
    }
  }

  return sub_100034978(a2, "}", 1);
}

void *sub_100033CE0(uint64_t a1, void *a2)
{
  sub_100034978(a2, "{", 1);
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 40))
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_100034978(a2, ",", 1);
      }

      v6 = sub_100034978(a2, "", 1);
      memset(&v22, 0, sizeof(v22));
      v7 = v4[23];
      if (v7 >= 0)
      {
        v8 = v4[23];
      }

      else
      {
        v8 = *(v4 + 1);
      }

      if (v7 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = *v4;
      }

      if (v8)
      {
        v10 = v6;
        do
        {
          v12 = *v9++;
          v11 = v12;
          v13 = (1 << v12) & 0x41800000000;
          v14 = v12 > 0x2A || v13 == 0;
          if (!v14 || v11 == 125)
          {
            std::string::push_back(&v22, 125);
            LOBYTE(v11) = v11 & 0x5F;
          }

          std::string::push_back(&v22, v11);
          --v8;
        }

        while (v8);
        v15 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        size = v22.__r_.__value_.__l.__size_;
        v17 = v22.__r_.__value_.__r.__words[0];
        v6 = v10;
      }

      else
      {
        size = 0;
        v17 = 0;
        v15 = 0;
      }

      if ((v15 & 0x80u) == 0)
      {
        v18 = &v22;
      }

      else
      {
        v18 = v17;
      }

      if ((v15 & 0x80u) == 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = size;
      }

      v20 = sub_100034978(v6, v18, v19);
      sub_100034978(v20, ":", 2);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      (*(**(v4 + 3) + 40))(*(v4 + 3), a2);
      v4 += 40;
      v5 = 1;
    }

    while (v4 != *(a1 + 40));
  }

  sub_100034978(a2, "}", 1);
  v22.__r_.__value_.__s.__data_[0] = 93;
  return sub_100034978(a2, &v22, 1);
}

void *sub_100033EC4(void *a1)
{
  *a1 = off_10006CD58;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v5 = v3 - 5;
        if (*(v3 - 17) < 0)
        {
          operator delete(*v5);
        }

        v3 -= 5;
      }

      while (v5 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_100033FBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100033FF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100034028(void *a1)
{
  *a1 = off_10006CDD0;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_100034104(void *a1)
{
  *a1 = off_10006CDD0;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void *sub_100034200(uint64_t a1, void *a2)
{
  sub_100034978(a2, "[", 1);
  v4 = *(a1 + 40) - *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 4;
    if ((v4 >> 4) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 4;
    }

    v8 = 1;
    do
    {
      (*(**(*(a1 + 32) + v5) + 32))(*(*(a1 + 32) + v5), a2);
      if (v8 < v6)
      {
        sub_100034978(a2, ",", 1);
      }

      ++v8;
      v5 += 16;
      --v7;
    }

    while (v7);
  }

  return sub_100034978(a2, "]", 1);
}

void *sub_1000342F8(uint64_t a1, void *a2)
{
  sub_100034978(a2, "[", 1);
  v4 = *(a1 + 40) - *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 4;
    if ((v4 >> 4) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 4;
    }

    v8 = 1;
    do
    {
      (*(**(*(a1 + 32) + v5) + 40))(*(*(a1 + 32) + v5), a2);
      if (v8 < v6)
      {
        sub_100034978(a2, ",", 1);
      }

      ++v8;
      v5 += 16;
      --v7;
    }

    while (v7);
  }

  return sub_100034978(a2, "]", 1);
}

uint64_t sub_1000343F0(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_100034428(uint64_t a1)
{
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1000344B0(uint64_t a1)
{
  *a1 = off_10006CE50;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10003450C(uint64_t a1)
{
  *a1 = off_10006CE50;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void *sub_100034588(uint64_t a1, void *a2)
{
  v9 = 34;
  sub_100034978(a2, &v9, 1);
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    v4 = *(a1 + 40);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v6 = *(a1 + 32);
      }

      v7 = *(v6 + i);
      if (v7 == 34)
      {
        v11 = 92;
        sub_100034978(a2, &v11, 1);
      }

      v12 = v7;
      sub_100034978(a2, &v12, 1);
    }
  }

  v10 = 34;
  return sub_100034978(a2, &v10, 1);
}

void *sub_100034670(uint64_t a1, void *a2)
{
  v10 = 34;
  sub_100034978(a2, &v10, 1);
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    v4 = *(a1 + 40);
  }

  if (v4)
  {
    for (i = 0; v4 != i; ++i)
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *(a1 + 32);
      }

      v8 = *(v7 + i);
      if (v8 > 0x29)
      {
        if (v8 != 42 && v8 != 125)
        {
          goto LABEL_15;
        }
      }

      else if (v8 - 35 >= 2)
      {
        if (v8 == 34)
        {
          v12 = 92;
          sub_100034978(a2, &v12, 1);
        }

LABEL_15:
        v15 = v8;
        v6 = &v15;
        goto LABEL_6;
      }

      v13 = 125;
      sub_100034978(a2, &v13, 1);
      v14 = v8 & 0x5F;
      v6 = &v14;
LABEL_6:
      sub_100034978(a2, v6, 1);
    }
  }

  v11 = 34;
  return sub_100034978(a2, &v11, 1);
}

void sub_1000347B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000347EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100034820(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_100034858(uint64_t a1)
{
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  operator delete();
}

void *sub_1000348AC(uint64_t a1, void *a2)
{
  if (*(a1 + 28) == 1)
  {
    return sub_100034978(a2, "true", 4);
  }

  else
  {
    return sub_100034978(a2, "false", 5);
  }
}

void sub_10003490C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100034944(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100034978(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!sub_100034AC0(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

uint64_t sub_100034AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100008888();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      v15 = v14;
      if (v19 < 0)
      {
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void *sub_100034C98(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100008888();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_100034D34(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2;
    v5 = *(a1 + 87);
    v6 = *(a1 + 96);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
LABEL_3:
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

LABEL_4:
  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_100034E44(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
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
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v11 = v3;
  }

  *v4 = 0;
  v12 = v11 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
    goto LABEL_18;
  }

  if (v12 == 2)
  {
    v13 = 170;
LABEL_18:
    *(a1 + 32) = v13;
  }

  if (v2 != v3)
  {
    do
    {
      v14 = *v2++;
      operator delete(v14);
    }

    while (v2 != v3);
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 != v16)
    {
      *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100034FCC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_100008888();
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

    sub_100008888();
  }

  v6 = *(a2 + 16);
  v7 = 8 * ((a1[1] - *a1) >> 3);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v8 = 88 * v2 + 88;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v7 + *a1 - v10;
    do
    {
      v14 = *v12;
      v15 = v12[1];
      *(v13 + 32) = *(v12 + 4);
      *v13 = v14;
      *(v13 + 16) = v15;
      v16 = *(v12 + 40);
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 40) = v16;
      *(v12 + 6) = 0;
      *(v12 + 7) = 0;
      *(v12 + 5) = 0;
      v17 = v12[4];
      *(v13 + 80) = *(v12 + 10);
      *(v13 + 64) = v17;
      *(v12 + 9) = 0;
      *(v12 + 10) = 0;
      *(v12 + 8) = 0;
      v12 = (v12 + 88);
      v13 += 88;
    }

    while (v12 != v10);
    while (1)
    {
      if (*(v9 + 87) < 0)
      {
        operator delete(*(v9 + 64));
        if (*(v9 + 63) < 0)
        {
LABEL_19:
          operator delete(*(v9 + 40));
        }
      }

      else if (*(v9 + 63) < 0)
      {
        goto LABEL_19;
      }

      v9 += 88;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void *sub_1000351B8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100008888();
  }

  return result;
}

void *sub_100035230(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_100008888();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11[0] = *v4;
  a1[1] = v4 + 1;
  return sub_100035468(a1, v11);
}

void *sub_100035468(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_100008888();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1000355FC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_100008888();
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

_BYTE *sub_10003579C(uint64_t a1, _BYTE *a2)
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
      sub_100008888();
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
  return v5 - 1;
}

void sub_100035898(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100035898(a1, *a2);
    sub_100035898(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_1000358FC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_100035A88(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_100008888();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_100008888();
  }

  __p = 0;
  v14 = v2 << 7;
  v16 = 0;
  sub_100035BB4(a1, v2 << 7, a2);
  v15 = (v2 << 7) + 128;
  sub_100035C94(a1, &__p);
  v7 = a1[1];
  v8 = v14;
  while (1)
  {
    v9 = v15;
    if (v15 == v8)
    {
      break;
    }

    v15 -= 128;
    v10 = *(v9 - 24);
    if (v10)
    {
      *(v9 - 16) = v10;
      operator delete(v10);
    }

    v11 = *(v9 - 48);
    if (v11)
    {
      *(v9 - 40) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_100035BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  v7 = *(a3 + 80);
  v6 = *(a3 + 88);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v9 = *(a3 + 104);
  v8 = *(a3 + 112);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_8:
    sub_100008888();
  }
}

void sub_100035C94(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      v11 = *(v7 + 4);
      *(v8 + 48) = *(v7 + 3);
      *(v8 + 64) = v11;
      *(v8 + 16) = v9;
      *(v8 + 32) = v10;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v7 + 5);
      *(v8 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = *(v7 + 13);
      *(v8 + 120) = v7[15];
      v7[13] = 0;
      v7[14] = 0;
      v7[15] = 0;
      v7 += 16;
      v8 += 128;
    }

    while (v7 != v4);
    do
    {
      v12 = v5[13];
      if (v12)
      {
        v5[14] = v12;
        operator delete(v12);
      }

      v13 = v5[10];
      if (v13)
      {
        v5[11] = v13;
        operator delete(v13);
      }

      v5 += 16;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t sub_100035DBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void *sub_100035ED0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100008888();
  }

  return result;
}

_BYTE *sub_100035F50(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
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

void sub_100036020(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10006CF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000360A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000360D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100036110(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100036148(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100036180(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000361B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1000361EC(void *a1, unsigned int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
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

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1000364C8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100008888();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100036640()
{
  byte_10007DAAF = 6;
  strcpy(&dword_10007DA98, "events");
  __cxa_atexit(&std::string::~string, &dword_10007DA98, &dword_100000000);
  byte_10007DAC7 = 4;
  strcpy(&dword_10007DAB0, "type");
  __cxa_atexit(&std::string::~string, &dword_10007DAB0, &dword_100000000);
  qword_10007DAD8 = 0;
  unk_10007DAE0 = 0;
  qword_10007DAD0 = 0;
  __cxa_atexit(sub_10002B3D4, &qword_10007DAD0, &dword_100000000);
  unk_10047DB18 = 0;
  xmmword_10047DB08 = 0uLL;

  return __cxa_atexit(&std::string::~string, &xmmword_10047DB08, &dword_100000000);
}

uint64_t sub_100036724(__CFArray *a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  v3 = sub_10000B4FC(&__p);
  if (v3)
  {
    v4 = v3;
    v5 = getpid();
    v6 = getuid();
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = __p + 648 * v7;
      v10 = *(v9 + 10);
      if ((a2 & 1) != 0 || *(v9 + 98) == v6)
      {
        v11 = v10 == v5 || v10 == 0;
        v12 = v11 || v9[36] == 5;
        if (!v12 && (v9[33] & 0x28) == 0)
        {
          break;
        }
      }

LABEL_4:
      v7 = v8++;
      if (v4 <= v7)
      {
        goto LABEL_29;
      }
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v24 = off_10006D148;
    theDict = Mutable;
    valuePtr = v10;
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v21 = off_10006D168;
    cf = v14;
    CFDictionarySetValue(theDict, @"pid", v14);
    CFDictionarySetValue(theDict, @"isFrontApp", kCFBooleanFalse);
    if (proc_pidpath(v10, buffer, 0x400u) < 1)
    {
      v16 = v9 + 243;
      if (!v9[243])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = strrchr(buffer, 47);
      if (v15)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = buffer;
      }

      sub_100038F00(&v19, buffer, 0x8000100u);
      if (v20)
      {
        CFDictionarySetValue(theDict, @"executablePath", v20);
      }

      sub_100038F88(&v19);
      if (!*v16)
      {
        goto LABEL_23;
      }
    }

    sub_100038F00(&v19, v16, 0x8000100u);
    CFDictionarySetValue(theDict, @"displayName", v20);
    sub_100038F88(&v19);
LABEL_23:
    CFArrayAppendValue(a1, theDict);
    v21 = off_10006D168;
    if (cf)
    {
      CFRelease(cf);
    }

    v24 = off_10006D148;
    if (theDict)
    {
      CFRelease(theDict);
    }

    goto LABEL_4;
  }

LABEL_29:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t sub_1000369E8(uint64_t result)
{
  *result = off_10006D168;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_100036A40(uint64_t result)
{
  *result = off_10006D148;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_100036A98(std::string *a1)
{
  v30 = off_10006D188;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (getuid())
  {
    v28 = off_10006D1A8;
    theString1 = SBSCopyFrontmostApplicationDisplayIdentifier();
    v2 = SBSCopyApplicationDisplayIdentifiers();
    v26 = off_10006D1C8;
    theArray = v2;
    if (v2)
    {
      v18 = a1;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v7 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v24 = off_10006D148;
          theDict = v7;
          valuePtr = 0;
          if (SBSProcessIDForDisplayIdentifier() == 1)
          {
            cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
            CFDictionarySetValue(theDict, @"pid", cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }

          if (!theString1 || !ValueAtIndex || (v8 = CFStringCompare(theString1, ValueAtIndex, 0), v9 = kCFBooleanTrue, v8))
          {
            v9 = kCFBooleanFalse;
          }

          CFDictionarySetValue(theDict, @"isFrontApp", v9);
          v10 = SBSCopyExecutablePathForDisplayIdentifier();
          cfa = v10;
          if (v10)
          {
            CFDictionarySetValue(theDict, @"executablePath", v10);
          }

          v11 = SBSCopyIconImagePathForDisplayIdentifier();
          v20 = v11;
          if (v11)
          {
            CFDictionarySetValue(theDict, @"iconPath", v11);
          }

          v12 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();
          v19 = v12;
          if (v12)
          {
            CFDictionarySetValue(theDict, @"displayName", v12);
          }

          CFArrayAppendValue(Mutable, theDict);
          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (cfa)
          {
            CFRelease(cfa);
          }

          v24 = off_10006D148;
          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }

      v26 = off_10006D1C8;
      a1 = v18;
      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    v28 = off_10006D1A8;
    if (theString1)
    {
      CFRelease(theString1);
    }
  }

  else
  {
    sub_100036724(Mutable, 1);
  }

  Data = CFPropertyListCreateData(kCFAllocatorDefault, Mutable, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v28 = off_10006D1E8;
  theString1 = Data;
  if (Data)
  {
    Length = CFDataGetLength(Data);
    BytePtr = CFDataGetBytePtr(theString1);
    if (BytePtr && Length > 0)
    {
      std::string::assign(a1, BytePtr, Length);
      v16 = 0;
    }

    else
    {
      if (sub_100010510())
      {
        sub_1000107A0("empty application property list.");
      }

      v16 = 4294967294;
    }
  }

  else
  {
    if (sub_100010510())
    {
      sub_1000107A0("serializing task list.");
    }

    v16 = 4294967293;
  }

  v28 = off_10006D1E8;
  if (theString1)
  {
    CFRelease(theString1);
  }

  v30 = off_10006D188;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t sub_100036EE0(uint64_t result)
{
  *result = off_10006D1A8;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_100036F38(uint64_t result)
{
  *result = off_10006D1C8;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_100036F90(uint64_t result)
{
  *result = off_10006D1E8;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_100036FE8(uint64_t result)
{
  *result = off_10006D188;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_100037040(uint64_t a1)
{
  *a1 = off_10006D148;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void sub_1000370B4(uint64_t a1)
{
  *a1 = off_10006D168;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void sub_100037128(uint64_t a1)
{
  *a1 = off_10006D188;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void sub_10003719C(uint64_t a1)
{
  *a1 = off_10006D1A8;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void sub_100037210(uint64_t a1)
{
  *a1 = off_10006D1C8;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void sub_100037284(uint64_t a1)
{
  *a1 = off_10006D1E8;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1000372F8(uint64_t a1, const char *a2, unsigned __int16 a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  sub_100037CA4(a1);
  *v115 = 0u;
  v116 = 0u;
  v10 = kqueue();
  if ((v10 & 0x80000000) == 0)
  {
    v100 = a5;
    if (*a2 == 42)
    {
      v11 = a2[1] == 0;
      if (!a2[1])
      {
        a2 = "localhost";
      }
    }

    else
    {
      v11 = 0;
    }

    v101 = a1;
    v113 = 0;
    v114 = 0;
    v112 = &v113;
    sub_1000120B8(a2, 0, 0, 1, 6, 0, &v110);
    v19 = v110;
    v18 = v111;
    if (v110 != v111)
    {
      do
      {
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[3];
        v118 = v19[2];
        v119 = v22;
        *&v117.ident = v20;
        *&v117.data = v21;
        v23 = v19[4];
        v24 = v19[5];
        v25 = v19[7];
        v122 = v19[6];
        v123 = v25;
        v120 = v23;
        v121 = v24;
        v26 = sub_100011F30(&v117);
        v27 = socket(v26, 1, 6);
        LODWORD(v104[0]) = v27;
        if (v27 == -1)
        {
          goto LABEL_12;
        }

        *&v125.sa_len = 1;
        setsockopt(v27, 0xFFFF, 4, &v125, 4u);
        v129 = v120;
        v130 = v121;
        v131 = v122;
        v132 = v123;
        v125 = *&v117.ident;
        v126 = *&v117.data;
        v127 = v118;
        v128 = v119;
        if (v11 || !sub_1000123DC(&v125))
        {
          v28 = sub_100011F30(&v125);
          sub_100012300(&v125, v28, a3);
        }

        else
        {
          sub_100012090(&v125, a3);
        }

        v29 = v104[0];
        v30 = sub_100011F20(&v125.sa_len);
        if (bind(v29, &v125, v30) == -1)
        {
          if (SLODWORD(v104[0]) >= 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (listen(v104[0], 5) != -1)
          {
            if (!a3)
            {
              v107[0] = sub_100011F20(&v117);
              if (getsockname(v104[0], &v117, v107))
              {
                a3 = 0;
              }

              else
              {
                a3 = sub_100012068(&v117);
              }
            }

            *v107 = v104;
            v31 = sub_10003876C(&v112, v104);
            v33 = v118;
            v32 = v119;
            v34 = *&v117.data;
            *(v31 + 5) = *&v117.ident;
            v36 = v122;
            v35 = v123;
            v37 = v121;
            *(v31 + 13) = v120;
            *(v31 + 15) = v37;
            *(v31 + 17) = v36;
            *(v31 + 19) = v35;
            *(v31 + 7) = v34;
            *(v31 + 9) = v33;
            *(v31 + 11) = v32;
            goto LABEL_11;
          }

          if (SLODWORD(v104[0]) >= 1)
          {
LABEL_24:
            *__error() = 0;
            close(v104[0]);
            LODWORD(v104[0]) = -1;
          }
        }

LABEL_11:
        nullsub_1(&v125);
LABEL_12:
        nullsub_1(&v117);
        v19 += 8;
      }

      while (v19 != v18);
    }

    v38 = v114;
    if (!v114)
    {
      LODWORD(v115[0]) = *__error();
      HIDWORD(v115[0]) = 2;
      if (SHIBYTE(v116) < 0)
      {
        *v115[1] = 0;
        *&v116 = 0;
      }

      else
      {
        LOBYTE(v115[1]) = 0;
        HIBYTE(v116) = 0;
      }

      sub_1000103F8(v115, "::listen or ::bind failed", v40, v41, v42, v43, v44, v45, v99);
      v93 = 1;
      v95 = v110;
      if (!v110)
      {
        goto LABEL_126;
      }

      goto LABEL_122;
    }

    if (a4)
    {
      a4(v100, a3);
      v39 = a1;
      v38 = v114;
      *v107 = 0;
      v108 = 0;
      v109 = 0;
      if (!v114)
      {
LABEL_37:
        v46 = v112;
        if (v112 != &v113)
        {
          v47 = 0;
          do
          {
            v48 = *(v46 + 8);
            v121 = *(v46 + 7);
            v122 = v48;
            v123 = *(v46 + 9);
            v124 = *(v46 + 20);
            v49 = *(v46 + 3);
            v50 = *(v46 + 5);
            v51 = *(v46 + 6);
            v118 = *(v46 + 4);
            v119 = v50;
            v120 = v51;
            *&v117.ident = *(v46 + 2);
            *&v117.data = v49;
            v52 = *v107 + 32 * v47;
            *v52 = SLODWORD(v117.ident);
            *(v52 + 8) = 0x1FFFF;
            *(v52 + 20) = 0;
            *(v52 + 12) = 0;
            *(v52 + 28) = 0;
            nullsub_1(&v117.filter);
            v53 = *(v46 + 1);
            if (v53)
            {
              do
              {
                v54 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = *(v46 + 2);
                v55 = *v54 == v46;
                v46 = v54;
              }

              while (!v55);
            }

            ++v47;
            v46 = v54;
          }

          while (v54 != &v113);
        }

        while (1)
        {
          *__error() = 0;
          v56 = kevent(v10, *v107, (v108 - *v107) >> 5, &v117, 4, 0);
          if (v56 == -1)
          {
            if (*__error() != 35 && *__error() != 35 && *__error() != 4)
            {
              goto LABEL_94;
            }
          }

          else
          {
            if ((v56 & 0x80000000) == 0)
            {
              if (!v56)
              {
                goto LABEL_98;
              }

              v57 = 0;
              v58 = 0;
              v59 = v56;
              while (2)
              {
                v60 = v113;
                if (v113)
                {
                  v61 = *(&v117.ident + 8 * v57);
                  v62 = &v113;
                  do
                  {
                    if (*(v60 + 8) >= v61)
                    {
                      v62 = v60;
                    }

                    v60 = *&v60[8 * (*(v60 + 8) < v61)];
                  }

                  while (v60);
                  if (v62 != &v113 && *(v62 + 8) <= v61)
                  {
                    sub_100011F08(&v125);
                    v106 = sub_100011F28();
                    v63 = accept(v61, &v125, &v106);
                    *v39 = v63;
                    if (v63 == -1)
                    {
                      LODWORD(v115[0]) = *__error();
                      HIDWORD(v115[0]) = 2;
                      if (SHIBYTE(v116) < 0)
                      {
                        *v115[1] = 0;
                        *&v116 = 0;
                      }

                      else
                      {
                        LOBYTE(v115[1]) = 0;
                        HIBYTE(v116) = 0;
                      }

                      sub_1000103F8(v115, "error: Socket accept failed.", v64, v65, v66, v67, v68, v69, v99);
                    }

                    if (sub_100012370((v62 + 40)) || sub_100012420(&v125.sa_len, v62 + 40))
                    {
                      v58 = 1;
                    }

                    else
                    {
                      close(*v39);
                      *v39 = -1;
                      v70 = __stderrp;
                      sub_100011F38(&v125, v104);
                      v71 = v105;
                      v72 = v104[0];
                      sub_100011F38((v62 + 40), __p);
                      v73 = v104;
                      if (v71 < 0)
                      {
                        v73 = v72;
                      }

                      if (v103 >= 0)
                      {
                        v74 = __p;
                      }

                      else
                      {
                        v74 = __p[0];
                      }

                      fprintf(v70, "error: rejecting incoming connection from %s (expecting %s)\n", v73, v74);
                      if (v103 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v39 = v101;
                      if (v105 < 0)
                      {
                        operator delete(v104[0]);
                      }

                      if (sub_100010510())
                      {
                        sub_100011F38(&v125, v104);
                        v75 = v105;
                        v76 = v104[0];
                        sub_100011F38((v62 + 40), __p);
                        v77 = v104;
                        if (v75 < 0)
                        {
                          v77 = v76;
                        }

                        if (v103 >= 0)
                        {
                          v78 = __p;
                        }

                        else
                        {
                          v78 = __p[0];
                        }

                        sub_100010668("error: rejecting connection from %s (expecting %s)\n", v77, v78);
                        if (v103 < 0)
                        {
                          operator delete(__p[0]);
                          if ((v105 & 0x80000000) == 0)
                          {
                            goto LABEL_89;
                          }
                        }

                        else if ((v105 & 0x80000000) == 0)
                        {
                          goto LABEL_89;
                        }

                        operator delete(v104[0]);
                      }

LABEL_89:
                      v115[0] = 0;
                      if (SHIBYTE(v116) < 0)
                      {
                        *v115[1] = 0;
                        *&v116 = 0;
                      }

                      else
                      {
                        LOBYTE(v115[1]) = 0;
                        HIBYTE(v116) = 0;
                      }
                    }

                    nullsub_1(&v125);
                  }
                }

                if (++v57 == v59)
                {
                  goto LABEL_99;
                }

                continue;
              }
            }

LABEL_94:
            LODWORD(v115[0]) = *__error();
            HIDWORD(v115[0]) = 1;
            if (SHIBYTE(v116) < 0)
            {
              *v115[1] = 0;
              *&v116 = 0;
            }

            else
            {
              LOBYTE(v115[1]) = 0;
              HIBYTE(v116) = 0;
            }

            sub_1000103F8(v115, "error: kevent() failed.", v79, v80, v81, v82, v83, v84, v99);
LABEL_98:
            v58 = 0;
LABEL_99:
            if (LODWORD(v115[0]) || (v58 & 1) != 0)
            {
              v85 = v112;
              if (v112 != &v113)
              {
                do
                {
                  v86 = *(v85 + 8);
                  v121 = *(v85 + 7);
                  v122 = v86;
                  v123 = *(v85 + 9);
                  v124 = *(v85 + 20);
                  v87 = *(v85 + 3);
                  v88 = *(v85 + 5);
                  v89 = *(v85 + 6);
                  v118 = *(v85 + 4);
                  v119 = v88;
                  v120 = v89;
                  *&v117.ident = *(v85 + 2);
                  *&v117.data = v87;
                  ident = v117.ident;
                  if (SLODWORD(v117.ident) >= 1)
                  {
                    *__error() = 0;
                    close(ident);
                  }

                  nullsub_1(&v117.filter);
                  v91 = *(v85 + 1);
                  if (v91)
                  {
                    do
                    {
                      v92 = v91;
                      v91 = *v91;
                    }

                    while (v91);
                  }

                  else
                  {
                    do
                    {
                      v92 = *(v85 + 2);
                      v55 = *v92 == v85;
                      v85 = v92;
                    }

                    while (!v55);
                  }

                  v85 = v92;
                }

                while (v92 != &v113);
              }

              v93 = 1;
              if (!LODWORD(v115[0]))
              {
                v94 = *v39;
                LODWORD(v117.ident) = 1;
                setsockopt(v94, 6, 1, &v117, 4u);
                v93 = 0;
              }

              if (*v107)
              {
                v108 = *v107;
                operator delete(*v107);
              }

              v95 = v110;
              if (!v110)
              {
LABEL_126:
                sub_10003870C(&v112, v113);
                if (SHIBYTE(v116) < 0)
                {
                  goto LABEL_127;
                }

                return v93;
              }

LABEL_122:
              v96 = v111;
              v97 = v95;
              if (v111 != v95)
              {
                do
                {
                  v96 = nullsub_1(v96 - 128);
                }

                while (v96 != v95);
                v97 = v110;
              }

              v111 = v95;
              operator delete(v97);
              goto LABEL_126;
            }
          }
        }
      }
    }

    else
    {
      *v107 = 0;
      v108 = 0;
      v109 = 0;
      v39 = a1;
    }

    sub_10003890C(v107, v38);
    goto LABEL_37;
  }

  LODWORD(v115[0]) = *__error();
  HIDWORD(v115[0]) = 1;
  if (SHIBYTE(v116) < 0)
  {
    *v115[1] = 0;
    *&v116 = 0;
  }

  else
  {
    LOBYTE(v115[1]) = 0;
    HIBYTE(v116) = 0;
  }

  sub_1000103F8(v115, "error: failed to create kqueue.", v12, v13, v14, v15, v16, v17, v99);
  v93 = 1;
  if (SHIBYTE(v116) < 0)
  {
LABEL_127:
    operator delete(v115[1]);
  }

  return v93;
}

void sub_100037BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100037D5C(&a29);
  sub_10003870C(&a32, a33);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100037CA4(uint64_t a1)
{
  if (*(a1 + 4) == 1)
  {
    if (*(a1 + 5) == 1)
    {
      close(*a1);
      sleep(0x1Eu);
      *a1 = -1;
      *(a1 + 4) = 0;
      result = sub_100010510();
      if (!result)
      {
        return result;
      }

      sub_100010544(0, "Shutting down secure socket proxy, SSP finish-callback didn't kill debugserver.", v3, v4, v5, v6, v7, v8, v11);
    }

    else
    {
      *(a1 + 4) = 0;
      *a1 = -1;
      v10 = *(a1 + 8);
      lockdown_disconnect();
    }
  }

  else if (*a1 >= 1)
  {
    *__error() = 0;
    v9 = close(*a1);
    *a1 = -1;
    return v9 != 0;
  }

  return 0;
}

void **sub_100037D5C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = nullsub_1(v3 - 128);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100037DB8(int *a1, const char *a2, unsigned int a3)
{
  sub_100037CA4(a1);
  sub_1000120B8(a2, 0, 0, 1, 6, 0, &__p);
  v6 = __p;
  v7 = v25;
  v8 = 1;
  if (__p == v25)
  {
LABEL_8:
    v19 = __p;
    if (__p)
    {
      goto LABEL_9;
    }

    return v8;
  }

  while (1)
  {
    v9 = *v6;
    v10 = v6[1];
    v11 = v6[3];
    v29 = v6[2];
    v30 = v11;
    v27 = v9;
    v28 = v10;
    v12 = v6[4];
    v13 = v6[5];
    v14 = v6[7];
    v33 = v6[6];
    v34 = v14;
    v31 = v12;
    v32 = v13;
    v15 = sub_100011F30(&v27);
    v16 = socket(v15, 1, 6);
    *a1 = v16;
    if (v16 != -1)
    {
      break;
    }

LABEL_3:
    nullsub_1(&v27);
    v6 += 8;
    if (v6 == v7)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v26 = 1;
  setsockopt(v16, 0xFFFF, 4, &v26, 4u);
  sub_100012090(&v27, a3);
  v17 = *a1;
  v18 = sub_100011F20(&v27.sa_len);
  if (connect(v17, &v27, v18) == -1)
  {
    sub_100037CA4(a1);
    goto LABEL_3;
  }

  v23 = *a1;
  v26 = 1;
  setsockopt(v23, 6, 1, &v26, 4u);
  nullsub_1(&v27);
  v8 = 0;
  v19 = __p;
  if (!__p)
  {
    return v8;
  }

LABEL_9:
  v20 = v25;
  v21 = v19;
  if (v25 != v19)
  {
    do
    {
      v20 = nullsub_1(v20 - 128);
    }

    while (v20 != v19);
    v21 = __p;
  }

  v25 = v19;
  operator delete(v21);
  return v8;
}

void sub_100037F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  nullsub_1(&a13);
  sub_100037D5C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100037FA8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    if (sub_100010524(0x80000))
    {
      sub_100010668("Bad file descriptor passed in.", v2, v3);
    }

    return 1;
  }

  else
  {
    result = 0;
    *a1 = a2;
  }

  return result;
}

uint64_t sub_100037FF0(uint64_t a1, int a2)
{
  if (sub_100010510())
  {
    sub_100010544(0, "Connecting to com.apple.%s service...", v4, v5, v6, v7, v8, v9, "debugserver");
  }

  sub_100037CA4(a1);
  if (secure_lockdown_checkin())
  {
    if (sub_100010524(0x80000))
    {
      sub_100010668("::secure_lockdown_checkin(&m_fd, NULL, NULL) failed");
    }

    *a1 = -1;
    return 2;
  }

  if (a2)
  {
    v19 = *(a1 + 8);
    lockdown_get_socket();
    *a1 = DVTSecureSocketProxy_Create();
    *(a1 + 5) = 1;
    if (sub_100010510())
    {
      sub_100010544(0, "Using secure socket proxy.", v11, v12, v13, v14, v15, v16, v18);
    }

    if (*a1 != -1)
    {
      goto LABEL_12;
    }

LABEL_14:
    if (sub_100010524(0x80000))
    {
      sub_100010668("::lockdown_get_socket() failed");
    }

    return 2;
  }

  socket = lockdown_get_socket();
  *a1 = socket;
  *(a1 + 5) = 0;
  if (socket == -1)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = 0;
  *(a1 + 4) = 1;
  return result;
}

void sub_1000381EC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  lockdown_disconnect();
  if (sub_100010510())
  {
    sub_100010544(0, "debugserver secure socket proxy finish-block shut down.", v2, v3, v4, v5, v6, v7, vars0);
    if (!sub_100010510())
    {
LABEL_3:
      _exit(0);
    }
  }

  else if (!sub_100010510())
  {
    goto LABEL_3;
  }

  sub_100010544(0, "debugserver expedited exit.", v8, v9, v10, v11, v12, v13, vars0);
  _exit(0);
}

uint64_t sub_10003824C(int *a1, char *a2)
{
  v2 = a2;
  *__p = 0u;
  v13 = 0u;
  v4 = open(a2, 2);
  *a1 = v4;
  if (v4 == -1)
  {
    LODWORD(__p[0]) = *__error();
    HIDWORD(__p[0]) = 2;
    LOBYTE(__p[1]) = 0;
    HIBYTE(v13) = 0;
    sub_1000103F8(__p, "can't open file '%s'", v6, v7, v8, v9, v10, v11, v2);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[1]);
    }

    return 2;
  }

  else
  {
    if (!tcgetattr(v4, &v14))
    {
      v14.c_lflag &= 0xFFFFFFFFFFFFFEF7;
      tcsetattr(*a1, 0, &v14);
    }

    return 0;
  }
}

void sub_100038344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100038360(int *a1, uint64_t a2)
{
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

  if (*a1 == -1)
  {
    return 1;
  }

  *__p = 0u;
  v22 = 0u;
  while (1)
  {
    *__error() = 0;
    v4 = read(*a1, __s, 0x400uLL);
    v5 = v4;
    if (v4 != -1)
    {
      break;
    }

    if (*__error() != 35 && *__error() != 35 && *__error() != 4)
    {
      goto LABEL_14;
    }
  }

  if (v4 > 0)
  {
    std::string::append(a2, __s, v4);
    goto LABEL_15;
  }

LABEL_14:
  LODWORD(__p[0]) = *__error();
  HIDWORD(__p[0]) = 2;
  LOBYTE(__p[1]) = 0;
  HIBYTE(v22) = 0;
  if (LODWORD(__p[0]))
  {
    goto LABEL_16;
  }

LABEL_15:
  if (!sub_1000104C8(0x80000))
  {
    goto LABEL_17;
  }

LABEL_16:
  sub_1000103F8(__p, "::read(%i, %p, %llu) => %i", v7, v8, v9, v10, v11, v12, *a1);
LABEL_17:
  if ((v5 + 1) >= 2)
  {
    while (1)
    {
      v13 = *(a2 + 23);
      if (v13 < 0)
      {
        v14 = *(a2 + 8);
        if (!v14)
        {
          break;
        }
      }

      else
      {
        if (!*(a2 + 23))
        {
          break;
        }

        v14 = *(a2 + 23);
      }

      v15 = v13 >= 0 ? a2 : *a2;
      v16 = *(v15 + v14 - 1);
      if (!(v16 < 0 ? __maskrune(v16, 0x4000uLL) : _DefaultRuneLocale.__runetype[v16] & 0x4000))
      {
        break;
      }

      v18 = *(a2 + 23);
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 8);
      }

      std::string::erase(a2, v18 - 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    result = sub_100010524(0x80000);
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      sub_100010668("read: %s", v19);
      result = 0;
    }
  }

  else
  {
    if (v5)
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    *a1 = -1;
  }

  if (SHIBYTE(v22) < 0)
  {
    v20 = result;
    operator delete(__p[1]);
    return v20;
  }

  return result;
}

void sub_1000385AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000385D0(int *a1, const void *a2, size_t a3)
{
  v4 = *a1;
  if (v4 == -1)
  {
    return 1;
  }

  *__p = 0u;
  v17 = 0u;
  v7 = write(v4, a2, a3);
  if (v7 < 0 && (LODWORD(__p[0]) = *__error(), HIDWORD(__p[0]) = 2, LOBYTE(__p[1]) = 0, HIBYTE(v17) = 0, LODWORD(__p[0])) || sub_1000104C8(0x80000))
  {
    sub_1000103F8(__p, "::write(socket = %i, buffer = %p, length = %llu) => %i", v8, v9, v10, v11, v12, v13, *a1);
  }

  result = 1;
  if ((v7 & 0x8000000000000000) == 0 && v7 == a3)
  {
    if (sub_100010524(0x800000))
    {
      sub_100010668("putpkt: %*s", a3, a2);
    }

    result = sub_100010524(0x80000);
    if (result)
    {
      sub_100010668("sent: %*s", a3, a2);
      result = 0;
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    v15 = result;
    operator delete(__p[1]);
    return v15;
  }

  return result;
}

void sub_1000386E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003870C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10003870C(a1, *a2);
    sub_10003870C(a1, a2[1]);
    nullsub_1(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *sub_10003876C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_100038878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000388C0(va);
  _Unwind_Resume(a1);
}

void sub_10003888C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

char **sub_1000388C0(char **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      nullsub_1(v1 + 40);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_10003890C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 5)
  {
    if (a2)
    {
      v10 = 32 * a2;
      bzero(*(a1 + 8), 32 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 5) + a2;
    if (v7 >> 59)
    {
      sub_100038A60();
    }

    v8 = v3 - v5;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_10003888C();
    }

    v11 = (32 * (v6 >> 5));
    v12 = 32 * a2;
    bzero(v11, 32 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_100038A78(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100038AD4(exception, a1);
}

std::logic_error *sub_100038AD4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

char *sub_100038B08(int a1)
{
  if ((a1 - 1) > 0x1E)
  {
    return 0;
  }

  else
  {
    return off_10006D258[a1 - 1];
  }
}

BOOL sub_100038B2C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  sub_100038EE0(&v12, 0);
  sub_100039054(&v12, a2);
  if (filePath)
  {
    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 1u);
    v7 = *(a1 + 24);
    if (v7 == v6)
    {
      v6 = *(a1 + 24);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v7)
      {
        CFRelease(v7);
      }

      *(a1 + 24) = v6;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v8 = CFBundleCreate(kCFAllocatorDefault, v6);
    v9 = *(a1 + 8);
    if (v9 != v8)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      *(a1 + 8) = v8;
    }
  }

LABEL_16:
  v10 = *(a1 + 8) != 0;
  sub_100038F88(&v12);
  return v10;
}

void *sub_100038C28(void *result, const char *a2)
{
  *result = off_10006D360;
  result[1] = 0;
  result[2] = off_10006CCA0;
  result[3] = 0;
  if (a2)
  {
    if (*a2)
    {
      v2 = result;
      sub_100038B2C(result, a2);
      return v2;
    }
  }

  return result;
}

void *sub_100038C9C(void *a1)
{
  *a1 = off_10006D360;
  a1[2] = off_10006CCA0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  *a1 = off_10006D380;
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
    a1[1] = 0;
  }

  return a1;
}

void sub_100038D38(void *a1)
{
  *a1 = off_10006D360;
  a1[2] = off_10006CCA0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  *a1 = off_10006D380;
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
    a1[1] = 0;
  }

  operator delete();
}

__CFBundle *sub_100038DF4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return CFBundleGetIdentifier(result);
  }

  return result;
}

__CFBundle *sub_100038E04(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return CFBundleCopyExecutableURL(result);
  }

  return result;
}

uint64_t sub_100038E14(uint64_t result)
{
  *result = off_10006D380;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_100038E6C(uint64_t a1)
{
  *a1 = off_10006D380;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

void *sub_100038EE0(void *result, uint64_t a2)
{
  *result = off_10006D3A0;
  result[1] = a2;
  return result;
}

void *sub_100038F00(void *result, const char *a2, CFStringEncoding a3)
{
  *result = off_10006D3A0;
  result[1] = 0;
  if (a2)
  {
    if (*a2)
    {
      v3 = result;
      v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, a3);
      result = v3;
      v5 = v3[1];
      if (v5 != v4)
      {
        if (v5)
        {
          CFRelease(v3[1]);
          result = v3;
        }

        result[1] = v4;
      }
    }
  }

  return result;
}

uint64_t sub_100038F88(uint64_t result)
{
  *result = off_10006D1A8;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_100038FE0(uint64_t a1)
{
  *a1 = off_10006D1A8;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

CFStringRef sub_100039054(uint64_t a1, const char *a2)
{
  if (a2 && *a2)
  {
    result = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, a2);
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4 == result)
  {
    return *(a1 + 8);
  }

  if (v4)
  {
    v5 = result;
    CFRelease(*(a1 + 8));
    result = v5;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000390C4(const char *a1, uint64_t a2)
{
  if (glob(a1, 2048, 0, &v4))
  {
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
  }

  else
  {
    std::string::assign(a2, *v4.gl_pathv);
    globfree(&v4);
  }

  if (*(a2 + 23) >= 0)
  {
    return a2;
  }

  else
  {
    return *a2;
  }
}

const __CFString *sub_10003914C(const __CFString *result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  Length = CFStringGetLength(result);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding < 1)
  {
    return 0;
  }

  std::string::resize(a2, MaximumSizeForEncoding, 0);
  v6 = *(a2 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v7 = a2;
      goto LABEL_8;
    }

    return 0;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *a2;
LABEL_8:
  if (!CFStringGetCString(v3, v7, v6, 0x8000100u))
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = strlen(v8);
  std::string::resize(a2, v9, 0);
  if (*(a2 + 23) >= 0)
  {
    return a2;
  }

  else
  {
    return *a2;
  }
}

uint64_t sub_100039210(uint64_t a1)
{
  *(a1 + 88) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *a1 = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_diagnostic_for_pid");
  *(a1 + 8) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_iterate_processes");
  *(a1 + 16) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_iterate_breadcrumbs");
  *(a1 + 24) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_iterate_messages");
  *(a1 + 32) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_iterate_activities");
  *(a1 + 40) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_trace_get_type");
  *(a1 + 48) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_trace_copy_formatted_message");
  *(a1 + 56) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_for_thread");
  *(a1 + 64) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_for_task_thread");
  *(a1 + 72) = dlsym(0xFFFFFFFFFFFFFFFELL, "os_activity_messages_for_thread");
  return a1;
}

uint64_t sub_100039328@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _BYTE *a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  if (!*(result + 96) && (*(result + 128) & 1) == 0)
  {
    v7 = result;
    v8 = a3;
    v9 = a6;
    v10 = a7;
    sub_1000393E8(result, a2, a4, a5);
    a3 = v8;
    a7 = v10;
    result = v7;
    a6 = v9;
  }

  v11 = *(result + 88);
  if (v11)
  {
    v12 = (result + 88);
    do
    {
      v13 = v11[4];
      v14 = v13 >= a3;
      v15 = v13 < a3;
      if (v14)
      {
        v12 = v11;
      }

      v11 = v11[v15];
    }

    while (v11);
    if (v12 != (result + 88) && v12[4] <= a3)
    {
      v17 = v12[5];
      v16 = v12[6];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      *a7 = v17;
      a7[1] = v16;
    }
  }

  *a6 = *(result + 128);
  return result;
}

void sub_1000393E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!*a1 || !*(a1 + 8) || !*(a1 + 16) || !*(a1 + 24) || !*(a1 + 32) || !*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56) && !*(a1 + 64))
  {
    return;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = dispatch_semaphore_create(0);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x4002000000;
  v48[3] = sub_100039B40;
  v48[4] = sub_100039B64;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4002000000;
  v43 = sub_100039BF0;
  v44 = sub_100039C14;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x4002000000;
  v36[3] = sub_100039CBC;
  v36[4] = sub_100039CE0;
  __p = 0;
  v38 = 0;
  v39 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4002000000;
  v32 = sub_100039D6C;
  v35[0] = 0;
  v35[1] = 0;
  v33 = sub_100039DA8;
  v34 = v35;
  v8 = *a1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100039DB4;
  v26[3] = &unk_10006D4A0;
  v26[4] = v48;
  v26[5] = &v40;
  v26[9] = a1;
  v26[10] = a3;
  v27 = a2;
  v28 = a4;
  v26[6] = v36;
  v26[7] = &v29;
  v26[8] = &v52;
  if (v8(a2, 0, 9, v26) && (v9 = dispatch_time(0, 500000000), dispatch_semaphore_wait(v53[3], v9)))
  {
    *(a1 + 128) = 1;
  }

  else
  {
    v10 = v30[5];
    if (v10 != v30 + 6)
    {
      do
      {
        v12 = v41[5];
        v11 = v41[6];
        if (v12 != v11)
        {
          v13 = v10[4];
          do
          {
            if (*(v12 + 8) == v10[5])
            {
              operator new();
            }

            v12 += 72;
          }

          while (v12 != v11);
        }

        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v10[2];
            v16 = *v15 == v10;
            v10 = v15;
          }

          while (!v16);
        }

        v10 = v15;
      }

      while (v15 != v30 + 6);
    }
  }

  _Block_object_dispose(&v29, 8);
  sub_100008ED0(&v34, v35[0]);
  _Block_object_dispose(v36, 8);
  v17 = __p;
  if (__p)
  {
    v18 = v38;
    v19 = __p;
    if (v38 != __p)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 3));
        }

        v18 -= 8;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v38 = v17;
    operator delete(v19);
  }

  _Block_object_dispose(&v40, 8);
  v20 = v45;
  if (v45)
  {
    v21 = v46;
    v22 = v45;
    if (v46 == v45)
    {
LABEL_46:
      v46 = v20;
      operator delete(v22);
      goto LABEL_47;
    }

    while (1)
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 3));
        if (*(v21 - 25) < 0)
        {
LABEL_44:
          operator delete(*(v21 - 6));
        }
      }

      else if (*(v21 - 25) < 0)
      {
        goto LABEL_44;
      }

      v21 -= 9;
      if (v21 == v20)
      {
        v22 = v45;
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  _Block_object_dispose(v48, 8);
  v23 = v49;
  if (v49)
  {
    v24 = v50;
    v25 = v49;
    if (v50 != v49)
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
        }

        v24 -= 6;
      }

      while (v24 != v23);
      v25 = v49;
    }

    v50 = v23;
    operator delete(v25);
  }

  _Block_object_dispose(&v52, 8);
}

void sub_100039B08(uint64_t a1)
{
  v1 = a1 + 88;
  sub_10003ABF0(a1 + 80, *(a1 + 88));
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
  *(v1 + 40) = 0;
}

__n128 sub_100039B40(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_100039B64(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 48;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

__n128 sub_100039BF0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_100039C14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  if (v3 != v1)
  {
    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 48));
        }
      }

      else if (*(v3 - 25) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v1)
      {
        v4 = *(a1 + 40);
        break;
      }
    }
  }

  *(a1 + 48) = v1;

  operator delete(v4);
}

__n128 sub_100039CBC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_100039CE0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 64;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

void *sub_100039D6C(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

intptr_t sub_100039DB4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v8[0] = _NSConcreteStackBlock;
    v4 = *(a1 + 72);
    v5 = *(*(a1 + 72) + 8);
    v8[1] = 1107296256;
    v8[2] = sub_100039E68;
    v8[3] = &unk_10006D470;
    v11 = v4;
    v12 = *(a1 + 88);
    v6 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = v6;
    v5(a2, v8);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 64) + 8) + 24));
}

uint64_t sub_100039E68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == *(a2 + 56))
  {
    v3 = *(a1 + 64);
    v4 = *(v3 + 16);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = sub_10003A1EC;
    v32[3] = &unk_10006D3B0;
    v32[4] = *(a1 + 32);
    v4(a2, v32);
    v5 = *(v3 + 32);
    v6 = *(a2 + 16);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 1107296256;
    v31[2] = sub_10003A2DC;
    v31[3] = &unk_10006D3E0;
    v31[4] = *(a1 + 40);
    v5(v6, a2, v31);
    v7 = *(v3 + 24);
    v8 = *(a2 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 1107296256;
    v30[2] = sub_10003A418;
    v30[3] = &unk_10006D410;
    v30[4] = *(a1 + 48);
    v30[5] = v3;
    v7(v8, a2, v30);
    v9 = sub_100050620(*(a1 + 72));
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = sub_100050660(*(a1 + 72), i);
        v13 = *(v3 + 64);
        if (v13)
        {
          v14 = v13(*(a1 + 84), v12);
          if (v14)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v15 = *(v3 + 56);
          if (v15)
          {
            v14 = v15(a2, v12);
            if (v14)
            {
LABEL_11:
              v16 = *(*(*(a1 + 56) + 8) + 48);
              if (!v16)
              {
LABEL_17:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v17 = v16;
                  v18 = v16[4];
                  if (v12 >= v18)
                  {
                    break;
                  }

                  v16 = *v17;
                  if (!*v17)
                  {
                    goto LABEL_17;
                  }
                }

                if (v18 >= v12)
                {
                  break;
                }

                v16 = v17[1];
                if (!v16)
                {
                  goto LABEL_17;
                }
              }

              v17[5] = v14;
            }
          }
        }
      }
    }

    if (*(a2 + 16))
    {
      v19 = *(*(a1 + 56) + 8);
      if (v19[7])
      {
        v20 = v19[5];
        if (v20 != v19 + 6)
        {
          do
          {
            v21 = v20[5];
            v22 = (*(v3 + 72))(a2, v21, v20[4]);
            v23 = *(v3 + 24);
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 1107296256;
            v29[2] = sub_10003A7C8;
            v29[3] = &unk_10006D440;
            v29[5] = v3;
            v29[6] = v21;
            v29[4] = *(a1 + 48);
            v23(v22, a2, v29);
            v24 = v20[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v20[2];
                v26 = *v25 == v20;
                v20 = v25;
              }

              while (!v26);
            }

            v20 = v25;
          }

          while (v25 != (*(*(a1 + 56) + 8) + 48));
        }
      }
    }
  }

  return 1;
}

uint64_t sub_10003A1EC(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  *v10 = *a2;
  *&v10[8] = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v3)
  {
    std::string::assign(&__p, v3);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = v4[6];
  if (v5 >= v4[7])
  {
    v8 = sub_10003AC8C(v4 + 5, v10);
  }

  else
  {
    v6 = *v10;
    *(v5 + 16) = *&v10[16];
    *v5 = v6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100034C98((v5 + 24), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = *&__p.__r_.__value_.__l.__data_;
      *(v5 + 40) = *(&__p.__r_.__value_.__l + 2);
      *(v5 + 24) = v7;
    }

    v8 = v5 + 48;
  }

  v4[6] = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t sub_10003A2DC(uint64_t a1, __int128 *a2)
{
  memset(__p, 0, 32);
  *v16 = 0u;
  v14 = *a2;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v15 = v5;
  if (v4)
  {
    std::string::assign(v16, v4);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    std::string::assign(&__p[1], v6);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = v7[6];
  if (v8 >= v7[7])
  {
    v12 = sub_10003AE30(v7 + 5, &v14);
    goto LABEL_13;
  }

  v9 = v14;
  *(v8 + 16) = v15;
  *v8 = v9;
  if (SHIBYTE(__p[0]) < 0)
  {
    sub_100034C98((v8 + 24), v16[0], v16[1]);
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_100034C98((v8 + 48), __p[1], __p[2]);
    goto LABEL_12;
  }

  v10 = *v16;
  *(v8 + 40) = __p[0];
  *(v8 + 24) = v10;
  if (SHIBYTE(__p[3]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v11 = *&__p[1];
  *(v8 + 64) = __p[3];
  *(v8 + 48) = v11;
LABEL_12:
  v12 = v8 + 72;
LABEL_13:
  v7[6] = v12;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      return 1;
    }

LABEL_17:
    operator delete(v16[0]);
    return 1;
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_10003A418(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  v13 = *(a2 + 2);
  v14 = *a2;
  LOBYTE(v15) = (*(v4 + 40))(a2);
  if (*(a2 + 5) && *(a2 + 6))
  {
    operator new();
  }

  v5 = (*(v4 + 48))(a2);
  if (v5)
  {
    std::string::assign(&__p, v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = v6[6];
  if (v7 >= v6[7])
  {
    v11 = sub_10003B0F0(v6 + 5, &v13);
  }

  else
  {
    v8 = v13;
    v9 = v14;
    *(v7 + 32) = v15;
    *v7 = v8;
    *(v7 + 16) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100034C98((v7 + 40), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = *&__p.__r_.__value_.__l.__data_;
      *(v7 + 56) = *(&__p.__r_.__value_.__l + 2);
      *(v7 + 40) = v10;
    }

    v11 = v7 + 64;
  }

  v6[6] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t sub_10003A64C(void *a1, void *a2)
{
  v4 = a1[14];
  v5 = v4 - a1[13];
  v6 = v5 >> 4;
  if ((v5 >> 4))
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 & 0xFFFFFFFF0;
    while (uuid_compare((*(a1[13] + v7) + 24), (*a2 + 24)))
    {
      ++v8;
      v7 += 16;
      if (v9 == v7)
      {
        v4 = a1[14];
        goto LABEL_6;
      }
    }

    LODWORD(v6) = v8;
  }

  else
  {
LABEL_6:
    v10 = a1[15];
    if (v4 >= v10)
    {
      v13 = a1[13];
      v14 = (v4 - v13) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        sub_100008888();
      }

      v16 = v10 - v13;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        sub_100008888();
      }

      v18 = 16 * v14;
      v19 = *a2;
      *(16 * v14) = *a2;
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v12 = (v18 + 16);
      v20 = a1[13];
      v21 = a1[14] - v20;
      v22 = v18 - v21;
      memcpy((v18 - v21), v20, v21);
      a1[13] = v22;
      a1[14] = v12;
      a1[15] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      v11 = a2[1];
      *v4 = *a2;
      v4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v4 + 2;
    }

    a1[14] = v12;
  }

  return (v6 + 1);
}

uint64_t sub_10003A7C8(void *a1, __int128 *a2)
{
  v4 = a1[5];
  memset(&__p, 0, sizeof(__p));
  *&v13 = *(a2 + 2);
  v14 = *a2;
  LOBYTE(v15) = (*(v4 + 40))(a2);
  *(&v13 + 1) = a1[6];
  if (*(a2 + 5) && *(a2 + 6))
  {
    operator new();
  }

  v5 = (*(v4 + 48))(a2);
  if (v5)
  {
    std::string::assign(&__p, v5);
  }

  v6 = *(a1[4] + 8);
  v7 = v6[6];
  if (v7 >= v6[7])
  {
    v11 = sub_10003B0F0(v6 + 5, &v13);
  }

  else
  {
    v8 = v13;
    v9 = v14;
    *(v7 + 32) = v15;
    *v7 = v8;
    *(v7 + 16) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100034C98((v7 + 40), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = *&__p.__r_.__value_.__l.__data_;
      *(v7 + 56) = *(&__p.__r_.__value_.__l + 2);
      *(v7 + 40) = v10;
    }

    v11 = v7 + 64;
  }

  v6[6] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_10003AA00(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void sub_10003AA70(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_10003AACC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void sub_10003AB4C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t sub_10003ABB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a2)
  {
    v3 = a2 - 1;
    v4 = *(result + 104);
    if (a2 - 1 <= ((*(result + 112) - v4) >> 4))
    {
      v5 = *(v4 + 16 * v3);
      v6 = *(v4 + 16 * v3 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v5;
    }
  }

  return result;
}

void sub_10003ABF0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10003ABF0(a1, *a2);
    sub_10003ABF0(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_10003AC8C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x555555555555555)
  {
    sub_100008888();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x555555555555555)
    {
      operator new();
    }

    sub_100008888();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100034C98((v5 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 40) = *(a2 + 40);
  }

  v6 = v5 + 48;
  v7 = *a1;
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      v13 = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v11 + 24) = v13;
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      *(v10 + 3) = 0;
      v10 += 3;
      v11 += 48;
    }

    while (v10 != v8);
    do
    {
      if (*(v7 + 47) < 0)
      {
        operator delete(*(v7 + 24));
      }

      v7 += 48;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

uint64_t sub_10003AE30(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x38E38E38E38E38ELL)
  {
    sub_100008888();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_100008888();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100034C98((v6 + 24), *(a2 + 24), *(a2 + 32));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_100034C98((v6 + 48), *(a2 + 48), *(a2 + 56));
    goto LABEL_15;
  }

  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
LABEL_15:
  v7 = v6 + 72;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 == *a1)
  {
    goto LABEL_26;
  }

  v11 = *a1;
  v12 = v10;
  do
  {
    v13 = *v11;
    *(v12 + 16) = *(v11 + 2);
    *v12 = v13;
    v14 = *(v11 + 24);
    *(v12 + 40) = *(v11 + 5);
    *(v12 + 24) = v14;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    *(v11 + 3) = 0;
    v15 = v11[3];
    *(v12 + 64) = *(v11 + 8);
    *(v12 + 48) = v15;
    *(v11 + 7) = 0;
    *(v11 + 8) = 0;
    *(v11 + 6) = 0;
    v11 = (v11 + 72);
    v12 += 72;
  }

  while (v11 != v9);
  do
  {
    if (*(v8 + 71) < 0)
    {
      operator delete(*(v8 + 48));
      if ((*(v8 + 47) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((*(v8 + 47) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(*(v8 + 24));
LABEL_19:
    v8 += 72;
  }

  while (v8 != v9);
  v8 = *a1;
LABEL_26:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_10003B050(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10003B088(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10003B0F0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_100008888();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_100008888();
  }

  v7 = v2 << 6;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100034C98((v7 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *(v7 + 40) = *(a2 + 40);
    *(v7 + 56) = *(a2 + 56);
  }

  v9 = v7 + 64;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      v15 = *v13;
      v16 = v13[1];
      *(v14 + 32) = *(v13 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = *(v13 + 40);
      *(v14 + 56) = *(v13 + 7);
      *(v14 + 40) = v17;
      *(v13 + 6) = 0;
      *(v13 + 7) = 0;
      *(v13 + 5) = 0;
      v13 += 4;
      v14 += 64;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 63) < 0)
      {
        operator delete(*(v10 + 40));
      }

      v10 += 64;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_10003B274(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10003B2AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10003B2F4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10003B2F4(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 96);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *(a1 + 96);
    }

    *(a1 + 104) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 72);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 64;
      }

      while (v6 != v5);
      v7 = *(a1 + 72);
    }

    *(a1 + 80) = v5;
    operator delete(v7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_21:
    operator delete(*(a1 + 24));
    return a1;
  }

  if (*(a1 + 47) < 0)
  {
    goto LABEL_21;
  }

  return a1;
}

uint64_t sub_10003B3DC(int a1, int a2, uint64_t a3, int a4)
{
  if (sub_1000104C8(8) && sub_100010510())
  {
    if ((a2 - 1) > 0xC)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_10006D540[a2 - 1];
    }

    sub_100010668("::%s(exc_port = 0x%4.4x, exc_type = %d(%s), exc_data = 0x%llx, exc_data_count = %d)", "catch_mach_exception_raise_state", a1, a2, v8, a3, a4);
  }

  return 5;
}

uint64_t sub_10003B470(int a1, int a2, int a3, int a4, uint64_t *a5, int a6)
{
  if (sub_1000104C8(8) && sub_100010510())
  {
    if ((a4 - 1) > 0xC)
    {
      v12 = 0;
    }

    else
    {
      v12 = off_10006D540[a4 - 1];
    }

    v13 = 3135093469;
    if (a6)
    {
      v14 = *a5;
      if (a6 != 1)
      {
        v13 = a5[1];
      }
    }

    else
    {
      v14 = 3135093469;
    }

    sub_100010668("::%s(exc_port = 0x%4.4x, thd_port = 0x%4.4x, tsk_port = 0x%4.4x, exc_type = %d(%s), exc_data[%d] = { 0x%llx, 0x%llx })", "catch_mach_exception_raise_state_identity", a1, a2, a3, a4, v12, a6, v14, v13);
  }

  return 5;
}

uint64_t sub_10003B544(int a1, unsigned int a2, int a3, unsigned int a4, uint64_t *a5, unsigned int a6)
{
  if (sub_1000104C8(8))
  {
    if (a6)
    {
      v12 = *a5;
      operator new();
    }

    a6 = 0;
    if (sub_100010510())
    {
      if (a4 - 1 > 0xC)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_10006D540[a4 - 1];
      }

      sub_100010668("::%s(exc_port = 0x%4.4x, thd_port = 0x%4.4x, tsk_port = 0x%4.4x, exc_type = %d(%s), exc_data[%d] = { 0x%llx, 0x%llx })", "catch_mach_exception_raise", a1, a2, a3, a4, v13, 0, 3135093469, 3135093469);
    }
  }

  v14 = qword_10047DB70;
  *(qword_10047DB70 + 8) = 0;
  v15 = (v14 + 4);
  *(v14 + 3) = *(v14 + 2);
  v16 = *v14;
  if (v16 == a3)
  {
    v14[1] = a2;
    v14[2] = a4;
    if (a6)
    {
      v17 = a6;
      do
      {
        v18 = *a5++;
        v21 = v18;
        sub_10002E30C(v15, &v21);
        --v17;
      }

      while (v17);
    }

    return 0;
  }

  if (sub_10004D084(v16))
  {
    return 5;
  }

  result = 5;
  if (a4 == 5 && a6 == 2 && *a5 == 65539 && a5[1] == 5)
  {
    v20 = qword_10047DB70;
    *qword_10047DB70 = a3;
    *(v20 + 4) = a2;
    *(v20 + 8) = 5;
    v21 = *a5;
    sub_10002E30C(v20 + 16, &v21);
    v21 = a5[1];
    sub_10002E30C(v20 + 16, &v21);
    return 0;
  }

  return result;
}

void sub_10003B7EC(_DWORD *a1)
{
  if (sub_100010524(8))
  {
    sub_100010668("  exc_msg { bits = 0x%8.8x size = 0x%8.8x remote-port = 0x%8.8x local-port = 0x%8.8x reserved = 0x%8.8x id = 0x%8.8x } ", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  }

  if (sub_100010524(8))
  {
    sub_100010668("reply_msg { bits = 0x%8.8x size = 0x%8.8x remote-port = 0x%8.8x local-port = 0x%8.8x reserved = 0x%8.8x id = 0x%8.8x }", a1[256], a1[257], a1[258], a1[259], a1[260], a1[261]);
  }

  sub_10003B894((a1 + 512));
}

void sub_10003B894(uint64_t a1)
{
  v2 = *(a1 + 8) - 1;
  if (v2 > 0xC)
  {
    v3 = "???";
  }

  else
  {
    v3 = off_10006D540[v2];
  }

  if (sub_100010524(8))
  {
    sub_100010668("    state { task_port = 0x%4.4x, thread_port =  0x%4.4x, exc_type = %i (%s) ...", *a1, *(a1 + 4), *(a1 + 8), v3);
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v4 - v5;
  v7 = *(a1 + 8) == 5 && v6 == 16;
  if (v7 && *v5 == 65539 && (v8 = *(v5 + 8)) != 0)
  {
    v9 = sub_100038B08(*(v5 + 8));
    if (sub_100010524(8))
    {
      v10 = "unknown signal";
      if (v9)
      {
        v10 = v9;
      }

      sub_100010668("            exc_data: EXC_SOFT_SIGNAL (%i (%s))", v8, v10);
    }
  }

  else if (v4 != v5)
  {
    v11 = 0;
    v12 = v6 >> 3;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    do
    {
      if (sub_100010524(8))
      {
        sub_100010668("            exc_data[%llu]: 0x%llx", v11, *(*(a1 + 16) + 8 * v11));
      }

      ++v11;
    }

    while (v13 != v11);
  }
}

uint64_t sub_10003B9D4(uint64_t a1, uint64_t a2)
{
  *(a2 + 336) = 0;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 1;
  }

  if (v2 == 6)
  {
    v5 = *(a1 + 16);
    if (*v5 == 258 && *(a1 + 24) - v5 >= 9uLL)
    {
      *a2 = 4;
      *(a2 + 264) = v5[1];
      *(a2 + 272) = -1;
      v6 = *(a1 + 16);
      if ((*(a1 + 24) - v6) >= 0x11)
      {
        *(a2 + 280) = *(v6 + 16);
      }

      return 1;
    }
  }

  *a2 = 2;
  *(a2 + 264) = v2;
  v7 = *(a1 + 8) - 1;
  if (v7 > 0xC)
  {
    v24 = *(a1 + 8);
    v9 = snprintf((a2 + 4), 0x100uLL, "%i");
  }

  else
  {
    v8 = off_10006D540[v7];
    v9 = snprintf((a2 + 4), 0x100uLL, "%s");
  }

  v10 = a2 + 260;
  v11 = (a2 + v9 + 4);
  v12 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  *(a2 + 272) = v12;
  if (*(a1 + 8) == 5 && (v13 = *(a1 + 16), *(a1 + 24) - v13 == 16) && *v13 == 65539 && (v14 = *(v13 + 8)) != 0)
  {
    if (v11 < v10)
    {
      v15 = sub_100038B08(*(v13 + 8));
      v16 = "unknown signal";
      if (v15)
      {
        v16 = v15;
      }

      snprintf(v11, v10 - v11, " EXC_SOFT_SIGNAL( %i(%s))", v14, v16);
    }
  }

  else if (v9 <= 255)
  {
    v17 = &v11[snprintf((a2 + v9 + 4), v10 - v11, " data[%llu] = {", v12)];
    if (v17 < v10)
    {
      v18 = 0;
      do
      {
        v19 = *(a2 + 272);
        if (v18 >= v19)
        {
          goto LABEL_27;
        }

        v20 = *(*(a1 + 16) + 8 * v18++);
        if (v18 == v19)
        {
          v21 = 125;
        }

        else
        {
          v21 = 44;
        }

        v17 += snprintf(v17, v10 - v17, "0x%llx%c", v20, v21);
      }

      while (v17 < v10);
    }
  }

  v19 = *(a2 + 272);
LABEL_27:
  if (v19)
  {
    v22 = 0;
    do
    {
      *(a2 + 280 + 8 * v22) = *(*(a1 + 16) + 8 * v22);
      ++v22;
    }

    while (v22 < *(a2 + 272));
  }

  return 1;
}

uint64_t sub_10003BC3C(mach_msg_header_t *a1, mach_port_name_t a2, mach_msg_option_t a3, int a4, mach_port_name_t a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v10 = sub_1000104C8(8);
  v11 = v10;
  v12 = a4 & (a3 << 23 >> 31);
  if ((a3 & 0x100) == 0 && v10 && sub_100010510())
  {
    sub_100010668("::mach_msg(msg->{bits = %#x, size = %u remote_port = %#x, local_port = %#x, reserved = 0x%x, id = 0x%x}, option = %#x, send_size = 0, rcv_size = %llu, rcv_name = %#x, timeout = %u, notify = %#x)", a1->msgh_bits, a1->msgh_size, a1->msgh_remote_port, a1->msgh_local_port, a1->msgh_voucher_port, a1->msgh_id, a3, 1024, a2, 0, a5);
  }

  result = mach_msg(a1, a3, 0, 0x400u, a2, v12, a5);
  v26[0] = result;
  v26[1] = 1;
  LOBYTE(v27) = 0;
  HIBYTE(v29) = 0;
  if (v11)
  {
    msgh_voucher_port = a1->msgh_voucher_port;
    msgh_id = a1->msgh_id;
    msgh_remote_port = a1->msgh_remote_port;
    msgh_local_port = a1->msgh_local_port;
    msgh_size = a1->msgh_size;
    sub_1000103F8(v26, "::mach_msg(msg->{bits = %#x, size = %u remote_port = %#x, local_port = %#x, reserved = 0x%x, id = 0x%x}, option = %#x, send_size = %u, rcv_size = %u, rcv_name = %#x, timeout = %u, notify = %#x)", v14, v15, v16, v17, v18, v19, a1->msgh_bits);
    result = v26[0];
    if (SHIBYTE(v29) < 0)
    {
      v20 = v26[0];
      operator delete(v27);
      return v20;
    }
  }

  return result;
}

BOOL sub_10003BD7C(_DWORD *a1, int a2)
{
  a1[512] = a2;
  qword_10047DB70 = (a1 + 512);
  v2 = sub_100058D9C(a1, (a1 + 256));
  if (!v2 && sub_1000104C8(8) && sub_100010510())
  {
    sub_100010668("mach_exc_server returned zero...");
  }

  result = v2 != 0;
  qword_10047DB70 = 0;
  return result;
}

uint64_t sub_10003BDE4(uint64_t a1, int *a2, int a3)
{
  v29 = 0u;
  v30 = 0u;
  if (*(a1 + 2056) != 5)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 2064);
  if (*(a1 + 2072) - v5 != 16)
  {
    goto LABEL_20;
  }

  if (*v5 != 65539)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  x = -1;
  v7 = *(a1 + 2048);
  if (a2[30] == v7)
  {
    v9 = *a2;
    x = *a2;
  }

  else
  {
    *&v29 = pid_for_task(v7, &x) | 0x100000000;
    if (SHIBYTE(v30) < 0)
    {
      **(&v29 + 1) = 0;
      *&v30 = 0;
    }

    else
    {
      BYTE8(v29) = 0;
      HIBYTE(v30) = 0;
    }

    v9 = x;
    a3 = v6;
  }

  if (v9 == -1)
  {
    sub_1000592B4();
  }

  *__error() = 0;
  if (!ptrace(13, x, *(a1 + 2052), a3))
  {
    *&v29 = 0;
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    **(&v29 + 1) = 0;
    *&v30 = 0;
    goto LABEL_17;
  }

  LODWORD(v29) = *__error();
  DWORD1(v29) = 2;
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  BYTE8(v29) = 0;
  HIBYTE(v30) = 0;
LABEL_17:
  if (sub_1000104C8(8) || v29)
  {
    v27 = *(a1 + 2052);
    sub_1000103F8(&v29, "::ptrace (request = PT_THUPDATE, pid = 0x%4.4x, tid = 0x%4.4x, signal = %i)", v10, v11, v12, v13, v14, v15, x);
  }

LABEL_20:
  if (sub_100010524(8))
  {
    sub_100010668("::mach_msg(msg->{bits = %#x, size = %u, remote_port = %#x, local_port = %#x, reserved = 0x%x, id = 0x%x}, option = %#x, send_size = %u, rcv_size = %u, rcv_name = %#x, timeout = %u, notify = %#x)", *(a1 + 1024), *(a1 + 1028), *(a1 + 1032), *(a1 + 1036), *(a1 + 1040), *(a1 + 1044), 65, *(a1 + 1028), 0, 0, 0, 0);
  }

  v16 = mach_msg((a1 + 1024), 65, *(a1 + 1028), 0, 0, 0, 0);
  *&v29 = v16 | 0x100000000;
  if (SHIBYTE(v30) < 0)
  {
    **(&v29 + 1) = 0;
    *&v30 = 0;
    v16 = v29;
    if (!v29)
    {
      goto LABEL_35;
    }
  }

  else
  {
    BYTE8(v29) = 0;
    HIBYTE(v30) = 0;
    if (!v16)
    {
      goto LABEL_35;
    }
  }

  if (v16 == 268435463)
  {
    if (!sub_1000104C8(8))
    {
      goto LABEL_35;
    }

    v23 = "::mach_msg() - send interrupted";
LABEL_34:
    sub_1000103F8(&v29, v23, v17, v18, v19, v20, v21, v22, v26);
    goto LABEL_35;
  }

  if (*(a1 + 2048) != a2[30])
  {
    if (!sub_1000104C8(8))
    {
      goto LABEL_35;
    }

    v23 = "::mach_msg() - failed (child of task)";
    goto LABEL_34;
  }

  if (sub_100010510())
  {
    sub_100010668("error: mach_msg() returned an error when replying to a mach exception: error = %u", v29);
  }

LABEL_35:
  v24 = v29;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(*(&v29 + 1));
  }

  return v24;
}

uint64_t sub_10003C080(unsigned int *a1, task_t a2)
{
  if (sub_100010524(9))
  {
    sub_100010668("MachException::PortInfo::Save(task = 0x%4.4x)", a2);
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  *a1 = 7166;
  a1[57] = 14;
  exception_ports = task_get_exception_ports(a2, 0x1BFEu, a1 + 1, a1 + 57, a1 + 15, a1 + 29, a1 + 43);
  v23 = exception_ports;
  v24 = 1;
  LOBYTE(__p) = 0;
  HIBYTE(v27) = 0;
  if (sub_1000104C8(8) || (result = 0, exception_ports))
  {
    v19 = *a1;
    v21 = a1[57];
    sub_1000103F8(&v23, "::task_get_exception_ports(task = 0x%4.4x, mask = 0x%x, maskCnt => %u, ports, behaviors, flavors)", v5, v6, v7, v8, v9, v10, a2);
    result = v23;
    if (v23 == 4)
    {
      if (*a1 == 7166)
      {
        result = 4;
LABEL_16:
        *a1 = 0;
        a1[57] = 0;
LABEL_17:
        if (SHIBYTE(v27) < 0)
        {
          v18 = result;
          operator delete(__p);
          return v18;
        }

        return result;
      }

      *a1 = 7166;
      a1[57] = 14;
      v23 = task_get_exception_ports(a2, 0x1BFEu, a1 + 1, a1 + 57, a1 + 15, a1 + 29, a1 + 43);
      v24 = 1;
      if (SHIBYTE(v27) < 0)
      {
        *__p = 0;
        v26 = 0;
      }

      else
      {
        LOBYTE(__p) = 0;
        HIBYTE(v27) = 0;
      }

      if (!sub_1000104C8(8) && !v23)
      {
        result = 0;
        goto LABEL_17;
      }

      v20 = *a1;
      v22 = a1[57];
      sub_1000103F8(&v23, "::task_get_exception_ports(task = 0x%4.4x, mask = 0x%x, maskCnt => %u, ports, behaviors, flavors)", v12, v13, v14, v15, v16, v17, a2);
      result = v23;
    }

    if (!result)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10003C244(uint64_t a1, task_t a2)
{
  if (sub_100010524(9))
  {
    sub_100010668("MachException::PortInfo::Restore( task = 0x%4.4x)", a2);
  }

  *__p = 0u;
  v20 = 0u;
  if (!*(a1 + 228))
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 116);
  while (1)
  {
    __p[0] = (task_set_exception_ports(a2, *(v5 - 28), *(v5 - 14), *v5, v5[14]) | 0x100000000);
    if (SHIBYTE(v20) < 0)
    {
      *__p[1] = 0;
      *&v20 = 0;
    }

    else
    {
      LOBYTE(__p[1]) = 0;
      HIBYTE(v20) = 0;
    }

    if (sub_1000104C8(8) || LODWORD(__p[0]))
    {
      v17 = *v5;
      v18 = v5[14];
      v15 = *(v5 - 28);
      v16 = *(v5 - 14);
      sub_1000103F8(__p, "::task_set_exception_ports(task = 0x%4.4x, exception_mask = 0x%8.8x, new_port = 0x%4.4x, behavior = 0x%8.8x, new_flavor = 0x%8.8x)", v7, v8, v9, v10, v11, v12, a2);
      result = LODWORD(__p[0]);
      if (LODWORD(__p[0]))
      {
        break;
      }
    }

    ++v4;
    ++v5;
    if (v4 >= *(a1 + 228))
    {
      result = 0;
      break;
    }
  }

  v13 = SHIBYTE(v20);
  *(a1 + 228) = 0;
  if (v13 < 0)
  {
    v14 = result;
    operator delete(__p[1]);
    return v14;
  }

  return result;
}

uint64_t sub_10003C38C(char *__s1)
{
  if ((atomic_load_explicit(&qword_10047DB80, memory_order_acquire) & 1) == 0)
  {
    sub_1000592E0();
  }

  if (strncmp(__s1, "EXC_", 4uLL))
  {
    return 0;
  }

  v3 = strlen(&__s1[dword_10047DB78]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v16 = v3;
  if (v3)
  {
    memcpy(&__dst, &__s1[dword_10047DB78], v3);
  }

  *(&__dst + v4) = 0;
  if ((v16 & 0x80000000) == 0)
  {
    if (v16 <= 9u)
    {
      if (v16 != 8)
      {
        if (v16 != 9)
        {
          goto LABEL_62;
        }

        if (__dst != 0x4F4954414C554D45 || BYTE8(__dst) != 78)
        {
          goto LABEL_62;
        }

        goto LABEL_69;
      }

      p_dst = &__dst;
      goto LABEL_52;
    }

    if (v16 != 10)
    {
      if (v16 != 15)
      {
        goto LABEL_62;
      }

      if (__dst != 0x54534E495F444142 || *(&__dst + 7) != 0x4E4F495443555254)
      {
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (__dst != 0x454343415F444142 || WORD4(__dst) != 21331)
    {
      if (__dst != 0x54454D4854495241 || WORD4(__dst) != 17225)
      {
        goto LABEL_62;
      }

      goto LABEL_70;
    }

LABEL_68:
    result = 2;
    goto LABEL_82;
  }

  if (*(&__dst + 1) == 10 && *__dst == 0x454343415F444142 && *(__dst + 8) == 21331)
  {
    goto LABEL_68;
  }

  if (*(&__dst + 1) == 15 && *__dst == 0x54534E495F444142 && *(__dst + 7) == 0x4E4F495443555254)
  {
LABEL_50:
    result = 4;
    goto LABEL_82;
  }

  if (*(&__dst + 1) != 10 || (*__dst == 0x54454D4854495241 ? (v8 = *(__dst + 8) == 17225) : (v8 = 0), !v8))
  {
    if (*(&__dst + 1) == 9 && *__dst == 0x4F4954414C554D45 && *(__dst + 8) == 78)
    {
LABEL_69:
      result = 16;
      goto LABEL_82;
    }

    if (*(&__dst + 1) != 8)
    {
LABEL_62:
      if (sub_10002D86C(&__dst, "BREAKPOINT"))
      {
        result = 64;
      }

      else if (sub_10002D86C(&__dst, "SYSCALL"))
      {
        result = 128;
      }

      else if (sub_10002D86C(&__dst, "MACH_SYSCALL"))
      {
        result = 256;
      }

      else if (sub_10002D86C(&__dst, "RPC_ALERT"))
      {
        result = 512;
      }

      else if (sub_10002D86C(&__dst, "CRASH"))
      {
        result = 1024;
      }

      else if (sub_10002D86C(&__dst, "RESOURCE"))
      {
        result = 2048;
      }

      else if (sub_10002D86C(&__dst, "GUARD"))
      {
        result = 4096;
      }

      else if (sub_10002D86C(&__dst, "CORPSE_NOTIFY"))
      {
        result = 0x2000;
      }

      else
      {
        result = 0;
      }

      goto LABEL_82;
    }

    p_dst = __dst;
LABEL_52:
    if (*p_dst == 0x4552415754464F53)
    {
      result = 32;
      goto LABEL_82;
    }

    goto LABEL_62;
  }

LABEL_70:
  result = 8;
LABEL_82:
  if (v16 < 0)
  {
    v14 = result;
    operator delete(__dst);
    return v14;
  }

  return result;
}

uint64_t sub_10003C7AC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 12) = -1;
  *(a1 + 20) = -1;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_10004B1D0(a1 + 104, a1);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  sub_1000108B8((a1 + 456), 2);
  *(a1 + 548) = 0;
  *(a1 + 560) = 0;
  *(a1 + 520) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  sub_1000108B8((a1 + 568), 2);
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  sub_100012750(a1 + 656, 0, 1);
  sub_100010998((a1 + 832));
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  sub_1000108B8((a1 + 904), 2);
  sub_10004F32C(a1 + 968);
  sub_100039324(a1 + 1080);
  *(a1 + 1216) = 1;
  sub_1000108B8((a1 + 1224), 2);
  sub_100012750(a1 + 1288, 0, 31);
  sub_100012750(a1 + 1464, 0, 31);
  sub_1000090F8((a1 + 1640));
  sub_1000090F8((a1 + 1664));
  *(a1 + 1800) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_create");
  *(a1 + 1768) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_for_each_image");
  *(a1 + 1776) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_release");
  *(a1 + 1784) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_get_cache");
  *(a1 + 1792) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_get_platform");
  *(a1 + 1800) = dlsym(0xFFFFFFFFFFFFFFFELL, "_dyld_process_info_get_state");
  if (sub_100010524(3))
  {
    sub_100010668("%s", "MachProcess::MachProcess()");
  }

  return a1;
}

void sub_10003C9B4(_Unwind_Exception *a1)
{
  sub_10000910C(v1 + 1640);
  sub_1000127B4(v1 + 1464);
  sub_1000127B4(v1 + 1288);
  sub_100010878((v1 + 1224));
  sub_100048838(v1 + 1080);
  sub_10004F488(v1 + 968);
  sub_100010878((v1 + 904));
  sub_100049EC8((v1 + 880));
  sub_1000488F8(v1 + 832);
  sub_1000127B4(v1 + 656);
  sub_10003CAEC(v2);
  sub_100010878((v1 + 568));
  if (*(v1 + 543) < 0)
  {
    operator delete(*(v1 + 520));
  }

  sub_100010878((v1 + 456));
  sub_10004B294(v1 + 104);
  if (*(v1 + 103) < 0)
  {
    operator delete(*v4);
  }

  sub_10003CAEC((v1 + 48));
  if (*(v1 + 47) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void ***sub_10003CAEC(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

uint64_t sub_10003CB64(uint64_t a1)
{
  if (sub_100010524(3))
  {
    sub_100010668("%s", "MachProcess::~MachProcess()");
  }

  sub_10003CE70(a1, 0);
  if (*(a1 + 1743) < 0)
  {
    operator delete(*(a1 + 1720));
  }

  sub_10000910C(a1 + 1664);
  sub_10000910C(a1 + 1640);
  sub_1000127B4(a1 + 1464);
  sub_1000127B4(a1 + 1288);
  if (pthread_mutex_destroy((a1 + 1224)) && !pthread_mutex_unlock((a1 + 1224)))
  {
    pthread_mutex_destroy((a1 + 1224));
  }

  v2 = *(a1 + 1184);
  if (v2)
  {
    v3 = *(a1 + 1192);
    v4 = *(a1 + 1184);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 1184);
    }

    *(a1 + 1192) = v2;
    operator delete(v4);
  }

  sub_10003ABF0(a1 + 1160, *(a1 + 1168));
  sub_10004F488(a1 + 968);
  if (pthread_mutex_destroy((a1 + 904)) && !pthread_mutex_unlock((a1 + 904)))
  {
    pthread_mutex_destroy((a1 + 904));
  }

  v6 = *(a1 + 880);
  if (v6)
  {
    v7 = *(a1 + 888);
    v8 = *(a1 + 880);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 24);
        if (v9)
        {
          *(v7 - 16) = v9;
          operator delete(v9);
        }

        v7 -= 2088;
      }

      while (v7 != v6);
      v8 = *(a1 + 880);
    }

    *(a1 + 888) = v6;
    operator delete(v8);
  }

  v10 = *(a1 + 856);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 832);
  if (v11)
  {
    *(a1 + 840) = v11;
    operator delete(v11);
  }

  sub_1000127B4(a1 + 656);
  v12 = *(a1 + 632);
  if (v12)
  {
    v13 = *(a1 + 640);
    v14 = *(a1 + 632);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 632);
    }

    *(a1 + 640) = v12;
    operator delete(v14);
  }

  if (pthread_mutex_destroy((a1 + 568)) && !pthread_mutex_unlock((a1 + 568)))
  {
    pthread_mutex_destroy((a1 + 568));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (pthread_mutex_destroy((a1 + 456)) && !pthread_mutex_unlock((a1 + 456)))
  {
    pthread_mutex_destroy((a1 + 456));
  }

  sub_10004B294(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(a1 + 56);
    v18 = *(a1 + 48);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(a1 + 48);
    }

    *(a1 + 56) = v16;
    operator delete(v18);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_10003CE70(uint64_t a1, char a2)
{
  sub_10004B254(a1 + 104);
  *(a1 + 8) = 0;
  *a1 = 0;
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) == 0)
    {
      close(v4);
      *(a1 + 12) = -1;
    }

    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
      *(a1 + 16) = -1;
    }

    v6 = *(a1 + 20);
    if ((v6 & 0x80000000) == 0)
    {
      close(v6);
      *(a1 + 20) = -1;
    }
  }

  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  while (v8 != v7)
  {
    v9 = *(v8 - 1);
    v8 -= 3;
    if (v9 < 0)
    {
      operator delete(*v8);
    }
  }

  *(a1 + 56) = v7;
  sub_100040BE8(a1, 1u);
  *(a1 + 440) = 0;
  sub_1000509C8((a1 + 968));
  pthread_mutex_lock((a1 + 904));
  v10 = *(a1 + 888);
  v11 = *(a1 + 880);
  while (v10 != v11)
  {
    v12 = *(v10 - 24);
    if (v12)
    {
      *(v10 - 16) = v12;
      operator delete(v12);
    }

    v10 -= 2088;
  }

  *(a1 + 888) = v11;
  pthread_mutex_unlock((a1 + 904));
  sub_100039B08(a1 + 1080);
  if (*(a1 + 560))
  {
    sub_10001283C((a1 + 656), 1);
    pthread_join(*(a1 + 560), 0);
    *(a1 + 560) = 0;

    sub_10001289C((a1 + 656), 1);
  }
}

uint64_t sub_10003CFE8(uint64_t a1)
{
  pthread_mutex_lock((a1 + 1224));
  v2 = *(a1 + 1216);
  pthread_mutex_unlock((a1 + 1224));
  return v2;
}

pthread_mutex_t **sub_10003D024(pthread_mutex_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    pthread_mutex_unlock(v2);
  }

  return a1;
}

BOOL sub_10003D078(uint64_t a1, uint64_t a2)
{
  sub_10004F578(a1 + 968, a2, &v6);
  if (!v6)
  {
    result = 0;
    v4 = v7;
    if (!v7)
    {
      return result;
    }

    goto LABEL_7;
  }

  v2 = thread_abort_safely(v6[4]);
  if (sub_100010524(4))
  {
    sub_100010668("thread = 0x%8.8x calling thread_abort_safely (tid) => %u (GetGPRState() for stop_count = %u)", v6[4], v2, *(*v6 + 444));
  }

  result = v2 == 0;
  v4 = v7;
  if (v7)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v5;
    }
  }

  return result;
}

void sub_10003D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003D168(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D168(uint64_t result)
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

unint64_t sub_10003D1F4(uint64_t a1, _DWORD *a2, mach_vm_address_t a3, int a4)
{
  v7 = *a2 & 0x7FFFFFFF;
  if (v7 > 0x2E)
  {
    if (v7 == 47)
    {
      v8 = sub_10004B91C(a1 + 104, a3, 0x10uLL, &__p);
      if (v8)
      {
        sub_100009850(a1 + 1640, a3, v8, &__p);
        if (v8 != 16)
        {
          goto LABEL_30;
        }

        v8 = HIWORD(v21);
        v9 = 3;
        if (!a4)
        {
          return v9 | (v8 << 32);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v7 != 48)
      {
        v8 = 0;
        v9 = 0;
        if (v7 != 50)
        {
          goto LABEL_28;
        }

        v8 = sub_10004B91C(a1 + 104, a3, 0x18uLL, &__p);
        if (v8)
        {
          sub_100009850(a1 + 1640, a3, v8, &__p);
          if (v8 == 24)
          {
            v9 = v21;
            v8 = HIWORD(v22);
            if (!a4)
            {
              return v9 | (v8 << 32);
            }

            goto LABEL_31;
          }

LABEL_30:
          v8 = 0;
          v9 = 0;
          if (!a4)
          {
            return v9 | (v8 << 32);
          }

          goto LABEL_31;
        }

        goto LABEL_27;
      }

      v8 = sub_10004B91C(a1 + 104, a3, 0x10uLL, &__p);
      if (v8)
      {
        sub_100009850(a1 + 1640, a3, v8, &__p);
        if (v8 != 16)
        {
          goto LABEL_30;
        }

        v8 = HIWORD(v21);
        v9 = 4;
        if (!a4)
        {
          return v9 | (v8 << 32);
        }

        goto LABEL_31;
      }
    }

LABEL_27:
    v9 = 0;
LABEL_28:
    if (!a4)
    {
      return v9 | (v8 << 32);
    }

    goto LABEL_31;
  }

  if (v7 != 36)
  {
    v8 = 0;
    v9 = 0;
    if (v7 != 37)
    {
      goto LABEL_28;
    }

    v8 = sub_10004B91C(a1 + 104, a3, 0x10uLL, &__p);
    if (v8)
    {
      sub_100009850(a1 + 1640, a3, v8, &__p);
      if (v8 != 16)
      {
        goto LABEL_30;
      }

      v8 = HIWORD(v21);
      v9 = 2;
      if (!a4)
      {
        return v9 | (v8 << 32);
      }

      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v8 = sub_10004B91C(a1 + 104, a3, 0x10uLL, &__p);
  if (!v8)
  {
    goto LABEL_27;
  }

  sub_100009850(a1 + 1640, a3, v8, &__p);
  if (v8 != 16)
  {
    goto LABEL_30;
  }

  v8 = HIWORD(v21);
  v9 = 1;
  if (!a4)
  {
    return v9 | (v8 << 32);
  }

LABEL_31:
  v10 = *(a1 + 8);
  if (v10)
  {
    if (v10 != 6)
    {
      return v9 | (v8 << 32);
    }

LABEL_42:
    sub_10003D5E8(&__p);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v18 = 0;
    __endptr = 0;
    v8 = strtoul(p_p, &__endptr, 10);
    if (__endptr && *__endptr == 46)
    {
      strtoul(__endptr + 1, &v18, 10);
      if (!v18 || *v18 != 46)
      {
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      strtoul(v18 + 1, 0, 10);
      if (v23 < 0)
      {
LABEL_52:
        operator delete(__p);
      }
    }

    else if (v23 < 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    v9 = 6;
    return v9 | (v8 << 32);
  }

  v11 = *(a1 + 1760);
  if (v11 && (LODWORD(__p) = 0, (v12 = v11(*(a1 + 120), 0, &__p)) != 0))
  {
    v13 = *(a1 + 1792);
    if (v13)
    {
      v14 = v12;
      v15 = v13();
      v12 = v14;
    }

    else
    {
      v15 = 0;
    }

    (*(a1 + 1776))(v12);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 8) = v15;
  if (v15 == 6)
  {
    goto LABEL_42;
  }

  return v9 | (v8 << 32);
}

unint64_t sub_10003D590(uint64_t a1, mach_vm_address_t a2, unint64_t a3, char *a4)
{
  v7 = sub_10004B91C(a1 + 104, a2, a3, a4);
  if (v7)
  {
    sub_100009850(a1 + 1640, a2, v7, a4);
  }

  return v7;
}

void sub_10003D5E8(void *a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [-[NSDictionary objectForKey:](+[NSDictionary dictionaryWithContentsOfFile:](NSDictionary dictionaryWithContentsOfFile:{@"/System/Library/CoreServices/SystemVersion.plist", "objectForKey:", @"iOSSupportVersion", "UTF8String"}];
  if (v3)
  {
    v4 = v3;
    v5 = strlen(v3);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100048CE0();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v5;
    if (v5)
    {
      memmove(a1, v4, v5);
    }

    *(a1 + v6) = 0;

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    objc_autoreleasePoolPop(v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10003D6FC(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      if (a1 == 10)
      {
        a2[23] = 9;
        strcpy(a2, "driverkit");
        v4 = 1;
        goto LABEL_32;
      }

      if (a1 == 11)
      {
        a2[23] = 4;
        v3 = 1936683640;
        goto LABEL_28;
      }

      if (a1 != 12)
      {
        goto LABEL_29;
      }

      a2[23] = 13;
      v5 = "xrossimulator";
    }

    else
    {
      if (a1 == 7)
      {
        a2[23] = 12;
        strcpy(a2, "iossimulator");
        v4 = 1;
        goto LABEL_32;
      }

      if (a1 != 8)
      {
        a2[23] = 16;
        strcpy(a2, "watchossimulator");
        v4 = 1;
        goto LABEL_32;
      }

      a2[23] = 13;
      v5 = "tvossimulator";
    }

    *a2 = *v5;
    *(a2 + 5) = *(v5 + 5);
    a2[13] = 0;
    v4 = 1;
    goto LABEL_32;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      a2[23] = 7;
      strcpy(a2, "watchos");
      v4 = 1;
    }

    else
    {
      if (a1 == 5)
      {
        a2[23] = 8;
        strcpy(a2, "bridgeos");
      }

      else
      {
        a2[23] = 11;
        strcpy(a2, "maccatalyst");
      }

      v4 = 1;
    }

    goto LABEL_32;
  }

  switch(a1)
  {
    case 1:
      a2[23] = 6;
      strcpy(a2, "macosx");
      v4 = 1;
      goto LABEL_32;
    case 2:
      a2[23] = 3;
      *a2 = 7565161;
      v4 = 1;
      goto LABEL_32;
    case 3:
      a2[23] = 4;
      v3 = 1936684660;
LABEL_28:
      *a2 = v3;
      a2[4] = 0;
      v4 = 1;
      goto LABEL_32;
  }

LABEL_29:
  v6 = a2;
  if (sub_100010510())
  {
    sub_1000107A0("Unknown platform %u found for one binary", a1);
  }

  v4 = 0;
  a2 = v6;
  *v6 = 0;
LABEL_32:
  a2[24] = v4;
}

uint64_t sub_10003D984(uint64_t a1, int a2, mach_vm_address_t a3, int a4, uint64_t a5)
{
  if (a4 != 4)
  {
    v12 = sub_10004B91C(a1 + 104, a3, 0x20uLL, v74);
    if (!v12)
    {
      return 0;
    }

    sub_100009850(a1 + 1640, a3, v12, v74);
    if (v12 != 32)
    {
      return 0;
    }

    v10 = *v74;
    v11 = *&v74[4];
    if ((*v74 + 17958194) >= 2 && *v74 != -805638658 && *v74 != -822415874)
    {
      return 0;
    }

    if (*&v74[4] <= 16777222)
    {
      if (*&v74[4] != 7 && *&v74[4] != 12)
      {
        return 0;
      }
    }

    else if (*&v74[4] != 16777223 && *&v74[4] != 16777228 && *&v74[4] != 33554444)
    {
      return 0;
    }

    v13 = a3 + 32;
    goto LABEL_28;
  }

  v9 = sub_10004B91C(a1 + 104, a3, 0x1CuLL, v74);
  if (!v9)
  {
    return 0;
  }

  sub_100009850(a1 + 1640, a3, v9, v74);
  if (v9 != 28)
  {
    return 0;
  }

  v10 = *v74;
  v11 = *&v74[4];
  if ((*v74 + 17958194) >= 2 && *v74 != -805638658 && *v74 != -822415874)
  {
    return 0;
  }

  if (*&v74[4] <= 16777222)
  {
    if (*&v74[4] != 7 && *&v74[4] != 12)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (*&v74[4] == 16777223 || *&v74[4] == 16777228 || *&v74[4] == 33554444)
  {
LABEL_24:
    v13 = a3 + 28;
LABEL_28:
    *a5 = v10;
    *(a5 + 4) = v11;
    *(a5 + 8) = *&v74[8] & 0xFFFFFF;
    v14 = *&v74[16];
    *(a5 + 12) = *&v74[12];
    if (!v14)
    {
      return 1;
    }

    v15 = 0;
    v16 = (a5 + 72);
    while (1)
    {
      v18 = sub_10004B91C(a1 + 104, v13, 8uLL, v64);
      if (!v18)
      {
        return 0;
      }

      sub_100009850(a1 + 1640, v13, v18, v64);
      if (v18 != 8)
      {
        return 0;
      }

      v19 = v64[0];
      if (v64[0] == 1)
      {
        break;
      }

LABEL_54:
      if (v19 != 25)
      {
        goto LABEL_77;
      }

      v33 = sub_10004B91C(a1 + 104, v13, 0x48uLL, &v65);
      if (!v33)
      {
        return 0;
      }

      sub_100009850(a1 + 1640, v13, v33, &v65);
      if (v33 != 72)
      {
        return 0;
      }

      memset(v74, 0, 24);
      v73 = 0;
      *__s = *&v65.__r_.__value_.__r.__words[1];
      std::string::assign(v74, __s);
      *&v74[24] = v66;
      v75 = v67;
      *&v34 = v68;
      *(&v34 + 1) = v69;
      v76 = v34;
      *&v34 = v70;
      *(&v34 + 1) = v71;
      v77 = v34;
      v35 = *(a5 + 40);
      if (v35 >= *(a5 + 48))
      {
        v37 = sub_100049F3C((a5 + 32), v74);
      }

      else
      {
        if ((v74[23] & 0x80000000) != 0)
        {
          sub_100034C98(*(a5 + 40), *v74, *&v74[8]);
        }

        else
        {
          v36 = *v74;
          *(v35 + 16) = *&v74[16];
          *v35 = v36;
        }

        v38 = *&v74[24];
        v39 = v75;
        v40 = v76;
        *(v35 + 72) = v77;
        *(v35 + 56) = v40;
        *(v35 + 40) = v39;
        *(v35 + 24) = v38;
        v37 = v35 + 88;
        *(a5 + 40) = v35 + 88;
      }

      *(a5 + 40) = v37;
      v41 = v74[23];
      if ((v74[23] & 0x80000000) != 0)
      {
        if (*&v74[8] != 16)
        {
          goto LABEL_75;
        }

        v42 = *v74;
      }

      else
      {
        if (v74[23] != 16)
        {
          goto LABEL_76;
        }

        v42 = v74;
      }

      v44 = *v42;
      v43 = v42[1];
      if (v44 == 0x7274784563657845 && v43 == 0x646E657073755361)
      {
        *(a1 + 412) = 1;
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_75:
        operator delete(*v74);
        goto LABEL_76;
      }

      if ((v74[23] & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

LABEL_76:
      v19 = v64[0];
LABEL_77:
      if (v19 == 27)
      {
        v46 = sub_10004B91C(a1 + 104, v13, 0x18uLL, v74);
        if (v46)
        {
          sub_100009850(a1 + 1640, v13, v46, v74);
          if (v46 == 24)
          {
            uuid_copy((a5 + 56), &v74[8]);
          }
        }
      }

      v47 = sub_10003D1F4(a1, v64, v13, *(a5 + 12) == 2);
      v49 = HIDWORD(v47);
      if (!v47)
      {
        goto LABEL_30;
      }

      v50 = v48;
      sub_10003D6FC(v47, v74);
      if (a2 == 6)
      {
        goto LABEL_92;
      }

      v51 = *(a5 + 95);
      if (v51 < 0)
      {
        if (*(a5 + 80) != 6)
        {
          goto LABEL_92;
        }

        v52 = *v16;
      }

      else
      {
        v52 = (a5 + 72);
        if (v51 != 6)
        {
          goto LABEL_92;
        }
      }

      v53 = *v52;
      v54 = v52[2];
      if (v53 != 1868783981 || v54 != 30835)
      {
LABEL_92:
        v56 = v74[24];
        if (v74[24] == 1)
        {
          if ((v74[23] & 0x80000000) != 0)
          {
            sub_100034C98(&v65, *v74, *&v74[8]);
          }

          else
          {
            v65 = *v74;
          }
        }

        else
        {
          *(&v65.__r_.__value_.__s + 23) = 0;
          v65.__r_.__value_.__s.__data_[0] = 0;
        }

        if (*(a5 + 95) < 0)
        {
          operator delete(*v16);
        }

        *v16 = *&v65.__r_.__value_.__l.__data_;
        *(a5 + 88) = *(&v65.__r_.__value_.__l + 2);
        std::string::assign((a5 + 96), &unk_10005B2EA);
        std::to_string(&v65, v49);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v65;
        }

        else
        {
          v57 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v65.__r_.__value_.__l.__size_;
        }

        std::string::append((a5 + 96), v57, size);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        std::string::append((a5 + 96), ".");
        std::to_string(&v65, v50);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v65;
        }

        else
        {
          v59 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v65.__r_.__value_.__l.__size_;
        }

        std::string::append((a5 + 96), v59, v60);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
          v61 = HIDWORD(v50);
          if (!v61)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v61 = HIDWORD(v50);
          if (!v61)
          {
            goto LABEL_125;
          }
        }

        std::string::append((a5 + 96), ".");
        std::to_string(&v65, v61);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v65;
        }

        else
        {
          v62 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v65.__r_.__value_.__l.__size_;
        }

        std::string::append((a5 + 96), v62, v63);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

LABEL_125:
        if (v56)
        {
          goto LABEL_126;
        }

        goto LABEL_30;
      }

      if (v74[24])
      {
LABEL_126:
        if ((v74[23] & 0x80000000) != 0)
        {
          operator delete(*v74);
        }
      }

LABEL_30:
      v13 += v64[1];
      ++v15;
      result = 1;
      if (v15 >= *(a5 + 16))
      {
        return result;
      }
    }

    v20 = sub_10004B91C(a1 + 104, v13, 0x38uLL, &v65);
    if (!v20)
    {
      return 0;
    }

    sub_100009850(a1 + 1640, v13, v20, &v65);
    if (v20 != 56)
    {
      return 0;
    }

    memset(v74, 0, 24);
    v73 = 0;
    *__s = *&v65.__r_.__value_.__r.__words[1];
    std::string::assign(v74, __s);
    *&v21 = v66;
    *(&v21 + 1) = DWORD1(v66);
    *&v74[24] = v21;
    *&v21 = DWORD2(v66);
    *(&v21 + 1) = HIDWORD(v66);
    v75 = v21;
    *&v21 = v67;
    *(&v21 + 1) = SDWORD1(v67);
    v76 = v21;
    *&v21 = DWORD2(v67);
    *(&v21 + 1) = HIDWORD(v67);
    v77 = v21;
    v22 = *(a5 + 40);
    if (v22 >= *(a5 + 48))
    {
      v24 = sub_100049F3C((a5 + 32), v74);
    }

    else
    {
      if ((v74[23] & 0x80000000) != 0)
      {
        sub_100034C98(*(a5 + 40), *v74, *&v74[8]);
      }

      else
      {
        v23 = *v74;
        *(v22 + 16) = *&v74[16];
        *v22 = v23;
      }

      v25 = *&v74[24];
      v26 = v75;
      v27 = v76;
      *(v22 + 72) = v77;
      *(v22 + 56) = v27;
      *(v22 + 40) = v26;
      *(v22 + 24) = v25;
      v24 = v22 + 88;
      *(a5 + 40) = v22 + 88;
    }

    *(a5 + 40) = v24;
    v28 = v74[23];
    if ((v74[23] & 0x80000000) != 0)
    {
      if (*&v74[8] != 16)
      {
        goto LABEL_52;
      }

      v29 = *v74;
    }

    else
    {
      if (v74[23] != 16)
      {
        goto LABEL_53;
      }

      v29 = v74;
    }

    v31 = *v29;
    v30 = v29[1];
    if (v31 == 0x7274784563657845 && v30 == 0x646E657073755361)
    {
      *(a1 + 412) = 1;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if ((v74[23] & 0x80000000) != 0)
    {
LABEL_52:
      operator delete(*v74);
    }

LABEL_53:
    v19 = v64[0];
    goto LABEL_54;
  }

  return 0;
}

void sub_10003E184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v33 + 40) = v34;
  if (a33 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10003D168(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10003D168(v19 - 144);
  sub_10003D168(v19 - 160);
  _Unwind_Resume(a1);
}

void sub_10003F3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1760);
  if (v2)
  {
    v16 = 0;
    v5 = v2(*(a1 + 120), 0, &v16);
    if (v5)
    {
      v6 = v5;
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x5812000000;
      v12[3] = sub_10003F554;
      v12[4] = sub_10003F5C4;
      v12[5] = "";
      *v13 = 0u;
      *__p = 0u;
      v15 = 1065353216;
      v7 = *(a1 + 1768);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3254779904;
      v11[2] = sub_10003F624;
      v11[3] = &unk_10006D5A8;
      v11[4] = v12;
      v11[5] = a2;
      v7(v5, v11);
      (*(a1 + 1776))(v6);
      _Block_object_dispose(v12, 8);
      v8 = __p[0];
      if (__p[0])
      {
        do
        {
          v9 = *v8;
          operator delete(v8);
          v8 = v9;
        }

        while (v9);
      }

      v10 = v13[0];
      v13[0] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }
  }
}

void sub_10003F534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  sub_10004A460(v7 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_10003F554(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void sub_10003F5C4(uint64_t a1)
{
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
}

void sub_10003F624(uint64_t a1, unint64_t a2, const unsigned __int8 *a3, const std::string::value_type *a4)
{
  v15 = a2;
  sub_10004A4AC((*(*(a1 + 32) + 8) + 48), &v15);
  if ((v7 & 1) == 0)
  {
    return;
  }

  memset(&v16, 0, sizeof(v16));
  v17 = -1;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  *v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  std::string::assign(&v16, a4);
  uuid_copy(v21, a3);
  v17 = v15;
  v8 = *(a1 + 40);
  v9 = v8[1];
  if (v9 >= v8[2])
  {
    v10 = sub_10004A8E0(v8, &v16);
  }

  else
  {
    sub_10004AAD8(v8, v8[1], &v16);
    v10 = v9 + 160;
    v8[1] = v9 + 160;
  }

  v8[1] = v10;
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if ((SBYTE7(v23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator delete(v22[0]);
    v11 = v18;
    if (!v18)
    {
LABEL_8:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(v16.__r_.__value_.__l.__data_);
      return;
    }

    goto LABEL_12;
  }

  operator delete(*(&v23 + 1));
  if (SBYTE7(v23) < 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v11 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_12:
  v12 = v19;
  v13 = v11;
  if (v19 != v11)
  {
    do
    {
      v14 = *(v12 - 65);
      v12 -= 11;
      if (v14 < 0)
      {
        operator delete(*v12);
      }
    }

    while (v12 != v11);
    v13 = v18;
  }

  v19 = v11;
  operator delete(v13);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }
}

void sub_10003F7C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_10003F7EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003F7EC(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 64);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 104));
  v2 = *(a1 + 64);
  if (!v2)
  {
LABEL_4:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_15:
    operator delete(*a1);
    return a1;
  }

LABEL_8:
  v4 = *(a1 + 72);
  v5 = v2;
  if (v4 != v2)
  {
    do
    {
      v6 = *(v4 - 65);
      v4 -= 11;
      if (v6 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v2);
    v5 = *(a1 + 64);
  }

  *(a1 + 72) = v2;
  operator delete(v5);
  if (*(a1 + 23) < 0)
  {
    goto LABEL_15;
  }

  return a1;
}

void sub_10003F8C8(uint64_t a1, int a2, int a3)
{
  *v20 = 0xE00000001;
  v21 = 1;
  v22 = a2;
  v15 = 648;
  v5 = sysctl(v20, 4u, &__p, &v15, 0, 0);
  if (v15)
  {
    v6 = (v5 | v19 & 4) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8;
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_10003F3F4(a1, &__p);
  if (a3)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      v9 = *(a1 + 1760);
      if (v9 && (v20[0] = 0, (v10 = v9(*(a1 + 120), 0, v20)) != 0))
      {
        v11 = *(a1 + 1792);
        if (v11)
        {
          v12 = v10;
          v8 = v11();
          v10 = v12;
        }

        else
        {
          v8 = 0;
        }

        (*(a1 + 1776))(v10);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 8) = v8;
    }

    if (v17 != __p)
    {
      v13 = 0;
      if (0xCCCCCCCCCCCCCCCDLL * ((v17 - __p) >> 5) <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - __p) >> 5);
      }

      do
      {
        if (sub_10003D984(a1, v8, *(__p + v13 + 24), v7, __p + v13 + 32))
        {
          *(__p + v13 + 152) = 1;
        }

        v13 += 160;
        --v14;
      }

      while (v14);
    }
  }

  sub_10003E200();
}