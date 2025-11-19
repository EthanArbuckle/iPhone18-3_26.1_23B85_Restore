void sub_10060E328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1017EC98C(&a24);
  _Unwind_Resume(a1);
}

void sub_10060E3B0(uint64_t a1, const char *a2, const char **a3)
{
  v107 = *(a1 + 16);
  (*(*v107 + 16))(v107);
  v109 = 256;
  if (!a3)
  {
LABEL_215:
    if (v109)
    {
      pthread_mutex_unlock(v108);
    }

    else
    {
      (*(*v107 + 24))(v107);
    }

    return;
  }

  memset(&v106, 0, sizeof(v106));
  sub_10003848C(v94);
  v6 = strlen(a2);
  v7 = sub_100038730(&v95, a2, v6);
  sub_100038730(v7, "Index", 5);
  sub_10060F3C0(a3, &v83);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v106 = v83;
  sub_10003848C(&v83);
  v8 = sub_100038730(&v83.__r_.__value_.__r.__words[2], "CREATE INDEX ", 13);
  if ((v105 & 0x10) != 0)
  {
    v10 = v104;
    if (v104 < v101)
    {
      v104 = v101;
      v10 = v101;
    }

    v11 = __src;
  }

  else
  {
    if ((v105 & 8) == 0)
    {
      v9 = 0;
      BYTE3(v113) = 0;
      goto LABEL_17;
    }

    v11 = v98;
    v10 = v99;
  }

  v9 = v10 - v11;
  if (v10 - v11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  BYTE3(v113) = v10 - v11;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

LABEL_17:
  v111[v9 - 8] = 0;
  if (SBYTE3(v113) >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (SBYTE3(v113) >= 0)
  {
    v13 = BYTE3(v113);
  }

  else
  {
    v13 = *v111;
  }

  sub_100038730(v8, p_dst, v13);
  if (SBYTE3(v113) < 0)
  {
    operator delete(__dst);
  }

  v14 = sub_100038730(&v83.__r_.__value_.__r.__words[2], " ON ", 4);
  v15 = strlen(a2);
  v16 = sub_100038730(v14, a2, v15);
  v17 = sub_100038730(v16, " (", 2);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v106;
  }

  else
  {
    v18 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v20 = sub_100038730(v17, v18, size);
  sub_100038730(v20, ")", 1);
  if ((v105 & 0x10) != 0)
  {
    v22 = v104;
    if (v104 < v101)
    {
      v104 = v101;
      v22 = v101;
    }

    v23 = __src;
  }

  else
  {
    if ((v105 & 8) == 0)
    {
      v21 = 0;
      BYTE3(v113) = 0;
      goto LABEL_44;
    }

    v23 = v98;
    v22 = v99;
  }

  v21 = v22 - v23;
  if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  BYTE3(v113) = v22 - v23;
  if (v21)
  {
    memmove(&__dst, v23, v21);
  }

LABEL_44:
  v111[v21 - 8] = 0;
  if (SBYTE3(v113) >= 0)
  {
    v24 = &__dst;
  }

  else
  {
    v24 = __dst;
  }

  sub_10060AAF0(a1, "index", v24, &v80);
  if (SBYTE3(v113) < 0)
  {
    operator delete(__dst);
  }

  v25 = v82;
  if ((v82 & 0x80u) != 0)
  {
    v25 = v81;
  }

  if (!v25)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v27 = off_1025D4858;
    if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_180;
    }

    if ((v105 & 0x10) != 0)
    {
      v43 = v104;
      if (v104 < v101)
      {
        v104 = v101;
        v43 = v101;
      }

      v44 = __src;
    }

    else
    {
      if ((v105 & 8) == 0)
      {
        v28 = 0;
        v79 = 0;
        goto LABEL_113;
      }

      v44 = v98;
      v43 = v99;
    }

    v28 = v43 - v44;
    if (v43 - v44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v79 = v43 - v44;
    if (v28)
    {
      memmove(&__p, v44, v28);
    }

LABEL_113:
    *(&__p + v28) = 0;
    p_p = &__p;
    if (v79 < 0)
    {
      p_p = __p;
    }

    __dst = 68289283;
    *v111 = 2082;
    *&v111[2] = "";
    v112 = 2081;
    v113 = p_p;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Index does not exist; creating, index:%{private, location:escape_only}s}", &__dst, 0x1Cu);
    if (v79 < 0)
    {
      v50 = __p;
LABEL_179:
      operator delete(v50);
    }

LABEL_180:
    if ((v93 & 0x10) != 0)
    {
      v64 = v92;
      if (v92 < v89)
      {
        v92 = v89;
        v64 = v89;
      }

      v65 = v88;
    }

    else
    {
      if ((v93 & 8) == 0)
      {
        v63 = 0;
        BYTE3(v113) = 0;
        goto LABEL_193;
      }

      v65 = v86;
      v64 = v87;
    }

    v63 = v64 - v65;
    if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v63 >= 0x17)
    {
      operator new();
    }

    BYTE3(v113) = v64 - v65;
    if (v63)
    {
      memmove(&__dst, v65, v63);
    }

LABEL_193:
    v111[v63 - 8] = 0;
    if (SBYTE3(v113) >= 0)
    {
      v66 = &__dst;
    }

    else
    {
      v66 = __dst;
    }

    v67 = sub_100038DE8(a1, v66);
    v68 = v67;
    if (SBYTE3(v113) < 0)
    {
      operator delete(__dst);
      if (v68)
      {
        goto LABEL_198;
      }
    }

    else if (v67)
    {
LABEL_198:
      sub_1001A3DEC(a1, v68);
      sub_1001B1DA0(*(a1 + 8), v68);
      goto LABEL_206;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v69 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v70 = &v106;
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v106.__r_.__value_.__r.__words[0];
      }

      __dst = 68289539;
      *v111 = 2082;
      *&v111[2] = "";
      v112 = 2081;
      v113 = a2;
      v114 = 2082;
      v115 = v70;
      _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, #warning Couldn't create index statement, table:%{private, location:escape_only}s, columns:%{public, location:escape_only}s}", &__dst, 0x26u);
    }

    goto LABEL_206;
  }

  if ((v93 & 0x10) != 0)
  {
    v29 = v92;
    if (v92 < v89)
    {
      v92 = v89;
      v29 = v89;
    }

    v30 = v88;
  }

  else
  {
    if ((v93 & 8) == 0)
    {
      v26 = 0;
      BYTE3(v113) = 0;
      goto LABEL_71;
    }

    v30 = v86;
    v29 = v87;
  }

  v26 = v29 - v30;
  if (v29 - v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  BYTE3(v113) = v29 - v30;
  if (v26)
  {
    memmove(&__dst, v30, v26);
  }

LABEL_71:
  v111[v26 - 8] = 0;
  v31 = SBYTE3(v113);
  v33 = __dst;
  v32 = *v111;
  v34 = v82;
  if ((v82 & 0x80u) == 0)
  {
    v35 = &v80;
  }

  else
  {
    v34 = v81;
    v35 = v80;
  }

  if (SBYTE3(v113) < 0)
  {
    v36 = __dst;
  }

  else
  {
    v32 = SBYTE3(v113);
    v36 = &__dst;
  }

  if (v32 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v32;
  }

  v38 = v32 == v34;
  if (memcmp(v35, v36, v37))
  {
    v38 = 0;
  }

  if (v31 < 0)
  {
    operator delete(v33);
  }

  if (!v38)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v41 = off_1025D4858;
    if (!os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
LABEL_161:
      if ((v105 & 0x10) != 0)
      {
        v60 = v104;
        if (v104 < v101)
        {
          v104 = v101;
          v60 = v101;
        }

        v61 = __src;
      }

      else
      {
        if ((v105 & 8) == 0)
        {
          v59 = 0;
          BYTE3(v113) = 0;
          goto LABEL_174;
        }

        v61 = v98;
        v60 = v99;
      }

      v59 = v60 - v61;
      if (v60 - v61 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v59 >= 0x17)
      {
        operator new();
      }

      BYTE3(v113) = v60 - v61;
      if (v59)
      {
        memmove(&__dst, v61, v59);
      }

LABEL_174:
      v111[v59 - 8] = 0;
      if (SBYTE3(v113) >= 0)
      {
        v62 = &__dst;
      }

      else
      {
        v62 = __dst;
      }

      sub_10060F478(a1, v62);
      if (SBYTE3(v113) < 0)
      {
        v50 = __dst;
        goto LABEL_179;
      }

      goto LABEL_180;
    }

    if ((v105 & 0x10) != 0)
    {
      v47 = v104;
      if (v104 < v101)
      {
        v104 = v101;
        v47 = v101;
      }

      v48 = __src;
    }

    else
    {
      if ((v105 & 8) == 0)
      {
        v42 = 0;
        v79 = 0;
        goto LABEL_135;
      }

      v48 = v98;
      v47 = v99;
    }

    v42 = v47 - v48;
    if (v47 - v48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v79 = v47 - v48;
    if (v42)
    {
      memmove(&__p, v48, v42);
    }

LABEL_135:
    *(&__p + v42) = 0;
    if (v79 >= 0)
    {
      v52 = &__p;
    }

    else
    {
      v52 = __p;
    }

    if ((v82 & 0x80u) == 0)
    {
      v53 = &v80;
    }

    else
    {
      v53 = v80;
    }

    if ((v93 & 0x10) != 0)
    {
      v55 = v92;
      if (v92 < v89)
      {
        v92 = v89;
        v55 = v89;
      }

      v56 = v88;
    }

    else
    {
      if ((v93 & 8) == 0)
      {
        v54 = 0;
        v77 = 0;
LABEL_155:
        *(&v76 + v54) = 0;
        v58 = &v76;
        if (v77 < 0)
        {
          v58 = v76;
        }

        __dst = 68289795;
        *v111 = 2082;
        *&v111[2] = "";
        v112 = 2081;
        v113 = v52;
        v114 = 2081;
        v115 = v53;
        v116 = 2081;
        v117 = v58;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Index already exists but is different; dropping, index:%{private, location:escape_only}s, actual:%{private, location:escape_only}s, expected:%{private, location:escape_only}s}", &__dst, 0x30u);
        if (v77 < 0)
        {
          operator delete(v76);
        }

        if (v79 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_161;
      }

      v56 = v86;
      v55 = v87;
    }

    v75 = v41;
    v54 = v55 - v56;
    if (v55 - v56 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    v57 = v53;
    if (v54 >= 0x17)
    {
      operator new();
    }

    v77 = v55 - v56;
    if (v54)
    {
      memmove(&v76, v56, v54);
    }

    v53 = v57;
    v41 = v75;
    goto LABEL_155;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v39 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    if ((v105 & 0x10) != 0)
    {
      v45 = v104;
      if (v104 < v101)
      {
        v104 = v101;
        v45 = v101;
      }

      v46 = __src;
    }

    else
    {
      if ((v105 & 8) == 0)
      {
        v40 = 0;
        v79 = 0;
LABEL_124:
        *(&__p + v40) = 0;
        v51 = &__p;
        if (v79 < 0)
        {
          v51 = __p;
        }

        __dst = 68289283;
        *v111 = 2082;
        *&v111[2] = "";
        v112 = 2081;
        v113 = v51;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Index already exists; not re-creating, index:%{private, location:escape_only}s}", &__dst, 0x1Cu);
        if (v79 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_206;
      }

      v46 = v98;
      v45 = v99;
    }

    v40 = v45 - v46;
    if (v45 - v46 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v40 >= 0x17)
    {
      operator new();
    }

    v79 = v45 - v46;
    if (v40)
    {
      memmove(&__p, v46, v40);
    }

    goto LABEL_124;
  }

LABEL_206:
  if (v82 < 0)
  {
    operator delete(v80);
  }

  v74 = v72;
  v83.__r_.__value_.__r.__words[2] = v72;
  if (v91 < 0)
  {
    operator delete(v90);
  }

  std::locale::~locale(&v85);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v94[0] = v71;
  *(v94 + *(v71 - 3)) = v73;
  v95 = v74;
  if (v103 < 0)
  {
    operator delete(v102);
  }

  std::locale::~locale(&v97);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if ((v109 & 0x100) != 0)
  {
    goto LABEL_215;
  }
}

std::string *sub_10060F3C0@<X0>(const char **a1@<X0>, std::string *a2@<X8>)
{
  result = sub_10000EC00(a2, "");
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = 0;
      v7 = a1 + 1;
      do
      {
        if (v6)
        {
          std::string::append(a2, ", ", 2uLL);
          v5 = *(v7 - 1);
        }

        v8 = strlen(v5);
        result = std::string::append(a2, v5, v8);
        v9 = *v7++;
        v5 = v9;
        --v6;
      }

      while (v9);
    }
  }

  return result;
}

void sub_10060F45C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060F478(uint64_t a1, const char *a2)
{
  v24 = *(a1 + 16);
  (*(*v24 + 16))(v24);
  v26 = 256;
  sub_10003848C(v15);
  v4 = sub_100038730(&v16, "DROP INDEX ", 11);
  v5 = strlen(a2);
  sub_100038730(v4, a2, v5);
  if ((v23 & 0x10) != 0)
  {
    v7 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v7 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v6 = 0;
      BYTE3(v29) = 0;
      goto LABEL_14;
    }

    locale = v18[1].__locale_;
    v7 = v18[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  BYTE3(v29) = v7 - locale;
  if (v6)
  {
    memmove(&__dst, locale, v6);
  }

LABEL_14:
  *(&v28[-4] + v6) = 0;
  if (SBYTE3(v29) >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = sub_100038DE8(a1, p_dst);
  v11 = v10;
  if (SBYTE3(v29) < 0)
  {
    operator delete(__dst);
    if (v11)
    {
      goto LABEL_19;
    }
  }

  else if (v10)
  {
LABEL_19:
    sub_1001A3DEC(a1, v11);
    sub_1001B1DA0(*(a1 + 8), v11);
    goto LABEL_25;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v12 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    __dst = 68289283;
    v28[0] = 2082;
    *&v28[1] = "";
    v28[5] = 2081;
    v29 = a2;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Couldn't create drop index statement, index:%{private, location:escape_only}s}", &__dst, 0x1Cu);
  }

LABEL_25:
  v16 = v13;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v26) == 1)
  {
    if (v26)
    {
      return pthread_mutex_unlock(v25);
    }

    else
    {
      return (*(*v24 + 24))(v24);
    }
  }

  return result;
}

uint64_t sub_10060F8C8(uint64_t a1, char *a2)
{
  v29 = *(a1 + 16);
  (*(*v29 + 16))(v29);
  v31 = 256;
  sub_10003848C(v20);
  v4 = sub_100038730(&v21, "DROP TRIGGER ", 13);
  v5 = strlen(a2);
  sub_100038730(v4, a2, v5);
  sub_10060AAF0(a1, "trigger", a2, &__dst);
  if (SBYTE3(v35) < 0)
  {
    v7 = *v33;
    operator delete(__dst);
    if (v7)
    {
LABEL_3:
      if ((v28 & 0x10) != 0)
      {
        v12 = v27;
        if (v27 < v24)
        {
          v27 = v24;
          v12 = v24;
        }

        locale = v23[4].__locale_;
      }

      else
      {
        if ((v28 & 8) == 0)
        {
          v6 = 0;
          BYTE3(v35) = 0;
          goto LABEL_21;
        }

        locale = v23[1].__locale_;
        v12 = v23[3].__locale_;
      }

      v6 = v12 - locale;
      if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      BYTE3(v35) = v12 - locale;
      if (v6)
      {
        memmove(&__dst, locale, v6);
      }

LABEL_21:
      v33[v6 - 8] = 0;
      if (SBYTE3(v35) >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v15 = sub_100038DE8(a1, p_dst);
      v16 = v15;
      if (SBYTE3(v35) < 0)
      {
        operator delete(__dst);
        if (v16)
        {
          goto LABEL_26;
        }
      }

      else if (v15)
      {
LABEL_26:
        sub_1001A3DEC(a1, v16);
        sub_1001B1DA0(*(a1 + 8), v16);
        goto LABEL_33;
      }

      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v17 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        __dst = 68289282;
        *v33 = 2082;
        *&v33[2] = "";
        v34 = 2082;
        v35 = a2;
        v9 = "{msg%{public}.0s:#warning Couldn't create drop trigger statement, trigger:%{public, location:escape_only}s}";
        v10 = v17;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  else if (BYTE3(v35))
  {
    goto LABEL_3;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v8 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    __dst = 68289282;
    *v33 = 2082;
    *&v33[2] = "";
    v34 = 2082;
    v35 = a2;
    v9 = "{msg%{public}.0s:Trigger does not exist, trigger:%{public, location:escape_only}s}";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
LABEL_32:
    _os_log_impl(dword_100000000, v10, v11, v9, &__dst, 0x1Cu);
  }

LABEL_33:
  v21 = v18;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v31) == 1)
  {
    if (v31)
    {
      return pthread_mutex_unlock(v30);
    }

    else
    {
      return (*(*v29 + 24))(v29);
    }
  }

  return result;
}

uint64_t sub_10060FDC8(uint64_t a1, char *a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v5 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@SqliteDB, Dropping table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100615558(a1, a2);
  sub_10000EC00(buf, "DROP TABLE IF EXISTS ");
  v6 = strlen(a2);
  std::string::append(buf, a2, v6);
  if (SBYTE3(v15) >= 0)
  {
    v7 = buf;
  }

  else
  {
    v7 = *buf;
  }

  v8 = sub_100038DE8(a1, v7);
  sub_1001A3DEC(a1, v8);
  sub_1001B1DA0(*(a1 + 8), v8);
  if (*(a1 + 88) <= 0)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = *(a1 + 88);
  }

  sub_1001B16EC(a1, v9);
  if (SBYTE3(v15) < 0)
  {
    operator delete(*buf);
  }

  return (*(*v4 + 24))(v4);
}

uint64_t sub_10060FFEC(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v46 = *(a1 + 16);
  (*(*v46 + 16))(v46);
  v48 = 256;
  sub_10003848C(v37);
  if (a4)
  {
    v7 = "Increment";
  }

  else
  {
    v7 = "Decrement";
  }

  if (a4)
  {
    v8 = "INSERT";
  }

  else
  {
    v8 = "DELETE";
  }

  if (a4)
  {
    v9 = "+";
  }

  else
  {
    v9 = "-";
  }

  sub_100038730(&v38, "CREATE TRIGGER IF NOT EXISTS ", 29);
  v10 = strlen(a2);
  v11 = sub_100038730(&v38, a2, v10);
  v12 = sub_100038730(v11, v7, 9);
  sub_100038730(v12, "RowCount", 8);
  v13 = sub_100038730(&v38, " AFTER ", 7);
  v14 = sub_100038730(v13, v8, 6);
  v15 = sub_100038730(v14, " ON ", 4);
  v16 = strlen(a2);
  v17 = sub_100038730(v15, a2, v16);
  sub_100038730(v17, " FOR EACH ROW BEGIN", 19);
  v18 = sub_100038730(&v38, " UPDATE ", 8);
  v19 = strlen(a2);
  v20 = sub_100038730(v18, a2, v19);
  v21 = sub_100038730(v20, "Counts", 6);
  v22 = sub_100038730(v21, " SET ", 5);
  v23 = sub_100038730(v22, "Count", 5);
  v24 = sub_100038730(v23, "=", 1);
  v25 = sub_100038730(v24, "Count", 5);
  v26 = sub_100038730(v25, v9, 1);
  sub_100038730(v26, "1 WHERE rowid=1; END", 20);
  if ((v45 & 0x10) != 0)
  {
    v28 = v44;
    if (v44 < v41)
    {
      v44 = v41;
      v28 = v41;
    }

    locale = v40[4].__locale_;
  }

  else
  {
    if ((v45 & 8) == 0)
    {
      v27 = 0;
      BYTE3(v52) = 0;
      goto LABEL_23;
    }

    locale = v40[1].__locale_;
    v28 = v40[3].__locale_;
  }

  v27 = v28 - locale;
  if ((v28 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  BYTE3(v52) = v28 - locale;
  if (v27)
  {
    memmove(&__dst, locale, v27);
  }

LABEL_23:
  *(&v50[-4] + v27) = 0;
  if (SBYTE3(v52) >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = sub_100038DE8(a1, p_dst);
  v32 = v31;
  if (SBYTE3(v52) < 0)
  {
    operator delete(__dst);
    if (v32)
    {
      goto LABEL_28;
    }
  }

  else if (v31)
  {
LABEL_28:
    sub_1001A3DEC(a1, v32);
    sub_1001B1DA0(*(a1 + 8), v32);
    goto LABEL_37;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v33 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    __dst = 68289283;
    v50[0] = 2082;
    *&v50[1] = "";
    v51 = 2081;
    v52 = a2;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't create add count trigger statement, table:%{private, location:escape_only}s}", &__dst, 0x1Cu);
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }
  }

  v34 = off_1025D4858;
  if (os_signpost_enabled(off_1025D4858))
  {
    __dst = 68289283;
    v50[0] = 2082;
    *&v50[1] = "";
    v51 = 2081;
    v52 = a2;
    _os_signpost_emit_with_name_impl(dword_100000000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't create add count trigger statement", "{msg%{public}.0s:Couldn't create add count trigger statement, table:%{private, location:escape_only}s}", &__dst, 0x1Cu);
  }

LABEL_37:
  v38 = v35;
  if (v43 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v48) == 1)
  {
    if (v48)
    {
      return pthread_mutex_unlock(v47);
    }

    else
    {
      return (*(*v46 + 24))(v46);
    }
  }

  return result;
}

uint64_t sub_10061061C(uint64_t a1, const char *a2, const char **a3)
{
  v34 = *(a1 + 16);
  (*(*v34 + 16))(v34);
  v36 = 256;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v42 = 2082;
    *v43 = "";
    *&v43[8] = 2081;
    *&v43[10] = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Creating table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!a3 || !*a3)
  {
    goto LABEL_74;
  }

  v7 = 0;
  v8 = (a3 + 6);
  do
  {
    v7 += *(v8 - 36);
    v9 = *v8;
    v8 += 6;
  }

  while (v9);
  sub_10003848C(buf);
  v10 = sub_100038730(&v43[6], "CREATE TABLE ", 13);
  v11 = strlen(a2);
  v12 = sub_100038730(v10, a2, v11);
  sub_100038730(v12, " (", 2);
  sub_10026A564(a3, 1, v7 < 2, &__p);
  if (SBYTE3(v40) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SBYTE3(v40) >= 0)
  {
    v14 = BYTE3(v40);
  }

  else
  {
    v14 = *v38;
  }

  sub_100038730(&v43[6], p_p, v14);
  if (SBYTE3(v40) < 0)
  {
    operator delete(__p);
  }

  if (v7 >= 2)
  {
    v15 = &__p;
    sub_100612B58(a3, &__p);
    if (SBYTE3(v40) < 0)
    {
      v15 = __p;
    }

    v16 = strlen(v15);
    sub_100038730(&v43[6], v15, v16);
    if (SBYTE3(v40) < 0)
    {
      operator delete(__p);
    }
  }

  sub_1006136A0(a1, a3, &__p);
  if (SBYTE3(v40) >= 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if (SBYTE3(v40) >= 0)
  {
    v18 = BYTE3(v40);
  }

  else
  {
    v18 = *v38;
  }

  sub_100038730(&v43[6], v17, v18);
  if (SBYTE3(v40) < 0)
  {
    operator delete(__p);
  }

  sub_100038730(&v43[6], ")", 1);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v19 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    if ((v52 & 0x10) != 0)
    {
      v21 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v21 = v48;
      }

      v22 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v20 = 0;
        v33 = 0;
LABEL_46:
        *(&v32 + v20) = 0;
        v23 = &v32;
        if (v33 < 0)
        {
          v23 = v32;
        }

        __p = 68289282;
        *v38 = 2082;
        *&v38[2] = "";
        v39 = 2082;
        v40 = v23;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Schema statement created, schema:%{public, location:escape_only}s}", &__p, 0x1Cu);
        if (v33 < 0)
        {
          operator delete(v32);
        }

        goto LABEL_50;
      }

      v22 = v45;
      v21 = v46;
    }

    v20 = v21 - v22;
    if (v21 - v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v33 = v21 - v22;
    if (v20)
    {
      memmove(&v32, v22, v20);
    }

    goto LABEL_46;
  }

LABEL_50:
  if ((v52 & 0x10) != 0)
  {
    v25 = v51;
    if (v51 < v48)
    {
      v51 = v48;
      v25 = v48;
    }

    v26 = __src;
  }

  else
  {
    if ((v52 & 8) == 0)
    {
      v24 = 0;
      BYTE3(v40) = 0;
      goto LABEL_63;
    }

    v26 = v45;
    v25 = v46;
  }

  v24 = v25 - v26;
  if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  BYTE3(v40) = v25 - v26;
  if (v24)
  {
    memmove(&__p, v26, v24);
  }

LABEL_63:
  v38[v24 - 8] = 0;
  if (SBYTE3(v40) >= 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  v28 = sub_100038DE8(a1, v27);
  v29 = v28;
  if (SBYTE3(v40) < 0)
  {
    operator delete(__p);
    if (!v29)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v28)
  {
LABEL_70:
    sqlite3_step(v29);
    sub_1001B1DA0(*(a1 + 8), v29);
  }

LABEL_71:
  *&v43[6] = v30;
  if (v50 < 0)
  {
    operator delete(v49);
  }

  std::locale::~locale(&v44);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if ((v36 & 0x100) != 0)
  {
LABEL_74:
    if (v36)
    {
      return pthread_mutex_unlock(v35);
    }

    else
    {
      return (*(*v34 + 24))(v34);
    }
  }

  return result;
}

BOOL sub_100610D0C(uint64_t a1, const char *a2)
{
  v28 = *(a1 + 16);
  (*(*v28 + 16))(v28);
  v30 = 256;
  sub_10003848C(v19);
  v4 = sub_100038730(&v20, "SELECT name FROM ", 17);
  v5 = sub_100038730(v4, "sqlite_master", 13);
  v6 = sub_100038730(v5, " WHERE name='", 13);
  v7 = strlen(a2);
  v8 = sub_100038730(v6, a2, v7);
  sub_100038730(v8, "';", 2);
  if ((v27 & 0x10) != 0)
  {
    v10 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v10 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v9 = 0;
      v18 = 0;
      goto LABEL_14;
    }

    locale = v22[1].__locale_;
    v10 = v22[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v18 = v10 - locale;
  if (v9)
  {
    memmove(&__dst, locale, v9);
  }

LABEL_14:
  *(&__dst + v9) = 0;
  if (v18 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v13 = sub_100038DE8(a1, p_dst);
  if (v18 < 0)
  {
    operator delete(__dst);
  }

  v14 = sqlite3_step(v13);
  sub_1001B1DA0(*(a1 + 8), v13);
  v20 = v15;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (HIBYTE(v30) == 1)
  {
    if (v30)
    {
      pthread_mutex_unlock(v29);
    }

    else
    {
      (*(*v28 + 24))(v28);
    }
  }

  return v14 == 100;
}

void sub_10061107C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  sub_1017EC98C(v16 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_1006110C0(uint64_t a1, const char *a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  (*(*v6 + 16))(v6);
  if (sub_100610D0C(a1, a2))
  {
    sub_100611268(a1, a2, *a3, a3);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = a2;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Table doesn't exist in database, table:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  (*(*v6 + 24))(v6);
  return 0;
}

void sub_100611268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a4 = "";
  *(a4 + 8) = 5;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = a2;
    v22 = 2082;
    v23 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getColumnInfo, table:%{private, location:escape_only}s, name:%{public, location:escape_only}s}", buf, 0x26u);
  }

  sub_10003848C(buf);
  v7 = sub_100038730((&v19 + 6), "PRAGMA table_info(", 18);
  v8 = strlen(a2);
  v9 = sub_100038730(v7, a2, v8);
  LOBYTE(__dst) = 41;
  sub_100038730(v9, &__dst, 1);
  if ((v29 & 0x10) != 0)
  {
    v11 = v28;
    if (v28 < v27)
    {
      v28 = v27;
      v11 = v27;
    }

    v12 = __src;
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v10 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v12 = v24;
    v11 = v25;
  }

  v10 = v11 - v12;
  if (v11 - v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v11 - v12;
  if (v10)
  {
    memmove(&__dst, v12, v10);
  }

LABEL_18:
  *(&__dst + v10) = 0;
  if (v16 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1, p_dst);
}

void sub_100611834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

const char *sub_1006118B0(int a1)
{
  if (a1 == 1)
  {
    return "INTEGER";
  }

  v2 = &off_102463F00;
  v3 = 5;
  do
  {
    v4 = v2;
    if (!--v3)
    {
      break;
    }

    v2 += 2;
  }

  while (*(v4 - 2) != a1);
  return *v4;
}

uint64_t sub_100611908(uint64_t a1, const char *a2, uint64_t a3)
{
  v127 = *(a1 + 16);
  (*(*v127 + 16))(v127);
  v129 = 256;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v5 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v132 = 2082;
    *v133 = "";
    *&v133[8] = 2081;
    *&v133[10] = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Re-recreating table to fix primary key, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!a3 || !*a3)
  {
    v10 = 0;
LABEL_222:
    if (v129)
    {
      pthread_mutex_unlock(v128);
    }

    else
    {
      (*(*v127 + 24))(v127);
    }

    return v10;
  }

  sub_10003848C(buf);
  v6 = strlen(a2);
  v7 = sub_100038730(&v133[6], a2, v6);
  sub_100038730(v7, "_tmp", 4);
  __s = a2;
  sub_10003848C(v115);
  v8 = sub_100038730(&v116, "CREATE TEMPORARY TABLE ", 23);
  if ((v142 & 0x10) != 0)
  {
    v11 = v141;
    if (v141 < v138)
    {
      v141 = v138;
      v11 = v138;
    }

    v12 = __src;
  }

  else
  {
    if ((v142 & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_21;
    }

    v12 = v135;
    v11 = v136;
  }

  v9 = v11 - v12;
  if (v11 - v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v11 - v12;
  if (v9)
  {
    memmove(&__dst, v12, v9);
  }

LABEL_21:
  *(&__dst + v9) = 0;
  if (v114 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v114 >= 0)
  {
    v14 = HIBYTE(v114);
  }

  else
  {
    v14 = *(&__dst + 1);
  }

  v15 = sub_100038730(v8, p_dst, v14);
  v16 = sub_100038730(v15, " (", 2);
  v17 = strlen(*a3);
  v18 = sub_100038730(v16, *a3, v17);
  v130 = 32;
  v19 = sub_100038730(v18, &v130, 1);
  v20 = *(a3 + 8);
  if (v20 == 1)
  {
    v21 = "INTEGER";
  }

  else
  {
    v22 = &off_102463F00;
    v23 = 5;
    do
    {
      v24 = v22;
      if (!--v23)
      {
        break;
      }

      v22 += 2;
    }

    while (*(v24 - 2) != v20);
    v21 = *v24;
  }

  v25 = strlen(v21);
  sub_100038730(v19, v21, v25);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  v26 = a3 + 48;
  if (*(a3 + 48))
  {
    v27 = 1;
    v28 = a3 + 48;
    do
    {
      v29 = sub_100038730(&v116, ", ", 2);
      v30 = strlen(*v28);
      v31 = sub_100038730(v29, *v28, v30);
      LOBYTE(__dst) = 32;
      v32 = sub_100038730(v31, &__dst, 1);
      v33 = *(v28 + 8);
      v34 = "INTEGER";
      if (v33 != 1)
      {
        v35 = &off_102463F00;
        v36 = 5;
        do
        {
          v37 = v35;
          if (!--v36)
          {
            break;
          }

          v35 += 2;
        }

        while (*(v37 - 2) != v33);
        v34 = *v37;
      }

      v38 = strlen(v34);
      sub_100038730(v32, v34, v38);
      ++v27;
      v28 = a3 + 48 * v27;
    }

    while (*v28);
  }

  v39 = a3;
  sub_100612B58(a3, &__dst);
  if (v114 >= 0)
  {
    v40 = &__dst;
  }

  else
  {
    v40 = __dst;
  }

  if (v114 >= 0)
  {
    v41 = HIBYTE(v114);
  }

  else
  {
    v41 = *(&__dst + 1);
  }

  v42 = sub_100038730(&v116, v40, v41);
  v130 = 41;
  sub_100038730(v42, &v130, 1);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  if ((v126 & 0x10) != 0)
  {
    v44 = v125;
    if (v125 < v122)
    {
      v125 = v122;
      v44 = v122;
    }

    v45 = v121;
  }

  else
  {
    if ((v126 & 8) == 0)
    {
      v43 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_64;
    }

    v45 = v119;
    v44 = v120;
  }

  v43 = v44 - v45;
  if (v44 - v45 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v43 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v44 - v45;
  if (v43)
  {
    memmove(&__dst, v45, v43);
  }

LABEL_64:
  *(&__dst + v43) = 0;
  if (v114 >= 0)
  {
    v46 = &__dst;
  }

  else
  {
    v46 = __dst;
  }

  v47 = sub_100038DE8(a1, v46);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  sub_1001A3DEC(a1, v47);
  sub_1001B1DA0(*(a1 + 8), v47);
  __dst = 0uLL;
  v114 = 0;
  sub_100619F14(&v117, &__dst);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  v48 = sub_100038730(&v116, "INSERT INTO ", 12);
  if ((v142 & 0x10) != 0)
  {
    v50 = v141;
    if (v141 < v138)
    {
      v141 = v138;
      v50 = v138;
    }

    v51 = __src;
  }

  else
  {
    if ((v142 & 8) == 0)
    {
      v49 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_84;
    }

    v51 = v135;
    v50 = v136;
  }

  v49 = v50 - v51;
  if (v50 - v51 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v49 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v50 - v51;
  if (v49)
  {
    memmove(&__dst, v51, v49);
  }

LABEL_84:
  *(&__dst + v49) = 0;
  if (v114 >= 0)
  {
    v52 = &__dst;
  }

  else
  {
    v52 = __dst;
  }

  if (v114 >= 0)
  {
    v53 = HIBYTE(v114);
  }

  else
  {
    v53 = *(&__dst + 1);
  }

  v54 = sub_100038730(v48, v52, v53);
  v55 = sub_100038730(v54, " SELECT ", 8);
  v56 = strlen(*a3);
  sub_100038730(v55, *a3, v56);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  if (*v26)
  {
    v57 = a3 + 48;
    do
    {
      v58 = sub_100038730(&v116, ", ", 2);
      v59 = strlen(*v57);
      sub_100038730(v58, *v57, v59);
      v60 = *(v57 + 48);
      v57 += 48;
    }

    while (v60);
  }

  v61 = sub_100038730(&v116, " FROM ", 6);
  v62 = strlen(__s);
  sub_100038730(v61, __s, v62);
  if ((v126 & 0x10) != 0)
  {
    v64 = v125;
    if (v125 < v122)
    {
      v125 = v122;
      v64 = v122;
    }

    v65 = v121;
  }

  else
  {
    if ((v126 & 8) == 0)
    {
      v63 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_108;
    }

    v65 = v119;
    v64 = v120;
  }

  v63 = v64 - v65;
  if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v64 - v65;
  if (v63)
  {
    memmove(&__dst, v65, v63);
  }

LABEL_108:
  *(&__dst + v63) = 0;
  if (v114 >= 0)
  {
    v66 = &__dst;
  }

  else
  {
    v66 = __dst;
  }

  v67 = sub_100038DE8(a1, v66);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  sub_1001A3DEC(a1, v67);
  sub_1001B1DA0(*(a1 + 8), v67);
  __dst = 0uLL;
  v114 = 0;
  sub_100619F14(&v117, &__dst);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  v68 = sub_100038730(&v116, "DROP TABLE ", 11);
  v69 = strlen(__s);
  sub_100038730(v68, __s, v69);
  if ((v126 & 0x10) != 0)
  {
    v71 = v125;
    if (v125 < v122)
    {
      v125 = v122;
      v71 = v122;
    }

    v72 = v121;
  }

  else
  {
    if ((v126 & 8) == 0)
    {
      v70 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_128;
    }

    v72 = v119;
    v71 = v120;
  }

  v70 = v71 - v72;
  if (v71 - v72 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v70 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v71 - v72;
  if (v70)
  {
    memmove(&__dst, v72, v70);
  }

LABEL_128:
  *(&__dst + v70) = 0;
  if (v114 >= 0)
  {
    v73 = &__dst;
  }

  else
  {
    v73 = __dst;
  }

  v74 = sub_100038DE8(a1, v73);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  sub_1001A3DEC(a1, v74);
  sub_1001B1DA0(*(a1 + 8), v74);
  sub_10061061C(a1, __s, v39);
  __dst = 0uLL;
  v114 = 0;
  sub_100619F14(&v117, &__dst);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  v75 = sub_100038730(&v116, "INSERT INTO ", 12);
  v76 = strlen(__s);
  v77 = sub_100038730(v75, __s, v76);
  v78 = sub_100038730(v77, " SELECT ", 8);
  v79 = *v39;
  v80 = strlen(v79);
  sub_100038730(v78, v79, v80);
  if (*v26)
  {
    do
    {
      v81 = sub_100038730(&v116, ", ", 2);
      v82 = strlen(*v26);
      sub_100038730(v81, *v26, v82);
      v83 = *(v26 + 48);
      v26 += 48;
    }

    while (v83);
  }

  v84 = sub_100038730(&v116, " FROM ", 6);
  if ((v142 & 0x10) != 0)
  {
    v86 = v141;
    if (v141 < v138)
    {
      v141 = v138;
      v86 = v138;
    }

    v87 = __src;
  }

  else
  {
    if ((v142 & 8) == 0)
    {
      v85 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_150;
    }

    v87 = v135;
    v86 = v136;
  }

  v85 = v86 - v87;
  if (v86 - v87 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v85 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v86 - v87;
  if (v85)
  {
    memmove(&__dst, v87, v85);
  }

LABEL_150:
  *(&__dst + v85) = 0;
  if (v114 >= 0)
  {
    v88 = &__dst;
  }

  else
  {
    v88 = __dst;
  }

  if (v114 >= 0)
  {
    v89 = HIBYTE(v114);
  }

  else
  {
    v89 = *(&__dst + 1);
  }

  sub_100038730(v84, v88, v89);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  if ((v126 & 0x10) != 0)
  {
    v91 = v125;
    if (v125 < v122)
    {
      v125 = v122;
      v91 = v122;
    }

    v92 = v121;
  }

  else
  {
    if ((v126 & 8) == 0)
    {
      v90 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_171;
    }

    v92 = v119;
    v91 = v120;
  }

  v90 = v91 - v92;
  if (v91 - v92 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v90 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v91 - v92;
  if (v90)
  {
    memmove(&__dst, v92, v90);
  }

LABEL_171:
  *(&__dst + v90) = 0;
  if (v114 >= 0)
  {
    v93 = &__dst;
  }

  else
  {
    v93 = __dst;
  }

  v94 = sub_100038DE8(a1, v93);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  sub_1001A3DEC(a1, v94);
  sub_1001B1DA0(*(a1 + 8), v94);
  __dst = 0uLL;
  v114 = 0;
  sub_100619F14(&v117, &__dst);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  v95 = sub_100038730(&v116, "DROP TABLE ", 11);
  if ((v142 & 0x10) != 0)
  {
    v97 = v141;
    if (v141 < v138)
    {
      v141 = v138;
      v97 = v138;
    }

    v98 = __src;
  }

  else
  {
    if ((v142 & 8) == 0)
    {
      v96 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_191;
    }

    v98 = v135;
    v97 = v136;
  }

  v96 = v97 - v98;
  if (v97 - v98 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v96 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v97 - v98;
  if (v96)
  {
    memmove(&__dst, v98, v96);
  }

LABEL_191:
  *(&__dst + v96) = 0;
  if (v114 >= 0)
  {
    v99 = &__dst;
  }

  else
  {
    v99 = __dst;
  }

  if (v114 >= 0)
  {
    v100 = HIBYTE(v114);
  }

  else
  {
    v100 = *(&__dst + 1);
  }

  sub_100038730(v95, v99, v100);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  if ((v126 & 0x10) != 0)
  {
    v102 = v125;
    if (v125 < v122)
    {
      v125 = v122;
      v102 = v122;
    }

    v103 = v121;
  }

  else
  {
    if ((v126 & 8) == 0)
    {
      v101 = 0;
      HIBYTE(v114) = 0;
      goto LABEL_212;
    }

    v103 = v119;
    v102 = v120;
  }

  v101 = v102 - v103;
  if (v102 - v103 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v101 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v114) = v102 - v103;
  if (v101)
  {
    memmove(&__dst, v103, v101);
  }

LABEL_212:
  *(&__dst + v101) = 0;
  if (v114 >= 0)
  {
    v104 = &__dst;
  }

  else
  {
    v104 = __dst;
  }

  v105 = sub_100038DE8(a1, v104);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__dst);
  }

  sub_1001A3DEC(a1, v105);
  sub_1001B1DA0(*(a1 + 8), v105);
  v109 = v107;
  v116 = v107;
  if (v124 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v118);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *buf = v106;
  *&buf[*(v106 - 24)] = v108;
  *&v133[6] = v109;
  if (v140 < 0)
  {
    operator delete(v139);
  }

  std::locale::~locale(&v134);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v10 = 1;
  if ((v129 & 0x100) != 0)
  {
    goto LABEL_222;
  }

  return v10;
}

uint64_t sub_100612B58@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v6 = 1;
    v5 = result;
    while (*v5)
    {
      v7 = *(v5 + 60);
      ++v6;
      v5 += 48;
      if (v7 == 1)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    goto LABEL_15;
  }

  v4 = 1;
  v5 = result;
LABEL_7:
  if (!*v5)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    return result;
  }

  sub_10003848C(v19);
  v8 = sub_100038730(&v20, ", PRIMARY KEY (", 15);
  v9 = *v5;
  v10 = strlen(v9);
  sub_100038730(v8, v9, v10);
  v11 = v2 + 48 * v4;
  if (*v11)
  {
    do
    {
      if (*(v11 + 12) == 1)
      {
        v12 = sub_100038730(&v20, ", ", 2);
        v13 = strlen(*v11);
        sub_100038730(v12, *v11, v13);
      }

      v14 = *(v11 + 48);
      v11 += 48;
    }

    while (v14);
  }

  v28 = 41;
  sub_100038730(&v20, &v28, 1);
  if ((v27 & 0x10) != 0)
  {
    v16 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v16 = v23;
    }

    locale = v22[4].__locale_;
    goto LABEL_20;
  }

  if ((v27 & 8) != 0)
  {
    locale = v22[1].__locale_;
    v16 = v22[3].__locale_;
LABEL_20:
    v15 = v16 - locale;
    if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    a2[23] = v15;
    if (v15)
    {
      memmove(a2, locale, v15);
    }

    goto LABEL_26;
  }

  v15 = 0;
  a2[23] = 0;
LABEL_26:
  a2[v15] = 0;
  v20 = v18;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_100612EA0(uint64_t a1, const char *a2)
{
  v5 = *(a1 + 16);
  ppDb[1] = v5;
  (*(*v5 + 16))(v5);
  v14 = 256;
  if (!a2)
  {
    sub_1018E59BC();
    abort_report_np();
    __break(1u);
LABEL_21:
    sub_1018E57E8();
LABEL_4:
    v6 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2081;
      v20[0] = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to open, path:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (p_info[266] != -1)
      {
        sub_1018E57E8();
      }
    }

    v7 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2081;
      v20[0] = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to open", "{msg%{public}.0s:Unable to open, path:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v8 = 0;
    goto LABEL_19;
  }

  ppDb[0] = 0;
  if (sqlite3_open(a2, ppDb))
  {
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4850 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v12 = sqlite3_file_control(ppDb[0], 0, 102, *(a1 + 8));
  if (v12)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v9 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1040;
      LODWORD(v20[0]) = 4;
      WORD2(v20[0]) = 2098;
      *(v20 + 6) = &v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Did not successfully finish backup, rc:%{public, location:SqliteResult}.*P}", buf, 0x22u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v10 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1040;
      LODWORD(v20[0]) = 4;
      WORD2(v20[0]) = 2098;
      *(v20 + 6) = &v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did not successfully finish backup", "{msg%{public}.0s:Did not successfully finish backup, rc:%{public, location:SqliteResult}.*P}", buf, 0x22u);
    }
  }

  sqlite3_close(ppDb[0]);
  v8 = v12 == 0;
LABEL_19:
  (*(*v5 + 24))(v5);
  return v8;
}

void sub_100613234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100613264(uint64_t a1, const char *a2, const char *a3, const char *a4, sqlite3_int64 a5, int a6, uint64_t a7)
{
  v14 = *(a1 + 16);
  ppBlob[1] = v14;
  (*(*v14 + 16))(v14);
  v24 = 256;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v15 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289795;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    *v30 = a3;
    *&v30[8] = 2081;
    *&v30[10] = a4;
    v31 = 2049;
    v32 = a5;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Opening a blob for read, tableName:%{private, location:escape_only}s, colname:%{private, location:escape_only}s, row:%{private}llu}", buf, 0x30u);
  }

  ppBlob[0] = 0;
  v16 = sqlite3_blob_open(*(a1 + 8), a2, a3, a4, a5, a6 ^ 1, ppBlob);
  v22 = v16;
  if (v16)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v17 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1040;
      *v30 = 4;
      *&v30[4] = 2098;
      *&v30[6] = &v22;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:failed to open blob, rc:%{public, location:SqliteResult}.*P}", buf, 0x22u);
      v16 = v22;
    }

    sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v16);
    sqlite3_blob_close(ppBlob[0]);
    v18 = v22;
  }

  else
  {
    sub_10061364C(a7, ppBlob[0]);
    v18 = sqlite3_blob_close(ppBlob[0]);
    if (v18)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v19 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 1026;
        *v30 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:error when closing blob, code:%{public}d}", buf, 0x18u);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v20 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        *buf = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 1026;
        *v30 = v18;
        _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "error when closing blob", "{msg%{public}.0s:error when closing blob, code:%{public}d}", buf, 0x18u);
      }

      sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v18);
    }
  }

  (*(*v14 + 24))(v14);
  return v18;
}

uint64_t sub_10061364C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1006136A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10003848C(v36);
  if (a2)
  {
    __dst = a3;
    if (*a2)
    {
      do
      {
        if (*(a2 + 40) == 1)
        {
          if (!sub_1006184E4(a1, a2))
          {
            if (qword_1025D4850 != -1)
            {
              sub_1018E57E8();
            }

            a3 = __dst;
            v31 = off_1025D4858;
            if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *v46 = 2082;
              *&v46[2] = "";
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Foreign key reference and index check failed}", buf, 0x12u);
              if (qword_1025D4850 != -1)
              {
                sub_1018E57E8();
              }
            }

            v32 = off_1025D4858;
            if (os_signpost_enabled(off_1025D4858))
            {
              *buf = 68289026;
              *v46 = 2082;
              *&v46[2] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Foreign key reference and index check failed", "{msg%{public}.0s:Foreign key reference and index check failed}", buf, 0x12u);
            }

            goto LABEL_39;
          }

          v6 = *(a2 + 16);
          v7 = *(a2 + 24);
          v8 = *(a2 + 32);
          v9 = *(a2 + 36);
          v10 = sub_100038730(&v37, ", FOREIGN KEY(", 14);
          v11 = strlen(*a2);
          v12 = sub_100038730(v10, *a2, v11);
          v13 = sub_100038730(v12, ") REFERENCES ", 13);
          v14 = strlen(v6);
          v15 = sub_100038730(v13, v6, v14);
          v16 = sub_100038730(v15, "(", 1);
          v17 = strlen(v7);
          v18 = sub_100038730(v16, v7, v17);
          sub_100038730(v18, ")", 1);
          v19 = sub_100038730(&v37, " ON DELETE ", 11);
          sub_10000EC00(buf, (&off_102463FB8)[v8]);
          if ((v47 & 0x80u) == 0)
          {
            v20 = buf;
          }

          else
          {
            v20 = *buf;
          }

          if ((v47 & 0x80u) == 0)
          {
            v21 = v47;
          }

          else
          {
            v21 = *v46;
          }

          sub_100038730(v19, v20, v21);
          if (v47 < 0)
          {
            operator delete(*buf);
          }

          v22 = sub_100038730(&v37, " ON UPDATE ", 11);
          sub_10000EC00(buf, (&off_102463FB8)[v9]);
          if ((v47 & 0x80u) == 0)
          {
            v23 = buf;
          }

          else
          {
            v23 = *buf;
          }

          if ((v47 & 0x80u) == 0)
          {
            v24 = v47;
          }

          else
          {
            v24 = *v46;
          }

          sub_100038730(v22, v23, v24);
          if (v47 < 0)
          {
            operator delete(*buf);
          }
        }

        v25 = *(a2 + 48);
        a2 += 48;
      }

      while (v25);
    }

    if ((v44 & 0x10) != 0)
    {
      v29 = v43;
      v26 = __dst;
      if (v43 < v40)
      {
        v43 = v40;
        v29 = v40;
      }

      locale = v39[4].__locale_;
    }

    else
    {
      v26 = __dst;
      if ((v44 & 8) == 0)
      {
        v27 = 0;
        *(__dst + 23) = 0;
LABEL_47:
        v26[v27] = 0;
        goto LABEL_48;
      }

      locale = v39[1].__locale_;
      v29 = v39[3].__locale_;
    }

    v27 = v29 - locale;
    if ((v29 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v26[23] = v27;
    if (v27)
    {
      memmove(v26, locale, v27);
    }

    goto LABEL_47;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v28 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *v46 = 2082;
    *&v46[2] = "";
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getForeignKeyDefinitionString: NULL column definition}", buf, 0x12u);
  }

LABEL_39:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_48:
  v37 = v33;
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100613C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

BOOL sub_100613C84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v19 = v8;
  (*(*v8 + 16))(v8);
  v20 = 256;
  v9 = sub_100613F50(a1, off_102463DF0, "TableInfo", "TableName");
  sub_10003DDD8(v9, 1, a2);
  v10 = sqlite3_step(v9);
  v18 = v10;
  if (v10 == 100)
  {
    v11 = sqlite3_column_text(v9, 0);
    sub_10000EC00(buf, v11);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    v12 = sqlite3_column_text(v9, 1);
    sub_10000EC00(buf, v12);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *buf;
    *(a4 + 16) = *&buf[16];
  }

  sub_1001B1DA0(*(a1 + 8), v9);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v13 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v14 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v14 = *v14;
    }

    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *buf = 68290563;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = a2;
    v22 = 2082;
    v23 = v14;
    v24 = 1040;
    v25 = 4;
    v26 = 2098;
    v27 = &v18;
    v28 = 2082;
    v29 = v15;
    v30 = 2081;
    v31 = v16;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, version and serial number, table:%{private, location:escape_only}s, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P, version:%{public, location:escape_only}s, serial number:%{private, location:escape_only}s}", buf, 0x4Au);
  }

  (*(*v8 + 24))(v8);
  return v10 == 100;
}

sqlite3_stmt *sub_100613F50(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v33 = *(a1 + 16);
  (*(*v33 + 16))(v33);
  v35 = 256;
  if (!a3 || !a4 || !*a2)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v21 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v22 = *a2;
      *buf = 68289795;
      *&buf[4] = 0;
      v37 = 2082;
      *v38 = "";
      *&v38[8] = 2081;
      *&v38[10] = a3;
      *&v38[18] = 2082;
      *&v38[20] = v22;
      v39 = 2082;
      v40 = a4;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v23 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v24 = *a2;
      *buf = 68289795;
      *&buf[4] = 0;
      v37 = 2082;
      *v38 = "";
      *&v38[8] = 2081;
      *&v38[10] = a3;
      *&v38[18] = 2082;
      *&v38[20] = v24;
      v39 = 2082;
      v40 = a4;
      _os_signpost_emit_with_name_impl(dword_100000000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid parameters", "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v25 = 0;
    goto LABEL_18;
  }

  sub_10003848C(buf);
  v8 = sub_100038730(&v38[6], "SELECT ", 7);
  v9 = strlen(*a2);
  sub_100038730(v8, *a2, v9);
  if (*(a2 + 8))
  {
    v10 = (a2 + 16);
    do
    {
      v11 = sub_100038730(&v38[6], ", ", 2);
      v12 = strlen(*(v10 - 1));
      sub_100038730(v11, *(v10 - 1), v12);
    }

    while (*v10++);
  }

  v14 = sub_100038730(&v38[6], " FROM ", 6);
  v15 = strlen(a3);
  v16 = sub_100038730(v14, a3, v15);
  v17 = sub_100038730(v16, " WHERE ", 7);
  v18 = strlen(a4);
  v19 = sub_100038730(v17, a4, v18);
  sub_100038730(v19, "=?", 2);
  if ((v47 & 0x10) != 0)
  {
    v26 = v46;
    if (v46 < v43)
    {
      v46 = v43;
      v26 = v43;
    }

    v27 = __src;
  }

  else
  {
    if ((v47 & 8) == 0)
    {
      v20 = 0;
      v32 = 0;
      goto LABEL_31;
    }

    v27 = v40;
    v26 = v41;
  }

  v20 = v26 - v27;
  if (v26 - v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  v32 = v26 - v27;
  if (v20)
  {
    memmove(&__p, v27, v20);
  }

LABEL_31:
  *(&__p + v20) = 0;
  if (v32 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v25 = sub_100038DE8(a1, p_p);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  *&v38[6] = v29;
  if (v45 < 0)
  {
    operator delete(v44);
  }

  std::locale::~locale(&v38[22]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v35 & 0x100) != 0)
  {
LABEL_18:
    if (v35)
    {
      pthread_mutex_unlock(v34);
    }

    else
    {
      (*(*v33 + 24))(v33);
    }
  }

  return v25;
}

uint64_t sub_100614514(uint64_t a1, char *a2, char *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  if (sub_100613C84(a1, a2, v9, __p))
  {
    if (v10 >= 0)
    {
      v4 = v9;
    }

    else
    {
      v4 = v9[0];
    }

    v5 = sub_1006145D4(v4, a3) >> 31;
  }

  else
  {
    v5 = 1;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return v5;
}

void sub_1006145A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1006145D4(char *__s, char *a2)
{
  sub_10000EC00(__p, __s);
  sub_100614964(v17, __p, 24);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(v10, a2);
  sub_100614964(__p, v10, 24);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  while (!*(&v19[0].__locale_ + *(v17[0] - 3)) || !*(&v15[0].__locale_ + *(__p[0] - 3)))
  {
    LODWORD(v10[0]) = 0;
    std::istream::operator>>();
    std::istream::get();
    std::istream::operator>>();
    std::istream::get();
    if (SLODWORD(v10[0]) > 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2;
    }

    if (SLODWORD(v10[0]) < 0)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      v2 = v4;
    }

    if (LODWORD(v10[0]))
    {
      goto LABEL_16;
    }
  }

  v2 = 0;
LABEL_16:
  v8 = v6;
  v13 = v6;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v17[0] = v5;
  *(v17 + *(v5 - 3)) = v7;
  v17[2] = v8;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v2;
}

void sub_10061490C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a55);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100614964(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), __int128 *a2, int a3))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_100619F74((a1 + 3), a2, a3);
  return a1;
}

void sub_100614BF4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100614C1C(uint64_t a1, char *a2)
{
  v6 = *(a1 + 16);
  (*(*v6 + 16))(v6);
  v4 = sub_100038DE8(a1, a2);
  sub_100616520(a1, v4);
  sub_100DD42E4(&v7, a1, v4);
  (*(*v6 + 24))(v6);
  return v7;
}

void sub_100614CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100614CF8(uint64_t a1, char *a2)
{
  v4 = *(a1 + 16);
  v14 = v4;
  (*(*v4 + 16))(v4);
  v15 = 256;
  sub_10001A3E8();
  sub_100241210(v12);
  sub_10001A3E8();
  sub_1007186C8(__p);
  v5 = sub_100614F54(a1, "TableInfo", off_102463E08, 1);
  sub_10003DDD8(v5, 1, a2);
  if (v13 >= 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v12[0];
  }

  sub_10003DDD8(v5, 2, v6);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_10003DDD8(v5, 3, v7);
  sub_1001A3DEC(a1, v5);
  sub_1001B1DA0(*(a1 + 8), v5);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v8 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = a2;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:@SqliteDB, Created row in TableInfo, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return (*(*v4 + 24))(v4);
}

sqlite3_stmt *sub_100614F54(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v32 = *(a1 + 16);
  (*(*v32 + 16))(v32);
  v34 = 256;
  if (!a2 || !*a3)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v18 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v19 = *a3;
      *buf = 68289539;
      *&buf[4] = 0;
      v36 = 2082;
      *v37 = "";
      *&v37[8] = 2081;
      *&v37[10] = a2;
      *&v37[18] = 2082;
      *&v37[20] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v20 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v21 = *a3;
      *buf = 68289539;
      *&buf[4] = 0;
      v36 = 2082;
      *v37 = "";
      *&v37[8] = 2081;
      *&v37[10] = a2;
      *&v37[18] = 2082;
      *&v37[20] = v21;
      _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid parameters", "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v22 = 0;
    goto LABEL_42;
  }

  sub_10003848C(buf);
  sub_100038730(&v37[6], "INSERT ", 7);
  if (a4)
  {
    sub_100038730(&v37[6], "OR REPLACE ", 11);
  }

  v8 = sub_100038730(&v37[6], "INTO ", 5);
  v9 = strlen(a2);
  v10 = sub_100038730(v8, a2, v9);
  v11 = sub_100038730(v10, " (", 2);
  v12 = strlen(*a3);
  sub_100038730(v11, *a3, v12);
  if (*(a3 + 8))
  {
    v13 = (a3 + 16);
    v14 = 1;
    do
    {
      v15 = sub_100038730(&v37[6], ", ", 2);
      v16 = strlen(*(v13 - 1));
      sub_100038730(v15, *(v13 - 1), v16);
      v17 = *v13++;
      ++v14;
    }

    while (v17);
  }

  else
  {
    v14 = 1;
  }

  sub_100038730(&v37[6], ") VALUES (?", 11);
  if (v14 >= 2)
  {
    v23 = v14 + 1;
    do
    {
      sub_100038730(&v37[6], ", ?", 3);
      --v23;
    }

    while (v23 > 2);
  }

  LOBYTE(__p) = 41;
  sub_100038730(&v37[6], &__p, 1);
  if ((v45 & 0x10) != 0)
  {
    v25 = v44;
    if (v44 < v41)
    {
      v44 = v41;
      v25 = v41;
    }

    v26 = __src;
  }

  else
  {
    if ((v45 & 8) == 0)
    {
      v24 = 0;
      v31 = 0;
      goto LABEL_34;
    }

    v26 = v38;
    v25 = v39;
  }

  v24 = v25 - v26;
  if (v25 - v26 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  v31 = v25 - v26;
  if (v24)
  {
    memmove(&__p, v26, v24);
  }

LABEL_34:
  *(&__p + v24) = 0;
  if (v31 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v22 = sub_100038DE8(a1, p_p);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  *&v37[6] = v28;
  if (v43 < 0)
  {
    operator delete(v42);
  }

  std::locale::~locale(&v37[22]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v34 & 0x100) != 0)
  {
LABEL_42:
    if (v34)
    {
      pthread_mutex_unlock(v33);
    }

    else
    {
      (*(*v32 + 24))(v32);
    }
  }

  return v22;
}

uint64_t sub_100615558(uint64_t a1, char *a2)
{
  v6 = *(a1 + 16);
  (*(*v6 + 16))(v6);
  v4 = sub_100615644(a1, "TableInfo", "TableName");
  sub_10003DDD8(v4, 1, a2);
  sub_1001A3DEC(a1, v4);
  sub_1001B1DA0(*(a1 + 8), v4);
  return (*(*v6 + 24))(v6);
}

void sub_100615630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

sqlite3_stmt *sub_100615644(uint64_t a1, const char *a2, const char *a3)
{
  v23 = *(a1 + 16);
  (*(*v23 + 16))(v23);
  v25 = 256;
  if (!a2 || !a3)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v13 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v27 = 2082;
      *v28 = "";
      *&v28[8] = 2081;
      *&v28[10] = a2;
      *&v28[18] = 2082;
      *&v28[20] = a3;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v14 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v27 = 2082;
      *v28 = "";
      *&v28[8] = 2081;
      *&v28[10] = a2;
      *&v28[18] = 2082;
      *&v28[20] = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid parameters", "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v15 = 0;
    goto LABEL_32;
  }

  sub_10003848C(buf);
  v6 = sub_100038730(&v28[6], "DELETE FROM ", 12);
  v7 = strlen(a2);
  v8 = sub_100038730(v6, a2, v7);
  v9 = sub_100038730(v8, " WHERE ", 7);
  v10 = strlen(a3);
  v11 = sub_100038730(v9, a3, v10);
  sub_100038730(v11, "=?", 2);
  if ((v36 & 0x10) != 0)
  {
    v16 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v16 = v32;
    }

    v17 = __src;
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v12 = 0;
      v22 = 0;
      goto LABEL_24;
    }

    v17 = v29;
    v16 = v30;
  }

  v12 = v16 - v17;
  if (v16 - v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  v22 = v16 - v17;
  if (v12)
  {
    memmove(&__p, v17, v12);
  }

LABEL_24:
  *(&__p + v12) = 0;
  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v15 = sub_100038DE8(a1, p_p);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  *&v28[6] = v19;
  if (v34 < 0)
  {
    operator delete(v33);
  }

  std::locale::~locale(&v28[22]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v25 & 0x100) != 0)
  {
LABEL_32:
    if (v25)
    {
      pthread_mutex_unlock(v24);
    }

    else
    {
      (*(*v23 + 24))(v23);
    }
  }

  return v15;
}

uint64_t sub_100615B54(uint64_t a1, char *a2)
{
  v4 = *(a1 + 16);
  v10 = v4;
  (*(*v4 + 16))(v4);
  v11 = 256;
  v5 = sub_100615CAC(a1, "TableInfo", &off_102463E28, "TableName");
  sub_10001A3E8();
  sub_100241210(__p);
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  sub_10003DDD8(v5, 1, v6);
  sub_10003DDD8(v5, 2, a2);
  sub_1001A3DEC(a1, v5);
  sub_1001B1DA0(*(a1 + 8), v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v4 + 24))(v4);
}

sqlite3_stmt *sub_100615CAC(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  v35 = *(a1 + 16);
  (*(*v35 + 16))(v35);
  v37 = 256;
  if (!a2 || !a4 || !*a3)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v23 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v24 = *a3;
      *buf = 68289795;
      *&buf[4] = 0;
      v39 = 2082;
      *v40 = "";
      *&v40[8] = 2081;
      *&v40[10] = a2;
      *&v40[18] = 2082;
      *&v40[20] = v24;
      v41 = 2082;
      v42 = a4;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v25 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v26 = *a3;
      *buf = 68289795;
      *&buf[4] = 0;
      v39 = 2082;
      *v40 = "";
      *&v40[8] = 2081;
      *&v40[10] = a2;
      *&v40[18] = 2082;
      *&v40[20] = v26;
      v41 = 2082;
      v42 = a4;
      _os_signpost_emit_with_name_impl(dword_100000000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid parameters", "{msg%{public}.0s:Invalid parameters, table:%{private, location:escape_only}s, columnNames[0]:%{public, location:escape_only}s, key:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v27 = 0;
    goto LABEL_18;
  }

  sub_10003848C(buf);
  v8 = sub_100038730(&v40[6], "UPDATE ", 7);
  v9 = strlen(a2);
  v10 = sub_100038730(v8, a2, v9);
  v11 = sub_100038730(v10, " SET ", 5);
  v12 = strlen(*a3);
  v13 = sub_100038730(v11, *a3, v12);
  sub_100038730(v13, "=?", 2);
  if (*(a3 + 8))
  {
    v14 = (a3 + 16);
    do
    {
      v15 = sub_100038730(&v40[6], ", ", 2);
      v16 = strlen(*(v14 - 1));
      v17 = sub_100038730(v15, *(v14 - 1), v16);
      sub_100038730(v17, "=?", 2);
    }

    while (*v14++);
  }

  v19 = sub_100038730(&v40[6], "WHERE ", 6);
  v20 = strlen(a4);
  v21 = sub_100038730(v19, a4, v20);
  sub_100038730(v21, "=?", 2);
  if ((v49 & 0x10) != 0)
  {
    v28 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v28 = v45;
    }

    v29 = __src;
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v22 = 0;
      v34 = 0;
      goto LABEL_31;
    }

    v29 = v42;
    v28 = v43;
  }

  v22 = v28 - v29;
  if (v28 - v29 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  v34 = v28 - v29;
  if (v22)
  {
    memmove(&__p, v29, v22);
  }

LABEL_31:
  *(&__p + v22) = 0;
  if (v34 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v27 = sub_100038DE8(a1, p_p);
  if (v34 < 0)
  {
    operator delete(__p);
  }

  *&v40[6] = v31;
  if (v47 < 0)
  {
    operator delete(v46);
  }

  std::locale::~locale(&v40[22]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v37 & 0x100) != 0)
  {
LABEL_18:
    if (v37)
    {
      pthread_mutex_unlock(v36);
    }

    else
    {
      (*(*v35 + 24))(v35);
    }
  }

  return v27;
}

uint64_t sub_100616298(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  sub_100144A84(a1);
  if (*a2)
  {
    v5 = 1;
    v6 = a2;
    do
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v7 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *v6;
        *buf = 68289283;
        *&buf[4] = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2081;
        v18 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Dropping table, table:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      sub_100615558(a1, *v6);
      sub_10000EC00(buf, "DROP TABLE IF EXISTS ");
      v9 = strlen(*v6);
      std::string::append(buf, *v6, v9);
      if (SBYTE3(v18) >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v11 = sub_100038DE8(a1, v10);
      sub_1001A3DEC(a1, v11);
      sub_1001B1DA0(*(a1 + 8), v11);
      if (SBYTE3(v18) < 0)
      {
        operator delete(*buf);
      }

      v6 = &a2[v5++];
    }

    while (*v6);
  }

  sub_1001454E0(a1);
  if (*(a1 + 88) <= 0)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = *(a1 + 88);
  }

  sub_1001B16EC(a1, v12);
  return (*(*v4 + 24))(v4);
}

uint64_t sub_100616520(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 16) + 40))(*(a1 + 16));
  if ((result & 1) == 0)
  {
    sub_1018E5D4C();
  }

  if (a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006165B0(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v10 = *(a1 + 16);
  (*(*v10 + 16))(v10);
  v8 = sub_100614F54(a1, a2, a3, a4);
  sub_100616520(a1, v8);
  sub_100DD42E4(&v11, a1, v8);
  (*(*v10 + 24))(v10);
  return v11;
}

void sub_100616690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1006166A4(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  sub_100614F54(a1, a2, a3, a4);
  operator new();
}

uint64_t sub_1006167CC(uint64_t a1)
{
  v6 = sqlite3_exec(*(a1 + 8), "ROLLBACK TRANSACTION", 0, 0, 0);
  --*(a1 + 120);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v2 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 120);
    *buf = 68290050;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    v15 = 1040;
    v16 = 4;
    v17 = 2098;
    v18 = &v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:rollbackTransaction, path:%{public, location:escape_only}s, count:%{public}d, rc:%{public, location:SqliteResult}.*P}", buf, 0x32u);
  }

  if (*(a1 + 120))
  {
    sub_1018E5EBC();
  }

  sub_1000393C8(*(a1 + 16));
  return v6;
}

sqlite3_int64 sub_100616934(uint64_t a1)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 8));
  (*(*v4 + 24))(v4);
  return insert_rowid;
}

void sub_1006169D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006169E4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  v2 = sub_100616AA4(*(a1 + 8));
  (*(*v4 + 24))(v4);
  return v2;
}

void sub_100616A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100616AA4(sqlite3_stmt *a1)
{
  sub_10000FF38(v35, "com.apple.locationd.CLSqliteDatabase.vacuum", 0);
  v34 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v2 = sub_1001B1D30(a1, "pragma page_count;", &v34);
  v3 = v34;
  if (!v2)
  {
    v3 = -1;
  }

  v33 = v3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v4 = sub_1001B1D30(a1, "pragma freelist_count;", &v34);
  v5 = v34;
  if (!v4)
  {
    v5 = -1;
  }

  v29 = v5;
  if (qword_1025D47A0 != -1)
  {
    sub_1018E6038();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v31[3];
    v8 = v27[3];
    v9 = sqlite3_db_filename(a1, "main");
    buf = 68289794;
    *v37 = 2082;
    *&v37[2] = "";
    v38 = 2050;
    v39 = v7;
    v40 = 2050;
    *v41 = v8;
    *&v41[8] = 2082;
    *&v41[10] = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start vacuum, page_count:%{public}lld, freelist_count:%{public}lld, path:%{public, location:escape_only}s}", &buf, 0x30u);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (sub_100616F30(a1))
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100616FAC;
    v21[3] = &unk_102463E40;
    v21[4] = &v30;
    v21[5] = &v26;
    v21[6] = a1;
    buf = mach_absolute_time();
    *v37 = v21;
    v10 = sub_10061710C(a1, 0);
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100617600;
    v20[3] = &unk_102463E68;
    v20[4] = &v22;
    v20[5] = &v30;
    v20[6] = &v26;
    v20[7] = a1;
    buf = mach_absolute_time();
    *v37 = v20;
    v11 = sqlite3_exec(a1, "VACUUM", 0, 0, 0);
    *(v23 + 6) = v11;
    v10 = v11 == 0;
  }

  sub_10010069C(&buf);
  v19 = sqlite3_wal_checkpoint_v2(a1, 0, 3, 0, 0);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v12 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sqlite3_db_filename(a1, "main");
    buf = 68289794;
    *v37 = 2082;
    *&v37[2] = "";
    v38 = 2082;
    v39 = v13;
    v40 = 1040;
    *v41 = 4;
    *&v41[4] = 2098;
    *&v41[6] = &v19;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wal_checkpoint, path:%{public, location:escape_only}s, rc:%{public, location:SqliteResult}.*P}", &buf, 0x2Cu);
  }

  v14 = sub_1001B1D30(a1, "pragma page_count;", &v34);
  v15 = v34;
  if (!v14)
  {
    v15 = -1;
  }

  v31[3] = v15;
  v16 = sub_1001B1D30(a1, "pragma freelist_count;", &v34);
  v17 = v34;
  if (!v16)
  {
    v17 = -1;
  }

  v27[3] = v17;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  sub_10001A420(v35);
  return v10;
}

void sub_100616EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  sub_10001A420((v30 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_100616F30(sqlite3_stmt *a1)
{
  v2 = sub_100038FF4(a1, "pragma auto_vacuum;");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sqlite3_step(v2) == 100 && sqlite3_column_int(v3, 0) == 2;
  sub_1001B1DA0(a1, v3);
  return v4;
}

void sub_100616FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000080EC(a3 - a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = sqlite3_db_filename(*(a1 + 48), "main");
    v11[0] = 68290818;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "elapsed";
    v16 = 2050;
    v17 = a2;
    v18 = 2050;
    v19 = a3;
    v20 = 2050;
    v21 = v6;
    v22 = 2050;
    v23 = v8;
    v24 = 2050;
    v25 = v9;
    v26 = 2082;
    v27 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:incremental_vacuum, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f, page_count:%{public}lld, freelist_count:%{public}lld, path:%{public, location:escape_only}s}", v11, 0x58u);
  }
}

BOOL sub_10061710C(sqlite3 *a1, uint64_t a2)
{
  sub_10003848C(v20);
  sub_100038730(&v21, "pragma incremental_vacuum(", 26);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ");", 2);
  if ((v31 & 0x10) != 0)
  {
    v6 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v6 = v27;
    }

    v7 = __src;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v5 = 0;
      v19 = 0;
      goto LABEL_14;
    }

    v7 = v24;
    v6 = v25;
  }

  v5 = v6 - v7;
  if (v6 - v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v19 = v6 - v7;
  if (v5)
  {
    memmove(__dst, v7, v5);
  }

LABEL_14:
  *(__dst + v5) = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100617844;
  v16[3] = &unk_102463E88;
  v16[4] = a2;
  v16[5] = a1;
  v17[0] = mach_absolute_time();
  v17[1] = v16;
  if ((v31 & 0x10) != 0)
  {
    v9 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v9 = v27;
    }

    v10 = __src;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v8 = 0;
      HIBYTE(v34) = 0;
      goto LABEL_27;
    }

    v10 = v24;
    v9 = v25;
  }

  v8 = v9 - v10;
  if (v9 - v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v34) = v9 - v10;
  if (v8)
  {
    memmove(buf, v10, v8);
  }

LABEL_27:
  buf[v8] = 0;
  if (v34 >= 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  v12 = sqlite3_exec(a1, v11, 0, 0, 0);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(*buf);
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v13 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v33[0] = 2082;
    *&v33[1] = "";
    v33[5] = 1026;
    v34 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:incrementalVacuum, result:%{public}d}", buf, 0x18u);
  }

  sub_10010069C(v17);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  v21 = v14;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v12 == 0;
}

void sub_1006175A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v23 - 89) < 0)
  {
    operator delete(*(v23 - 112));
  }

  sub_10010069C(&a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a23);
  _Unwind_Resume(a1);
}

void sub_100617600(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000080EC(a3 - a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1[4] + 8) + 24;
    v9 = *(*(a1[5] + 8) + 24);
    v10 = a1[7];
    v11 = *(*(a1[6] + 8) + 24);
    v12[0] = 68291330;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "elapsed";
    v17 = 2050;
    v18 = a2;
    v19 = 2050;
    v20 = a3;
    v21 = 2050;
    v22 = v6;
    v23 = 1040;
    v24 = 4;
    v25 = 2098;
    v26 = v8;
    v27 = 2050;
    v28 = v9;
    v29 = 2050;
    v30 = v11;
    v31 = 2082;
    v32 = sqlite3_db_filename(v10, "main");
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:vacuum, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f, rc:%{public, location:SqliteResult}.*P, page_count:%{public}lld, freelist_count:%{public}lld, path:%{public, location:escape_only}s}", v12, 0x68u);
  }
}

BOOL sub_100617784(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  (*(*v6 + 16))(v6);
  v4 = sub_10061710C(*(a1 + 8), a2);
  (*(*v6 + 24))(v6);
  return v4;
}

void sub_100617830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100617844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000080EC(a3 - a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = sqlite3_db_filename(*(a1 + 40), "main");
    v10[0] = 68290562;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "elapsed";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v8;
    v23 = 2082;
    v24 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:incrementalVacuum, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f, pages:%{public}lld, path:%{public, location:escape_only}s}", v10, 0x4Eu);
  }
}

BOOL sub_100617988(sqlite3 *a1, _DWORD *a2, int a3)
{
  if (a3)
  {
    v6 = "pragma auto_vacuum = 2;";
  }

  else
  {
    v6 = "pragma auto_vacuum = 0;";
  }

  v7 = sqlite3_exec(a1, v6, 0, 0, 0);
  v19 = v7;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v8 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 1026;
    v25 = a3;
    v26 = 1040;
    v27 = 4;
    v28 = 2098;
    v29 = &v19;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setIncrementalVacuumEnabled, enabled:%{public}hhd, rc:%{public, location:SqliteResult}.*P}", buf, 0x28u);
    v7 = v19;
  }

  v9 = v7 == 0;
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100038FF4(a1, "pragma auto_vacuum;");
  if (v11)
  {
    v12 = v11;
    if (sqlite3_step(v11) == 100)
    {
      v13 = sqlite3_column_int(v12, 0);
      sub_1001B1DA0(a1, v12);
      if (v13 == v10)
      {
        return v9;
      }

      goto LABEL_17;
    }

    sub_1001B1DA0(a1, v12);
  }

  v9 = 0;
  v13 = -1;
LABEL_17:
  v14 = &dword_101C8189C;
  v15 = 24;
  while (*(v14 - 1) != *a2 || *v14 != a2[1])
  {
    v14 += 2;
    v15 -= 8;
    if (!v15)
    {
      v16 = 1;
      goto LABEL_23;
    }
  }

  v16 = 0;
LABEL_23:
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v17 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 1026;
    v25 = v13;
    v26 = 1026;
    v27 = v10;
    v28 = 1026;
    LODWORD(v29) = v16;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Actual auto-vacuum state does not match desired state, actual:%{public}d, expected:%{public}d, vacuumNow:%{public}hhd}", buf, 0x24u);
  }

  if (v16)
  {
    sub_100616AA4(a1);
  }

  return v9;
}

BOOL sub_100617C28(uint64_t a1)
{
  sub_10000EC00(__p, "pragma foreign_keys");
  v7 = 0;
  if (v9 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if (!sub_1001B1D30(*(a1 + 8), v2, &v7))
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#warning unable to read pragma foreign_keys}", buf, 0x12u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v4 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#warning unable to read pragma foreign_keys", "{msg%{public}.0s:#warning unable to read pragma foreign_keys}", buf, 0x12u);
    }
  }

  v5 = v7;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 == 1;
}

void sub_100617DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100617DF4(sqlite3_stmt *a1, int a2, void *a3)
{
  v6 = sqlite3_bind_blob(a1, a2, [a3 bytes], objc_msgSend(a3, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2113;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}@, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2113;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}@, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v6 == 0;
}

BOOL sub_100618034(sqlite3_stmt *a1, int a2, const void *a3, int a4)
{
  v7 = sqlite3_bind_blob(a1, a2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v7;
  if (v7)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v8 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = a3;
      v19 = 1026;
      v20 = a2;
      v21 = 1040;
      v22 = 4;
      v23 = 2098;
      v24 = &v12;
      v25 = 2081;
      v26 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}s, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v9 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v10 = sqlite3_sql(a1);
      *buf = 68290307;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = a3;
      v19 = 1026;
      v20 = a2;
      v21 = 1040;
      v22 = 4;
      v23 = 2098;
      v24 = &v12;
      v25 = 2081;
      v26 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}s, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v7 == 0;
}

BOOL sub_100618248(sqlite3_stmt *a1, int a2, int a3)
{
  v5 = sqlite3_bind_zeroblob(a1, a2, a3);
  v10 = v5;
  if (v5)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v6 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a2;
      v17 = 1040;
      v18 = 4;
      v19 = 2098;
      v20 = &v10;
      v21 = 2081;
      v22 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v7 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v8 = sqlite3_sql(a1);
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a2;
      v17 = 1040;
      v18 = 4;
      v19 = 2098;
      v20 = &v10;
      v21 = 2081;
      v22 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x32u);
    }
  }

  return v5 == 0;
}

uint64_t sub_10061843C(const char *a1)
{
  if (!strcmp(a1, "INTEGER"))
  {
    return 1;
  }

  if (!strcmp(a1, "FLOAT"))
  {
    return 2;
  }

  if (!strcmp(a1, "BLOB"))
  {
    return 4;
  }

  v2 = 5;
  if (strcmp(a1, "NULL"))
  {
    if (!strcmp(a1, "TEXT"))
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  return v2;
}

uint64_t sub_1006184E4(uint64_t a1, uint64_t a2)
{
  v50 = *(a1 + 16);
  (*(*v50 + 16))(v50);
  v52 = 256;
  if (!*a2 || *(a2 + 40) != 1 || (v4 = *(a2 + 24)) == 0 || (v5 = *(a2 + 16)) == 0)
  {
    v10 = 0;
LABEL_9:
    if (v52)
    {
      pthread_mutex_unlock(v51);
    }

    else
    {
      (*(*v50 + 24))(v50);
    }

    return v10;
  }

  sub_10003848C(v38);
  v6 = sub_100038730(&v39, "PRAGMA table_info(", 18);
  v7 = strlen(v5);
  v8 = sub_100038730(v6, v5, v7);
  sub_100038730(v8, ")", 1);
  if ((v49 & 0x10) != 0)
  {
    v12 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v12 = v45;
    }

    v13 = __src;
    goto LABEL_17;
  }

  if ((v49 & 8) != 0)
  {
    v13 = v42;
    v12 = v43;
LABEL_17:
    v9 = v12 - v13;
    if (v12 - v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v54[15] = v12 - v13;
    if (v9)
    {
      memmove(&__dst, v13, v9);
    }

    goto LABEL_23;
  }

  v9 = 0;
  v54[15] = 0;
LABEL_23:
  v54[v9 - 8] = 0;
  if (v54[15] >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v15 = sub_100038DE8(a1, p_dst);
  if ((v54[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  while (1)
  {
    v16 = sqlite3_step(v15);
    if (v16 != 100)
    {
      break;
    }

    v17 = sqlite3_column_text(v15, 1);
    if (!strcmp(v4, v17))
    {
      v18 = *(a2 + 8);
      v19 = "INTEGER";
      if (v18 != 1)
      {
        v20 = &off_102463F00;
        v21 = 5;
        do
        {
          v22 = v20;
          if (!--v21)
          {
            break;
          }

          v20 += 2;
        }

        while (*(v22 - 2) != v18);
        v19 = *v22;
      }

      v23 = sqlite3_column_text(v15, 2);
      if (!strcmp(v19, v23))
      {
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v24 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
        {
          __dst = 68289538;
          *v54 = 2082;
          *&v54[2] = "";
          *&v54[10] = 2082;
          *&v54[12] = v5;
          *&v54[20] = 2082;
          v55 = v4;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Foreign key references are valid, FK_Table:%{public, location:escape_only}s, FK_Col:%{public, location:escape_only}s}", &__dst, 0x26u);
        }

        break;
      }
    }
  }

  sub_1001B1DA0(*(a1 + 8), v15);
  __dst = 0;
  *v54 = 0;
  *&v54[8] = 0;
  sub_100619F14(&v40, &__dst);
  if ((v54[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  v25 = sub_100038730(&v39, "SELECT indexInfo.name FROM pragma_index_list('", 46);
  v26 = strlen(v5);
  v27 = sub_100038730(v25, v5, v26);
  sub_100038730(v27, "') AS indexList, pragma_index_info(indexList.name) AS indexInfo", 63);
  if ((v49 & 0x10) != 0)
  {
    v29 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v29 = v45;
    }

    v30 = __src;
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v28 = 0;
      v54[15] = 0;
      goto LABEL_55;
    }

    v30 = v42;
    v29 = v43;
  }

  v28 = v29 - v30;
  if (v29 - v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  v54[15] = v29 - v30;
  if (v28)
  {
    memmove(&__dst, v30, v28);
  }

LABEL_55:
  v54[v28 - 8] = 0;
  if (v54[15] >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  v32 = sub_100038DE8(a1, v31);
  if ((v54[15] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  if (v16 == 100)
  {
    while (sqlite3_step(v32) == 100)
    {
      v33 = sqlite3_column_text(v32, 0);
      if (!strcmp(v4, v33))
      {
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }

        v34 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
        {
          __dst = 68289538;
          *v54 = 2082;
          *&v54[2] = "";
          *&v54[10] = 2082;
          *&v54[12] = v5;
          *&v54[20] = 2082;
          v55 = v4;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Index exist, FK_Table:%{public, location:escape_only}s, FK_Col:%{public, location:escape_only}s}", &__dst, 0x26u);
        }

        v35 = 1;
        goto LABEL_69;
      }
    }
  }

  v35 = 0;
LABEL_69:
  sub_1001B1DA0(*(a1 + 8), v32);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v36 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    __dst = 68289538;
    *v54 = 2082;
    *&v54[2] = "";
    *&v54[10] = 1026;
    *&v54[12] = v16 == 100;
    *&v54[16] = 1026;
    *&v54[18] = v35;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ForeignKey reference, isReferenceValid:%{public}hhd, isIndexed:%{public}hhd}", &__dst, 0x1Eu);
  }

  if (v16 == 100)
  {
    v10 = v35;
  }

  else
  {
    v10 = 0;
  }

  v39 = v37;
  if (v47 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v41);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if ((v52 & 0x100) != 0)
  {
    goto LABEL_9;
  }

  return v10;
}

std::string *sub_100618CE0@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result->__r_.__value_.__l.__size_)
  {
    v3 = result;
    if ((*(*result->__r_.__value_.__r.__words[2] + 40))(result->__r_.__value_.__r.__words[2]))
    {
      v4 = sqlite3_errmsg(v3->__r_.__value_.__l.__size_);
      return sub_100006044(a2, v4);
    }

    else
    {
      sub_1018E6060();
      result = abort_report_np();
      __break(1u);
    }
  }

  else
  {
    *(a2 + 23) = 11;
    *(a2 + 7) = 1702060386;
    *a2 = *"No database";
  }

  return result;
}

void sub_100618DB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100618DD0(uint64_t a1, const char *a2, void ***a3, void *a4)
{
  sub_1001E573C(a3);
  a4[1] = *a4;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = a2;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getColumnInfo, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_10003848C(buf);
  v8 = sub_100038730((&v19 + 6), "PRAGMA table_info(", 18);
  v9 = strlen(a2);
  v10 = sub_100038730(v8, a2, v9);
  LOBYTE(__dst) = 41;
  sub_100038730(v10, &__dst, 1);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v25)
    {
      v26 = v25;
      v12 = v25;
    }

    v13 = __src;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v13 = v22;
    v12 = v23;
  }

  v11 = v12 - v13;
  if (v12 - v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v16 = v12 - v13;
  if (v11)
  {
    memmove(&__dst, v13, v11);
  }

LABEL_18:
  *(&__dst + v11) = 0;
  if (v16 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1, p_dst);
}

void sub_100619450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

void sub_1006194E4(uint64_t a1, const char *a2, void ***a3)
{
  sub_1001E573C(a3);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v4 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:getTableIndexColumns, table:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_10003848C(buf);
  v5 = sub_100038730((&v17 + 6), "PRAGMA index_list(", 18);
  v6 = strlen(a2);
  v7 = sub_100038730(v5, a2, v6);
  LOBYTE(__dst) = 41;
  sub_100038730(v7, &__dst, 1);
  if ((v25 & 0x10) != 0)
  {
    v9 = v24;
    if (v24 < v23)
    {
      v24 = v23;
      v9 = v23;
    }

    v10 = __src;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v8 = 0;
      v14 = 0;
      goto LABEL_18;
    }

    v10 = v20;
    v9 = v21;
  }

  v8 = v9 - v10;
  if (v9 - v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v14 = v9 - v10;
  if (v8)
  {
    memmove(&__dst, v10, v8);
  }

LABEL_18:
  *(&__dst + v8) = 0;
  if (v14 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1, p_dst);
}

void sub_100619CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a64);
  _Unwind_Resume(a1);
}

uint64_t sub_100619DF4(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
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

  v17 = a1;
  if (v6)
  {
    sub_1001A19D8(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  sub_10000EC00((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_100197A50(&v13);
  return v7;
}

void sub_100619F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100197A50(va);
  _Unwind_Resume(a1);
}

void sub_100619F14(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_100038AF8(a1);
}

uint64_t sub_100619F74(uint64_t a1, __int128 *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  v6 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  sub_100038AF8(a1);
  return a1;
}

void sub_10061A01C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10061B24C(id *a1)
{
  [a1[14] setAirplaneMode:{objc_msgSend(a1[26], "airplaneMode")}];
  v4[0] = [a1[14] airplaneMode];
  v3 = 8;
  return (*(*a1 + 19))(a1, &v3, v4, 1, 0xFFFFFFFFLL, 0);
}

uint64_t sub_10061B43C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061BAB4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658380 != -1)
  {
    dispatch_once(&qword_102658380, block);
  }

  return qword_102637070;
}

uint64_t sub_10061B82C(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Notifying clients that CLClientManager has completed its migration steps.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E66B0();
  }

  v4 = 9;
  return (*(*a1 + 144))(a1, &v4, 0, 0xFFFFFFFFLL);
}

uint64_t sub_10061B988(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018E6794();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MetricHeartbeat, notify", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E67A8();
  }

  v4 = 16;
  return (*(*a1 + 144))(a1, &v4, 0, 0xFFFFFFFFLL);
}

uint64_t sub_10061BB24(uint64_t a1, void *a2)
{
  *sub_10061C8E4(a1, "CLDaemonStatus", a2) = off_102464050;
  v3 = [[CLDaemonStatusStateTracker alloc] initInSilo:*(a1 + 40) withIdentifier:a1];
  *(a1 + 120) = 0u;
  *(a1 + 112) = v3;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 248) = 0;
  *(a1 + 296) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  [v3 setThermalLevel:0xFFFFFFFFLL];
  [*(a1 + 112) setThermalPressure:0xFFFFFFFFLL];
  v4 = IORegisterForSystemPower(a1, (a1 + 128), sub_10026CEE8, (a1 + 120));
  *(a1 + 124) = v4;
  if (v4)
  {
    RunLoopSource = IONotificationPortCreate(kIOMainPortDefault);
    *(a1 + 144) = RunLoopSource;
    if (RunLoopSource)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(RunLoopSource);
    }

    *(a1 + 152) = RunLoopSource;
    v6 = IONotificationPortGetRunLoopSource(*(a1 + 128));
    *(a1 + 136) = v6;
    if (v6)
    {
      v7 = sub_100107858();
      CFRunLoopAddSource(v7, *(a1 + 136), kCFRunLoopDefaultMode);
    }
  }

  address = xmmword_101C81A20;
  v8 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  *(a1 + 160) = v8;
  if (!v8)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v29 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "could not create network reachability", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return a1;
    }

    sub_1018E68B4(buf);
    LOWORD(context.version) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v30);
LABEL_66:
    if (v30 != buf)
    {
      free(v30);
    }

    return a1;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  if (!SCNetworkReachabilitySetCallback(v8, sub_10061C990, &context))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v31 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "could not set client callback for network reachability", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return a1;
    }

    goto LABEL_65;
  }

  v9 = *(a1 + 160);
  v10 = sub_100107858();
  if (SCNetworkReachabilityScheduleWithRunLoop(v9, v10, kCFRunLoopCommonModes))
  {
    flags = 0;
    if (SCNetworkReachabilityGetFlags(*(a1 + 160), &flags))
    {
      if ((flags & 0x40000) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      sub_10061CBA8(a1, v11 & ((flags << 30) >> 31));
      *buf = 0;
      *&buf[8] = 0;
      *&buf[4] = [*(a1 + 112) reachability];
      *&buf[8] = 0;
      LODWORD(v39.version) = 6;
      (*(*a1 + 152))(a1, &v39, buf, 1, 0xFFFFFFFFLL, 0);
    }

    v39.version = 0;
    v39.info = a1;
    memset(&v39.retain, 0, 24);
    v12 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.locationd", sub_10061CC1C, &v39);
    *(a1 + 168) = v12;
    *(a1 + 176) = SCDynamicStoreCreateRunLoopSource(kCFAllocatorDefault, v12, 0);
    sub_10061CE34(a1);
    v13 = CFArrayCreate(kCFAllocatorDefault, &off_102464120, 1, &kCFTypeArrayCallBacks);
    SCDynamicStoreSetNotificationKeys(*(a1 + 168), v13, 0);
    v14 = sub_100107858();
    CFRunLoopAddSource(v14, *(a1 + 176), kCFRunLoopDefaultMode);
    CFRelease(v13);
    if (notify_register_check("com.apple.springboard.hasBlankedScreen", (a1 + 288)))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "com.apple.springboard.hasBlankedScreen";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E68B4(buf);
        v42 = 136315138;
        v43 = "com.apple.springboard.hasBlankedScreen";
        v34 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    if (notify_register_check("com.apple.springboard.lockstate", (a1 + 292)))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v16 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "com.apple.springboard.lockstate";
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E68B4(buf);
        v42 = 136315138;
        v43 = "com.apple.springboard.lockstate";
        v35 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    if (notify_register_check("com.apple.system.lowpowermode", (a1 + 296)))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v17 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "com.apple.system.lowpowermode";
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Could not register for notification %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E68B4(buf);
        v42 = 136315138;
        v43 = "com.apple.system.lowpowermode";
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }

    if (notify_register_check("com.apple.system.thermalpressurelevel", (a1 + 300)))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "com.apple.system.thermalpressurelevel";
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Could not register for notification %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E68B4(buf);
        v42 = 136446210;
        v43 = "com.apple.system.thermalpressurelevel";
        v37 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10027B658, @"com.apple.springboard.hasBlankedScreen", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v20 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v20, a1, sub_10061D058, @"com.apple.springboard.lockstate", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v21 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v21, a1, sub_10061D284, @"com.apple.system.lowpowermode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v22 = CFStringCreateWithCStringNoCopy(0, kOSThermalNotificationName, 0x8000100u, kCFAllocatorNull);
    v23 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v23, a1, sub_10061D4B0, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v24, a1, sub_10061D6DC, @"com.apple.system.thermalpressurelevel", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_10027B884(a1);
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_10061D908(a1);
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_10061DAB8(a1);
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_10061DBC8(a1);
    CFNotificationCenterGetDarwinNotifyCenter();
    sub_10061DC5C(a1);
    CFRelease(v22);
    v25 = objc_alloc_init(NSAutoreleasePool);
    *(a1 + 208) = objc_alloc_init(RadiosPreferences);
    [*(a1 + 208) setDelegate:objc_alloc_init(CLDaemonStatusInternal)];
    [*(a1 + 112) setAirplaneMode:{objc_msgSend(*(a1 + 208), "airplaneMode")}];
    [v25 drain];
    sub_10061DD60(a1);
    sub_10061DFB0(a1, v26, 2);
    sub_10061E040(a1);
    v27 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v27, XPC_ACTIVITY_INTERVAL, 14400);
    xpc_dictionary_set_int64(v27, XPC_ACTIVITY_GRACE_PERIOD, 1800);
    xpc_dictionary_set_string(v27, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v27, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    v28 = [objc_msgSend(*(a1 + 32) "vendor")];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10061E19C;
    handler[3] = &unk_10245EAB8;
    handler[4] = v28;
    xpc_activity_register("com.apple.locationd.MetricHeartbeat", v27, handler);
    xpc_release(v27);
    return a1;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018E688C();
  }

  v32 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "could not schedule network reachability on run loop", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
LABEL_65:
    sub_1018E68B4(buf);
    LOWORD(v39.version) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLDaemonStatus::CLDaemonStatus(id<CLIntersiloUniverse>)", "%s\n", v30);
    goto LABEL_66;
  }

  return a1;
}

void sub_10061C86C(_Unwind_Exception *a1)
{
  sub_1003C93BC(v2, *v3);
  sub_10061E2AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10061C8E4(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102464260;
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

void sub_10061C974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10061C990(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onNetworkReachabilityNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onNetworkReachabilityNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10061FDA4;
  v9[3] = &unk_102464210;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_10061CBA8(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 112) reachability];
  if (result != a2)
  {
    [*(a1 + 112) setReachability:a2];
    v5 = [objc_msgSend(*(a1 + 32) "vendor")];

    return [v5 setCurrentReachability:a2];
  }

  return result;
}

void sub_10061CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onDynamicStore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onDynamicStore, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10061FDB4;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061CE34(SCDynamicStoreRef *a1)
{
  v2 = SCDynamicStoreCopyValue(a1[21], @"com.apple.MobileInternetSharing");
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"Hosts");
    if (Value)
    {
      v5 = CFDictionaryGetValue(Value, @"Type");
      if (v5)
      {
        v6 = CFDictionaryGetValue(v5, @"AirPort");
        if (v6)
        {
          valuePtr[0] = 0;
          if (CFNumberGetValue(v6, kCFNumberIntType, valuePtr))
          {
            v10 = 12;
            (*(*a1 + 19))(a1, &v10, valuePtr, 1, 0xFFFFFFFFLL, 0);
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1018E669C();
          }

          v9 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
          {
            *valuePtr = 0;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "cannot get kMISPropHostsTypeAirPort", valuePtr, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018E6934();
          }
        }
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E669C();
        }

        v8 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
        {
          *valuePtr = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "cannot get kMISPropHostsCurrentByType", valuePtr, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018E6A18();
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E669C();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *valuePtr = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "cannot get kMISPropHosts", valuePtr, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E6AFC();
      }
    }

    CFRelease(v3);
  }
}

void sub_10061D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onLockNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onLockNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061FDBC;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onBatterySaverModeNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onBatterySaverModeNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061FDC4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061D4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onThermalNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onThermalNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061FDCC;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onThermalPressureNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onThermalPressureNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10061FDD4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061D908(int *a1)
{
  state64 = 0;
  if (notify_get_state(a1[73], &state64))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Could not get state for com.apple.springboard.lockstate", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E6DC0();
    }
  }

  else
  {
    v4[0] = state64 != 0;
    *buf = 11;
    (*(*a1 + 152))(a1, buf, v4, 1, 0xFFFFFFFFLL, 0);
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v7 = v4[0];
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "lock screen is %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E6EA4(v4);
    }
  }
}

void sub_10061DAB8(uint64_t a1)
{
  state64 = 0;
  if (notify_get_state(*(a1 + 296), &state64))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Could not get state for com.apple.system.lowpowermode", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E6FA0();
    }
  }

  else
  {
    [*(a1 + 112) setBatterySaverModeEnabled:state64 != 0];
    buf[0] = [*(a1 + 112) batterySaverModeEnabled];
    v3 = 15;
    (*(*a1 + 152))(a1, &v3, buf, 1, 0xFFFFFFFFLL, 0);
  }
}

id sub_10061DBC8(id *a1)
{
  v4[0] = OSThermalNotificationCurrentLevel();
  result = [a1[14] thermalLevel];
  if (result != v4[0])
  {
    v3 = 13;
    (*(*a1 + 19))(a1, &v3, v4, 1, 0xFFFFFFFFLL, 0);
    return [a1[14] setThermalLevel:v4[0]];
  }

  return result;
}

void sub_10061DC5C(uint64_t a1)
{
  state64 = 0;
  if (notify_get_state(*(a1 + 300), &state64))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Could not get state for thermal pressure", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E7084();
    }
  }

  else
  {
    [*(a1 + 112) setThermalPressure:state64];
    v3 = [*(a1 + 112) thermalPressure];
    v4 = 18;
    *buf = v3;
    (*(*a1 + 152))(a1, &v4, buf, 1, 0xFFFFFFFFLL, 0);
  }
}

void sub_10061DD60(void *a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.version) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering for restricted mode notification", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E7168();
  }

  v3 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.registerForAirplaneModeNotifications", @"com.apple.radios.plist");
  a1[38] = v3;
  if (v3)
  {
    buf.version = 0;
    memset(&buf.retain, 0, 24);
    buf.info = a1;
    if (SCPreferencesSetCallback(v3, sub_10061EF88, &buf))
    {
      v4 = a1[38];
      v5 = sub_100107858();
      if (!SCPreferencesScheduleWithRunLoop(v4, v5, kCFRunLoopDefaultMode))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E688C();
        }

        v6 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
        {
          *v9 = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Failed to schedule SCPreferences notification", v9, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018E724C();
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Failed to set SCPreferences callback", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E7330();
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf.version) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Failed to create SCPreferences", &buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E7414();
    }
  }
}

uint64_t sub_10061DFB0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    v3 = result;
    [*(result + 112) setRestrictedMode:sub_10061EF18(result)];
    v5[0] = [v3[14] restrictedMode];
    v4 = 14;
    return (*(*v3 + 19))(v3, &v4, v5, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_10061E040(_BYTE *a1)
{
  v10 = 0;
  v2 = sub_1000206B4();
  if (sub_10001CB4C(v2, off_1025D76D0, &v10) && !v10)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v3 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "locationd was started after an unclean shutdown", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E74F8();
    }

    a1[312] = 1;
    v8 = 17;
    (*(*a1 + 144))(a1, &v8, 1, 0xFFFFFFFFLL);
  }

  v4 = sub_1000206B4();
  v7 = 0;
  sub_100043360(v4, off_1025D76D0, &v7);
  v5 = *sub_1000206B4();
  return (*(v5 + 944))();
}

id sub_10061E19C(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_get_state(activity);
  if (result == 2)
  {
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018E6794();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        v6 = 134349056;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "failed to set MetricHeartbeat activity as DONE.  current state is %{public}ld", &v6, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E75DC(activity);
      }
    }

    return [*(a1 + 32) triggerMetricHeartbeatNotification];
  }

  return result;
}

uint64_t sub_10061E2AC(uint64_t a1)
{
  *a1 = off_102464260;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10061E330(uint64_t a1)
{
  *a1 = off_102464050;
  [*(a1 + 264) invalidate];

  *(a1 + 264) = 0;
  *(a1 + 240) = 0;

  *(a1 + 256) = 0;
  if (*(a1 + 152))
  {
    v2 = sub_100107858();
    CFRunLoopRemoveSource(v2, *(a1 + 152), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 152));
    CFRelease(*(a1 + 152));
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    IONotificationPortDestroy(v3);
  }

  if (*(a1 + 136))
  {
    v4 = sub_100107858();
    CFRunLoopRemoveSource(v4, *(a1 + 136), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 136));
    CFRelease(*(a1 + 136));
  }

  if (*(a1 + 120))
  {
    IODeregisterForSystemPower((a1 + 120));
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 124);
  if (v6)
  {
    IOServiceClose(v6);
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = sub_100107858();
    if (SCNetworkReachabilityUnscheduleFromRunLoop(v7, v8, kCFRunLoopCommonModes))
    {
      CFRelease(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 176))
  {
    v9 = sub_100107858();
    CFRunLoopRemoveSource(v9, *(a1 + 176), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 176));
    CFRelease(*(a1 + 176));
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    v12 = [v11 delegate];
    [*(a1 + 208) setDelegate:0];
  }

  sub_10061E50C(a1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  sub_10061E600(a1);

  *(a1 + 112) = 0;
  sub_1003C93BC(a1 + 216, *(a1 + 224));

  return sub_10061E2AC(a1);
}

void sub_10061E50C(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v11 = v1;
    v12 = v2;
    if (qword_1025D4870 != -1)
    {
      sub_1018E669C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "unregistering for battery status changed", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E76FC();
    }

    v5 = *(a1 + 200);
    if (v5)
    {
      IOObjectRelease(v5);
      *(a1 + 200) = 0;
    }

    v6 = *(a1 + 192);
    if (v6)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v6);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        v9 = sub_100107858();
        CFRunLoopRemoveSource(v9, v8, kCFRunLoopDefaultMode);
      }

      IONotificationPortDestroy(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    *(a1 + 184) = 0;
  }
}

void sub_10061E600(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    v3 = sub_100107858();
    SCPreferencesUnscheduleFromRunLoop(v1, v3, kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 304));
    *(a1 + 304) = 0;
  }
}

void sub_10061E654(uint64_t a1)
{
  sub_10061E330(a1);

  operator delete();
}

uint64_t sub_10061E708(_BYTE *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 18)
  {
    if (v2 == 20)
    {
      v3 = *(*a1 + 144);
      goto LABEL_11;
    }

    if (v2 == 19)
    {
      v3 = *(*a1 + 144);
      goto LABEL_11;
    }
  }

  else if (v2 == 7)
  {
    sub_10061E7F4(a1);
  }

  else if (v2 == 17 && a1[312] == 1)
  {
    v3 = *(*a1 + 144);
LABEL_11:
    v3();
  }

  return 1;
}

void sub_10061E7F4(uint64_t a1)
{
  if ((*(a1 + 184) & 1) == 0)
  {
    if (sub_100714F08())
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E669C();
      }

      v2 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering for battery status changed", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E78C4();
      }

      notification = 0;
      v3 = IONotificationPortCreate(kIOMainPortDefault);
      *(a1 + 192) = v3;
      if (v3)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v3);
        if (RunLoopSource)
        {
          v5 = RunLoopSource;
          v6 = sub_100107858();
          CFRunLoopAddSource(v6, v5, kCFRunLoopDefaultMode);
          v7 = *(a1 + 192);
          v8 = IOServiceMatching("IOPMPowerSource");
          if (!IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, sub_10061ED04, a1, &notification))
          {
            sub_10061EC70(a1, notification);
          }

          IOObjectRelease(notification);
        }

        else
        {
          IONotificationPortDestroy(*(a1 + 192));
          *(a1 + 192) = 0;
        }
      }

      *(a1 + 184) = 1;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E669C();
      }

      v9 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Attempting to register for battery status changes on a battery-less device, no-op", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E77E0();
      }
    }
  }
}

uint64_t sub_10061E9B0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 20)
  {
    v2 = *(*a1 + 144);
    goto LABEL_5;
  }

  if (*a2 == 19)
  {
    v2 = *(*a1 + 144);
LABEL_5:
    v2();
  }

  return 1;
}

void sub_10061EA48(uint64_t a1)
{
  v1 = *(a1 + 32);

  *(v1 + 256) = 0;
}

void sub_10061EA74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 280);
  v6 = [*(a1 + 112) reachability];
  v7 = v6;
  v8 = a3 << 30;
  if ((a3 & 0x40000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = v9 & (v8 >> 31);
  v14[0] = v6;
  v14[1] = v9 & (v8 >> 31);
  v11 = *(a1 + 248);
  v15 = *(a1 + 248);
  v12 = v5 >= 0.0;
  if (v5 >= 3.0)
  {
    v12 = 0;
  }

  v16 = v12;
  sub_10061CBA8(a1, v10);
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v13 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v19 = 2082;
    v18 = 0;
    v20 = "";
    v21 = 1026;
    v22 = v11;
    v23 = 2050;
    v24 = v10;
    v25 = 1026;
    v26 = a3;
    v27 = 2050;
    v28 = v5;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reachability information, aboutToSleep:%{public}hhd, reachability:%{public, location:CLDaemonStatus_Type::Reachability}lld, reachabilityFlags:%{public}d, timeSinceWake_s:%{public}.09f}", buf, 0x32u);
  }

  if (v7 != v10)
  {
    *buf = 6;
    (*(*a1 + 152))(a1, buf, v14, 1, 0xFFFFFFFFLL, 0);
  }
}

uint64_t sub_10061EC2C(int a1)
{
  v2 = sub_100040E24();
  if (a1 == 4 && v2)
  {
    return 1;
  }

  LODWORD(result) = sub_10071C698();
  if (a1 == 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10061EC70(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      if (!IOServiceAddInterestNotification(*(a1 + 192), v5, "IOGeneralInterest", sub_1000E8BEC, a1, (a1 + 200)))
      {
        sub_1000E8E10(a1, v5);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10061ED04(uint64_t a1, int a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onMatchedBatteries", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onMatchedBatteries, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  v6 = [*(a1 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10061FE0C;
  v7[3] = &unk_102455A60;
  v7[4] = a1;
  v8 = a2;
  [v6 sync:v7];
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

const __SCPreferences *sub_10061EF18(uint64_t a1)
{
  result = *(a1 + 304);
  if (result)
  {
    SCPreferencesSynchronize(result);
    result = SCPreferencesGetValue(*(a1 + 304), @"LowPowerMode");
    if (result)
    {
      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFBooleanGetTypeID())
      {
        return (CFBooleanGetValue(v3) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10061EF88(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onRestrictedPowerMode", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onRestrictedPowerMode, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10061FE1C;
  v9[3] = &unk_102464210;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061F260(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10061F35C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10061F38C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_1024643B0;
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

void sub_10061F470(_BYTE *a1, void *a2)
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
        sub_1018E68F8();
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
        sub_1018E853C(a1, a2);
      }
    }
  }
}

BOOL sub_10061F6A4(uint64_t a1, void *a2, int *a3)
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
      sub_1018E68F8();
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
      sub_1018E874C(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_10061F918(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E68F8();
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
      sub_1018E8978(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E68F8();
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
      sub_1018E8854(a1);
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
              sub_1018E690C();
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
                sub_1018E690C();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLDaemonStatus_Type::Notification, CLDaemonStatus_Type::NotificationData, char, char>::listClients() [Notification_T = CLDaemonStatus_Type::Notification, NotificationData_T = CLDaemonStatus_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_10061FCDC(uint64_t a1)
{
  sub_10061FF54(a1);

  operator delete();
}

void sub_10061FE4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102464340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10061FED0(uint64_t **a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    if (v2[4] >= v3)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < v3];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_10061FF54(uint64_t a1)
{
  *a1 = &off_1024643B0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100620078(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_100620098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

_DWORD *sub_1006200A8(_DWORD *result, int a2)
{
  ++*result;
  result[5] += a2;
  return result;
}

uint64_t sub_1006200C4(unsigned int *a1)
{
  memset(v19, 0, 44);
  result = sub_100620490(a1, v19);
  if ((result & 1) == 0)
  {
    v5 = a1[10];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      LODWORD(v3) = *a1;
      v3 = *&v3;
      v4 = v5;
      v7 = v3 / v5;
    }

    v8 = a1[4];
    v9 = a1[1];
    if (v8)
    {
      v3 = v9;
      v4 = v8;
      v6 = v9 / v8;
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    if (v9)
    {
      LODWORD(v3) = a1[2];
      LODWORD(v4) = a1[3];
      v11 = *&v3 / v9;
      v3 = *&v4;
      v12 = *&v4 / v9;
    }

    if (v8)
    {
      LODWORD(v3) = a1[5];
      v3 = *&v3;
      v4 = v8;
      v10 = v3 / v8;
    }

    if (v5)
    {
      LODWORD(v3) = a1[6];
      v4 = v5;
      v13 = *&v3 / v5;
      v14 = a1[7];
      v3 = v14;
      v15 = v14 / v4;
      if (v14)
      {
LABEL_12:
        LODWORD(v3) = a1[8];
        LODWORD(v4) = a1[9];
        v16 = *&v3 / v14;
        v17 = *&v4 / v14;
LABEL_15:
        v18 = v17;
        v20[0] = @"alsRequestResponseCount";
        v21[0] = [NSNumber numberWithUnsignedInt:*a1];
        v20[1] = @"alsRequestResponseScanBufferFractionUpperBound";
        v21[1] = [NSNumber numberWithDouble:v7];
        v20[2] = @"apLocationFoundCount";
        v21[2] = [NSNumber numberWithUnsignedInt:a1[1]];
        v20[3] = @"apLocationFoundFraction";
        v21[3] = [NSNumber numberWithDouble:v6];
        v20[4] = @"apLocationFoundInAlsCacheCount";
        v21[4] = [NSNumber numberWithUnsignedInt:a1[2]];
        v20[5] = @"apLocationFoundInAlsCacheFraction";
        v21[5] = [NSNumber numberWithDouble:v11];
        v20[6] = @"apLocationFoundInTilesCount";
        v21[6] = [NSNumber numberWithUnsignedInt:a1[3]];
        v20[7] = @"apLocationFoundInTilesFraction";
        v21[7] = [NSNumber numberWithDouble:v12];
        v20[8] = @"apLocationLookupCount";
        v21[8] = [NSNumber numberWithUnsignedInt:a1[4]];
        v20[9] = @"apLocationsInAlsRequestResponseCount";
        v21[9] = [NSNumber numberWithUnsignedInt:a1[5]];
        v20[10] = @"apLocationsInAlsRequestResponseFractionUpperBound";
        v21[10] = [NSNumber numberWithDouble:v10];
        v20[11] = @"emptyScanBufferLookupCount";
        v21[11] = [NSNumber numberWithUnsignedInt:a1[6]];
        v20[12] = @"emptyScanBufferLookupFraction";
        v21[12] = [NSNumber numberWithDouble:v13];
        v20[13] = @"scanBufferFoundApLocationCount";
        v21[13] = [NSNumber numberWithUnsignedInt:a1[7]];
        v20[14] = @"scanBufferFoundApLocationFraction";
        v21[14] = [NSNumber numberWithDouble:v15];
        v20[15] = @"scanBufferFoundApLocationInAlsCacheCount";
        v21[15] = [NSNumber numberWithUnsignedInt:a1[8]];
        v20[16] = @"scanBufferFoundApLocationInAlsCacheFraction";
        v21[16] = [NSNumber numberWithDouble:v16];
        v20[17] = @"scanBufferFoundApLocationInTilesCount";
        v21[17] = [NSNumber numberWithUnsignedInt:a1[9]];
        v20[18] = @"scanBufferFoundApLocationInTilesFraction";
        v21[18] = [NSNumber numberWithDouble:v18];
        v20[19] = @"scanBufferLookupCount";
        v21[19] = [NSNumber numberWithUnsignedInt:a1[10]];
        [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:20];
        result = AnalyticsSendEvent();
        *(a1 + 7) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        return result;
      }
    }

    else
    {
      v14 = a1[7];
      v13 = 0.0;
      v15 = 0.0;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_15;
  }

  return result;
}

void sub_100620A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100620F84(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v45, *a1);
  v44 = 0;
  *(a2 + 68) = 0xFFFF;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 104) = _Q1;
  *(a2 + 120) = _Q1;
  *(a2 + 136) = _Q1;
  *(a2 + 152) = 0;
  *(a2 + 156) = 0xBFF0000000000000;
  *(a2 + 172) = 0;
  *(a2 + 164) = 0;
  *(a2 + 180) = 0;
  *(a2 + 184) = 0xBFF0000000000000;
  *(a2 + 192) = 0x7FFFFFFF;
  *(a2 + 196) = 0;
  *(a2 + 212) = 0;
  *(a2 + 204) = 0;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 48) = -1;
  *(a2 + 220) = 0;
  *(a2 + 224) = 0x30000000BLL;
  *a2 = -1;
  *(a2 + 232) = -1;
  *(a2 + 56) = -1;
  *(a2 + 32) = v8;
  *(a2 + 264) = 0xFFFF;
  *(a2 + 268) = 0;
  *(a2 + 276) = 0;
  *(a2 + 284) = xmmword_101C75BF0;
  *(a2 + 300) = _Q1;
  *(a2 + 316) = _Q1;
  *(a2 + 332) = _Q1;
  *(a2 + 348) = 0;
  *(a2 + 376) = 0;
  *(a2 + 352) = 0xBFF0000000000000;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 380) = 0xBFF0000000000000;
  *(a2 + 388) = 0x7FFFFFFF;
  *(a2 + 416) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v45, "cdmaCellFromCellMonitorDict");
  }

  cf = 0;
  if ((sub_10006EB64(v45, kCTCellMonitorCellRadioAccessTechnology, &cf) & 1) == 0)
  {
    *(a2 + 224) = 11;
LABEL_23:
    v10 = 1;
    goto LABEL_24;
  }

  if (!cf)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellRadioAccessTechnology, no cfstring", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8D3C(buf);
      *v51 = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    goto LABEL_23;
  }

  *(a2 + 224) = sub_10006BCC0(cf);
  memset(v51, 0, sizeof(v51));
  sub_100005A24(cf, v51);
  v9 = *(a2 + 224) - 3;
  v10 = v9 < 3;
  if (v9 >= 3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v12 = v51;
      if ((v51[23] & 0x80u) != 0)
      {
        v12 = *v51;
      }

      v13 = *(a2 + 224);
      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 1026;
      *&buf[14] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellRadioAccessTechnology, it's not CDMA! %{public}s %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8D3C(buf);
      v37 = v51;
      if ((v51[23] & 0x80u) != 0)
      {
        v37 = *v51;
      }

      v38 = *(a2 + 224);
      v46 = 136446466;
      v47 = v37;
      v48 = 1026;
      v49 = v38;
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  if (v51[23] < 0)
  {
    operator delete(*v51);
  }

LABEL_24:
  sub_1000052CC(v45, kCTCellMonitorBandClass, (a2 + 48));
  sub_1000052CC(v45, kCTCellMonitorBaseStationId, (a2 + 44));
  if (sub_1000052CC(v45, kCTCellMonitorBaseStationLat, &v44 + 1) && sub_1000052CC(v45, kCTCellMonitorBaseStationLong, &v44))
  {
    *(a2 + 88) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = SHIDWORD(v44);
    *(a2 + 144) = Current;
    v17 = v44 * 0.0000694444444;
    *(a2 + 72) = v16 * 0.0000694444444;
    *(a2 + 80) = v17;
    *(a2 + 200) = 1;
  }

  v42 = 0;
  if (sub_10006EB64(v45, kCTCellMonitorCellType, &v42))
  {
    if (v42)
    {
      *(a2 + 228) = sub_10006F020(v42);
      memset(buf, 0, 24);
      sub_100005A24(v42, buf);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018E8D14();
      }

      v18 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellType, no cfstring", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E8D3C(buf);
        *v51 = 0;
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  sub_1000052CC(v45, kCTCellMonitorChannelNumber, (a2 + 52));
  sub_1000052CC(v45, kCTCellMonitorMCC, a2);
  sub_1000052CC(v45, kCTCellMonitorMNC, (a2 + 232));
  sub_1000052CC(v45, kCTCellMonitorNID, (a2 + 36));
  sub_1000052CC(v45, kCTCellMonitorPNOffset, (a2 + 56));
  sub_1000052CC(v45, kCTCellMonitorSID, (a2 + 32));
  sub_1000052CC(v45, kCTCellMonitorZoneId, (a2 + 40));
  sub_100005050(v45, kCTCellMonitorSectorId, a2 + 240);
  if (sub_1000052CC(v45, kCTCellMonitorSectorLat, &v44 + 1) && sub_1000052CC(v45, kCTCellMonitorSectorLong, &v44) && v44)
  {
    *(a2 + 284) = 0;
    v19 = CFAbsoluteTimeGetCurrent();
    v20 = SHIDWORD(v44);
    *(a2 + 340) = v19;
    v21 = v44 * 0.0000694444444;
    *(a2 + 268) = v20 * 0.0000694444444;
    *(a2 + 276) = v21;
    *(a2 + 396) = 1;
  }

  sub_1000052CC(v45, kCTCellMonitorLtmOffset, (a2 + 420));
  sub_1000052CC(v45, kCTCellMonitorDayLightSaving, (a2 + 424));
  v40 = 0.0;
  v41 = 0.0;
  if (sub_100023B78(v45, kCTCellMonitorEcio, &v41))
  {
    *(a2 + 60) = v41;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v22 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 60);
      *buf = 67109376;
      *&buf[4] = v23;
      *&buf[8] = 2048;
      *&buf[10] = v41;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "kCTCellMonitorEcio: %d, %.1lf", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8D3C(buf);
      v24 = *(a2 + 60);
      *v51 = 67109376;
      *&v51[4] = v24;
      *&v51[8] = 2048;
      *&v51[10] = v41;
      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  else
  {
    *(a2 + 60) = 0;
  }

  if (sub_100023B78(v45, kCTCellMonitorEcioFiltered, &v40))
  {
    *(a2 + 64) = v40;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v26 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a2 + 64);
      *buf = 67109376;
      *&buf[4] = v27;
      *&buf[8] = 2048;
      *&buf[10] = v40;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "kCTCellMonitorEcioFiltered: %d, %.1lf", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8D3C(buf);
      v28 = *(a2 + 64);
      *v51 = 67109376;
      *&v51[4] = v28;
      *&v51[8] = 2048;
      *&v51[10] = v40;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  else
  {
    *(a2 + 64) = 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v30 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100621C1C(a2, buf);
    v31 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v51 = 136315138;
    *&v51[4] = v31;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, %s", v51, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(buf);
    sub_100621C1C(a2, v51);
    if ((v51[23] & 0x80u) == 0)
    {
      v33 = v51;
    }

    else
    {
      v33 = *v51;
    }

    v46 = 136315138;
    v47 = v33;
    v34 = _os_log_send_and_compose_impl();
    if (v51[23] < 0)
    {
      operator delete(*v51);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  sub_100005DA4(v45);
  return v10;
}

void sub_100621BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100621C1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v30);
  v4 = sub_100038730(&v31, "[", 1);
  sub_100038730(v4, " MCC=", 5);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " Derived=", 9);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND SID=", 9);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND NID=", 9);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND BSID=", 10);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND ZONEID=", 12);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND PNOFFSET=", 14);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND RSCP=", 10);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND ECN0=", 10);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " AND BANDCLASS=", 15);
  v14 = std::ostream::operator<<();
  sub_100038730(v14, " AND CHANNEL=", 13);
  v15 = std::ostream::operator<<();
  v16 = sub_100038730(v15, " AND SectorID='", 15);
  v19 = *(a1 + 240);
  v18 = a1 + 240;
  v17 = v19;
  v20 = *(v18 + 23);
  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 8);
  }

  v23 = sub_100038730(v16, v21, v22);
  v24 = sub_100038730(v23, "'", 1);
  sub_100038730(v24, " ]", 2);
  sub_100073518(v30, __p);
  if (v29 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  sub_10000EC00(a2, v25);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = v26;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100621F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100621F84(CFDictionaryRef *a1, _DWORD *a2)
{
  sub_100005548(v10, *a1);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a2 + 1) = v3;
  *a2 = v3;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v10, "gsmCellFromCellMonitorDict");
  }

  sub_1000052CC(v10, kCTCellMonitorMCC, a2);
  sub_1000052CC(v10, kCTCellMonitorMNC, a2 + 1);
  sub_1000052CC(v10, kCTCellMonitorLAC, a2 + 2);
  sub_1000052CC(v10, kCTCellMonitorCellId, a2 + 3);
  sub_1000052CC(v10, kCTCellMonitorUARFCN, a2 + 4);
  sub_1000052CC(v10, kCTCellMonitorARFCN, a2 + 4);
  sub_1000052CC(v10, kCTCellMonitorPSC, a2 + 5);
  sub_1000052CC(v10, kCTCellMonitorSCN, a2 + 5);
  sub_1000052CC(v10, kCTCellMonitorRSCP, a2 + 6);
  sub_1000052CC(v10, kCTCellMonitorECN0, a2 + 7);
  v4 = 0;
  if (*a2 >= 1 && (a2[1] & 0x80000000) == 0)
  {
    v4 = a2[3] >= 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10016B7CC(__p);
    v6 = v20 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *&buf[4] = v4;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, result, %d, %s", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(__p);
    sub_10016B7CC(buf);
    if (v14 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    v15 = 67109378;
    v16 = v4;
    v17 = 2080;
    v18 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v14 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::gsmCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::Cell &)", "%s\n", v9);
    if (v9 != __p)
    {
      free(v9);
    }
  }

  sub_100005DA4(v10);
  return v4;
}

void sub_100622314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10062233C@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v20);
  v2 = sub_100038730(&v21, "[", 1);
  sub_100038730(v2, " MCC=", 5);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, " AND MNC=", 9);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, " AND TAC=", 9);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " AND CI=", 8);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND NRARFCN=", 13);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND PID=", 9);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND RSCP=", 10);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND ECN0=", 10);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND BANDINFO=", 14);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND SCS=", 9);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND GSCN=", 10);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " AND BANDWIDTH=", 15);
  v14 = std::ostream::operator<<();
  sub_100038730(v14, " ]", 2);
  sub_100073518(v20, __p);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  sub_10000EC00(a1, v15);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100622624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100622668(CFDictionaryRef *a1, _DWORD *a2)
{
  sub_100005548(v10, *a1);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a2 + 1) = v3;
  *a2 = v3;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v10, "scdmaCellFromCellMonitorDict");
  }

  sub_1000052CC(v10, kCTCellMonitorMCC, a2);
  sub_1000052CC(v10, kCTCellMonitorMNC, a2 + 1);
  sub_1000052CC(v10, kCTCellMonitorLAC, a2 + 2);
  sub_1000052CC(v10, kCTCellMonitorCellId, a2 + 3);
  sub_1000052CC(v10, kCTCellMonitorUARFCN, a2 + 4);
  sub_1000052CC(v10, kCTCellMonitorARFCN, a2 + 4);
  sub_1000052CC(v10, kCTCellMonitorPSC, a2 + 5);
  sub_1000052CC(v10, kCTCellMonitorSCN, a2 + 5);
  sub_1000052CC(v10, kCTCellMonitorRSCP, a2 + 6);
  sub_1000052CC(v10, kCTCellMonitorECN0, a2 + 7);
  v4 = 0;
  if (*a2 >= 1 && (a2[1] & 0x80000000) == 0)
  {
    v4 = a2[3] >= 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10016B7CC(__p);
    v6 = v20 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *&buf[4] = v4;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, result, %d, %s", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(__p);
    sub_10016B7CC(buf);
    if (v14 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    v15 = 67109378;
    v16 = v4;
    v17 = 2080;
    v18 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v14 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::scdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::ScdmaCell &)", "%s\n", v9);
    if (v9 != __p)
    {
      free(v9);
    }
  }

  sub_100005DA4(v10);
  return v4;
}

void sub_1006229F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_100622A20(id a1)
{
  sub_10001CAF4(&v2);
  v4 = 0;
  v1 = sub_10001CB4C(v2, "printCellMonitorCSV", &v4);
  byte_102658390 = v1 & v4;
  if (v3)
  {
    sub_100008080(v3);
  }
}

void sub_100622A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100622ACC(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) && (*(*a2 + 48))(a2) && (*(*a2 + 40))(a2))
  {
    if ((*(a2 + 3128) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = cbrtf(fmaxf(*(a2 + 1048), 0.0));
    v5 = powf(*(a2 + 4532), 0.66667);
    v6 = 0;
    v7 = *(a2 + 1056);
    v31[0] = *(a2 + 1036);
    v31[1] = v7;
    v8 = *(a2 + 1296);
    v31[2] = v4;
    v31[3] = v8;
    v9 = *(a2 + 1544);
    v31[4] = *(a2 + 1340);
    v31[5] = v9;
    v10 = *(a2 + 1740);
    v31[6] = *(a2 + 1720);
    v31[7] = v10;
    v11 = *(a2 + 1884);
    v31[8] = *(a2 + 1808);
    v31[9] = v11;
    v12 = *(a2 + 2064);
    v31[10] = *(a2 + 1904);
    v31[11] = v12;
    v13 = *(a2 + 2096);
    v31[12] = *(a2 + 2076);
    v31[13] = v13;
    v14 = *(a2 + 2384);
    v31[14] = *(a2 + 2236);
    v31[15] = v14;
    v15 = *(a2 + 2664);
    v31[16] = *(a2 + 2612);
    v31[17] = v15;
    v16 = *(a2 + 3056);
    v31[18] = *(a2 + 3004);
    v31[19] = v16;
    v17 = &qword_101C81A68;
    v18 = 4.32357269;
    v31[20] = *(a2 + 4528);
    v31[21] = v5;
    do
    {
      v19 = *(v17 - 1);
      v20 = v17[1];
      v21 = 0.0;
      if (v20 > 2.22044605e-16 && v19 > 2.22044605e-16)
      {
        v21 = v19 * ((v31[v6] - *v17) / v20);
      }

      v18 = v18 + v21;
      ++v6;
      v17 += 3;
    }

    while (v6 != 22);
    v30 = 0;
    v23 = v18;
    v29 = v23;
    if (v23 <= 0.0)
    {
      v24 = &v30;
    }

    else
    {
      v24 = &v29;
    }

    sub_100623A2C((a1 + 24), v24);
    *(a1 + 8) = 1;
    v25 = a1 + 8;
    sub_100457CE4(v25);
    v26 = *(v25 + 4);
    v27 = dword_100000000;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  return v26 | v27;
}

unint64_t sub_100622D30(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) && (*(*a2 + 48))(a2) && (*(*a2 + 40))(a2))
  {
    if ((*(a2 + 3128) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = 0;
    v5 = *(a2 + 1052);
    v6.f32[0] = sqrtf(fmaxf(*(a2 + 1056), 0.0));
    v6.f32[1] = *(a2 + 4528) * v5.f32[0];
    v30[0] = vcvtq_f64_f32(v5);
    v30[1] = vcvtq_f64_f32(v6);
    v7 = *(a2 + 1188);
    v31 = *(a2 + 1180);
    v32 = v7;
    v8 = *(a2 + 1952);
    v33 = *(a2 + 1816);
    v34 = v8;
    v9 = *(a2 + 2076);
    v35 = *(a2 + 2064);
    v36 = v9;
    v10 = *(a2 + 2260);
    v37 = *(a2 + 2096);
    v38 = v10;
    v11 = *(a2 + 2384);
    v39 = *(a2 + 2272);
    v40 = v11;
    v12 = *(a2 + 2556);
    v41 = *(a2 + 2548);
    v42 = v12;
    v13 = *(a2 + 2676);
    v43 = *(a2 + 2596);
    v44 = v13;
    v14 = *(a2 + 2988);
    v45 = *(a2 + 2844);
    v46 = v14;
    v15 = *(a2 + 3056);
    v47 = *(a2 + 3040);
    v48 = v15;
    v16 = &qword_101C81C78;
    v49 = *(a2 + 3104);
    v17 = 2.80570798;
    do
    {
      v18 = *(v16 - 1);
      v19 = v16[1];
      v20 = 0.0;
      if (v19 > 2.22044605e-16 && v18 > 2.22044605e-16)
      {
        v20 = v18 * ((*(v30 + v4) - *v16) / v19);
      }

      v17 = v17 + v20;
      v4 += 8;
      v16 += 3;
    }

    while (v4 != 184);
    v29 = 0;
    v22 = v17;
    v28 = v22;
    if (v22 <= 0.0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = &v28;
    }

    sub_100623A2C((a1 + 60), v23);
    *(a1 + 44) = 1;
    v24 = a1 + 44;
    sub_100457CE4(v24);
    v25 = *(v24 + 4);
    v26 = dword_100000000;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  return v25 | v26;
}

unint64_t sub_100622F8C(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v8 = *(a2 + 4532);
  v9 = *(a2 + 4528);
  v10 = sub_100622ACC(a1, a2);
  v11 = sub_100622D30(a1, a2);
  v13 = v11;
  v14 = *&v11;
  v15 = 0.0;
  if ((v10 & 0x100000000) != 0 && (v11 & 0x100000000) != 0)
  {
    LODWORD(v12) = v10;
    v15 = sub_10111AF98(v12, *&v11, v8);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a2 + 32))(a2);
  v18 = -1.0;
  v19 = 2.1;
  v20 = -1.0;
  v21 = -1.0;
  if (v17)
  {
    v22 = 0.0;
    if ((v13 & 0x100000000) != 0)
    {
      v22 = v14;
    }

    if (*(a2 + 1048) >= v22)
    {
      v23 = *(a2 + 1048);
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_10111AF1C(*(a2 + 1056), v23, *(a2 + 1052) * 60.0, v9);
    v19 = sub_10111AF60(v24, v23, v8);
    v21 = v24;
    v20 = v23;
    v18 = v19;
  }

  v25 = v20;
  if (v16)
  {
    v19 = v15;
  }

  v26 = *(a2 + 1052) == 0.0;
  if (*(a2 + 1048) < 0.4)
  {
    v26 = 1;
  }

  v27 = *(a2 + 1056) < 40.0;
  v28 = v26 && v27;
  if (v26 && v27)
  {
    v29 = 2.1;
  }

  else
  {
    v29 = v19;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v30 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219776;
    v31 = *&v10;
    v32 = -1.0;
    if ((v10 & dword_100000000) == 0)
    {
      v31 = -1.0;
    }

    v43 = v31;
    v44 = 2048;
    if ((v13 & 0x100000000) != 0)
    {
      v33 = v14;
    }

    else
    {
      v33 = -1.0;
    }

    v45 = v33;
    v46 = 2048;
    if (v16)
    {
      v32 = v15;
    }

    v47 = v32;
    v48 = 2048;
    v49 = v18;
    v50 = 2048;
    v51 = v21;
    v52 = 2048;
    v53 = v25;
    v54 = 2048;
    v55 = v29;
    v56 = 1024;
    v57 = v28;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "RowingPhoneWorkRate,speedML,%f,amplitudeML,%f,metsDM,%f,metsLegacy,%f,speedLegacy,%f,ampLegacy,%f,finalMets,%f,notRowing,%d", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v35 = *&v10;
    v34 = HIDWORD(v13);
    v36 = v14;
    v41 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::optional<float> CLCalorieRowingModelPhone::computeWorkRate(const CLNatalieModelInput &, double &, double &)", "%s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  else
  {
    v34 = HIDWORD(v13);
    v35 = *&v10;
    v36 = v14;
  }

  v37 = 0.0;
  if ((v10 & dword_100000000) != 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0.0;
  }

  *a3 = v38;
  if (v34)
  {
    v37 = v36;
  }

  *a4 = v37;
  v39 = fmaxf(v29, 2.1);
  if (v16 | v17)
  {
    return LODWORD(v39) | dword_100000000;
  }

  else
  {
    return 0;
  }
}

void sub_1006233DC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
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
    sub_1018E8E00(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100623A80(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100623B10(a1, 0, *(a1 + 5));
  }
}

uint64_t sub_100623538(uint64_t a1, __n128 a2)
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
      sub_1018E8DC4();
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
        sub_1018E8DD8();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v16);
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
      sub_1018E8DC4();
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
        sub_1018E8DD8();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v17);
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

unsigned __int16 *sub_100623A2C(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_100623A80(uint64_t a1)
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

void sub_100623B10(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
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
      sub_1018E8DD8();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v17);
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
    sub_100623DF0(v12, a2, Current, a3);
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

uint64_t sub_100623DF0(uint64_t a1, int a2, double a3, double a4)
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

double sub_100623E84(uint64_t a1)
{
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 356) = 0;
  *(a1 + 360) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 676) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 25) = 0u;
  return result;
}