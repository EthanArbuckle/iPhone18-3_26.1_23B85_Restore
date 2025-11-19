void sub_100623EE0()
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

uint64_t sub_100623F98(uint64_t a1)
{
  v3 = 0x100000003;
  v4 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100624028(a1, &v3, &off_102464580);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100624000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100624028(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = sub_1006062D8(a1, a2);
  if (sub_100023B68(v5))
  {
    sub_100608EC8(a1, "Status", a3, 0, 0);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Fence: No access to state DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E91A0(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLFenceMonitorDatabase::CLFenceMonitorDatabase(const CLSqliteDatabase::SqliteProperties &, const CLSqliteDatabase::ColumnInfo *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1;
}

uint64_t sub_1006241D4(uint64_t a1, uint64_t a2)
{
  if (sub_100023B68(a1))
  {
    v4 = sub_100BC97B0(a2);
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      sub_100BC8988(a2, &__p);
      v6 = v24 >= 0 ? &__p : __p;
      *buf = 134283779;
      *&buf[4] = v4;
      v17 = 2081;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Fence: state remove, %{private}lld, %{private}s", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1018E92C0();
      }

      sub_100BC8988(a2, buf);
      if (v19 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      v20[0] = 134283779;
      *&v20[1] = v4;
      v21 = 2081;
      v22 = v14;
      v15 = _os_log_send_and_compose_impl();
      if (v19 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorDatabase::removeFenceState(const CLFenceManager_Type::Fence &)", "%s\n", v15);
      if (v15 != &__p)
      {
        free(v15);
      }
    }

    sub_10003848C(buf);
    v7 = sub_100038730((&v18 + 2), "DELETE FROM ", 12);
    v8 = sub_100038730(v7, "Status", 6);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = sub_100038730(v9, "Key", 3);
    sub_100038730(v10, "=?", 2);
    sub_100073518(buf, &__p);
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_1000388D8(a1, p_p);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", &__p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E93C4();
  }

  return 0;
}

void sub_100624838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006248BC@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      sub_100BC97B0(v4);
      if (v6)
      {
        sub_100038730(&v10, ", ", 2);
      }

      std::ostream::operator<<();
      v4 += 248;
      v6 = 1;
    }

    while (v4 != v5);
  }

  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100624A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100624AC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 3);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Fence: state scrub, remaining, %{public}lu", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E957C(a2);
    }

    sub_1006248BC(a2, &buf);
    *(&v30.__r_.__value_.__s + 23) = 12;
    strcpy(&v30, "DELETE FROM ");
    v7 = std::string::append(&v30, "Status", 6uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v29 = 7;
    strcpy(__s, " WHERE ");
    v9 = std::string::append(&v31, __s, 7uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v32, "Key", 3uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v27 = 9;
    strcpy(v26, " NOT IN (");
    v13 = std::string::append(&v33, v26, 9uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v39 & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    if ((v39 & 0x80u) == 0)
    {
      v16 = v39;
    }

    else
    {
      v16 = *(&buf + 1);
    }

    v17 = std::string::append(&v34, p_buf, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v25 = 1;
    LOWORD(__p) = 41;
    v19 = std::string::append(&v35, &__p, 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v37 = v19->__r_.__value_.__r.__words[2];
    v36 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v37 >= 0)
    {
      v21 = &v36;
    }

    else
    {
      v21 = v36;
    }

    sub_1000388D8(a1, v21);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v22 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Fence: state can't scrub DB", &buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E94A0();
  }

  return v4;
}

void sub_100624F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062500C(uint64_t a1, uint64_t a2)
{
  if (sub_100023B68(a1))
  {
    sub_100BC97B0(a2);
    *(&v25.__r_.__value_.__s + 23) = 7;
    strcpy(&v25, "SELECT ");
    v4 = std::string::append(&v25, "State", 5uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v24 = 6;
    strcpy(__s, " FROM ");
    v6 = std::string::append(&v26, __s, 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v27, "Status", 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v22 = 7;
    strcpy(v21, " WHERE ");
    v10 = std::string::append(&v28, v21, 7uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v31, "Key", 3uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v20 = 2;
    strcpy(v19, "=?");
    v14 = std::string::append(&v32, v19, 2uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v30 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v30 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    sub_1000388D8(a1, v16);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v32.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", &v32, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E96B8();
  }

  return 0xFFFFFFFFLL;
}

void sub_100625A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_100625C4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float a5, float a6, float a7)
{
  v7 = a2;
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v12 = *a1;
  v11 = a1[1];
  v72 = a4;
  if (*a1 == v11)
  {
    v13 = 0;
    v25 = 0.0;
    v26 = 0.0;
  }

  else
  {
    v13 = 0;
    v78 = a5;
    v75 = (a6 / (a5 * a5)) * -0.003134 + 1.06246 + a7 * 0.003425 + (a7 * a7) * -0.00004952;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = *(v12 + 8);
      if (v16 < 2.33333325)
      {
        v17 = *(v12 + 16);
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = v17 - 1;
        if (v17 != 1)
        {
          v19 = *(v12 + 24);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v20 = v75 * ((fmax(fmin(v16, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v78);
          v21 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(v12 + 16);
            v23 = *(v12 + 24);
            *buf = 134284289;
            *v81 = v16;
            *&v81[8] = 1025;
            *&v81[10] = v22;
            v82 = 2049;
            v83 = v23;
            v84 = 2049;
            v85 = v20;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "Type,WatchCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
          }

          v14 = v14 + v18 * (v19 - v20);
          v13 = (v13 + v18);
          v15 = v15 + v18 * v16;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_1018E9794();
            }

            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }
        }
      }

      v12 += 32;
    }

    while (v12 != v11);
    if (v13 <= 0)
    {
      v25 = 0.0;
      v26 = 0.0;
    }

    else
    {
      v25 = v14 / v13;
      v26 = v15 / v13;
    }

    v7 = a2;
    a4 = v72;
    v8 = a7;
    v10 = a5;
    v9 = a6;
  }

  *a4 = v13;
  *(a4 + 16) = v25;
  *(a4 + 48) = v26;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v27 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v81 = v13;
    *&v81[4] = 2048;
    *&v81[6] = v25;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "numCalsWatch,%d,offsetWatch,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E97BC();
  }

  v28 = *v7;
  v29 = v7[1];
  v30 = *v7 == v29;
  v71 = v25;
  v31 = 0;
  if (v30)
  {
    v44 = 0.0;
    v45 = 0.0;
    v43 = v72;
  }

  else
  {
    v76 = (v9 / (v10 * v10)) * -0.003134 + 1.06246 + v8 * 0.003425 + (v8 * v8) * -0.00004952;
    v32 = 0.0;
    v33 = 0.0;
    do
    {
      v34 = *(v28 + 8);
      if (v34 < 2.33333325)
      {
        v35 = *(v28 + 16);
        if (v35 <= 1)
        {
          v35 = 1;
        }

        v36 = v35 - 1;
        if (v35 != 1)
        {
          v37 = *(v28 + 24);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v38 = v76 * ((fmax(fmin(v34, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v10);
          v39 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(v28 + 16);
            v41 = *(v28 + 24);
            *buf = 134284289;
            *v81 = v34;
            *&v81[8] = 1025;
            *&v81[10] = v40;
            v82 = 2049;
            v83 = v41;
            v84 = 2049;
            v85 = v38;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "Type,PhoneCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
          }

          v32 = v32 + v36 * (v37 - v38);
          v31 = (v31 + v36);
          v33 = v33 + v36 * v34;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_1018E9794();
            }

            v42 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }
        }
      }

      v28 += 32;
    }

    while (v28 != v29);
    v43 = v72;
    if (v31 <= 0)
    {
      v44 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v44 = v32 / v31;
      v45 = v33 / v31;
    }

    v25 = v71;
    v8 = a7;
    v10 = a5;
    v9 = a6;
  }

  *(v43 + 4) = v31;
  *(v43 + 24) = v44;
  *(v43 + 56) = v45;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v46 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v81 = v31;
    *&v81[4] = 2048;
    *&v81[6] = v44;
    _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "numCalsPhone,%d,offsetPhone,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E98A8();
  }

  v48 = *a3;
  v47 = a3[1];
  if (*a3 == v47)
  {
    v49 = 0;
    *(v43 + 8) = 0;
    *(v43 + 32) = 0;
    v60 = 0.0;
    v61 = 0.0;
  }

  else
  {
    v68 = v44;
    v49 = 0;
    v79 = v10;
    v77 = (v9 / (v10 * v10)) * -0.003134 + 1.06246 + v8 * 0.003425 + (v8 * v8) * -0.00004952;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    do
    {
      v53 = *(v48 + 24);
      if (v53 < 2.33333325)
      {
        v54 = *(v48 + 32);
        if (qword_1025D4430 != -1)
        {
          sub_1018E9794();
        }

        v55 = v77 * ((fmax(fmin(v53, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v79);
        v56 = v54 / v53;
        v57 = qword_1025D4438;
        if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134284289;
          *v81 = v53;
          *&v81[8] = 1025;
          *&v81[10] = 2;
          v82 = 2049;
          v83 = v56;
          v84 = 2049;
          v85 = v55;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "Type,WalkingSpeed,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
        }

        v58 = 1.0 / ((v56 - v55) / 0.07 * ((v56 - v55) / 0.07) + 1.0);
        v50 = v50 + v58 * (v56 - v55);
        v51 = v51 + v58;
        ++v49;
        v52 = v52 + v53;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v59 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v59);
          if (v59 != buf)
          {
            free(v59);
          }
        }
      }

      v48 += 48;
    }

    while (v48 != v47);
    if (v49 <= 0)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v50 / v51;
    }

    v43 = v72;
    *(v72 + 8) = v49;
    *(v72 + 32) = v60;
    v61 = v52 / v49;
    if (v49 <= 0)
    {
      v61 = 0.0;
    }

    v25 = v71;
    v44 = v68;
  }

  *(v43 + 64) = v61;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v62 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v81 = v49;
    *&v81[4] = 2048;
    *&v81[6] = v60;
    _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_INFO, "numCalsWalkingSpeed,%d,offsetWalkingSpeed,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9994();
  }

  if (v13 >= 40)
  {
    v63 = 0;
  }

  else
  {
    v63 = 40 - v13;
  }

  if (v63 >= v31)
  {
    v63 = v31;
  }

  v64 = (40 - v13 - v63) & ~((40 - v13 - v63) >> 31);
  if (v64 >= v49)
  {
    v64 = v49;
  }

  v65 = v63 + v13 + v64;
  *(v43 + 40) = v65;
  if (v65 <= 13)
  {
    v65 = 13;
  }

  return (v44 * v63 + v25 * v13 + v60 * v64) / v65;
}

uint64_t sub_1006267A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v53 = (*(*a2 + 24))(a2, &v55, *(a1 + 8), *(a1 + 16));
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    *buf = 134284289;
    v66 = v5;
    v67 = 2049;
    v68 = v6;
    v69 = 1025;
    *v70 = v7;
    *&v70[4] = 2049;
    *&v70[6] = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Looking for metrics during bout,startTime,%{private}f,endTime,%{private}f,steps,%{private}u,metrics,%{private}lu", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9A80(buf);
    v47 = *(a1 + 8);
    v48 = *(a1 + 16);
    v49 = *(a1 + 24);
    v58 = 134284289;
    v59 = v47;
    v60 = 2049;
    v61 = v48;
    v62 = 1025;
    *v63 = v49;
    *&v63[4] = 2049;
    *&v63[6] = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 5);
    v50 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v50);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  v10 = v55;
  v9 = v56;
  if (v56 != v55)
  {
    v11 = 0;
    LODWORD(v8) = *(a1 + 24);
    v12 = 0.0;
    v13 = v8 / *(a1 + 40);
    v14 = 0.0;
    do
    {
      if (qword_1025D4430 != -1)
      {
        sub_1018E9794();
      }

      v15 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(v10 + 8);
        v17 = *(v10 + 24);
        *buf = 134218240;
        v66 = v16;
        v67 = 2048;
        v68 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "startTime,%.3f,walkingSpeed,%.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E9A80(buf);
        v27 = *(v10 + 8);
        v28 = *(v10 + 24);
        v58 = 134218240;
        v59 = v27;
        v60 = 2048;
        v61 = v28;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v18 = *(v10 + 24);
      v19 = *(v10 + 48);
      if (qword_1025D4430 != -1)
      {
        sub_1018E9794();
      }

      v20 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(v10 + 8);
        v22 = *(v10 + 24);
        v23 = *(v10 + 32);
        v24 = *(a1 + 24);
        v25 = *(a1 + 48);
        v26 = *(v10 + 48);
        *buf = 134219520;
        v66 = v21;
        v67 = 2048;
        v68 = v22;
        v69 = 2048;
        *v70 = v23;
        *&v70[8] = 1024;
        *&v70[10] = v24;
        *&v70[14] = 2048;
        *&v70[16] = v13;
        *&v70[24] = 1024;
        *&v70[26] = v25;
        *v71 = 2048;
        *&v71[2] = v26;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "startTime,%.3f,walkingSpeed,%.4f,stepLength,%.4f,segmentSteps,%d,segmentCadence,%.4f,segmentEpochCadenceSD,%d,cycleTime,%.3f", buf, 0x40u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E9A80(buf);
        v30 = *(v10 + 8);
        v31 = *(v10 + 24);
        v32 = *(v10 + 32);
        v33 = *(a1 + 24);
        v34 = *(a1 + 48);
        v35 = *(v10 + 48);
        v58 = 134219520;
        v59 = v30;
        v60 = 2048;
        v61 = v31;
        v62 = 2048;
        *v63 = v32;
        *&v63[8] = 1024;
        *&v63[10] = v33;
        *&v63[14] = 2048;
        *&v63[16] = v13;
        *&v63[24] = 1024;
        *&v63[26] = v34;
        *v64 = 2048;
        *&v64[2] = v35;
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      v12 = v12 + v18;
      v14 = v14 + v19;
      v10 += 96;
      ++v11;
    }

    while (v10 != v9);
    v37 = v14 / v11;
    v38 = v11 / (*(a1 + 40) / v37);
    if (v38 <= 0.6)
    {
      goto LABEL_33;
    }

    v39 = 2.0 / v37;
    if (vabdd_f64(2.0 / v37, v13) / ((v13 + 2.0 / v37) * 0.5) >= 0.1)
    {
      goto LABEL_33;
    }

    v41 = *(a1 + 8);
    v40 = *(a1 + 16);
    v54[0] = v41;
    *&v54[1] = v40;
    *&v54[2] = v13;
    *&v54[3] = 2.0 / v37;
    v42 = v12 / v11;
    *&v54[4] = v42;
    *&v54[5] = v38;
    if (qword_1025D4430 != -1)
    {
      sub_1018E9794();
    }

    v43 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *buf = 134350336;
      v66 = v41;
      v67 = 2050;
      v68 = v40;
      v69 = 2050;
      *v70 = v13;
      *&v70[8] = 2050;
      *&v70[10] = v39;
      *&v70[18] = 2050;
      *&v70[20] = v42;
      *&v70[28] = 2050;
      *v71 = v38;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "Writing walkingSpeedCal,startTime,%{public}.3f,endTime,%{public}.3f,cadenceWatch,%{public}.3f,cadenceGaitCycle,%{public}.3f,meanWalkingSpeed,%{public}.3f,gaitCycleYield,%{public}.3f", buf, 0x3Eu);
    }

    v44 = sub_10000A100(121, 2);
    v45 = a3;
    if (v44)
    {
      sub_1018E9A80(buf);
      v58 = 134350336;
      v59 = v41;
      v60 = 2050;
      v61 = v40;
      v62 = 2050;
      *v63 = v13;
      *&v63[8] = 2050;
      *&v63[10] = v39;
      *&v63[18] = 2050;
      *&v63[20] = v42;
      *&v63[28] = 2050;
      *v64 = v38;
      v51 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }

      v45 = a3;
      if (!a3)
      {
        goto LABEL_33;
      }
    }

    else if (!a3)
    {
LABEL_33:
      v10 = v55;
      goto LABEL_34;
    }

    (*(*v45 + 16))(v45, v54);
    goto LABEL_33;
  }

LABEL_34:
  if (v10)
  {
    v56 = v10;
    operator delete(v10);
  }

  return v53;
}

void sub_100626F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100626FA4(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int32x2_t *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0xBFF0000000000000;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a7 + 64) = _Q0;
  *(a7 + 8) = *(a1 + 16);
  *(a7 + 12) = *(a1 + 80);
  *(a7 + 20) = *(a1 + 88);
  *&_Q0 = *(a1 + 24);
  *(a7 + 36) = _Q0;
  *&_Q0 = *(a1 + 56);
  *(a7 + 24) = _Q0;
  *(a7 + 28) = vcvt_f32_f64(*(a1 + 32));
  *(a7 + 40) = a6->i32[1];
  *(a7 + 44) = a6[2].i32[1];
  *(a7 + 48) = vrev64_s32(a6[1]);
  v16 = a2[2];
  *(a7 + 56) = *a2;
  *(a7 + 60) = v16;
  sub_1006270AC(a7, a3);
  v17 = *(a1 + 120);
  *(a7 + 80) = 0;
  *(a7 + 84) = v17;
  *(a7 + 88) = vrev64_s32(vcvt_f32_f64(*(a1 + 128)));
  v18 = *(a4 + 16);
  if (*a4 <= 0)
  {
    v18 = 0.0;
  }

  *(a7 + 96) = *(a1 + 92);
  *(a7 + 100) = v18;
  v19 = *(a5 + 16);
  if (*a5 <= 0)
  {
    v19 = 0.0;
  }

  *(a7 + 104) = v19;
}

void sub_1006270AC(float *a1, uint64_t **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * (v2 - *a2);
  if (v4 >= 2)
  {
    a1[18] = v4 / 13.0;
    __src = 0;
    v35 = 0;
    v36 = 0;
    if (v3 == v2)
    {
      v29 = 0.0;
      v30 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = v3 - 3;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 1;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        v14 = v11;
        v15 = *(v3 + 2);
        v16 = 0.0;
        v17 = v15;
        if (v11 != 1)
        {
          v17 = v9 + (v15 - v9) / v11;
          v13 = v12 + (v15 - v9) * (v15 - v17);
          v16 = v13;
        }

        v18 = *v3;
        if (v7 >= v36)
        {
          v19 = __src;
          v20 = v7 - __src;
          v21 = (v7 - __src) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v23 = v36 - __src;
          if ((v36 - __src) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_1003E5FE8(&__src, v24);
          }

          v25 = (v7 - __src) >> 4;
          v26 = 16 * v21;
          *v26 = v18;
          *(v26 + 8) = v15;
          v7 = 16 * v21 + 16;
          v27 = (16 * v21 - 16 * v25);
          memcpy((v26 - 16 * v25), v19, v20);
          v28 = __src;
          __src = v27;
          v35 = v7;
          v36 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v7 = v18;
          *(v7 + 8) = v15;
          v7 += 16;
        }

        v35 = v7;
        if (v3 != *a2)
        {
          v10 = vabdd_f64(*(v3 + 2), *(v8 + 2)) + v10;
        }

        v3 += 3;
        v11 = v14 + 1;
        v8 += 3;
        v9 = v17;
        v12 = v16;
      }

      while (v3 != a2[1]);
      v29 = v10;
      v30 = 0.0;
      if (v14 != 1)
      {
        v30 = v13 / (v14 - 1);
      }
    }

    v31 = sqrt(v30);
    a1[16] = v31;
    v32 = sub_1010BD338(&__src, 0) * 86400.0;
    a1[19] = v32;
    v33 = (*(a2[1] - 1) - *(*a2 + 2)) / v29;
    a1[17] = v33;
    if (__src)
    {
      v35 = __src;
      operator delete(__src);
    }
  }
}

void sub_10062731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100627370(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_1006277F8(*(a2 + 56), a1, a3, &v66);
  v56 = v66;
  v54 = v67;
  if (v66 != v67)
  {
    v5 = *(a2 + 56) + 120.0;
    v6 = *(a2 + 64) - *(a2 + 72);
    do
    {
      __src = 0;
      v64 = 0;
      v65 = 0;
      __p = 0;
      v61 = 0;
      v62 = 0;
      v7 = *a3;
      v8 = a3[1];
      while (v7 != v8)
      {
        v9 = *(v7 + 8);
        if (v9 > *v56 && v9 < v5)
        {
          v11 = v9 - *v56;
          v12 = v64;
          if (v64 >= v65)
          {
            v14 = __src;
            v15 = v64 - __src;
            v16 = (v64 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v18 = v65 - __src;
            if ((v65 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              sub_1000B9708(&__src, v19);
            }

            v20 = (8 * v16);
            v21 = &v20[-((v64 - __src) >> 3)];
            *v20 = v11;
            v13 = v20 + 1;
            memcpy(v21, v14, v15);
            v4 = __src;
            __src = v21;
            v64 = v13;
            v65 = 0;
            if (v4)
            {
              operator delete(v4);
            }
          }

          else
          {
            *v64 = v11;
            v13 = v12 + 1;
          }

          v64 = v13;
          v22 = v61;
          if (v61 >= v62)
          {
            v24 = __p;
            v25 = v61 - __p;
            v26 = (v61 - __p) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v28 = v62 - __p;
            if ((v62 - __p) >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              sub_1000B9708(&__p, v29);
            }

            v30 = (8 * v26);
            v31 = &v30[-((v61 - __p) >> 3)];
            *v30 = *(v7 + 16);
            v23 = (v30 + 1);
            memcpy(v31, v24, v25);
            v4 = __p;
            __p = v31;
            v61 = v23;
            v62 = 0;
            if (v4)
            {
              operator delete(v4);
            }
          }

          else
          {
            *v61 = *(v7 + 16);
            v23 = v22 + 8;
          }

          v61 = v23;
        }

        v7 += 32;
      }

      v32 = qword_102658398;
      v33 = qword_1026583A0;
      while (v32 != v33)
      {
        v34 = *v32;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v36 = __src;
        v35 = v64;
        if (__src != v64)
        {
          v37 = 0;
          do
          {
            v38 = *(a2 + 72) + v6 * exp(*v36 * -v34);
            if (v37 >= v59)
            {
              v39 = v57;
              v40 = v37 - v57;
              v41 = (v37 - v57) >> 3;
              v42 = v41 + 1;
              if ((v41 + 1) >> 61)
              {
                sub_10028C64C();
              }

              v43 = v59 - v57;
              if ((v59 - v57) >> 2 > v42)
              {
                v42 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              if (v44)
              {
                sub_1000B9708(&v57, v44);
              }

              v45 = v41;
              v46 = (8 * v41);
              v47 = &v46[-v45];
              *v46 = v38;
              v37 = v46 + 1;
              memcpy(v47, v39, v40);
              v4 = v57;
              v57 = v47;
              v58 = v37;
              v59 = 0;
              if (v4)
              {
                operator delete(v4);
              }
            }

            else
            {
              *v37++ = v38;
            }

            v58 = v37;
            ++v36;
          }

          while (v36 != v35);
        }

        v49 = sub_100627934(v4, &__p, &v57);
        if (v49 != -1.0)
        {
          v50 = *(a2 + 88);
          if (v50 == -1.0 || v49 < v50)
          {
            *(a2 + 80) = v34;
            *(a2 + 88) = v49;
            *(a2 + 104) = *v56;
            *(a2 + 96) = sub_1006279B0(v48, &__p, &v57);
          }
        }

        v4 = v57;
        if (v57)
        {
          v58 = v57;
          operator delete(v57);
        }

        ++v32;
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      v4 = __src;
      if (__src)
      {
        v64 = __src;
        operator delete(__src);
      }

      ++v56;
    }

    while (v56 != v54);
  }

  v52 = *(a2 + 80);
  if (v52 == 0.0)
  {
    *a2 = 17;
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  return v52 != 0.0;
}

void sub_100627788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006277F8(double a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v7 = a1 + -10.0;
    v8 = a1 + 25.0;
    do
    {
      while (1)
      {
        v9 = *(v4 + 8);
        if (v9 > v7 && v9 < v8)
        {
          break;
        }

        v4 += 32;
        if (v9 > v8 || v4 == v5)
        {
          return;
        }
      }

      v13 = a4[1];
      v12 = a4[2];
      if (v13 >= v12)
      {
        v15 = *a4;
        v16 = v13 - *a4;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          sub_10028C64C();
        }

        v19 = v12 - v15;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_1000B9708(a4, v20);
        }

        *(8 * v17) = v9;
        v14 = 8 * v17 + 8;
        memcpy(0, v15, v16);
        v21 = *a4;
        *a4 = 0;
        a4[1] = v14;
        a4[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v13 = v9;
        v14 = (v13 + 1);
      }

      a4[1] = v14;
      v4 += 32;
    }

    while (v4 != v5);
  }
}

double sub_100627934(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  result = -1.0;
  if (*a2 != v4 && v4 - v3 == a3[1] - *a3)
  {
    v6 = 0;
    v7 = (v4 - v3) >> 3;
    v8 = v7;
    v9 = 0.0;
    do
    {
      if (v7 == v6)
      {
        sub_10046F324();
      }

      v9 = v9 + (*(v3 + 8 * v6) - *(*a3 + 8 * v6)) * (*(v3 + 8 * v6) - *(*a3 + 8 * v6));
      ++v6;
    }

    while (v6 < v8);
    return v9 / v8;
  }

  return result;
}

double sub_1006279B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  result = -1.0;
  if (*a2 != v4)
  {
    v6 = v4 - v3;
    v7 = *a3;
    if (v6 == *(a3 + 8) - *a3)
    {
      v8 = v6 >> 3;
      v9 = v8;
      v10 = -v8;
      v11 = 0uLL;
      v12 = 1;
      v13 = 0uLL;
      do
      {
        if (v10 + v12 == 1)
        {
          sub_10046F324();
        }

        v14 = *v3++;
        v15.f64[0] = v14;
        v16 = *v7++;
        v15.f64[1] = v15.f64[0] - v16;
        v17 = vsubq_f64(v15, v13);
        v13 = vaddq_f64(v13, vdivq_f64(v17, vdupq_lane_s64(COERCE__INT64(v12), 0)));
        v11 = vmlaq_f64(v11, vsubq_f64(v15, v13), v17);
        v15.f64[0] = v12++;
      }

      while (v15.f64[0] < v9);
      v18 = v12 - 2;
      if (v12 != 2)
      {
        v19 = v11.f64[0] / v18;
        if (v19 != 0.0)
        {
          return 1.0 - v11.f64[1] / v18 / v19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100627A78()
{
  memcpy(__dst, &unk_101C81F30, sizeof(__dst));
  qword_1026583A0 = 0;
  unk_1026583A8 = 0;
  qword_102658398 = 0;
  sub_1003F6D44(&qword_102658398, __dst, &v2, 0x64uLL);
  return __cxa_atexit(sub_1003F5F88, &qword_102658398, dword_100000000);
}

uint64_t sub_100627B2C(uint64_t a1)
{
  v3 = dword_100000000;
  v4 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100627BB0(a1, &v3, &off_102464670);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100627B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100627BB0(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = sub_1006062D8(a1, a2);
  if (sub_100023B68(v5))
  {
    sub_100608EC8(a1, off_1025D7800, a3, 0, 0);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v10 = "CLFenceCentroidDatabase";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E9AD8(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLFenceCentroidDatabase::CLFenceCentroidDatabase(const CLSqliteDatabase::SqliteProperties &, const CLSqliteDatabase::ColumnInfo *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1;
}

uint64_t sub_100627D80(uint64_t a1, int a2, double a3, double a4)
{
  if (sub_100023B68(a1))
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315907;
      *&buf[4] = "storeFenceCentroid";
      v30 = 1025;
      v31 = a2;
      v32 = 2048;
      v33 = a3;
      v34 = 2053;
      v35 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "%s, foreignKey, %{private}d, coordinate, <%{senstive}f, %{sensitive}f>", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1018E9C20();
      }

      *v22 = 136315907;
      *&v22[4] = "storeFenceCentroid";
      v23 = 1025;
      v24 = a2;
      v25 = 2048;
      v26 = a3;
      v27 = 2053;
      v28 = a4;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceCentroidDatabase::storeFenceCentroid(const CLClientLocationCoordinate, const int)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    sub_10003848C(v22);
    v9 = sub_100038730((&v24 + 2), "INSERT OR REPLACE INTO ", 23);
    v10 = strlen(off_1025D7800);
    v11 = sub_100038730(v9, off_1025D7800, v10);
    v12 = sub_100038730(v11, " (", 2);
    v13 = sub_100038730(v12, "ForeignKey", 10);
    v14 = sub_100038730(v13, ", ", 2);
    v15 = sub_100038730(v14, "Latitude", 8);
    v16 = sub_100038730(v15, ", ", 2);
    v17 = sub_100038730(v16, "Longitude", 9);
    sub_100038730(v17, ") VALUES (?, ?, ?)", 18);
    sub_100073518(v22, buf);
    if ((SBYTE3(v33) & 0x80u) == 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    sub_1000388D8(a1, v18);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v19 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "storeFenceCentroid";
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E9B1C();
  }

  return 0;
}

void sub_1006283EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100628470(uint64_t a1, int a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67174657;
    *&buf[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: Removing vertices, key, %{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9C48();
  }

  if (sub_100023B68(a1))
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9C20();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      *&buf[4] = "removeFenceCentroid";
      v17 = 1025;
      v18 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, foreignKey, %{private}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E9E54();
    }

    sub_10003848C(v14);
    v6 = sub_100038730(&v15, "DELETE FROM ", 12);
    v7 = strlen(off_1025D7800);
    v8 = sub_100038730(v6, off_1025D7800, v7);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = sub_100038730(v9, "ForeignKey", 10);
    sub_100038730(v10, "=?", 2);
    sub_100073518(v14, buf);
    if (v19 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    sub_1000388D8(a1, v11);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9C20();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "removeFenceCentroid";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E9D50();
  }

  return 0;
}

void sub_1006289EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100628A70@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        sub_100038730(&v10, ", ", 2);
      }

      std::ostream::operator<<();
      v4 += 248;
      v6 = 1;
    }

    while (v4 != v5);
  }

  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100628C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100628C74(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v6 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    *&buf[4] = "getFenceCentroid";
    v34 = 1025;
    v35 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "%s, Attempting to fetch centroid for key %{private}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9F5C();
  }

  v30 = *(&xmmword_101CE6D48 + 4);
  v31 = *(&xmmword_101CE6D58 + 4);
  v32 = 0;
  v26 = *(&xmmword_101CE6D08 + 4);
  v27 = *(&xmmword_101CE6D18 + 4);
  v28 = *(&xmmword_101CE6D28 + 4);
  v29 = *(&xmmword_101CE6D38 + 4);
  v24 = *(&xmmword_101CE6CE8 + 4);
  v25 = *(&xmmword_101CE6CF8 + 4);
  if (sub_100023B68(a1))
  {
    sub_10003848C(v22);
    v7 = sub_100038730(&v23, "SELECT ", 7);
    v8 = sub_100038730(v7, "Latitude", 8);
    v9 = sub_100038730(v8, ", ", 2);
    v10 = sub_100038730(v9, "Longitude", 9);
    v11 = sub_100038730(v10, " FROM ", 6);
    v12 = strlen(off_1025D7800);
    v13 = sub_100038730(v11, off_1025D7800, v12);
    v14 = sub_100038730(v13, " WHERE ", 7);
    v15 = sub_100038730(v14, "ForeignKey", 10);
    sub_100038730(v15, "=?", 2);
    sub_100073518(v22, buf);
    if (v36 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    sub_1000388D8(a1, v16);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9C20();
  }

  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getFenceCentroid";
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018EA064();
  }

  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  v18 = v28;
  *(a3 + 100) = v29;
  v19 = v31;
  *(a3 + 116) = v30;
  *(a3 + 132) = v19;
  v20 = v24;
  *(a3 + 36) = v25;
  v21 = v27;
  *(a3 + 52) = v26;
  *(a3 + 68) = v21;
  *a3 = 0xFFFF;
  *(a3 + 148) = v32;
  *(a3 + 84) = v18;
  *(a3 + 20) = v20;
}

void sub_100629660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_1006296F4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 3);
      *buf = 136315394;
      *&buf[4] = "scrubFenceCentroids";
      *&buf[12] = 2050;
      *&buf[14] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, scrubbing centroids, number of valid foreign keys, %{public}lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EA26C(a2);
    }

    sub_100628A70(a2, buf);
    *(&v31.__r_.__value_.__s + 23) = 12;
    strcpy(&v31, "DELETE FROM ");
    v7 = strlen(off_1025D7800);
    v8 = std::string::append(&v31, off_1025D7800, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v30 = 7;
    strcpy(__s, " WHERE ");
    v10 = std::string::append(&v32, __s, 7uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v33, "ForeignKey", 0xAuLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v28 = 9;
    strcpy(v27, " NOT IN (");
    v14 = std::string::append(&v34, v27, 9uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((v40 & 0x80u) == 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    if ((v40 & 0x80u) == 0)
    {
      v17 = v40;
    }

    else
    {
      v17 = *&buf[8];
    }

    v18 = std::string::append(&v35, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v26 = 1;
    LOWORD(__p) = 41;
    v20 = std::string::append(&v36, &__p, 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v38 = v20->__r_.__value_.__r.__words[2];
    v37 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v38 >= 0)
    {
      v22 = &v37;
    }

    else
    {
      v22 = v37;
    }

    sub_1000388D8(a1, v22);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v23 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "scrubFenceCentroids";
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "%s, can't scrub fence centroids, invalid database", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018EA168();
  }

  return v4;
}

void sub_100629B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100629CA0(uint64_t a1@<X8>)
{
  *(v2 + 4) = a1;
  *(v3 - 52) = 1025;
  *(v2 + 14) = v1;
}

void sub_100629CC0(uint64_t a1)
{
  *a1 = off_102464760;
  bzero((a1 + 8), 0xC38uLL);
  *(a1 + 324) = 1;
  *(a1 + 336) = 0;
  *(a1 + 896) = 0;
  *(a1 + 3128) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 466) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 533) = 0;
  *(a1 + 696) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 872) = 0;
  *(a1 + 877) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1080) = 0;
  *(a1 + 3264) = 0;
  *(a1 + 3248) = 0u;
  *(a1 + 3232) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3168) = 0u;
  *(a1 + 3152) = 0u;
  *(a1 + 3136) = 0u;
  *(a1 + 3272) = 0x403E000000000000;
  sub_10062F02C();
}

void sub_10062A77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[558];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = v10[549];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = v10[540];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = v10[531];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = v10[522];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = v10[513];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = v10[504];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = v10[495];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = v10[486];
  if (v20)
  {
    sub_100008080(v20);
  }

  v21 = v10[477];
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = v10[468];
  if (v22)
  {
    sub_100008080(v22);
  }

  v23 = v10[459];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = v10[450];
  if (v24)
  {
    sub_100008080(v24);
  }

  v25 = v10[441];
  if (v25)
  {
    sub_100008080(v25);
  }

  v26 = v10[432];
  if (v26)
  {
    sub_100008080(v26);
  }

  v27 = v10[423];
  if (v27)
  {
    sub_100008080(v27);
  }

  v28 = v10[414];
  if (v28)
  {
    sub_100008080(v28);
  }

  v29 = v10[411];
  if (v29)
  {
    sub_100008080(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a22)
  {
    JUMPOUT(0x10062A808);
  }

  JUMPOUT(0x10062A804);
}

void sub_10062A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x10062A814);
  }

  JUMPOUT(0x10062A810);
}

void sub_10062A8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!a26)
  {
    JUMPOUT(0x10062A820);
  }

  JUMPOUT(0x10062A81CLL);
}

void sub_10062A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (!a28)
  {
    JUMPOUT(0x10062A82CLL);
  }

  JUMPOUT(0x10062A828);
}

void sub_10062A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (!a30)
  {
    JUMPOUT(0x10062A838);
  }

  JUMPOUT(0x10062A834);
}

void sub_10062A92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (!a32)
  {
    JUMPOUT(0x10062A844);
  }

  JUMPOUT(0x10062A840);
}

void sub_10062A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (!a34)
  {
    JUMPOUT(0x10062A850);
  }

  JUMPOUT(0x10062A84CLL);
}

void sub_10062A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (!a36)
  {
    JUMPOUT(0x10062A85CLL);
  }

  JUMPOUT(0x10062A858);
}

void sub_10062A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (!a38)
  {
    JUMPOUT(0x10062A868);
  }

  JUMPOUT(0x10062A864);
}

void sub_10062A96C()
{
  if (!*(v0 - 200))
  {
    JUMPOUT(0x10062A874);
  }

  JUMPOUT(0x10062A870);
}

void sub_10062A97C()
{
  if (!*(v0 - 184))
  {
    JUMPOUT(0x10062A880);
  }

  JUMPOUT(0x10062A87CLL);
}

void sub_10062A98C()
{
  if (!*(v0 - 168))
  {
    JUMPOUT(0x10062A88CLL);
  }

  JUMPOUT(0x10062A888);
}

void sub_10062A99C()
{
  if (!*(v0 - 152))
  {
    JUMPOUT(0x10062A898);
  }

  JUMPOUT(0x10062A894);
}

void sub_10062A9AC()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x10062A8A4);
  }

  JUMPOUT(0x10062A8A0);
}

void sub_10062A9BC()
{
  if (!*(v0 - 120))
  {
    JUMPOUT(0x10062A8B0);
  }

  JUMPOUT(0x10062A8ACLL);
}

void sub_10062A9CC()
{
  if (!*(v0 - 104))
  {
    JUMPOUT(0x10062A8BCLL);
  }

  JUMPOUT(0x10062A8B8);
}

void sub_10062A9DC()
{
  if (!*(v0 - 88))
  {
    JUMPOUT(0x10062A8C8);
  }

  JUMPOUT(0x10062A8C4);
}

void *sub_10062A9EC(void *result)
{
  v1 = result;
  if (result >= 4)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA5C0();
    }

    v2 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67174657;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Unsupported CLHKBiologicalSex value: %{private}d", v4, 8u);
    }

    v3 = sub_10000A100(121, 0);
    result = 0;
    if (v3)
    {
      sub_1018EA5D4(v1);
      return 0;
    }
  }

  return result;
}

void sub_10062AADC(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 20);
  v4 = (*(a1 + 12) / (*(a1 + 8) * *(a1 + 8)));
  v5 = (v2 * 1.921 + 56.363 + v3 * -0.381 + v4 * -0.754 + (1 - *a1) * 10.987) / 3.5;
  v6 = v3 * -0.039 + 14.889 + v4 * -0.151 + *a1 * -3.1391 + v2 * 0.429;
  v7 = v6;
  if (v5 >= v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (*(a1 + 48))
  {
    v9 = v8 * 0.65;
  }

  else
  {
    v9 = v8;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v10 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    *buf = 134219008;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = 0x401C000000000000;
    v19 = 1024;
    v20 = v11;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Derived Vo2max, %.1f, Revised Vo2max, %.1f, Minimum Vo2max, %.1f, Beta Blocker Use, %d, Beta Blocker Vo2max, %.1f", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static float CLNatalieModelInput::computeDerivedVo2max(const CLBodyMetrics)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

void sub_10062ADF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_10062AEB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_10062AF74(void **a1)
{
  sub_10062AFD4(a1 + 421);
  sub_10062B13C(a1 + 430);
  sub_10062B2A4(a1 + 538);
  sub_10062B40C(a1 + 547);

  sub_10062B574(a1 + 556);
}

void sub_10062AFD4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA810(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_10062F7A4(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B13C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA920(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_10062FB60(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B2A4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAA30(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632474(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B40C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAB40(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632830(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B574(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAC50(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632BEC(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B6DC(void **a1)
{
  sub_10062B73C(a1 + 421);
  sub_10062B870(a1 + 430);
  sub_10062B9A4(a1 + 538);
  sub_10062BAD8(a1 + 547);

  sub_10062BC0C(a1 + 556);
}

void sub_10062B73C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAD60(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633128(*a1);
  }
}

void sub_10062B870(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAE70(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100311E80(*a1);
  }
}

void sub_10062B9A4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAF80(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633228(*a1);
  }
}

void sub_10062BAD8(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB090(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633328(*a1);
  }
}

void sub_10062BC0C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB1A0(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633428(*a1);
  }
}

float sub_10062BD40(float *a1, double a2)
{
  result = -1.0;
  if (a1[1136] + -10.0 > a2)
  {
    v4 = a1[1138];
    if (vabdd_f64(a2, v4) < 0.001)
    {
      return ((a1[1137] * 2.6232) / v4) + 3.9865;
    }
  }

  return result;
}

void sub_10062BDA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9[0] = *(a1 + 32);
  *(v9 + 12) = *(a1 + 44);
  sub_10062AADC(v8);
  v3 = *(a1 + 28) * 15.3;
  v5 = v4 * 3.5;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  v7 = v3 / v5;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8[0]) = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Estimated HRmin, %.1f ", v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB2B0(v7);
  }
}

uint64_t sub_10062BECC(uint64_t a1, _OWORD *a2, double a3)
{
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
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
    v8 = sub_100633528(*(a1 + 8), v17, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v34 = v10;
      v35 = 2048;
      v36 = a3;
      v37 = 1024;
      v38 = v7;
      v39 = 2048;
      v40 = *&v18[0];
      v41 = 1024;
      v42 = v8;
      v43 = 2048;
      v44 = *&v17[0];
      v45 = 1024;
      v46 = *v18 == *v17;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v19 = 67110656;
      v20 = v15;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = *&v18[0];
      v27 = 1024;
      v28 = v8;
      v29 = 2048;
      v30 = *&v17[0];
      v31 = 1024;
      v32 = *v18 == *v17;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLRawHR>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLRawHR>, T = CLRawHR, LegacyT = CLRawHR, ConverterT = void]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v18;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = v17;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
  }

  return v7 & 1;
}

uint64_t sub_10062C1E4(uint64_t a1, _OWORD *a2, double a3)
{
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
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
    sub_10063360C();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v34 = v9;
      v35 = 2048;
      v36 = a3;
      v37 = 1024;
      v38 = v7;
      v39 = 2048;
      v40 = *(&v18[0] + 1);
      v41 = 1024;
      v42 = 0;
      v43 = 2048;
      v44 = *(&v17[0] + 1);
      v45 = 1024;
      v46 = *(v18 + 1) == *(v17 + 1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v19 = 67110656;
      v20 = v15;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = *(&v18[0] + 1);
      v27 = 1024;
      v28 = 0;
      v29 = 2048;
      v30 = *(&v17[0] + 1);
      v31 = 1024;
      v32 = *(v18 + 1) == *(v17 + 1);
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLElevationChangeEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLElevationChangeEntry>, T = CLElevationChangeEntry, LegacyT = CLElevationChangeEntry, ConverterT = void]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v18;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v17;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
    v13 = v11[3];
    a2[2] = v11[2];
    a2[3] = v13;
  }

  return v7 & 1;
}

uint64_t sub_10062C514(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v4 = a3.n128_u64[0];
  v16[0] = 0.0;
  v16[1] = 0.0;
  v15[0] = 0.0;
  v15[1] = 0.0;
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
    sub_1006336F0();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v32 = v9;
      v33 = 2048;
      v34 = v4;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v16[0];
      v39 = 1024;
      v40 = 0;
      v41 = 2048;
      v42 = v15[0];
      v43 = 1024;
      v44 = v16[0] == v15[0];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v17 = 67110656;
      v18 = v13;
      v19 = 2048;
      v20 = v4;
      v21 = 1024;
      v22 = v7;
      v23 = 2048;
      v24 = v16[0];
      v25 = 1024;
      v26 = 0;
      v27 = 2048;
      v28 = v15[0];
      v29 = 1024;
      v30 = v16[0] == v15[0];
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>, T = CLCoarseElevationChangeEntry, LegacyT = CLCoarseElevationChangeEntry, ConverterT = void]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v16;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v15;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
  }

  return v7 & 1;
}

uint64_t sub_10062C824(uint64_t a1, uint64_t a2, double a3)
{
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
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
    sub_1006337D4();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v19 = v9;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v7;
      v24 = 2048;
      v25 = *(&v42 + 1);
      v26 = 1024;
      v27 = 0;
      v28 = 2048;
      v29 = *(&v33 + 1);
      v30 = 1024;
      v31 = *(&v42 + 1) == *(&v33 + 1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLSwimEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLSwimEntry>, T = CLSwimEntry, LegacyT = CLSwimEntry, ConverterT = void]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v41;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v32;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v12;
    *(a2 + 128) = v11[8];
    *(a2 + 144) = *(v11 + 18);
    v13 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v13;
    v14 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v14;
    v15 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v15;
  }

  return v7 & 1;
}

uint64_t sub_10062CB98(uint64_t a1, uint64_t a2, double a3)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
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
    sub_1006339CC();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v39 = v9;
      v40 = 2048;
      v41 = a3;
      v42 = 1024;
      v43 = v7;
      v44 = 2048;
      v45 = *&v22[0];
      v46 = 1024;
      v47 = 0;
      v48 = 2048;
      v49 = *&v20[0];
      v50 = 1024;
      v51 = *v22 == *v20;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v18 = *(a1 + 48);
      v24 = 67110656;
      v25 = v18;
      v26 = 2048;
      v27 = a3;
      v28 = 1024;
      v29 = v7;
      v30 = 2048;
      v31 = *&v22[0];
      v32 = 1024;
      v33 = 0;
      v34 = 2048;
      v35 = *&v20[0];
      v36 = 1024;
      v37 = *v22 == *v20;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<_CLFitnessMachineData>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<_CLFitnessMachineData>, T = _CLFitnessMachineData, LegacyT = _CLFitnessMachineData, ConverterT = void]", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v22;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v20;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v12;
    *(a2 + 160) = *(v11 + 20);
    v13 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v13;
    v14 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v14;
    v15 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v15;
    v16 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v16;
  }

  return v7 & 1;
}

uint64_t sub_10062CF08(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_u64[0];
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
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
    sub_100633AE0();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v32 = v9;
      v33 = 2048;
      v34 = v4;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v16[0];
      v39 = 1024;
      v40 = 0;
      v41 = 2048;
      v42 = v15[0];
      v43 = 1024;
      v44 = v16[0] == v15[0];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v17 = 67110656;
      v18 = v13;
      v19 = 2048;
      v20 = v4;
      v21 = 1024;
      v22 = v7;
      v23 = 2048;
      v24 = v16[0];
      v25 = 1024;
      v26 = 0;
      v27 = 2048;
      v28 = v15[0];
      v29 = 1024;
      v30 = v16[0] == v15[0];
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>, T = CLCalorimetryDanceDMFeatures, LegacyT = CLCalorimetryDanceDMFeatures, ConverterT = void]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v16;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v15;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
    *(a2 + 16) = v11[2];
  }

  return v7 & 1;
}

uint64_t sub_10062D22C(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v4 = a3.n128_u64[0];
  v16[0] = 0.0;
  v16[1] = 0.0;
  v15[0] = 0.0;
  v15[1] = 0.0;
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
    sub_1006336F0();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v32 = v9;
      v33 = 2048;
      v34 = v4;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v16[0];
      v39 = 1024;
      v40 = 0;
      v41 = 2048;
      v42 = v15[0];
      v43 = 1024;
      v44 = v16[0] == v15[0];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v17 = 67110656;
      v18 = v13;
      v19 = 2048;
      v20 = v4;
      v21 = 1024;
      v22 = v7;
      v23 = 2048;
      v24 = v16[0];
      v25 = 1024;
      v26 = 0;
      v27 = 2048;
      v28 = v15[0];
      v29 = 1024;
      v30 = v16[0] == v15[0];
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>, T = CLCalorimetryFunctionalStrengthDMFeatures, LegacyT = CLCalorimetryFunctionalStrengthDMFeatures, ConverterT = void]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v16;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v15;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
  }

  return v7 & 1;
}

uint64_t sub_10062D53C(uint64_t a1, _OWORD *a2, double a3)
{
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
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
    sub_100633BCC();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v33 = v9;
      v34 = 2048;
      v35 = a3;
      v36 = 1024;
      v37 = v7;
      v38 = 2048;
      v39 = *&v17[0];
      v40 = 1024;
      v41 = 0;
      v42 = 2048;
      v43 = *&v16[0];
      v44 = 1024;
      v45 = *v17 == *v16;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v14 = *(a1 + 48);
      v18 = 67110656;
      v19 = v14;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v7;
      v24 = 2048;
      v25 = *&v17[0];
      v26 = 1024;
      v27 = 0;
      v28 = 2048;
      v29 = *&v16[0];
      v30 = 1024;
      v31 = *v17 == *v16;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryRowingDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryRowingDMFeatures>, T = CLCalorimetryRowingDMFeatures, LegacyT = CLCalorimetryRowingDMFeatures, ConverterT = void]", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v17;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v16;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
  }

  return v7 & 1;
}

uint64_t sub_10062D854(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_u64[0];
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
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
    sub_100633AE0();
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v32 = v9;
      v33 = 2048;
      v34 = v4;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v16[0];
      v39 = 1024;
      v40 = 0;
      v41 = 2048;
      v42 = v15[0];
      v43 = 1024;
      v44 = v16[0] == v15[0];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v17 = 67110656;
      v18 = v13;
      v19 = 2048;
      v20 = v4;
      v21 = 1024;
      v22 = v7;
      v23 = 2048;
      v24 = v16[0];
      v25 = 1024;
      v26 = 0;
      v27 = 2048;
      v28 = v15[0];
      v29 = 1024;
      v30 = v16[0] == v15[0];
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryKickboxingDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryKickboxingDMFeatures>, T = CLCalorimetryKickboxingDMFeatures, LegacyT = CLCalorimetryKickboxingDMFeatures, ConverterT = void]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v16;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v15;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
    *(a2 + 16) = v11[2];
  }

  return v7 & 1;
}

uint64_t sub_10062DB78(uint64_t a1, uint64_t a2, double a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
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
    v8 = sub_100633CB0(*(a1 + 8), v17, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v36 = v10;
      v37 = 2048;
      v38 = a3;
      v39 = 1024;
      v40 = v7;
      v41 = 2048;
      v42 = *(&v19[0] + 1);
      v43 = 1024;
      v44 = v8;
      v45 = 2048;
      v46 = *(&v17[0] + 1);
      v47 = 1024;
      v48 = *(v19 + 1) == *(v17 + 1);
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v21 = 67110656;
      v22 = v15;
      v23 = 2048;
      v24 = a3;
      v25 = 1024;
      v26 = v7;
      v27 = 2048;
      v28 = *(&v19[0] + 1);
      v29 = 1024;
      v30 = v8;
      v31 = 2048;
      v32 = *(&v17[0] + 1);
      v33 = 1024;
      v34 = *(v19 + 1) == *(v17 + 1);
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>, T = CLAccessoryDMFeatures, LegacyT = CLAccessoryDMFeatures, ConverterT = void]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v19;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = v17;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12[2];
    *(a2 + 48) = *(v12 + 6);
  }

  return v7 & 1;
}

uint64_t sub_10062DEB8()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1.n128_f64[0];
  v5 = v0;
  __src = -1.0;
  v20 = 0;
  v21 = 0;
  v16 = -1.0;
  v17 = 0;
  v18 = 0;
  v6 = *(v0 + 24);
  if (v6 && *(v0 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**v0 + 24))(v1);
    v6 = *(v5 + 24);
  }

  if ((v6 == 1 || *(v5 + 28) == 1) && *(v5 + 64) == 1)
  {
    v8 = sub_100633D9C(*(v5 + 8), &v16, v4, *(v5 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(v5 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(v5 + 48);
      v36[0] = 67110656;
      v36[1] = v10;
      v37 = 2048;
      v38 = v4;
      v39 = 1024;
      v40 = v7;
      v41 = 2048;
      v42 = __src;
      v43 = 1024;
      v44 = v8;
      v45 = 2048;
      v46 = v16;
      v47 = 1024;
      v48 = __src == v16;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v36, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v36, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v14 = *(v5 + 48);
      v22 = 67110656;
      v23 = v14;
      v24 = 2048;
      v25 = v4;
      v26 = 1024;
      v27 = v7;
      v28 = 2048;
      v29 = __src;
      v30 = 1024;
      v31 = v8;
      v32 = 2048;
      v33 = v16;
      v34 = 1024;
      v35 = __src == v16;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>, T = CLCalorimetryFMEmbeddingsAccessory, LegacyT = CLCalorimetryFMEmbeddingsAccessory, ConverterT = void]", "%s\n", v15);
      if (v15 != v36)
      {
        free(v15);
      }
    }
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    p_src = &__src;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    p_src = &v16;
    LOBYTE(v7) = v8;
LABEL_20:
    memcpy(v3, p_src, 0x80CuLL);
  }

  return v7 & 1;
}

uint64_t sub_10062E224(uint64_t a1, uint64_t a2, double a3)
{
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = -1.0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = -1.0;
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
    v8 = sub_100633E84(*(a1 + 8), &v19, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v50 = v10;
      v51 = 2048;
      v52 = a3;
      v53 = 1024;
      v54 = v7;
      v55 = 2048;
      v56 = v27;
      v57 = 1024;
      v58 = v8;
      v59 = 2048;
      v60 = v19;
      v61 = 1024;
      v62 = v27 == v19;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v17 = *(a1 + 48);
      v35 = 67110656;
      v36 = v17;
      v37 = 2048;
      v38 = a3;
      v39 = 1024;
      v40 = v7;
      v41 = 2048;
      v42 = v27;
      v43 = 1024;
      v44 = v8;
      v45 = 2048;
      v46 = v19;
      v47 = 1024;
      v48 = v27 == v19;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>, T = CLCalorimetryReducedEmbeddings, LegacyT = CLCalorimetryReducedEmbeddings, ConverterT = void]", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = &v27;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = &v19;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = *(v12 + 5);
    *(a2 + 64) = *(v12 + 4);
    *(a2 + 80) = v13;
    *(a2 + 96) = *(v12 + 6);
    *(a2 + 112) = v12[14];
    v14 = *(v12 + 1);
    *a2 = *v12;
    *(a2 + 16) = v14;
    v15 = *(v12 + 3);
    *(a2 + 32) = *(v12 + 2);
    *(a2 + 48) = v15;
  }

  return v7 & 1;
}

void sub_10062E5A0(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 4564) = *(a2 + 44);
  *(a1 + 4536) = v4;
  *(a1 + 4552) = v5;
  *(a1 + 4520) = v3;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    v15 = *(a2 + 10);
    v16 = *(a2 + 11);
    v17 = *(a2 + 48);
    v18 = *a2;
    v19 = *(a2 + 1);
    v20 = *(a2 + 56);
    v21 = *(a2 + 57);
    v22 = *(a2 + 58);
    v23 = *(a2 + 13);
    v24[0] = 67113216;
    v24[1] = v18;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v14;
    v41 = 1024;
    v42 = v15;
    v43 = 2048;
    v44 = v16;
    v45 = 1024;
    v46 = v17;
    v47 = 1024;
    v48 = v19;
    v49 = 1024;
    v50 = v20;
    v51 = 1024;
    v52 = v21;
    v53 = 1024;
    v54 = v22;
    v55 = 2048;
    v56 = v23;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ModelInput,gender,%d,height,%f,weight,%f,vo2max,%f,age,%f,hrmin,%f,hrmax,%f,hronset,%f,pal,%f,condition,%d,runVo2max,%f,betaBlockerUse,%d,biologicalSex,%d,isAgeSet,%d,isHeightSet,%d,isWeightSet,%d,adaptiveEMThresh,%f", v24, 0x90u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB83C(a2);
  }
}

uint64_t sub_10062E7A0(uint64_t a1)
{
  result = sub_1000D7E48();
  if (result)
  {
    if (result == 3)
    {
      return *(a1 + 248) & ((*(a1 + 324) & 2u) >> 1);
    }

    else if (result == 2 && *(a1 + 248) == 1)
    {
      return (*(a1 + 240) < 0x19uLL) & (0x1028010u >> *(a1 + 240)) | ((*(a1 + 324) & 2u) >> 1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10062E828(uint64_t a1)
{
  result = sub_10062E86C();
  if (result)
  {
    return sub_10062DB78(a1 + 4304, v3, *(a1 + 8));
  }

  return result;
}

uint64_t sub_10062E86C()
{
  if ((atomic_load_explicit(&qword_1026583E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583E8))
  {
    v1 = 1;
    sub_100126E84(&unk_1026583E0, "UseAccessoryDMDerivedFeaturesForCalorimetry", &v1, 0);
    __cxa_guard_release(&qword_1026583E8);
  }

  return byte_1026583E1;
}

uint64_t sub_10062E904()
{
  result = sub_10062E86C();
  if (result)
  {
    sub_10062DEB8();
    return 0;
  }

  return result;
}

uint64_t sub_10062E960(uint64_t a1)
{
  v2[0] = -1.0;
  LODWORD(result) = sub_10062E224(a1 + 4448, v2, *(a1 + 8));
  if (v2[0] > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_10062E9A4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 != 19)
  {
    if (v3 == 1)
    {
LABEL_8:
      v7 = sub_1000D51F0(a1 + 448);
      sub_10062ECAC(v7, 10.0, 0.1);
      v8 = sub_1000D51F0(a1 + 457);
      sub_10062ECAC(v8, 10.0, 0.1);
      v9 = sub_1000D51F0(a1 + 412);
      sub_10062EAB0(v9, 35.0, 8.0);
      a1[409] = 0x403E000000000000;
      return;
    }

    if (v3)
    {
      return;
    }
  }

  if (*(a2 + 208) != 1)
  {
    goto LABEL_8;
  }

  a1[409] = 0x4050400000000000;
  v4 = sub_1000D51F0(a1 + 412);
  sub_10062EAB0(v4, 65.0, 65.0);
  v5 = sub_1000D51F0(a1 + 448);
  sub_10062ECAC(v5, 150.0, 150.0);
  v6 = sub_1000D51F0(a1 + 457);

  sub_10062ECAC(v6, 150.0, 150.0);
}

void sub_10062EAB0(double *a1, double a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    *buf = 136316162;
    v12 = v8;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieInput<CLCatherineData>::modifyTimeouts(CFTimeInterval, CFTimeInterval) [Data_T = CLCatherineData]", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  a1[12] = a2;
  a1[2] = a3;
}

void sub_10062ECAC(double *a1, double a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    *buf = 136316162;
    v12 = v8;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieInput<CLStepCountEntry>::modifyTimeouts(CFTimeInterval, CFTimeInterval) [Data_T = CLStepCountEntry]", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  a1[12] = a2;
  a1[2] = a3;
}

void sub_10062EEAC(void *a1)
{
  sub_10062EF14(a1);

  operator delete();
}

void *sub_10062EF14(void *a1)
{
  *a1 = off_102464760;
  v2 = a1[558];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[549];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[540];
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = a1[531];
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a1[522];
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = a1[513];
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = a1[504];
  if (v8)
  {
    sub_100008080(v8);
  }

  v9 = a1[495];
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = a1[486];
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = a1[477];
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = a1[468];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = a1[459];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = a1[450];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = a1[441];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = a1[432];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = a1[423];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = a1[414];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = a1[411];
  if (v19)
  {
    sub_100008080(v19);
  }

  return a1;
}

void *sub_10062F088(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024647E8;
  sub_1011FE42C(a1 + 3);
  return a1;
}

void sub_10062F104(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024647E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10062F164(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062F3E8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10062F3C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062F3E8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBB64();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_10062F520(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062F7A4(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLOdometerEntry>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10062F780(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062F7A4(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBC50();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_10062F8DC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062FB60(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLElevationChangeEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLElevationChangeEntry>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10062FB3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062FB60(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBD3C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_10062FC98(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062FF1C(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10062FEF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062FF1C(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBE28();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 122) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630054(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006302D8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_1006302B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006302D8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBF14();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630410(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630694(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100630670(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630694(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC000();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006307CC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630A50(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLSwimEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLSwimEntry>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100630A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630A50(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC0EC();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630B88(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630E0C(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<_CLFitnessMachineData>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<_CLFitnessMachineData>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100630DE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630E0C(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC1D8();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630F44(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006311C8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_1006311A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006311C8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC2C4();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631300(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631584(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100631560(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631584(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC3B0();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006316BC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631940(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryRowingDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryRowingDMFeatures>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10063191C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631940(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC49C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631A78(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631CFC(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryKickboxingDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryKickboxingDMFeatures>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100631CD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631CFC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC588();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631E34(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006320B8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLRawHR>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLRawHR>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100632094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006320B8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC674();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006321F0(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632474(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100632450(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632474(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC760();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006325AC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632830(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_10063280C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632830(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC84C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100632968(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18(a5);
    abort_report_np();
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632BEC(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v17 = v5;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return a1;
}

void sub_100632BC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632BEC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC938();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100632D24(uint64_t a1)
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

void sub_100632DB4(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
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
      sub_1018EA6D8();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v17);
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
    sub_100633094(v12, a2, Current, a3);
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

uint64_t sub_100633094(uint64_t a1, int a2, double a3, double a4)
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

uint64_t sub_100633128(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECA24();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633228(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECBFC();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633328(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECCE8();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633428(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECDD4();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633528(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_1011FEC48(a1, &v16, a3 - a4, a3 + a4);
  v6 = v16;
  if (v16 != v17)
  {
    v7 = v16 + 4;
    v8 = v16;
    if (v16 + 4 != v17)
    {
      v9 = *v16;
      v8 = v16;
      v10 = v16 + 4;
      do
      {
        v11 = *v10;
        v10 += 4;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v17);
    }

    if (v8 != v17)
    {
      v13 = *(v8 + 1);
      *a2 = *v8;
      a2[1] = v13;
      v14 = 1;
      if (!v6)
      {
        return v14;
      }

      goto LABEL_11;
    }
  }

  v14 = 0;
  if (v16)
  {
LABEL_11:
    v17 = v6;
    operator delete(v6);
  }

  return v14;
}

void sub_1006335F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006336D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006337B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006338BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006338D8(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_1011FECF4(a1, &v18, a3 - a4, a3 + a4);
  v6 = v18;
  if (v18 != v19)
  {
    v7 = v18 + 10;
    v8 = v18;
    if (v18 + 10 != v19)
    {
      v9 = *v18;
      v8 = v18;
      v10 = v18 + 10;
      do
      {
        v11 = *v10;
        v10 += 10;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v19);
    }

    if (v8 != v19)
    {
      *a2 = *v8;
      v13 = *(v8 + 1);
      v14 = *(v8 + 2);
      v15 = *(v8 + 4);
      a2[3] = *(v8 + 3);
      a2[4] = v15;
      a2[1] = v13;
      a2[2] = v14;
      v16 = 1;
      if (!v6)
      {
        return v16;
      }

      goto LABEL_11;
    }
  }

  v16 = 0;
  if (v18)
  {
LABEL_11:
    v19 = v6;
    operator delete(v6);
  }

  return v16;
}

void sub_1006339B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633CB0(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1011FEDAC(a1, &v14, a3 - a4, a3 + a4);
  v6 = v14;
  if (v14 != v15)
  {
    v7 = (v14 + 56);
    v8 = v14;
    if (v14 + 56 != v15)
    {
      v8 = v14;
      do
      {
        if (vabdd_f64(a3, v7[1]) < vabdd_f64(a3, v8[1]))
        {
          v8 = v7;
        }

        v7 += 7;
      }

      while (v7 != v15);
    }

    if (v8 != v15)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 2);
      *(a2 + 48) = v8[6];
      *(a2 + 16) = v10;
      *(a2 + 32) = v11;
      *a2 = v9;
      v12 = 1;
      if (!v6)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  if (v14)
  {
LABEL_11:
    v15 = v6;
    operator delete(v6);
  }

  return v12;
}

void sub_100633D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633D9C(uint64_t *a1, void *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1011FEE6C(a1, &v12, a3 - a4, a3 + a4);
  v6 = v12;
  if (v12 != v13)
  {
    v7 = v12 + 258;
    v8 = v12;
    if (v12 + 258 != v13)
    {
      v9 = *v12;
      v8 = v12;
      do
      {
        if (vabdd_f64(a3, *v7) < vabdd_f64(a3, v9))
        {
          v9 = *v7;
          v8 = v7;
        }

        v7 += 258;
      }

      while (v7 != v13);
    }

    if (v8 != v13)
    {
      memcpy(a2, v8, 0x80CuLL);
      v10 = 1;
      if (!v6)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  v10 = 0;
  if (v12)
  {
LABEL_11:
    v13 = v6;
    operator delete(v6);
  }

  return v10;
}

void sub_100633E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633E84(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1011FF504(a1, &v21, a3 - a4, a3 + a4);
  v6 = v21;
  if (v21 != v22)
  {
    v7 = v21 + 15;
    v8 = v21;
    if (v21 + 15 != v22)
    {
      v9 = *v21;
      v8 = v21;
      v10 = v21 + 15;
      do
      {
        v11 = *v10;
        v10 += 15;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v22);
    }

    if (v8 != v22)
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = *(v8 + 3);
      *(a2 + 32) = *(v8 + 2);
      *(a2 + 48) = v15;
      *a2 = v13;
      *(a2 + 16) = v14;
      v16 = *(v8 + 4);
      v17 = *(v8 + 5);
      v18 = *(v8 + 6);
      *(a2 + 112) = v8[14];
      *(a2 + 80) = v17;
      *(a2 + 96) = v18;
      *(a2 + 64) = v16;
      v19 = 1;
      if (!v6)
      {
        return v19;
      }

      goto LABEL_11;
    }
  }

  v19 = 0;
  if (v21)
  {
LABEL_11:
    v22 = v6;
    operator delete(v6);
  }

  return v19;
}

void sub_100633F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x2Cu);
}

BOOL sub_100633FC8()
{
  v1 = qword_1025D4238;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100633FE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x2Cu);
}

void sub_100634008(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x2Cu);
}

void sub_100634024(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x2Cu);
}

uint64_t sub_100634088(uint64_t a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  *v17 = 0u;
  *v18 = 0u;
  *v15 = 0u;
  *v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v12 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x5AE85BE9uLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  if (sub_100635AB0(v12, 14, v6) == 14)
  {
    if (sub_100635CE0(a1, v12[0]))
    {
      *(a1 + 96) |= 1uLL;
    }

    if (sub_100635DA4(a1 + 16, v12[1], v13))
    {
      *(a1 + 96) |= 2uLL;
    }

    if (sub_100635DA4(a1 + 40, *(&v13 + 1), v14[0]))
    {
      *(a1 + 96) |= 4uLL;
    }

    if (v14[1])
    {
      v7 = *v14[1];
      if ((v7 - 48) <= 9)
      {
        v7 = atoi(v14[1]);
      }

      *(a1 + 64) = v7;
      *(a1 + 96) |= 8uLL;
    }

    if (v15[0])
    {
      v8 = *v15[0];
      if ((v8 - 48) <= 9)
      {
        v8 = atoi(v15[0]);
      }

      *(a1 + 68) = v8;
      *(a1 + 96) |= 0x10uLL;
    }

    if (v15[1])
    {
      *(a1 + 72) = (atof(v15[1]) * 10.0);
      *(a1 + 96) |= 0x20uLL;
    }

    if (v16[0])
    {
      *(a1 + 76) = (atof(v16[0]) * 10.0);
      *(a1 + 96) |= 0x40uLL;
    }

    if (v17[0])
    {
      *(a1 + 80) = (atof(v17[0]) * 10.0);
      *(a1 + 96) |= 0x80uLL;
    }

    if (v18[0])
    {
      *(a1 + 84) = (atof(v18[0]) * 10.0);
      *(a1 + 96) |= 0x100uLL;
    }

    if (v18[1])
    {
      v9 = *v18[1];
      if ((v9 - 48) <= 9)
      {
        v9 = atoi(v18[1]);
      }

      v10 = 0;
      *(a1 + 88) = v9;
      *(a1 + 96) |= 0x200uLL;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 8;
  }

  free(v6);
  return v10;
}

uint64_t sub_1006342EC(int *a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  *v15 = 0u;
  *v16 = 0u;
  memset(v14, 0, sizeof(v14));
  *v13 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x7173F870uLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  if (sub_100635AB0(v13, 18, v6) == 18)
  {
    if (v13[0])
    {
      v7 = *v13[0];
      if ((v7 - 48) <= 9)
      {
        v7 = atoi(v13[0]);
      }

      *a1 = v7;
      *(a1 + 9) |= 1uLL;
    }

    if (v13[1])
    {
      v8 = *v13[1];
      if ((v8 - 48) <= 9)
      {
        v8 = atoi(v13[1]);
      }

      a1[1] = v8;
      *(a1 + 9) |= 2uLL;
    }

    for (i = 0; i != 12; ++i)
    {
      v10 = *(v14 + i);
      if (v10)
      {
        v11 = *v10;
        if ((v11 - 48) <= 9)
        {
          v11 = atoi(v10);
        }

        a1[i + 2] = v11;
        *(a1 + 9) |= (4 << i);
      }
    }

    if (v15[0])
    {
      a1[14] = (atof(v15[0]) * 10.0);
      *(a1 + 9) |= 0x4000uLL;
    }

    if (v15[1])
    {
      a1[15] = (atof(v15[1]) * 10.0);
      *(a1 + 9) |= 0x8000uLL;
    }

    if (v16[0])
    {
      a1[16] = (atof(v16[0]) * 10.0);
      *(a1 + 9) |= 0x10000uLL;
    }

    free(v6);
    return 1;
  }

  else
  {
    free(v6);
    return 8;
  }
}

uint64_t sub_100634500(int *a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0xC2BDC7DEuLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  v7 = sub_100635AB0(v18, 19, v6);
  if (v7 > 2)
  {
    v9 = v7;
    if (v18[0])
    {
      v10 = *v18[0];
      if ((v10 - 48) <= 9)
      {
        v10 = atoi(v18[0]);
      }

      *a1 = v10;
      *(a1 + 10) |= 1uLL;
    }

    if (v18[1])
    {
      v11 = *v18[1];
      if ((v11 - 48) <= 9)
      {
        v11 = atoi(v18[1]);
      }

      a1[1] = v11;
      *(a1 + 10) |= 2uLL;
    }

    if (v19[0])
    {
      v12 = *v19[0];
      if ((v12 - 48) <= 9)
      {
        v12 = atoi(v19[0]);
      }

      a1[2] = v12;
      *(a1 + 10) |= 4uLL;
    }

    if (v9 >= 7)
    {
      v13 = 0;
      v14 = a1 + 3;
      v15 = v21;
      v16 = 11;
      do
      {
        if (v13 >= a1[2])
        {
          break;
        }

        sub_100635EB4(v14, *(v15 - 3), *(v15 - 2), *(v15 - 1), *v15);
        *(a1 + 10) |= (8 << v13);
        if (v16 > v9)
        {
          break;
        }

        v15 += 4;
        v14 += 4;
        v16 += 4;
      }

      while (v13++ < 3);
    }

    free(v6);
    return 2;
  }

  else
  {
    free(v6);
    return 8;
  }
}

uint64_t sub_1006346FC(uint64_t a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  v22 = 0;
  *v20 = 0u;
  *v21 = 0u;
  v18 = 0u;
  *v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x2C62167DuLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  v7 = sub_100635AB0(v16, 13, v6);
  if (v7 <= 0xD && (v8 = v7, ((1 << v7) & 0x3400) != 0))
  {
    if (sub_100635CE0(a1, v16[0]))
    {
      *(a1 + 96) |= 1uLL;
    }

    if (v16[1])
    {
      v9 = *v16[1];
      if ((v9 - 48) <= 9)
      {
        v9 = atoi(v16[1]);
      }

      *(a1 + 12) = v9;
      *(a1 + 96) |= 2uLL;
    }

    if (sub_100635DA4(a1 + 16, v17, *(&v17 + 1)))
    {
      *(a1 + 96) |= 4uLL;
    }

    if (sub_100635DA4(a1 + 40, v18, *(&v18 + 1)))
    {
      *(a1 + 96) |= 8uLL;
    }

    if (v19[0])
    {
      *(a1 + 64) = (atof(v19[0]) * 10.0);
      *(a1 + 96) |= 0x10uLL;
    }

    if (v19[1])
    {
      *(a1 + 68) = (atof(v19[1]) * 10.0);
      *(a1 + 96) |= 0x20uLL;
    }

    if (v20[0])
    {
      v10 = atoi(v20[0]);
      *(a1 + 72) = v10 / 10000;
      *(a1 + 76) = v10 / 100 % 100;
      *(a1 + 80) = v10 % 100;
      *(a1 + 96) |= 0x40uLL;
    }

    if (v8 >= 0xB)
    {
      if (v20[1])
      {
        *(a1 + 84) = (atof(v20[1]) * 10.0);
        *(a1 + 96) |= 0x80uLL;
      }

      if (v8 != 11)
      {
        if (v21[0])
        {
          v11 = *v21[0];
          if ((v11 - 48) <= 9)
          {
            v11 = atoi(v21[0]);
          }

          *(a1 + 88) = v11;
          *(a1 + 96) |= 0x100uLL;
        }

        if (v8 >= 0xD && v21[1])
        {
          v12 = *v21[1];
          if ((v12 - 48) <= 9)
          {
            v12 = atoi(v21[1]);
          }

          *(a1 + 92) = v12;
          *(a1 + 96) |= 0x200uLL;
        }
      }
    }

    free(v6);
    if (*(a1 + 64) / 10.0 * 0.514444444 <= 600.0)
    {
      return 3;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018ECEC0();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "invalid GPRMC,speed above max", v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018ECED4();
    }
  }

  else
  {
    free(v6);
  }

  return 8;
}

uint64_t sub_100634A6C(CFAbsoluteTime *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0xA842EB7CuLL);
  if (!v6)
  {
    return 8;
  }

  v7 = v6;
  v8 = 8;
  if (a1 && a2)
  {
    *v34 = 0u;
    memset(v35, 0, 464);
    *v32 = 0u;
    *v33 = 0u;
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(v32, 107, v7) > 5)
    {
      if (v32[0])
      {
        a1[3] = atof(v32[0]);
        *a1 = CFAbsoluteTimeGetCurrent();
        a1[1] = sub_1000081AC();
        a1[2] = sub_1000137E0();
        if (v32[1])
        {
          v10 = *v32[1];
          if ((v10 - 48) <= 9)
          {
            v10 = atoi(v32[1]);
          }

          *(a1 + 8) = v10;
          if (v33[0])
          {
            v11 = *v33[0];
            if ((v11 - 48) <= 9)
            {
              v11 = atoi(v33[0]);
            }

            *(a1 + 9) = v11;
            if (v33[1])
            {
              v12 = *v33[1];
              if ((v12 - 48) <= 9)
              {
                v12 = atoi(v33[1]);
              }

              *(a1 + 10) = v12;
            }

            if (v34[0])
            {
              v13 = *v34[0];
              if (v13 - 48 <= 9)
              {
                v13 = atoi(v34[0]);
              }

              *(a1 + 11) = v13;
              if (v13)
              {
                if (v13 <= 0x32)
                {
                  v21 = v13;
                  v22 = v35;
                  while (1)
                  {
                    v23 = *(v22 - 1);
                    if (!v23)
                    {
                      break;
                    }

                    a1[6] = atof(v23);
                    if (!*v22)
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_1018ECFA8();
                      }

                      v26 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(v29[0]) = 0;
                        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "STARK,PASCD,unexpected empty sample field", v29, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_1018ED090();
                      }

                      goto LABEL_88;
                    }

                    v24 = atof(*v22);
                    a1[56] = v24;
                    if (v24 > 600.0)
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_1018ECFA8();
                      }

                      v27 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(v29[0]) = 0;
                        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid speed,above max", v29, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_1018ECFBC();
                      }

                      goto LABEL_88;
                    }

                    v22 += 2;
                    ++a1;
                    v8 = 4;
                    if (!--v21)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (qword_1025D48A0 != -1)
                  {
                    sub_1018ECFA8();
                  }

                  v25 = qword_1025D48A8;
                  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                  {
                    LOWORD(v29[0]) = 0;
                    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "STARK,PASCD,unexpected empty timeOffset field", v29, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018ED164();
                  }
                }

                else
                {
                  if (qword_1025D48A0 != -1)
                  {
                    sub_1018ECFA8();
                  }

                  v14 = qword_1025D48A8;
                  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
                  {
                    v15 = *(a1 + 11);
                    v29[0] = 67109376;
                    v29[1] = v15;
                    v30 = 1024;
                    v31 = 50;
                    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning STARK,PASCD,invalid sampleCount,%d,max,%d", v29, 0xEu);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018ED238(a1 + 11);
                  }
                }

LABEL_88:
                v8 = 8;
              }

              else
              {
                if (qword_1025D48A0 != -1)
                {
                  sub_1018ECFA8();
                }

                v20 = qword_1025D48A8;
                if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(v29[0]) = 0;
                  _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "STARK,PASCD,sampleCount==0", v29, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018ED328();
                }
              }
            }

            else
            {
              if (qword_1025D48A0 != -1)
              {
                sub_1018ECFA8();
              }

              v19 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v29[0]) = 0;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid sampleCount", v29, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018ED3FC();
              }
            }
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018ECFA8();
            }

            v18 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v29[0]) = 0;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid transmissionState", v29, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018ED4D0();
            }
          }
        }

        else
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018ECFA8();
          }

          v17 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v29[0]) = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid sensorType", v29, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018ED5A4();
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018ECFA8();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v29[0]) = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid timestamp", v29, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018ED678();
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid fields", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED74C();
      }
    }
  }

LABEL_89:
  free(v7);
  return v8;
}

uint64_t sub_100635138(double *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0x55D3DCEBuLL);
  if (v6)
  {
    v7 = v6;
    v8 = 8;
    if (!a1 || !a2)
    {
      goto LABEL_63;
    }

    *v32 = 0u;
    memset(v33, 0, 496);
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(v32, 205, v7) <= 2)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid fields", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDC60();
      }

      goto LABEL_63;
    }

    if (!v32[0])
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid timestamp", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDB8C();
      }

      goto LABEL_63;
    }

    *a1 = atof(v32[0]);
    if (!v32[1])
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v16 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sampleCount", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDAB8();
      }

      goto LABEL_63;
    }

    v10 = *v32[1];
    if ((v10 - 48) <= 9)
    {
      v10 = atoi(v32[1]);
    }

    v12 = a1 + 11;
    v11 = *(a1 + 11);
    *(a1 + 2) = v10;
    if (v11 <= 0x32)
    {
      if (v10 < 1)
      {
        v8 = 5;
LABEL_63:
        free(v7);
        return v8;
      }

      v17 = v10;
      v18 = a1 + 6;
      v19 = v33 + 8;
      while (1)
      {
        v20 = *(v19 - 1);
        if (!v20)
        {
          break;
        }

        *(v18 - 3) = atof(v20);
        v21 = *v19;
        if (*v19)
        {
          *(v18 - 2) = atof(*v19);
          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        *(a1 + 3) = v22;
        v23 = *(v19 + 1);
        if (v23)
        {
          *(v18 - 1) = atof(*(v19 + 1));
          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        *(a1 + 4) = v24;
        v25 = *(v19 + 2);
        if (v25)
        {
          *v18 = atof(v25);
          *(a1 + 5) = 1;
        }

        else
        {
          *(a1 + 5) = 0;
          if (!(v21 | v23))
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018ECFA8();
            }

            v27 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v29[0]) = 0;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sample set, all empty", v29, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018ED820();
            }

            goto LABEL_62;
          }
        }

        v18 += 4;
        v19 += 32;
        v8 = 5;
        if (!--v17)
        {
          goto LABEL_63;
        }
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v26 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sample time offset", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED8F4();
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v12;
        v29[0] = 67109376;
        v29[1] = v14;
        v30 = 1024;
        v31 = 50;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sampleCount,%d,max,%d", v29, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED9C8(v12);
      }
    }

LABEL_62:
    v8 = 8;
    goto LABEL_63;
  }

  return 8;
}

uint64_t sub_100635630(CFAbsoluteTime *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0x87354637uLL);
  if (!v6)
  {
    return 8;
  }

  v7 = v6;
  v8 = 8;
  if (a1 && a2)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(&v15, 3, v7) > 2)
    {
      if (v15)
      {
        a1[1] = atof(v15);
        if (!v16)
        {
          goto LABEL_18;
        }

        v10 = *v16;
        if ((v10 - 48) <= 9)
        {
          v10 = atoi(v16);
        }

        if (v10 == 84)
        {
          *a1 = CFAbsoluteTimeGetCurrent();
          v8 = 7;
        }

        else
        {
LABEL_18:
          if (qword_1025D48A0 != -1)
          {
            sub_1018ECFA8();
          }

          v11 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *v14 = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid degrees true indication", v14, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018EDD34();
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018ECFA8();
        }

        v12 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid heading", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018EDE08();
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid fields", v14, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDEDC();
      }
    }
  }

  free(v7);
  return v8;
}

uint64_t sub_1006358B0(uint64_t a1, int a2)
{
  if (a2 < 5)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    v3 = (a1 + 1);
    v4 = (a2 - 3) - 1;
    do
    {
      v5 = *v3++;
      v2 ^= v5;
      --v4;
    }

    while (v4);
  }

  return v2;
}

BOOL sub_1006358E8(uint64_t a1, int a2)
{
  if (a2 < 5)
  {
    v4 = 0;
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = (a2 - 3) - 1;
    v6 = (a1 + 1);
    do
    {
      v7 = *v6++;
      LOBYTE(v4) = v7 ^ v4;
      --v5;
    }

    while (v5);
    v4 = v4;
  }

  __sprintf_chk(__s1, 0, 3uLL, "%X%X", v4 >> 4, v4 & 0xF);
  return strncmp(__s1, (a1 + a2 - 2), 2uLL) == 0;
}

unint64_t sub_100635988(unint64_t *a1, unint64_t *a2, char *__s, int a4)
{
  v7 = a4;
  result = memchr(__s, 36, a4);
  *a1 = result;
  if (result)
  {
    v9 = &__s[v7];
    result = memchr((result + 1), 42, &v9[~result]);
    *a2 = result;
    if (result)
    {
      v10 = result + 2;
      if (result + 2 >= v9)
      {
        return 0;
      }

      else
      {
        *a2 = v10;
        v11 = *a1;
        v12 = (*a1 + 1);
        while (v12 < v10)
        {
          v13 = memchr(v12, 36, v10 - v12 + 1);
          if (!v13)
          {
            break;
          }

          LODWORD(v11) = v13;
          *a1 = v13;
          v12 = v13 + 1;
          v10 = *a2;
        }

        return (v10 - v11 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_100635AB0(uint64_t a1, int a2, char *__str)
{
  v6 = strtok(__str, ",*");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = strlen(v6);
  v9 = strtok(0, ",*");
  v10 = 0;
  if (v9)
  {
    v11 = (a2 - 1);
    if (a2 >= 1)
    {
      v12 = v9;
      LODWORD(v10) = 0;
      v13 = v7 + v8;
      v25 = a2 - 2;
      while (1)
      {
        v14 = v12 + ~v13;
        v15 = v14 >= 1 && v10 < v11;
        if (v15)
        {
          v16 = v12 - v13;
          v17 = (v16 - 2);
          if ((v25 - v10) >= v17)
          {
            v18 = (v16 - 2);
          }

          else
          {
            v18 = (v25 - v10);
          }

          bzero((a1 + 8 * v10), 8 * v18 + 8);
          v19 = v10 + 1;
          v20 = v11 - 1 - v10;
          if (v20 >= v17)
          {
            LODWORD(v20) = v17;
          }

          LODWORD(v10) = v10 + v20 + 1;
          do
          {
            if (v14 < 2)
            {
              break;
            }

            --v14;
            v15 = v19++ < v11;
          }

          while (v15);
        }

        *(a1 + 8 * v10) = v12;
        if (sub_100635A4C(v12))
        {
          break;
        }

        v10 = (v10 + 1);
        v21 = strlen(v12);
        v22 = strtok(0, ",*");
        if (v22)
        {
          v13 = v12 + v21;
          v12 = v22;
          if (v10 < a2)
          {
            continue;
          }
        }

        return v10;
      }

      if (qword_1025D46E0 != -1)
      {
        sub_1018EDFB0();
      }

      v23 = qword_1025D46E8;
      if (os_log_type_enabled(qword_1025D46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v27 = 0;
        v28 = 2080;
        v29 = __str;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Field,%d,received with NAN, rejecting, %s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDFC4(__str);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t sub_100635CE0(int *a1, char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a2)
    {
      v4 = atof(a2);
      v5 = (floor(v4) + 0.5);
      *a1 = v5 / 10000;
      a1[1] = v5 / 100 % 100;
      *&v4 = v4 - v5 + (v5 % 100);
      a1[2] = LODWORD(v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100635DA4(uint64_t a1, char *a2, _BYTE *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    if (*a2 && *a3)
    {
      v6 = atof(a2);
      result = 0;
      *a1 = v6 / 100;
      *(a1 + 4) = v6 % 100;
      *(a1 + 8) = (v6 - v6) * 60.0;
      v7 = *a3;
      if ((v7 - 69) <= 0x12 && ((1 << (v7 - 69)) & 0x44201) != 0)
      {
        *(a1 + 16) = v7;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_100635E6C(uint64_t a1)
{
  v1 = *(a1 + 8) + (3600 * *a1 + 60 * *(a1 + 4));
  if ((*(a1 + 16) | 4) == 0x57)
  {
    v1 = 0.0 - v1;
  }

  return v1 / 3600.0;
}

uint64_t sub_100635EB4(int *a1, char *a2, const char *a3, const char *a4, const char *a5)
{
  if (a2)
  {
    v9 = atoi(a2);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v9;
  if (a3)
  {
    v10 = atoi(a3);
  }

  else
  {
    v10 = -1;
  }

  a1[1] = v10;
  if (a4)
  {
    v11 = atoi(a4);
  }

  else
  {
    v11 = -1;
  }

  a1[2] = v11;
  if (a5)
  {
    v12 = atoi(a5);
  }

  else
  {
    v12 = -1;
  }

  a1[3] = v12;
  return 1;
}

uint64_t sub_100635F58(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!strncmp("$GPGGA", a2, 6uLL))
  {
    v8 = &off_102464828;
LABEL_7:
    v12 = v8[1];

    return (v12)(a1, a2, a3);
  }

  else
  {
    v6 = &off_102464828;
    v7 = 7;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = v6[2];
      v10 = strlen(v9);
      v11 = strncmp(v9, a2, v10);
      v6 = v8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    return 8;
  }
}

id sub_1006360B4(void *a1, uint64_t a2)
{
  __p = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v22 + 9) = 257;
  sub_100639FE0(a2, &v12);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(*(&v19 + 1));
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*(&v16 + 1));
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(*(&v13 + 1));
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12);
  }

  if ([a1 manufacturer])
  {
    sub_10000EC00(&__str, [objc_msgSend(a1 "manufacturer")]);
    std::string::operator=(a2, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 name])
  {
    sub_10000EC00(&v10, [objc_msgSend(a1 "name")]);
    std::string::operator=((a2 + 24), &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 modelNumber])
  {
    sub_10000EC00(&v9, [objc_msgSend(a1 "modelNumber")]);
    std::string::operator=((a2 + 48), &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 serialNumber])
  {
    sub_10000EC00(&v8, [objc_msgSend(a1 "serialNumber")]);
    std::string::operator=((a2 + 72), &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 firmwareRevision])
  {
    sub_10000EC00(&v7, [objc_msgSend(a1 "firmwareRevision")]);
    std::string::operator=((a2 + 96), &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 hardwareRevision])
  {
    sub_10000EC00(&v6, [objc_msgSend(a1 "hardwareRevision")]);
    std::string::operator=((a2 + 120), &v6);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 ppid])
  {
    sub_10000EC00(&v5, [objc_msgSend(a1 "ppid")]);
    std::string::operator=((a2 + 144), &v5);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  *(a2 + 168) = 256;
  result = [a1 supportsCarPlay];
  *(a2 + 170) = result;
  return result;
}

void sub_100636360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006366B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == *(*(a1 + 40) + 8))
  {
    v129 = 0uLL;
    memset(v130, 0, sizeof(v130));
    *v127 = 0uLL;
    *v128 = 0uLL;
    *v125 = 0uLL;
    v126 = 0uLL;
    v123 = 0uLL;
    *v124 = 0uLL;
    *v121 = 0uLL;
    *v122 = 0uLL;
    v131 = 257;
    sub_1006360B4(v2, v121);
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    v10 = *(v8 + 16);
    sub_10063A160(v107, v121);
    v9(v10, v107);
    if (v120 < 0)
    {
      operator delete(v119);
    }

    if (v118 < 0)
    {
      operator delete(v117);
    }

    if (v116 < 0)
    {
      operator delete(v115);
    }

    if (v114 < 0)
    {
      operator delete(v113);
    }

    if (v112 < 0)
    {
      operator delete(v111);
    }

    if (v110 < 0)
    {
      operator delete(v109);
    }

    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    *(*(a1 + 40) + 8) = 0;
    v11 = [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager connectedAccessories];
    if (qword_1025D4620 != -1)
    {
      sub_1018EE46C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v133;
      sub_1000238CC([*(a1 + 32) manufacturer], v133);
      if (v136 < 0)
      {
        v13 = *v133;
      }

      sub_1000238CC([*(a1 + 32) modelNumber], v105);
      v14 = v106;
      v15 = v105[0];
      v16 = [(NSArray *)v11 count];
      v17 = v105;
      *buf = 136315650;
      if (v14 < 0)
      {
        v17 = v15;
      }

      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, state, 0, model, %s, %s, count, %lu", buf, 0x20u);
      if (v106 < 0)
      {
        operator delete(v105[0]);
      }

      if (SHIBYTE(v136) < 0)
      {
        operator delete(*v133);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE494(buf);
      v39 = v105;
      sub_1000238CC([*(a1 + 32) manufacturer], v105);
      if (v106 < 0)
      {
        v39 = v105[0];
      }

      sub_1000238CC([*(a1 + 32) modelNumber], v103);
      v40 = v104;
      v41 = v103[0];
      v42 = [(NSArray *)v11 count];
      v43 = v103;
      *v133 = 136315650;
      if (v40 < 0)
      {
        v43 = v41;
      }

      *&v133[4] = v39;
      v134 = 2080;
      v135 = v43;
      v136 = 2048;
      v137 = v42;
      v44 = _os_log_send_and_compose_impl();
      if (v104 < 0)
      {
        operator delete(v103[0]);
      }

      if (v106 < 0)
      {
        operator delete(v105[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v18 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v70 = SHIBYTE(v122[0]);
      v68 = v121[0];
      v66 = SHIBYTE(v125[0]);
      v64 = v124[0];
      v62 = SHIBYTE(v123);
      v60 = v122[1];
      v19 = SHIBYTE(v126);
      v20 = v125[1];
      v21 = SHIBYTE(v128[0]);
      v22 = v127[0];
      v23 = SHIBYTE(v129);
      v24 = v128[1];
      v25 = [(NSArray *)v11 count];
      v26 = v121;
      v27 = v124;
      v28 = &v122[1];
      v29 = &v125[1];
      v30 = v127;
      v31 = &v128[1];
      if (v23 < 0)
      {
        v31 = v24;
      }

      *buf = 136382211;
      if (v21 < 0)
      {
        v30 = v22;
      }

      if (v19 < 0)
      {
        v29 = v20;
      }

      if (v62 < 0)
      {
        v28 = v60;
      }

      if (v66 < 0)
      {
        v27 = v64;
      }

      if (v70 < 0)
      {
        v26 = v68;
      }

      *&buf[4] = v26;
      *&buf[12] = 2081;
      *&buf[14] = v27;
      *&buf[22] = 2081;
      *&buf[24] = v28;
      *&buf[32] = 2081;
      *&buf[34] = v29;
      *&buf[42] = 2081;
      *&buf[44] = v30;
      *&buf[52] = 2081;
      *&buf[54] = v31;
      *&buf[62] = 1025;
      LODWORD(v147[0]) = v25;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,Accessory disconnected,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,connected,%{private}d", buf, 0x44u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE428(buf);
      v69 = SHIBYTE(v122[0]);
      v67 = v121[0];
      v65 = SHIBYTE(v125[0]);
      v63 = v124[0];
      v61 = SHIBYTE(v123);
      v45 = v122[1];
      v46 = SHIBYTE(v126);
      v47 = v125[1];
      v48 = SHIBYTE(v128[0]);
      v49 = v127[0];
      v50 = SHIBYTE(v129);
      v51 = v128[1];
      v52 = [(NSArray *)v11 count];
      v53 = v121;
      v54 = v124;
      v55 = &v122[1];
      v56 = &v125[1];
      v57 = v127;
      v58 = &v128[1];
      if (v50 < 0)
      {
        v58 = v51;
      }

      *v133 = 136382211;
      if (v48 < 0)
      {
        v57 = v49;
      }

      if (v46 < 0)
      {
        v56 = v47;
      }

      if (v61 < 0)
      {
        v55 = v45;
      }

      if (v65 < 0)
      {
        v54 = v63;
      }

      if (v69 < 0)
      {
        v53 = v67;
      }

      *&v133[4] = v53;
      v134 = 2081;
      v135 = v54;
      v136 = 2081;
      v137 = v55;
      v138 = 2081;
      v139 = v56;
      v140 = 2081;
      v141 = v57;
      v142 = 2081;
      v143 = v58;
      v144 = 1025;
      v145 = v52;
      v59 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v59);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v32 = [(NSArray *)v11 countByEnumeratingWithState:&v99 objects:v132 count:16];
    if (v32)
    {
      v33 = *v100;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v100 != v33)
          {
            objc_enumerationMutation(v11);
          }

          v35 = *(*(&v99 + 1) + 8 * i);
          if ([*(a1 + 40) setupAccessory:v35 withListenerCall:1])
          {
            memset(v152, 0, sizeof(v152));
            v151 = 0u;
            *v150 = 0u;
            *v149 = 0u;
            v148 = 0u;
            *v147 = 0u;
            memset(buf, 0, sizeof(buf));
            v153 = 257;
            sub_1006360B4(v35, buf);
            v36 = *(a1 + 40);
            v37 = *(v36 + 16);
            v38 = *(v36 + 24);
            sub_10063A160(v85, buf);
            v38(v37, v85, 1);
            if (v98 < 0)
            {
              operator delete(v97);
            }

            if (v96 < 0)
            {
              operator delete(v95);
            }

            if (v94 < 0)
            {
              operator delete(v93);
            }

            if (v92 < 0)
            {
              operator delete(v91);
            }

            if (v90 < 0)
            {
              operator delete(v89);
            }

            if (v88 < 0)
            {
              operator delete(v87);
            }

            if (v86 < 0)
            {
              operator delete(v85[0]);
            }

            if ((v152[23] & 0x80000000) != 0)
            {
              operator delete(*v152);
            }

            if (SHIBYTE(v151) < 0)
            {
              operator delete(v150[1]);
            }

            if (SHIBYTE(v150[0]) < 0)
            {
              operator delete(v149[0]);
            }

            if (SHIBYTE(v148) < 0)
            {
              operator delete(v147[1]);
            }

            if (SHIBYTE(v147[0]) < 0)
            {
              operator delete(*&buf[48]);
            }

            if (buf[47] < 0)
            {
              operator delete(*&buf[24]);
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v32 = [(NSArray *)v11 countByEnumeratingWithState:&v99 objects:v132 count:16];
      }

      while (v32);
    }
  }

  else
  {
    v129 = 0uLL;
    memset(v130, 0, sizeof(v130));
    *v127 = 0uLL;
    *v128 = 0uLL;
    *v125 = 0uLL;
    v126 = 0uLL;
    v123 = 0uLL;
    *v124 = 0uLL;
    *v121 = 0uLL;
    *v122 = 0uLL;
    v131 = 257;
    sub_1006360B4(v2, v121);
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
    sub_10063A160(__dst, v121);
    v4(v5, __dst);
    if (v84 < 0)
    {
      operator delete(__p);
    }

    if (v82 < 0)
    {
      operator delete(v81);
    }

    if (v80 < 0)
    {
      operator delete(v79);
    }

    if (v78 < 0)
    {
      operator delete(v77);
    }

    if (v76 < 0)
    {
      operator delete(v75);
    }

    if (v74 < 0)
    {
      operator delete(v73);
    }

    if (v72 < 0)
    {
      operator delete(__dst[0]);
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "AccessoryObserver,unknown accessory disconnceted", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE428(buf);
      *v133 = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  if ((v130[23] & 0x80000000) != 0)
  {
    operator delete(*v130);
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128[1]);
  }

  if (SHIBYTE(v128[0]) < 0)
  {
    operator delete(v127[0]);
  }

  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125[1]);
  }

  if (SHIBYTE(v125[0]) < 0)
  {
    operator delete(v124[0]);
  }

  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122[1]);
  }

  if (SHIBYTE(v122[0]) < 0)
  {
    operator delete(v121[0]);
  }
}