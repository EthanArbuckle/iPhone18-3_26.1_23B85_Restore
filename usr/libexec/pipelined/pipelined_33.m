void sub_100209AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_100209B28(&a9);
  _Unwind_Resume(a1);
}

void ***sub_100209B28(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_100209BB0@<X0>(double **a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_100209C60(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_100209C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100209C60(double **a1, std::string *a2)
{
  v32 = 0u;
  v31 = 0u;
  *__p = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  std::locale::locale(&v27);
  v29 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0uLL;
  DWORD2(v32) = 24;
  *(&v27 + 1) = &__p[1];
  *&v28 = &__p[1];
  *(&v28 + 1) = &__p[1];
  *&v32 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v31);
  if (v31 < 0)
  {
    v4 = v31;
  }

  *&v29 = &__p[1];
  *(&v29 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v28 = 0uLL;
  *(&v27 + 1) = 0;
  v26 = off_100433ED0;
  v34.__loc_ = 0;
  std::ios_base::init(&v34, &v26);
  v35 = 0;
  v36 = -1;
  v38 = &v37;
  v39 = &v37 + 2;
  v5 = (&v33 + *(v33 - 3));
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = sub_1002CA5C4(&v33, a1);
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v34.__rdstate_ + *(v33 - 3));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v38 = v10;
  v39 = v9;
  if ((v7 & 5) == 0)
  {
    v13 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v17 = a2->__r_.__value_.__r.__words[2];
      v16 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v16 >= v13)
      {
        v18 = HIBYTE(v17);
LABEL_14:
        if ((v18 & 0x80u) == 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v10 == v9)
        {
          v19 = v15;
          goto LABEL_27;
        }

        if (v13 < 0x20 || v15 - v10 < 0x20)
        {
          v19 = v15;
          v20 = v10;
        }

        else
        {
          v19 = (v15 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v21 = (v10 + 16);
          v22 = &v15->__r_.__value_.__r.__words[2];
          v23 = v13 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v21 += 2;
            v22 += 4;
            v23 -= 32;
          }

          while (v23);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v19->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v13;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v13 & 0x7F;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v25 = *v20++;
          v19->__r_.__value_.__s.__data_[0] = v25;
          v19 = (v19 + 1);
        }

        while (v20 != v9);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v15 = a2;
      if (v13 <= 0x16)
      {
        goto LABEL_17;
      }

      v16 = 22;
    }

    std::string::__grow_by(a2, v16, v13 - v16, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v18) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v11 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v31) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v27);
  return v11;
}

void sub_10020A028(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

std::string *sub_10020A050@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10020A084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020A0A0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10020A110()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10020A180(uint64_t *a1, uint64_t *a2, void *a3, int a4, _DWORD *a5)
{
  v6 = *a1;
  v5 = a1[1];
  if (qword_10045B070 != -1)
  {
    sub_100385CF8();
  }

  v7 = 954437177 * ((v5 - v6) >> 4);
  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (a2[1] - *a2) >> 5;
    *buf = 134349568;
    *&buf[4] = v9;
    *&buf[12] = 1026;
    *buf_14 = v7;
    *&buf_14[4] = 1026;
    *&buf_14[6] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "@TileMaxPri, incoming, request, %{public}lu, db, %{public}d, maxcount, %{public}d", buf, 0x18u);
  }

  v109 = 0;
  v110 = 0;
  v111 = 0;
  v108[0] = 0;
  v108[1] = 0;
  v106[1] = 0;
  v107 = v108;
  v105 = v106;
  v106[0] = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v97 = 0;
  v98 = 0;
  v95[0] = 0;
  v95[1] = 0;
  v93[1] = 0;
  v94 = v95;
  v92 = v93;
  v93[0] = 0;
  if (*a2 != a2[1])
  {
    v110 = sub_1001BA068(&v109, *a2);
    operator new();
  }

  v10 = *a1;
  if (*a1 != a1[1])
  {
    sub_10026FAF0(v10);
    sub_10026FAE8(v10);
    v11 = nullsub_35(v10);
    sub_1001181E4(buf, v11);
  }

  v12 = 0;
  v86 = 0;
  v90 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v109) >> 3) - 1;
  v13 = a4 - v7;
  if (a4 <= v7)
  {
    v13 = 0;
  }

  v89 = v13;
  v84 = (v103 - v102) >> 4;
  while (v90 && v12 <= v90)
  {
    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v14 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 134349568;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *buf_14 = v90;
      *&buf_14[8] = 1026;
      *&buf_14[10] = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "TileMaxPri, headtail, %{public}lu, %{public}lu, priorityAtMax, %{public}d", buf, 0x1Cu);
    }

    if (v90 >= 0xAAAAAAAAAAAAAAABLL * ((v110 - v109) >> 3))
    {
      if (qword_10045B070 != -1)
      {
        sub_100385D0C();
      }

      v30 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349824;
        *&buf[4] = v12;
        *&buf[12] = 2050;
        *buf_14 = v90;
        *&buf_14[8] = 2050;
        *&buf_14[10] = 0xAAAAAAAAAAAAAAABLL * ((v110 - v109) >> 3);
        *&buf_14[18] = 2050;
        *&buf_14[20] = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "TileMaxPri, error, out of range, iterindex, %{public}lu, %{public}lu, sizes, %{public}lu, %{public}lu", buf, 0x2Au);
      }

      v90 = 0;
      v12 = 0;
      break;
    }

    v15 = *(4 * v12);
    v91 = *(4 * v90);
    v17 = v95[0];
LABEL_27:
    if (!v17)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v18 = v17;
      v19 = *(v17 + 7);
      if (v15 < v19)
      {
        v17 = *v18;
        goto LABEL_27;
      }

      if (v19 >= v15)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_31;
      }
    }

    if (*(v18 + 8) > 0)
    {
      sub_1001181E4(buf, &v109[3 * v12]);
    }

    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v16 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 67240960;
      *&buf[4] = v15;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      *buf_14 = 1026;
      *&buf_14[2] = v89;
      *&buf_14[6] = 1026;
      *&buf_14[8] = v84;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "TileMaxPri, spaceneed, priority, %{public}d, need, %{public}d, empty, %{public}d, avail, %{public}d", buf, 0x1Au);
    }

    v20 = v95[0];
    if (!v95[0])
    {
LABEL_40:
      operator new();
    }

    v21 = v95[0];
    while (1)
    {
      while (1)
      {
        v22 = v21;
        v23 = *(v21 + 7);
        if (v15 >= v23)
        {
          break;
        }

        v21 = *v22;
        if (!*v22)
        {
          goto LABEL_40;
        }
      }

      if (v23 >= v15)
      {
        break;
      }

      v21 = v22[1];
      if (!v21)
      {
        goto LABEL_40;
      }
    }

    v24 = *(v22 + 8);
LABEL_43:
    if (!v20)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      v25 = v20;
      v26 = *(v20 + 7);
      if (v15 < v26)
      {
        v20 = *v25;
        goto LABEL_43;
      }

      if (v26 >= v15)
      {
        break;
      }

      v20 = v25[1];
      if (!v20)
      {
        goto LABEL_47;
      }
    }

    v28 = *(v25 + 8);
    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v12 += v24;
    v86 += v28;
    v27 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "TileMaxPri, spacecheck, priority, %{public}d, allindb", buf, 8u);
    }

    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v29 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 134350080;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *buf_14 = v90;
      *&buf_14[8] = 1026;
      *&buf_14[10] = v15;
      *&buf_14[14] = 1026;
      *&buf_14[16] = v91;
      *&buf_14[20] = 1026;
      *&buf_14[22] = v89;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "TileMaxPri, htindex, %{public}lu, %{public}lu, htpriority, %{public}d, %{public}d, empty, %{public}d", buf, 0x28u);
    }

    if (v15 > 0)
    {
      if (qword_10045B070 != -1)
      {
        sub_100385D0C();
      }

      v31 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        *buf = 134349568;
        *&buf[4] = v12;
        *&buf[12] = 2050;
        *buf_14 = v90;
        *&buf_14[8] = 1026;
        *&buf_14[10] = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "TileMaxPri, primax, %{public}lu, %{public}lu, priorityAtMax, %{public}d", buf, 0x1Cu);
      }

      v32 = v90;
      if (v12)
      {
        v32 = v12 - 1;
      }

      v90 = v32;
      break;
    }
  }

  if (qword_10045B070 != -1)
  {
    sub_100385D0C();
  }

  v33 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    v34 = (a2[1] - *a2) >> 5;
    v35 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
    *buf = 134350848;
    *&buf[4] = v34;
    *&buf[12] = 1026;
    *buf_14 = 0;
    *&buf_14[4] = 1026;
    *&buf_14[6] = v86;
    *&buf_14[10] = 1026;
    *&buf_14[12] = 0;
    *&buf_14[16] = 1026;
    *&buf_14[18] = 0;
    *&buf_14[22] = 1026;
    *&buf_14[24] = 0;
    v114 = 0x802000000000402;
    v115 = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "@TileMaxPri, results, in, %{public}lu, queued, %{public}d, indb, %{public}d, evictlow, %{public}d, lowpri, %{public}d, evictoff, %{public}d, untouched, %{public}d, numtiles, %{public}ld", buf, 0x3Au);
  }

  *a5 = (a2[1] - *a2) >> 5;
  a5[1] = 0;
  a5[2] = v86;
  a5[3] = 0;
  a5[4] = 0;
  a5[5] = 0;
  a5[6] = 0;
  a5[7] = a4;
  a5[8] = 0;
  if (v90 | v12)
  {
    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v47 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *&buf[4] = v90;
      *&buf[12] = 2050;
      *buf_14 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "TileMaxPri, error, out of range, retindex, %{public}lu, size, %{public}lu", buf, 0x16u);
      if (qword_10045B070 != -1)
      {
LABEL_95:
        sub_100385D0C();
      }
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100385D0C();
    }

    v36 = v12;
    v37 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      v39 = *a2;
      v38 = a2[1];
      v40 = v95[0];
      if (!v95[0])
      {
LABEL_82:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v41 = v40;
          v42 = *(v40 + 7);
          if (v42 < 1)
          {
            break;
          }

          v40 = *v41;
          if (!*v41)
          {
            goto LABEL_82;
          }
        }

        if ((v42 & 0x80000000) == 0)
        {
          break;
        }

        v40 = v41[1];
        if (!v40)
        {
          goto LABEL_82;
        }
      }

      v43 = *(v41 + 8);
      *buf = 134349568;
      *&buf[4] = (v38 - v39) >> 5;
      *&buf[12] = 1026;
      *buf_14 = v43;
      *&buf_14[4] = 1026;
      *&buf_14[6] = a4;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "TileMaxPri, error, group exceeds max, total, %{public}lu, numinpriority, %{public}d, max, %{public}d", buf, 0x18u);
    }

    v44 = v99;
    v45 = v100;
    if (v100 != v99)
    {
      do
      {
        v46 = *(v45 - 1);
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
        }

        v45 -= 16;
      }

      while (v45 != v44);
    }

    v100 = v44;
    v12 = v36;
    if (qword_10045B070 != -1)
    {
      goto LABEL_95;
    }
  }

  v48 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241472;
    *&buf[4] = 0;
    *&buf[8] = 1026;
    *&buf[10] = 0;
    *buf_14 = 1026;
    *&buf_14[2] = 0;
    *&buf_14[6] = 2050;
    *&buf_14[8] = v12;
    *&buf_14[16] = 2050;
    *&buf_14[18] = v90;
    *&buf_14[26] = 2050;
    v114 = (v100 - v99) >> 4;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "@TileMaxPri, converged, %{public}d, htpriorities, %{public}d, %{public}d, htindex, %{public}lu, %{public}lu, evict, %{public}lu", buf, 0x32u);
  }

  a3[1] = *a3;
  v49 = v99;
  if (v100 != v99)
  {
    v50 = 0;
    v51 = 0;
    do
    {
      *buf = &v49[v50];
      v53 = sub_10020D37C(&v107, &v49[v50]);
      v54 = a3;
      v56 = a3[1];
      v55 = a3[2];
      if (v56 < v55)
      {
        *v56 = v53[6];
        v52 = (v56 + 1);
      }

      else
      {
        v57 = *a3;
        v58 = v56 - *a3;
        v59 = v58 >> 3;
        v60 = (v58 >> 3) + 1;
        if (v60 >> 61)
        {
          sub_10000FC84();
        }

        v61 = v55 - v57;
        if (v61 >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        *(8 * v59) = v53[6];
        v52 = 8 * v59 + 8;
        memcpy(0, v57, v58);
        *a3 = 0;
        a3[1] = v52;
        a3[2] = 0;
        if (v57)
        {
          operator delete(v57);
        }

        v54 = a3;
      }

      v54[1] = v52;
      ++v51;
      v49 = v99;
      v50 += 16;
    }

    while (v51 < (v100 - v99) >> 4);
  }

  if (qword_10045B070 != -1)
  {
    sub_100385D0C();
  }

  v63 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    v64 = (a3[1] - *a3) >> 3;
    *buf = 134349056;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "@EvictTrigger, prefetch, result, indoor, -1, -1, regional, %{public}ld, -1", buf, 0xCu);
  }

  sub_1000BFF70(&v92, v93[0]);
  sub_1000275F4(&v94, v95[0]);
  v65 = __p;
  if (__p)
  {
    v66 = v97;
    v67 = __p;
    if (v97 != __p)
    {
      do
      {
        v68 = *(v66 - 1);
        if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
        }

        v66 -= 16;
      }

      while (v66 != v65);
      v67 = __p;
    }

    v97 = v65;
    operator delete(v67);
  }

  v69 = v99;
  if (v99)
  {
    v70 = v100;
    v71 = v99;
    if (v100 != v99)
    {
      do
      {
        v72 = *(v70 - 1);
        if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v72->__on_zero_shared)(v72);
          std::__shared_weak_count::__release_weak(v72);
        }

        v70 -= 16;
      }

      while (v70 != v69);
      v71 = v99;
    }

    v100 = v69;
    operator delete(v71);
  }

  v73 = v102;
  if (v102)
  {
    v74 = v103;
    v75 = v102;
    if (v103 != v102)
    {
      do
      {
        v76 = *(v74 - 1);
        if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v76->__on_zero_shared)(v76);
          std::__shared_weak_count::__release_weak(v76);
        }

        v74 -= 16;
      }

      while (v74 != v73);
      v75 = v102;
    }

    v103 = v73;
    operator delete(v75);
  }

  sub_1000BFF70(&v105, v106[0]);
  sub_1000BFF70(&v107, v108[0]);
  v77 = v109;
  if (v109)
  {
    v78 = v110;
    v79 = v109;
    if (v110 != v109)
    {
      do
      {
        v80 = *(v78 - 1);
        v78 -= 3;
        if (v80 < 0)
        {
          operator delete(*v78);
        }
      }

      while (v78 != v77);
      v79 = v109;
    }

    v110 = v77;
    operator delete(v79);
  }

  return 0;
}

void sub_10020CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  sub_1000BFF70(&a54, a55);
  sub_1000275F4(&a57, a58);
  sub_100048F1C(&a60);
  sub_100048F1C(&a63);
  sub_100048F1C(&a66);
  sub_1000BFF70(v66 - 256, *(v66 - 248));
  sub_1000BFF70(v66 - 232, *(v66 - 224));
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000D1490((v66 - 208));
  _Unwind_Resume(a1);
}

void sub_10020CF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10020CF70(va);
  _Unwind_Resume(a1);
}

void sub_10020CF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10020CF70(va);
  _Unwind_Resume(a1);
}

void **sub_10020CF70(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_10020D014(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      sub_10000D444();
    }

    sub_1001181E4(16 * v2, a2);
  }

  sub_10000FC84();
}

void sub_10020D198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10020D1AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10020D1AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_10020D254(uint64_t a1, const void ***a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!sub_100118254(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!sub_100118254(v5 + 4, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

const void **sub_10020D37C(uint64_t a1, const void ***a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!sub_100118254(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!sub_100118254(v5 + 4, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void sub_10020D4A4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10020D514()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10020D584(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *sub_1001E9778(a1, a2) = off_100442F98;
  *(a1 + 128) = 1.0 / sub_1002518FC(*a2, a3);
  *(a1 + 136) = sub_100251D20(*a2);
  if (qword_10045B050 != -1)
  {
    sub_100385D34();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10025119C(*a2);
    v8 = sub_1002518FC(*a2, a3);
    v10 = 134217984;
    v11 = -(log(1.0 - 1.0 / v7) * v8);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Average injection rate if weight is exactly 50%% off-map: one injected particle every %f seconds", &v10, 0xCu);
  }

  return a1;
}

void sub_10020D710(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2 == a2[1])
  {
    v7 = a1 + 48;

    sub_100181C88(v7, a3, 0.0);
  }

  else
  {
    sub_100216F70(a2, v10);
    sub_100215554((a1 + 8), v9);
    sub_1002170B0(v9, v10, v8);
    v5 = sub_10021569C(v9);
    v6 = v5 - sub_10021569C(v8);
    if (v6 > 0.0)
    {
      sub_1000474A4(v13, "");
      sub_10020DEDC("b / (a + b)   cannot be greater than 1.0 if a>0 and b>0", &v12);
      sub_100383AA4(&v12, __p, v13);
      sub_10003F5D0(__p);
    }

    sub_100181C88(a1 + 48, a3, v6);
    sub_10021569C(a1 + 32);
  }
}

void sub_10020D8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

long double sub_10020D928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= a2)
  {
    if (*(a1 + 8) == *(a1 + 16))
    {
      return *(a1 + 136);
    }

    else
    {
      return 1.0 - exp((a3 - a2) / -250000000.0 * *(a1 + 128));
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100385D34();
    }

    v5 = qword_10045B058;
    v6 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG);
    result = 0.0;
    if (v6)
    {
      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Out-of-order suggestTransition. Expected: %lld <= %lld.", &v8, 0x16u);
      return 0.0;
    }
  }

  return result;
}

void sub_10020DA74(uint64_t a1, double a2)
{
  v2 = a2;
  sub_10021569C(a1 + 32);
  operator new();
}

void sub_10020DD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10002BB1C(v31);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v31);
  _Unwind_Resume(a1);
}

void sub_10020DE74(uint64_t a1)
{
  sub_1001E98F4(a1);

  operator delete();
}

std::string *sub_10020DEDC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10020DF10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020DF4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100443028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10020DFAC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1001F9C4C(v9, a4);
  sub_1002AF9C0(a2, &v8, v9, a5);
  sub_1001F9864(v9);
  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_10020E088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1001F9864(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_10020E0B8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10020E0EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020E108()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10020E178()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10020E218(double *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v70 = 0u;
  v71 = 0u;
  v72 = 1065353216;
  v64.__vftable = 0;
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    do
    {
      v61 = *(v6 + 80 * v7 + 56);
      v59.__r_.__value_.__r.__words[0] = &v61;
      v8 = sub_1002115F8(&v70, &v61);
      sub_10020EB8C((v8 + 3), &v64);
      v7 = (&v64.~runtime_error + 1);
      v64.__vftable = v7;
      v6 = *a2;
      v9 = a2[1];
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *a2) >> 4);
    }

    while (v7 < v10);
    a5[1] = 0;
    *a5 = 0;
    a5[2] = 0;
    if (v9 != v6)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }

    v11 = v71;
    if (!v71)
    {
      goto LABEL_61;
    }

    while (1)
    {
LABEL_14:
      v13 = (*(**(v11 + 16) + 40))(*(v11 + 16));
      if (!*v13)
      {
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(&v59, "As of <rdar://problem/16461123> this is no longer possible");
        std::runtime_error::runtime_error(&v64, &v59);
        v64.__vftable = &off_1004338D0;
        sub_10010A984(v69);
      }

      v58 = v13;
      (*(**v13 + 48))(&__p);
      v64 = 0;
      v65 = 0u;
      v66 = 1065353216;
      v15 = *(v11 + 24);
      v14 = *(v11 + 32);
      v52 = v11;
      if (v15 != v14)
      {
        break;
      }

LABEL_39:
      sub_10020F0B0(&v64);
      v35 = __p;
      if (__p)
      {
        v36 = v68;
        v12 = __p;
        if (v68 != __p)
        {
          do
          {
            v37 = *(v36 - 1);
            if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v37->__on_zero_shared)(v37);
              std::__shared_weak_count::__release_weak(v37);
            }

            v36 -= 16;
          }

          while (v36 != v35);
          v12 = __p;
        }

        v68 = v35;
        operator delete(v12);
      }

      v11 = *v52;
      if (!*v52)
      {
        v48 = v71;
        if (v71)
        {
          do
          {
            v50 = *v48;
            v51 = v48[3];
            if (v51)
            {
              v48[4] = v51;
              operator delete(v51);
            }

            operator delete(v48);
            v48 = v50;
          }

          while (v50);
        }

        goto LABEL_61;
      }
    }

    while (1)
    {
      v16 = *v15;
      v17 = *a2;
      v61 = off_10043DB08;
      v62 = 0uLL;
      v63 &= 0xFCu;
      v62 = *(v17 + 80 * v16 + 16);
      (*(**v58 + 16))(&v59);
      v73 = &v59;
      v18 = sub_100211A50(&v64, &v59);
      v19 = v18;
      v21 = v18[10];
      v20 = v18[11];
      if (v21 >= v20)
      {
        v23 = v18[9];
        v24 = v21 - v23;
        v25 = (v21 - v23) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v27 = v20 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v29 = (v21 - v23) >> 3;
        v30 = (8 * v25);
        v31 = (8 * v25 - 8 * v29);
        *v30 = v16;
        v22 = v30 + 1;
        memcpy(v31, v23, v24);
        v19[9] = v31;
        v19[10] = v22;
        v19[11] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v21 = v16;
        v22 = v21 + 8;
      }

      v19[10] = v22;
      v32 = v60;
      if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        size = v59.__r_.__value_.__l.__size_;
        if (v59.__r_.__value_.__l.__size_)
        {
LABEL_34:
          if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }
        }
      }

      else
      {
        size = v59.__r_.__value_.__l.__size_;
        if (v59.__r_.__value_.__l.__size_)
        {
          goto LABEL_34;
        }
      }

      nullsub_75(&v61);
      if (++v15 == v14)
      {
        v34 = v65;
        if (!v65)
        {
          goto LABEL_39;
        }

        while (2)
        {
          memset(&v59, 0, sizeof(v59));
          v38 = v34[9];
          v39 = v34[10];
          v57 = v34;
          if (v39 != v38)
          {
            if (((v39 - v38) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_10000FC84();
          }

          v59.__r_.__value_.__r.__words[2] = 0;
          v59.__r_.__value_.__r.__words[0] = 0;
          sub_10020ECA4(a1, v58, v34 + 2, &v59, a3, a4, &__p, &v61);
          v40 = v61;
          if (v62 == v61)
          {
            if (v61)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v41 = (v62 - v61) >> 3;
            v42 = v34[9];
            v43 = *a5;
            if (v41 <= 1)
            {
              v41 = 1;
            }

            v44 = v61;
            do
            {
              v45 = *v44++;
              v46 = v45;
              v47 = *v42++;
              *(v43 + 8 * v47) = v46;
              --v41;
            }

            while (v41);
LABEL_57:
            operator delete(v40);
          }

          if (v59.__r_.__value_.__r.__words[0])
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }

          v34 = *v34;
          if (!*v57)
          {
            goto LABEL_39;
          }

          continue;
        }
      }
    }
  }

  a5[1] = 0;
  *a5 = 0;
  a5[2] = 0;
  v11 = v71;
  if (v71)
  {
    goto LABEL_14;
  }

LABEL_61:
  v49 = v70;
  *&v70 = 0;
  if (v49)
  {
    operator delete(v49);
  }
}

void sub_10020E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  v40 = *(v38 - 144);
  if (v40)
  {
    do
    {
      v42 = *v40;
      v43 = v40[3];
      if (v43)
      {
        v40[4] = v43;
        operator delete(v43);
      }

      operator delete(v40);
      v40 = v42;
    }

    while (v42);
  }

  v41 = *(v38 - 160);
  *(v38 - 160) = 0;
  if (v41)
  {
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020EB8C(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000FC84();
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

    sub_10000D444();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

void *sub_10020ECA4@<X0>(double *a1@<X0>, void *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v22, "As of <rdar://problem/16461123> this is no longer possible");
    std::runtime_error::runtime_error(&v21, &v22);
    v21.__vftable = &off_1004338D0;
    sub_10010A984(v20);
  }

  result = (*(**a2 + 40))(*a2);
  if (result)
  {
    v18 = *a4;
    v17 = a4[1];
    a8[1] = 0;
    a8[2] = 0;
    *a8 = 0;
    if (v17 != v18)
    {
      if (((v17 - v18) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  else if ((*(**a2 + 72))() == 2)
  {
    sub_1002C8CAC(&v22, a7, a3);
    sub_10020F29C(a1, a6, &v22, a5, a4, a8);
    v22.__r_.__value_.__r.__words[0] = off_1004469C8;
    v19 = v26;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    return sub_100173794(v25);
  }

  else
  {
    sub_1002C8B88(&v22, a7, a3);
    result = sub_10020F29C(a1, a6, &v22, a5, a4, a8);
    v22.__r_.__value_.__r.__words[0] = off_1004469A0;
    if (v23 == 1)
    {
      return nullsub_81(&v24);
    }
  }

  return result;
}

void sub_10020EFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::runtime_error a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a13);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10020F0B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    v5 = v3[6];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = v3[3];
      if (v6)
      {
LABEL_9:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }

    else
    {
      v6 = v3[3];
      if (v6)
      {
        goto LABEL_9;
      }
    }

    operator delete(v3);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_10020F29C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v48[1] = 0;
  v49 = 0.0;
  v48[0] = off_10043DCF8;
  v50 = 0;
  v12 = *a5;
  v11 = a5[1];
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v47 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 8) - *a2) >> 4);
  v13 = sub_1002C8B34(a3);
  v46 = v13;
  if (v47 != v13)
  {
    sub_1000474A4(&v52, "");
    sub_1000D8214("Mismatch between number of scans ", &__p);
    sub_100181374(&v47, &v55);
    sub_100211ECC(" and number of map cells ", &v56);
    sub_100181374(&v46, &v57);
    sub_1000E661C(&v52, &__p, 4);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_52:
        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_64;
      }
    }

    else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_53:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_65;
    }

LABEL_64:
    operator delete(v55.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_54:
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_66:
      operator delete(v52.__vftable);
LABEL_55:
      sub_10003F5D0(v51);
    }

LABEL_65:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    for (i = 0; i < v47; ++i)
    {
      v45 = *(a2 + 56) * *(*(a2 + 24) + 8 * i);
      if (v45 != 0.0)
      {
        if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 8) - *a2) >> 4) <= i)
        {
          sub_1000BFF58();
        }

        v15 = *a2 + 208 * i;
        v16 = *(v15 + 32);
        if (v16 == v16 >> 31)
        {
          v17 = *(v15 + 72);
        }

        else
        {
          if (v16 >= 0)
          {
            v18 = v15 + 40;
          }

          else
          {
            v18 = *(v15 + 40);
          }

          v17 = *(v18 + 92);
        }

        if (sub_1001CF958(v17))
        {
          sub_1000474A4(&v52, "");
          sub_1001CCEE8("Bad scans must have been deweighted already!!!!", &__p);
          sub_1000E661C(&v52, &__p, 1);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v53 < 0)
          {
            operator delete(v52.__vftable);
          }

          sub_1000BC6D8(v51);
        }

        v19 = *(*a4 + 8 * i);
        v20 = *a1;
        sub_1001294D4(v48, NAN);
        sub_1001294DC(v48, NAN);
        v21 = v19 * v20;
        if (sub_1002C8B48(a3, i))
        {
          if (v49 <= 0.0)
          {
            sub_1000474A4(&__p, "");
            sub_100385D48(&v52, &__p.__r_.__value_.__l.__data_, &__p.__r_.__value_.__r.__words[2] + 7);
            sub_10003F5D0(&v52);
          }

          if (v49 > 1.0 && v49 < 1.00000001)
          {
            v49 = 1.0;
          }

          v22 = *a5;
          if (a5[1] != *a5)
          {
            v23 = 0;
            do
            {
              v24 = *(v15 + 32);
              if (v24 == v24 >> 31)
              {
                v25 = *(v15 + 72);
              }

              else
              {
                if (v24 >= 0)
                {
                  v26 = v15 + 40;
                }

                else
                {
                  v26 = *(v15 + 40);
                }

                v25 = *(v26 + 92);
              }

              *(8 * v23) = *(8 * v23) + v45 * sub_10020FEA0(v48, v25 + *(v22 + 8 * v23), v21);
              ++v23;
              v22 = *a5;
            }

            while (v23 < (a5[1] - *a5) >> 3);
          }

          continue;
        }

        v27 = a5[1] - *a5;
        if (v27)
        {
          v28 = v27 >> 3;
          v29 = log(v21);
          if (v28 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v28;
          }

          if (v28 > 3)
          {
            v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
            v32 = vdupq_lane_s64(*&v45, 0);
            v33 = vdupq_lane_s64(*&v29, 0);
            v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
            v35 = 16;
            do
            {
              v36 = vmlaq_f64(*v35, v33, v32);
              *(v35 - 16) = vmlaq_f64(*(v35 - 16), v33, v32);
              *v35 = v36;
              v35 += 32;
              v34 -= 4;
            }

            while (v34);
            if (v28 == v31)
            {
              continue;
            }
          }

          else
          {
            v31 = 0;
          }

          v37 = v30 - v31;
          v38 = (8 * v31);
          do
          {
            *v38 = *v38 + v45 * v29;
            ++v38;
            --v37;
          }

          while (v37);
        }
      }
    }
  }

  v39 = a5[1] - *a5;
  if (v39)
  {
    v40 = v39 >> 3;
    if (v40 <= 1)
    {
      v40 = 1;
    }

    v41 = 0;
    do
    {
      v42 = *v41++;
      --v40;
    }

    while (v40);
  }

  return nullsub_81(v48);
}

void sub_10020F8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::runtime_error a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v41)
  {
    *(a10 + 8) = v41;
    operator delete(v41);
  }

  nullsub_81(&a21);
  _Unwind_Resume(a1);
}

double sub_10020F9E8(uint64_t a1, void *a2, double *a3)
{
  v3 = a2[1];
  v4 = 0.0;
  if (*a2 != v3)
  {
    v7 = *(a3 + 1);
    v8 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *a3) >> 4);
    if (v8 != (v3 - *a2) >> 3)
    {
      sub_1000474A4(v21, "");
      sub_100211E2C("Each measurement must have a prior probability, otherwise OffMap, injection, and Yield/NoYield won't work!", &v20);
      sub_100383AA4(&v20, v19, v21);
      sub_1000BC6D8(v19);
    }

    if (v7 != *a3)
    {
      v9 = 0;
      v10 = 0;
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *a3) >> 4);
      }

      do
      {
        v12 = *a3;
        if (0x4EC4EC4EC4EC4EC5 * ((*(a3 + 1) - *a3) >> 4) <= v10)
        {
          sub_1000BFF58();
        }

        v13 = a3[7];
        v14 = *(*(a3 + 3) + 8 * v10);
        v21[0] = v19;
        v15 = (*&v12 + v9 + 8);
        if (*(*&v12 + v9) == *(*&v12 + v9) >> 31)
        {
          sub_10017DCEC(v15, __p);
        }

        else
        {
          sub_10017DF00(v15, (*&v12 + v9 + 28));
        }

        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = *(*a2 + 8 * v10);
        v4 = v4 + v13 * v14 * log(*__p);
        ++v10;
        v9 += 208;
      }

      while (v11 != v10);
    }
  }

  return v4;
}

void sub_10020FDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_10020FEA0(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3 < 0.0 || v3 > 1.0)
  {
    sub_1003846E0(__p, &v10);
    sub_1000BC6D8(__p);
  }

  v5 = (1.0 - v3) * a3 + v3 * sub_100217BF8(*(a1 + 8), a2);
  if (v5 < 0.0 || v5 > 1.0)
  {
    sub_1003846E0(v8, __p);
    sub_10003F5D0(v8);
  }

  return log(v5);
}

void sub_10021005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002100C8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1[1] + 28))
  {
    sub_1002102D0(a1[2], a2, a3);
  }

  else
  {
    sub_1002100EC(*a1, a2, a3);
  }
}

void sub_1002100EC(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  sub_10023F3C8(&v19);
  sub_10023F7B4(&v19, a1);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = v20;
    v9 = v6 + 5;
    do
    {
      v14 = *(v9 - 2);
      if (v14 == v14 >> 31)
      {
        v10 = *(v9 + 4);
      }

      else
      {
        if (v14 >= 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = *v9;
        }

        v10 = *(v15 + 23);
      }

      v9 += 26;
      v11 = vaddq_f64(vdupq_lane_s64(*&v10, 0), xmmword_1003D91C0);
      *&v12.f64[0] = v11.i64[0];
      *&v12.f64[1] = v8.i64[1];
      *&v13.f64[0] = v8.i64[0];
      *&v13.f64[1] = v11.i64[1];
      v8 = vbslq_s8(vcgtq_f64(v13, v12), v11, v8);
    }

    while (v9 - 5 != v7);
    v20 = v8;
  }

  v19 += 0x4EC4EC4EC4EC4EC5 * ((v7 - v6) >> 4);
  if (sub_10023F4E0(&v19) >= 1.0)
  {
    v18 = a2;
    v16 = *a2;
    v17 = v18[1];
    sub_10023F4E0(&v19);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v17 != v16)
    {
      if (!((0x4EC4EC4EC4EC4EC5 * ((v17 - v16) >> 4)) >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1002102D0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  sub_10031D62C(a1, &v35);
  sub_10031D628(v31, &v35);
  v7 = 0x4EC4EC4EC4EC4EC5 * ((v5 - v6) >> 4);
  nullsub_73(&v35);
  if (v5 == v6)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0x4EC4EC4EC4EC4EC5 * ((v5 - v6) >> 4);
    }

    do
    {
      if (*(a2[3] + 8 * v10) > 0.0)
      {
        v12 = *a2 + v8;
        v13 = *(v12 + 32);
        if (v13 == v13 >> 31)
        {
          v14 = *(v12 + 72);
        }

        else
        {
          v17 = *(v12 + 40);
          v15 = v12 + 40;
          v16 = v17;
          if (v13 < 0)
          {
            v15 = v16;
          }

          v14 = *(v15 + 92);
        }

        sub_10031D638(v31, v14 + -0.5, v14 + 0.5, 1.0);
        v9 = 1;
      }

      ++v10;
      v8 += 208;
    }

    while (v11 != v10);
  }

  sub_10031D62C(v31, &v35);
  v18 = *&v36.__r_.__value_.__r.__words[2];
  nullsub_73(&v35);
  v30 = v18;
  if (v9)
  {
    if (sub_10031D7A8(a1) <= 1.44269504)
    {
      if (sub_10031D7A8(a1) <= 0.693147181)
      {
        v21 = sub_10031D7B0(v31);
      }

      else
      {
        v21 = sub_10031D7B0(a1);
      }

      v20 = v30 + (v21 - v30) / -0.442695041;
    }

    else
    {
      v19 = sub_10031D7B0(a1);
      v20 = v30 - (v19 - v30) / (sub_10031D7A8(a1) + -1.0);
    }

    v29 = v20;
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      sub_1000474A4(v33, "");
      sub_1000F1DBC("allDbmMin must be a well-behaved number.", &v35);
      sub_1000E661C(v33, &v35, 1);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      sub_10003F5D0(__p);
    }

    v27 = 0.0;
    v28 = 0.0;
    if (sub_10031D7A8(a1) <= 0.693147181)
    {
      v27 = 0.693147181;
      v23 = sub_10031D7B0(v31) * 0.693147181;
    }

    else
    {
      v27 = sub_10031D7A8(a1);
      v22 = sub_10031D7B0(a1);
      v23 = v22 * sub_10031D7A8(a1);
    }

    v28 = v23;
    v26 = v23 - v27 * v29;
    if (v26 >= 0.0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v5 != v6)
      {
        if (!(v7 >> 61))
        {
          operator new();
        }

        sub_10000FC84();
      }

      a3[2] = 0;
      *a3 = 0;
      return nullsub_73(v31);
    }

    sub_1000474A4(v33, "");
    sub_1000D8214("lambda_floored is always positive", &v35);
    sub_1000DE42C(&v26, &v36);
    sub_100211558(" ", &v37);
    sub_1000DE42C(&v28, &v38);
    sub_100211558(" ", &v39);
    sub_1000DE42C(&v27, &v40);
    sub_100211558(" ", &v41);
    sub_1000DE42C(&v29, &v42);
    sub_1000E661C(v33, &v35, 8);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_42:
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_52;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_43:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }

LABEL_52:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

LABEL_53:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_55;
    }

LABEL_54:
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_46:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    }

LABEL_55:
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }

LABEL_56:
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_58:
      operator delete(v33[0]);
LABEL_49:
      sub_10003F5D0(__p);
    }

LABEL_57:
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v5 != v6)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return nullsub_73(v31);
}

void sub_100211088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a46 < 0)
  {
    operator delete(__p);
    nullsub_73(&a27);
    _Unwind_Resume(a1);
  }

  nullsub_73(&a27);
  _Unwind_Resume(a1);
}

void sub_10021127C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = sub_10023F3C8(a2);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      v9[3] = *v5;
      v9[4] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (((*(*v8 + 40))(v8, v4) & 1) == 0)
      {
        (*(*v8 + 64))(v9, v8);
        sub_10023F7B4(a2, v9);
      }

      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      v5 += 2;
    }

    while (v5 != v6);
  }
}

void sub_1002113A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002113BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void *sub_1002113D0(void *a1)
{
  *a1 = off_1004469C8;
  v1 = a1[23];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_100173794(a1 + 10);
  return v3;
}

std::string *sub_100211468@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10021149C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002114B8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002114EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211508@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10021153C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211558@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10021158C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002115A8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002115DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002115F8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_100211958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EDF10(va);
  _Unwind_Resume(a1);
}

void sub_10021196C(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t *sub_100211A50(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 20);
  v4 = v3 ^ (v2 << 32);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ (v2 << 32);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 8) == v2 && *(v9 + 9) == v3)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_100211DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100211DD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100211DD8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10021196C(*(a1 + 8), v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *sub_100211E2C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211E60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211E7C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211EB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211ECC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211F00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211F1C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211F6C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211FA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100211FBC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100211FF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021200C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10021207C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002120EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  a2[1] = 0;
  v6 = a2[3];
  v8 = a2 + 2;
  v7 = a2[2];
  v9 = *(a2 + 8);
  *(a1 + 16) = v7;
  v10 = (a1 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  if (v6)
  {
    v11 = v7[1];
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v4 + 8 * v11) = v10;
    *v8 = 0;
    v8[1] = 0;
    v7 = *v10;
  }

  if (v7)
  {
    do
    {
      while (v7[4] != v7[5])
      {
        v7 = *v7;
        if (!v7)
        {
          return a1;
        }
      }

      v13 = *v7;
      sub_100010A88(a1, v7, &__p);
      v14 = __p;
      __p = 0;
      if (v14)
      {
        if (v17 == 1)
        {
          sub_1001DF638(v14 + 2);
        }

        operator delete(v14);
      }

      v7 = v13;
    }

    while (v13);
  }

  return a1;
}

void sub_100212210(void *a1@<X0>, uint64_t ****a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *v27 = 0u;
  *__p = 0u;
  v29 = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = sub_1001EDFC8(a1, v4);
      if (v7)
      {
        v8 = v7[4];
        v9 = v7[5];
        while (v8 != v9)
        {
          if (!sub_100203E28(v27, v8))
          {
            v11 = a3[1];
            if (v11 >= a3[2])
            {
              sub_1001D01B0(a3, v8);
            }

            else
            {
              v13 = (v8 + 8);
              v12 = *v8;
              if (v12 == v12 >> 31)
              {
                *(v11 + 8) = *v13;
                v14 = v12;
              }

              else
              {
                v15 = *v13;
                *(v11 + 24) = *(v8 + 24);
                *(v11 + 8) = v15;
                v14 = *v8;
                v12 = *v8 >> 31;
              }

              *v11 = v14 ^ v12;
              v16 = *(v8 + 32);
              v17 = (v8 + 40);
              if (v16 == v16 >> 31)
              {
                v18 = *(v8 + 40);
                if (v18 == v18 >> 31)
                {
                  *(v11 + 48) = *(v8 + 48);
                  v19 = v18;
                }

                else
                {
                  v21 = *(v8 + 48);
                  *(v11 + 64) = *(v8 + 64);
                  *(v11 + 48) = v21;
                  v19 = *v17;
                  v18 = v19 >> 31;
                }

                *(v11 + 40) = v19 ^ v18;
                *(v11 + 72) = *(v8 + 72);
                *(v11 + 80) = 0;
                if (*(v8 + 80) == 1)
                {
                  *(v11 + 84) = *(v8 + 84);
                  *(v11 + 80) = 1;
                }

                v22 = *(v8 + 88);
                v23 = *(v8 + 104);
                *(v11 + 120) = *(v8 + 120);
                *(v11 + 104) = v23;
                *(v11 + 88) = v22;
              }

              else
              {
                if (v16 >= 0)
                {
                  v20 = v8 + 40;
                }

                else
                {
                  v20 = *v17;
                }

                sub_100131324(v11 + 40, v20);
              }

              *(v11 + 32) = *(v8 + 32) ^ (*(v8 + 32) >> 31);
              v10 = v11 + 208;
            }

            a3[1] = v10;
            sub_10021244C(v27, v8);
          }

          v8 += 208;
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
    v24 = __p[0];
    if (__p[0])
    {
      do
      {
        v25 = *v24;
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }
  }

  v26 = v27[0];
  v27[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_100212408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001F9AF8(&a9);
  sub_1001CE6F4(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10021244C(void *a1, uint64_t a2)
{
  v26 = &v25;
  v4 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v5 = *v4;
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v5 = sub_1001FA420(&v26, (a2 + 8));
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_58:
    operator new();
  }

  v11 = *a2;
  v12 = (v11 >> 31) ^ v11;
  v13 = v11 >> 31 == v11;
  v14 = *(a2 + 8);
  if (v7.u32[0] <= 1uLL)
  {
    v15 = *&v6 - 1;
    if (v13)
    {
      while (1)
      {
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
        }
      }

      else
      {
        if (v20 >= *&v6)
        {
          v20 %= *&v6;
        }

        if (v20 != v8)
        {
          goto LABEL_58;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
    if (v21 == v5)
    {
      break;
    }

    if (v21 >= *&v6)
    {
      v21 %= *&v6;
    }

    if (v21 != v8)
    {
      goto LABEL_58;
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
  if (!v22 || *(v10 + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return v10;
}

void sub_1002128E0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100212950()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002129C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  a2[2] = v3;
  return result;
}

double sub_100212A3C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  a2[2] = v3;
  return result;
}

void sub_100212AB8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100212B28()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100212B98(uint64_t a1, uint64_t a2)
{
  sub_10012DD28(v15, a1);
  v3 = v18;
  v4 = sub_100170784(a2);
  v16 = v16 + v3 * v4;
  v5 = sub_1002CDB1C(a2);
  v17 = v17 + v3 * v5;
  v8[0] = off_10043DB68;
  v8[1] = 0;
  v8[2] = off_10043DB48;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = off_10043DB08;
  v9 = 0;
  v13 = 4;
  v14 = 0;
  v6 = sub_1002CDB34(a2);
  sub_10012E168(v8, v6);
  v7 = sub_1002CDB28(a2);
  sub_10012E160(v8, v7);
  sub_10012E170(v8, v15);
  sub_1000C0ECC();
}

void sub_100212D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_10002BB1C(va);
  nullsub_78(va1);
  nullsub_77(va2);
  _Unwind_Resume(a1);
}

void sub_100212D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  nullsub_78(va);
  nullsub_77(va1);
  _Unwind_Resume(a1);
}

void sub_100212DA8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100443088;
  v10 = sub_100170784(a2);
  v9 = sub_1002CDB1C(a2);
  v7 = sub_1002CDB28(a2);
  v6 = sub_1002CDB34(a2);
  sub_10031C15C(&v8, &v7, &v6);
  sub_1002541EC(a1 + 1, &v10, &v9, &v8);
  sub_100212B98(a3, a2);
}

uint64_t sub_100212EEC(uint64_t result)
{
  *result = off_100443088;
  if (*(result + 151) < 0)
  {
    v1 = result;
    operator delete(*(result + 128));
    return v1;
  }

  return result;
}

void sub_100212F48(uint64_t a1)
{
  *a1 = off_100443088;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  operator delete();
}

BOOL sub_100212FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002541F0((a1 + 8), a2);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  v7 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v7 = *v7;
  }

  v8 = sub_100213468(v7, *(a1 + 152), *(a1 + 120) * v6, *(a1 + 120) * v6 + *(a1 + 120));
  v9 = sub_10017F144(a1 + 88, v8 & ~(-1 << *(a1 + 104)));
  if (!a3)
  {
    return v9 > 0.0;
  }

  *(a3 + 16) = v9;
  if (v9 <= 0.0)
  {
    result = 0;
    *(a3 + 8) = 0x7FF4000000000000;
  }

  else
  {
    v10 = sub_10017F144(a1 + 56, (v8 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
    *(a3 + 8) = v10;
    return 1;
  }

  return result;
}

BOOL sub_1002130EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100173428(a2, (a1 + 8), &v34);
  v5 = (a1 + 128);
  v6 = *(&v34 + 1);
  v7 = 0.0;
  if (*(&v34 + 1) == 0.0 || v34 == -1)
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v14 = a1 + 128;
    if (*(a1 + 151) < 0)
    {
      v14 = *v5;
    }

    v15 = sub_100213468(v14, *(a1 + 152), *(a1 + 120) * v34, *(a1 + 120) * v34 + *(a1 + 120));
    v16 = sub_10017F144(a1 + 88, v15 & ~(-1 << *(a1 + 104)));
    v8 = 0.0;
    v9 = 0.0;
    if (v16 != 0.0)
    {
      v17 = sub_10017F144(a1 + 56, (v15 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
      v8 = v6 * v17 + 0.0;
      v18 = sub_10017F144(a1 + 88, v15 & ~(-1 << *(a1 + 104)));
      v9 = v6 * v18 + 0.0;
      v7 = v6;
    }
  }

  v10 = v36;
  if (v36 != 0.0 && v35 != -1)
  {
    v19 = a1 + 128;
    if (*(a1 + 151) < 0)
    {
      v19 = *v5;
    }

    v20 = sub_100213468(v19, *(a1 + 152), *(a1 + 120) * v35, *(a1 + 120) * v35 + *(a1 + 120));
    v21 = sub_10017F144(a1 + 88, v20 & ~(-1 << *(a1 + 104)));
    if (v21 != 0.0)
    {
      v22 = sub_10017F144(a1 + 56, (v20 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
      v8 = v8 + v10 * v22;
      v23 = sub_10017F144(a1 + 88, v20 & ~(-1 << *(a1 + 104)));
      v9 = v9 + v10 * v23;
      v7 = v7 + v10;
    }
  }

  v11 = v38;
  if (v38 != 0.0 && v37 != -1)
  {
    v24 = a1 + 128;
    if (*(a1 + 151) < 0)
    {
      v24 = *v5;
    }

    v25 = sub_100213468(v24, *(a1 + 152), *(a1 + 120) * v37, *(a1 + 120) * v37 + *(a1 + 120));
    v26 = sub_10017F144(a1 + 88, v25 & ~(-1 << *(a1 + 104)));
    if (v26 != 0.0)
    {
      v27 = sub_10017F144(a1 + 56, (v25 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
      v8 = v8 + v11 * v27;
      v28 = sub_10017F144(a1 + 88, v25 & ~(-1 << *(a1 + 104)));
      v9 = v9 + v11 * v28;
      v7 = v7 + v11;
    }
  }

  v12 = v40;
  if (v40 != 0.0 && v39 != -1)
  {
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v29 = sub_100213468(v5, *(a1 + 152), *(a1 + 120) * v39, *(a1 + 120) * v39 + *(a1 + 120));
    v30 = sub_10017F144(a1 + 88, v29 & ~(-1 << *(a1 + 104)));
    if (v30 != 0.0)
    {
      v31 = sub_10017F144(a1 + 56, (v29 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
      v8 = v8 + v12 * v31;
      v32 = sub_10017F144(a1 + 88, v29 & ~(-1 << *(a1 + 104)));
      v9 = v9 + v12 * v32;
      v7 = v7 + v12;
    }
  }

  if (a3)
  {
    if (v7 <= 0.0)
    {
      *(a3 + 8) = 0x7FF4000000000000;
      v13 = 0.0;
    }

    else
    {
      *(a3 + 8) = v8 / v7;
      v13 = v9 / v7;
    }

    *(a3 + 16) = v13;
  }

  return v7 > 0.0;
}

uint64_t sub_100213468(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  if (a4 <= a3)
  {
    sub_1000474A4(&v12, "");
    sub_1001F2AF4("End bit must be after start bit", &v11);
    sub_100383AA4(&v11, __dst, &v12);
    sub_10003F5D0(__dst);
  }

  if (a4 - a3 >= 17)
  {
    sub_1000474A4(__dst, "");
    sub_10017F550("We only output 16 bits of data, cannot support more", &v12);
    sub_100383AA4(&v12, __p, __dst);
    sub_10003F5D0(__p);
  }

  __dst[0] = 0;
  v6 = a3 >> 3;
  if ((a2 - v6) >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = a2 - v6;
  }

  memcpy(__dst, (a1 + v6), v7);
  return (bswap32(__dst[0]) >> ((v5 & 0xF8) - v4)) & ~(-1 << (v4 - (v5 & 0xF8) - (v5 & 7)));
}

void sub_1002135D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

float sub_100213638(uint64_t a1, int a2)
{
  v3 = *(a1 + 120);
  v4 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v4 = *v4;
  }

  v5 = sub_100213468(v4, *(a1 + 152), v3 * a2, v3 * a2 + v3);
  return sub_10017F144(a1 + 56, (v5 >> *(a1 + 104)) & ~(-1 << *(a1 + 72)));
}

float sub_1002136A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 120);
  v4 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v4 = *v4;
  }

  v5 = sub_100213468(v4, *(a1 + 152), v3 * a2, v3 * a2 + v3);
  return sub_10017F144(a1 + 88, v5 & ~(-1 << *(a1 + 104)));
}

void sub_100213708()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100213778()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002137E8(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  operator new();
}

void sub_1002138A0(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_100214850(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002138BC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) == 1)
    {
      goto LABEL_7;
    }

    return a1;
  }

  if (*(a1 + 8) != 1)
  {
    return a1;
  }

LABEL_7:
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 8);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = *(a1 + 16);
    }

    *(a1 + 24) = v4;
    operator delete(v6);
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_100213A38(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *(a1 + 16);
    if ((v5 - *a2) == (*(a1 + 24) - v6))
    {
      if (v4 == v5)
      {
        return 0;
      }

      while (sub_1001182C8(v4, v6))
      {
        v4 += 2;
        v6 += 2;
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  sub_100182B60(a2, &v19);
  sub_100177D68(&v19, &v23);
  v8 = v23;
  v23 = 0uLL;
  v9 = *(a1 + 48);
  *(a1 + 40) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
LABEL_11:
      v11 = (a1 + 16);
      if (*(a1 + 8) == 1)
      {
        goto LABEL_12;
      }

LABEL_27:
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v17 = *a2;
      v18 = a2[1];
      *&v23 = v11;
      BYTE8(v23) = 0;
      if (v18 != v17)
      {
        if (((v18 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }

      *(a1 + 8) = 1;
      v12 = __p;
      if (!__p)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      goto LABEL_11;
    }
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_11;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  v11 = (a1 + 16);
  if (*(a1 + 8) != 1)
  {
    goto LABEL_27;
  }

LABEL_12:
  sub_100214C00(v11, a2);
  v12 = __p;
  if (__p)
  {
LABEL_13:
    v22 = v12;
    operator delete(v12);
  }

LABEL_14:
  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 1);
        if (v16)
        {
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  return 1;
}

void sub_100213D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_1001811E8(&a15);
  sub_100182E48(&a9);
  _Unwind_Resume(a1);
}

void sub_100213DD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100385D90(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100213DEC(uint64_t a1)
{
  if (sub_100177B64(*(a1 + 40)))
  {
    v2 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v2;
    if (!v2)
    {
LABEL_6:
      v3 = *a1;
      if (*a1)
      {
        if (v3 != 1)
        {
          if (v3 == 2)
          {
            sub_100214630();
          }

          __cxa_allocate_exception(0x40uLL);
          v13[0] = *a1;
          v4 = sub_100214914(qword_10045E068, v13);
          sub_1000474A4(&v8, *v4);
          v5 = std::string::insert(&v8, 0, "Not yet implemented: ");
          v6 = *&v5->__r_.__value_.__l.__data_;
          v9.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
          *&v9.__r_.__value_.__l.__data_ = v6;
          v5->__r_.__value_.__l.__size_ = 0;
          v5->__r_.__value_.__r.__words[2] = 0;
          v5->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(&v10, &v9);
          v10.__vftable = &off_1004338D0;
          sub_10010A984(v7);
        }

        sub_100214630();
      }

      operator new();
    }
  }

  else
  {
    v2 = *(a1 + 64);
    v11 = *(a1 + 56);
    v12 = v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  goto LABEL_6;
}

void sub_100214140()
{
  v1 = *(v0 - 96);
  if (v1)
  {
    *(v0 - 88) = v1;
    operator delete(v1);
  }

  std::runtime_error::~runtime_error((v0 - 48));
  if (*(v0 - 49) < 0)
  {
    operator delete(*(v0 - 72));
  }

  __cxa_end_catch();
  JUMPOUT(0x1002141B4);
}

void sub_1002141EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 72);
  v5 = *a3;
  v6 = a3[1];
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  if (v5 != v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v12 = (v5 + 8);
      v11 = *v5;
      v13 = *v5 >> 31;
      if (v11 >> 31 == v11)
      {
        *&v52 = *v12;
        v13 = v11;
      }

      else
      {
        v14 = *v12;
        v53 = *(v5 + 24);
        v52 = v14;
      }

      v51 = v13 ^ v11;
      v15 = (*(*a2 + 16))(a2, &v51);
      if (v15 <= 0.0)
      {
        goto LABEL_8;
      }

      v16 = v46;
      if (v46 >= v47)
      {
        sub_1001D01B0(&__p, v5);
        v46 = v19;
        if (v9 >= v8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = *v5;
        if (v17 == v17 >> 31)
        {
          *(v46 + 1) = *v12;
          v18 = v17;
        }

        else
        {
          v20 = *v12;
          *(v46 + 6) = *(v5 + 24);
          *(v16 + 8) = v20;
          v18 = *v5;
          v17 = *v5 >> 31;
        }

        *v16 = v18 ^ v17;
        v21 = *(v5 + 32);
        v22 = (v5 + 40);
        if (v21 == v21 >> 31)
        {
          v23 = *(v5 + 40);
          if (v23 == v23 >> 31)
          {
            *(v16 + 6) = *(v5 + 48);
            v24 = v23;
          }

          else
          {
            v26 = *(v5 + 48);
            *(v16 + 16) = *(v5 + 64);
            *(v16 + 3) = v26;
            v24 = *v22;
            v23 = v24 >> 31;
          }

          *(v16 + 10) = v24 ^ v23;
          *(v16 + 9) = *(v5 + 72);
          v16[80] = 0;
          if (*(v5 + 80) == 1)
          {
            *(v16 + 21) = *(v5 + 84);
            v16[80] = 1;
          }

          v27 = *(v5 + 88);
          v28 = *(v5 + 104);
          *(v16 + 30) = *(v5 + 120);
          *(v16 + 104) = v28;
          *(v16 + 88) = v27;
        }

        else
        {
          if (v21 >= 0)
          {
            v25 = v5 + 40;
          }

          else
          {
            v25 = *v22;
          }

          sub_100131324(v16 + 40, v25);
          v9 = v49;
          v8 = v50;
        }

        *(v16 + 8) = *(v5 + 32) ^ (*(v5 + 32) >> 31);
        v46 = v16 + 208;
        if (v9 >= v8)
        {
LABEL_31:
          v29 = v48;
          v30 = v9 - v48;
          v31 = (v9 - v48) >> 3;
          v32 = v31 + 1;
          if ((v31 + 1) >> 61)
          {
            sub_10000FC84();
          }

          if ((v8 - v48) >> 2 > v32)
          {
            v32 = (v8 - v48) >> 2;
          }

          if (v8 - v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v32;
          }

          if (v33)
          {
            if (!(v33 >> 61))
            {
              operator new();
            }

            sub_10000D444();
          }

          v34 = (8 * v31);
          v8 = 0;
          if (v15 <= 1.0)
          {
            v35 = v15;
          }

          else
          {
            v35 = 1.0;
          }

          *v34 = v35;
          v9 = v34 + 1;
          memcpy(0, v29, v30);
          v48 = 0;
          v50 = 0;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_7;
        }
      }

      if (v15 <= 1.0)
      {
        v10 = v15;
      }

      else
      {
        v10 = 1.0;
      }

      *v9++ = v10;
LABEL_7:
      v49 = v9;
LABEL_8:
      v5 += 208;
    }

    while (v5 != v6);
  }

  sub_1001CE970(a5, &v48, &__p, a4);
  v36 = __p;
  if (__p)
  {
    v37 = v46;
    v38 = __p;
    if (v46 != __p)
    {
      v39 = v46 - 168;
      do
      {
        v42 = *(v37 - 44);
        if (v42 == v42 >> 31)
        {
          if (*(v37 - 128) == 1)
          {
            *(v37 - 128) = 0;
          }
        }

        else
        {
          v40 = *(v37 - 21);
          if (v42 < 0)
          {
            if (v40)
            {
              (*(*v40 + 8))(v40);
            }
          }

          else
          {
            v41 = *(v37 - 21);
            (*v40)(v37 - 168);
          }
        }

        v37 -= 208;
        v39 -= 208;
      }

      while (v37 != v36);
      v38 = __p;
    }

    v46 = v36;
    operator delete(v38);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_1002145F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1001CE6F4(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100214808(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void *);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  sub_1001CE6F4(va);
  sub_10002BB1C(va1);
  operator delete();
}

uint64_t sub_100214850(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
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
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
      operator delete(v4);
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_100214914(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    sub_10001C6D4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_10021498C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004430F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_100214A20(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*a3 == v3)
  {
LABEL_18:
    sub_1000474A4(v13, "");
    sub_100214BB0("This will always be true because historyIncludingCurrentScan always includes the current scan, after all", &v14);
    sub_100382FC4(&v14, __p, v13);
    sub_10003F5D0(__p);
  }

  v4 = *a3 + 8;
  v5 = 0.0;
  do
  {
    v10 = *(v4 - 8);
    if ((*a2 ^ (*a2 >> 31)) != ((v10 >> 31) ^ v10))
    {
LABEL_10:
      v8 = *(a1 + 8);
      goto LABEL_11;
    }

    if (v10 >> 31 == v10)
    {
      v8 = 1.0;
      if (*(a2 + 8) != *v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (*(a2 + 8) != *v4 || *(a2 + 16) != *(v4 + 8) || *(a2 + 24) != *(v4 + 16))
      {
        goto LABEL_10;
      }

      v8 = 1.0;
    }

LABEL_11:
    v5 = v5 + v8;
    v9 = v4 + 200;
    v4 += 208;
  }

  while (v9 != v3);
  if (v5 <= 0.0)
  {
    goto LABEL_18;
  }

  return 1.0 / v5;
}

void sub_100214B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100214BB0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100214BE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100214C00(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v12 = 0uLL;
  v3 = *a2;
  v4 = a2[1];
  p_p = &__p;
  v14 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  __p = *a1;
  v5 = __p;
  v6 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  v12 = v6;
  *(a1 + 16) = 0;
  if (v5)
  {
    v7 = v6;
    v8 = v5;
    if (v6 != v5)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v5);
      v8 = __p;
    }

    *&v12 = v5;
    operator delete(v8);
  }

  return a1;
}

void sub_100214D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001811E8(va);
  _Unwind_Resume(a1);
}

void sub_100214D94()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100214E04()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_100214E74(double **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    result = -INFINITY;
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = -INFINITY;
  do
  {
    v5 = *v2;
    v2 += 10;
    v6 = v5;
    if (result < v5)
    {
      result = v6;
    }
  }

  while (v2 != v3);
  if (a2)
  {
LABEL_7:
    if (result < *a2)
    {
      return *a2;
    }
  }

  return result;
}

BOOL sub_100214EC0(void *a1, double *a2, double a3)
{
  if (*a2 > a3)
  {
    return 1;
  }

  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v5 = *a1 + 80;
  do
  {
    v6 = *(v5 - 80);
    result = v6 > a3;
    v7 = v6 > a3 || v5 == v4;
    v5 += 80;
  }

  while (!v7);
  return result;
}

BOOL sub_100214F08(double **a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = -INFINITY;
  if (*a1 != v3)
  {
    v5 = *a1;
    do
    {
      v6 = *v5;
      v5 += 10;
      v7 = v6;
      if (v4 < v6)
      {
        v4 = v7;
      }
    }

    while (v5 != v3);
  }

  if (a2 && v4 < *a2)
  {
    v4 = *a2;
  }

  if (v4 < -3.6e16)
  {
    if (qword_10045B050 == -1)
    {
      v10 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        return v4 >= -3.6e16;
      }
    }

    else
    {
      sub_100385DB4();
      v10 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        return v4 >= -3.6e16;
      }
    }

    v12 = 134217984;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "These days it's unclear if this type of catastrophic failure can still occur given:\n+ globalDbm scan prior\n+ map uncertainty\n+ off-map particle\n+ renormalization\n\nBUT: in case it does, your maxLoglikelihood was %f", &v12, 0xCu);
    return v4 >= -3.6e16;
  }

  for (; v2 != v3; v2 += 10)
  {
    v8 = v4 + v2[1];
    *v2 = *v2 - v4;
    v2[1] = v8;
  }

  if (a2)
  {
    v9 = v4 + a2[1];
    *a2 = *a2 - v4;
    a2[1] = v9;
  }

  return v4 >= -3.6e16;
}

void sub_100215070(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *(v1 + 8);
    for (i = v1 + 80; i != v2; i += 80)
    {
      sub_1002151B8(v3, *(i + 8));
    }
  }
}

void sub_100215164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::invalid_argument a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::invalid_argument::~invalid_argument(&a13);
  _Unwind_Resume(a1);
}

void sub_100215188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::invalid_argument a13)
{
  std::invalid_argument::~invalid_argument(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

void sub_1002151B8(double a1, double a2)
{
  if (a1 != a2)
  {
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&v3, "Your particle state has become inconsistent");
    sub_10010A984(v2);
  }
}

void sub_1002152C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::invalid_argument a17, std::invalid_argument a18)
{
  sub_1000F1628(&a18);
  if (__p)
  {
    operator delete(__p);
    std::invalid_argument::~invalid_argument(&a17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    std::invalid_argument::~invalid_argument(&a17);
    if (!v19)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_10021532C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a1[1])
  {
    if (a2 && a3)
    {
      v8 = *(a2 + 8);
      v7 = *(a3 + 8);
      goto LABEL_9;
    }

    if (a2)
    {
      v9 = *(a2 + 8);
    }

    if (a3)
    {
      v10 = *(a3 + 8);
    }
  }

  else
  {
    sub_100215070(a1);
    v6 = *(*a1 + 8);
    if (a2)
    {
      sub_1002151B8(*(*a1 + 8), *(a2 + 8));
    }

    if (a3)
    {
      v7 = *(a3 + 8);
      v8 = v6;
LABEL_9:

      sub_1002151B8(v8, v7);
    }
  }
}

void sub_1002154F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

long double sub_100215554@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100215070(a1);
  v5 = *a1;
  v4 = a1[1];
  v6 = *(v5 + 8);
  v7 = 0.0;
  v8 = -INFINITY;
  if (v5 != v4)
  {
    v9 = v5;
    do
    {
      v10 = *v9;
      v9 += 10;
      v11 = v10;
      if (v8 < v10)
      {
        v8 = v11;
      }
    }

    while (v9 != v4);
    if (v8 == -INFINITY)
    {
      v8 = -INFINITY;
      goto LABEL_14;
    }

    v12 = v4 - v5 - 80;
    v7 = 0.0;
    if (v12 < 0x50)
    {
      v13 = v5;
      do
      {
LABEL_13:
        v18 = *v13;
        v13 += 10;
        v7 = v7 + exp(v18 - v8);
      }

      while (v13 != v4);
      goto LABEL_14;
    }

    v14 = v12 / 0x50 + 1;
    v13 = (v5 + 80 * (v14 & 0x7FFFFFFFFFFFFFELL));
    v15 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      v16 = *(v5 + 80) - v8;
      v17 = exp(*v5 - v8);
      v7 = v7 + v17 + exp(v16);
      v5 += 160;
      v15 -= 2;
    }

    while (v15);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  result = v8 + log(v7);
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1002156A4(uint64_t a1, long double a2)
{
  *a1 = log(a2);
  *(a1 + 8) = 0;
  return a1;
}

void sub_1002156D4(double **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4) + 1;
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
  }

  if (v5 == v6)
  {
    v8 = -INFINITY;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v8 = -INFINITY;
  do
  {
    v9 = *v6;
    v6 += 10;
    v10 = v9;
    if (v8 < v9)
    {
      v8 = v10;
    }
  }

  while (v6 != v5);
  if (a2)
  {
LABEL_10:
    if (v8 < *a2)
    {
      v8 = *a2;
    }
  }

LABEL_12:
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v4 != *(&v4 + 1))
  {
    v11 = *(v4 + 8);
    v12 = exp(*v4 - v8) + 0.0;
    operator new();
  }

  if (a2)
  {
    v13 = *(a2 + 8);
    v14 = exp(*a2 - v8) + 0.0;
    operator new();
  }

  if (0.0 / a3 > nextafter(0.0, INFINITY) - 0.0)
  {
    if (a3)
    {
      if (!(a3 >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }

    log(0.0);
    sub_1000474A4(__p, "");
    sub_1001F2AF4("This value should have been set", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(&v18);
  }

  if (qword_10045B050 != -1)
  {
    sub_100385DFC();
  }

  v15 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = 0;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 0.0 / a3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Resetting - Horrible things have happened because c is %f and du is %f", &buf, 0x16u);
  }

  *a4 = 0;
}

void sub_100215E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (!v24)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void sub_100215EB0(double **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  if (*a1 == v7)
  {
    v7 = *a1;
  }

  else
  {
    v8 = -INFINITY;
    v9 = *a1;
    do
    {
      v10 = v8;
      v8 = *v9;
      if (v10 > *v9)
      {
        sub_1000474A4(v30, "");
        sub_10021725C("Particles now need to be in ascending order of weight in order to resample", &v33);
        sub_100383AA4(&v33, &v28, v30);
        sub_10003F5D0(&v28);
      }

      v9 += 10;
    }

    while (v9 != v7);
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4);
  if (a2)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4);
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1002156D4(a1, a2, a3, v30);
  if (v30[0] == 1)
  {
    log(a3);
    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }

    v16 = v31;
    v18 = v32;
    if (v31 != v32)
    {
      do
      {
        v17 = *v16++;
        ++*(8 * v17);
      }

      while (v16 != v18);
    }

    if (a3)
    {
      sub_1000474A4(&v34, "");
      sub_1002172AC("Bug in lowVarianceSelection. It should produce exactly newNumParticles total siblings.", &v28);
      sub_1000E661C(&v34, &v28, 1);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      sub_10003F5D0(__p);
    }

    v29 = 0;
    v28.__r_.__value_.__r.__words[0] = v15;
    *&v28.__r_.__value_.__r.__words[1] = 0uLL;
    sub_100216AF0(&v28.__r_.__value_.__l.__size_, v15);
    if (0xCCCCCCCCCCCCCCCDLL * ((v28.__r_.__value_.__r.__words[2] - v28.__r_.__value_.__l.__size_) >> 4) != v15)
    {
      sub_1000474A4(__p, "");
      sub_10017F360("Didn't fully resample", &v34);
      sub_1000E661C(__p, &v34, 1);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      sub_10003F5D0(&v25);
    }

    v19 = *a1;
    v20 = a1[1];
    if (v15 - 0x3333333333333333 * ((v20 - *a1) >> 4) > a3)
    {
      sub_100216C94(a1, &v19[10 * (a3 - v15)], v20);
      v19 = *a1;
    }

    sub_1002172FC(a1, v19, v28.__r_.__value_.__l.__size_, v28.__r_.__value_.__r.__words[2], 0xCCCCCCCCCCCCCCCDLL * ((v28.__r_.__value_.__r.__words[2] - v28.__r_.__value_.__l.__size_) >> 4));
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *a4 = 1;
    size = v28.__r_.__value_.__l.__size_;
    if (v28.__r_.__value_.__l.__size_)
    {
      v22 = v28.__r_.__value_.__r.__words[2];
      v23 = v28.__r_.__value_.__l.__size_;
      if (v28.__r_.__value_.__r.__words[2] != v28.__r_.__value_.__l.__size_)
      {
        do
        {
          v24 = *(v22 - 16);
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v22 -= 80;
        }

        while (v22 != size);
        v23 = v28.__r_.__value_.__l.__size_;
      }

      v28.__r_.__value_.__r.__words[2] = size;
      operator delete(v23);
    }

    if ((v30[0] & 1) != 0 && v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *a4 = 0;
  }
}

void sub_10021694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, void *a43, int a44, __int16 a45, char a46, char a47)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1002171A8(&a35);
  if (v47)
  {
    operator delete(v47);
    if (!a16)
    {
LABEL_5:
      if (!a18)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!a16)
  {
    goto LABEL_5;
  }

  operator delete(a16);
  if (!a18)
  {
LABEL_6:
    if (a42 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a18);
  if (a42 != 1)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (a43)
  {
    operator delete(a43);
    _Unwind_Resume(a1);
  }

LABEL_12:
  _Unwind_Resume(a1);
}

void *sub_100216AF0(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

uint64_t sub_100216C94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v15 = a2;
      if (v5 == a2)
      {
LABEL_16:
        a1[1] = v15;
        return a2;
      }
    }

    else
    {
      v6 = *a1 + a2;
      v7 = -*a1;
      v18 = *a1;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v7);
        v10 = v6 + v7;
        *v10 = *(v8 + v7);
        v11 = *(v8 + v7 + 16);
        v12 = *(v8 + v7 + 32);
        *(v10 + 48) = *(v8 + v7 + 48);
        *(v10 + 16) = v11;
        *(v10 + 32) = v12;
        v13 = *(v8 + v7 + 56);
        v9[7] = 0;
        v9[8] = 0;
        v14 = *(v6 + v7 + 64);
        *(v10 + 56) = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        *(v10 + 72) = v9[9];
        v6 += 80;
        v8 += 80;
      }

      while (v8 + v7 != v5);
      v5 = a1[1];
      v15 = v6 - v18;
      if (v5 == v6 - v18)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v16 = *(v5 - 16);
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v5 -= 80;
    }

    while (v5 != v15);
    goto LABEL_16;
  }

  return a2;
}

void sub_100216E28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *(v1 + 8);
    for (i = v1 + 16; i != v2; i += 16)
    {
      sub_1002151B8(v3, *(i + 8));
    }
  }
}

void sub_100216F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::invalid_argument a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::invalid_argument::~invalid_argument(&a13);
  _Unwind_Resume(a1);
}

void sub_100216F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::invalid_argument a13)
{
  std::invalid_argument::~invalid_argument(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

long double sub_100216F70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100216E28(a1);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v4 + 8);
  v7 = 0.0;
  if (v4 == v5)
  {
    v9 = -INFINITY;
  }

  else
  {
    v8 = v4;
    v9 = -INFINITY;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 2;
      v12 = v11;
      if (v11 > v9)
      {
        v9 = v12;
      }
    }

    while (v10 != v5);
    if (v9 == -INFINITY)
    {
      v9 = -INFINITY;
    }

    else
    {
      v13 = v5 - v4 - 16;
      v7 = 0.0;
      if (v13 < 0x10)
      {
        goto LABEL_18;
      }

      v14 = (v13 >> 4) + 1;
      v8 = (v4 + 16 * (v14 & 0x1FFFFFFFFFFFFFFELL));
      v15 = (v4 + 16);
      v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v17 = *(v15 - 2);
        v18 = *v15;
        v15 += 4;
        v19 = exp(v17 - v9);
        v7 = v7 + v19 + exp(v18 - v9);
        v16 -= 2;
      }

      while (v16);
      if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_18:
        do
        {
          v20 = *v8;
          v8 += 2;
          v7 = v7 + exp(v20 - v9);
        }

        while (v8 != v5);
      }
    }
  }

  result = v9 + log(v7);
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

long double sub_1002170B0@<D0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1002151B8(a1[1], a2[1]);
  v6 = *(a1 + 1);
  v7 = *a2;
  if (*a1 >= *a2)
  {
    v8 = *a1;
  }

  else
  {
    v8 = *a2;
  }

  if (v8 == -INFINITY)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = exp(*a1 - v8);
    v10 = v9 + exp(v7 - v8);
  }

  result = v8 + log(v10);
  *a3 = result;
  *(a3 + 8) = v6;
  return result;
}

double *sub_100217148(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 sub_100217150(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_10021715C(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

uint64_t sub_1002171A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 16);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

std::string *sub_10021725C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100217290(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002172AC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002172E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002172FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a3;
  v8 = a1[1];
  v7 = a1[2];
  if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4)) < a5)
  {
    v9 = *a1;
    v10 = a5 - 0x3333333333333333 * ((v8 - *a1) >> 4);
    if (v10 > 0x333333333333333)
    {
      sub_10000FC84();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x199999999999999)
    {
      v12 = 0x333333333333333;
    }

    else
    {
      v12 = v10;
    }

    v73 = a1;
    if (v12)
    {
      if (v12 <= 0x333333333333333)
      {
        operator new();
      }

      sub_10000D444();
    }

    v23 = 16 * ((a2 - v9) >> 4);
    __p = 0;
    v70 = v23;
    v72 = 0;
    v24 = v23 + 80 * a5;
    do
    {
      *v23 = *v6;
      v25 = *(v6 + 16);
      v26 = *(v6 + 32);
      *(v23 + 48) = *(v6 + 48);
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      *(v23 + 56) = *(v6 + 56);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v23 + 72) = *(v6 + 72);
      v23 += 80;
      v6 += 80;
    }

    while (v23 != v24);
    v71 = v24;
    v5 = sub_1002178FC(a1, &__p, a2);
    v28 = v70;
    for (i = v71; v71 != v28; i = v71)
    {
      v71 = i - 80;
      v29 = *(i - 16);
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v5;
  }

  v13 = v8 - a2;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - a2) >> 4)) < a5)
  {
    v14 = v13 + a3;
    v15 = a1[1];
    if (v13 + a3 == a4)
    {
      v16 = a1[1];
    }

    else
    {
      v30 = v13 + a3;
      v16 = a1[1];
      do
      {
        *v16 = *v30;
        v31 = *(v30 + 16);
        v32 = *(v30 + 32);
        *(v16 + 48) = *(v30 + 48);
        *(v16 + 16) = v31;
        *(v16 + 32) = v32;
        *(v16 + 56) = *(v30 + 56);
        *(v30 + 56) = 0;
        *(v30 + 64) = 0;
        *(v16 + 72) = *(v30 + 72);
        v30 += 80;
        v16 += 80;
        v15 += 80;
      }

      while (v30 != a4);
    }

    a1[1] = v15;
    if (v13 >= 1)
    {
      v33 = a2 + 80 * a5;
      v34 = v15 - 80 * a5;
      for (j = v15; v34 < v8; j += 80)
      {
        *j = *v34;
        v36 = *(v34 + 16);
        v37 = *(v34 + 32);
        *(j + 48) = *(v34 + 48);
        *(j + 16) = v36;
        *(j + 32) = v37;
        *(j + 56) = *(v34 + 56);
        *(v34 + 56) = 0;
        *(v34 + 64) = 0;
        *(j + 72) = *(v34 + 72);
        v34 += 80;
      }

      a1[1] = j;
      if (v16 != v33)
      {
        v38 = 0;
        v39 = -80 * a5;
        do
        {
          v40 = v39 + v15;
          v41 = v38 + v15;
          *(v41 - 80) = *(v39 + v15 - 80);
          v42 = *(v39 + v15 - 64);
          v43 = *(v39 + v15 - 48);
          *(v41 - 32) = *(v39 + v15 - 32);
          *(v41 - 64) = v42;
          *(v41 - 48) = v43;
          v44 = *(v39 + v15 - 24);
          *(v40 - 24) = 0;
          *(v40 - 16) = 0;
          v45 = *(v38 + v15 - 16);
          *(v41 - 24) = v44;
          if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
          }

          *(v41 - 8) = *(v40 - 8);
          v38 -= 80;
          v39 -= 80;
          v33 += 80;
        }

        while (v15 != v33);
      }

      v46 = 0;
      do
      {
        v47 = v46 + v5;
        *v47 = *v6;
        v48 = *(v6 + 16);
        v49 = *(v6 + 32);
        *(v47 + 48) = *(v6 + 48);
        *(v47 + 16) = v48;
        *(v47 + 32) = v49;
        v50 = *(v6 + 56);
        *(v6 + 56) = 0;
        *(v6 + 64) = 0;
        v51 = *(v46 + v5 + 64);
        *(v47 + 56) = v50;
        if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
        }

        *(v47 + 72) = *(v6 + 72);
        v6 += 80;
        v46 += 80;
      }

      while (v6 != v14);
    }

    return v5;
  }

  v17 = a2 + 80 * a5;
  v18 = v8 - 80 * a5;
  if (v18 >= v8)
  {
    a1[1] = v8;
    if (v8 == v17)
    {
      goto LABEL_52;
    }

LABEL_47:
    v52 = 0;
    v53 = a2 + 80 * a5 - v8;
    do
    {
      v54 = v18 + v52;
      v55 = v8 + v52;
      *(v55 - 80) = *(v18 + v52 - 80);
      v56 = *(v18 + v52 - 64);
      v57 = *(v18 + v52 - 48);
      *(v55 - 32) = *(v18 + v52 - 32);
      *(v55 - 64) = v56;
      *(v55 - 48) = v57;
      v58 = *(v18 + v52 - 24);
      *(v54 - 24) = 0;
      *(v54 - 16) = 0;
      v59 = *(v8 + v52 - 16);
      *(v55 - 24) = v58;
      if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v59->__on_zero_shared)(v59);
        std::__shared_weak_count::__release_weak(v59);
      }

      *(v55 - 8) = *(v54 - 8);
      v52 -= 80;
    }

    while (v53 != v52);
    goto LABEL_52;
  }

  v19 = v8 - 80 * a5;
  v20 = a1[1];
  do
  {
    *v20 = *v19;
    v21 = *(v19 + 16);
    v22 = *(v19 + 32);
    *(v20 + 48) = *(v19 + 48);
    *(v20 + 16) = v21;
    *(v20 + 32) = v22;
    *(v20 + 56) = *(v19 + 56);
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v20 + 72) = *(v19 + 72);
    v19 += 80;
    v20 += 80;
  }

  while (v19 < v8);
  a1[1] = v20;
  if (v8 != v17)
  {
    goto LABEL_47;
  }

LABEL_52:
  v60 = 0;
  v61 = v6 + 80 * a5;
  do
  {
    v62 = v60 + v5;
    *v62 = *v6;
    v63 = *(v6 + 16);
    v64 = *(v6 + 32);
    *(v62 + 48) = *(v6 + 48);
    *(v62 + 16) = v63;
    *(v62 + 32) = v64;
    v65 = *(v6 + 56);
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    v66 = *(v60 + v5 + 64);
    *(v62 + 56) = v65;
    if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66);
      std::__shared_weak_count::__release_weak(v66);
    }

    *(v62 + 72) = *(v6 + 72);
    v6 += 80;
    v60 += 80;
  }

  while (v6 != v61);
  return v5;
}

void sub_1002178E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002178FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      v12 = *(v9 + 64);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 64) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(v8 + 72) = *(v9 + 72);
      v9 += 80;
      v8 += 80;
    }

    while (v9 != v7);
    v13 = a3;
    do
    {
      v14 = *(v13 + 64);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v13 += 80;
    }

    while (v13 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v15;
    v19 = v16 + v15 - a3;
    do
    {
      *v19 = *v18;
      v20 = *(v18 + 16);
      v21 = *(v18 + 32);
      *(v19 + 48) = *(v18 + 48);
      *(v19 + 16) = v20;
      *(v19 + 32) = v21;
      v22 = *(v18 + 64);
      *(v19 + 56) = *(v18 + 56);
      *(v19 + 64) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      *(v19 + 72) = *(v18 + 72);
      v18 += 80;
      v19 += 80;
    }

    while (v18 != a3);
    do
    {
      v23 = *(v15 + 64);
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      v15 += 80;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}

void sub_100217B18()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100217B88()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

long double sub_100217BF8(double a1, double a2)
{
  v2 = a2 - a1;
  if (vabdd_f64(a2, a1) < 50.0)
  {
    return dbl_10045E360[((v2 + 50.0) * 100.0)];
  }

  v4 = __exp10(v2 / 10.0) * -0.5;
  v5 = v4 * *&qword_10045D228;
  v6 = exp(v4 * *&qword_10045D230);
  return v6 - exp(v5);
}

void sub_100217C94()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100217D04()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100217D74()
{
  v0 = __exp10(0.05);
  qword_10045D228 = *&v0;
  v1 = __exp10(-0.05);
  qword_10045D230 = *&v1;
  v2 = -50.0;
  do
  {
    v3 = __exp10(v2 / 10.0) * -0.5;
    v4 = v0 * v3;
    v5 = exp(v1 * v3);
    dbl_10045E360[((v2 + 50.0) * 100.0)] = v5 - exp(v4);
    v2 = v2 + 0.01;
  }

  while (v2 < 50.0);
}

uint64_t sub_100217E54(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = -1;
  *(result + 8) = off_10043D9A8;
  *(result + 32) &= 0xFCu;
  return result;
}

void *sub_100217E8C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_10012A31C((a1 + 1), a3);
  return a1;
}

void *sub_100217EBC(void *result)
{
  if (*result == -1)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_100014A08(&v2, "Attempt to utilize an improperly initialized TimestampedMagneticNorthLocal");
    std::runtime_error::runtime_error(&v3, &v2);
    v3.__vftable = &off_100438BE0;
    sub_10010A984(v1);
  }

  return result;
}

void sub_100217F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100218098()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100218108()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_100218178(void *a1, void *a2, uint64_t *a3)
{
  *a1 = off_100443218;
  v4 = a2[1];
  a1[1] = *a2;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001CFBC8((a1 + 3), *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 4));
  return a1;
}

void *sub_10021821C(void *a1)
{
  *a1 = off_100443218;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      v5 = v3 - 168;
      do
      {
        v8 = *(v3 - 176);
        if (v8 == v8 >> 31)
        {
          if (*(v3 - 128) == 1)
          {
            *(v3 - 128) = 0;
          }
        }

        else
        {
          v6 = *(v3 - 168);
          if (v8 < 0)
          {
            if (v6)
            {
              (*(*v6 + 8))(v6);
            }
          }

          else
          {
            v7 = *(v3 - 168);
            (*v6)(v3 - 168);
          }
        }

        v3 -= 208;
        v5 -= 208;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v9 = a1[2];
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_100218380(void *a1)
{
  sub_10021821C(a1);

  operator delete();
}

uint64_t sub_1002183B8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v5 = *a2;
  v3 = a2 + 2;
  v4 = v5;
  v6 = v5 >> 31;
  if (v5 >> 31 == v5)
  {
    *&v9 = *v3;
    v6 = v4;
  }

  else
  {
    v9 = *v3;
    v10 = v3[4];
  }

  v8 = v6 ^ v4;
  return (*(*v2 + 16))(v2, &v8, a1 + 24);
}

void sub_100218474()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002184E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100218554(int *a1@<X0>, size_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[4] + 3;
  while (sub_100232740(a1) >= v4)
  {
    v12 = sub_100232684(a1, a1[4]);
    if (sub_100232714(a1))
    {
      v5 = sub_100232684(a1, 1);
      v6 = sub_100232740(a1);
      if (v5)
      {
        if (v6 >= 6)
        {
          v7 = 5;
          v8 = 6;
LABEL_10:
          v9 = sub_100232684(a1, v8) + v7;
          v11 = v9;
          if (v9 >= 1)
          {
            if (a2[1] - *a2 >= 5 && (*a2, v10 = a2[1], *(v10 - 8) == v12))
            {
              *(v10 - 4) += v9;
            }

            else
            {
              sub_10000A688(a2, &v12);
              sub_10000A688(a2, &v11);
            }
          }
        }
      }

      else if (v6 >= 2)
      {
        v7 = 1;
        v8 = 2;
        goto LABEL_10;
      }
    }
  }

  sub_10017F020(a2);
}

void sub_100218674(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

double sub_1002186A0(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = -1;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002186B4(uint64_t result, int a2, int a3, int a4, int a5, float a6, float a7)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 20) = a7;
  return result;
}

uint64_t sub_1002186C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == -1)
  {
    sub_1000474A4(v3, "");
    sub_100050FC8("maxRegionalCount is uninitilized", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_100218788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002187CC(unsigned int *a1)
{
  result = *a1;
  if (result == -1)
  {
    sub_1000474A4(v3, "");
    sub_100211F6C("maxIndoorCount is uninitilized", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_100218890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002188D4(uint64_t a1)
{
  result = *(a1 + 12);
  if (result == -1)
  {
    sub_1000474A4(v3, "");
    sub_100218D04("maxRegionalByteSize is uninitilized", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_100218998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002189DC(uint64_t a1)
{
  result = *(a1 + 4);
  if (result == -1)
  {
    sub_1000474A4(v3, "");
    sub_1000D8214("maxIndoorByteSize is uninitilized", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_100218AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100218AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1.0)
  {
    sub_1000474A4(v4, "");
    sub_10017F550("numOfDaysBeforeIndoorTileRedownload is uninitilized", &v5);
    sub_100383AA4(&v5, __p, v4);
    sub_10003F5D0(__p);
  }

  return v1;
}

void sub_100218BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100218BF4(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 == -1.0)
  {
    sub_1000474A4(v4, "");
    sub_100218D54("numOfDaysBeforeRegionalTileRedownload is uninitilized", &v5);
    sub_100383AA4(&v5, __p, v4);
    sub_10003F5D0(__p);
  }

  return v1;
}

void sub_100218CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100218D04@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100218D38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100218D54@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100218D88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100218DA4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100218E14()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100218E84(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = (a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v7 != v8)
  {
    sub_10021AC94(v7, v8, &buf, 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 1)), 1);
    v9 = *a2;
    v10 = *(a2 + 1);
    v37 = 0;
    buf = 0uLL;
    v12 = v10 - v9;
    v11 = v12 == 0;
    v13 = v12 >> 1;
    if (v11)
    {
      *(&buf + 1) = 0xCCCCCCCCCCCCCCCDLL * v13;
    }

    else
    {
      sub_10021D1B0(&buf, 0, 0xCCCCCCCCCCCCCCCDLL * v13, v9, &v35);
    }

    if (&buf == a1)
    {
      if (v37)
      {
        operator delete(buf);
      }
    }

    else
    {
      sub_100385E24(a1, &buf, (&buf + 8));
    }

    v14 = *(a1 + 16);
    if (!v14)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 8);
    if (v15)
    {
      if (v15 >= v14)
      {
LABEL_17:
        if (qword_10045B050 != -1)
        {
          sub_100385E74();
        }

        v20 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 8);
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "constructed in-memory map of wifi aprssimap byte offsets, number of entries, %zu", &buf, 0xCu);
        }

        *(a2 + 1) = *a2;
        goto LABEL_22;
      }

      if (v15 > 0xCCCCCCCCCCCCCCCLL)
      {
        goto LABEL_49;
      }

      v16 = operator new(10 * v15);
      v17 = v16;
      v18 = *a1;
      if (*a1 && (v19 = *(a1 + 8)) != 0)
      {
        memmove(v16, *a1, 10 * v19);
      }

      else if (!v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
      v18 = *a1;
      if (!*a1)
      {
LABEL_16:
        *a1 = v17;
        *(a1 + 16) = v15;
        goto LABEL_17;
      }
    }

    operator delete(v18);
    goto LABEL_16;
  }

LABEL_22:
  v22 = *a3;
  v23 = a3[1];
  if (*a3 == v23)
  {
    return a1;
  }

  sub_10021D364(*a3, v23, &buf, 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v23 - *a3) >> 3)), 1);
  v24 = *a3;
  v25 = a3[1];
  v37 = 0;
  buf = 0uLL;
  v26 = v25 - v24;
  v11 = v26 == 0;
  v27 = v26 >> 3;
  if (v11)
  {
    *(&buf + 1) = 0xCCCCCCCCCCCCCCCDLL * v27;
  }

  else
  {
    sub_100220E40(&buf, 0, 0xCCCCCCCCCCCCCCCDLL * v27, v24, &v35);
  }

  if (&buf == v6)
  {
    if (v37)
    {
      operator delete(buf);
    }
  }

  else
  {
    sub_100385E9C(a1, (a1 + 24), &buf);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = *(a1 + 32);
    if (!v29)
    {
      v30 = 0;
      v31 = *v6;
      if (*v6)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v29 < v28)
    {
      if (v29 < 0x333333333333334)
      {
        v30 = operator new(40 * v29);
        if (!sub_100385EEC((a1 + 24), (a1 + 32), v30, &buf))
        {
          v31 = buf;
LABEL_35:
          operator delete(v31);
        }

LABEL_36:
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        goto LABEL_37;
      }

LABEL_49:
      sub_10021D108("get_next_capacity, allocator's max size reached");
    }
  }

LABEL_37:
  if (qword_10045B050 != -1)
  {
    sub_100385E74();
  }

  v32 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 32);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "constructed in-memory map of iBeacon aprssimap byte offsets , number of entries, %zu", &buf, 0xCu);
  }

  a3[1] = *a3;
  return a1;
}

void sub_10021923C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    operator delete(__p);
    if (!*(v13 + 40))
    {
LABEL_3:
      if (*(v13 + 16))
      {
LABEL_8:
        operator delete(*v13);
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!*(v13 + 40))
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  if (*(v13 + 16))
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL sub_1002192AC(unsigned int **a1, uint64_t a2)
{
  if (*a2 != *a2 >> 31)
  {
    v27 = a1[3];
    v26 = &v27[10 * a1[4]];
    sub_1002210E0(&v27, &v26, a2, &v25);
    v14 = &a1[3][10 * a1[4]];
    v15 = v25;
    if (v25 == v14)
    {
LABEL_24:
      v15 = v14;
LABEL_25:
      v13 = v15 == v14;
      return !v13;
    }

    v17 = v25 + 2;
    v16 = *v25;
    v18 = *v25 >> 31;
    if (v18 == *v25)
    {
      *&v28 = *v17;
      v19 = 0;
      v20 = 0;
      if (*a2 != *a2 >> 31)
      {
LABEL_15:
        if (v20 == v19)
        {
          goto LABEL_25;
        }

        v21 = bswap64(*(a2 + 8));
        v22 = bswap64(v28);
        if (v21 == v22 && (v21 = bswap64(*(a2 + 16)), v22 = bswap64(*(&v28 + 1)), v21 == v22) && (v21 = bswap32(*(a2 + 24)), v22 = bswap32(v29), v21 == v22))
        {
          v23 = 0;
        }

        else
        {
          v23 = v21 < v22 ? -1 : 1;
        }

        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v28 = *v17;
      v29 = v25[6];
      v19 = v18 ^ v16;
      v20 = v19 >> 31;
      if (*a2 != *a2 >> 31)
      {
        goto LABEL_15;
      }
    }

    if (v20 == v19 && *(a2 + 8) >= v28)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  sub_10021AAE0(&v27, *(a2 + 8));
  v4 = *a1;
  v5 = a1[1];
  if (v5)
  {
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v8 = (v7 >> 1);
      v9 = v6 + 10 * (v7 >> 1);
      v10 = *(v9 + 2);
      v12 = *v9;
      v11 = (v9 + 10);
      v7 = (v7 + ~(v7 >> 1));
      if ((v27 | (WORD2(v27) << 32)) <= (v12 | (v10 << 32)))
      {
        v7 = v8;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v7);
    v4 = (v4 + 10 * v5);
    if (v6 != v4 && (*v6 | (*(v6 + 2) << 32)) > (v27 | (WORD2(v27) << 32)))
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = *a1;
  }

  v13 = v6 == v4;
  return !v13;
}

uint64_t sub_100219500(uint64_t a1, uint64_t a2)
{
  if (!sub_1002192AC(a1, a2))
  {
    sub_1000474A4(&v25, "");
    sub_1000E04D8("Attemping to retrieve offset for non-existent mac address", &v24);
    sub_100382FC4(&v24, __p, &v25);
    sub_10003F5D0(__p);
  }

  if (*a2 != *a2 >> 31)
  {
    v25 = *(a1 + 24);
    __p[0] = (v25 + 40 * *(a1 + 32));
    sub_1002210E0(&v25, __p, a2, &v23);
    if (v23 == (*(a1 + 24) + 40 * *(a1 + 32)))
    {
      goto LABEL_32;
    }

    v15 = v23 + 2;
    v14 = *v23;
    v16 = *v23 >> 31;
    if (v16 == *v23)
    {
      *&v26 = *v15;
      v17 = 0;
      v18 = 0;
      if (*a2 != *a2 >> 31)
      {
LABEL_17:
        if (v18 != v17)
        {
          v19 = bswap64(*(a2 + 8));
          v20 = bswap64(v26);
          if (v19 == v20 && (v19 = bswap64(*(a2 + 16)), v20 = bswap64(*(&v26 + 1)), v19 == v20) && (v19 = bswap32(*(a2 + 24)), v20 = bswap32(v27), v19 == v20))
          {
            v21 = 0;
          }

          else
          {
            v21 = v19 < v20 ? -1 : 1;
          }

          if (v21 < 0)
          {
LABEL_32:
            sub_10021D108("flat_map::at key not found");
          }
        }

        return v23[8];
      }
    }

    else
    {
      v26 = *v15;
      v27 = v23[6];
      v17 = v16 ^ v14;
      v18 = v17 >> 31;
      if (*a2 != *a2 >> 31)
      {
        goto LABEL_17;
      }
    }

    if (v18 != v17 || *(a2 + 8) < v26)
    {
      goto LABEL_32;
    }

    return v23[8];
  }

  sub_10021AAE0(&v25, *(a2 + 8));
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v8 = v7 >> 1;
      v9 = v6 + 10 * (v7 >> 1);
      v10 = *(v9 + 2);
      v12 = *v9;
      v11 = (v9 + 10);
      v7 += ~(v7 >> 1);
      if ((v25 | (WORD2(v25) << 32)) <= (v12 | (v10 << 32)))
      {
        v7 = v8;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v7);
    v4 = (v4 + 10 * v5);
    if (v6 != v4 && (*v6 | (*(v6 + 2) << 32)) > (v25 | (WORD2(v25) << 32)))
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = *a1;
  }

  if (v6 == v4)
  {
    sub_10021D108("flat_map::at key not found");
  }

  return *(v6 + 6);
}

void sub_1002197C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100219804(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a3;
  if (*a2 == *a2 >> 31)
  {
    v4 = *(a1 + 8);
    if (v4 >= *(a1 + 16))
    {
      result = sub_1002212BC(a1, a2, &v10);
      *(a1 + 8) = result;
    }

    else
    {
      result = sub_10021AAE0(&v11, *(a2 + 8));
      v6 = v10;
      v7 = v11;
      *(v4 + 4) = v12;
      *v4 = v7;
      *(v4 + 6) = v6;
      *(a1 + 8) = v4 + 10;
      *(a1 + 8) = v4 + 10;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8 >= *(a1 + 40))
    {
      result = sub_100221448((a1 + 24), a2, &v10);
      *(a1 + 32) = result;
    }

    else
    {
      v9 = *(a2 + 8);
      *(v8 + 24) = *(a2 + 24);
      *(v8 + 8) = v9;
      *v8 = *a2 ^ (*a2 >> 31);
      *(v8 + 32) = v10;
      result = v8 + 40;
      *(a1 + 32) = v8 + 40;
    }
  }

  return result;
}

void sub_100219904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100385F70();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "building byte offset map for ApRadioMaps", buf, 2u);
  }

  *__p = 0u;
  v17 = 0u;
  *buf = 0u;
  v7 = sub_10033962C();
  v8 = atomic_load(v7 + 20);
  if ((v8 & 1) != 0 || *(v7 + 16) == 1)
  {
    v9 = *(v7 + 17);
  }

  else
  {
    v10 = v7;
    *(v7 + 17) = sub_100008F80(v7, v7 + 9) & 1;
    *(v10 + 16) = 1;
    atomic_store(1u, v10 + 20);
  }

  v11 = sub_100339598();
  v12 = atomic_load(v11 + 20);
  if ((v12 & 1) != 0 || *(v11 + 16) == 1)
  {
    v13 = *(v11 + 17);
  }

  else
  {
    v14 = v11;
    *(v11 + 17) = sub_100008F80(v11, v11 + 9) & 1;
    *(v14 + 16) = 1;
    atomic_store(1u, v14 + 20);
  }

  if ((*(*a1 + 40))(a1) != a2)
  {
    (*(*a1 + 40))(a1);
    sub_1002CD070(a1);
  }

  sub_100218E84(a3, buf, &__p[1]);
  if (__p[1])
  {
    *&v17 = __p[1];
    operator delete(__p[1]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

void sub_100219BCC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 9);
    __cxa_end_catch();
    JUMPOUT(0x100219A1CLL);
  }

  JUMPOUT(0x100219BC4);
}

void sub_100219BE8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 9);
    __cxa_end_catch();
    JUMPOUT(0x1002199D0);
  }

  JUMPOUT(0x100219BC4);
}

void sub_100219C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10021AC50(va);
  _Unwind_Resume(a1);
}

void sub_100219C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10021AC50(va);
  _Unwind_Resume(a1);
}

void sub_100219C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_1002D5DE0(va);
  sub_10002BB1C(va1);
  sub_10021AC50(va2);
  _Unwind_Resume(a1);
}

void sub_100219C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10021AC50(va);
  _Unwind_Resume(a1);
}

void sub_100219C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10021AC50(va);
  _Unwind_Resume(a1);
}

void sub_100219C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10021AC50(va);
  _Unwind_Resume(a1);
}

void sub_100219C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_10002BB1C(va);
  sub_10021AC50(va1);
  _Unwind_Resume(a1);
}

void sub_100219CB0(void *a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100385F70();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1[1] - *a1) >> 5;
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "searching ApRssiMap stream for macs, count, %zu", buf, 0xCu);
  }

  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = 0;
    while (1)
    {
      while (1)
      {
        v12 = v7 + 2;
        v11 = *v7;
        if (v11 == v11 >> 31)
        {
          *&buf[8] = *v12;
          v13 = v11;
        }

        else
        {
          v14 = *v12;
          v49 = v7[6];
          *&buf[8] = v14;
          v13 = *v7;
          v11 = *v7 >> 31;
        }

        *buf = v13 ^ v11;
        if (sub_1002192AC(a2, buf))
        {
          break;
        }

        v10 = v9;
        v7 += 8;
        if (v7 == v8)
        {
          goto LABEL_27;
        }
      }

      if (((v9 >> 5) + 1) >> 59)
      {
        sub_10000FC84();
      }

      if (v9 >> 5 != -1)
      {
        if (!(((v9 >> 5) + 1) >> 59))
        {
          operator new();
        }

        sub_10000D444();
      }

      v15 = (32 * (v9 >> 5));
      v16 = *buf;
      v17 = *buf >> 31;
      if (*buf >> 31 == *buf)
      {
        *(32 * (v9 >> 5) + 8) = *&buf[8];
        *v15 = 0;
        v10 = (v15 + 8);
        if (v9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(32 * (v9 >> 5) + 8) = *&buf[8];
        *(32 * (v9 >> 5) + 0x18) = v49;
        *v15 = v17 ^ v16;
        v10 = (v15 + 8);
        if (v9)
        {
LABEL_20:
          v18 = 8;
          for (i = 0; i != v9; i += 8)
          {
            while (1)
            {
              v22 = (i + 2);
              if (*i == *i >> 31)
              {
                break;
              }

              v20 = *v22;
              *(v18 + 16) = i[6];
              *v18 = v20;
              v21 = *i;
              i += 8;
              *(v18 - 8) = v21 ^ (v21 >> 31);
              v18 += 32;
              if (i == v9)
              {
                goto LABEL_24;
              }
            }

            *v18 = *v22;
            *(v18 - 8) = 0;
            v18 += 32;
          }
        }
      }

LABEL_24:
      v7 += 8;
      v9 = v10;
      if (v7 == v8)
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
LABEL_27:
  v23 = 126 - 2 * __clz(v10 >> 5);
  *buf = a2;
  if (v10)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_100221628(0, v10, buf, v24, 1);
  v25 = sub_10022411C(0, v10);
  if (v25 == v10)
  {
    v26 = v10;
    if (v10)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v26 = v25;
    if (v25)
    {
LABEL_32:
      if (!((v26 >> 5) >> 62))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  v28 = *a1;
  v27 = a1[1];
  v50 = 0;
  v51 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *buf = a3;
  buf[8] = 0;
  v29 = v27 - v28;
  if (v29)
  {
    if (!((v29 >> 5) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v30 = *a1;
  if (a1[1] != *a1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = &v30[v32];
      v36 = &v30[v32 + 2];
      v35 = v30[v32];
      if (v35 == v35 >> 31)
      {
        *&buf[8] = *v36;
        v37 = v35;
      }

      else
      {
        v38 = *v36;
        v49 = *(v36 + 16);
        *&buf[8] = v38;
        v37 = *v34;
        v35 = v37 >> 31;
      }

      *buf = v37 ^ v35;
      v39 = sub_100224828(&v46, buf);
      if (v47 != v39)
      {
        v40 = *a3;
        v42 = v39[8];
        v41 = v39[9];
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v43 = (v40 + v31);
        v44 = v43[1];
        *v43 = v42;
        v43[1] = v41;
        if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }
      }

      ++v33;
      v30 = *a1;
      v32 += 8;
      v31 += 16;
    }

    while (v33 < (a1[1] - *a1) >> 5);
  }

  sub_1002242DC(&v46, v47[0]);
}

void sub_10021A6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(&a14);
  sub_1002242DC(&a16, a17);
  operator delete(v31);
  if (!a13)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10021A7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10033962C();
  v5 = atomic_load(v4 + 20);
  if ((v5 & 1) != 0 || *(v4 + 16) == 1)
  {
    v6 = *(v4 + 17);
    v7 = sub_100339598();
    v8 = atomic_load(v7 + 20);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v4;
    *(v4 + 17) = sub_100008F80(v4, v4 + 9) & 1;
    *(v9 + 16) = 1;
    atomic_store(1u, v9 + 20);
    v7 = sub_100339598();
    v10 = atomic_load(v7 + 20);
    if (v10)
    {
LABEL_7:
      v11 = *(v7 + 17);
      goto LABEL_9;
    }
  }

  if (*(v7 + 16) == 1)
  {
    goto LABEL_7;
  }

  v12 = v7;
  *(v7 + 17) = sub_100008F80(v7, v7 + 9) & 1;
  *(v12 + 16) = 1;
  atomic_store(1u, v12 + 20);
LABEL_9:
  result = (*(*a1 + 40))(a1);
  if (result != a2)
  {
    sub_1002CD070(a1);
  }

  return result;
}

void sub_10021AA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v15 = *(v14 + 9);
    __cxa_end_catch();
    JUMPOUT(0x10021A898);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021AAE0(uint64_t result, unint64_t a2)
{
  v2 = a2;
  *result = a2;
  *(result + 4) = WORD2(a2);
  if (HIWORD(a2))
  {
    sub_1000474A4(v4, "");
    sub_10020DEDC("upper bits of mac are expected to be zero, integer mac=", &v6);
    sub_10017F3B0(&v2, &v7);
    sub_1000E661C(v4, &v6, 2);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_8:
        operator delete(v4[0]);
LABEL_5:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  return result;
}

void sub_10021ABF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021AC50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10021AC94(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 10);
  v9 = a2 - 5;
  v10 = (a2 - 30);
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v11) >> 1);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v100 = a2 - 10;
        v101 = *v11 | (*(v11 + 2) << 32);
        v102 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v101 <= v102 && (v102 > v101 || *(a2 - 1) >= *(v11 + 6)))
        {
          return result;
        }

        v198 = *(v11 + 4);
        v173 = *v11;
        v103 = *v100;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v103;
LABEL_138:
        *v100 = v173;
        *(v100 + 4) = v198;
        return result;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      return sub_10021BE98(v11, (v11 + 10), v11 + 5, (a2 - 10));
    }

    if (v15 == 5)
    {
      result = sub_10021BE98(v11, (v11 + 10), v11 + 5, (v11 + 30));
      v108 = (a2 - 10);
      v109 = *(v11 + 30) | (*(v11 + 17) << 32);
      v110 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v109 > v110 || v110 <= v109 && *(a2 - 1) < v11[9])
      {
        v111 = *(v11 + 19);
        v112 = *(v11 + 30);
        v113 = *(a2 - 1);
        *(v11 + 30) = *v108;
        *(v11 + 19) = v113;
        *v108 = v112;
        *(a2 - 1) = v111;
        v114 = v11[5] | (*(v11 + 12) << 32);
        v115 = *(v11 + 30) | (*(v11 + 17) << 32);
        if (v114 > v115 || v115 <= v114 && v11[9] < *(v11 + 26))
        {
          v116 = *(v11 + 14);
          v117 = *(v11 + 5);
          *(v11 + 5) = *(v11 + 30);
          *(v11 + 14) = *(v11 + 19);
          *(v11 + 30) = v117;
          *(v11 + 19) = v116;
          v118 = *(v11 + 10) | (*(v11 + 7) << 32);
          v119 = v11[5] | (*(v11 + 12) << 32);
          if (v118 > v119 || v119 <= v118 && *(v11 + 26) < v11[4])
          {
            v120 = *(v11 + 9);
            v121 = *(v11 + 10);
            *(v11 + 10) = *(v11 + 5);
            *(v11 + 9) = *(v11 + 14);
            *(v11 + 5) = v121;
            *(v11 + 14) = v120;
            v122 = *v11 | (*(v11 + 2) << 32);
            v123 = *(v11 + 10) | (*(v11 + 7) << 32);
            if (v122 > v123 || v123 <= v122 && v11[4] < *(v11 + 6))
            {
              v200 = *(v11 + 4);
              v175 = *v11;
              *v11 = *(v11 + 10);
              *(v11 + 4) = *(v11 + 9);
              *(v11 + 10) = v175;
              *(v11 + 9) = v200;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v14 <= 239)
    {
      v124 = (v11 + 10);
      v126 = v11 == a2 || v124 == a2;
      if (a5)
      {
        if (v126)
        {
          return result;
        }

        v127 = 0;
        v128 = v11;
LABEL_162:
        v130 = v128;
        v128 = v124;
        v131 = *v130 | (*(v130 + 2) << 32);
        v132 = *(v130 + 10) | (*(v130 + 7) << 32);
        if (v131 <= v132)
        {
          if (v132 > v131)
          {
            goto LABEL_161;
          }

          v133 = v130[4];
          if (v133 >= *(v130 + 6))
          {
            goto LABEL_161;
          }
        }

        else
        {
          v133 = v130[4];
        }

        *v128 = *v130;
        *(v128 + 4) = *(v130 + 4);
        v129 = v11;
        if (v130 == v11)
        {
          goto LABEL_160;
        }

        v134 = v127;
        while (1)
        {
          v135 = v11 + v134;
          v136 = *(v11 + v134 - 10) | (*(v11 + v134 - 6) << 32);
          if (v136 <= v132)
          {
            if (v132 > v136)
            {
              v129 = (v11 + v134);
LABEL_160:
              *v129 = v132;
              *(v129 + 2) = WORD2(v132);
              *(v129 + 6) = v133;
LABEL_161:
              v124 = (v128 + 10);
              v127 += 10;
              if ((v128 + 10) == a2)
              {
                return result;
              }

              goto LABEL_162;
            }

            if (v133 >= *(v11 + v134 - 4))
            {
              v129 = v130;
              goto LABEL_160;
            }
          }

          v130 = (v130 - 10);
          *v135 = *(v11 + v134 - 10);
          *(v135 + 4) = *(v11 + v134 - 2);
          v134 -= 10;
          if (!v134)
          {
            v129 = v11;
            goto LABEL_160;
          }
        }
      }

      if (v126)
      {
        return result;
      }

      while (2)
      {
        v143 = v7;
        v7 = v124;
        v144 = *v143 | (*(v143 + 2) << 32);
        v145 = *(v143 + 10) | (*(v143 + 7) << 32);
        if (v144 <= v145)
        {
          if (v145 <= v144)
          {
            v146 = v143[4];
            if (v146 < *(v143 + 6))
            {
              goto LABEL_196;
            }
          }
        }

        else
        {
          v146 = v143[4];
          do
          {
            do
            {
LABEL_196:
              v147 = v143;
              *(v143 + 10) = *v143;
              *(v143 + 9) = *(v143 + 4);
              v148 = *(v143 - 10);
              v143 = (v143 - 10);
              v149 = v148 | (*(v147 - 3) << 32);
            }

            while (v149 > v145);
          }

          while (v145 <= v149 && v146 < *(v147 - 1));
          *v147 = v145;
          *(v147 + 2) = WORD2(v145);
          *(v147 + 6) = v146;
        }

        v124 = (v7 + 10);
        if ((v7 + 10) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_10021CC14(v11, a2, a2, a3);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 10 * (v15 >> 1));
    if (v14 >= 0x501)
    {
      v18 = *v11 | (*(v11 + 2) << 32);
      v19 = *v17 | (*(v17 + 2) << 32);
      if (v18 > v19 || v19 <= v18 && *(v17 + 6) < *(v11 + 6))
      {
        v20 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v19 > v20 || v20 <= v19 && *(a2 - 1) < *(v17 + 6))
        {
          v177 = *(v11 + 4);
          v156 = *v11;
          v21 = *v8;
          *(v11 + 4) = *(a2 - 1);
          *v11 = v21;
        }

        else
        {
          v183 = *(v11 + 4);
          v162 = *v11;
          v36 = *v17;
          *(v11 + 4) = *(v17 + 4);
          *v11 = v36;
          *(v17 + 4) = v183;
          *v17 = v162;
          v37 = *v17 | (WORD2(v162) << 32);
          v38 = *(a2 - 10) | (*(a2 - 3) << 32);
          if (v37 <= v38 && (v38 > v37 || *(a2 - 1) >= *(v17 + 6)))
          {
            goto LABEL_36;
          }

          v177 = *(v17 + 4);
          v156 = *v17;
          v39 = *v8;
          *(v17 + 4) = *(a2 - 1);
          *v17 = v39;
        }

        *v8 = v156;
        *(a2 - 1) = v177;
        goto LABEL_36;
      }

      v26 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v19 > v26 || v26 <= v19 && *(a2 - 1) < *(v17 + 6))
      {
        v179 = *(v17 + 4);
        v158 = *v17;
        v27 = *v8;
        *(v17 + 4) = *(a2 - 1);
        *v17 = v27;
        *v8 = v158;
        *(a2 - 1) = v179;
        v28 = *v11 | (*(v11 + 2) << 32);
        v29 = *v17 | (*(v17 + 2) << 32);
        if (v28 > v29 || v29 <= v28 && *(v17 + 6) < *(v11 + 6))
        {
          v180 = *(v11 + 4);
          v159 = *v11;
          v30 = *v17;
          *(v11 + 4) = *(v17 + 4);
          *v11 = v30;
          *(v17 + 4) = v180;
          *v17 = v159;
        }
      }

LABEL_36:
      v40 = (v11 + 10);
      v41 = v11 + 10 * v16;
      v43 = *(v41 - 10);
      v42 = v41 - 10;
      v44 = *(v11 + 10) | (*(v11 + 7) << 32);
      v45 = v43 | (*(v42 + 2) << 32);
      if (v44 > v45 || v45 <= v44 && *(v42 + 6) < v11[4])
      {
        v46 = *(a2 - 5) | (*(a2 - 8) << 32);
        if (v45 > v46 || v46 <= v45 && *(a2 - 14) < *(v42 + 6))
        {
          v47 = *(v11 + 9);
          v48 = *v40;
          v49 = *(a2 - 6);
          *v40 = *v9;
          *(v11 + 9) = v49;
          *v9 = v48;
          *(a2 - 6) = v47;
        }

        else
        {
          v60 = *v40;
          v187 = *(v11 + 9);
          v61 = *(v42 + 4);
          *v40 = *v42;
          *(v11 + 9) = v61;
          *(v42 + 4) = v187;
          *v42 = v60;
          v62 = v60 | (WORD2(v60) << 32);
          v63 = *(a2 - 5) | (*(a2 - 8) << 32);
          if (v62 > v63 || v63 <= v62 && *(a2 - 14) < *(v42 + 6))
          {
            v188 = *(v42 + 4);
            v165 = *v42;
            v64 = *v9;
            *(v42 + 4) = *(a2 - 6);
            *v42 = v64;
            *v9 = v165;
            *(a2 - 6) = v188;
          }
        }
      }

      else
      {
        v50 = *(a2 - 5) | (*(a2 - 8) << 32);
        if (v45 > v50 || v50 <= v45 && *(a2 - 14) < *(v42 + 6))
        {
          v184 = *(v42 + 4);
          v163 = *v42;
          v51 = *v9;
          *(v42 + 4) = *(a2 - 6);
          *v42 = v51;
          *v9 = v163;
          *(a2 - 6) = v184;
          v52 = *(v11 + 10) | (*(v11 + 7) << 32);
          v53 = *v42 | (*(v42 + 2) << 32);
          if (v52 > v53 || v53 <= v52 && *(v42 + 6) < v11[4])
          {
            v54 = *v40;
            v185 = *(v11 + 9);
            v55 = *(v42 + 4);
            *v40 = *v42;
            *(v11 + 9) = v55;
            *(v42 + 4) = v185;
            *v42 = v54;
          }
        }
      }

      v65 = (v11 + 5);
      v66 = v11 + 10 * v16;
      v68 = *(v66 + 10);
      v67 = (v66 + 10);
      v69 = v11[5] | (*(v11 + 12) << 32);
      v70 = v68 | (*(v67 + 2) << 32);
      if (v69 > v70 || v70 <= v69 && *(v67 + 6) < *(v11 + 26))
      {
        v71 = *(a2 - 30) | (*(a2 - 13) << 32);
        if (v70 > v71 || v71 <= v70 && *(a2 - 6) < *(v67 + 6))
        {
          v72 = *(v11 + 14);
          v73 = *v65;
          v74 = *(a2 - 11);
          *v65 = *v10;
          *(v11 + 14) = v74;
          *v10 = v73;
          *(a2 - 11) = v72;
        }

        else
        {
          v81 = *v65;
          v191 = *(v11 + 14);
          v82 = *(v67 + 4);
          *v65 = *v67;
          *(v11 + 14) = v82;
          *(v67 + 4) = v191;
          *v67 = v81;
          v83 = v81 | (WORD2(v81) << 32);
          v84 = *(a2 - 30) | (*(a2 - 13) << 32);
          if (v83 > v84 || v84 <= v83 && *(a2 - 6) < *(v67 + 6))
          {
            v192 = *(v67 + 4);
            v167 = *v67;
            v85 = *v10;
            *(v67 + 4) = *(a2 - 11);
            *v67 = v85;
            *v10 = v167;
            *(a2 - 11) = v192;
          }
        }
      }

      else
      {
        v75 = *(a2 - 30) | (*(a2 - 13) << 32);
        if (v70 > v75 || v75 <= v70 && *(a2 - 6) < *(v67 + 6))
        {
          v189 = *(v67 + 4);
          v166 = *v67;
          v76 = *v10;
          *(v67 + 4) = *(a2 - 11);
          *v67 = v76;
          *v10 = v166;
          *(a2 - 11) = v189;
          v77 = v11[5] | (*(v11 + 12) << 32);
          v78 = *v67 | (*(v67 + 2) << 32);
          if (v77 > v78 || v78 <= v77 && *(v67 + 6) < *(v11 + 26))
          {
            v79 = *v65;
            v190 = *(v11 + 14);
            v80 = *(v67 + 4);
            *v65 = *v67;
            *(v11 + 14) = v80;
            *(v67 + 4) = v190;
            *v67 = v79;
          }
        }
      }

      v86 = *v42 | (*(v42 + 2) << 32);
      v87 = *v17 | (*(v17 + 2) << 32);
      if (v86 <= v87 && (v87 > v86 || *(v17 + 6) >= *(v42 + 6)))
      {
        v89 = *v67 | (*(v67 + 2) << 32);
        if (v87 > v89 || v89 <= v87 && *(v67 + 6) < *(v17 + 6))
        {
          v194 = *(v17 + 4);
          v169 = *v17;
          *v17 = *v67;
          *(v17 + 4) = *(v67 + 4);
          *(v67 + 4) = v194;
          *v67 = v169;
          v90 = *v42 | (*(v42 + 2) << 32);
          v91 = *v17 | (*(v17 + 2) << 32);
          if (v90 > v91 || v91 <= v90 && *(v17 + 6) < *(v42 + 6))
          {
            v195 = *(v42 + 4);
            v170 = *v42;
            *v42 = *v17;
            *(v42 + 4) = *(v17 + 4);
            *(v17 + 4) = v195;
            *v17 = v170;
          }
        }

LABEL_114:
        v197 = *(v11 + 4);
        v172 = *v11;
        v94 = *v17;
        *(v11 + 4) = *(v17 + 4);
        *v11 = v94;
        *(v17 + 4) = v197;
        *v17 = v172;
        if (a5)
        {
          goto LABEL_118;
        }

        goto LABEL_115;
      }

      v88 = *v67 | (*(v67 + 2) << 32);
      if (v87 > v88 || v88 <= v87 && *(v67 + 6) < *(v17 + 6))
      {
        v193 = *(v42 + 4);
        v168 = *v42;
        *v42 = *v67;
        *(v42 + 4) = *(v67 + 4);
      }

      else
      {
        v196 = *(v42 + 4);
        v171 = *v42;
        *v42 = *v17;
        *(v42 + 4) = *(v17 + 4);
        *(v17 + 4) = v196;
        *v17 = v171;
        v92 = *v17 | (WORD2(v171) << 32);
        v93 = *v67 | (*(v67 + 2) << 32);
        if (v92 <= v93 && (v93 > v92 || *(v67 + 6) >= *(v17 + 6)))
        {
          goto LABEL_114;
        }

        v193 = *(v17 + 4);
        v168 = *v17;
        *v17 = *v67;
        *(v17 + 4) = *(v67 + 4);
      }

      *(v67 + 4) = v193;
      *v67 = v168;
      goto LABEL_114;
    }

    v22 = *v17 | (*(v17 + 2) << 32);
    v23 = *v11 | (*(v11 + 2) << 32);
    if (v22 > v23 || v23 <= v22 && *(v11 + 6) < *(v17 + 6))
    {
      v24 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v23 > v24 || v24 <= v23 && *(a2 - 1) < *(v11 + 6))
      {
        v178 = *(v17 + 4);
        v157 = *v17;
        v25 = *v8;
        *(v17 + 4) = *(a2 - 1);
        *v17 = v25;
        goto LABEL_48;
      }

      v186 = *(v17 + 4);
      v164 = *v17;
      v56 = *v11;
      *(v17 + 4) = *(v11 + 4);
      *v17 = v56;
      *(v11 + 4) = v186;
      *v11 = v164;
      v57 = *v11 | (WORD2(v164) << 32);
      v58 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v57 > v58 || v58 <= v57 && *(a2 - 1) < *(v11 + 6))
      {
        v178 = *(v11 + 4);
        v157 = *v11;
        v59 = *v8;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v59;
LABEL_48:
        *v8 = v157;
        *(a2 - 1) = v178;
        if (a5)
        {
          goto LABEL_118;
        }

        goto LABEL_115;
      }
    }

    else
    {
      v31 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v23 > v31 || v31 <= v23 && *(a2 - 1) < *(v11 + 6))
      {
        v181 = *(v11 + 4);
        v160 = *v11;
        v32 = *v8;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v32;
        *v8 = v160;
        *(a2 - 1) = v181;
        v33 = *v17 | (*(v17 + 2) << 32);
        v34 = *v11 | (*(v11 + 2) << 32);
        if (v33 > v34 || v34 <= v33 && *(v11 + 6) < *(v17 + 6))
        {
          v182 = *(v17 + 4);
          v161 = *v17;
          v35 = *v11;
          *(v17 + 4) = *(v11 + 4);
          *v17 = v35;
          *(v11 + 4) = v182;
          *v11 = v161;
          if (a5)
          {
            goto LABEL_118;
          }

          goto LABEL_115;
        }
      }
    }

    if (a5)
    {
      goto LABEL_118;
    }

LABEL_115:
    v95 = *v11 | (*(v11 + 2) << 32);
    v96 = *(v11 - 10) | (*(v11 - 3) << 32);
    if (v95 <= v96 && (v96 > v95 || *(v11 - 1) >= *(v11 + 6)))
    {
      result = sub_10021C168(v11, a2);
      v11 = result;
      goto LABEL_133;
    }

LABEL_118:
    v97 = sub_10021C310(v11, a2);
    if ((v98 & 1) == 0)
    {
      goto LABEL_131;
    }

    v99 = sub_10021C4B4(v11, v97);
    v11 = (v97 + 10);
    result = sub_10021C4B4((v97 + 10), a2);
    if (result)
    {
      a4 = -v13;
      a2 = v97;
      if (v99)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v99)
    {
LABEL_131:
      result = sub_10021AC94(v7, v97, a3, -v13, a5 & 1);
      v11 = (v97 + 10);
LABEL_133:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  v100 = v11 + 10;
  v104 = *v11 | (*(v11 + 2) << 32);
  v105 = *(v11 + 10) | (*(v11 + 7) << 32);
  if (v104 > v105 || v105 <= v104 && v11[4] < *(v11 + 6))
  {
    v106 = *(a2 - 10) | (*(a2 - 3) << 32);
    if (v105 > v106 || v106 <= v105 && *(a2 - 1) < v11[4])
    {
      v199 = *(v11 + 4);
      v174 = *v11;
      v107 = *v8;
      *(v11 + 4) = *(a2 - 1);
      *v11 = v107;
      *v8 = v174;
      *(a2 - 1) = v199;
    }

    else
    {
      v201 = *(v11 + 4);
      v176 = *v11;
      *v11 = *v100;
      *(v11 + 4) = *(v11 + 9);
      *v100 = v176;
      *(v11 + 9) = v201;
      v150 = *(v11 + 10) | (*(v11 + 7) << 32);
      v151 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v150 > v151 || v151 <= v150 && *(a2 - 1) < v11[4])
      {
        v152 = *(v11 + 9);
        v153 = *v100;
        v154 = *(a2 - 1);
        *v100 = *v8;
        *(v11 + 9) = v154;
        *v8 = v153;
        *(a2 - 1) = v152;
      }
    }
  }

  else
  {
    v137 = *(a2 - 10) | (*(a2 - 3) << 32);
    if (v105 > v137 || v137 <= v105 && *(a2 - 1) < v11[4])
    {
      v138 = *(v11 + 9);
      v139 = *v100;
      v140 = *(a2 - 1);
      *v100 = *v8;
      *(v11 + 9) = v140;
      *v8 = v139;
      *(a2 - 1) = v138;
      v141 = *v11 | (*(v11 + 2) << 32);
      v142 = *(v11 + 10) | (*(v11 + 7) << 32);
      if (v141 > v142 || v142 <= v141 && v11[4] < *(v11 + 6))
      {
        v198 = *(v11 + 4);
        v173 = *v11;
        *v11 = *v100;
        *(v11 + 4) = *(v11 + 9);
        goto LABEL_138;
      }
    }
  }

  return result;
}

unsigned int *sub_10021BE98(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *result | (*(result + 2) << 32);
  v5 = *a2 | (*(a2 + 2) << 32);
  if (v4 > v5 || v5 <= v4 && *(a2 + 6) < *(result + 6))
  {
    v6 = *a3 | (*(a3 + 2) << 32);
    if (v5 > v6 || v6 <= v5 && *(a3 + 6) < *(a2 + 6))
    {
      v7 = *(result + 4);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
    }

    else
    {
      v19 = *(result + 4);
      v20 = *result;
      v21 = *(a2 + 4);
      *result = *a2;
      *(result + 4) = v21;
      *a2 = v20;
      *(a2 + 4) = v19;
      v22 = v20 | (WORD2(v20) << 32);
      v23 = *a3 | (*(a3 + 2) << 32);
      if (v22 <= v23 && (v23 > v22 || *(a3 + 6) >= *(a2 + 6)))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 4);
      v8 = *a2;
      v24 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v24;
    }

    *a3 = v8;
    *(a3 + 4) = v7;
  }

  else
  {
    v10 = *a3 | (*(a3 + 2) << 32);
    if (v5 > v10 || v10 <= v5 && *(a3 + 6) < *(a2 + 6))
    {
      v11 = *(a2 + 4);
      v12 = *a2;
      v13 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v13;
      *a3 = v12;
      *(a3 + 4) = v11;
      v14 = *result | (*(result + 2) << 32);
      v15 = *a2 | (*(a2 + 2) << 32);
      if (v14 > v15 || v15 <= v14 && *(a2 + 6) < *(result + 6))
      {
        v16 = *(result + 4);
        v17 = *result;
        v18 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v18;
        *a2 = v17;
        *(a2 + 4) = v16;
      }
    }
  }

LABEL_14:
  v25 = *a3 | (*(a3 + 2) << 32);
  v26 = *a4 | (*(a4 + 2) << 32);
  if (v25 > v26 || v26 <= v25 && *(a4 + 6) < *(a3 + 6))
  {
    v27 = *(a3 + 4);
    v28 = *a3;
    v29 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v29;
    *a4 = v28;
    *(a4 + 4) = v27;
    v30 = *a2 | (*(a2 + 2) << 32);
    v31 = *a3 | (*(a3 + 2) << 32);
    if (v30 > v31 || v31 <= v30 && *(a3 + 6) < *(a2 + 6))
    {
      v32 = *(a2 + 4);
      v33 = *a2;
      v34 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v34;
      *a3 = v33;
      *(a3 + 4) = v32;
      v35 = *result | (*(result + 2) << 32);
      v36 = *a2 | (*(a2 + 2) << 32);
      if (v35 > v36 || v36 <= v35 && *(a2 + 6) < *(result + 6))
      {
        v37 = *(result + 4);
        v38 = *result;
        v39 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v39;
        *a2 = v38;
        *(a2 + 4) = v37;
      }
    }
  }

  return result;
}

unsigned int *sub_10021C168(unsigned int *a1, unsigned int *j)
{
  v2 = *a1 | (*(a1 + 2) << 32);
  v3 = *(a1 + 6);
  v4 = *(j - 10) | (*(j - 3) << 32);
  if (v4 > v2 || v2 <= v4 && v3 < *(j - 1))
  {
    i = a1;
    do
    {
      v6 = *(i + 10);
      i = (i + 10);
      v7 = v6 | (*(i + 2) << 32);
    }

    while (v7 <= v2 && (v2 > v7 || v3 >= *(i + 6)));
  }

  else
  {
    for (i = (a1 + 10); i < j; i = (i + 10))
    {
      v8 = *i | (*(i + 2) << 32);
      if (v8 > v2 || v2 <= v8 && v3 < *(i + 6))
      {
        break;
      }
    }
  }

  if (i < j)
  {
    for (j = (j - 10); v4 > v2 || v2 <= v4 && v3 < *(j + 6); v4 = v9 | (*(j + 2) << 32))
    {
      v9 = *(j - 10);
      j = (j - 10);
    }
  }

  while (i < j)
  {
    v17 = *(i + 4);
    v16 = *i;
    v10 = *j;
    *(i + 4) = *(j + 4);
    *i = v10;
    *(j + 4) = v17;
    *j = v16;
    do
    {
      v11 = *(i + 10);
      i = (i + 10);
      v12 = v11 | (*(i + 2) << 32);
    }

    while (v12 <= v2 && (v2 > v12 || v3 >= *(i + 6)));
    do
    {
      do
      {
        j = (j - 10);
        v13 = *j | (*(j + 2) << 32);
      }

      while (v13 > v2);
    }

    while (v2 <= v13 && v3 < *(j + 6));
  }

  if ((i - 10) != a1)
  {
    v14 = *(i - 10);
    *(a1 + 4) = *(i - 1);
    *a1 = v14;
  }

  *(i - 10) = v2;
  *(i - 3) = WORD2(v2);
  *(i - 1) = v3;
  return i;
}

char *sub_10021C310(unsigned int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1 | (*(a1 + 2) << 32);
  v4 = *(a1 + 6);
  while (1)
  {
    v5 = *(a1 + v2 + 10) | (*(a1 + v2 + 14) << 32);
    if (v3 <= v5 && (v5 > v3 || *(a1 + v2 + 16) >= v4))
    {
      break;
    }

    v2 += 10;
  }

  v6 = a1 + v2 + 10;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 10);
      a2 -= 10;
      v8 = v7 | (*(a2 + 4) << 32);
    }

    while (v3 <= v8 && (v8 > v3 || *(a2 + 6) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 10);
        a2 -= 10;
        v10 = v9 | (*(a2 + 4) << 32);
        if (v3 > v10)
        {
          break;
        }

        if (v10 > v3)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 6) >= v4 && v6 < a2);
    }
  }

  v12 = v6;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v21 = *(v12 + 4);
      v20 = *v12;
      v14 = *v13;
      *(v12 + 4) = *(v13 + 8);
      *v12 = v14;
      *(v13 + 8) = v21;
      *v13 = v20;
      do
      {
        do
        {
          v12 = (v12 + 10);
          v15 = *v12 | (*(v12 + 2) << 32);
        }

        while (v3 > v15);
      }

      while (v15 <= v3 && *(v12 + 6) < v4);
      do
      {
        v16 = *(v13 - 10);
        v13 -= 10;
        v17 = v16 | (*(v13 + 4) << 32);
      }

      while (v3 <= v17 && (v17 > v3 || *(v13 + 6) >= v4));
    }

    while (v12 < v13);
  }

  if ((v12 - 10) != a1)
  {
    v18 = *(v12 - 10);
    *(a1 + 4) = *(v12 - 1);
    *a1 = v18;
  }

  *(v12 - 10) = v3;
  *(v12 - 3) = WORD2(v3);
  *(v12 - 1) = v4;
  return v12 - 10;
}

BOOL sub_10021C4B4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 1);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = a2 - 10;
        v4 = *a1 | (*(a1 + 2) << 32);
        v5 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v4 <= v5 && (v5 > v4 || *(a2 - 1) >= *(a1 + 6)))
        {
          return 1;
        }

        v6 = *(a1 + 4);
        v7 = *a1;
        v8 = *(a2 - 1);
        *a1 = *v3;
LABEL_6:
        *(a1 + 4) = v8;
        *v3 = v7;
        *(v3 + 4) = v6;
        return 1;
      }

      goto LABEL_18;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      v3 = a1 + 10;
      v30 = (a2 - 10);
      v31 = *a1 | (*(a1 + 2) << 32);
      v32 = *(a1 + 10) | (*(a1 + 7) << 32);
      if (v31 > v32 || v32 <= v31 && a1[4] < *(a1 + 6))
      {
        v33 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v32 > v33 || v33 <= v32 && *(a2 - 1) < a1[4])
        {
          v34 = *(a1 + 4);
          v35 = *a1;
          v36 = *(a2 - 1);
          *a1 = *v30;
          *(a1 + 4) = v36;
          *v30 = v35;
          *(a2 - 1) = v34;
          return 1;
        }

        v56 = *(a1 + 4);
        v57 = *a1;
        *a1 = *v3;
        *(a1 + 4) = *(a1 + 9);
        *v3 = v57;
        *(a1 + 9) = v56;
        v58 = *(a1 + 10) | (*(a1 + 7) << 32);
        v59 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v58 > v59 || v59 <= v58 && *(a2 - 1) < a1[4])
        {
          v60 = *(a1 + 9);
          v61 = *v3;
          v62 = *(a2 - 1);
          *v3 = *v30;
          *(a1 + 9) = v62;
          *v30 = v61;
          *(a2 - 1) = v60;
          return 1;
        }

        return 1;
      }

      v44 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v32 > v44 || v44 <= v32 && *(a2 - 1) < a1[4])
      {
        v45 = *(a1 + 9);
        v46 = *v3;
        v47 = *(a2 - 1);
        *v3 = *v30;
        *(a1 + 9) = v47;
        *v30 = v46;
        *(a2 - 1) = v45;
        v48 = *a1 | (*(a1 + 2) << 32);
        v49 = *(a1 + 10) | (*(a1 + 7) << 32);
        if (v48 > v49 || v49 <= v48 && a1[4] < *(a1 + 6))
        {
          v6 = *(a1 + 4);
          v7 = *a1;
          *a1 = *v3;
          v8 = *(a1 + 9);
          goto LABEL_6;
        }
      }

      return 1;
    case 4:
      sub_10021BE98(a1, (a1 + 10), a1 + 5, (a2 - 10));
      return 1;
    case 5:
      sub_10021BE98(a1, (a1 + 10), a1 + 5, (a1 + 30));
      v12 = (a2 - 10);
      v13 = *(a1 + 30) | (*(a1 + 17) << 32);
      v14 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v13 > v14 || v14 <= v13 && *(a2 - 1) < a1[9])
      {
        v15 = *(a1 + 19);
        v16 = *(a1 + 30);
        v17 = *(a2 - 1);
        *(a1 + 30) = *v12;
        *(a1 + 19) = v17;
        *v12 = v16;
        *(a2 - 1) = v15;
        v18 = a1[5] | (*(a1 + 12) << 32);
        v19 = *(a1 + 30) | (*(a1 + 17) << 32);
        if (v18 > v19 || v19 <= v18 && a1[9] < *(a1 + 26))
        {
          v20 = *(a1 + 14);
          v21 = *(a1 + 5);
          *(a1 + 5) = *(a1 + 30);
          *(a1 + 14) = *(a1 + 19);
          *(a1 + 30) = v21;
          *(a1 + 19) = v20;
          v22 = *(a1 + 10) | (*(a1 + 7) << 32);
          v23 = a1[5] | (*(a1 + 12) << 32);
          if (v22 > v23 || v23 <= v22 && *(a1 + 26) < a1[4])
          {
            v24 = *(a1 + 9);
            v25 = *(a1 + 10);
            *(a1 + 10) = *(a1 + 5);
            *(a1 + 9) = *(a1 + 14);
            *(a1 + 5) = v25;
            *(a1 + 14) = v24;
            v26 = *a1 | (*(a1 + 2) << 32);
            v27 = *(a1 + 10) | (*(a1 + 7) << 32);
            if (v26 > v27 || v27 <= v26 && a1[4] < *(a1 + 6))
            {
              v28 = *(a1 + 4);
              v29 = *a1;
              *a1 = *(a1 + 10);
              *(a1 + 4) = *(a1 + 9);
              *(a1 + 10) = v29;
              *(a1 + 9) = v28;
              return 1;
            }
          }
        }
      }

      return 1;
  }

LABEL_18:
  v37 = a1 + 5;
  v38 = (a1 + 10);
  v39 = *a1 | (*(a1 + 2) << 32);
  v40 = *(a1 + 10) | (*(a1 + 7) << 32);
  if (v39 > v40 || v40 <= v39 && a1[4] < *(a1 + 6))
  {
    v41 = a1[5] | (*(a1 + 12) << 32);
    if (v40 > v41 || v41 <= v40 && *(a1 + 26) < a1[4])
    {
      v42 = *(a1 + 4);
      v43 = *a1;
      *a1 = *v37;
      *(a1 + 4) = *(a1 + 14);
      *v37 = v43;
      *(a1 + 14) = v42;
    }

    else
    {
      v63 = *(a1 + 4);
      v64 = *a1;
      *a1 = *v38;
      *(a1 + 4) = *(a1 + 9);
      *v38 = v64;
      *(a1 + 9) = v63;
      v65 = *(a1 + 10) | (*(a1 + 7) << 32);
      if (v65 > v41 || v41 <= v65 && *(a1 + 26) < a1[4])
      {
        v66 = *(a1 + 9);
        v67 = *v38;
        *v38 = *v37;
        *(a1 + 9) = *(a1 + 14);
        *v37 = v67;
        *(a1 + 14) = v66;
      }
    }
  }

  else
  {
    v50 = a1[5] | (*(a1 + 12) << 32);
    if (v40 > v50 || v50 <= v40 && *(a1 + 26) < a1[4])
    {
      v51 = *(a1 + 9);
      v52 = *v38;
      *v38 = *v37;
      *(a1 + 9) = *(a1 + 14);
      *v37 = v52;
      *(a1 + 14) = v51;
      v53 = *(a1 + 10) | (*(a1 + 7) << 32);
      if (v39 > v53 || v53 <= v39 && a1[4] < *(a1 + 6))
      {
        v54 = *(a1 + 4);
        v55 = *a1;
        *a1 = *v38;
        *(a1 + 4) = *(a1 + 9);
        *v38 = v55;
        *(a1 + 9) = v54;
      }
    }
  }

  v68 = (a1 + 30);
  if ((a1 + 30) == a2)
  {
    return 1;
  }

  v69 = 0;
  v70 = 0;
  while (2)
  {
    v71 = *v37 | (*(v37 + 2) << 32);
    v72 = *v68 | (*(v68 + 2) << 32);
    if (v71 <= v72)
    {
      if (v72 > v71)
      {
        goto LABEL_76;
      }

      v73 = *(v68 + 6);
      if (v73 >= *(v37 + 6))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v73 = *(v68 + 6);
    }

    *v68 = *v37;
    *(v68 + 4) = *(v37 + 4);
    v74 = v69;
    while (1)
    {
      v75 = *(a1 + v74 + 10) | (*(a1 + v74 + 14) << 32);
      if (v75 <= v72)
      {
        break;
      }

LABEL_80:
      v37 = (v37 - 10);
      *(a1 + v74 + 20) = *(a1 + v74 + 10);
      *(a1 + v74 + 28) = *(a1 + v74 + 18);
      v74 -= 10;
      if (v74 == -20)
      {
        v37 = a1;
        goto LABEL_75;
      }
    }

    if (v72 <= v75)
    {
      if (v73 >= *(a1 + v74 + 16))
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    v37 = (a1 + v74 + 20);
LABEL_75:
    *v37 = v72;
    *(v37 + 2) = WORD2(v72);
    *(v37 + 6) = v73;
    if (++v70 != 8)
    {
LABEL_76:
      v37 = v68;
      v69 += 10;
      v68 = (v68 + 10);
      if (v68 == a2)
      {
        return 1;
      }

      continue;
    }

    return (v68 + 10) == a2;
  }
}

unsigned int *sub_10021CC14(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 1);
    if (a2 - a1 >= 11)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 10 * v10);
      do
      {
        sub_10021CF50(a1, a4, v9, v12);
        v12 = (v12 - 10);
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        v17 = *a1 | (*(a1 + 2) << 32);
        v18 = *v13 | (*(v13 + 2) << 32);
        if (v17 > v18 || v18 <= v17 && *(v13 + 6) < *(a1 + 6))
        {
          v14 = *(v13 + 4);
          v15 = *v13;
          v16 = *(a1 + 4);
          *v13 = *a1;
          *(v13 + 4) = v16;
          *a1 = v15;
          *(a1 + 4) = v14;
          sub_10021CF50(a1, a4, v9, a1);
        }

        v13 = (v13 + 10);
      }

      while (v13 != a3);
    }

    if (v8 >= 11)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 1);
      do
      {
        v21 = 0;
        v44 = *a1;
        v45 = *(a1 + 4);
        v22 = a1;
        do
        {
          v24 = v22;
          v25 = v22 + 10 * v21;
          v22 = (v25 + 10);
          v26 = 2 * v21;
          v21 = (2 * v21) | 1;
          v27 = v26 + 2;
          if (v27 < v19)
          {
            v28 = *(v25 + 5) | (*(v25 + 12) << 32);
            v29 = *(v25 + 10) | (*(v25 + 7) << 32);
            if (v28 > v29 || v29 <= v28 && *(v25 + 4) < *(v25 + 26))
            {
              v22 = (v25 + 20);
              v21 = v27;
            }
          }

          v23 = *v22;
          *(v24 + 4) = *(v22 + 4);
          *v24 = v23;
        }

        while (v21 <= ((v19 - 2) >> 1));
        v6 = (v6 - 10);
        if (v22 == v6)
        {
          *(v22 + 4) = v45;
          *v22 = v44;
        }

        else
        {
          v30 = *v6;
          *(v22 + 4) = *(v6 + 4);
          *v22 = v30;
          *v6 = v44;
          *(v6 + 4) = v45;
          v31 = v22 - a1 + 10;
          if (v31 >= 11)
          {
            v32 = -2 - 0x3333333333333333 * (v31 >> 1);
            v33 = v32 >> 1;
            v34 = (a1 + 10 * (v32 >> 1));
            v35 = *v22 | (*(v22 + 2) << 32);
            v36 = *v34 | (*(v34 + 2) << 32);
            if (v35 > v36)
            {
              v37 = *(v22 + 6);
LABEL_29:
              v38 = *v34;
              *(v22 + 4) = *(v34 + 4);
              *v22 = v38;
              if (v32 >= 2)
              {
                while (1)
                {
                  v41 = v33 - 1;
                  v33 = (v33 - 1) >> 1;
                  v39 = (a1 + 10 * v33);
                  v42 = *v39 | (*(v39 + 2) << 32);
                  if (v35 <= v42 && (v42 > v35 || *(v39 + 6) >= v37))
                  {
                    break;
                  }

                  v40 = *v39;
                  *(v34 + 4) = *(v39 + 4);
                  *v34 = v40;
                  v34 = (a1 + 10 * v33);
                  if (v41 <= 1)
                  {
                    goto LABEL_31;
                  }
                }
              }

              v39 = v34;
LABEL_31:
              *v39 = v35;
              *(v39 + 2) = WORD2(v35);
              *(v39 + 6) = v37;
              continue;
            }

            if (v36 <= v35)
            {
              v37 = *(v22 + 6);
              if (*(v34 + 6) < v37)
              {
                goto LABEL_29;
              }
            }
          }
        }
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_10021CF50(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 1)))
    {
      v5 = (0x999999999999999ALL * ((a4 - result) >> 1)) | 1;
      v6 = (result + 10 * v5);
      if ((0x999999999999999ALL * ((a4 - result) >> 1) + 2) < a3)
      {
        v7 = *(v6 + 10) | (*(v6 + 7) << 32);
        v8 = *v6 | (*(v6 + 2) << 32);
        if (v7 > v8 || v8 <= v7 && *(v6 + 6) < v6[4])
        {
          v6 = (v6 + 10);
          v5 = 0x999999999999999ALL * ((a4 - result) >> 1) + 2;
        }
      }

      v9 = *a4 | (*(a4 + 2) << 32);
      v10 = *v6 | (*(v6 + 2) << 32);
      if (v9 <= v10)
      {
        if (v10 <= v9)
        {
          v11 = *(a4 + 6);
          if (*(v6 + 6) < v11)
          {
            return result;
          }
        }

        else
        {
          v11 = *(a4 + 6);
        }

        v12 = *v6;
        *(a4 + 4) = *(v6 + 4);
        *a4 = v12;
        if (v4 >= v5)
        {
          while (1)
          {
            v15 = 2 * v5;
            v5 = (2 * v5) | 1;
            v13 = (result + 10 * v5);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = *(v13 + 10) | (*(v13 + 7) << 32);
              v18 = *v13 | (*(v13 + 2) << 32);
              if (v17 > v18 || v18 <= v17 && *(v13 + 6) < v13[4])
              {
                v13 = (v13 + 10);
                v5 = v16;
              }
            }

            v19 = *v13 | (*(v13 + 2) << 32);
            if (v9 > v19 || v19 <= v9 && *(v13 + 6) < v11)
            {
              break;
            }

            v14 = *v13;
            *(v6 + 4) = *(v13 + 4);
            *v6 = v14;
            v6 = v13;
            if (v4 < v5)
            {
              goto LABEL_14;
            }
          }
        }

        v13 = v6;
LABEL_14:
        *v13 = v9;
        *(v13 + 2) = WORD2(v9);
        *(v13 + 6) = v11;
      }
    }
  }

  return result;
}