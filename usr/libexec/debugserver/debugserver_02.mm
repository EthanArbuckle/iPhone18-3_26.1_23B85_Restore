BOOL sub_10001DF14(uint64_t a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v3 = a1;
      v4 = strlen(__s);
      a1 = v3;
      if (v4 > 2)
      {
        __endptr = 0;
        *__error() = 0;
        v8 = strtoull(__s + 1, &__endptr, 16);
        if (*__error() && !v8)
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3250;
          goto LABEL_5;
        }

        v9 = __endptr;
        if (*__endptr != 44)
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3254;
          goto LABEL_5;
        }

        *__error() = 0;
        v10 = strtoul(v9 + 1, 0, 16);
        if (*__error() && !v10)
        {
          v6 = v9 + 1;
          a1 = v3;
          v5 = 3268;
          goto LABEL_5;
        }

        if (!v10)
        {
          sub_100013A80(v36, "OK");
          v20 = sub_100029084(v3, v36);
          if (v37 < 0)
          {
            v21 = v36[0];
LABEL_44:
            operator delete(v21);
          }

          return v20;
        }

        sub_10002B1AC(v9, 0xFFFFFFFFFFFFFFFFLL, v36);
        v11 = v36[0];
        v12 = v36[1];
        __chkstk_darwin();
        v14 = &v33[-1] - v13;
        bzero(&v33[-1] - v13, v15);
        v16 = &v12[-v11];
        if (v12 != v11)
        {
          v17 = v14;
          v18 = v11;
          if (v16 < 8)
          {
            goto LABEL_33;
          }

          v17 = v14;
          v18 = v11;
          if (&v14[-v11] < 0x20)
          {
            goto LABEL_33;
          }

          if (v16 < 0x20)
          {
            v19 = 0;
            goto LABEL_28;
          }

          v19 = v16 & 0xFFFFFFFFFFFFFFE0;
          v22 = (v11 + 16);
          v23 = v14 + 16;
          v24 = v16 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v25 = *v22;
            *(v23 - 1) = *(v22 - 1);
            *v23 = v25;
            v22 += 2;
            v23 += 2;
            v24 -= 32;
          }

          while (v24);
          if (v16 != v19)
          {
            if ((v16 & 0x18) == 0)
            {
              v18 = (v11 + v19);
              v17 = &v14[v19];
              goto LABEL_33;
            }

LABEL_28:
            v17 = &v14[v16 & 0xFFFFFFFFFFFFFFF8];
            v18 = (v11 + (v16 & 0xFFFFFFFFFFFFFFF8));
            v26 = (v11 + v19);
            v27 = &v14[v19];
            v28 = v19 - (v16 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v29 = *v26++;
              *v27 = v29;
              v27 += 8;
              v28 += 8;
            }

            while (v28);
            if (v16 == (v16 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_34;
            }

            do
            {
LABEL_33:
              v30 = *v18++;
              *v17++ = v30;
            }

            while (v18 != v12);
          }
        }

LABEL_34:
        if (sub_10000D7D0(*(v3 + 12), v8, &v12[-v11], v14) == v16)
        {
          sub_100013A80(v33, "OK");
          v20 = sub_100029084(v3, v33);
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

          v31 = v33[0];
        }

        else
        {
          sub_100013A80(&v35, "E08");
          sub_100013A80(v33, &unk_10005B2EA);
          v20 = sub_100029BE8(v3, &v35, v33);
          if (v34 < 0)
          {
            operator delete(v33[0]);
          }

          if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_42:
            if (v11)
            {
              v21 = v11;
              goto LABEL_44;
            }

            return v20;
          }

          v31 = v35.__r_.__value_.__r.__words[0];
        }

        operator delete(v31);
        goto LABEL_42;
      }
    }
  }

  v5 = 3242;
  v6 = __s;
LABEL_5:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v5, v6);
}

BOOL sub_10001E2DC(uint64_t a1, uint64_t a2)
{
  memset(&v60, 0, sizeof(v60));
  LOBYTE(v3) = *(a2 + 6);
  if (v3)
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *(v5 - 1);
      if (!v6)
      {
        *(&v48.__r_.__value_.__s + 23) = 3;
        LODWORD(v48.__r_.__value_.__l.__data_) = 3356485;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        v13 = sub_100029BE8(a1, &v48, &__str);
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

        v15 = v48.__r_.__value_.__r.__words[0];
        goto LABEL_118;
      }

      __str.__r_.__value_.__s.__data_[0] = v3;
      *(&__str.__r_.__value_.__l.__data_ + 1) = v6;
      *__error() = 0;
      v7 = strtoul(&__str, 0, 16);
      v8 = *__error() && v7 == 0;
      if (v8)
      {
        break;
      }

      std::string::push_back(&v60, v7);
      v3 = *v5;
      v5 += 2;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    v13 = sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 1783, a2);
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_115;
  }

LABEL_9:
  sub_10002D678(&v60, &__str);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 3)
    {
      p_str = &__str;
      goto LABEL_14;
    }

LABEL_18:
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3749445;
    *(&v58.__r_.__value_.__s + 23) = 0;
    v58.__r_.__value_.__s.__data_[0] = 0;
    v13 = sub_100029BE8(a1, &__p, &v58);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    v14 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_20;
  }

  if (__str.__r_.__value_.__l.__size_ != 3)
  {
    goto LABEL_18;
  }

  p_str = __str.__r_.__value_.__r.__words[0];
LABEL_14:
  data_low = LOWORD(p_str->__r_.__value_.__l.__data_);
  v11 = p_str->__r_.__value_.__s.__data_[2];
  if (data_low != 25971 || v11 != 116)
  {
    goto LABEL_18;
  }

  sub_10002D678(&v60, &v58);
  memset(&v57, 0, sizeof(v57));
  v16 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  if ((*(&v60.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    size = v60.__r_.__value_.__l.__size_;
    if (!v60.__r_.__value_.__l.__size_)
    {
      memset(&v56, 0, sizeof(v56));
      goto LABEL_49;
    }

    v17 = v60.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v60.__r_.__value_.__s + 23))
    {
      goto LABEL_38;
    }

    v17 = &v60;
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  v19 = off_100074568;
  v20 = strlen(off_100074568);
  v21 = v17;
  if (v20)
  {
    v22 = v20;
    v21 = v17;
    while (memchr(v19, v21->__r_.__value_.__s.__data_[0], v22))
    {
      v21 = (v21 + 1);
      if (!--size)
      {
        v23 = -1;
        goto LABEL_36;
      }
    }
  }

  v23 = v21 - v17;
  if (v21 != v17)
  {
LABEL_36:
    std::string::erase(&v60, 0, v23);
    v16 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  if ((v16 & 0x80) == 0)
  {
LABEL_38:
    v24 = 0;
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v24 = 1;
  if (!v60.__r_.__value_.__l.__size_)
  {
    goto LABEL_45;
  }

LABEL_41:
  v8 = v24 == 0;
  v25 = &v60;
  if (!v8)
  {
    v25 = v60.__r_.__value_.__r.__words[0];
  }

  if (v25->__r_.__value_.__s.__data_[0] == 61)
  {
    std::string::operator=(&v57, 61);
    std::string::erase(&v60, 0, 1uLL);
    v16 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

LABEL_45:
  memset(&v56, 0, sizeof(v56));
  if ((v16 & 0x80) != 0)
  {
LABEL_49:
    v26 = v60.__r_.__value_.__l.__size_;
    if (!v60.__r_.__value_.__l.__size_)
    {
      goto LABEL_61;
    }

    v27 = v60.__r_.__value_.__r.__words[0];
    goto LABEL_51;
  }

  if (!v16)
  {
    goto LABEL_59;
  }

  v26 = v16;
  v27 = &v60;
LABEL_51:
  v28 = off_100074568;
  v29 = strlen(off_100074568);
  v30 = v27;
  if (v29)
  {
    v31 = v29;
    v30 = v27;
    while (memchr(v28, v30->__r_.__value_.__s.__data_[0], v31))
    {
      v30 = (v30 + 1);
      if (!--v26)
      {
        v32 = -1;
        goto LABEL_57;
      }
    }
  }

  v32 = v30 - v27;
  if (v30 != v27)
  {
LABEL_57:
    std::string::erase(&v60, 0, v32);
    v16 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  if ((v16 & 0x80) == 0)
  {
LABEL_59:
    if (!v16)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (v60.__r_.__value_.__l.__size_)
  {
LABEL_60:
    v56 = v60;
    memset(&v60, 0, sizeof(v60));
  }

LABEL_61:
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v58.__r_.__value_.__l.__size_ == 7 && *v58.__r_.__value_.__l.__data_ == 1718054764 && *(v58.__r_.__value_.__r.__words[0] + 3) == 1701603686)
    {
      goto LABEL_84;
    }

    if (v58.__r_.__value_.__l.__size_ == 7)
    {
      v34 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_75;
    }

LABEL_79:
    *(&v50.__r_.__value_.__s + 23) = 3;
    LODWORD(v50.__r_.__value_.__l.__data_) = 3159877;
    v55 = 0;
    v54[0] = 0;
    v13 = sub_100029BE8(a1, &v50, v54);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_110;
    }

    v39 = v50.__r_.__value_.__r.__words[0];
    goto LABEL_81;
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) != 7)
  {
    goto LABEL_79;
  }

  if (LODWORD(v58.__r_.__value_.__l.__data_) != 1718054764 || *(v58.__r_.__value_.__r.__words + 3) != 1701603686)
  {
    v34 = &v58;
LABEL_75:
    data = v34->__r_.__value_.__l.__data_;
    v37 = *(v34->__r_.__value_.__r.__words + 3);
    if (data != 1835495276 || v37 != 1802723693)
    {
      goto LABEL_79;
    }

    __endptr = 0;
    *__error() = 0;
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v56;
    }

    else
    {
      v42 = v56.__r_.__value_.__r.__words[0];
    }

    v43 = strtoul(v42, &__endptr, 0);
    if (*__error() || !__endptr || *__endptr)
    {
      *__error() = 0;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v56;
      }

      else
      {
        v44 = v56.__r_.__value_.__r.__words[0];
      }

      v45 = strtoul(v44, &__endptr, 16);
      if (*__error() || !__endptr || *__endptr)
      {
        *(&v51.__r_.__value_.__s + 23) = 3;
        LODWORD(v51.__r_.__value_.__l.__data_) = 3290949;
        v55 = 0;
        v54[0] = 0;
        v13 = sub_100029BE8(a1, &v51, v54);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          v39 = v51.__r_.__value_.__r.__words[0];
LABEL_81:
          operator delete(v39);
          goto LABEL_110;
        }

        goto LABEL_110;
      }

      sub_1000104DC(v45);
    }

    else
    {
      sub_1000104DC(v43);
      v46 = sub_100044794();
      if (v46)
      {
        sub_1000104F0(v46, 0);
      }
    }

    sub_100013A80(v54, "OK");
LABEL_109:
    v13 = sub_100029084(a1, v54);
    if (v55 < 0)
    {
      v39 = *v54;
      goto LABEL_81;
    }

    goto LABEL_110;
  }

LABEL_84:
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v56;
  }

  else
  {
    v40 = v56.__r_.__value_.__r.__words[0];
  }

  v41 = fopen(v40, "w");
  if (v41)
  {
    sub_1000104F0(sub_100005E88, v41);
    v55 = 2;
    strcpy(v54, "OK");
    goto LABEL_109;
  }

  *(&v53.__r_.__value_.__s + 23) = 3;
  LODWORD(v53.__r_.__value_.__l.__data_) = 3225413;
  v55 = 0;
  v54[0] = 0;
  v13 = sub_100029BE8(a1, &v53, v54);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    v39 = v53.__r_.__value_.__r.__words[0];
    goto LABEL_81;
  }

LABEL_110:
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_112:
      if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

LABEL_122:
      v14 = v58.__r_.__value_.__r.__words[0];
LABEL_20:
      operator delete(v14);
      goto LABEL_113;
    }
  }

  else if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_112;
  }

  operator delete(v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_122;
  }

LABEL_113:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v15 = __str.__r_.__value_.__r.__words[0];
LABEL_118:
    operator delete(v15);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_115;
    }
  }

  else
  {
LABEL_114:
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_115:
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  return v13;
}

BOOL sub_10001E960(uint64_t a1)
{
  v21 = 0;
  *(&v11 + *(v11 - 3)) = v2;
  v3 = (&v11 + *(v11 - 3));
  std::ios_base::init(v3, &v12);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  std::locale::locale(&v13);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  *v17 = 0u;
  v18 = 0u;
  v19 = 16;
  sub_100034D34(&v12);
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = sub_10000DE24(v4);
    sub_10000DFE4(*(a1 + 12), v5);
    *(a1 + 544) = v5;
  }

  v6 = sub_100034978(&v11, "QC", 2);
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  v7 = sub_100029084(a1, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(v17[0]);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return v7;
}

BOOL sub_10001EC7C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  result = sub_100029084(a1, &__dst);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  return result;
}

BOOL sub_10001ED60(uint64_t a1)
{
  v19 = 0;
  *(&v9 + *(v9 - 3)) = v2;
  v3 = (&v9 + *(v9 - 3));
  std::ios_base::init(v3, &v10);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  std::locale::locale(&v11);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v17 = 16;
  sub_100034D34(&v10);
  v4 = *(a1 + 12);
  *(&v9 + *(v9 - 3) + 8) = *(&v9 + *(v9 - 3) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  v5 = sub_100029084(a1, &__p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  std::ios::~ios();
  return v5;
}

BOOL sub_10001F038(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    if (*(a2 + 1) == 102)
    {
      v3 = sub_10000DD44(v2);
      v23 = 0;
      *(&v13 + *(v13 - 3)) = v4;
      v5 = (&v13 + *(v13 - 3));
      std::ios_base::init(v5, &v14);
      v5[1].__vftable = 0;
      v5[1].__fmtflags_ = -1;
      std::locale::locale(&v15);
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      *v19 = 0u;
      v20 = 0u;
      v21 = 16;
      sub_100034D34(&v14);
      sub_100034978(&v13, "m", 1);
      if (v3)
      {
        sub_10000E27C(v2, 0);
        *(&v13 + *(v13 - 3) + 8) = *(&v13 + *(v13 - 3) + 8) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        if (v3 != 1)
        {
          for (i = 1; i != v3; ++i)
          {
            sub_100034978(&v13, ",", 1);
            sub_10000E27C(v2, i);
            *(&v14 + *(v13 - 3)) = *(&v14 + *(v13 - 3)) & 0xFFFFFFB5 | 8;
            std::ostream::operator<<();
          }
        }
      }

      std::stringbuf::str();
      v7 = sub_100029084(a1, &__p);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      if (SBYTE7(v20) < 0)
      {
        operator delete(v19[0]);
      }

      std::locale::~locale(&v15);
      std::ostream::~ostream();
      std::ios::~ios();
      return v7;
    }

    HIBYTE(v15.__locale_) = 1;
    LOWORD(v13) = 108;
  }

  else
  {
    HIBYTE(v15.__locale_) = 2;
    strcpy(&v13, "OK");
  }

  result = sub_100029084(a1, &v13);
  if (SHIBYTE(v15.__locale_) < 0)
  {
    v9 = result;
    operator delete(v13);
    return v9;
  }

  return result;
}

BOOL sub_10001F434(uint64_t a1, uint64_t a2)
{
  strtoul((a2 + 15), 0, 16);

  return sub_10002BACC();
}

BOOL sub_10001F47C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    if (*(a2 + 16) != 44)
    {
      v6 = (a2 + 17);
      v7 = 1702;
      goto LABEL_8;
    }

    v4 = a1;
    *__error() = 0;
    v5 = strtoul((a2 + 17), 0, 16);
    if (*__error() && !v5)
    {
      v6 = (a2 + 17);
      a1 = v4;
      v7 = 1708;
LABEL_8:

      return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v7, v6);
    }

    v9 = sub_10000E19C(v2, v5);
    if (v9 && *v9)
    {
      v10 = v9;
      v11 = strlen(v9);

      return sub_100028AA0(v4, 0, v10, v11, 0);
    }

    v14 = 4;
    strcpy(__p, "4f6b");
    a1 = v4;
  }

  else
  {
    v14 = 2;
    strcpy(__p, "OK");
  }

  result = sub_100029084(a1, __p);
  if (v14 < 0)
  {
    v12 = result;
    operator delete(__p[0]);
    return v12;
  }

  return result;
}

BOOL sub_10001F5F0(uint64_t a1)
{
  if (*(a1 + 12) || !*(a1 + 312))
  {
    HIBYTE(v13) = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    goto LABEL_3;
  }

  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  *(&v11.__r_.__value_.__s + 23) = 3;
  LODWORD(v11.__r_.__value_.__l.__data_) = 3749957;
  v4 = sub_1000137DC(a1, __p);
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  result = sub_100029BE8(a1, &v11, &__dst);
  if (v10 < 0)
  {
    v7 = result;
    operator delete(__dst);
    result = v7;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v8 = result;
  operator delete(v11.__r_.__value_.__l.__data_);
  result = v8;
LABEL_3:
  if (SHIBYTE(v13) < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_10001F76C(uint64_t a1, uint64_t a2)
{
  if (!qword_10007DAF0)
  {
    sub_10002B45C(a1, 0);
  }

  v77 = 0;
  v4 = sub_10000E540(&v77);
  v5 = strtoul((a2 + 13), 0, 16);
  if (v5 < qword_10007DAF0)
  {
    v6 = qword_10007DAE8 + (v5 << 7);
    v76 = 0;
    *(&v66 + *(v66 - 3)) = v7;
    v8 = (&v66 + *(v66 - 3));
    std::ios_base::init(v8, &v67);
    v8[1].__vftable = 0;
    v8[1].__fmtflags_ = -1;
    std::locale::locale(&v68);
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    *v72 = 0u;
    v73 = 0u;
    v74 = 16;
    sub_100034D34(&v67);
    if (*(v6 + 16))
    {
      v9 = sub_100034978(&v66, "name:", 5);
      v10 = strlen(*(v6 + 16));
      v11 = sub_100034978(v9, *(v6 + 16), v10);
      LOBYTE(v64.__locale_) = 59;
      sub_100034978(v11, &v64, 1);
    }

    if (*(v6 + 24))
    {
      v12 = sub_100034978(&v66, "alt-name:", 9);
      v13 = strlen(*(v6 + 24));
      v14 = sub_100034978(v12, *(v6 + 24), v13);
      LOBYTE(v64.__locale_) = 59;
      sub_100034978(v14, &v64, 1);
    }

    v15 = sub_100034978(&v66, "bitsize:", 8);
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
    v16 = *(v6 + 36);
    v17 = std::ostream::operator<<();
    LOBYTE(v64.__locale_) = 59;
    sub_100034978(v17, &v64, 1);
    v18 = sub_100034978(&v66, "offset:", 7);
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 2;
    v19 = *(v6 + 4);
    v20 = std::ostream::operator<<();
    LOBYTE(v64.__locale_) = 59;
    sub_100034978(v20, &v64, 1);
    v21 = *(v6 + 32);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = "encoding:ieee754;";
        v24 = 17;
      }

      else
      {
        if (v21 != 4)
        {
          goto LABEL_21;
        }

        v22 = "encoding:vector;";
        v24 = 16;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v22 = "encoding:uint;";
      }

      else
      {
        if (v21 != 2)
        {
          goto LABEL_21;
        }

        v22 = "encoding:sint;";
      }

      v24 = 14;
    }

    sub_100034978(&v66, v22, v24);
LABEL_21:
    v25 = *(v6 + 34);
    if (v25 <= 6)
    {
      if (*(v6 + 34) > 3u)
      {
        if (v25 == 4)
        {
          v26 = "format:float;";
          v27 = 13;
        }

        else
        {
          if (v25 == 5)
          {
            v26 = "format:vector-sint8;";
          }

          else
          {
            if (v25 != 6)
            {
              goto LABEL_52;
            }

            v26 = "format:vector-uint8;";
          }

          v27 = 20;
        }
      }

      else
      {
        switch(v25)
        {
          case 1u:
            v26 = "format:binary;";
            v27 = 14;
            break;
          case 2u:
            v26 = "format:decimal;";
            v27 = 15;
            break;
          case 3u:
            v26 = "format:hex;";
            v27 = 11;
            break;
          default:
            goto LABEL_52;
        }
      }

      goto LABEL_51;
    }

    if (*(v6 + 34) > 9u)
    {
      if (v25 != 10)
      {
        if (v25 == 11)
        {
          v26 = "format:vector-float32;";
        }

        else
        {
          if (v25 != 12)
          {
            goto LABEL_52;
          }

          v26 = "format:vector-uint128;";
        }

        v27 = 22;
LABEL_51:
        sub_100034978(&v66, v26, v27);
LABEL_52:
        if (v4 && v77 > *(v6 + 8))
        {
          v28 = sub_100034978(&v66, "set:", 4);
          v29 = *(v4 + 24 * *(v6 + 8));
          v30 = strlen(v29);
          v31 = sub_100034978(v28, v29, v30);
          LOBYTE(v64.__locale_) = 59;
          sub_100034978(v31, &v64, 1);
        }

        if (*(v6 + 44) != -1)
        {
          v32 = sub_100034978(&v66, "ehframe:", 8);
          *(v32 + *(*v32 - 24) + 8) = *(v32 + *(*v32 - 24) + 8) & 0xFFFFFFB5 | 2;
          v33 = *(v6 + 44);
          v34 = std::ostream::operator<<();
          LOBYTE(v64.__locale_) = 59;
          sub_100034978(v34, &v64, 1);
        }

        if (*(v6 + 48) != -1)
        {
          v35 = sub_100034978(&v66, "dwarf:", 6);
          *(v35 + *(*v35 - 24) + 8) = *(v35 + *(*v35 - 24) + 8) & 0xFFFFFFB5 | 2;
          v36 = *(v6 + 48);
          v37 = std::ostream::operator<<();
          LOBYTE(v64.__locale_) = 59;
          sub_100034978(v37, &v64, 1);
        }

        switch(*(v6 + 52))
        {
          case 0:
            v38 = "generic:pc;";
            goto LABEL_69;
          case 1:
            v38 = "generic:sp;";
            goto LABEL_69;
          case 2:
            v38 = "generic:fp;";
            goto LABEL_69;
          case 3:
            v38 = "generic:ra;";
LABEL_69:
            v39 = 11;
            goto LABEL_75;
          case 4:
            v38 = "generic:flags;";
            v39 = 14;
            goto LABEL_75;
          case 5:
            v38 = "generic:arg1;";
            goto LABEL_74;
          case 6:
            v38 = "generic:arg2;";
            goto LABEL_74;
          case 7:
            v38 = "generic:arg3;";
            goto LABEL_74;
          case 8:
            v38 = "generic:arg4;";
            goto LABEL_74;
          case 9:
            v38 = "generic:arg5;";
            goto LABEL_74;
          case 0xA:
            v38 = "generic:arg6;";
            goto LABEL_74;
          case 0xB:
            v38 = "generic:arg7;";
            goto LABEL_74;
          case 0xC:
            v38 = "generic:arg8;";
LABEL_74:
            v39 = 13;
LABEL_75:
            sub_100034978(&v66, v38, v39);
            break;
          default:
            break;
        }

        if (*(v6 + 80) != *(v6 + 88))
        {
          sub_100034978(&v66, "container-regs:", 15);
          v40 = *(v6 + 88) - *(v6 + 80);
          if (v40)
          {
            v41 = v40 >> 2;
            v42 = v66;
            v43 = &v66 + *(v66 - 3);
            if (*(v43 + 36) == -1)
            {
              std::ios_base::getloc((&v66 + *(v66 - 3)));
              v44 = std::locale::use_facet(&v64, &std::ctype<char>::id);
              (v44->__vftable[2].~facet_0)(v44, 32);
              std::locale::~locale(&v64);
              v42 = v66;
            }

            *(v43 + 36) = 48;
            *(&v66 + *(v42 - 3) + 8) = *(&v66 + *(v42 - 3) + 8) & 0xFFFFFFB5 | 8;
            *(&v66 + *(v42 - 3) + 8) = *(&v66 + *(v42 - 3) + 8) & 0xFFFFFF4F | 0x80;
            v45 = **(v6 + 80);
            std::ostream::operator<<();
            if (v41 >= 2)
            {
              for (i = 1; i != v41; ++i)
              {
                LOBYTE(v64.__locale_) = 44;
                sub_100034978(&v66, &v64, 1);
                v55 = v66;
                v56 = &v66 + *(v66 - 3);
                if (*(v56 + 36) == -1)
                {
                  std::ios_base::getloc((&v66 + *(v66 - 3)));
                  v57 = std::locale::use_facet(&v64, &std::ctype<char>::id);
                  (v57->__vftable[2].~facet_0)(v57, 32);
                  std::locale::~locale(&v64);
                  v55 = v66;
                }

                *(v56 + 36) = 48;
                *(&v67 + *(v55 - 3)) = *(&v67 + *(v55 - 3)) & 0xFFFFFFB5 | 8;
                *(&v67 + *(v55 - 3)) = *(&v67 + *(v55 - 3)) & 0xFFFFFF4F | 0x80;
                v54 = *(*(v6 + 80) + 4 * i);
                std::ostream::operator<<();
              }
            }
          }

          LOBYTE(v64.__locale_) = 59;
          sub_100034978(&v66, &v64, 1);
        }

        if (*(v6 + 104) != *(v6 + 112))
        {
          sub_100034978(&v66, "invalidate-regs:", 16);
          v46 = *(v6 + 112) - *(v6 + 104);
          if (v46)
          {
            v47 = v46 >> 2;
            v48 = v66;
            v49 = &v66 + *(v66 - 3);
            if (*(v49 + 36) == -1)
            {
              std::ios_base::getloc((&v66 + *(v66 - 3)));
              v50 = std::locale::use_facet(&v64, &std::ctype<char>::id);
              (v50->__vftable[2].~facet_0)(v50, 32);
              std::locale::~locale(&v64);
              v48 = v66;
            }

            *(v49 + 36) = 48;
            *(&v66 + *(v48 - 3) + 8) = *(&v66 + *(v48 - 3) + 8) & 0xFFFFFFB5 | 8;
            *(&v66 + *(v48 - 3) + 8) = *(&v66 + *(v48 - 3) + 8) & 0xFFFFFF4F | 0x80;
            v51 = **(v6 + 104);
            std::ostream::operator<<();
            if (v47 >= 2)
            {
              for (j = 1; j != v47; ++j)
              {
                LOBYTE(v64.__locale_) = 44;
                sub_100034978(&v66, &v64, 1);
                v60 = v66;
                v61 = &v66 + *(v66 - 3);
                if (*(v61 + 36) == -1)
                {
                  std::ios_base::getloc((&v66 + *(v66 - 3)));
                  v62 = std::locale::use_facet(&v64, &std::ctype<char>::id);
                  (v62->__vftable[2].~facet_0)(v62, 32);
                  std::locale::~locale(&v64);
                  v60 = v66;
                }

                *(v61 + 36) = 48;
                *(&v67 + *(v60 - 3)) = *(&v67 + *(v60 - 3)) & 0xFFFFFFB5 | 8;
                *(&v67 + *(v60 - 3)) = *(&v67 + *(v60 - 3)) & 0xFFFFFF4F | 0x80;
                v59 = *(*(v6 + 104) + 4 * j);
                std::ostream::operator<<();
              }
            }
          }

          LOBYTE(v64.__locale_) = 59;
          sub_100034978(&v66, &v64, 1);
        }

        std::stringbuf::str();
        v23 = sub_100029084(a1, &v64);
        if (v65 < 0)
        {
          operator delete(v64.__locale_);
        }

        if (SBYTE7(v73) < 0)
        {
          operator delete(v72[0]);
        }

        std::locale::~locale(&v68);
        std::ostream::~ostream();
        std::ios::~ios();
        return v23;
      }

      v26 = "format:vector-uint32;";
    }

    else
    {
      switch(v25)
      {
        case 7u:
          v26 = "format:vector-sint16;";
          break;
        case 8u:
          v26 = "format:vector-uint16;";
          break;
        case 9u:
          v26 = "format:vector-sint32;";
          break;
        default:
          goto LABEL_52;
      }
    }

    v27 = 21;
    goto LABEL_51;
  }

  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 3486789;
  HIBYTE(v68.__locale_) = 0;
  LOBYTE(v66) = 0;
  v23 = sub_100029BE8(a1, &__p, &v66);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v23;
}

BOOL sub_10002050C(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (!v2 || sub_10000E43C(v2) == -1)
  {
    *(&v10.__r_.__value_.__s + 23) = 3;
    LODWORD(v10.__r_.__value_.__l.__data_) = 3421253;
    HIBYTE(v15.__locale_) = 0;
    LOBYTE(v13) = 0;
    v8 = sub_100029BE8(a1, &v10, &v13);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v23 = 0;
    *(&v13 + *(v13 - 3)) = v3;
    v4 = (&v13 + *(v13 - 3));
    std::ios_base::init(v4, &v14);
    v4[1].__vftable = 0;
    v4[1].__fmtflags_ = -1;
    std::locale::locale(&v15);
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    *__p = 0u;
    v20 = 0u;
    v21 = 16;
    sub_100034D34(&v14);
    v5 = v13;
    v6 = &v13 + *(v13 - 3);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((&v13 + *(v13 - 3)));
      v7 = std::locale::use_facet(&v11, &std::ctype<char>::id);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(&v11);
      v5 = v13;
    }

    *(v6 + 36) = 48;
    *(&v13 + *(v5 - 3) + 8) = *(&v13 + *(v5 - 3) + 8) & 0xFFFFFFB5 | 8;
    *(&v13 + *(v5 - 3) + 8) = *(&v13 + *(v5 - 3) + 8) & 0xFFFFFF4F | 0x80;
    std::ostream::operator<<();
    std::stringbuf::str();
    v8 = sub_100029084(a1, &v11);
    if (v12 < 0)
    {
      operator delete(v11.__locale_);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v15);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  return v8;
}

BOOL sub_10002090C(uint64_t a1)
{
  v4 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v4 < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_100020968(uint64_t a1)
{
  v4 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v4 < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_1000209C4(uint64_t a1)
{
  v4 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v4 < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_100020A20(uint64_t a1)
{
  v53 = 0;
  *(&v43 + *(v43 - 3)) = v1;
  v2 = (&v43 + *(v43 - 3));
  std::ios_base::init(v2, &v44);
  v2[1].__vftable = 0;
  v2[1].__fmtflags_ = -1;
  std::locale::locale(&v45);
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  __p = 0u;
  v50 = 0u;
  v51 = 16;
  sub_100034D34(&v44);
  v3 = dword_10047DB20;
  if (dword_10047DB20)
  {
    v4 = byte_10047DB2C;
    goto LABEL_17;
  }

  byte_10047DB2C = 0;
  v36 = 4;
  if (!sysctlbyname("hw.cputype", &dword_10047DB20, &v36, 0, 0))
  {
    v36 = 4;
    if (!sysctlbyname("hw.cpu64bit_capable", &dword_10047DB28, &v36, 0, 0) && dword_10047DB28 && (dword_10047DB20 & 0x1000000) == 0)
    {
      byte_10047DB2C = 1;
      dword_10047DB20 |= 0x1000000u;
    }
  }

  v36 = 4;
  v5 = sysctlbyname("hw.cpusubtype", &dword_10047DB24, &v36, 0, 0);
  v3 = dword_10047DB20;
  v4 = byte_10047DB2C;
  if (!v5)
  {
    v6 = dword_10047DB20 == 16777223 ? byte_10047DB2C : 0;
    if (v6 == 1 && dword_10047DB24 == 4)
    {
      dword_10047DB24 = 3;
      v4 = 1;
      v3 = 16777223;
      goto LABEL_17;
    }
  }

  if (dword_10047DB20)
  {
LABEL_17:
    v7 = sub_100034978(&v43, "cputype:", 8);
    *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 2;
    v8 = std::ostream::operator<<();
    LOBYTE(v36) = 59;
    sub_100034978(v8, &v36, 1);
    v9 = sub_100034978(&v43, "cpusubtype:", 11);
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
    v10 = std::ostream::operator<<();
    LOBYTE(v36) = 59;
    sub_100034978(v10, &v36, 1);
  }

  v42 = 0;
  if (sub_10000F464(&v42))
  {
    v11 = sub_100034978(&v43, "addressing_bits:", 16);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
    v12 = std::ostream::operator<<();
    LOBYTE(v36) = 59;
    sub_100034978(v12, &v36, 1);
  }

  if (v3 == 12 || v3 == 33554444 || v3 == 16777228)
  {
    sub_100034978(&v43, "ostype:ios;", 11);
    v13 = "watchpoint_exceptions_received:before;";
    v14 = 38;
  }

  else
  {
    sub_100034978(&v43, "ostype:macosx;", 14);
    v13 = "watchpoint_exceptions_received:after;";
    v14 = 37;
  }

  sub_100034978(&v43, v13, v14);
  sub_100034978(&v43, "vendor:apple;", 13);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v15 = sub_10000F138(&v41, &v40, &v39);
  if (v15)
  {
    sub_100034978(&v43, "os_version:", 11);
    v16 = std::ostream::operator<<();
    sub_100034978(v16, ".", 1);
    std::ostream::operator<<();
    if (v39 != -1)
    {
      sub_100034978(&v43, ".", 1);
      std::ostream::operator<<();
    }

    v15 = sub_100034978(&v43, ";", 1);
  }

  sub_10000F13C(&v36, v15);
  v17 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    v17 = v37;
    if (v37)
    {
      v18 = v36;
LABEL_34:
      while (1)
      {
        v19 = *v18;
        if (v19 != 46 && (v19 - 48) >= 0xA)
        {
          break;
        }

        ++v18;
        if (!--v17)
        {
          v21 = sub_100034978(&v43, "maccatalyst_version:", 20);
          if ((v38 & 0x80u) == 0)
          {
            v22 = &v36;
          }

          else
          {
            v22 = v36;
          }

          if ((v38 & 0x80u) == 0)
          {
            v23 = v38;
          }

          else
          {
            v23 = v37;
          }

          v24 = sub_100034978(v21, v22, v23);
          sub_100034978(v24, ";", 1);
          break;
        }
      }
    }
  }

  else if (v38)
  {
    v18 = &v36;
    goto LABEL_34;
  }

  sub_100034978(&v43, "endian:little;", 14);
  if (v4)
  {
    v25 = "ptrsize:8;";
    v26 = &v43;
    v27 = 10;
  }

  else
  {
    v28 = sub_100034978(&v43, "ptrsize:", 8);
    *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
    v26 = std::ostream::operator<<();
    LOBYTE(v34[0]) = 59;
    v25 = v34;
    v27 = 1;
  }

  sub_100034978(v26, v25, v27);
  v29 = sub_100034978(&v43, "vm-page-size:", 13);
  *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 2;
  v30 = std::ostream::operator<<();
  sub_100034978(v30, ";", 1);
  std::stringbuf::str();
  v31 = sub_100029084(a1, v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  operator delete(v36);
LABEL_51:
  if (SBYTE7(v50) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v45);
  std::ostream::~ostream();
  std::ios::~ios();
  return v31;
}

BOOL sub_1000211B0(uint64_t a1)
{
  v19 = 0;
  *(&v9 + *(v9 - 3)) = v2;
  v3 = (&v9 + *(v9 - 3));
  std::ios_base::init(v3, &v10);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  std::locale::locale(&v11);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v17 = 16;
  sub_100034D34(&v10);
  sub_100034978(&v9, "name:debugserver;", 17);
  sub_100034978(&v9, "version:", 8);
  v4 = std::ostream::operator<<();
  sub_100034978(v4, ";", 1);
  std::stringbuf::str();
  v5 = sub_100029084(a1, &__p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  std::ios::~ios();
  return v5;
}

BOOL sub_100021498()
{
  v0 = __chkstk_darwin();
  v66 = 0;
  *(&v56 + *(v56 - 3)) = v1;
  v2 = (&v56 + *(v56 - 3));
  std::ios_base::init(v2, &v57);
  v2[1].__vftable = 0;
  v2[1].__fmtflags_ = -1;
  std::locale::locale(&v58);
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 16;
  sub_100034D34(&v57);
  v5 = *(v0 + 12);
  if (!v5)
  {
    v68 = 3;
    LODWORD(v67[0]) = 3683909;
    goto LABEL_49;
  }

  v6 = sub_100034978(&v56, "pid:", 4);
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = std::ostream::operator<<();
  LOBYTE(v67[0]) = 59;
  sub_100034978(v7, v67, 1);
  *v72 = 0xE00000001;
  v72[2] = 1;
  v72[3] = v5;
  v55 = 648;
  if (!sysctl(v72, 4u, v71, &v55, 0, 0))
  {
    if (v55)
    {
      v8 = sub_100034978(&v56, "parent-pid:", 11);
      *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
      v9 = std::ostream::operator<<();
      LOBYTE(v67[0]) = 59;
      sub_100034978(v9, v67, 1);
      v10 = sub_100034978(&v56, "real-uid:", 9);
      *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
      v11 = std::ostream::operator<<();
      LOBYTE(v67[0]) = 59;
      sub_100034978(v11, v67, 1);
      v12 = sub_100034978(&v56, "real-gid:", 9);
      *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
      v13 = std::ostream::operator<<();
      LOBYTE(v67[0]) = 59;
      sub_100034978(v13, v67, 1);
      v14 = sub_100034978(&v56, "effective-uid:", 14);
      *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
      v15 = std::ostream::operator<<();
      LOBYTE(v67[0]) = 59;
      sub_100034978(v15, v67, 1);
      if (v71[212] >= 1)
      {
        v16 = sub_100034978(&v56, "effective-gid:", 14);
        *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
        v17 = std::ostream::operator<<();
        LOBYTE(v67[0]) = 59;
        sub_100034978(v17, v67, 1);
      }
    }
  }

  v18 = sub_10000C9B8(v5);
  if ((v19 & 1) == 0)
  {
    v20 = sub_10000D598(v5);
    if (!v20)
    {
      v20 = 16777228;
      if (sub_100010510())
      {
        sub_100010544(0, "Unable to get the process cpu_type, making a best guess.", v23, v24, v25, v26, v27, v28, v49);
      }
    }

    v50 = v0;
    LODWORD(v69) = 0;
    v67[0] = 4;
    v29 = sysctlbyname("hw.cpu64bit_capable", &v69, v67, 0, 0);
    v30 = v69;
    LODWORD(v54) = 0;
    v52 = 4;
    if (sysctlbyname("hw.cpusubtype", &v54, &v52, 0, 0) || v29 || !v30)
    {
      goto LABEL_27;
    }

    if (v20 == 12)
    {
      v31 = 12;
    }

    else
    {
      if (v20 != 7)
      {
LABEL_27:
LABEL_28:
        v34 = sub_100034978(&v56, "cputype:", 8);
        *(v34 + *(*v34 - 24) + 8) = *(v34 + *(*v34 - 24) + 8) & 0xFFFFFFB5 | 8;
        v35 = std::ostream::operator<<();
        sub_100034978(v35, ";", 1);
        v36 = sub_100034978(&v56, "cpusubtype:", 11);
        *(v36 + *(*v36 - 24) + 8) = *(v36 + *(*v36 - 24) + 8) & 0xFFFFFFB5 | 8;
        v37 = std::ostream::operator<<();
        LOBYTE(v67[0]) = 59;
        sub_100034978(v37, v67, 1);
        v38 = sub_100034978(&v56, "ptrsize:", 8);
        *(v38 + *(*v38 - 24) + 8) = *(v38 + *(*v38 - 24) + 8) & 0xFFFFFFB5 | 2;
        v39 = std::ostream::operator<<();
        LOBYTE(v67[0]) = 59;
        sub_100034978(v39, v67, 1);
        v0 = v50;
        v3 = v22;
        v4 = v21;
        if (v20 == 12 || v20 == 16777228 || v20 == 33554444)
        {
LABEL_31:
          v40 = "ostype:ios;";
          v41 = 11;
        }

        else
        {
          if ((v20 & 0xFEFFFFFF) == 7)
          {
            v69 = 0x3100000001;
            v70 = v5;
            v54 = 0x2000;
            if (!sysctl(&v69, 3u, v67, &v54, 0, 0))
            {
              sub_10000FAA4(&v52, v67, v54, 0);
              v51 = 0;
              v42 = sub_10000FAC8(&v52, &v51);
              if (sub_10000FC2C(&v52, &v51, 0))
              {
                if (v52)
                {
                  v43 = v51;
                  if (v53 - v52 > v51)
                  {
                    v44 = v51 + 1;
                    do
                    {
                      if (*(v52 + v43))
                      {
                        break;
                      }

                      v51 = v44;
                      v43 = v44++;
                    }

                    while (v53 - v52 > v43);
                  }
                }

                for (; v42; --v42)
                {
                  sub_10000FC2C(&v52, &v51, 0);
                }

                do
                {
                  v45 = sub_10000FC2C(&v52, &v51, 0);
                  if (!v45)
                  {
                    break;
                  }

                  v46 = v45;
                  if (!strncmp(v45, "SIMULATOR_UDID=", 0xFuLL))
                  {
                    nullsub_1(&v52);
                    goto LABEL_31;
                  }
                }

                while (*v46);
              }

              nullsub_1(&v52);
            }
          }

          v40 = "ostype:macosx;";
          v41 = 14;
        }

        sub_100034978(&v56, v40, v41);
        sub_100034978(&v56, "vendor:apple;", 13);
        sub_100034978(&v56, "endian:little;", 14);
        goto LABEL_48;
      }

      v31 = 3;
    }

    LODWORD(v54) = v31;
    goto LABEL_27;
  }

  v20 = v18;
  if (v18)
  {
    v50 = v0;
    goto LABEL_28;
  }

  sub_100034978(&v56, "ostype:macosx;", 14);
  sub_100034978(&v56, "vendor:apple;", 13);
  sub_100034978(&v56, "endian:little;", 14);
  v32 = sub_10000DF04(v5);
  LODWORD(v52) = 70;
  if (!thread_get_state(v32, 1, v67, &v52))
  {
    if (LODWORD(v67[0]) == 6)
    {
      v33 = "ptrsize:8;";
    }

    else
    {
      v33 = "ptrsize:4;";
    }

    sub_100034978(&v56, v33, 10);
  }

LABEL_48:
  std::stringbuf::str();
LABEL_49:
  v47 = sub_100029084(v0, v67);
  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  v57 = v4;
  if (SBYTE7(v63) < 0)
  {
    operator delete(v62);
  }

  v57 = v3;
  std::locale::~locale(&v58);
  std::ostream::~ostream();
  std::ios::~ios();
  return v47;
}

BOOL sub_100021E68(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  v4 = strchr((a2 + 8), 58);
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  if (v4 > v3)
  {
    std::string::assign(&v45, v3, v4 - v3);
  }

  v7 = v4[1];
  v6 = v4 + 1;
  v5 = v7;
  if (!v7)
  {
    *(a1 + 664) = 0;
    goto LABEL_44;
  }

  v8 = 0;
  memset(&v38, 0, sizeof(v38));
  do
  {
    v9 = v6[v8];
    if ((v9 - 97) > 5)
    {
      if ((v9 - 65) > 5)
      {
        v10 = v9 - 48;
        if (v10 > 9)
        {
          break;
        }
      }

      else
      {
        v10 = v9 - 55;
      }
    }

    else
    {
      v10 = v9 - 87;
    }

    if (v10 == -1)
    {
      break;
    }

    v11 = v6[v8 + 1];
    if ((v11 - 97) > 5)
    {
      if ((v11 - 65) > 5)
      {
        v12 = v11 - 48;
        if (v12 > 9)
        {
          break;
        }
      }

      else
      {
        v12 = v11 - 55;
      }
    }

    else
    {
      v12 = v11 - 87;
    }

    if (v12 == -1)
    {
      break;
    }

    std::string::push_back(&v38, v12 + 16 * v10);
    v8 += 2;
  }

  while (v8 < 0x1FFFFFFFELL);
  v46 = v38;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v45.__r_.__value_.__l.__size_)
    {
      goto LABEL_40;
    }

    v13 = v45.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v45.__r_.__value_.__s + 23))
    {
      goto LABEL_40;
    }

    v13 = &v45;
  }

  v14 = strtoull(v13, 0, 16);
  if (v14)
  {
    v15 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (v15 != 22)
      {
        v5 = *(a1 + 664) + 1;
        *(a1 + 664) = v5;
LABEL_44:
        v46.__r_.__value_.__s.__data_[0] = 0;
        *(&v46.__r_.__value_.__s + 23) = 0;
        if (v5)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }

      v16 = &v46;
      goto LABEL_31;
    }
  }

  else
  {
    __error();
    v15 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v46.__r_.__value_.__l.__size_ != 22)
  {
    goto LABEL_40;
  }

  v16 = v46.__r_.__value_.__r.__words[0];
LABEL_31:
  v17 = v16->__r_.__value_.__r.__words[0];
  size = v16->__r_.__value_.__l.__size_;
  v19 = *(&v16->__r_.__value_.__r.__words[1] + 6);
  if (v17 == 0x6863746170736964 && size == 0x6F5F65756575715FLL && v19 == 0x7374657366666F5FLL)
  {
    *(a1 + 656) = v14;
  }

LABEL_40:
  v22 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  v5 = *(a1 + 664) + 1;
  *(a1 + 664) = v5;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  *v46.__r_.__value_.__l.__data_ = 0;
  v46.__r_.__value_.__l.__size_ = 0;
  if (*(a1 + 664))
  {
    goto LABEL_48;
  }

LABEL_45:
  if (*(a1 + 656) == -1)
  {
    std::string::assign(&v46, "dispatch_queue_offsets");
  }

  else
  {
    *(a1 + 664) = 1;
  }

LABEL_48:
  v23 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v46.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    v44 = 0;
    *(v38.__r_.__value_.__r.__words + *(v38.__r_.__value_.__r.__words[0] - 24)) = v24;
    v25 = (&v38 + *(v38.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v25, &v38.__r_.__value_.__r.__words[1]);
    v25[1].__vftable = 0;
    v25[1].__fmtflags_ = -1;
    std::locale::locale(&v38.__r_.__value_.__r.__words[2]);
    memset(v39, 0, sizeof(v39));
    *__p = 0u;
    v41 = 0u;
    v42 = 16;
    sub_100034D34(&v38.__r_.__value_.__l.__size_);
    sub_100034978(&v38, "qSymbol:", 8);
    v26 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v46.__r_.__value_.__l.__size_;
    }

    if (v26)
    {
      for (i = 0; i < v30; ++i)
      {
        v31 = v38.__r_.__value_.__r.__words[0];
        v32 = &v38 + *(v38.__r_.__value_.__r.__words[0] - 24);
        if (*(v32 + 36) == -1)
        {
          std::ios_base::getloc((&v38 + *(v38.__r_.__value_.__r.__words[0] - 24)));
          v33 = std::locale::use_facet(&v36, &std::ctype<char>::id);
          (v33->__vftable[2].~facet_0)(v33, 32);
          std::locale::~locale(&v36);
          v31 = v38.__r_.__value_.__r.__words[0];
        }

        *(v32 + 36) = 48;
        *(&v38.__r_.__value_.__r.__words[1] + *(v31 - 24)) = *(&v38.__r_.__value_.__r.__words[1] + *(v31 - 24)) & 0xFFFFFFB5 | 8;
        *(&v38.__r_.__value_.__r.__words[1] + *(v31 - 24)) = *(&v38.__r_.__value_.__r.__words[1] + *(v31 - 24)) & 0xFFFFFF4F | 0x80;
        *(v39 + *(v31 - 24)) = 2;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v46;
        }

        else
        {
          v28 = v46.__r_.__value_.__r.__words[0];
        }

        v29 = v28->__r_.__value_.__s.__data_[i];
        std::ostream::operator<<();
        v30 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v46.__r_.__value_.__l.__size_;
        }
      }
    }

    std::stringbuf::str();
    v34 = sub_100029084(a1, &v36);
    if (v37 < 0)
    {
      operator delete(v36.__locale_);
    }

    if (SBYTE7(v41) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v38.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_74:
      operator delete(v45.__r_.__value_.__l.__data_);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_75;
      }

      return v34;
    }
  }

  else
  {
    *(&v38.__r_.__value_.__s + 23) = 2;
    strcpy(&v38, "OK");
    v34 = sub_100029084(a1, &v38);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_74;
      }
    }

    else if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_75:
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return v34;
}

BOOL sub_100022550(uint64_t a1)
{
  *(a1 + 800) = 1;
  v4 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v4 < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_1000225B4(uint64_t a1, uint64_t a2)
{
  v152 = 0;
  *(&v142 + *(v142 - 3)) = v4;
  v5 = (&v142 + *(v142 - 3));
  std::ios_base::init(v5, &v143);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::locale::locale(&v144);
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 16;
  sub_100034D34(&v143);
  v8 = *(a1 + 12);
  if (v8)
  {
    if (!strncmp(a2, "jThreadExtendedInfo:{", 0x15uLL))
    {
      v10 = sub_100032330("thread", (a2 + 21));
      v11 = sub_100032330("plo_pthread_tsd_base_address_offset", (a2 + 21));
      v12 = sub_100032330("plo_pthread_tsd_base_offset", (a2 + 21));
      v13 = sub_100032330("plo_pthread_tsd_entry_size", (a2 + 21));
      v14 = (a2 + 21);
      v15 = v10;
      v16 = sub_100032330("dti_qos_class_index", v14);
      if (v10 != -1)
      {
        v131 = v16;
        v17 = sub_10000C718(v8, v10);
        v18 = v17;
        if (v13 == -1 || v12 == -1)
        {
          v132 = 0;
          v135 = 0;
          v30 = 0;
          v140 = 0;
          v22 = v17 != -1;
          v21 = 0.0;
          v20 = -1;
        }

        else
        {
          v19 = sub_10000C8D8(v8, v15, v11, v12, v13);
          v20 = v19;
          v135 = 0;
          v140 = 0;
          v21 = 0.0;
          v22 = v18 != -1;
          if (v18 == -1 || v19 == -1)
          {
            v132 = v19 != -1;
            v30 = 0;
          }

          else
          {
            v133 = v19;
            v129 = a1;
            __str.__r_.__value_.__r.__words[0] = 0;
            gettimeofday(&__str.__r_.__value_.__r.__words[1], 0);
            v23 = v15;
            sub_10000C43C(v8, v15, &v140, &v137);
            tv_sec = v137.tv_sec;
            v135 = *&v137.tv_usec;
            v24 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__r.__words[0])
            {
              pthread_mutex_lock(__str.__r_.__value_.__l.__data_);
            }

            gettimeofday(&v137, 0);
            v25 = v137.tv_sec;
            tv_usec = v137.tv_usec;
            size = __str.__r_.__value_.__l.__size_;
            v28 = SLODWORD(__str.__r_.__value_.__r.__words[2]);
            if (v24)
            {
              pthread_mutex_unlock(v24);
            }

            v29 = (tv_usec - v28 + 1000000 * (v25 - size));
            v15 = v23;
            a1 = v129;
            v20 = v133;
            if (v24)
            {
              if (pthread_mutex_destroy(v24) && !pthread_mutex_unlock(v24))
              {
                pthread_mutex_destroy(v24);
              }

              operator delete();
            }

            v132 = 1;
            v22 = 1;
            v21 = v29 / 1000000.0;
            v30 = tv_sec;
          }
        }

        v137 = 0;
        *v138 = 0u;
        v139 = 1065353216;
        sub_100034978(&v142, "{", 1);
        v134 = v20;
        if (v30)
        {
          if ((v140 & 1) == 0)
          {
            sub_100034978(&v142, "activity_query_timed_out:false,", 33);
            v130 = a1;
            v125 = v15;
            v128 = v22;
            if (v21 == 0.0 || (__str.__r_.__value_.__s.__data_[0] = 0, snprintf(&__str, 0x40uLL, "%f", v21), !__str.__r_.__value_.__s.__data_[0]))
            {
              if (v30->__r_.__value_.__l.__size_)
              {
                goto LABEL_40;
              }

              v37 = 0;
            }

            else
            {
              v31 = v30;
              v32 = sub_100034978(&v142, "activity_query_duration:", 26);
              v33 = strlen(&__str);
              v34 = v32;
              v30 = v31;
              sub_100034978(v34, &__str, v33);
              if (v31->__r_.__value_.__l.__size_)
              {
                sub_100034978(&v142, ",", 1);
LABEL_40:
                sub_100034978(&v142, "activity:{", 12);
                sub_100034978(&v142, "start:", 8);
                v38 = v30->__r_.__value_.__r.__words[0];
                v39 = std::ostream::operator<<();
                v40 = v30;
                sub_100034978(v39, ",", 1);
                sub_100034978(&v142, "id:", 5);
                v41 = v30->__r_.__value_.__l.__size_;
                v42 = std::ostream::operator<<();
                sub_100034978(v42, ",", 1);
                sub_100034978(&v142, "parent_id:", 12);
                v43 = v30->__r_.__value_.__r.__words[2];
                v44 = std::ostream::operator<<();
                sub_100034978(v44, ",", 1);
                v45 = sub_100034978(&v142, "name:", 8);
                sub_10002B2FC(v40 + 1, &__str);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_str = &__str;
                }

                else
                {
                  p_str = __str.__r_.__value_.__r.__words[0];
                }

                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v47 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v47 = __str.__r_.__value_.__l.__size_;
                }

                v48 = sub_100034978(v45, p_str, v47);
                sub_100034978(v48, ",", 2);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v49 = sub_100034978(&v142, "reason:", 10);
                sub_10002B2FC(v40 + 2, &__str);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v50 = &__str;
                }

                else
                {
                  v50 = __str.__r_.__value_.__r.__words[0];
                }

                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v51 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v51 = __str.__r_.__value_.__l.__size_;
                }

                v52 = sub_100034978(v49, v50, v51);
                sub_100034978(v52, "", 1);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                sub_100034978(&v142, "}", 1);
                v127 = v40;
                v53 = &v40[3];
                p_size = &v40[3].__r_.__value_.__l.__size_;
                if (v40[3].__r_.__value_.__l.__size_ == v40[3].__r_.__value_.__r.__words[0])
                {
                  goto LABEL_144;
                }

                sub_100034978(&v142, ",", 1);
LABEL_130:
                sub_100034978(&v142, "trace_messages:[", 18);
                v77 = v53->__words[0];
                if (v53->__words[0] != *p_size)
                {
                  v78 = 0;
                  do
                  {
                    if (v78)
                    {
                      sub_100034978(&v142, ",", 1);
                    }

                    sub_100034978(&v142, "{", 1);
                    sub_100034978(&v142, "timestamp:", 12);
                    v79 = *v77;
                    v80 = std::ostream::operator<<();
                    sub_100034978(v80, ",", 1);
                    sub_100034978(&v142, "activity_id:", 14);
                    v81 = *(v77 + 8);
                    v82 = std::ostream::operator<<();
                    sub_100034978(v82, ",", 1);
                    sub_100034978(&v142, "trace_id:", 11);
                    v83 = *(v77 + 16);
                    v84 = std::ostream::operator<<();
                    sub_100034978(v84, ",", 1);
                    sub_100034978(&v142, "thread:", 9);
                    v85 = *(v77 + 24);
                    v86 = std::ostream::operator<<();
                    sub_100034978(v86, ",", 1);
                    sub_100034978(&v142, "type:", 7);
                    v87 = *(v77 + 32);
                    v88 = std::ostream::operator<<();
                    sub_100034978(v88, ",", 1);
                    sub_100034978(&v142, "process_info_index:", 21);
                    v90 = *(v77 + 36);
                    v89 = v77 + 36;
                    v91 = std::ostream::operator<<();
                    sub_100034978(v91, ",", 1);
                    sub_1000361EC(&v137, v89);
                    v92 = sub_100034978(&v142, "message:", 11);
                    v93 = v89 + 4;
                    sub_10002B2FC((v89 + 4), &__str);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v94 = &__str;
                    }

                    else
                    {
                      v94 = __str.__r_.__value_.__r.__words[0];
                    }

                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v95 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v95 = __str.__r_.__value_.__l.__size_;
                    }

                    v96 = sub_100034978(v92, v94, v95);
                    sub_100034978(v96, "", 1);
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    v78 = 1;
                    sub_100034978(&v142, "}", 1);
                    v77 = v89 + 28;
                  }

                  while (v93 + 24 != *p_size);
                }

                sub_100034978(&v142, "]", 1);
LABEL_144:
                v97 = &v127[4];
                v98 = &v127[4].__r_.__value_.__l.__size_;
                if (v127[4].__r_.__value_.__l.__size_ - v127[4].__r_.__value_.__r.__words[0] != 48)
                {
LABEL_158:
                  if (v138[1])
                  {
                    sub_100034978(&v142, ",", 1);
                    a1 = v130;
                    v15 = v125;
                    goto LABEL_160;
                  }

                  v37 = 1;
                  a1 = v130;
                  v15 = v125;
                  goto LABEL_36;
                }

                sub_100034978(&v142, ",", 1);
LABEL_146:
                sub_100034978(&v142, "breadcrumb:{", 14);
                v99 = *v97;
                if (*v97 != *v98)
                {
                  do
                  {
                    sub_100034978(&v142, "breadcrumb_id:", 16);
                    data_low = LODWORD(v99->__r_.__value_.__l.__data_);
                    v101 = std::ostream::operator<<();
                    sub_100034978(v101, ",", 1);
                    sub_100034978(&v142, "activity_id:", 14);
                    v102 = v99->__r_.__value_.__l.__size_;
                    v103 = std::ostream::operator<<();
                    sub_100034978(v103, ",", 1);
                    sub_100034978(&v142, "timestamp:", 12);
                    v104 = v99->__r_.__value_.__r.__words[2];
                    v105 = std::ostream::operator<<();
                    sub_100034978(v105, ",", 1);
                    v106 = sub_100034978(&v142, "name:", 8);
                    v107 = v99 + 1;
                    sub_10002B2FC(v107, &__str);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v108 = &__str;
                    }

                    else
                    {
                      v108 = __str.__r_.__value_.__r.__words[0];
                    }

                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v109 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v109 = __str.__r_.__value_.__l.__size_;
                    }

                    v110 = sub_100034978(v106, v108, v109);
                    sub_100034978(v110, "", 1);
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    v99 = v107 + 1;
                  }

                  while (v99 != *v98);
                }

                sub_100034978(&v142, "}", 1);
                v22 = v128;
                goto LABEL_158;
              }

              v37 = 1;
            }

            v75 = v30;
            data = v30[3].__r_.__value_.__l.__data_;
            v53 = &v30[3];
            p_size = &v53->__words[1];
            if (v53->__words[1] == data)
            {
              v124 = v75[4].__r_.__value_.__l.__data_;
              v123 = v75 + 4;
              v98 = &v123->__r_.__value_.__l.__size_;
              if (v123->__r_.__value_.__l.__size_ - v124 != 48)
              {
                a1 = v130;
                v15 = v125;
                if (v138[1])
                {
LABEL_160:
                  v111 = v138[0];
                  if (v138[0])
                  {
                    v112 = 0;
                    do
                    {
                      if (v112)
                      {
                        sub_100034978(&v142, ",", 1);
                      }

                      v113.n128_f64[0] = sub_10000C52C(v8, *(v111 + 4), &__str);
                      v114 = *&__str.__r_.__value_.__l.__data_;
                      if (__str.__r_.__value_.__r.__words[0])
                      {
                        if ((v112 & 1) == 0)
                        {
                          sub_100034978(&v142, "process_infos:[", 17);
                        }

                        sub_100034978(&v142, "{", 1);
                        uuid_unparse_upper((v114 + 24), &__str);
                        sub_100034978(&v142, "process_info_index:", 21);
                        v115 = std::ostream::operator<<();
                        sub_100034978(v115, ",", 1);
                        v116 = sub_100034978(&v142, "image_path:", 14);
                        sub_10002B2FC(v114, &v136);
                        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v117 = &v136;
                        }

                        else
                        {
                          v117 = v136.__r_.__value_.__r.__words[0];
                        }

                        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v118 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v118 = v136.__r_.__value_.__l.__size_;
                        }

                        v119 = sub_100034978(v116, v117, v118);
                        sub_100034978(v119, ",", 2);
                        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v136.__r_.__value_.__l.__data_);
                        }

                        v120 = sub_100034978(&v142, "image_uuid:", 14);
                        v121 = strlen(&__str);
                        v122 = sub_100034978(v120, &__str, v121);
                        v112 = 1;
                        sub_100034978(v122, "", 1);
                        sub_100034978(&v142, "}", 1);
                      }

                      if (*(&v114 + 1) && !atomic_fetch_add((*(&v114 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (*(**(&v114 + 1) + 16))(*(&v114 + 1), v113);
                        std::__shared_weak_count::__release_weak(*(&v114 + 1));
                      }

                      v111 = *v111;
                    }

                    while (v111);
                    v15 = v125;
                    v37 = 1;
                    if (v112)
                    {
                      sub_100034978(&v142, "]", 1);
                    }

                    a1 = v130;
                    v22 = v128;
                  }

                  else
                  {
                    v37 = 1;
                    v22 = v128;
                  }
                }

LABEL_36:
                if (!v132)
                {
LABEL_83:
                  if (!v22)
                  {
                    if (sub_10000C7F8(v8, v15) == -1)
                    {
LABEL_92:
                      sub_100034978(&v142, "}", 1);
                      v64 = &v136;
                      std::stringbuf::str();
                      memset(&__str, 0, sizeof(__str));
                      v65 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v66 = v136.__r_.__value_.__l.__size_;
                      }

                      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v64 = v136.__r_.__value_.__r.__words[0];
                      }

                      if (v66)
                      {
                        do
                        {
                          v68 = v64->__r_.__value_.__s.__data_[0];
                          v64 = (v64 + 1);
                          v67 = v68;
                          v69 = (1 << v68) & 0x41800000000;
                          v70 = v68 > 0x2A || v69 == 0;
                          if (!v70 || v67 == 125)
                          {
                            std::string::push_back(&__str, 125);
                            LOBYTE(v67) = v67 & 0x5F;
                          }

                          std::string::push_back(&__str, v67);
                          --v66;
                        }

                        while (v66);
                        v65 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                      }

                      if (v65 < 0)
                      {
                        operator delete(v136.__r_.__value_.__l.__data_);
                      }

                      v9 = sub_100029084(a1, &__str);
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      v71 = v138[0];
                      if (v138[0])
                      {
                        do
                        {
                          v72 = *v71;
                          operator delete(v71);
                          v71 = v72;
                        }

                        while (v72);
                      }

                      v73 = v137.tv_sec;
                      v137.tv_sec = 0;
                      if (v73)
                      {
                        operator delete(v73);
                      }

                      if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v135->__on_zero_shared)(v135);
                        std::__shared_weak_count::__release_weak(v135);
                      }

                      goto LABEL_120;
                    }

                    if (!v37)
                    {
LABEL_91:
                      sub_100034978(&v142, "dispatch_queue_t:", 19);
                      std::ostream::operator<<();
                      goto LABEL_92;
                    }

LABEL_90:
                    sub_100034978(&v142, ",", 1);
                    goto LABEL_91;
                  }

                  if (v37)
                  {
                    sub_100034978(&v142, ",", 1);
                  }

LABEL_86:
                  sub_100034978(&v142, "pthread_t:", 12);
                  std::ostream::operator<<();
                  if (sub_10000C7F8(v8, v15) == -1)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_90;
                }

                if (v37)
                {
                  sub_100034978(&v142, ",", 1);
                }

LABEL_59:
                sub_100034978(&v142, "tsd_address:", 14);
                std::ostream::operator<<();
                if ((v131 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  sub_10000C61C(v8, v15, v134, v131, &__str);
                  if (v155 != -1)
                  {
                    sub_100034978(&v142, ",", 1);
                    sub_100034978(&v142, "requested_qos:{", 17);
                    sub_100034978(&v142, "enum_value:", 13);
                    v55 = std::ostream::operator<<();
                    sub_100034978(v55, ",", 1);
                    v56 = sub_100034978(&v142, "constant_name:", 17);
                    sub_10002B2FC(&__str, &v136);
                    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v57 = &v136;
                    }

                    else
                    {
                      v57 = v136.__r_.__value_.__r.__words[0];
                    }

                    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v58 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v58 = v136.__r_.__value_.__l.__size_;
                    }

                    v59 = sub_100034978(v56, v57, v58);
                    sub_100034978(v59, ",", 2);
                    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v136.__r_.__value_.__l.__data_);
                    }

                    v60 = sub_100034978(&v142, "printable_name:", 18);
                    sub_10002B2FC(&v154, &v136);
                    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v61 = &v136;
                    }

                    else
                    {
                      v61 = v136.__r_.__value_.__r.__words[0];
                    }

                    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v62 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v62 = v136.__r_.__value_.__l.__size_;
                    }

                    v63 = sub_100034978(v60, v61, v62);
                    sub_100034978(v63, "", 1);
                    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v136.__r_.__value_.__l.__data_);
                    }

                    sub_100034978(&v142, "}", 1);
                  }

                  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v154.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }
                }

                v37 = 1;
                goto LABEL_83;
              }

              v97 = v123;
              goto LABEL_146;
            }

            v127 = v75;
            goto LABEL_130;
          }
        }

        else if ((v140 & 1) == 0)
        {
          if (!v132)
          {
            if (!v22)
            {
              if (sub_10000C7F8(v8, v15) == -1)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

            goto LABEL_86;
          }

          goto LABEL_59;
        }

        sub_100034978(&v142, "activity_query_timed_out:true", 31);
        if (v21 != 0.0)
        {
          __str.__r_.__value_.__s.__data_[0] = 0;
          snprintf(&__str, 0x40uLL, "%f", v21);
          if (__str.__r_.__value_.__s.__data_[0])
          {
            sub_100034978(&v142, ",", 1);
            v35 = sub_100034978(&v142, "activity_query_duration:", 26);
            v36 = strlen(&__str);
            sub_100034978(v35, &__str, v36);
          }
        }

        v37 = 1;
        goto LABEL_36;
      }
    }

    *(&__str.__r_.__value_.__s + 23) = 2;
    strcpy(&__str, "OK");
    v9 = sub_100029084(a1, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3225669;
    *(&__str.__r_.__value_.__s + 23) = 0;
    __str.__r_.__value_.__s.__data_[0] = 0;
    v9 = sub_100029BE8(a1, &__p, &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_120:
  v143 = v7;
  if (SBYTE7(v149) < 0)
  {
    operator delete(v148);
  }

  v143 = v6;
  std::locale::~locale(&v144);
  std::ostream::~ostream();
  std::ios::~ios();
  return v9;
}

uint64_t sub_100023884(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    *(&v37.__r_.__value_.__s + 23) = 3;
    LODWORD(v37.__r_.__value_.__l.__data_) = 3356741;
    HIBYTE(v23.__locale_) = 0;
    LOBYTE(v21) = 0;
    result = sub_100029BE8(a1, &v37, &v21);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = v37.__r_.__value_.__r.__words[0];
LABEL_33:
    v16 = result;
    operator delete(v8);
    return v16;
  }

  if (strncmp(__s1, "jGetLoadedDynamicLibrariesInfos:{", 0x21uLL))
  {
LABEL_31:
    HIBYTE(v23.__locale_) = 2;
    strcpy(&v21, "OK");
    result = sub_100029084(a1, &v21);
    if ((SHIBYTE(v23.__locale_) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = v21;
    goto LABEL_33;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v32 = 1;
  sub_10003247C("report_load_commands", __s1 + 33, &v32);
  if (sub_10003247C("fetch_all_solibs", __s1 + 33, &v33) && v33 == 1)
  {
    result = sub_10000CAB0(v2, v32, &v21);
    v7 = v21;
    v6 = v22;
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = sub_1000325EC("solib_addresses", __s1 + 33, &v34);
    if (!result)
    {
      v6 = 0;
      goto LABEL_25;
    }

    result = sub_10000CBA4(v2, &v34, &v21);
    v7 = v21;
    v6 = v22;
    if (!v21)
    {
LABEL_25:
      v12 = 1;
      v13 = v34;
      if (!v34)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v31 = 0;
  *(&v21 + *(v21 - 3)) = v9;
  v10 = (&v21 + *(v21 - 3));
  std::ios_base::init(v10, &v22);
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  std::locale::locale(&v23);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v29 = 16;
  sub_100034D34(&v22);
  (*(*v7 + 40))(v7, &v21);
  (*(*v7 + 24))(v7);
  std::stringbuf::str();
  if (v20 < 0)
  {
    v7 = v19;
    operator delete(__p);
    if (v19)
    {
      goto LABEL_13;
    }
  }

  else if (v20)
  {
LABEL_13:
    std::stringbuf::str();
    v7 = sub_100029084(a1, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v11 = 0;
    goto LABEL_21;
  }

  *(&v17.__r_.__value_.__s + 23) = 3;
  LODWORD(v17.__r_.__value_.__l.__data_) = 3422277;
  v20 = 0;
  LOBYTE(__p) = 0;
  sub_100029BE8(a1, &v17, &__p);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v11 = 1;
LABEL_21:
  if (SBYTE7(v28) < 0)
  {
    operator delete(v27[0]);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
  if (v11)
  {
    result = v7;
    goto LABEL_25;
  }

  v12 = 0;
  result = v7;
  v13 = v34;
  if (v34)
  {
LABEL_26:
    v35 = v13;
    v14 = result;
    operator delete(v13);
    result = v14;
  }

LABEL_27:
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      result = v15;
    }
  }

  if (v12)
  {
    goto LABEL_31;
  }

  return result;
}

std::ios_base *sub_100023DB0(uint64_t a1)
{
  v53 = 0;
  v2 = v43;
  v3 = v1;
  *(&v43 + *(v43 - 3)) = v1;
  v4 = (&v43 + *(v43 - 3));
  std::ios_base::init(v4, &v44);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::locale::locale(&v45);
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 16;
  sub_100034D34(&v44);
  v42 = 0;
  v32 = v2;
  *(&v32 + *(v2 - 3)) = v3;
  v5 = (&v32 + *(v32 - 3));
  std::ios_base::init(v5, &v33);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::locale::locale(&v34);
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 16;
  v7 = a1;
  sub_100034D34(&v33);
  if (*(a1 + 12))
  {
    sub_10002E410(a1, &v30);
    v8 = v30;
    if (!v30)
    {
      goto LABEL_15;
    }

    v29 = 0;
    v19 = v2;
    *(&v19 + *(v2 - 3)) = v3;
    v3 = (&v19 + *(v19 - 3));
    std::ios_base::init(v3, &v20);
    v3[1].__vftable = 0;
    v3[1].__fmtflags_ = -1;
    std::locale::locale(&v21);
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    *v25 = 0u;
    v26 = 0u;
    v27 = 16;
    sub_100034D34(&v20);
    (*(*v8 + 40))(v8, &v19);
    (*(*v8 + 24))(v8);
    std::stringbuf::str();
    if (v18 < 0)
    {
      operator delete(__p[0]);
      v7 = a1;
      if (__p[1])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = a1;
      if (v18)
      {
LABEL_5:
        std::stringbuf::str();
        v3 = sub_100029084(v7, __p);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        v9 = 0;
        goto LABEL_11;
      }
    }

    v9 = 1;
LABEL_11:
    if (SBYTE7(v26) < 0)
    {
      operator delete(v25[0]);
    }

    std::locale::~locale(&v21);
    std::ostream::~ostream();
    std::ios::~ios();
    if (!v9)
    {
      v10 = 0;
      v11 = v31;
      if (!v31)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_15:
    v10 = 1;
    v11 = v31;
    if (!v31)
    {
LABEL_19:
      if (!v10)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_18:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if (!v10)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:
  *(&v16.__r_.__value_.__s + 23) = 3;
  LODWORD(v16.__r_.__value_.__l.__data_) = 3487813;
  HIBYTE(v21.__locale_) = 0;
  LOBYTE(v19) = 0;
  v3 = sub_100029BE8(v7, &v16, &v19);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

LABEL_23:
  if (SBYTE7(v39) < 0)
  {
    operator delete(v38);
  }

  v33 = v6;
  std::locale::~locale(&v34);
  std::ostream::~ostream();
  std::ios::~ios();
  v43 = v12;
  *(&v43 + *(v12 - 3)) = v13;
  if (SBYTE7(v50) < 0)
  {
    operator delete(v49);
  }

  std::locale::~locale(&v45);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3;
}

uint64_t sub_100024590(uint64_t a1, char *__s1)
{
  v3 = *(a1 + 12);
  if (!v3)
  {
    *(&v30.__r_.__value_.__s + 23) = 3;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3487813;
    HIBYTE(v19.__locale_) = 0;
    LOBYTE(v17) = 0;
    result = sub_100029BE8(a1, &v30, &v17);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v9 = v30.__r_.__value_.__r.__words[0];
    goto LABEL_28;
  }

  if (!strncmp(__s1, "jGetSharedCacheInfo:{", 0x15uLL))
  {
    result = sub_10000CC98(v3, &v28);
    if (!v28)
    {
      goto LABEL_20;
    }

    v27 = 0;
    v5 = &v18;
    *(&v17 + *(v17 - 3)) = v6;
    v7 = (&v17 + *(v17 - 3));
    std::ios_base::init(v7, &v18);
    v7[1].__vftable = 0;
    v7[1].__fmtflags_ = -1;
    std::locale::locale(&v19);
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    *v23 = 0u;
    v24 = 0u;
    v25 = 16;
    sub_100034D34(&v18);
    (*(*v28 + 40))(v28, &v17);
    (*(*v28 + 24))(v28);
    std::stringbuf::str();
    if (v16 < 0)
    {
      operator delete(__p[0]);
      if (__p[1])
      {
        goto LABEL_6;
      }
    }

    else if (v16)
    {
LABEL_6:
      std::stringbuf::str();
      v5 = sub_100029084(a1, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = 0;
LABEL_16:
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }

      std::locale::~locale(&v19);
      std::ostream::~ostream();
      std::ios::~ios();
      if (!v8)
      {
        v10 = 0;
        result = v5;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_25;
        }

LABEL_23:
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = result;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          result = v12;
        }

LABEL_25:
        if (!v10)
        {
          return result;
        }

        goto LABEL_26;
      }

      result = v5;
LABEL_20:
      v10 = 1;
      v11 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    *(&v14.__r_.__value_.__s + 23) = 3;
    LODWORD(v14.__r_.__value_.__l.__data_) = 3553349;
    v16 = 0;
    LOBYTE(__p[0]) = 0;
    sub_100029BE8(a1, &v14, __p);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v8 = 1;
    goto LABEL_16;
  }

LABEL_26:
  HIBYTE(v19.__locale_) = 2;
  strcpy(&v17, "OK");
  result = sub_100029084(a1, &v17);
  if ((SHIBYTE(v19.__locale_) & 0x80000000) == 0)
  {
    return result;
  }

  v9 = v17;
LABEL_28:
  v13 = result;
  operator delete(v9);
  return v13;
}

BOOL sub_100024A28(uint64_t a1)
{
  v5 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    result = v3;
  }

  *(a1 + 781) = 1;
  return result;
}

BOOL sub_100024A90(uint64_t a1)
{
  *(a1 + 782) = 1;
  v4 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v4 < 0)
  {
    v2 = result;
    operator delete(__p[0]);
    return v2;
  }

  return result;
}

BOOL sub_100024AF4(uint64_t a1, uint64_t a2)
{
  sub_10002D8E8((a2 + 12));
  v6 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v6 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

BOOL sub_100024B60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    *(&v16.__r_.__value_.__s + 23) = 3;
    LODWORD(v16.__r_.__value_.__l.__data_) = 3486533;
    v15 = 0;
    LOBYTE(__p[0]) = 0;
    result = sub_100029BE8(a1, &v16, __p);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v16.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }

    return result;
  }

  v5 = (a2 + 22);
  v6 = strchr((a2 + 22), 124);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7 - v5;
      if ((v7 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100008888();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v15 = v7 - v5;
      if (v7 != v5)
      {
        memmove(__p, v5, v7 - v5);
      }

      *(__p + v8) = 0;
      if (v15 < 0)
      {
        v9 = __p[0];
        if (!__p[1])
        {
          operator delete(__p[0]);
LABEL_27:
          *(&v13.__r_.__value_.__s + 23) = 3;
          LODWORD(v13.__r_.__value_.__l.__data_) = 3552069;
          v15 = 0;
          LOBYTE(__p[0]) = 0;
          result = sub_100029BE8(a1, &v13, __p);
          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            v4 = v13.__r_.__value_.__r.__words[0];
LABEL_29:
            v12 = result;
            operator delete(v4);
            return v12;
          }

          return result;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_27;
        }

        v9 = __p;
      }

      v10 = sub_1000138C8(a1, v9);
      v11 = v10;
      if (v10)
      {
        v5 = v7 + 1;
      }

      if (v15 < 0)
      {
        operator delete(__p[0]);
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else if (!v10)
      {
        goto LABEL_27;
      }

      v7 = strchr(v5, 124);
    }

    while (v7);
  }

  if (!sub_1000138C8(a1, v5))
  {
    goto LABEL_27;
  }

  v15 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v15 < 0)
  {
    v4 = __p[0];
    goto LABEL_29;
  }

  return result;
}

BOOL sub_100024D78(uint64_t a1, uint64_t a2)
{
  *__error() = 0;
  v4 = strtoul((a2 + 18), 0, 16);
  if (*__error())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 2474, (a2 + 18));
  }

  else
  {
    *(a1 + 776) = v4 - 5;
    v9 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__p[0]);
      return v7;
    }
  }

  return result;
}

BOOL sub_100024E58(uint64_t a1, uint64_t a2)
{
  *__error() = 0;
  v4 = strtoul((a2 + 19), 0, 16);
  if (*__error())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 2460, (a2 + 19));
  }

  else
  {
    *(a1 + 776) = v4;
    v9 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__p[0]);
      return v7;
    }
  }

  return result;
}

BOOL sub_100024F34(uint64_t a1, uint64_t a2)
{
  if (sub_100010524(0x100000))
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v11, 0);
    tv_sec = v11.tv_sec;
    tv_usec = v11.tv_usec;
    v7 = *(a1 + 496);
    v8 = *(a1 + 504);
    *(a1 + 496) = v11;
    if (v4)
    {
      pthread_mutex_unlock(v4);
    }

    sub_100010668("%8u RNBRemote::%s Handling QEnvironment: %s", tv_usec - v8 + 1000000 * (tv_sec - v7), "HandlePacket_QEnvironment", a2);
  }

  sub_1000083A4(a1, (a2 + 13));
  v12 = 2;
  strcpy(&v11, "OK");
  result = sub_100029084(a1, &v11);
  if (v12 < 0)
  {
    v10 = result;
    operator delete(v11.tv_sec);
    return v10;
  }

  return result;
}

BOOL sub_10002503C(uint64_t a1, uint64_t a2)
{
  if (sub_100010524(0x100000))
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v23, 0);
    data = v23.__r_.__value_.__l.__data_;
    v6 = v23.__r_.__value_.__r.__words[1];
    v7 = *(a1 + 496);
    v8 = *(a1 + 504);
    *(a1 + 496) = *&v23.__r_.__value_.__l.__data_;
    if (v4)
    {
      pthread_mutex_unlock(v4);
    }

    sub_100010668("%8u RNBRemote::%s Handling QEnvironmentHexEncoded: %s", v6 - v8 + 1000000 * (data - v7), "HandlePacket_QEnvironmentHexEncoded", a2);
  }

  v10 = (a2 + 23);
  v9 = *(a2 + 23);
  memset(&v23, 0, sizeof(v23));
  if (v9)
  {
    v11 = (a2 + 25);
    do
    {
      v12 = *(v11 - 1);
      if (!v12)
      {
        v16 = a1;
        v17 = 2524;
        goto LABEL_20;
      }

      __str[0] = v9;
      __str[1] = v12;
      __str[2] = 0;
      *__error() = 0;
      v13 = strtoul(__str, 0, 16);
      if (*__error())
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v16 = a1;
        v17 = 2535;
LABEL_20:
        result = sub_10002A394(v16, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v17, v10);
        if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_27;
      }

      std::string::push_back(&v23, v13);
      v9 = *v11;
      v11 += 2;
    }

    while (v9);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v23.__r_.__value_.__l.__size_)
      {
        goto LABEL_25;
      }

      v15 = v23.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v23.__r_.__value_.__s + 23))
      {
        goto LABEL_25;
      }

      v15 = &v23;
    }

    sub_1000083A4(a1, v15);
  }

LABEL_25:
  v22 = 2;
  strcpy(__str, "OK");
  result = sub_100029084(a1, __str);
  if ((v22 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

  v20 = result;
  operator delete(*__str);
  result = v20;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_27:
    v19 = result;
    operator delete(v23.__r_.__value_.__l.__data_);
    return v19;
  }

  return result;
}

BOOL sub_10002523C(uint64_t a1, uint64_t a2)
{
  if (sub_10000F17C((a2 + 12)))
  {
    v8 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }

    v4 = __p[0];
  }

  else
  {
    *(&v6.__r_.__value_.__s + 23) = 3;
    LODWORD(v6.__r_.__value_.__l.__data_) = 3356229;
    v8 = 0;
    LOBYTE(__p[0]) = 0;
    result = sub_100029BE8(a1, &v6, __p);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v4 = v6.__r_.__value_.__r.__words[0];
  }

  v5 = result;
  operator delete(v4);
  return v5;
}

BOOL sub_1000252E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 48)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 49)
  {
    v3 = 1;
LABEL_5:
    dword_10007D9A8 = v3;
    v8 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }

    v5 = __p[0];
    goto LABEL_9;
  }

  *(&v9.__r_.__value_.__s + 23) = 3;
  LODWORD(v9.__r_.__value_.__l.__data_) = 3552581;
  v8 = 0;
  LOBYTE(__p[0]) = 0;
  result = sub_100029BE8(a1, &v9, __p);
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

  v5 = v9.__r_.__value_.__r.__words[0];
LABEL_9:
  v6 = result;
  operator delete(v5);
  return v6;
}

BOOL sub_1000253A8(uint64_t a1, const std::string::value_type *a2)
{
  if (!*(a1 + 12))
  {
    v5 = sub_10001137C(v15, a2);
    v16 = 7;
    v6 = sub_1000114AC(v5, 0);
      ;
    }

    if (v6 == 69)
    {
      sub_100011D78(v15, (a1 + 64));
      v7 = a1;
      v8 = *(a1 + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_17:
        if (v8)
        {
          goto LABEL_18;
        }

LABEL_14:
        *(&v12.__r_.__value_.__s + 23) = 3;
        LODWORD(v12.__r_.__value_.__l.__data_) = 3618117;
        v14 = 0;
        LOBYTE(v13[0]) = 0;
        v3 = sub_100029BE8(v7, &v12, v13);
        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          v10 = v12.__r_.__value_.__r.__words[0];
LABEL_20:
          operator delete(v10);
        }

LABEL_21:
        sub_1000113DC(v15);
        return v3;
      }

      if (!*(a1 + 72))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 != 79)
      {
        v7 = a1;
        if (v6 != 73)
        {
          goto LABEL_14;
        }

        sub_100011D78(v15, (a1 + 16));
        v7 = a1;
        v8 = *(a1 + 39);
        if (v8 < 0)
        {
          v8 = *(a1 + 24);
        }

        goto LABEL_17;
      }

      sub_100011D78(v15, (a1 + 40));
      v7 = a1;
      v9 = *(a1 + 63);
      if (v9 < 0)
      {
        v9 = *(a1 + 48);
      }

      if (!v9)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v14 = 2;
    strcpy(v13, "OK");
    v3 = sub_100029084(v7, v13);
    if (v14 < 0)
    {
      v10 = v13[0];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 3683653;
  v15[23] = 0;
  v15[0] = 0;
  result = sub_100029BE8(a1, &__p, v15);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

  v3 = result;
  operator delete(__p.__r_.__value_.__l.__data_);
  return v3;
}

BOOL sub_10002554C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 12))
  {
    v5 = sub_10001137C(v14, (a2 + 15));
    if (sub_100011D78(v5, (a1 + 88)))
    {
      if (*(a1 + 111) < 0)
      {
        if (*(a1 + 96))
        {
          v6 = *(a1 + 88);
        }

        else
        {
          v6 = 0;
        }
      }

      else if (*(a1 + 111))
      {
        v6 = (a1 + 88);
      }

      else
      {
        v6 = 0;
      }

      if (stat(v6, &__p) == -1)
      {
        if (*(a1 + 111) < 0)
        {
          **(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        else
        {
          *(a1 + 88) = 0;
          *(a1 + 111) = 0;
        }

        *(&v12.__r_.__value_.__s + 23) = 3;
        LODWORD(v12.__r_.__value_.__l.__data_) = 3225157;
        v11 = 0;
        v10[0] = 0;
        v4 = sub_100029BE8(a1, &v12, v10);
        if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v7 = v12.__r_.__value_.__r.__words[0];
        goto LABEL_28;
      }

      if ((__p.st_mode & 0xF000) != 0x4000)
      {
        if (*(a1 + 111) < 0)
        {
          **(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        else
        {
          *(a1 + 88) = 0;
          *(a1 + 111) = 0;
        }

        *(&v9.__r_.__value_.__s + 23) = 3;
        LODWORD(v9.__r_.__value_.__l.__data_) = 3290693;
        v11 = 0;
        v10[0] = 0;
        v4 = sub_100029BE8(a1, &v9, v10);
        if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v7 = v9.__r_.__value_.__r.__words[0];
        goto LABEL_28;
      }

      v11 = 2;
      strcpy(v10, "OK");
      v4 = sub_100029084(a1, v10);
      if (v11 < 0)
      {
        v7 = *v10;
        goto LABEL_28;
      }
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 3;
      LODWORD(v8.__r_.__value_.__l.__data_) = 3749189;
      HIBYTE(__p.st_gid) = 0;
      LOBYTE(__p.st_dev) = 0;
      v4 = sub_100029BE8(a1, &v8, &__p);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v8.__r_.__value_.__r.__words[0];
LABEL_28:
        operator delete(v7);
      }
    }

LABEL_29:
    sub_1000113DC(v14);
    return v4;
  }

  HIBYTE(__p.st_gid) = 3;
  __p.st_dev = 3159621;
  result = sub_100029084(a1, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    return result;
  }

  v4 = result;
  operator delete(*&__p.st_dev);
  return v4;
}

BOOL sub_100025764(uint64_t a1)
{
  v5 = 2;
  strcpy(__p, "OK");
  result = sub_100029084(a1, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    result = v3;
  }

  *(a1 + 783) = 1;
  return result;
}

BOOL sub_1000257CC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 12))
  {
    goto LABEL_7;
  }

  *__error() = 0;
  v4 = strtoul((a2 + 17), 0, 16);
  if (*__error())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 2399, (a2 + 17));
  }

  if (!sub_10000E35C(*(a1 + 12), v4))
  {
    *(&v9.__r_.__value_.__s + 23) = 3;
    LODWORD(v9.__r_.__value_.__l.__data_) = 3225157;
    v11 = 0;
    LOBYTE(__p[0]) = 0;
    result = sub_100029BE8(a1, &v9, __p);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v9.__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }
  }

  else
  {
LABEL_7:
    v11 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if (v11 < 0)
    {
      v7 = __p[0];
LABEL_9:
      v8 = result;
      operator delete(v7);
      return v8;
    }
  }

  return result;
}

BOOL sub_1000258FC(uint64_t a1, const std::string::value_type *a2)
{
  v3 = sub_10001137C(v29, a2);
  v30 = 2;
  v4 = sub_1000119E8(v3, 0, 0);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  if (sub_1000114AC(v29, 0) != 44)
  {
    goto LABEL_20;
  }

  for (i = 0; ; i |= 2u)
  {
    while (1)
    {
      v7 = sub_1000114AC(v29, 0);
      if (v7 <= 0x76)
      {
        break;
      }

      if (v7 == 120)
      {
        i |= 4u;
      }

      else
      {
        if (v7 != 119)
        {
          goto LABEL_20;
        }

        i |= 1u;
      }
    }

    if (v7 != 114)
    {
      break;
    }
  }

  if (v7 || sub_10000D8B0(*(a1 + 12), v5, i) == -1)
  {
LABEL_20:
    *(&v15.__r_.__value_.__s + 23) = 3;
    LODWORD(v15.__r_.__value_.__l.__data_) = 3355973;
    HIBYTE(v20.__locale_) = 0;
    LOBYTE(v18) = 0;
    v13 = sub_100029BE8(a1, &v15, &v18);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v28 = 0;
    *(&v18 + *(v18 - 3)) = v8;
    v9 = (&v18 + *(v18 - 3));
    std::ios_base::init(v9, &v19);
    v9[1].__vftable = 0;
    v9[1].__fmtflags_ = -1;
    std::locale::locale(&v20);
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    *__p = 0u;
    v25 = 0u;
    v26 = 16;
    sub_100034D34(&v19);
    v10 = v18;
    v11 = &v18 + *(v18 - 3);
    if (*(v11 + 36) == -1)
    {
      std::ios_base::getloc((&v18 + *(v18 - 3)));
      v12 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(&v16);
      v10 = v18;
    }

    *(v11 + 36) = 48;
    *(&v18 + *(v10 - 3) + 8) = *(&v18 + *(v10 - 3) + 8) & 0xFFFFFFB5 | 8;
    *(&v18 + *(v10 - 3) + 8) = *(&v18 + *(v10 - 3) + 8) & 0xFFFFFF4F | 0x80;
    std::ostream::operator<<();
    std::stringbuf::str();
    v13 = sub_100029084(a1, &v16);
    if (v17 < 0)
    {
      operator delete(v16.__locale_);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v20);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  sub_1000113DC(v29);
  return v13;
}

BOOL sub_100025DA4(uint64_t a1, const std::string::value_type *a2)
{
  sub_10001137C(v10, a2);
  v11 = 2;
  v3 = sub_1000119E8(v10, 0, -1);
  if (v3 == -1 || !sub_10000D998(*(a1 + 12), v3))
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3421509;
    v9 = 0;
    v8[0] = 0;
    v4 = sub_100029BE8(a1, &__p, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 2;
    strcpy(v8, "OK");
    v4 = sub_100029084(a1, v8);
    if (v9 < 0)
    {
      v5 = *v8;
LABEL_7:
      operator delete(v5);
    }
  }

  sub_1000113DC(v10);
  return v4;
}

uint64_t sub_100025E84(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 12);
  if (*(a1 + 782) == 1)
  {
    if (!__s1)
    {
      goto LABEL_14;
    }

    v5 = strstr(__s1, "thread:");
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = strtoul(v5 + 7, 0, 16);
    if (!v6)
    {
LABEL_13:
      if ((*(a1 + 782) & 1) == 0)
      {
        v10 = a1;
        v11 = 3494;
        goto LABEL_15;
      }

LABEL_14:
      v10 = a1;
      v11 = 3491;
LABEL_15:

      return sub_10002A394(v10, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v11, __s1);
    }
  }

  else
  {
    v6 = *(a1 + 544);
    if ((v6 + 1) <= 1)
    {
      v6 = sub_10000DE24(*(a1 + 12));
      if (!v6)
      {
        goto LABEL_13;
      }
    }
  }

  v7 = sub_10000E914(v4, v6);
  if (!v7)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3487557;
    __str[23] = 0;
    __str[0] = 0;
    result = sub_100029BE8(a1, &__p, __str);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v13 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_24;
  }

  snprintf(__str, 0x40uLL, "%u", v7);
  v8 = strlen(__str);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v17 = v8;
  if (v8)
  {
    memcpy(&__dst, __str, v8);
  }

  *(&__dst + v9) = 0;
  result = sub_100029084(a1, &__dst);
  if (v17 < 0)
  {
    v13 = __dst;
LABEL_24:
    v14 = result;
    operator delete(v13);
    return v14;
  }

  return result;
}

BOOL sub_1000260D4(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 12);
  if (*(a1 + 782) != 1)
  {
    v6 = *(a1 + 544);
    if ((v6 + 1) <= 1)
    {
      v6 = sub_10000DE24(*(a1 + 12));
      if (!v6)
      {
        goto LABEL_12;
      }
    }

LABEL_8:
    sub_10001137C(v16, __s1);
    v17 = 22;
    if (sub_10001167C(v16, 0, 0))
    {
      if (sub_10000EA00(v4, v6))
      {
        v15 = 2;
        strcpy(v14, "OK");
        v7 = sub_100029084(a1, v14);
        if (v15 < 0)
        {
          v8 = *v14;
LABEL_21:
          operator delete(v8);
        }
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 3;
        LODWORD(__p.__r_.__value_.__l.__data_) = 3618629;
        v15 = 0;
        v14[0] = 0;
        v7 = sub_100029BE8(a1, &__p, v14);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v8 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_21;
        }
      }
    }

    else
    {
      *(&v12.__r_.__value_.__s + 23) = 3;
      LODWORD(v12.__r_.__value_.__l.__data_) = 3553093;
      v15 = 0;
      v14[0] = 0;
      v7 = sub_100029BE8(a1, &v12, v14);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = v12.__r_.__value_.__r.__words[0];
        goto LABEL_21;
      }
    }

    sub_1000113DC(v16);
    return v7;
  }

  if (!__s1)
  {
    goto LABEL_13;
  }

  v5 = strstr(__s1, "thread:");
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = strtoul(v5 + 7, 0, 16);
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_12:
  if ((*(a1 + 782) & 1) == 0)
  {
    v9 = a1;
    v10 = 3535;
    goto LABEL_14;
  }

LABEL_13:
  v9 = a1;
  v10 = 3532;
LABEL_14:

  return sub_10002A394(v9, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v10, __s1);
}

BOOL sub_1000262BC(uint64_t a1, _BYTE *a2)
{
  if (!a2[17])
  {
    HIBYTE(v38.__locale_) = 2;
    strcpy(&__p, "OK");
    result = sub_100029084(a1, &__p);
    if ((SHIBYTE(v38.__locale_) & 0x80000000) == 0)
    {
      return result;
    }

    v6 = __p;
LABEL_15:
    v7 = result;
    operator delete(v6);
    return v7;
  }

  if (a2[17] != 58)
  {
    *(&v53.__r_.__value_.__s + 23) = 3;
    LODWORD(v53.__r_.__value_.__l.__data_) = 3618373;
    HIBYTE(v38.__locale_) = 0;
    LOBYTE(__p) = 0;
    result = sub_100029BE8(a1, &v53, &__p);
    if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v6 = v53.__r_.__value_.__r.__words[0];
    goto LABEL_15;
  }

  v3 = a2 + 18;
  if (a2[18] == 48 && (a2[19] | 0x20) == 0x78)
  {
    v3 = a2 + 20;
  }

  *__error() = 0;
  v4 = strtoul(v3, 0, 16);
  if (!*__error() || v4)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    sub_10000DA80(*(a1 + 12), v4, &v47);
    v46 = 0;
    *(&__p + *(__p - 3)) = v8;
    v9 = (&__p + *(__p - 3));
    std::ios_base::init(v9, &v37);
    v9[1].__vftable = 0;
    v9[1].__fmtflags_ = -1;
    std::locale::locale(&v38);
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v44 = 16;
    sub_100034D34(&v37);
    v12 = sub_100034978(&__p, "start:", 6);
    *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    v13 = std::ostream::operator<<();
    LOBYTE(v34[0]) = 59;
    sub_100034978(v13, v34, 1);
    if (v48)
    {
      v14 = sub_100034978(&__p, "size:", 5);
      *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
      v15 = std::ostream::operator<<();
      LOBYTE(v34[0]) = 59;
      sub_100034978(v15, v34, 1);
    }

    if (v49)
    {
      sub_100034978(&__p, "permissions:", 12);
      v16 = v49;
      if ((v49 & 2) != 0)
      {
        LOBYTE(v34[0]) = 114;
        sub_100034978(&__p, v34, 1);
        v16 = v49;
      }

      if (v16)
      {
        LOBYTE(v34[0]) = 119;
        sub_100034978(&__p, v34, 1);
        v16 = v49;
      }

      if ((v16 & 4) != 0)
      {
        LOBYTE(v34[0]) = 120;
        sub_100034978(&__p, v34, 1);
      }

      LOBYTE(v34[0]) = 59;
      sub_100034978(&__p, v34, 1);
      sub_100034978(&__p, "dirty-pages:", 12);
      v17 = *(&v50 + 1);
      if (*(&v50 + 1) != v50)
      {
        v19 = (v50 + 8);
        v18 = *v50;
        *(&__p + *(__p - 3) + 8) = *(&__p + *(__p - 3) + 8) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        while (v19 != v17)
        {
          v20 = *v19++;
          sub_100034978(&__p, ",", 1);
          *(&v37 + *(__p - 3)) = *(&v37 + *(__p - 3)) & 0xFFFFFFB5 | 8;
          std::ostream::operator<<();
        }
      }

      sub_100034978(&__p, ";", 1);
      if (*(&v51 + 1) != v52)
      {
        sub_100034978(&__p, "type:", 5);
        if (v52 != *(&v51 + 1))
        {
          v21 = *(*(&v51 + 1) + 23);
          v22 = v21 >= 0 ? *(&v51 + 1) : **(&v51 + 1);
          v23 = v21 >= 0 ? *(*(&v51 + 1) + 23) : *(*(&v51 + 1) + 8);
          sub_100034978(&__p, v22, v23);
          if (0xAAAAAAAAAAAAAAABLL * ((v52 - *(&v51 + 1)) >> 3) >= 2)
          {
            v24 = 0;
            v25 = 1;
            do
            {
              sub_100034978(&__p, ",", 1);
              v26 = *(*(&v51 + 1) + v24 + 47);
              if (v26 >= 0)
              {
                v27 = *(&v51 + 1) + v24 + 24;
              }

              else
              {
                v27 = *(*(&v51 + 1) + v24 + 24);
              }

              if (v26 >= 0)
              {
                v28 = *(*(&v51 + 1) + v24 + 47);
              }

              else
              {
                v28 = *(*(&v51 + 1) + v24 + 32);
              }

              sub_100034978(&__p, v27, v28);
              ++v25;
              v24 += 24;
            }

            while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v52 - *(&v51 + 1)) >> 3));
          }
        }

        sub_100034978(&__p, ";", 1);
      }
    }

    std::stringbuf::str();
    v29 = sub_100029084(a1, v34);
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    v37 = v11;
    if (SBYTE7(v43) < 0)
    {
      operator delete(v42[0]);
    }

    v37 = v10;
    std::locale::~locale(&v38);
    std::ostream::~ostream();
    std::ios::~ios();
    v30 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v31 = v52;
      v32 = *(&v51 + 1);
      if (v52 != *(&v51 + 1))
      {
        do
        {
          v33 = *(v31 - 1);
          v31 -= 3;
          if (v33 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v30);
        v32 = *(&v51 + 1);
      }

      *&v52 = v30;
      operator delete(v32);
    }

    if (v50)
    {
      *(&v50 + 1) = v50;
      operator delete(v50);
    }

    return v29;
  }

  else
  {

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4291, v3);
  }
}

BOOL sub_100026A2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v13 = *(a1 + 12);
    v2 = sub_10001137C(v35, (a2 + 16));
    memset(&v34, 0, sizeof(v34));
    memset(&__str, 0, sizeof(__str));
    v3 = 0xFFFFFFFFLL;
    if (sub_100011E38(v2, &v34, &__str))
    {
      do
      {
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v34.__r_.__value_.__l.__size_ == 9)
          {
            v4 = v34.__r_.__value_.__r.__words[0];
LABEL_11:
            v5 = v4->__r_.__value_.__r.__words[0];
            v6 = v4->__r_.__value_.__s.__data_[8];
            if (v5 == 0x7079745F6E616373 && v6 == 101)
            {
              v32 = 0;
              v21 = v18;
              *(&v21 + *(v18 - 3)) = v16;
              v22 = 0;
              v8 = (&v21 + *(v21 - 3));
              std::ios_base::init(v8, &v23);
              v8[1].__vftable = 0;
              v8[1].__fmtflags_ = -1;
              std::locale::locale(&v24);
              v26 = 0u;
              v27 = 0u;
              v25 = 0u;
              __p = 0u;
              v29 = 0u;
              v30 = 8;
              std::string::operator=(&__p, &__str);
              sub_100034D34(&v23);
              LODWORD(v19[0]) = 0;
              *(&v22 + *(v21 - 3)) = *(&v22 + *(v21 - 3)) & 0xFFFFFFB5 | 8;
              v9 = std::istream::operator>>();
              if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
              {
                v3 = v3;
              }

              else
              {
                v3 = LODWORD(v19[0]);
              }

              v21 = v17;
              *(&v21 + *(v17 - 3)) = v15;
              if (SBYTE7(v29) < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v24);
              std::istream::~istream();
              std::ios::~ios();
            }
          }
        }

        else if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) == 9)
        {
          v4 = &v34;
          goto LABEL_11;
        }
      }

      while ((sub_100011E38(v35, &v34, &__str) & 1) != 0);
    }

    sub_10000DB68(v13, v3, &v21);
    v10 = HIBYTE(v23);
    if (SHIBYTE(v23) < 0)
    {
      v10 = v22;
    }

    if (v10)
    {
      v11 = sub_100029084(a1, &v21);
      if (SHIBYTE(v23) < 0)
      {
LABEL_35:
        operator delete(v21);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_36:
          operator delete(__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }

LABEL_31:
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_37:
          operator delete(v34.__r_.__value_.__l.__data_);
        }

LABEL_32:
        sub_1000113DC(v35);
        return v11;
      }
    }

    else
    {
      v20 = 2;
      strcpy(v19, "OK");
      v11 = sub_100029084(a1, v19);
      if (v20 < 0)
      {
        operator delete(v19[0]);
        if (SHIBYTE(v23) < 0)
        {
          goto LABEL_35;
        }
      }

      else if (SHIBYTE(v23) < 0)
      {
        goto LABEL_35;
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  HIBYTE(v23) = 2;
  strcpy(&v21, "OK");
  v11 = sub_100029084(a1, &v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }

  return v11;
}

BOOL sub_100026EDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v24 = *(a1 + 12);
    v2 = sub_10001137C(v42, (a2 + 25));
    memset(&__str, 0, sizeof(__str));
    memset(&v41, 0, sizeof(v41));
    if (sub_100011E38(v2, &v41, &__str))
    {
      v3 = 0;
      v4 = 0;
      v27 = -1;
      while (1)
      {
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v41.__r_.__value_.__l.__size_ == 6)
          {
            if (*v41.__r_.__value_.__l.__data_ != 1650552421 || *(v41.__r_.__value_.__r.__words[0] + 4) != 25964)
            {
              goto LABEL_5;
            }

LABEL_50:
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v4 = strtoul(p_str, 0, 10) != 0;
            goto LABEL_5;
          }

          if (v41.__r_.__value_.__l.__size_ == 9)
          {
            v8 = v41.__r_.__value_.__r.__words[0];
LABEL_36:
            v10 = v8->__r_.__value_.__r.__words[0];
            v11 = v8->__r_.__value_.__s.__data_[8];
            if (v10 == 0x7079745F6E616373 && v11 == 101)
            {
              v26 = v4;
              v39 = 0;
              v28 = v23;
              *(&v28 + *(v23 - 3)) = v21;
              v29 = 0;
              v13 = (&v28 + *(v28 - 3));
              std::ios_base::init(v13, &v30);
              v13[1].__vftable = 0;
              v13[1].__fmtflags_ = -1;
              std::locale::locale(&v31);
              v33 = 0u;
              v34 = 0u;
              v32 = 0u;
              __p = 0u;
              v36 = 0u;
              v37 = 8;
              std::string::operator=(&__p, &__str);
              sub_100034D34(&v30);
              *(&v29 + *(v28 - 3)) = *(&v29 + *(v28 - 3)) & 0xFFFFFFB5 | 8;
              v14 = std::istream::operator>>();
              v15 = v27;
              if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
              {
                v15 = 0;
              }

              v27 = v15;
              v28 = v22;
              *(&v28 + *(v22 - 3)) = v20;
              if (SBYTE7(v36) < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v31);
              std::istream::~istream();
              std::ios::~ios();
              v4 = v26;
            }

            goto LABEL_5;
          }

          if (v41.__r_.__value_.__l.__size_ == 13 && *v41.__r_.__value_.__l.__data_ == 0x6C61767265746E69 && *(v41.__r_.__value_.__r.__words[0] + 5) == 0x636573755F6C6176)
          {
LABEL_24:
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v7 = &__str;
            }

            else
            {
              v7 = __str.__r_.__value_.__r.__words[0];
            }

            v3 = strtoul(v7, 0, 10);
          }
        }

        else
        {
          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 6)
          {
            if (LODWORD(v41.__r_.__value_.__l.__data_) != 1650552421 || WORD2(v41.__r_.__value_.__r.__words[0]) != 25964)
            {
              goto LABEL_5;
            }

            goto LABEL_50;
          }

          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 9)
          {
            v8 = &v41;
            goto LABEL_36;
          }

          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 13 && v41.__r_.__value_.__r.__words[0] == 0x6C61767265746E69 && *(v41.__r_.__value_.__r.__words + 5) == 0x636573755F6C6176)
          {
            goto LABEL_24;
          }
        }

LABEL_5:
        if ((sub_100011E38(v42, &v41, &__str) & 1) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    LOBYTE(v4) = 0;
    v3 = 0;
    v27 = -1;
LABEL_57:
    sub_10000DC60(v24, v3 != 0 && v4, v3, v27);
    HIBYTE(v30) = 2;
    strcpy(&v28, "OK");
    v18 = sub_100029084(a1, &v28);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_59:
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          sub_1000113DC(v42);
          return v18;
        }

LABEL_64:
        operator delete(v41.__r_.__value_.__l.__data_);
        goto LABEL_60;
      }
    }

    else if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  HIBYTE(v30) = 2;
  strcpy(&v28, "OK");
  v18 = sub_100029084(a1, &v28);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  return v18;
}

BOOL sub_1000274B4(uint64_t a1, uint64_t a2)
{
  if (strstr((a2 + 19), "type:zlib-deflate;"))
  {
    *(a1 + 796) = 0;
    goto LABEL_6;
  }

  if (strstr((a2 + 19), "type:lz4;"))
  {
    *(a1 + 796) = 1;
LABEL_6:
    *(a1 + 792) = 1;
LABEL_7:
    v10 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }

    v5 = __p[0];
    goto LABEL_9;
  }

  if (strstr((a2 + 19), "type:lzma;"))
  {
    *(a1 + 796) = 2;
    *(a1 + 792) = 1;
    goto LABEL_7;
  }

  if (strstr((a2 + 19), "type:lzfse;"))
  {
    *(a1 + 796) = 3;
    goto LABEL_6;
  }

  sub_100013A80(&v8, "E88");
  sub_100013A80(__p, &unk_10005B2EA);
  result = sub_100029BE8(a1, &v8, __p);
  if (v10 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    result = v7;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v8.__r_.__value_.__r.__words[0];
LABEL_9:
    v6 = result;
    operator delete(v5);
    return v6;
  }

  return result;
}

BOOL sub_100027600(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 22) == 58)
  {
    *__error() = 0;
    sub_10000D284(*(a1 + 12));
    v23 = 0;
    *(&v13 + *(v13 - 3)) = v5;
    v6 = (&v13 + *(v13 - 3));
    std::ios_base::init(v6, &v14);
    v6[1].__vftable = 0;
    v6[1].__fmtflags_ = -1;
    std::locale::locale(&v15);
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    *v19 = 0u;
    v20 = 0u;
    v21 = 16;
    sub_100034D34(&v14);
    v7 = sub_100034978(&v13, "num:", 4);
    *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 2;
    v8 = std::ostream::operator<<();
    LOBYTE(__p[0]) = 59;
    sub_100034978(v8, __p, 1);
    std::stringbuf::str();
    v9 = sub_100029084(a1, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    std::locale::~locale(&v15);
    std::ostream::~ostream();
    std::ios::~ios();
    return v9;
  }

  else
  {
    if (*(a2 + 22))
    {
      *(&v24.__r_.__value_.__s + 23) = 3;
      LODWORD(v24.__r_.__value_.__l.__data_) = 3618373;
      HIBYTE(v15.__locale_) = 0;
      LOBYTE(v13) = 0;
      result = sub_100029BE8(a1, &v24, &v13);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v3 = v24.__r_.__value_.__r.__words[0];
    }

    else
    {
      HIBYTE(v15.__locale_) = 2;
      strcpy(&v13, "OK");
      result = sub_100029084(a1, &v13);
      if ((SHIBYTE(v15.__locale_) & 0x80000000) == 0)
      {
        return result;
      }

      v3 = v13;
    }

    v10 = result;
    operator delete(v3);
    return v10;
  }
}

BOOL sub_100027994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    if (!sub_10000BEB0(v3, (a2 + 17)))
    {
      *(&__p.__r_.__value_.__s + 23) = 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = 3160133;
      v9 = 0;
      v8[0] = 0;
      result = sub_100029BE8(a1, &__p, v8);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v5 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }
  }

  else
  {
    std::string::assign((a1 + 416), (a2 + 17));
  }

  v9 = 2;
  strcpy(v8, "OK");
  result = sub_100029084(a1, v8);
  if ((v9 & 0x80000000) == 0)
  {
    return result;
  }

  v5 = *v8;
LABEL_8:
  v6 = result;
  operator delete(v5);
  return v6;
}

BOOL sub_100027A54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 18);
  if (v4 == 48)
  {
    v5 = 0;
LABEL_5:
    v10 = v2;
    v11 = v3;
    *(a1 + 440) = v5;
    v9 = 2;
    strcpy(__p, "OK");
    result = sub_100029084(a1, __p);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__p[0]);
      return v7;
    }

    return result;
  }

  if (v4 == 49)
  {
    v5 = 1;
    goto LABEL_5;
  }

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 2420, (a2 + 18));
}

BOOL sub_100027AF4(uint64_t a1, uint64_t a2)
{
  __endptr = 0;
  *__error() = 0;
  v4 = strtoul((a2 + 25), &__endptr, 16);
  if (*__error())
  {

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4433, (a2 + 25));
  }

  if (*__endptr != 59)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3749701;
    v12 = 0;
    LOBYTE(__dst) = 0;
    result = sub_100029BE8(a1, &__p, &__dst);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_16;
  }

  strcpy(&dword_10007DAF8, "data:");
  memset(&word_10007DAFC + 1, 97, v4);
  *(&dword_10007DAF8 + v4 + 5) = 0;
  v6 = strlen(&dword_10007DAF8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memcpy(&__dst, &dword_10007DAF8, v6);
  }

  *(&__dst + v7) = 0;
  result = sub_100029084(a1, &__dst);
  if (v12 < 0)
  {
    v8 = __dst;
LABEL_16:
    v9 = result;
    operator delete(v8);
    return v9;
  }

  return result;
}

BOOL sub_100027CB8(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  v4 = (a2 + 6);
  v5 = strchr((a2 + 6), 58);
  if (v5)
  {
    v6 = v5;
    v7 = v5 - v4;
    if ((v5 - v4) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_137;
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v67 = v5 - v4;
    if (v5 != v4)
    {
      memcpy(__dst, v4, v7);
    }

    *(__dst + v7) = 0;
    v8 = v6 + 1;
    v9 = strchr(v6 + 1, 58);
    if (!v9)
    {
      *(&__p.__r_.__value_.__s + 23) = 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = 3553349;
      v56 = 0;
      LOBYTE(v55[0]) = 0;
      sub_100029BE8(a1, &__p, v55);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_56;
    }

    v10 = v9;
    v11 = v9 - v8;
    if ((v9 - v8) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_137;
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v65 = v9 - v8;
    if (v9 != v8)
    {
      memmove(&v64, v8, v11);
    }

    *(&v64 + v11) = 0;
    v12 = v10 + 1;
    v13 = strchr(v10 + 1, 58);
    if (!v13)
    {
      *(&v49.__r_.__value_.__s + 23) = 3;
      LODWORD(v49.__r_.__value_.__l.__data_) = 3487813;
      v56 = 0;
      LOBYTE(v55[0]) = 0;
      sub_100029BE8(a1, &v49, v55);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      goto LABEL_54;
    }

    v14 = v13;
    v15 = v13 - v12;
    if ((v13 - v12) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_137;
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v63 = v13 - v12;
    if (v13 != v12)
    {
      memmove(&v62, v12, v15);
    }

    *(&v62 + v15) = 0;
    v16 = v14 + 1;
    v17 = strchr(v14 + 1, 44);
    if (!v17)
    {
      goto LABEL_63;
    }

    v18 = v17;
    v19 = v17 - v16;
    if ((v17 - v16) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_137;
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v61 = v17 - v16;
    if (v17 != v16)
    {
      memmove(&v60, v16, v19);
    }

    *(&v60 + v19) = 0;
    v20 = strlen(v18 + 1);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_137:
      sub_100008888();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    v59 = v20;
    if (v20)
    {
      memmove(&v58, v18 + 1, v20);
    }

    *(&v58 + v21) = 0;
    __endptr = 0;
    if (v61 >= 0)
    {
      v22 = &v60;
    }

    else
    {
      v22 = v60;
    }

    v23 = strtoul(v22, &__endptr, 16);
    if (*__endptr || ((v24 = v23, v59 >= 0) ? (v25 = &v58) : (v25 = v58), v26 = strtoul(v25, &__endptr, 16), *__endptr))
    {
      v27 = 1;
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v67 < 0)
    {
      if (__dst[1] != 8)
      {
        goto LABEL_85;
      }

      v31 = __dst[0];
    }

    else
    {
      if (v67 != 8)
      {
        goto LABEL_85;
      }

      v31 = __dst;
    }

    if (*v31 == 0x7365727574616566)
    {
      v32 = v26;
      if (sub_10002D86C(&v64, "read") && sub_10002D86C(&v62, "target.xml"))
      {
        sub_100028EE0(v55);
        if (v24)
        {
          v33 = *(&xmmword_10047DB08 + 1);
          if (byte_10047DB1F >= 0)
          {
            v33 = byte_10047DB1F;
          }

          if (v24 >= v33)
          {
            goto LABEL_133;
          }

          std::string::basic_string(&v53, &xmmword_10047DB08, v24, v32, &v52);
          size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          if (size >= v32)
          {
            v35 = 109;
          }

          else
          {
            v35 = 108;
          }

          v52.__r_.__value_.__s.__data_[0] = v35;
          sub_100034978(v55, &v52, 1);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v53;
          }

          else
          {
            v38 = v53.__r_.__value_.__r.__words[0];
          }

          sub_100013A80(v50, v38);
          sub_10003227C(v50, &v52);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v52;
          }

          else
          {
            v39 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = v52.__r_.__value_.__l.__size_;
          }

          sub_100034978(v55, v39, v40);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
            if ((v51 & 0x80000000) == 0)
            {
LABEL_103:
              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_121;
              }

LABEL_133:
              std::stringbuf::str();
              v2 = sub_100029084(a1, &v53);
              if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_136:
                sub_1000294EC(v55);
LABEL_86:
                v27 = 0;
                if ((v59 & 0x80000000) == 0)
                {
LABEL_50:
                  if (v61 < 0)
                  {
                    operator delete(v60);
                    if (!v27)
                    {
LABEL_52:
                      if ((v63 & 0x80000000) == 0)
                      {
                        goto LABEL_53;
                      }

LABEL_64:
                      operator delete(v62);
                      if ((v27 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

LABEL_54:
                      v28 = 1;
                      if ((v65 & 0x80000000) == 0)
                      {
                        goto LABEL_55;
                      }

LABEL_66:
                      operator delete(v64);
                      if ((v28 & 1) == 0)
                      {
                        goto LABEL_67;
                      }

LABEL_56:
                      v29 = 1;
                      if ((v67 & 0x80000000) == 0)
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_57;
                    }
                  }

                  else if (!v27)
                  {
                    goto LABEL_52;
                  }

LABEL_63:
                  LOBYTE(v27) = 1;
                  if ((v63 & 0x80000000) == 0)
                  {
LABEL_53:
                    if (v27)
                    {
                      goto LABEL_54;
                    }

LABEL_65:
                    v28 = 0;
                    if ((v65 & 0x80000000) == 0)
                    {
LABEL_55:
                      if (v28)
                      {
                        goto LABEL_56;
                      }

LABEL_67:
                      v29 = 0;
                      if ((v67 & 0x80000000) == 0)
                      {
LABEL_58:
                        if (!v29)
                        {
                          return v2;
                        }

                        goto LABEL_59;
                      }

LABEL_57:
                      operator delete(__dst[0]);
                      goto LABEL_58;
                    }

                    goto LABEL_66;
                  }

                  goto LABEL_64;
                }

LABEL_49:
                operator delete(v58);
                goto LABEL_50;
              }

              v43 = v53.__r_.__value_.__r.__words[0];
LABEL_135:
              operator delete(v43);
              goto LABEL_136;
            }
          }

          else if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_103;
          }

          operator delete(v50[0]);
          if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_133;
          }

LABEL_121:
          v44 = v53.__r_.__value_.__r.__words[0];
LABEL_132:
          operator delete(v44);
          goto LABEL_133;
        }

        sub_10002B45C(a1, 1);
        sub_100031EA4();
        v36 = byte_10047DB1F;
        if ((byte_10047DB1F & 0x8000000000000000) != 0)
        {
          v36 = *(&xmmword_10047DB08 + 1);
          v37 = v32;
          if (*(&xmmword_10047DB08 + 1))
          {
            goto LABEL_106;
          }
        }

        else if (byte_10047DB1F)
        {
          v37 = v32;
LABEL_106:
          if (v37 <= v36)
          {
            v53.__r_.__value_.__s.__data_[0] = 109;
            sub_100034978(v55, &v53, 1);
            std::string::basic_string(&v52, &xmmword_10047DB08, 0, v32, v50);
            sub_10003227C(&v52, &v53);
            if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v53;
            }

            else
            {
              v45 = v53.__r_.__value_.__r.__words[0];
            }

            if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v46 = v53.__r_.__value_.__l.__size_;
            }

            sub_100034978(v55, v45, v46);
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_133;
            }

            v44 = v52.__r_.__value_.__r.__words[0];
            goto LABEL_132;
          }

          v53.__r_.__value_.__s.__data_[0] = 108;
          sub_100034978(v55, &v53, 1);
          sub_10003227C(&xmmword_10047DB08, &v53);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v53;
          }

          else
          {
            v41 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = v53.__r_.__value_.__l.__size_;
          }

          sub_100034978(v55, v41, v42);
          if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_133;
          }

          goto LABEL_121;
        }

        sub_100013A80(&v54, "E83");
        sub_100013A80(&v53, &unk_10005B2EA);
        v2 = sub_100029BE8(a1, &v54, &v53);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_136;
        }

        v43 = v54.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      }
    }

LABEL_85:
    v2 = sub_10002A294(a1, v2);
    goto LABEL_86;
  }

LABEL_59:
  *(&v47.__r_.__value_.__s + 23) = 3;
  LODWORD(v47.__r_.__value_.__l.__data_) = 3291205;
  v56 = 0;
  LOBYTE(v55[0]) = 0;
  v2 = sub_100029BE8(a1, &v47, v55);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return v2;
}

void **sub_1000284A8(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    sub_10000B694(v2, &v23);
    if (!v23)
    {
LABEL_15:
      *(&v9.__r_.__value_.__s + 23) = 3;
      LODWORD(v9.__r_.__value_.__l.__data_) = 3684421;
      HIBYTE(v14.__locale_) = 0;
      LOBYTE(v12) = 0;
      v3 = sub_100029BE8(a1, &v9, &v12);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

LABEL_17:
      v7 = v24;
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      return v3;
    }

    v22 = 0;
    v3 = &v13;
    *(&v12 + *(v12 - 3)) = v4;
    v5 = (&v12 + *(v12 - 3));
    std::ios_base::init(v5, &v13);
    v5[1].__vftable = 0;
    v5[1].__fmtflags_ = -1;
    std::locale::locale(&v14);
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    *v18 = 0u;
    v19 = 0u;
    v20 = 16;
    sub_100034D34(&v13);
    (*(*v23 + 40))(v23, &v12);
    (*(*v23 + 24))(v23);
    std::stringbuf::str();
    if (v11 < 0)
    {
      operator delete(__p[0]);
      if (__p[1])
      {
        goto LABEL_5;
      }
    }

    else if (v11)
    {
LABEL_5:
      std::stringbuf::str();
      v3 = sub_100029084(a1, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
LABEL_12:
      if (SBYTE7(v19) < 0)
      {
        operator delete(v18[0]);
      }

      std::locale::~locale(&v14);
      std::ostream::~ostream();
      std::ios::~ios();
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v6 = 1;
    goto LABEL_12;
  }

  *(&v25.__r_.__value_.__s + 23) = 3;
  LODWORD(v25.__r_.__value_.__l.__data_) = 3618885;
  HIBYTE(v14.__locale_) = 0;
  LOBYTE(v12) = 0;
  v3 = sub_100029BE8(a1, &v25, &v12);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v3;
}

uint64_t sub_1000288C8(uint64_t result)
{
  v1 = *(result + 12);
  if (v1)
  {
    v2 = result;
    v3 = sub_10000EAE4(*(result + 12), v6, 0x100uLL);
    if (v3)
    {
      v4 = v3;
      do
      {
        sub_100028AA0(v2, "O", v6, v4, 0);
        v4 = sub_10000EAE4(v1, v6, 0x100uLL);
      }

      while (v4);
    }

    result = sub_10000EBC4(v1);
    if (result)
    {
      v5 = result;
      do
      {
        sub_100028AA0(v2, "O", v6, v5, 0);
        result = sub_10000EBC4(v1);
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

size_t sub_1000289C4(size_t result)
{
  v1 = *(result + 12);
  if (v1)
  {
    v2 = result;
    result = sub_10000ECA4(*(result + 12), __s, 0x400uLL);
    if (result)
    {
      v3 = result;
      do
      {
        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 65;
        std::string::append(&__p, __s, v3);
        sub_100029084(v2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        result = sub_10000ECA4(v1, __s, 0x400uLL);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

BOOL sub_100028AA0(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4, const char *a5)
{
  v30 = 0;
  *(&v22 + *(v22 - 3)) = v8;
  v9 = (&v22 + *(v22 - 3));
  std::ios_base::init(v9, &v23);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  std::locale::locale(&v24);
  memset(v25, 0, sizeof(v25));
  *__p = 0u;
  v27 = 0u;
  v28 = 16;
  sub_100034D34(&v23);
  if (a2 && *a2)
  {
    v10 = strlen(a2);
    sub_100034978(&v22, a2, v10);
  }

  for (; a4; --a4)
  {
    v12 = v22;
    v13 = &v22 + *(v22 - 3);
    if (*(v13 + 36) == -1)
    {
      std::ios_base::getloc((&v22 + *(v22 - 3)));
      v14 = std::locale::use_facet(&v20, &std::ctype<char>::id);
      (v14->__vftable[2].~facet_0)(v14, 32);
      std::locale::~locale(&v20);
      v12 = v22;
    }

    *(v13 + 36) = 48;
    *(&v23 + *(v12 - 3)) = *(&v23 + *(v12 - 3)) & 0xFFFFFFB5 | 8;
    *(&v23 + *(v12 - 3)) = *(&v23 + *(v12 - 3)) & 0xFFFFFF4F | 0x80;
    *(v25 + *(v12 - 3)) = 2;
    v11 = *a3++;
    std::ostream::operator<<();
  }

  if (a5 && *a5)
  {
    v15 = strlen(a5);
    sub_100034978(&v22, a5, v15);
  }

  std::stringbuf::str();
  v16 = sub_100029084(a1, &v20);
  if (v21 < 0)
  {
    operator delete(v20.__locale_);
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v24);
  std::ostream::~ostream();
  std::ios::~ios();
  return v16;
}

uint64_t sub_100028EE0(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = a1 + 8;
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_100034D34(v2);
  return a1;
}

BOOL sub_100029084(uint64_t a1, uint64_t a2)
{
  if (sub_100010524(0x40000))
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v47, 0);
    data = v47.__r_.__value_.__l.__data_;
    v6 = v47.__r_.__value_.__r.__words[1];
    v7 = *(a1 + 496);
    v8 = *(a1 + 504);
    *(a1 + 496) = *&v47.__r_.__value_.__l.__data_;
    if (v4)
    {
      pthread_mutex_unlock(v4);
    }

    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    sub_100010668("%8d RNBRemote::%s (%s) called", v6 - v8 + 1000000 * (data - v7), "SendPacket", v9);
  }

  sub_10002960C(a1, a2, v56);
  std::operator+<char>();
  v10 = std::string::append(&v47, "#");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
    if (*(a1 + 781))
    {
      goto LABEL_12;
    }
  }

  else if (*(a1 + 781))
  {
LABEL_12:
    v12 = "00";
    goto LABEL_31;
  }

  v13 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v13 = v56[1];
  }

  if (v13)
  {
    v14 = v56[0];
    if (v13 == 1)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
      v20 = v56;
      if ((v57 & 0x80u) != 0)
      {
        v20 = v56[0];
      }

      v21 = v20 + 1;
      v22 = v13 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v24 = *v20;
        v20 = (v20 + 2);
        v23 = v24;
        v25 = *v21;
        v21 += 2;
        v18 += v23;
        v19 += v25;
        v22 -= 2;
      }

      while (v22);
      v16 = v19 + v18;
      if (v13 == v15)
      {
        goto LABEL_29;
      }
    }

    if ((v57 & 0x80u) == 0)
    {
      v14 = v56;
    }

    v26 = (v13 - v15);
    v27 = v14 + v15;
    do
    {
      v28 = *v27++;
      v16 += v28;
      --v26;
    }

    while (v26);
LABEL_29:
    v17 = v16;
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v12 = __str;
  snprintf(__str, 5uLL, "%02x", v17);
LABEL_31:
  std::string::append(&v55, v12);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v55;
  }

  else
  {
    v29 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  v31 = sub_1000385D0((a1 + 472), v29, size);
  if (v31)
  {
    goto LABEL_46;
  }

  if ((*(a1 + 781) & 1) == 0)
  {
    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    LODWORD(v47.__r_.__value_.__l.__data_) = 0;
    *&v47.__r_.__value_.__r.__words[1] = 0u;
    v48 = 0u;
    *v49 = 0u;
    *__p = 0u;
    v51 = 0u;
    v32 = sub_1000299D4(a1, v52, &v47, 1);
    if (v32)
    {
      v31 = v32;
      if (!sub_100010524(0x100000))
      {
        if ((SHIBYTE(v51) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_68:
        operator delete(__p[1]);
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
LABEL_45:
          if ((SHIBYTE(v53) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

LABEL_70:
          operator delete(v52[0]);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_71;
          }

          goto LABEL_47;
        }

        goto LABEL_69;
      }

      v41 = *(a1 + 488);
      if (v41)
      {
        pthread_mutex_lock(*(a1 + 488));
      }

      gettimeofday(&v58, 0);
      tv_sec = v58.tv_sec;
      tv_usec = v58.tv_usec;
      v44 = *(a1 + 496);
      v45 = *(a1 + 504);
      *(a1 + 496) = v58;
      if (v41)
      {
        pthread_mutex_unlock(v41);
      }

      v46 = &v55;
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v55.__r_.__value_.__r.__words[0];
      }

      sub_100010668("%8d RNBRemote::%s (%s) got error trying to get reply...", tv_usec - v45 + 1000000 * (tv_sec - v44), "SendPacket", v46);
      if (SHIBYTE(v51) < 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (sub_100010524(0x40000))
      {
        v34 = *(a1 + 488);
        if (v34)
        {
          pthread_mutex_lock(*(a1 + 488));
        }

        gettimeofday(&v58, 0);
        v35 = v58.tv_sec;
        v36 = v58.tv_usec;
        v37 = *(a1 + 496);
        v38 = *(a1 + 504);
        *(a1 + 496) = v58;
        if (v34)
        {
          pthread_mutex_unlock(v34);
        }

        v39 = &v55;
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = v55.__r_.__value_.__r.__words[0];
        }

        v40 = v52;
        if (v53 < 0)
        {
          v40 = v52[0];
        }

        sub_100010668("%8d RNBRemote::%s (%s) got reply: '%s'", v36 - v38 + 1000000 * (v35 - v37), "SendPacket", v39, v40);
      }

      v31 = LODWORD(v47.__r_.__value_.__l.__data_) != 1;
      if (SHIBYTE(v51) < 0)
      {
        goto LABEL_68;
      }
    }

LABEL_44:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_69:
    operator delete(v49[0]);
    if (SHIBYTE(v53) < 0)
    {
      goto LABEL_70;
    }

LABEL_46:
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_71;
    }

    goto LABEL_47;
  }

  v31 = 0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_71:
    operator delete(v55.__r_.__value_.__l.__data_);
    if (v57 < 0)
    {
      goto LABEL_72;
    }

    return v31;
  }

LABEL_47:
  if (v57 < 0)
  {
LABEL_72:
    operator delete(v56[0]);
  }

  return v31;
}

uint64_t sub_1000294EC(uint64_t a1)
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

void sub_10002960C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a1 + 792) == 1)
  {
    *(a1 + 792) = 0;
LABEL_4:

    std::string::operator=(a3, a2);
    return;
  }

  v4 = *(a1 + 796);
  if (v4 == 4)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a2 + 8);
    if (v5 > *(a1 + 784))
    {
LABEL_9:
      v6 = v5 + 128;
      v7 = a2;
      if (v5 != -128)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_100008888();
      }

      if (dword_100074560 != v4)
      {
        if (qword_10007DAC8)
        {
          free(qword_10007DAC8);
          qword_10007DAC8 = 0;
        }

        if (v4 > 3)
        {
LABEL_32:
          std::operator+<char>();
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = *__str;
          *(a3 + 16) = v22;
          return;
        }

        v8 = compression_encode_scratch_buffer_size(dword_100066EC0[v4]);
        a2 = v7;
        if (v8)
        {
          v9 = malloc_type_malloc(v8, 0x197EC01FuLL);
          a2 = v7;
          qword_10007DAC8 = v9;
          dword_100074560 = v4;
        }
      }

      if (v4 <= 3)
      {
        v10 = *(a2 + 23);
        v11 = v10 >= 0 ? a2 : *a2;
        v12 = v10 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v13 = compression_encode_buffer(0, v6, v11, v12, qword_10007DAC8, dword_100066EC0[v4]);
        if (v13)
        {
          v14 = v13;
          if (*(a3 + 23) < 0)
          {
            **a3 = 0;
            *(a3 + 8) = 0;
          }

          else
          {
            *a3 = 0;
            *(a3 + 23) = 0;
          }

          std::string::reserve(a3, v13);
          std::string::assign(a3, "C");
          v15 = *(v7 + 23);
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v7 + 8);
          }

          snprintf(__str, 0x10uLL, "%zu:", v15);
          __str[15] = 0;
          std::string::append(a3, __str);
          v16 = 0;
          do
          {
            v18 = *v16++;
            v17 = v18;
            v19 = (1 << v18) & 0x41800000001;
            v20 = v18 > 0x2A || v19 == 0;
            if (!v20 || v17 == 125)
            {
              std::string::push_back(a3, 125);
              LOBYTE(v17) = v17 ^ 0x20;
            }

            std::string::push_back(a3, v17);
            --v14;
          }

          while (v14);
          operator delete(0);
          return;
        }
      }

      goto LABEL_32;
    }
  }

  else if (*(a1 + 784) < v5)
  {
    goto LABEL_9;
  }

  std::operator+<char>();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *__str;
  *(a3 + 16) = v22;
}

uint64_t sub_100029940(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*a1)
  {
    pthread_mutex_lock(*a1);
  }

  gettimeofday(&v12, 0);
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  tv_usec = v5->tv_usec;
  if (a2)
  {
    *v5 = v12;
  }

  tv_sec = v12.tv_sec;
  v10 = v12.tv_usec;
  if (v4)
  {
    pthread_mutex_unlock(v4);
  }

  return v10 - tv_usec + 1000000 * (tv_sec - v6);
}

uint64_t sub_1000299D4(uint64_t a1, std::string *a2, uint64_t a3, int a4)
{
  memset(&__str, 0, sizeof(__str));
  if (sub_100029D0C(a1, &__str))
  {
    v8 = sub_100012808(a1 + 120);
    result = 1;
    if (!a4 || (v8 & 0x40) == 0)
    {
LABEL_37:
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_38;
    }

    while (1)
    {
      v10 = sub_1000128FC(a1 + 120, 0xA0u, 0);
      if ((v10 & 0x20) != 0 && !sub_100029D0C(a1, &__str))
      {
        break;
      }

      if (v10 < 0)
      {
        result = 2;
        goto LABEL_37;
      }
    }
  }

  v11 = *(a1 + 672);
  v12 = *(a1 + 680);
  if (v11 == v12)
  {
LABEL_33:
    if (v11 == v12)
    {
      goto LABEL_41;
    }

LABEL_34:
    v23 = *v11;
    v24 = v11[1];
    *(a3 + 32) = *(v11 + 4);
    *a3 = v23;
    *(a3 + 16) = v24;
    std::string::operator=((a3 + 40), (v11 + 40));
    std::string::operator=((a3 + 64), (v11 + 4));
    std::string::operator=(a2, &__str);
    result = 0;
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_38;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v15 = v11 + 40;
  while (1)
  {
    v16 = *(v15 + 23);
    if (v16 < 0)
    {
      v17 = *(v15 + 8);
      if (v17 == -1)
      {
LABEL_50:
        sub_100008888();
      }
    }

    else
    {
      v17 = *(v15 + 23);
      if (v16 == -1)
      {
        goto LABEL_50;
      }
    }

    v18 = size >= v17 ? v17 : size;
    v19 = v16 >= 0 ? v15 : *v15;
    if (!memcmp(p_str, v19, v18) && v17 <= size)
    {
      break;
    }

    v21 = v15 + 88;
    v22 = (v15 + 48);
    v15 += 88;
    if (v22 == v12)
    {
      v11 = (v21 - 40);
      goto LABEL_33;
    }
  }

  v11 = (v15 - 40);
  if (v11 != v12)
  {
    goto LABEL_34;
  }

LABEL_41:
  if (sub_100010524(0x800000))
  {
    v26 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = __str.__r_.__value_.__r.__words[0];
    }

    sub_100010668("unimplemented packet: '%s'", v26);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__str;
  }

  else
  {
    v27 = __str.__r_.__value_.__r.__words[0];
  }

  sub_10002A294(a1, v27);
  result = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    v25 = result;
    operator delete(__str.__r_.__value_.__l.__data_);
    return v25;
  }

  return result;
}

BOOL sub_100029BE8(uint64_t a1, std::string *this, unsigned __int8 *a3)
{
  if (*(a1 + 800) == 1)
  {
    v3 = a3[23];
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a3 + 1);
    }

    if (v3)
    {
      v4 = a1;
      v5 = this;
      v6 = a3;
      std::string::append(this, ";");
      if ((v6[23] & 0x80u) != 0)
      {
        v6 = *v6;
      }

      memset(&v14, 0, sizeof(v14));
      v7 = strlen(v6);
      std::string::reserve(&v14, 2 * v7);
      if (v6)
      {
        v8 = *v6;
        if (*v6)
        {
          v9 = v6 + 1;
          do
          {
            snprintf(__str, 5uLL, "%02x", v8);
            std::string::append(&v14, __str);
            v10 = *v9++;
            v8 = v10;
          }

          while (v10);
        }
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v14;
      }

      else
      {
        v11 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(v5, v11, size);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      this = v5;
      a1 = v4;
    }
  }

  return sub_100029084(a1, this);
}

uint64_t sub_100029D0C(uint64_t a1, std::string *a2)
{
  pthread_mutex_lock((a1 + 552));
  if (!*(a1 + 736))
  {
    sub_10001289C((a1 + 120), 32);
    pthread_mutex_unlock((a1 + 552));
    return 1;
  }

  v4 = *(*(a1 + 704) + 8 * (*(a1 + 728) / 0xAAuLL)) + 24 * (*(a1 + 728) % 0xAAuLL);
  v5 = a2->__r_.__value_.__r.__words[2];
  v6 = *&a2->__r_.__value_.__l.__data_;
  v7 = *(v4 + 16);
  *&a2->__r_.__value_.__l.__data_ = *v4;
  a2->__r_.__value_.__r.__words[2] = v7;
  *v4 = v6;
  *(v4 + 16) = v5;
  v8 = *(a1 + 728);
  v9 = *(*(a1 + 704) + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
    v8 = *(a1 + 728);
  }

  v10 = *(a1 + 736) - 1;
  *(a1 + 736) = v10;
  v11 = v8 + 1;
  *(a1 + 728) = v11;
  if (v11 >= 0x154)
  {
    operator delete(**(a1 + 704));
    *(a1 + 704) += 8;
    *(a1 + 728) -= 170;
    v10 = *(a1 + 736);
  }

  if (!v10)
  {
    sub_10001289C((a1 + 120), 32);
  }

  pthread_mutex_unlock((a1 + 552));
  v12 = 0;
  v13 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v14 = a2->__r_.__value_.__r.__words[0];
  if ((v13 & 0x80000000) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  v16 = v15->__r_.__value_.__s.__data_[0];
  if (v16 > 42)
  {
    if (v16 == 43 || v16 == 45)
    {
      return v12;
    }

    goto LABEL_19;
  }

  if (v16 == 3)
  {
    return v12;
  }

  if (v16 != 36)
  {
LABEL_19:
    if (sub_100010524(0x100000))
    {
      v18 = *(a1 + 488);
      if (v18)
      {
        pthread_mutex_lock(*(a1 + 488));
      }

      gettimeofday(&v67, 0);
      tv_sec = v67.tv_sec;
      tv_usec = v67.tv_usec;
      v21 = *(a1 + 496);
      v22 = *(a1 + 504);
      *(a1 + 496) = v67;
      if (v18)
      {
        pthread_mutex_unlock(v18);
      }

      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = a2->__r_.__value_.__r.__words[0];
      }

      sub_100010668("%8u RNBRemote::%s tossing unexpected packet???? %s", tv_usec - v22 + 1000000 * (tv_sec - v21), "GetPacketPayload", v23);
    }

    if ((*(a1 + 781) & 1) == 0)
    {
      goto LABEL_87;
    }

    return 1;
  }

  if (*(a1 + 781))
  {
    v17 = 0;
    goto LABEL_46;
  }

  size = a2->__r_.__value_.__l.__size_;
  if ((v13 & 0x80000000) == 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  v25 = size - 2;
  if (size < 2)
  {
LABEL_43:
    if ((v13 & 0x80000000) == 0)
    {
      v14 = a2;
    }

    v17 = strtol(v14 + v25, 0, 16);
LABEL_46:
    std::string::erase(a2, 0, 1uLL);
    v30 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((v30 & 0x80u) != 0)
    {
      v30 = a2->__r_.__value_.__l.__size_;
    }

    std::string::erase(a2, v30 - 3, 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 781))
    {
      return 0;
    }

    v32 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v33 = a2->__r_.__value_.__r.__words[0];
    if (v32 >= 0)
    {
      v33 = a2;
    }

    if (v32 < 0)
    {
      v32 = a2->__r_.__value_.__l.__size_;
    }

    if (!v32)
    {
      v34 = 0;
LABEL_80:
      if (v17 == v34)
      {
        sub_1000385D0((a1 + 472), "+", 1uLL);
        return 0;
      }

      if (sub_100010524(0x20000))
      {
        v64 = sub_100029940(a1 + 488, 1);
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = a2;
        }

        else
        {
          v65 = a2->__r_.__value_.__r.__words[0];
        }

        sub_100010668("%8u RNBRemote::%s sending ACK for '%s' (error: packet checksum mismatch  (0x%2.2lx != 0x%2.2x))", v64, "GetPacketPayload", v65, v17, v34);
      }

LABEL_87:
      v12 = 1;
      sub_1000385D0((a1 + 472), "-", 1uLL);
      return v12;
    }

    if (v32 < 4)
    {
      v34 = 0;
      v35 = v33;
      goto LABEL_78;
    }

    if (v32 >= 0x20)
    {
      v43 = 0uLL;
      v42 = v32 & 0xFFFFFFFFFFFFFFE0;
      v44 = 0uLL;
      v45 = v33 + 2;
      v46 = v32 & 0xFFFFFFFFFFFFFFE0;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      do
      {
        v53 = *v45[-2].i8;
        v54 = vmovl_s8(*v53.i8);
        v55 = vmovl_high_s8(v53);
        v56 = vmovl_s8(*v45);
        v57 = vmovl_high_s8(*v45->i8);
        v48 = vaddw_high_s16(v48, v55);
        v47 = vaddw_s16(v47, *v55.i8);
        v44 = vaddw_high_s16(v44, v54);
        v43 = vaddw_s16(v43, *v54.i8);
        v52 = vaddw_high_s16(v52, v57);
        v51 = vaddw_s16(v51, *v57.i8);
        v50 = vaddw_high_s16(v50, v56);
        v49 = vaddw_s16(v49, *v56.i8);
        v45 += 4;
        v46 -= 32;
      }

      while (v46);
      v31 = vaddq_s32(vaddq_s32(v50, v44), vaddq_s32(v52, v48));
      v34 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v49, v43), vaddq_s32(v51, v47)), v31));
      if (v32 == v42)
      {
        goto LABEL_80;
      }

      if ((v32 & 0x1C) == 0)
      {
        v35 = v33 + v42;
LABEL_78:
        v62 = v33 + v32;
        do
        {
          v63 = *v35++;
          v34 += v63;
        }

        while (v35 != v62);
        goto LABEL_80;
      }
    }

    else
    {
      v34 = 0;
      v42 = 0;
    }

    v35 = v33 + (v32 & 0xFFFFFFFFFFFFFFFCLL);
    v58 = v34;
    v59 = (v33 + v42);
    v60 = v42 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v61 = *v59++;
      v31.i32[0] = v61;
      v31.i64[0] = vmovl_s8(*v31.i8).u64[0];
      v58 = vaddw_s16(v58, *v31.i8);
      v60 += 4;
    }

    while (v60);
    v34 = vaddvq_s32(v58);
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v26 = v13 >> 63;
  while (1)
  {
    v27 = (v26 & 1) != 0 ? a2->__r_.__value_.__r.__words[0] : a2;
    v28 = __tolower(v27[v25]);
    if (v28 > 0xFF || (_DefaultRuneLocale.__runetype[v28] & 0x10000) == 0)
    {
      break;
    }

    ++v25;
    v13 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v26 = v13 >> 63;
    v29 = a2->__r_.__value_.__l.__size_;
    if ((v13 & 0x80000000) == 0)
    {
      v29 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    if (v25 >= v29)
    {
      v14 = a2->__r_.__value_.__r.__words[0];
      v25 = v29 - 2;
      goto LABEL_43;
    }
  }

  v12 = 1;
  sub_1000385D0((a1 + 472), "-", 1uLL);
  if (sub_100010524(0x100000))
  {
    v36 = *(a1 + 488);
    if (v36)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v67, 0);
    v37 = v67.tv_sec;
    v38 = v67.tv_usec;
    v39 = *(a1 + 496);
    v40 = *(a1 + 504);
    *(a1 + 496) = v67;
    if (v36)
    {
      pthread_mutex_unlock(v36);
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = a2->__r_.__value_.__r.__words[0];
    }

    sub_100010668("%8u RNBRemote::%s error: packet with invalid checksum characters: %s", v38 - v40 + 1000000 * (v37 - v39), "GetPacketPayload", v41);
    return 1;
  }

  return v12;
}

BOOL sub_10002A294(uint64_t a1, const char *a2)
{
  if (sub_100010524(0x40000))
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v12, 0);
    tv_sec = v12.tv_sec;
    tv_usec = v12.tv_usec;
    v7 = *(a1 + 496);
    v8 = *(a1 + 504);
    *(a1 + 496) = v12;
    if (v4)
    {
      pthread_mutex_unlock(v4);
    }

    v9 = "NULL";
    if (a2)
    {
      v9 = a2;
    }

    sub_100010668("%8u RNBRemote::%s(%s)", tv_usec - v8 + 1000000 * (tv_sec - v7), "HandlePacket_UNIMPLEMENTED", v9);
  }

  v13 = 0;
  LOBYTE(v12.tv_sec) = 0;
  result = sub_100029084(a1, &v12);
  if (v13 < 0)
  {
    v11 = result;
    operator delete(v12.tv_sec);
    return v11;
  }

  return result;
}

BOOL sub_10002A394(uint64_t a1, const char *a2, int a3, const char *a4)
{
  if (sub_100010524(0x800000))
  {
    v8 = *(a1 + 488);
    if (v8)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v15, 0);
    tv_sec = v15.tv_sec;
    tv_usec = v15.tv_usec;
    v11 = *(a1 + 496);
    v12 = *(a1 + 504);
    *(a1 + 496) = v15;
    if (v8)
    {
      pthread_mutex_unlock(v8);
    }

    sub_100010668("%8u %s:%i ILLFORMED: '%s' (%s)", tv_usec - v12 + 1000000 * (tv_sec - v11), a2, a3, "HandlePacket_ILLFORMED", a4);
  }

  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 3354693;
  v16 = 0;
  LOBYTE(v15.tv_sec) = 0;
  result = sub_100029BE8(a1, &__p, &v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v14;
  }

  return result;
}

uint64_t sub_10002A4B0(uint64_t a1, _DWORD *a2)
{
  if (sub_100010524(0x100000))
  {
    v4 = *(a1 + 488);
    if (v4)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(v19, 0);
    v5 = *v19;
    v6 = *&v19[8];
    v7 = *(a1 + 496);
    v8 = *(a1 + 504);
    *(a1 + 496) = *v19;
    if (v4)
    {
      pthread_mutex_unlock(v4);
    }

    sub_100010668("%8u RNBRemote::%s", v6 - v8 + 1000000 * (v5 - v7), "HandleAsyncPacket");
  }

  if ((atomic_load_explicit(&qword_10047DB30, memory_order_acquire) & 1) == 0)
  {
    sub_1000591A8();
  }

  memset(&v24, 0, sizeof(v24));
  *v19 = 0;
  *&v19[8] = 0u;
  v20 = 0u;
  *v21 = 0u;
  *__p = 0u;
  v23 = 0u;
  v9 = sub_1000299D4(a1, &v24, v19, 0);
  if (!v9)
  {
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v24.__r_.__value_.__l.__size_)
      {
        goto LABEL_24;
      }

      v11 = *v24.__r_.__value_.__l.__data_;
      if ((v11 & 0x80000000) == 0)
      {
LABEL_17:
        if ((_DefaultRuneLocale.__runetype[v11] & 0x40000) == 0)
        {
LABEL_24:
          if (sub_100010524(9437184))
          {
            sub_100010668("HandleAsyncPacket (%s);");
          }

          goto LABEL_26;
        }

LABEL_22:
        if (sub_100010524(9437184))
        {
          sub_100010668("HandleAsyncPacket (%s);");
        }

LABEL_26:
        v13 = *(&v20 + 1);
        v12 = v20;
        v14 = BYTE8(v20) & 1;
        if (*(&v20 + 1))
        {
          v15 = (BYTE8(v20) & 1 | v20) == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = v15;
        if (v20 || (v16 & 1) == 0)
        {
          if (a2)
          {
            *a2 = *v19;
          }

          v17 = (a1 + (v13 >> 1));
          if (v14)
          {
            v12 = *(*v17 + v12);
          }

          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v24;
          }

          else
          {
            v18 = v24.__r_.__value_.__r.__words[0];
          }

          v9 = v12(v17, v18);
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v9 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_44;
          }
        }

LABEL_11:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_45:
        operator delete(v21[0]);
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v9;
        }

LABEL_46:
        operator delete(v24.__r_.__value_.__l.__data_);
        return v9;
      }
    }

    else
    {
      if (!*(&v24.__r_.__value_.__s + 23))
      {
        goto LABEL_24;
      }

      v11 = v24.__r_.__value_.__s.__data_[0];
      if ((v24.__r_.__value_.__s.__data_[0] & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    if (!__maskrune(v11, 0x40000uLL))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_45;
  }

LABEL_12:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

  return v9;
}

uint64_t sub_10002A740(uint64_t a1, int a2)
{
  *a1 = 0;
  if (a2)
  {
    operator new();
  }

  gettimeofday((a1 + 8), 0);
  return a1;
}

pthread_mutex_t **sub_10002A7D0(pthread_mutex_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (pthread_mutex_destroy(v1))
    {
      if (!pthread_mutex_unlock(v1))
      {
        pthread_mutex_destroy(v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10002A838(uint64_t a1, _DWORD *a2)
{
  if ((atomic_load_explicit(qword_10047DB38, memory_order_acquire) & 1) == 0)
  {
    sub_100059218();
  }

  memset(&v20, 0, sizeof(v20));
  v14 = 0;
  v15 = 0u;
  v16 = 0u;
  *v17 = 0u;
  *__p = 0u;
  v19 = 0u;
  if (sub_1000299D4(a1, &v20, &v14, 0))
  {
    v4 = 1;
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (sub_100010524(0x100000))
  {
    v5 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v20.__r_.__value_.__r.__words[0];
    }

    sub_100010668("HandleReceivedPacket (%s);", v5);
  }

  v7 = *(&v15 + 1);
  v6 = v15;
  v8 = BYTE8(v15) & 1;
  if (*(&v15 + 1))
  {
    v9 = (BYTE8(v15) & 1 | v15) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v15 && !v10)
  {
    v4 = 0;
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    *a2 = v14;
  }

  v11 = (a1 + (v7 >> 1));
  if (v8)
  {
    v6 = *(*v11 + v6);
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v20;
  }

  else
  {
    v12 = v20.__r_.__value_.__r.__words[0];
  }

  v4 = v6(v11, v12);
  if (SHIBYTE(v19) < 0)
  {
LABEL_28:
    operator delete(__p[1]);
  }

LABEL_29:
  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v4;
    }

LABEL_33:
    operator delete(v20.__r_.__value_.__l.__data_);
    return v4;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

  return v4;
}

pthread_mutex_t *sub_10002A9AC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 552));
  memset(&v45, 0, sizeof(v45));
  v4 = *(a1 + 767);
  if (v4 < 0)
  {
    v4 = *(a1 + 752);
  }

  v5 = (a1 + 744);
  if (v4)
  {
    *&v45.__r_.__value_.__l.__data_ = *v5;
    v45.__r_.__value_.__r.__words[2] = *(a1 + 760);
    *(a1 + 752) = 0;
    *(a1 + 760) = 0;
    *v5 = 0;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  std::string::append(&v45, v7, v8);
  v9 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_91;
  }

  v42 = (a1 + 744);
  v11 = 0;
  while (1)
  {
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v45;
    }

    else
    {
      v14 = v45.__r_.__value_.__r.__words[0];
    }

    v15 = v14->__r_.__value_.__s.__data_[v11];
    if (v15 > 42)
    {
      if (v15 != 45)
      {
        v16 = v11;
        if (v15 != 43)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }

    if (v15 != 3)
    {
      break;
    }

LABEL_34:
    v16 = v11 + 1;
    if (v11 == -2)
    {
      goto LABEL_71;
    }

LABEL_35:
    if (v16 <= v11)
    {
      if (sub_100010524(0x40000))
      {
        v22 = *(a1 + 488);
        if (v22)
        {
          pthread_mutex_lock(*(a1 + 488));
        }

        gettimeofday(&__dst, 0);
        tv_sec = __dst.tv_sec;
        tv_usec = __dst.tv_usec;
        v25 = *(a1 + 496);
        v26 = *(a1 + 504);
        *(a1 + 496) = __dst;
        if (v22)
        {
          pthread_mutex_unlock(v22);
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v45;
        }

        else
        {
          v12 = v45.__r_.__value_.__r.__words[0];
        }

        sub_100010668("%8d RNBRemote::%s tossing junk byte at %c", tv_usec - v26 + 1000000 * (tv_sec - v25), "CommDataReceived", v12->__r_.__value_.__s.__data_[v11]);
      }

      v13 = v11 + 1;
    }

    else
    {
      v18 = *(a1 + 668);
      *(a1 + 668) = v18 + 1;
      v13 = v11 + 1;
      v19 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      if (v16 != v11 + 1 || v18 || ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v20 = &v45) : (v20 = v45.__r_.__value_.__r.__words[0]), v20->__r_.__value_.__s.__data_[v11] != 43))
      {
        if ((*(&v45.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          v19 = v45.__r_.__value_.__l.__size_;
          if (v45.__r_.__value_.__l.__size_ < v11)
          {
            goto LABEL_96;
          }

          v21 = v45.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v11 > HIBYTE(v45.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_96;
          }

          v21 = &v45;
        }

        v27 = v19 - v11;
        if (v27 >= v16 - v11)
        {
          v28 = v16 - v11;
        }

        else
        {
          v28 = v27;
        }

        if (v28 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_97;
        }

        if (v28 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v44) = v28;
        if (v28)
        {
          memmove(&__dst, v21 + v11, v28);
        }

        *(&__dst.tv_sec + v28) = 0;
        v29 = *(a1 + 704);
        v30 = *(a1 + 704);
        if (*(a1 + 712) == v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = 170 * ((*(a1 + 712) - v30) >> 3) - 1;
        }

        v32 = *(a1 + 736) + *(a1 + 728);
        if (v31 == v32)
        {
          sub_100035230((a1 + 696));
          v30 = *(a1 + 704);
          v32 = *(a1 + 736) + *(a1 + 728);
        }

        v33 = (*(v30 + 8 * (v32 / 0xAA)) + 24 * (v32 % 0xAA));
        *v33 = __dst;
        v33[1].tv_sec = v44;
        ++*(a1 + 736);
        if (sub_100010524(0x800000))
        {
          v34 = *(a1 + 736) + *(a1 + 728) - 1;
          v35 = *(*(a1 + 704) + 8 * (v34 / 0xAA)) + 24 * (v34 % 0xAA);
          if (*(v35 + 23) < 0)
          {
            v35 = *v35;
          }

          sub_100010668("getpkt: %s", v35);
        }

        v13 = v16;
      }
    }

    v11 = v13;
    if (v13 >= size)
    {
      goto LABEL_90;
    }
  }

  v16 = v11;
  if (v15 != 36)
  {
    goto LABEL_35;
  }

  v17 = std::string::find(&v45, 35, v11 + 1);
  if (v17 != -1)
  {
    v16 = v17 + 3;
    if (v17 + 3 <= size && v17 != -4)
    {
      goto LABEL_35;
    }
  }

LABEL_71:
  v36 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v11 <= SHIBYTE(v45.__r_.__value_.__r.__words[2]))
    {
      v37 = &v45;
      goto LABEL_76;
    }

LABEL_96:
    sub_100008888();
  }

  v36 = v45.__r_.__value_.__l.__size_;
  if (v45.__r_.__value_.__l.__size_ < v11)
  {
    goto LABEL_96;
  }

  v37 = v45.__r_.__value_.__r.__words[0];
LABEL_76:
  v38 = v36 - v11;
  if (v36 - v11 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_97:
    sub_100008888();
  }

  if (v38 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v44) = v36 - v11;
  if (v36 != v11)
  {
    memmove(&__dst, v37 + v11, v38);
  }

  *(&__dst.tv_sec + v38) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.tv_sec;
  }

  if (v44 >= 0)
  {
    v40 = HIBYTE(v44);
  }

  else
  {
    v40 = *&__dst.tv_usec;
  }

  std::string::append(v42, p_dst, v40);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst.tv_sec);
  }

LABEL_90:
  v9 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
LABEL_91:
  if (v9 < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  result = pthread_mutex_unlock((a1 + 552));
  if (*(a1 + 736))
  {
    return sub_10001283C((a1 + 120), 32);
  }

  return result;
}

uint64_t sub_10002AE78(uint64_t a1)
{
  if (sub_100010524(0x100000))
  {
    v2 = *(a1 + 488);
    if (v2)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v8, 0);
    tv_sec = v8.tv_sec;
    tv_usec = v8.tv_usec;
    v5 = *(a1 + 496);
    v6 = *(a1 + 504);
    *(a1 + 496) = v8;
    if (v2)
    {
      pthread_mutex_unlock(v2);
    }

    sub_100010668("%8u RNBRemote::%s called", tv_usec - v6 + 1000000 * (tv_sec - v5), "StartReadRemoteDataThread");
  }

  result = sub_100012808(a1 + 120);
  if ((result & 0x40) == 0)
  {
    sub_10001289C((a1 + 120), 128);
    if (pthread_create((a1 + 768), 0, sub_10002AFD4, a1))
    {
      sub_10001289C((a1 + 120), 64);

      return sub_10001283C((a1 + 120), 128);
    }

    else
    {

      return sub_1000128FC(a1 + 120, 0x40u, 0);
    }
  }

  return result;
}

uint64_t sub_10002AFD4(const void *a1)
{
  if (sub_100010524(0x100000))
  {
    sub_100010668("RNBRemote::%s (%p): thread starting...", "ThreadFunctionReadRemoteData", a1);
  }

  v3 = qword_10007D998;
  v2 = qword_10007D9A0;
  if (qword_10007D9A0)
  {
    atomic_fetch_add_explicit((qword_10007D9A0 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    pthread_setname_np("read gdb-remote packets thread");
    v10 = 0;
    v4 = pthread_self();
    if (!pthread_getschedparam(v4, &v10, &v11))
    {
      v11.sched_priority = 47;
      v5 = pthread_self();
      pthread_setschedparam(v5, v10, &v11);
    }

    sub_10001283C((v3 + 120), 64);
    while (1)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      v6 = sub_100038360((v3 + 472), &__p);
      v7 = HIBYTE(v14);
      v8 = HIBYTE(v14);
      if (!v6)
      {
        if (v14 < 0)
        {
          v7 = v13;
        }

        if (v7)
        {
          sub_10002A9AC(v3, &__p);
          v8 = HIBYTE(v14);
        }
      }

      if (v8 < 0)
      {
        operator delete(__p);
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 == 1)
      {
        if (sub_100010524(0x100000))
        {
          sub_100010668("RNBSocket::GetCommData returned error %u");
        }

        goto LABEL_22;
      }
    }

    if (sub_100010524(0x100000))
    {
      sub_100010668("RNBSocket::GetCommData returned not connected...");
    }

LABEL_22:
    sub_10001289C((v3 + 120), 64);
    sub_10001283C((v3 + 120), 128);
  }

  if (sub_100010524(0x100000))
  {
    sub_100010668("RNBRemote::%s (%p): thread exiting...", "ThreadFunctionReadRemoteData", a1);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return 0;
}

void sub_10002B1AC(char *__s@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __s;
    if (a2 != -1 || (v3 = strlen(__s)) != 0)
    {
      v6 = 0;
      do
      {
        while (1)
        {
          v7 = v4;
          v8 = v3;
          v10 = *v4++;
          v9 = v10;
          if (--v3 && v9 == 125)
          {
            v3 = v8 - 2;
            v4 = v7 + 2;
            LOBYTE(v9) = v7[1] ^ 0x20;
          }

          v11 = a3[2];
          if (v6 >= v11)
          {
            break;
          }

          *v6++ = v9;
          a3[1] = v6;
          if (!v3)
          {
            return;
          }
        }

        v12 = v6;
        v13 = (v6 + 1);
        if ((v6 + 1) < 0)
        {
          sub_100008888();
        }

        if (2 * v11 > v13)
        {
          v13 = 2 * v11;
        }

        if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          operator new();
        }

        *v6++ = v9;
        memcpy(0, 0, v12);
        *a3 = 0;
        a3[1] = v12 + 1;
        a3[2] = 0;
        a3[1] = v6;
      }

      while (v3);
    }
  }
}

void sub_10002B2FC(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  if (std::string::find(a1, 34, 0) == -1)
  {
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = a1->__r_.__value_.__r.__words[0];
      size = a1->__r_.__value_.__l.__size_;

      sub_100034C98(a2, v9, size);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *&a1->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = a1->__r_.__value_.__r.__words[2];
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v5 = a1->__r_.__value_.__l.__size_;
    }

    if (v4 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1->__r_.__value_.__r.__words[0];
    }

    for (; v5; --v5)
    {
      v8 = v6->__r_.__value_.__s.__data_[0];
      v6 = (v6 + 1);
      v7 = v8;
      if (v8 == 34)
      {
        std::string::push_back(a2, 92);
      }

      std::string::push_back(a2, v7);
    }
  }
}

void **sub_10002B3D4(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 -= 128;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_10002B45C(uint64_t a1, int a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v47 = *(a1 + 12);
    if (sub_100010524(0x400000))
    {
      sub_100010668("RNBRemote::%s() getting native registers from DNB interface", "InitializeRegisters");
    }

    v4 = qword_10007DAD0;
    v5 = qword_10007DAD8;
    if (a2)
    {
      v6 = qword_10007DAD0;
      if (qword_10007DAD8 != qword_10007DAD0)
      {
        do
        {
          v7 = *(v5 - 24);
          if (v7)
          {
            *(v5 - 16) = v7;
            operator delete(v7);
          }

          v8 = *(v5 - 48);
          if (v8)
          {
            *(v5 - 40) = v8;
            operator delete(v8);
          }

          v5 -= 128;
        }

        while (v5 != v4);
        v6 = qword_10007DAD0;
      }

      qword_10007DAD8 = v4;
      qword_10007DAE8 = 0;
      qword_10007DAF0 = 0;
      v5 = v4;
      v4 = v6;
    }

    v2 = v47;
    if (v4 == v5)
    {
      v59[0] = 0;
      v9 = sub_10000E540(v59);
      v10 = v59[0];
      if (!v59[0] || !v9)
      {
        sub_100059288();
      }

      v11 = 0;
      v12 = 0;
      v58 = 0;
      v57[0] = 0;
      v57[1] = 0;
      v56 = v57;
      v48 = v9;
      do
      {
        v13 = v9 + 24 * v12;
        if (*(v13 + 8) && *(v13 + 16))
        {
          v49 = v12;
          v14 = 0;
          v15 = 1;
          while (1)
          {
            v16 = v58++;
            *v52 = v16;
            *&v52[4] = v11;
            v17 = *(v13 + 8) + 72 * v14;
            *&v52[8] = *v17;
            v18 = *(v17 + 16);
            v19 = *(v17 + 32);
            v20 = *(v17 + 48);
            *&v52[72] = *(v17 + 64);
            *&v52[56] = v20;
            *&v52[40] = v19;
            *&v52[24] = v18;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v21 = strlen(*&v52[16]);
            if (v21 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_90;
            }

            v22 = v21;
            if (v21 >= 0x17)
            {
              operator new();
            }

            v51 = v21;
            if (v21)
            {
              memmove(&__dst, *&v52[16], v21);
            }

            *(&__dst + v22) = 0;
            v59[2] = &__dst;
            *(sub_1000358FC(&v56, &__dst) + 14) = v16;
            if (v51 < 0)
            {
              operator delete(__dst);
            }

            if (*&v52[64])
            {
              v23 = 0;
            }

            else
            {
              v23 = *&v52[36];
            }

            v24 = qword_10007DAD8;
            if (qword_10007DAD8 >= unk_10007DAE0)
            {
              v28 = sub_100035A88(&qword_10007DAD0, v52);
            }

            else
            {
              *qword_10007DAD8 = *v52;
              v25 = *&v52[16];
              v26 = *&v52[32];
              v27 = *&v52[64];
              *(v24 + 48) = *&v52[48];
              *(v24 + 64) = v27;
              *(v24 + 16) = v25;
              *(v24 + 32) = v26;
              *(v24 + 88) = 0;
              *(v24 + 96) = 0;
              *(v24 + 80) = 0;
              if (*(&v53 + 1) != v53)
              {
                if (((*(&v53 + 1) - v53) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                goto LABEL_92;
              }

              *(v24 + 104) = 0;
              *(v24 + 112) = 0;
              *(v24 + 120) = 0;
              if (v55 != *(&v54 + 1))
              {
                if (((v55 - *(&v54 + 1)) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_92:
                sub_100008888();
              }

              v28 = v24 + 128;
            }

            qword_10007DAD8 = v28;
            if (*(&v54 + 1))
            {
              *&v55 = *(&v54 + 1);
              operator delete(*(&v54 + 1));
            }

            if (v53)
            {
              *(&v53 + 1) = v53;
              operator delete(v53);
            }

            v11 += v23;
            v14 = v15++;
            if (*(v13 + 16) <= v14)
            {
              v10 = v59[0];
              v9 = v48;
              v12 = v49;
              break;
            }
          }
        }

        ++v12;
      }

      while (v12 < v10);
      v29 = qword_10007DAD0;
      v30 = qword_10007DAD8;
      if (qword_10007DAD0 != qword_10007DAD8)
      {
        while (1)
        {
          v31 = *(v29 + 64);
          if (v31)
          {
            v32 = *v31;
            if (!*v31)
            {
              goto LABEL_95;
            }

            v33 = -1;
            v34 = 8;
            do
            {
              v35 = strlen(v32);
              if (v35 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_90;
              }

              v36 = v35;
              if (v35 >= 0x17)
              {
                operator new();
              }

              v52[23] = v35;
              if (v35)
              {
                memmove(v52, v32, v35);
              }

              v52[v36] = 0;
              v37 = sub_100035DBC(&v56, v52);
              if ((v52[23] & 0x80000000) != 0)
              {
                v38 = v37;
                operator delete(*v52);
                v37 = v38;
              }

              if (v57 != v37)
              {
                v58 = *(v37 + 56);
                sub_100013918(v29 + 80, &v58);
                if (v58 < ((qword_10007DAD8 - qword_10007DAD0) >> 7) && v33 >= *(v29 + 40) + *(qword_10007DAD0 + (v58 << 7) + 4))
                {
                  v33 = *(v29 + 40) + *(qword_10007DAD0 + (v58 << 7) + 4);
                }
              }

              v32 = *(*(v29 + 64) + v34);
              v34 += 8;
            }

            while (v32);
            if (v33 == -1)
            {
LABEL_95:
              if (sub_100010510())
              {
                sub_100010668("no offset was calculated entry for register %s", *(v29 + 16));
              }

              v33 = -1;
            }

            *(v29 + 4) = v33;
          }

          v39 = *(v29 + 72);
          if (v39)
          {
            v40 = *v39;
            if (*v39)
            {
              break;
            }
          }

LABEL_50:
          v29 += 128;
          if (v29 == v30)
          {
            v45 = qword_10007DAD0;
            v29 = qword_10007DAD8;
            goto LABEL_88;
          }
        }

        v41 = 8;
        while (1)
        {
          v42 = strlen(v40);
          if (v42 > 0x7FFFFFFFFFFFFFF7)
          {
            break;
          }

          v43 = v42;
          if (v42 >= 0x17)
          {
            operator new();
          }

          v52[23] = v42;
          if (v42)
          {
            memmove(v52, v40, v42);
          }

          v52[v43] = 0;
          v44 = sub_100035DBC(&v56, v52);
          if ((v52[23] & 0x80000000) != 0)
          {
            operator delete(*v52);
          }

          if (v57 != v44)
          {
            v58 = *(v44 + 56);
            sub_100013918(v29 + 104, &v58);
          }

          v40 = *(*(v29 + 72) + v41);
          v41 += 8;
          if (!v40)
          {
            goto LABEL_50;
          }
        }

LABEL_90:
        sub_100008888();
      }

      v45 = qword_10007DAD0;
LABEL_88:
      qword_10007DAE8 = v45;
      qword_10007DAF0 = (v29 - v45) >> 7;
      sub_100035898(&v56, v57[0]);
      v2 = v47;
    }
  }

  return v2 != 0;
}

BOOL sub_10002BACC()
{
  v0 = __chkstk_darwin();
  v2 = v0;
  v3 = *(v0 + 12);
  if (!v3)
  {
    *(&v65.__r_.__value_.__s + 23) = 3;
    strcpy(&v65, "E50");
    HIBYTE(v49.__locale_) = 0;
    LOBYTE(v48.tv_sec) = 0;
    result = sub_100029BE8(v0, &v65, &v48);
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v15 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_16;
  }

  v4 = v1;
  if (sub_10000E0C4(*(v0 + 12), v1, v66))
  {
    if (v66[0] == 3)
    {
      sub_10002B45C(v2, 1);
      *(v2 + 656) = -1;
      *&v5 = -1;
      *(&v5 + 1) = -1;
      *(v2 + 616) = v5;
      *(v2 + 632) = v5;
      *(v2 + 648) = -1;
    }

    v64 = 0;
    v40 = v58;
    v41 = v6;
    *(&v58 + *(v58 - 3)) = v6;
    v7 = (&v58 + *(v58 - 3));
    std::ios_base::init(v7, &v59);
    v7[1].__vftable = 0;
    v7[1].__fmtflags_ = -1;
    std::locale::locale(&v60);
    memset(v61, 0, sizeof(v61));
    v62 = 16;
    sub_100034D34(&v59);
    LOBYTE(v48.tv_sec) = 84;
    sub_100034978(&v58, &v48, 1);
    v8 = v67;
    if (sub_100010524(0x400000))
    {
      v9 = *(v2 + 488);
      if (v9)
      {
        pthread_mutex_lock(*(v2 + 488));
      }

      gettimeofday(&v48, 0);
      tv_sec = v48.tv_sec;
      tv_usec = v48.tv_usec;
      v12 = *(v2 + 496);
      v13 = *(v2 + 504);
      *(v2 + 496) = v48;
      if (v9)
      {
        pthread_mutex_unlock(v9);
      }

      sub_100010668("%8d %s got signal signo = %u, exc_type = %u", tv_usec - v13 + 1000000 * (tv_sec - v12), "SendStopReplyPacketForThread", v8, v67);
    }

    v17 = v58;
    v18 = &v58 + *(v58 - 3);
    if (*(v18 + 36) == -1)
    {
      std::ios_base::getloc((&v58 + *(v58 - 3)));
      v19 = std::locale::use_facet(&v48, &std::ctype<char>::id);
      (v19->__vftable[2].~facet_0)(v19, 32);
      std::locale::~locale(&v48);
      v17 = v58;
    }

    *(v18 + 36) = 48;
    *(&v58 + *(v17 - 3) + 8) = *(&v58 + *(v17 - 3) + 8) & 0xFFFFFFB5 | 8;
    *(&v58 + *(v17 - 3) + 8) = *(&v58 + *(v17 - 3) + 8) & 0xFFFFFF4F | 0x80;
    *&v61[*(v17 - 3)] = 2;
    std::ostream::operator<<();
    *(&v58 + *(v58 - 3) + 8) = *(&v58 + *(v58 - 3) + 8) & 0xFFFFFFB5 | 8;
    sub_100034978(&v58, "thread:", 7);
    v20 = std::ostream::operator<<();
    LOBYTE(v48.tv_sec) = 59;
    sub_100034978(v20, &v48, 1);
    v21 = sub_10000C19C(v3, v4);
    v42 = v3;
    if (v21)
    {
      v22 = v21;
      if (*v21)
      {
        v23 = strlen(v21);
        v24 = strcspn(v22, "$#+-;:");
        *(&v58 + *(v58 - 3) + 8) = *(&v58 + *(v58 - 3) + 8) & 0xFFFFFFB5 | 8;
        if (v24 == v23)
        {
          v25 = sub_100034978(&v58, "name:", 5);
          v26 = strlen(v22);
          v27 = sub_100034978(v25, v22, v26);
          LOBYTE(v48.tv_sec) = 59;
          sub_100034978(v27, &v48, 1);
        }

        else
        {
          sub_100034978(&v58, "hexname:", 8);
          for (; v23; --v23)
          {
            v29 = v58;
            v30 = &v58 + *(v58 - 3);
            if (*(v30 + 36) == -1)
            {
              std::ios_base::getloc((&v58 + *(v58 - 3)));
              v31 = std::locale::use_facet(&v48, &std::ctype<char>::id);
              (v31->__vftable[2].~facet_0)(v31, 32);
              std::locale::~locale(&v48);
              v29 = v58;
            }

            *(v30 + 36) = 48;
            *(&v59 + *(v29 - 3)) = *(&v59 + *(v29 - 3)) & 0xFFFFFFB5 | 8;
            *(&v59 + *(v29 - 3)) = *(&v59 + *(v29 - 3)) & 0xFFFFFF4F | 0x80;
            *&v61[*(v29 - 3)] = 2;
            v28 = *v22++;
            std::ostream::operator<<();
          }

          LOBYTE(v48.tv_sec) = 59;
          sub_100034978(&v58, &v48, 1);
        }
      }
    }

    if (*(v2 + 783) == 1)
    {
      v32 = sub_10000DD44(v3);
      if (v32)
      {
        v33 = v32;
        *(&v58 + *(v58 - 3) + 8) = *(&v58 + *(v58 - 3) + 8) & 0xFFFFFFB5 | 8;
        sub_100034978(&v58, "threads:", 8);
        v34 = sub_10000E27C(v3, 0);
        *(&v58 + *(v58 - 3) + 8) = *(&v58 + *(v58 - 3) + 8) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        if (sub_10000E544(v3, v34, -1, 0, &v48) && v53 != -1 && (DWORD1(v50) == 8 || DWORD1(v50) == 4))
        {
          operator new();
        }

        if (v33 != 1)
        {
          for (i = 1; i != v33; ++i)
          {
            v36 = sub_10000E27C(v42, i);
            LOBYTE(v48.tv_sec) = 44;
            sub_100034978(&v58, &v48, 1);
            *(&v59 + *(v58 - 3)) = *(&v59 + *(v58 - 3)) & 0xFFFFFFB5 | 8;
            std::ostream::operator<<();
            if (sub_10000E544(v42, v36, -1, 0, &v48) && v53 != -1 && (DWORD1(v50) == 8 || DWORD1(v50) == 4))
            {
              operator new();
            }
          }
        }

        LOBYTE(v48.tv_sec) = 59;
        sub_100034978(&v58, &v48, 1);
        if (v33 != 1)
        {
          sub_10002E410(v2, &v46);
          v37 = v46;
          if (v46)
          {
            *(&v58 + *(v58 - 3) + 8) = *(&v58 + *(v58 - 3) + 8) & 0xFFFFFFB5 | 8;
            sub_100034978(&v58, "jstopinfo:", 10);
            v57 = 0;
            v48.tv_sec = v40;
            *(&v48.tv_sec + *(v40 - 24)) = v41;
            v38 = (&v48 + *(v48.tv_sec - 24));
            std::ios_base::init(v38, &v48.tv_usec);
            v38[1].__vftable = 0;
            v38[1].__fmtflags_ = -1;
            std::locale::locale(&v49);
            v52 = 0u;
            v51 = 0u;
            v50 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 16;
            sub_100034D34(&v48.tv_usec);
            (*(*v37 + 32))(v37, &v48);
            (*(*v37 + 24))(v37);
            std::stringbuf::str();
            sub_100013DDC(&v58, __p);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            LOBYTE(__p[0]) = 59;
            sub_100034978(&v58, __p, 1);
            if (SBYTE7(v54) < 0)
            {
              operator delete(v53);
            }

            std::locale::~locale(&v49);
            std::ostream::~ostream();
            std::ios::~ios();
          }

          v39 = v47;
          if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
          }
        }
      }
    }

    if (!qword_10007DAF0)
    {
      sub_10002B45C(v2, 0);
    }

    v46 = 0;
    sub_10000E540(&v46);
    operator new();
  }

  *(&v43.__r_.__value_.__s + 23) = 3;
  LODWORD(v43.__r_.__value_.__l.__data_) = 3224901;
  HIBYTE(v49.__locale_) = 0;
  LOBYTE(v48.tv_sec) = 0;
  result = sub_100029BE8(v2, &v43, &v48);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    v15 = v43.__r_.__value_.__r.__words[0];
LABEL_16:
    v16 = result;
    operator delete(v15);
    return v16;
  }

  return result;
}

std::string *sub_10002D678@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_16;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = off_100074568;
  v8 = strlen(off_100074568);
  v9 = v5;
  if (v8)
  {
    v10 = v8;
    v9 = v5;
    while (memchr(v7, v9->__r_.__value_.__s.__data_[0], v10))
    {
      v9 = (v9 + 1);
      if (!--size)
      {
        v11 = -1;
        goto LABEL_12;
      }
    }
  }

  v11 = v9 - v5;
  if (v9 != v5)
  {
LABEL_12:
    std::string::erase(__str, 0, v11);
    LOBYTE(v4) = *(&__str->__r_.__value_.__s + 23);
  }

  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    v12 = 0;
    v13 = v4;
    if (!v4)
    {
      goto LABEL_43;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = __str->__r_.__value_.__l.__size_;
  v12 = 1;
  if (!v13)
  {
LABEL_43:
    v17 = 0;
    goto LABEL_45;
  }

LABEL_17:
  if (v12)
  {
    v14 = __str->__r_.__value_.__r.__words[0];
  }

  else
  {
    v14 = __str;
  }

  v15 = v14->__r_.__value_.__s.__data_[0];
  if (v15 < 0)
  {
    if (!__maskrune(v15, 0x100uLL))
    {
      goto LABEL_24;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v15] & 0x100) == 0)
  {
LABEL_24:
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = __str;
    }

    else
    {
      v16 = __str->__r_.__value_.__r.__words[0];
    }

    if (v16->__r_.__value_.__s.__data_[0] != 95)
    {
      goto LABEL_43;
    }
  }

  v17 = 1;
  if (v13 == 1)
  {
    goto LABEL_45;
  }

  do
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = __str;
    }

    else
    {
      v19 = __str->__r_.__value_.__r.__words[0];
    }

    v20 = v19->__r_.__value_.__s.__data_[v17];
    if (v20 < 0)
    {
      if (__maskrune(v20, 0x500uLL))
      {
        goto LABEL_34;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v20] & 0x500) != 0)
    {
      goto LABEL_34;
    }

    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = __str;
    }

    else
    {
      v18 = __str->__r_.__value_.__r.__words[0];
    }

    if (v18->__r_.__value_.__s.__data_[v17] != 95)
    {
      goto LABEL_45;
    }

LABEL_34:
    ++v17;
  }

  while (v13 != v17);
  v17 = v13;
LABEL_45:
  std::string::assign(a2, __str, 0, v17);

  return std::string::erase(__str, 0, v17);
}

BOOL sub_10002D86C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_100008888();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_10002D8E8(char *__s1)
{
  if (__s1)
  {
    v1 = __s1;
    if (*__s1)
    {
      v2 = 0;
      do
      {
        if (strncmp(v1, "bitmask=", 8uLL))
        {
          v3 = strchr(v1, 59);
          if (v3)
          {
            v1 = v3 + 1;
          }

          else
          {
            v1 += strlen(v1);
          }

          continue;
        }

        v1 += 8;
        while (1)
        {
          v4 = *v1;
          if (v4 != 124)
          {
            break;
          }

          ++v1;
LABEL_16:
          if (!strncmp(v1, "LOG_VERBOSE", 0xBuLL))
          {
            v1 += 11;
            v2 |= 1u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_PROCESS", 0xBuLL))
          {
            v1 += 11;
            v2 |= 2u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_THREAD", 0xAuLL))
          {
            v1 += 10;
            v2 |= 4u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_EXCEPTIONS", 0xEuLL))
          {
            v1 += 14;
            v2 |= 8u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_SHLIB", 9uLL))
          {
            v1 += 9;
            v2 |= 0x10u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_MEMORY_DATA_SHORT", 0x15uLL))
          {
            v1 += 21;
            v2 |= 0x40u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_MEMORY_DATA_LONG", 0x14uLL))
          {
            v1 += 20;
            v2 |= 0x80u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_MEMORY_PROTECTIONS", 0x16uLL))
          {
            v1 += 22;
            v2 |= 0x100u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_MEMORY", 0xAuLL))
          {
            v1 += 10;
            v2 |= 0x20u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_BREAKPOINTS", 0xFuLL))
          {
            v1 += 15;
            v2 |= 0x200u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_EVENTS", 0xAuLL))
          {
            v1 += 10;
            v2 |= 0x400u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_WATCHPOINTS", 0xFuLL))
          {
            v1 += 15;
            v2 |= 0x800u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_STEP", 8uLL))
          {
            v1 += 8;
            v2 |= 0x1000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_TASK", 8uLL))
          {
            v1 += 8;
            v2 |= 0x2000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_ALL", 7uLL))
          {
            v1 += 7;
            v2 = -1;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_DEFAULT", 0xBuLL))
          {
            v1 += 11;
            v2 |= 0x3A3Eu;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_NONE", 8uLL))
          {
            v2 = 0;
            v1 += 8;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_MINIMAL", 0xFuLL))
          {
            v1 += 15;
            v2 |= 0x10000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_MEDIUM", 0xEuLL))
          {
            v1 += 14;
            v2 |= 0x20000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_MAX", 0xBuLL))
          {
            v1 += 11;
            v2 |= 0x40000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_COMM", 0xCuLL))
          {
            v1 += 12;
            v2 |= 0x80000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_REMOTE", 0xEuLL))
          {
            v1 += 14;
            v2 |= 0x100000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_EVENTS", 0xEuLL))
          {
            v1 += 14;
            v2 |= 0x200000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_PROC", 0xCuLL))
          {
            v1 += 12;
            v2 |= 0x400000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_PACKETS", 0xFuLL))
          {
            v1 += 15;
            v2 |= 0x800000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_ALL", 0xBuLL))
          {
            v1 += 11;
            v2 |= 0xFFFF0000;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_DEFAULT", 0xFuLL))
          {
            v1 += 15;
            v2 |= 0xFFFF0000;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_DARWIN_LOG", 0xEuLL))
          {
            v1 += 14;
            v2 |= 0x4000u;
            if (!v1)
            {
              return 0;
            }
          }

          else if (!strncmp(v1, "LOG_RNB_NONE", 0xCuLL))
          {
            v2 = 0;
            v1 += 12;
            if (!v1)
            {
              return 0;
            }
          }

          else
          {
            v5 = strchr(v1, 124);
            if (v5)
            {
              v1 = v5;
            }

            else
            {
              v6 = strchr(v1, 59);
              if (v6)
              {
                v1 = v6;
              }

              else
              {
                v1 += strlen(v1);
                if (!v1)
                {
                  return 0;
                }
              }
            }
          }
        }

        if (!*v1)
        {
          continue;
        }

        if (v4 != 59)
        {
          goto LABEL_16;
        }

        if (!sub_100010504())
        {
          v7 = sub_100044794();
          if (v7)
          {
            sub_1000104F0(v7, 0);
          }
        }

        sub_1000104DC(v2);
        ++v1;
      }

      while (*v1);
    }
  }

  return 0;
}

uint64_t sub_10002DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }

  return 0;
}

void *sub_10002DFF8(void *result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (a4)
  {
    v6 = *result;
    v7 = result + *(*result - 24);
    if (*(v7 + 36) == -1)
    {
      v8 = result;
      v9 = a4;
      std::ios_base::getloc((result + *(*result - 24)));
      v10 = std::locale::use_facet(&v17, &std::ctype<char>::id);
      (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v17);
      a4 = v9;
      result = v8;
      v6 = *v8;
    }

    *(v7 + 36) = 48;
    *(result + *(v6 - 24) + 8) = *(result + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(result + *(v6 - 24) + 8) = *(result + *(v6 - 24) + 8) & 0xFFFFFF4F | 0x80;
    *(result + *(v6 - 24) + 24) = 2;
    v11 = *a4;
    v12 = result;
    v13 = a4;
    v14 = std::ostream::operator<<();
    v15 = 58;
    sub_100034978(v14, &v15, 1);
    sub_10002DECC(v12, a2, a3, v13);
    v16 = 59;
    return sub_100034978(v12, &v16, 1);
  }

  return result;
}