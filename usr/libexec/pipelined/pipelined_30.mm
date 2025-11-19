void sub_1001D70E4(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = v2[9];
    __cxa_end_catch();
    v2[17] = v3;
    v2[16] = 1;
    atomic_store(1u, v2 + 20);
    if ((v3 & 1) == 0)
    {
      JUMPOUT(0x1001D7024);
    }

    JUMPOUT(0x1001D6C3CLL);
  }

  JUMPOUT(0x1001D70DCLL);
}

void sub_1001D7118(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_100339754();
  v11 = atomic_load(v10 + 20);
  if ((v11 & 1) != 0 || *(v10 + 16) == 1)
  {
    v12 = *(v10 + 17);
  }

  else
  {
    v13 = v10;
    v12 = sub_100008F80(v10, v10 + 9);
    *(v13 + 17) = v12 & 1;
    *(v13 + 16) = 1;
    atomic_store(1u, v13 + 20);
  }

  v15 = *a2;
  v14 = a2[1];
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v16 = v14 - v15;
  if (v16)
  {
    if (!((0x4EC4EC4EC4EC4EC5 * (v16 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001CE970(v66, &v73, a2, a4);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  (*(**a5 + 24))(*a5, a3, v66);
  if (*(a1 + 1536) == 1)
  {
    v17 = *(a1 + 1568);
    if (v17)
    {
      *(a1 + 1576) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 1544);
    if (v18)
    {
      *(a1 + 1552) = v18;
      operator delete(v18);
    }

    *(a1 + 1536) = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v19 = v66[0];
  if (v66[0])
  {
    v20 = v66[1];
    v21 = v66[0];
    if (v66[1] != v66[0])
    {
      v22 = v66[1] - 168;
      do
      {
        v25 = *(v20 - 44);
        if (v25 == v25 >> 31)
        {
          if (*(v20 - 128) == 1)
          {
            *(v20 - 128) = 0;
          }
        }

        else
        {
          v23 = *(v20 - 21);
          if (v25 < 0)
          {
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }

          else
          {
            v24 = *(v20 - 21);
            (*v23)(v20 - 168);
          }
        }

        v20 -= 208;
        v22 -= 208;
      }

      while (v20 != v19);
      v21 = v66[0];
    }

    v66[1] = v19;
    operator delete(v21);
  }

  if ((sub_1001F9648(*(a1 + 176)) & 1) == 0)
  {
    v26 = *(a1 + 176);
    sub_1001D3EA4(a1, a4, v66);
    v73 = 0;
    v74 = 0;
    sub_1001F64EC(v26, a4, v66, &v73);
    v27 = v74;
    if (v74 && !atomic_fetch_add(v74 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v66[1];
    if (v66[1] && !atomic_fetch_add(v66[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  sub_1001CF344(a2, &v71);
  if (v72[0] != v72[1])
  {
    sub_10004DAA4(v66);
    *(__p + *(v67 - 3)) |= 0x800u;
    sub_1001E15E8(v72);
    if (v75 >= 0)
    {
      v29 = &v73;
    }

    else
    {
      v29 = v73;
    }

    if (v75 >= 0)
    {
      v30 = HIBYTE(v75);
    }

    else
    {
      v30 = v74;
    }

    sub_10003C2E4(&v67, v29, v30);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(v73);
    }

    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v31 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      std::stringbuf::str();
      v32 = v75 >= 0 ? &v73 : v73;
      *buf = 134218242;
      *&buf[4] = a4;
      *&buf[12] = 2080;
      *&buf[14] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "WARNING: Bad RSSI values @ t=%lld: %s", buf, 0x16u);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v73);
      }
    }

    v67 = v33;
    if (v70 < 0)
    {
      operator delete(v69);
    }

    std::locale::~locale(&__p[1]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  sub_1001F9348(*(a1 + 176), v61);
  sub_10018291C(&v60, v61);
  v58[0] = 0;
  v58[1] = 0;
  v59 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  prime = vcvtps_u32_f32(v64 / v65);
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v35 = v62;
  if (prime > *&v62)
  {
    goto LABEL_63;
  }

  if (prime < *&v62)
  {
    v36 = vcvtps_u32_f32(v64 / v65);
    if (*&v62 < 3uLL || (v37 = vcnt_s8(v62), v37.i16[0] = vaddlv_u8(v37), v37.u32[0] > 1uLL))
    {
      v36 = std::__next_prime(v36);
    }

    else
    {
      v38 = 1 << -__clz(v36 - 1);
      if (v36 >= 2)
      {
        v36 = v38;
      }
    }

    if (prime <= v36)
    {
      prime = v36;
    }

    if (prime < *&v35)
    {
LABEL_63:
      sub_10000FE58(v61, prime);
    }
  }

  v39 = v63;
  if (v63)
  {
    v40 = v74;
    do
    {
      while (v40 >= v75)
      {
        v40 = sub_100182F0C(&v73, v39 + 1);
        v74 = v40;
        v39 = *v39;
        if (!v39)
        {
          goto LABEL_81;
        }
      }

      *v40 = *(v39 + 2);
      v41 = *(v39 + 3);
      v40[1] = v41;
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      v40 += 2;
      v74 = v40;
      v39 = *v39;
    }

    while (v39);
  }

LABEL_81:
  (*(**(a1 + 32) + 32))(v66);
  sub_100212210(v66, &v73, buf);
  v42 = v58[0];
  if (v58[0])
  {
    v43 = v58[1];
    v44 = v58[0];
    if (v58[1] != v58[0])
    {
      v45 = v58[1] - 168;
      do
      {
        v48 = *(v43 - 44);
        if (v48 == v48 >> 31)
        {
          if (*(v43 - 128) == 1)
          {
            *(v43 - 128) = 0;
          }
        }

        else
        {
          v46 = *(v43 - 21);
          if (v48 < 0)
          {
            if (v46)
            {
              (*(*v46 + 8))(v46);
            }
          }

          else
          {
            v47 = *(v43 - 21);
            (*v46)(v43 - 168);
          }
        }

        v43 -= 208;
        v45 -= 208;
      }

      while (v43 != v42);
      v44 = v58[0];
    }

    v58[1] = v42;
    operator delete(v44);
  }

  *v58 = *buf;
  v59 = *&buf[16];
  memset(buf, 0, sizeof(buf));
  v49 = v67;
  if (v67)
  {
    do
    {
      v50 = *v49;
      sub_1001DF638(v49 + 2);
      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v51 = v66[0];
  v66[0] = 0;
  if (v51)
  {
    operator delete(v51);
  }

  v52 = v73;
  if (v73)
  {
    v53 = v74;
    v54 = v73;
    if (v74 != v73)
    {
      do
      {
        v55 = *(v53 - 1);
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v53 -= 2;
      }

      while (v53 != v52);
      v54 = v73;
    }

    v74 = v52;
    operator delete(v54);
  }

  v56 = *(a1 + 288);
  v57 = sub_1001F3D80(*(a1 + 176));
  (*(*v57 + 64))(v57);
  if (v12)
  {
    sub_100213A38(v56, &v60);
  }

  sub_1002CAA50((a1 + 168), a4, v58);
  sub_1002CAC20((a1 + 168));
  sub_100213D38(v56);
}

void sub_1001D819C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 9);
    __cxa_end_catch();
    JUMPOUT(0x1001D719CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001D8438(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == v1 >> 31)
  {
    if (*(result + 80) == 1)
    {
      *(result + 80) = 0;
    }
  }

  else
  {
    v2 = *(result + 40);
    if (v1 < 0)
    {
      if (v2)
      {
        v5 = result;
        (*(*v2 + 8))(*(result + 40));
        return v5;
      }
    }

    else
    {
      v3 = *(result + 40);
      v4 = result;
      (*v2)(result + 40);
      return v4;
    }
  }

  return result;
}

void sub_1001D84FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a3 || *(a3 + 48) != 1 || !*(a3 + 52))
  {
    v8 = 0.0;
    if (*(a1 + 2176) == 1)
    {
      v9 = sub_100339AC4();
      v10 = atomic_load(v9 + 26);
      if ((v10 & 1) == 0 && (v9[2] & 1) == 0)
      {
        v11 = v9;
        v12 = sub_100005C94(v9, v9 + 3);
        v9 = v11;
        *(v11 + 5) = v12;
        *(v11 + 16) = 1;
        atomic_store(1u, v11 + 26);
      }

      v13 = *(v9 + 5);
      v14 = *(a1 + 1992);
      if (qword_10045B050 != -1)
      {
        sub_1003852A8();
      }

      v8 = (a2 - v14 + 1000000000 * v13) / 1000000000.0;
      v15 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Got a scan after %f seconds", buf, 0xCu);
      }

      *(a1 + 2176) = 0;
    }

    v16 = sub_100339AC4();
    v17 = atomic_load(v16 + 26);
    if ((v17 & 1) == 0 && (v16[2] & 1) == 0)
    {
      v18 = v16;
      v19 = sub_100005C94(v16, v16 + 3);
      v16 = v18;
      *(v18 + 5) = v19;
      *(v18 + 16) = 1;
      atomic_store(1u, v18 + 26);
    }

    v20 = a2 + 1000000000 * *(v16 + 5);
    if ((*(a1 + 1984) & 1) == 0)
    {
      *(a1 + 1984) = 1;
    }

    *(a1 + 1992) = v20;
    if (*a4 != a4[1])
    {
      if (*(a1 + 2177) == 1)
      {
        v21 = sub_100339AC4();
        v22 = atomic_load(v21 + 26);
        if ((v22 & 1) == 0 && (v21[2] & 1) == 0)
        {
          v23 = v21;
          v24 = sub_100005C94(v21, v21 + 3);
          v21 = v23;
          *(v23 + 5) = v24;
          *(v23 + 16) = 1;
          atomic_store(1u, v23 + 26);
        }

        v25 = *(v21 + 5);
        v26 = *(a1 + 2008);
        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v27 = (a2 - v26 + 1000000000 * v25) / 1000000000.0;
        v28 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Got a non-empty scan after %f", buf, 0xCu);
        }

        *(a1 + 2177) = 0;
        if (v27 - v8 >= 20.0)
        {
          std::to_string(&v71, (v27 - v8));
          v29 = std::string::insert(&v71, 0, "Non-empty scan after ");
          v30 = *&v29->__r_.__value_.__l.__data_;
          v79.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v79.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          v31 = std::string::append(&v79, "s");
          v32 = *&v31->__r_.__value_.__l.__data_;
          v84 = v31->__r_.__value_.__r.__words[2];
          *buf = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          v33 = sub_1003397E8();
          v34 = atomic_load(v33 + 20);
          if ((v34 & 1) != 0 || *(v33 + 16) == 1)
          {
            v35 = *(v33 + 17);
          }

          else
          {
            v62 = v33;
            v35 = sub_100008F80(v33, v33 + 9);
            *(v62 + 17) = v35 & 1;
            *(v62 + 16) = 1;
            atomic_store(1u, v62 + 20);
          }

          if (v84 >= 0)
          {
            v63 = buf;
          }

          else
          {
            v63 = *buf;
          }

          sub_1001C9574(v35 & 1, 3u, "Got a non-empty scan", v63, 5000000000);
          if (SHIBYTE(v84) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v64 = sub_100339AC4();
      v65 = atomic_load(v64 + 26);
      if ((v65 & 1) == 0 && (v64[2] & 1) == 0)
      {
        v66 = v64;
        v67 = sub_100005C94(v64, v64 + 3);
        v64 = v66;
        *(v66 + 5) = v67;
        *(v66 + 16) = 1;
        atomic_store(1u, v66 + 26);
      }

      v68 = a2 + 1000000000 * *(v64 + 5);
      if ((*(a1 + 2000) & 1) == 0)
      {
        *(a1 + 2000) = 1;
      }

      *(a1 + 2008) = v68;
      sub_1002069A4(a4, buf);
      v69 = *(a1 + 128);
      v70[0] = *(a1 + 120);
      v70[1] = v69;
      if (v69)
      {
        atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001D7118(a1, buf, a3, a2, v70);
    }

    sub_100203374(*(a1 + 120), a2);
    memset(buf, 0, sizeof(buf));
    v84 = 0;
    sub_1001CE7DC(&v79, buf, a4, a2);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v73 = 0;
    v74 = 0;
    v72 = 0;
    sub_1001CFBC8(&v72, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_, 0x4EC4EC4EC4EC4EC5 * ((v79.__r_.__value_.__l.__size_ - v79.__r_.__value_.__r.__words[0]) >> 4));
    v75 = 0;
    v76 = 0;
    v77 = 0;
    if (v81 != v80)
    {
      if (((v81 - v80) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    v78 = v82;
    sub_100225DBC(buf, &v72, 0, 0.0);
    v36 = *(a1 + 232);
    if (v36 >= *(a1 + 240))
    {
      sub_1001E1938(a1 + 224, buf);
      v39 = v38;
      v40 = __p;
      *(a1 + 232) = v39;
      if (v40)
      {
        *(&__p + 1) = v40;
        operator delete(v40);
      }
    }

    else
    {
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *v36 = 0;
      *(v36 + 8) = 0;
      *v36 = *buf;
      *(v36 + 16) = v84;
      memset(buf, 0, sizeof(buf));
      *(v36 + 32) = 0;
      *(v36 + 40) = 0;
      *(v36 + 24) = __p;
      *(v36 + 40) = v86;
      v84 = 0;
      __p = 0uLL;
      v86 = 0;
      *(v36 + 48) = v87;
      v37 = v88;
      *(v36 + 64) = v89;
      *(v36 + 56) = v37;
      *(a1 + 232) = v36 + 72;
    }

    v41 = *buf;
    if (*buf)
    {
      v42 = *&buf[8];
      v43 = *buf;
      if (*&buf[8] != *buf)
      {
        v44 = *&buf[8] - 168;
        do
        {
          v47 = *(v42 - 176);
          if (v47 == v47 >> 31)
          {
            if (*(v42 - 128) == 1)
            {
              *(v42 - 128) = 0;
            }
          }

          else
          {
            v45 = *(v42 - 168);
            if (v47 < 0)
            {
              if (v45)
              {
                (*(*v45 + 8))(v45);
              }
            }

            else
            {
              v46 = *(v42 - 168);
              (*v45)(v42 - 168);
            }
          }

          v42 -= 208;
          v44 -= 208;
        }

        while (v42 != v41);
        v43 = *buf;
      }

      *&buf[8] = v41;
      operator delete(v43);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
      {
        v51 = v73 - 168;
        do
        {
          v54 = *(v49 - 44);
          if (v54 == v54 >> 31)
          {
            if (*(v49 - 128) == 1)
            {
              *(v49 - 128) = 0;
            }
          }

          else
          {
            v52 = *(v49 - 21);
            if (v54 < 0)
            {
              if (v52)
              {
                (*(*v52 + 8))(v52);
              }
            }

            else
            {
              v53 = *(v49 - 21);
              (*v52)(v49 - 168);
            }
          }

          v49 -= 208;
          v51 -= 208;
        }

        while (v49 != v48);
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    v55 = v79.__r_.__value_.__r.__words[0];
    if (v79.__r_.__value_.__r.__words[0])
    {
      size = v79.__r_.__value_.__l.__size_;
      v57 = v79.__r_.__value_.__r.__words[0];
      if (v79.__r_.__value_.__l.__size_ != v79.__r_.__value_.__r.__words[0])
      {
        v58 = v79.__r_.__value_.__l.__size_ - 168;
        do
        {
          v61 = *(size - 176);
          if (v61 == v61 >> 31)
          {
            if (*(size - 128) == 1)
            {
              *(size - 128) = 0;
            }
          }

          else
          {
            v59 = *(size - 168);
            if (v61 < 0)
            {
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            else
            {
              v60 = *(size - 168);
              (*v59)(size - 168);
            }
          }

          size -= 208;
          v58 -= 208;
        }

        while (size != v55);
        v57 = v79.__r_.__value_.__r.__words[0];
      }

      v79.__r_.__value_.__l.__size_ = v55;
      operator delete(v57);
    }
  }
}

void sub_1001D8E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v41 = *(v40 + 9);
    __cxa_end_catch();
    JUMPOUT(0x1001D8BE8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D8FE0(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001D9134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F9648(*(a1 + 176));
  if (v4)
  {
    *(a1 + 304) = 1;
    return v4 ^ 1u;
  }

  v6 = *(a1 + 176);
  sub_1001D3EA4(a1, a2, &v11);
  v9 = 0;
  v10 = 0;
  sub_1001F64EC(v6, a2, &v11, &v9);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 ^ 1u;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return 1;
}

void sub_1001D925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D92CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a1 + 296);
  v4 = *(a1 + 176);
  v6[0] = off_1004425F8;
  v6[1] = a1;
  v6[2] = v2;
  v7 = v6;
  *(a1 + 304) |= sub_10026E874(a1 + 328, a2, v3, v4, (a1 + 304), 0, v6, a1 + 2184);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_1001D93D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D3E18(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001D945C(uint64_t a1, uint64_t a2)
{
  result = sub_100251258(*(a1 + 248));
  if (result && *(a1 + 520) == 1)
  {
    sub_1002400FC(*(a1 + 152), a2, *(a1 + 524));
    v5 = *(a1 + 1504);
    v6 = sub_100240B3C(*(a1 + 152));

    return sub_100263888(v5, v6);
  }

  return result;
}

uint64_t sub_1001D94DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *(a1 + 2464) = *a3;
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v7 = *a3;
    v11[0] = 67240192;
    v11[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Update cached ARSessionState to %{public}d", v11, 8u);
  }

  if (*(a1 + 1536) == 1)
  {
    v8 = *(a1 + 1568);
    if (v8)
    {
      *(a1 + 1576) = v8;
      operator delete(v8);
    }

    v9 = *(a1 + 1544);
    if (v9)
    {
      *(a1 + 1552) = v9;
      operator delete(v9);
    }

    *(a1 + 1536) = 0;
  }

  return (*(**(a1 + 2528) + 200))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
    v6 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      return (*(**(a1 + 2528) + 208))(*(a1 + 2528), a2, a3);
    }

    goto LABEL_3;
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received VIO Estimation", v8, 2u);
  }

  return (*(**(a1 + 2528) + 208))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D96EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
    v6 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      return (*(**(a1 + 2528) + 216))(*(a1 + 2528), a2, a3);
    }

    goto LABEL_3;
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received VL localization result", v8, 2u);
  }

  return (*(**(a1 + 2528) + 216))(*(a1 + 2528), a2, a3);
}

uint64_t sub_1001D97C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = sub_10002C6B8(a3);
  if (result)
  {
    sub_10002C6C0(a3, v12);
    sub_1001D5F4C(a1, v12);
    sub_10013CFA4(v12);
    sub_10002C83C(a3, v12);
    if (*(a1 + 688) == 1)
    {
      if (v13 <= *(a1 + 704))
      {
        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v11 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Ignoring VL because older than last precise location", buf, 2u);
        }

        return sub_10012E8E4(v12);
      }

      sub_1001300D4(a1 + 696, v12);
    }

    else
    {
      sub_1001300D0(a1 + 696, v12);
      *(a1 + 688) = 1;
    }

    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v7 = (a1 + 760);
      if (*(a1 + 783) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 792);
      *buf = 136380931;
      v15 = v7;
      v16 = 2050;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fLastGpsLikePreciseLocation vision location type %{private}s with accuracy %{public}f", buf, 0x16u);
      if (*(a1 + 1536) != 1)
      {
LABEL_10:
        if (*(a1 + 2505) != 1)
        {
          return sub_10012E8E4(v12);
        }

        goto LABEL_20;
      }
    }

    else if (*(a1 + 1536) != 1)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 1568);
    if (v9)
    {
      *(a1 + 1576) = v9;
      operator delete(v9);
    }

    v10 = *(a1 + 1544);
    if (v10)
    {
      *(a1 + 1552) = v10;
      operator delete(v10);
    }

    *(a1 + 1536) = 0;
    if (*(a1 + 2505) != 1)
    {
      return sub_10012E8E4(v12);
    }

LABEL_20:
    sub_1001F823C(*(a1 + 176), v12);
    *(a1 + 304) = 1;
    return sub_10012E8E4(v12);
  }

  return result;
}

void sub_1001D99F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CFA4(va);
  _Unwind_Resume(a1);
}

void sub_1001D9A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012E8E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 48) == 4)
  {
    sub_100263384(*(a1 + 1504), a3);
  }

  sub_1002AEED8(a3, v6);
  sub_1001D6844(a1, v6);
  return sub_10012E8E4(v6);
}

void sub_1001D9A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012E8E4(va);
  _Unwind_Resume(a1);
}

void sub_1001D9AB0(uint64_t a1)
{
  if ((*(a1 + 1536) & 1) == 0)
  {
    v2 = *(a1 + 120);
    v3 = *(a1 + 136);
    *(a1 + 2232);
    (*(**(a1 + 32) + 16))(__p);
    v4 = (a1 + 1544);
    if (*(a1 + 1536) == 1)
    {
      v5 = *v4;
      if (*v4)
      {
        *(a1 + 1552) = v5;
        operator delete(v5);
      }

      *v4 = *__p;
      *(a1 + 1560) = v9;
      __p[1] = 0;
      v9 = 0;
      __p[0] = 0;
      v6 = *(a1 + 1568);
      if (v6)
      {
        *(a1 + 1576) = v6;
        operator delete(v6);
      }

      *(a1 + 1568) = v10;
      *(a1 + 1584) = v11;
      v11 = 0;
      v10 = 0uLL;
      v7 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v4 = *__p;
      *(a1 + 1560) = v9;
      __p[0] = 0;
      __p[1] = 0;
      *(a1 + 1568) = v10;
      *(a1 + 1584) = v11;
      v9 = 0;
      v10 = 0uLL;
      v11 = 0;
      *(a1 + 1536) = 1;
      v7 = __p[0];
      if (!__p[0])
      {
LABEL_11:
        sub_1001D9BFC(a1, a1 + 1544);
        return;
      }
    }

    __p[1] = v7;
    operator delete(v7);
    goto LABEL_11;
  }
}

void sub_1001D9BFC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1856));
  v4 = nullsub_35(a2);
  if (*v4 != v4[1])
  {
    v5 = sub_100232FAC(a2);
    sub_1001F97E8(*(a1 + 176), v5);
    sub_100225364(*(a1 + 296), v5);
  }

  v6 = *(a1 + 1920);
  for (i = *(a1 + 1928); v6 != i; ++v6)
  {
    v8 = *v6;
    v9 = nullsub_35(a2);
    v10 = *v9;
    v11 = v9[1];
    v12 = sub_100232FAC(a2);
    (*(*v8 + 16))(v8, v10 != v11, v12);
  }

  std::mutex::unlock((a1 + 1856));
}

void sub_1001D9D1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1860) == 1)
  {
    if (*(a1 + 1352) == 1)
    {
      v3 = (a1 + 1352);
      if (*(a1 + 1200) == 1)
      {
        if (*(a1 + 1368) <= *(a1 + 1216))
        {
          v3 = (a1 + 1200);
        }

        v4 = (a1 + 896);
        v5 = (a1 + 1048);
        if (*v3 == 1)
        {
LABEL_14:
          if (*v5 == 1)
          {
            if (*(v3 + 2) > *(a1 + 1064))
            {
              v5 = v3;
            }

            if (*v5 != 1)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v5 = v3;
            if (*v3 != 1)
            {
              goto LABEL_31;
            }
          }

LABEL_21:
          if (*v4 == 1)
          {
            v6 = *(v5 + 2);
            v7 = *(a1 + 912);
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v4 = (a1 + 896);
        v5 = (a1 + 1048);
        if (*v3 == 1)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = (a1 + 1200);
      v4 = (a1 + 896);
      v5 = (a1 + 1048);
      if (*(a1 + 1200) == 1)
      {
        goto LABEL_14;
      }
    }

    if (*v5 != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (*(a1 + 1352) == 1)
  {
    v5 = (a1 + 1352);
    if (*(a1 + 1200) == 1 && *(a1 + 1368) <= *(a1 + 1216))
    {
      v5 = (a1 + 1200);
    }
  }

  else
  {
    v5 = (a1 + 1200);
  }

  v4 = (a1 + 1048);
  if (*v5 == 1)
  {
    if (*v4 == 1)
    {
      v6 = *(v5 + 2);
      v7 = *(a1 + 1064);
LABEL_27:
      if (v6 > v7)
      {
        v4 = v5;
      }

      goto LABEL_31;
    }

LABEL_30:
    v4 = v5;
  }

LABEL_31:
  if ((*v4 & 1) == 0)
  {
    sub_1003856A4();
  }

  v8 = sub_10010C758();
  v9 = v4[2];
  if (*(a1 + 1352) != 1)
  {
    v10 = a1 + 1200;
    v11 = v8 / 1000000000.0;
    v12 = (a1 + 1048);
    v13 = v9 / 1000000000.0;
    if (*(a1 + 1200) == 1)
    {
      goto LABEL_39;
    }

LABEL_45:
    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v10 = a1 + 1352;
  if (*(a1 + 1200) != 1)
  {
    v11 = v8 / 1000000000.0;
    v12 = (a1 + 1048);
    v13 = v9 / 1000000000.0;
    if (*v10 == 1)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  if (*(a1 + 1368) <= *(a1 + 1216))
  {
    v10 = a1 + 1200;
  }

  v11 = v8 / 1000000000.0;
  v12 = (a1 + 1048);
  v13 = v9 / 1000000000.0;
  if (*v10 != 1)
  {
    goto LABEL_45;
  }

LABEL_39:
  if (*v12 == 1)
  {
    if (*(v10 + 16) > *(a1 + 1064))
    {
      v12 = v10;
    }

    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v12 = v10;
    v14 = v11 - v13;
    v15 = *v4;
    v16 = *v12;
    if (v15 != 1)
    {
      goto LABEL_51;
    }
  }

LABEL_46:
  if (v16)
  {
    if (sub_1001E1ECC((v4 + 1), (v12 + 8)))
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_51:
  if (v15 == v16)
  {
LABEL_52:
    if (*(sub_100251D2C(*(a1 + 248)) + 16) >= v14)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_48:
  if (*(sub_100251D2C(*(a1 + 248)) + 24) >= v14)
  {
    return;
  }

LABEL_53:
  if (*(a1 + 1536) == 1)
  {
    v17 = *(a1 + 1568);
    if (v17)
    {
      *(a1 + 1576) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 1544);
    if (v18)
    {
      *(a1 + 1552) = v18;
      operator delete(v18);
    }

    *(a1 + 1536) = 0;
  }
}

void sub_1001DA02C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  sub_1001D9AB0(a1);
  v3 = sub_1003399A0();
  v4 = atomic_load(v3 + 20);
  if ((v4 & 1) != 0 || *(v3 + 16) == 1)
  {
    v5 = *(v3 + 17);
  }

  else
  {
    v6 = v3;
    *(v3 + 17) = sub_100008F80(v3, v3 + 9) & 1;
    *(v6 + 16) = 1;
    atomic_store(1u, v6 + 20);
  }

  sub_1001F8B8C(*(a1 + 176), a1 + 1544);
}

void sub_1001DD19C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::runtime_error a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a52);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  __cxa_end_catch();
  JUMPOUT(0x1001DD2B4);
}

void sub_1001DD28C()
{
  if (v0)
  {
    sub_100385864();
  }

  JUMPOUT(0x1001DD2A4);
}

void sub_1001DD2F0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 6);
      if (v5)
      {
        *(v3 - 5) = v5;
        operator delete(v5);
      }

      v6 = v3 - 9;
      v7 = *(v3 - 9);
      if (v7)
      {
        v8 = *(v3 - 8);
        v4 = *(v3 - 9);
        if (v8 != v7)
        {
          v9 = v8 - 168;
          do
          {
            v12 = *(v8 - 44);
            if (v12 == v12 >> 31)
            {
              if (*(v8 - 128) == 1)
              {
                *(v8 - 128) = 0;
              }
            }

            else
            {
              v10 = *(v8 - 21);
              if (v12 < 0)
              {
                if (v10)
                {
                  (*(*v10 + 8))(v10);
                }
              }

              else
              {
                v11 = *(v8 - 21);
                (*v10)(v8 - 168);
              }
            }

            v8 -= 208;
            v9 -= 208;
          }

          while (v8 != v7);
          v4 = *v6;
        }

        *(v3 - 8) = v7;
        operator delete(v4);
      }

      v3 -= 9;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1001DD414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BF664(a1);
  v6 = sub_100118234(a2);
  std::string::operator=((a1 + 104), v6);
  v11[0] = (*(*a3 + 24))(a3);
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  sub_10031CC94(v11, v12);
  sub_10012A358(a1 + 8, v12);
  return nullsub_75(v12);
}

void sub_1001DD4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_75(va);
  sub_1001234CC(v5);
  _Unwind_Resume(a1);
}

void sub_1001DD4FC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1001F41FC(a4);
  v10 = a2[1];
  v69 = *a2;
  v70 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002347FC(v9, &v69, &v71);
  v11 = v70;
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_10023386C((a1 + 528), &v71);
  if (*(a1 + 664) != 1 || a3 - *(a1 + 672) >= 2000000001)
  {
    sub_100233FD4(a1 + 528, &v71);
    if ((*(a1 + 664) & 1) == 0)
    {
      *(a1 + 664) = 1;
    }

    *(a1 + 672) = a3;
  }

  sub_1002347F4((a1 + 528), a5);
  v61 = *a2;
  v12 = nullsub_35(a4);
  v13 = sub_100118234(v12);
  v14 = v13[1] - *v13;
  if (v14)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * (v14 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v62 = a1;
  v63 = a5;
  for (i = *(sub_1001F41FC(a4) + 16); i; i = *i)
  {
    sub_100176F74(v62 + 2032, i[2], v61, &buf);
    v16 = i[6];
    if (v16 != i[7])
    {
      v17 = *(v16 + 16) - *(a5 + 16) + v78;
      v18 = (*(v16 + 24) - *(a5 + 24) + v79) * (*(v16 + 24) - *(a5 + 24) + v79) + v17 * v17;
      operator new();
    }

    nullsub_75(&buf);
  }

  v19 = llround(0 * 0.655);
  if (v19 > -1)
  {
    v19 = -1;
  }

  v20 = (8 * v19);
  if (v20)
  {
    sub_1001DFAAC(0, (8 * v19), 0);
  }

  sub_1001235BC(a5, sqrt(*v20));
  v21 = (*(**a2 + 64))();
  v22 = sub_100118234(v21);
  std::string::operator=((a5 + 104), v22);
  v23 = (*(**a2 + 72))() != 0;
  sub_100123670(a5, 4 * v23);
  v24 = (*(**a2 + 56))();
  v25 = v24;
  if (*(v62 + 688) == 1 && !*(a5 + 524) && v24)
  {
    sub_10011B8B8(v68, v24);
    sub_1000B9540(v68);
  }

  v26 = sub_1001F421C(a4);
  sub_100123708(a5, v26);
  v27 = *a2;
  v28 = *(v62 + 248);
  if ((*(**a2 + 72))(*a2) != 1)
  {
    if ((v29 = (*(*v27 + 16))(v27), v30 = v29, v31 = *(a5 + 524), v31 != 2) && (v31 || *(a5 + 608) != 2) || ((*(*v29 + 48))(v29) & 1) == 0)
    {
      v32 = (*(*v30 + 16))(v30, *(a5 + 16), *(a5 + 24));
      if ((v32 & 1) == 0)
      {
        (*(*v27 + 80))(&buf, v27, v63 + 8);
        sub_100123684(v63, &buf);
        if ((v32 & 0x100) != 0)
        {
          v33 = sub_100251B00(v28);
          sub_1002D15E0(v30, v63 + 8, &v66, v33);
          sub_100123508(v63, &v66);
          nullsub_75(&v66);
        }

        nullsub_76(&buf);
      }
    }
  }

  v34 = sub_1001F4224(a4);
  *(v63 + 168) = *(v34 + 16);
  sub_100123558(v63, v76);
  v35 = *(v63 + 184);
  v36 = sub_1001F3628(v34);
  *(v63 + 160) = v35 * v36 * v76;
  if (v25)
  {
    sub_10012D378(v65, v63 + 8);
    v37 = sub_10033CDF4(v25, v65, 0, 1, 1, *(v63 + 280));
    nullsub_75(v65);
    sub_1001236B8(v63, v37);
    if (sub_1001F421C(a4) == 2)
    {
      sub_10012D378(v64, v63 + 8);
      v38 = sub_10033D634(v25, v64, 0, 1, *(v63 + 152));
      nullsub_75(v64);
      sub_1001236F4(v63, v38);
    }
  }

  v39 = *(v62 + 248);
  if (sub_1001F421C(a4) != 2)
  {
    v44 = sub_1001F4268(a4, *(v63 + 160));
    *(v63 + 296) = !sub_1001F43B0(v44);
    if (!v25)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v40 = *(v63 + 152);
  if (v40 > sub_1002514B8(v39))
  {
    goto LABEL_53;
  }

  v41 = *(v63 + 752);
  if ((v41 & 0x2000000000000) != 0)
  {
    v42 = *(v63 + 648);
    v43 = sub_100251568(v39);
LABEL_47:
    if (v42 > v43)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if ((v41 & 0x4000000000000) != 0)
  {
    v42 = *(v63 + 656);
    v43 = sub_10025153C(v39);
    goto LABEL_47;
  }

LABEL_48:
  v45 = *(v63 + 752);
  if ((v45 & 0x80000000000) != 0)
  {
    v46 = *(v63 + 600);
    v47 = sub_100251510(v39);
  }

  else
  {
    if ((v45 & 0x20000000000) == 0)
    {
      goto LABEL_53;
    }

    v46 = *(v63 + 560);
    v47 = sub_1002514E4(v39);
  }

  if (v46 > v47)
  {
LABEL_53:
    *(v63 + 296) = 1;
    if (!v25)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  *(v63 + 296) = 0;
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_54:
  if ((*(v25 + 1913) & 0x40) != 0 && sub_100232F68(v25))
  {
    sub_10012353C(v63, *(v25 + 1616));
    *(v62 + 524) = *(v25 + 1616);
    *(v62 + 520) = 1;
  }

LABEL_57:
  v48 = sub_100240B3C(*(v62 + 152));
  sub_1001236CC(v63, v48);
  sub_100123518(v63, NAN);
  sub_100122404(v63, NAN);
  sub_1001235A8(v63, 0.0);
  (*(**a2 + 48))(&v66);
  if (sub_100225454(*(v62 + 296)))
  {
    if (v66)
    {
      v49 = sub_100225464(*(v62 + 296), v66);
      sub_100122404(v63, v49);
      if (*(v62 + 368) != *(v62 + 376))
      {
        v50 = nullsub_35(v62 + 328);
        v51 = sub_100218004(v50, v66);
        sub_100122404(v63, v51);
        v52 = sub_10026EEB4(v62 + 328);
        sub_1001235A8(v63, v52);
        sub_10026EEA8(v62 + 328);
      }
    }
  }

  sub_100123594(v63, NAN);
  v53.n128_u64[0] = *(v63 + 16);
  v53.n128_u64[0] = *(v63 + 24);
  v54 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54, v53.n128_f64[0]);
    std::__shared_weak_count::__release_weak(v54);
  }

  v55 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55, v53);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 2);
        if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59, v53);
          std::__shared_weak_count::__release_weak(v59);
        }

        v57 -= 80;
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }
}

void sub_1001DE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  nullsub_75(&a27);
  sub_1001234CC(&STACK[0xC30]);
  sub_1000B9C50(&STACK[0xB48]);
  sub_1001234CC(a18);
  sub_1001DFF94(&STACK[0xB98]);
  _Unwind_Resume(a1);
}

void sub_1001DE82C(_Unwind_Exception *a1)
{
  sub_1001234CC(v1);
  sub_1001DFF94(&STACK[0xB98]);
  _Unwind_Resume(a1);
}

void *sub_1001DE8B0(void *a1)
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
        v3 -= 37;
        sub_1001E3B48(a1, v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001DE918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = off_10043D898;
  v6 = a3 + 8;
  *(a3 + 8) = off_10043DB08;
  *(a3 + 16) = 0u;
  *(a3 + 32) &= 0xFCu;
  v7 = a3 + 40;
  *(a3 + 40) = off_10043DB28;
  *(a3 + 48) = 0u;
  *(a3 + 64) &= 0xFCu;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 136) = 0u;
  v8 = a3 + 136;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(a3 + 300) = 0;
  *(a3 + 304) = off_10043D858;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0u;
  *(a3 + 392) = 0u;
  *(a3 + 408) = 0u;
  *(a3 + 424) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 456) &= 0xC0u;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0u;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0;
  *(a3 + 528) = off_10043DB28;
  *(a3 + 536) = 0u;
  *(a3 + 552) &= 0xFCu;
  *(a3 + 560) = 0;
  *(a3 + 568) = off_10043D878;
  *(a3 + 576) = 0u;
  *(a3 + 592) &= 0xF8u;
  *(a3 + 600) = 0;
  *(a3 + 608) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 632) = 0u;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0;
  *(a3 + 700) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = *(a3 + 752) & 0xF000000000000000 | 0x10000000;
  *(a3 + 296) = 4;
  sub_10012A358(v7, a1 + 48);
  *(a3 + 752) |= 2uLL;
  v9 = *(a1 + 112);
  *(a3 + 152) = v9;
  sub_1001235BC(a3, v9);
  sub_10012356C(a3, *(a1 + 24));
  *(a3 + 296) = 0;
  sub_100123670(a3, 1);
  result = sub_100123654(a3, 8.0);
  if (*a2 == 1)
  {
    sub_10012DA9C(v16, a1 + 48);
    sub_1000B9228(a2 + 8, v16, v17);
    sub_1000B93B4(v17, &v18);
    sub_10012A358(v6, &v18);
    nullsub_75(&v18);
    result = nullsub_76(v16);
    if ((~*(a1 + 208) & 0x8080) == 0)
    {
      v11 = sub_1000BC004(*(a1 + 176));
      v12 = *(a1 + 120);
      v13 = *(a2 + 48);
      v18 = *(a2 + 40);
      v19 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = sub_1000BC6A0(&v18, v12);
      sub_100123518(a3, v14);
      v15 = v19;
      if (v19)
      {
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }

      return sub_100123580(a3, v11 * v11);
    }
  }

  return result;
}

void sub_1001DEC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002BB1C(va);
  sub_1001234CC(v9);
  _Unwind_Resume(a1);
}

void sub_1001DEC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  nullsub_75(va1);
  nullsub_76(va);
  sub_1001234CC(v2);
  _Unwind_Resume(a1);
}

void *sub_1001DECD8(void *a1)
{
  *a1 = off_1004422C0;
  sub_10012E8E4((a1 + 2));
  return a1;
}

void sub_1001DED1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1592));
  sub_10003ABD8(a1 + 1656, &v3);
  std::mutex::unlock((a1 + 1592));
}

void sub_1001DED78(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1592));
  v4 = *(a1 + 1656);
  v5 = *(a1 + 1664);
  if (v4 != v5)
  {
    v6 = *(a1 + 1656);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1664);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 1664) = &v7[v4];
  }

  std::mutex::unlock((a1 + 1592));
}

void sub_1001DEE1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1680));
  sub_10003ABD8(a1 + 1744, &v3);
  std::mutex::unlock((a1 + 1680));
}

void sub_1001DEE78(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1680));
  v4 = *(a1 + 1744);
  v5 = *(a1 + 1752);
  if (v4 != v5)
  {
    v6 = *(a1 + 1744);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1752);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 1752) = &v7[v4];
  }

  std::mutex::unlock((a1 + 1680));
}

void sub_1001DEF1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 1768));
  sub_10003ABD8(a1 + 1832, &v3);
  *(a1 + 2232) = *(a1 + 1832) != *(a1 + 1840);
  std::mutex::unlock((a1 + 1768));
}

void sub_1001DEF8C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1768));
  v4 = *(a1 + 1832);
  v5 = *(a1 + 1840);
  v6 = v4;
  if (v4 != v5)
  {
    v7 = *(a1 + 1832);
    while (*v7 != a2)
    {
      v7 += 8;
      v6 += 8;
      if (v7 == v5)
      {
        v6 = *(a1 + 1840);
        break;
      }
    }
  }

  v8 = (v5 - (v6 + 8));
  if (v5 != v6 + 8)
  {
    memmove(v6, v6 + 8, v5 - (v6 + 8));
    v4 = *(a1 + 1832);
  }

  *(a1 + 1840) = &v8[v6];
  *(a1 + 2232) = v4 != &v8[v6];

  std::mutex::unlock((a1 + 1768));
}

void sub_1001DF03C(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 29);
  sub_10003ABD8(&a1[30], &v3);
  std::mutex::unlock(a1 + 29);
}

void sub_1001DF098(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1856));
  v4 = *(a1 + 1920);
  v5 = *(a1 + 1928);
  if (v4 != v5)
  {
    v6 = *(a1 + 1920);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 1928);
        break;
      }
    }
  }

  v7 = (v5 - (v4 + 8));
  if (v5 != v4 + 8)
  {
    memmove(v4, v4 + 8, v5 - (v4 + 8));
  }

  *(a1 + 1928) = &v7[v4];

  std::mutex::unlock((a1 + 1856));
}

uint64_t sub_1001DF134(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v5 = v2 - 40;
          nullsub_68(v2 - 32);
          v2 = v5;
        }

        while (v5 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v6 = result;
      operator delete(v3);
      result = v6;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_1001DF1EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_1001C9068((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1001DF260(uint64_t a1)
{
  sub_1001DFEB4((a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      nullsub_75(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001DF2C8(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 32);
    if (v1)
    {
      *(result + 40) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3)
    {
      *(result + 16) = v3;
      v4 = result;
      operator delete(v3);
      result = v4;
    }

    *result = 0;
  }

  return result;
}

_BYTE *sub_1001DF330(_BYTE *a1)
{
  if (a1[456] == 1)
  {
    sub_10013CFA4((a1 + 464));
    a1[456] = 0;
    if (a1[304] != 1)
    {
LABEL_3:
      if (a1[152] != 1)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_10013CFA4((a1 + 160));
      a1[152] = 0;
      if (*a1 != 1)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if (a1[304] != 1)
  {
    goto LABEL_3;
  }

  sub_10013CFA4((a1 + 312));
  a1[304] = 0;
  if (a1[152] == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 != 1)
  {
    return a1;
  }

LABEL_9:
  sub_10013CFA4((a1 + 8));
  *a1 = 0;
  return a1;
}

uint64_t sub_1001DF3E8(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 40;
        nullsub_68(v4 - 32);
        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 72);
      if (v8 != v7)
      {
        do
        {
          v10 = v8 - 40;
          nullsub_68(v8 - 32);
          v8 = v10;
        }

        while (v10 != v7);
        v9 = *(a1 + 72);
      }

      *(a1 + 80) = v7;
      operator delete(v9);
    }

    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *(a1 + 48) = v11;
    operator delete(v11);
  }

  nullsub_68(a1 + 8);
  return a1;
}

uint64_t *sub_1001DF4C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v1 + 16);
      v4 = *(v1 + 8);
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
        v4 = *(v1 + 8);
      }

      *(v1 + 16) = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1001DF5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001DF638(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1001DF638(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  v9 = a1[1];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ***sub_1001DF780(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 95;
        v7 = v4 - 95;
        do
        {
          (**v7)(v7);
          v6 -= 95;
          v8 = v7 == v2;
          v7 -= 95;
        }

        while (!v8);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_1001DF830(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1001DF904(a1 + 136);
  sub_1001FE7FC(a1 + 24);
  v3 = *(a1 + 8);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_1001DF904(uint64_t a1)
{
  sub_1001DF9C0(a1 + 40);
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1001DF9C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[4];
      if (v5)
      {
        v6 = v2[5];
        v3 = v2[4];
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 8);
            if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            v6 -= 16;
          }

          while (v6 != v5);
          v3 = v2[4];
        }

        v2[5] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

double *sub_1001DFAAC(double *result, double *a2, double *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        result[1] = v46;
      }

      else
      {
        *result = v46;
        result[1] = v45;
      }

      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v49 = result++;
        if (v49 != a3 && result != a3)
        {
          v50 = *v49;
          v51 = *v49;
          v52 = result;
          v53 = v49;
          v54 = result;
          do
          {
            v55 = *v54++;
            v56 = v55;
            if (v55 < v51)
            {
              v51 = v56;
              v53 = v52;
            }

            v52 = v54;
          }

          while (v54 != a3);
          if (v53 != v49)
          {
            *v49 = *v53;
            *v53 = v50;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v19 = result + 1;
          if (result + 1 < v18)
          {
            goto LABEL_27;
          }

          goto LABEL_43;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        if (v30 == v5)
        {
          return result;
        }

        while (1)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            break;
          }

          if (++v30 == v5)
          {
            return result;
          }
        }

        *v30++ = *v5;
        *v5 = v31;
      }

      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
      v19 = result + 1;
      if (result + 1 >= a3 - 1)
      {
LABEL_43:
        v24 = v19;
      }

      else
      {
LABEL_27:
        v20 = v19;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}

uint64_t sub_1001DFDF0(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 1 && a2 - *(result + 24) >= 8000000000)
  {
    *(result + 8) = 0;
  }

  return result;
}

char *sub_1001DFE28@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_100003228(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

void sub_1001DFE50(void *a1)
{
  *a1 = off_1004422C0;
  sub_10012E8E4((a1 + 2));

  operator delete();
}

_BYTE *sub_1001DFEB4(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = *(result + 6);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        result = v4;
      }
    }

    v5 = result;
    nullsub_76(result + 8);
    result = v5;
    *v5 = 0;
  }

  return result;
}

void **sub_1001DFF94(void **a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 2);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 80;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_1001E00C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E015C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E01F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004423C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1001E0258(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100213A34();
    operator delete();
  }

  return a1;
}

void sub_1001E02CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E0320(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    v3 = *(a1 + 256);
    v4 = *(a1 + 248);
    if (v3 != v2)
    {
      v5 = v3 - 20;
      v6 = v3 - 20;
      v7 = v3 - 20;
      do
      {
        v8 = *v7;
        v7 -= 20;
        (*v8)(v6);
        v5 -= 20;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 248);
    }

    *(a1 + 256) = v2;
    operator delete(v4);
  }

  if (*(a1 + 80) == 1)
  {
    sub_1000B7124((a1 + 88));
    *(a1 + 80) = 0;
  }

  sub_100166AE0(a1 + 24);
}

void sub_1001E0408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E045C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_10006DD50((a1 + 96));
    *(a1 + 88) = 0;
  }

  sub_100167434(a1 + 24);
}

void sub_1001E04CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004424B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E0548(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void ***sub_1001E05C4(void ***a1)
{
  if (*a1)
  {
    sub_1001DD2F0(a1);
    operator delete(*a1);
  }

  return a1;
}

char **sub_1001E0600(char **result)
{
  v1 = *result;
  if (*result)
  {
    for (i = result[1]; i != v1; i -= 88)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    result[1] = v1;
    v3 = result;
    operator delete(v1);
    return v3;
  }

  return result;
}

__n128 sub_1001E06D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E0714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18LocalizerIoWrapper27updateMotionUniformTimestepENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001E078C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
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

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v7 = *(a2 + 48);
    *(88 * v2 + 0x20) = *(a2 + 32);
    *(88 * v2 + 0x30) = v7;
    *(88 * v2 + 0x40) = *(a2 + 64);
    *(88 * v2 + 0x50) = *(a2 + 80);
    *(88 * v2 + 0x18) = 1;
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v6 - &v9[-*a1];
  v11 = v6 + 88;
  if (v9 != *a1)
  {
    v12 = 88 * v2 - 8 * (&v9[-*a1] >> 3) + 24;
    v13 = v8 + 32;
    do
    {
      v15 = *(v13 - 2);
      *(v12 - 8) = *(v13 - 2);
      *(v12 - 24) = v15;
      *v12 = 0;
      if (*(v13 - 8) == 1)
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v18 = *(v13 + 2);
        *(v12 + 56) = *(v13 + 6);
        *(v12 + 40) = v18;
        *(v12 + 24) = v17;
        *(v12 + 8) = v16;
        *v12 = 1;
      }

      v14 = v13 - 32;
      v12 += 88;
      v13 += 88;
    }

    while (v14 + 88 != v9);
    do
    {
      if (v8[24] == 1)
      {
        v8[24] = 0;
      }

      v8 += 88;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v11;
}

const void ***sub_1001E0994(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v14, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
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
        if (sub_1001182C8(v10 + 2, a2))
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

  if (!sub_1001182C8(v10 + 2, a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1001E0CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E0CE8(uint64_t a1, std::string *a2)
{
  v29 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  std::locale::locale(&v24);
  v26 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0uLL;
  DWORD2(v29) = 24;
  *(&v24 + 1) = &__p[1];
  *&v25 = &__p[1];
  *(&v25 + 1) = &__p[1];
  *&v29 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v28);
  if (v28 < 0)
  {
    v4 = v28;
  }

  *&v26 = &__p[1];
  *(&v26 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  v23 = off_100433ED0;
  v31.__loc_ = 0;
  std::ios_base::init(&v31, &v23);
  v32 = 0;
  v33 = -1;
  v35 = &v34;
  v36 = &v34 + 2;
  sub_1001E1040(&v23, a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v35;
  v7 = v36;
  v9 = v36 - v35;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v11 = a2;
    if (v9 <= 0x16)
    {
      goto LABEL_14;
    }

    v12 = 22;
    goto LABEL_9;
  }

  v13 = a2->__r_.__value_.__r.__words[2];
  v12 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 < v9)
  {
    size = a2->__r_.__value_.__l.__size_;
LABEL_9:
    std::string::__grow_by(a2, v12, v9 - v12, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v14) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_11;
  }

  v14 = HIBYTE(v13);
LABEL_11:
  if ((v14 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_14:
  if (v8 == v7)
  {
    v15 = v11;
  }

  else
  {
    if (v9 < 0x20 || (v11 - v8) < 0x20)
    {
      v15 = v11;
      v16 = v8;
    }

    else
    {
      v15 = (v11 + (v9 & 0xFFFFFFFFFFFFFFE0));
      v16 = &v8[v9 & 0xFFFFFFFFFFFFFFE0];
      v17 = (v8 + 16);
      v18 = &v11->__r_.__value_.__r.__words[2];
      v19 = v9 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 4;
        v19 -= 32;
      }

      while (v19);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v16++;
      v15->__r_.__value_.__s.__data_[0] = v21;
      v15 = (v15 + 1);
    }

    while (v16 != v7);
  }

LABEL_24:
  v15->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v9;
    std::ostream::~ostream();
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(&a2->__r_.__value_.__s + 23) = v9 & 0x7F;
LABEL_26:
  std::ostream::~ostream();
  if (SHIBYTE(v28) < 0)
  {
LABEL_27:
    operator delete(__p[1]);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v6;
}

void sub_1001E1018(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

__n128 sub_1001E1040(__n128 *a1, uint64_t a2)
{
  v4 = &a1[6].n128_u64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  sub_1001E118C(a2);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_10003C2E4(v4, v6, v7);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  v10 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t sub_1001E1138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  return 0;
}

uint64_t sub_1001E118C(uint64_t a1)
{
  sub_10004DAA4(v5);
  sub_10003C2E4(&v6, "[", 1);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100118404(&v6, v2 + 2);
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      sub_10003C2E4(&v6, ", ", 2);
      sub_100118404(&v6, v2 + 2);
    }
  }

  sub_10003C2E4(&v6, "]", 1);
  std::stringbuf::str();
  v6 = v3;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E137C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E13CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1001E15C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1001CFDE4(&a11);
  *(v11 + 8) = v12;
  sub_1001CFEC4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E15E8(uint64_t **a1)
{
  sub_10004DAA4(v9);
  sub_10003C2E4(&v10, "[", 1);
  v3 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v4 = *v3;
    std::ostream::operator<<();
    for (i = v3 + 1; i != v2; ++i)
    {
      sub_10003C2E4(&v10, ", ", 2);
      v6 = *i;
      std::ostream::operator<<();
    }
  }

  sub_10003C2E4(&v10, "]", 1);
  std::stringbuf::str();
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E17E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E17FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001E1824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E1838(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[5];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = v3[3];
      if (v5)
      {
LABEL_7:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    else
    {
      v5 = v3[3];
      if (v5)
      {
        goto LABEL_7;
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

double sub_1001E1938(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v14 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v14 = *a2;
  *(v14 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v14 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v14 + 40) = v6;
  *(v14 + 48) = v7;
  v8 = *(a2 + 56);
  *(v14 + 64) = *(a2 + 64);
  *(v14 + 56) = v8;
  v9 = *(a1 + 8);
  v10 = 72 * v2 + *a1 - v9;
  sub_1001E1ABC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = 72 * v2 + 72;
  *(a1 + 8) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 72 * v2 + 72;
  }

  return *&v12;
}

void sub_1001E1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001E1C40(va);
  _Unwind_Resume(a1);
}

void sub_1001E1ABC(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 3);
      v7 = v6[6];
      *(a4 + 40) = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      *(a4 + 48) = v7;
      v8 = v6[7];
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 56) = v8;
      v6 += 9;
      a4 += 72;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = v5[3];
      if (v10)
      {
        v5[4] = v10;
        operator delete(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        v12 = v5[1];
        v9 = *v5;
        if (v12 != v11)
        {
          v13 = v12 - 168;
          do
          {
            v16 = *(v12 - 44);
            if (v16 == v16 >> 31)
            {
              if (*(v12 - 128) == 1)
              {
                *(v12 - 128) = 0;
              }
            }

            else
            {
              v14 = *(v12 - 21);
              if (v16 < 0)
              {
                if (v14)
                {
                  (*(*v14 + 8))(v14);
                }
              }

              else
              {
                v15 = *(v12 - 21);
                (*v14)(v12 - 168);
              }
            }

            v12 -= 208;
            v13 -= 208;
          }

          while (v12 != v11);
          v9 = *v5;
        }

        v5[1] = v11;
        operator delete(v9);
      }

      v5 += 9;
    }
  }
}

uint64_t sub_1001E1C40(uint64_t a1)
{
  sub_1001E1C78(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001E1C78(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 72);
    *(a1 + 16) = i - 72;
    v7 = *(i - 48);
    if (v7)
    {
      *(i - 40) = v7;
      operator delete(v7);
    }

    v8 = *v6;
    if (*v6)
    {
      v9 = *(i - 64);
      v5 = *v6;
      if (v9 != v8)
      {
        v10 = v9 - 168;
        do
        {
          v13 = *(v9 - 44);
          if (v13 == v13 >> 31)
          {
            if (*(v9 - 128) == 1)
            {
              *(v9 - 128) = 0;
            }
          }

          else
          {
            v11 = *(v9 - 21);
            if (v13 < 0)
            {
              if (v11)
              {
                (*(*v11 + 8))(v11);
              }
            }

            else
            {
              v12 = *(v9 - 21);
              (*v11)(v9 - 168);
            }
          }

          v9 -= 208;
          v10 -= 208;
        }

        while (v9 != v8);
        v5 = *v6;
      }

      *(i - 64) = v8;
      operator delete(v5);
    }
  }
}

__n128 sub_1001E1E18(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004425F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E1E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18LocalizerIoWrapper26receiveMagneticReliabilityERK17SensorMeasurementE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1001E1ECC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  if (((v3 >> 4) & 1) != (v2 & 0x10) >> 4)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = a1;
    v5 = a2;
    result = sub_1001CFFC4((a1 + 64), (a2 + 64));
    if (!result)
    {
      return result;
    }

    a1 = v4;
    v2 = *(v4 + 136);
    a2 = v5;
    v3 = *(v5 + 136);
  }

  result = ((v3 >> 5) & 1) == (v2 & 0x20) >> 5 && ((v2 & 0x20) == 0 || *(a1 + 88) == *(a2 + 88)) && ((v3 >> 6) & 1) == (v2 & 0x40) >> 6 && ((v2 & 0x40) == 0 || *(a1 + 96) == *(a2 + 96)) && ((v3 >> 7) & 1) == (v2 & 0x80) >> 7 && ((v2 & 0x80) == 0 || *(a1 + 104) == *(a2 + 104)) && ((v3 >> 8) & 1) == (v2 & 0x100) >> 8 && ((v2 & 0x100) == 0 || *(a1 + 112) == *(a2 + 112)) && ((v3 >> 9) & 1) == (v2 & 0x200) >> 9 && ((v2 & 0x200) == 0 || *(a1 + 120) == *(a2 + 120)) && (v7 = v2 & 0x400, ((v3 >> 10) & 1) == v7 >> 10) && (!v7 || *(a1 + 128) == *(a2 + 128));
  return result;
}

uint64_t *sub_1001E208C(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2] - v2;
  if (v3 == 760)
  {
    *(result + 8) = 1;
  }

  else
  {
    v4 = 0x4E25B9EFD4E25B9FLL * (v3 >> 3);
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 760 * a2 + 240);
          v7 = *result;
          v8 = (v2 + 240 + 760 * v5);
          while (v7 < v6 - *v8)
          {
            v8 += 95;
            ++v5;
            *(result + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(result + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
    }

    memset(__p, 0, 24);
    __p[3] = __p;
    v10 = 0;
    if (v5)
    {
      if (v5 < 0x563B48C20563B5)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  return result;
}

void sub_1001E2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001DF780(va);
  _Unwind_Resume(a1);
}

void sub_1001E231C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100127CD0(va);
  _Unwind_Resume(a1);
}

void sub_1001E2330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100385864();
  }

  sub_1001DF780(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2358(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4E25B9EFD4E25B9FLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x563B48C20563B4)
  {
    sub_10000FC84();
  }

  if (0x9C4B73DFA9C4B73ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9C4B73DFA9C4B73ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4E25B9EFD4E25B9FLL * ((a1[2] - *a1) >> 3)) >= 0x2B1DA46102B1DALL)
  {
    v5 = 0x563B48C20563B4;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x563B48C20563B4)
    {
      operator new();
    }

    sub_10000D444();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_100126300(v16, a2);
  v6 = 760 * v2 + 760;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v16 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v16 + v9;
    do
    {
      sub_100126300(v13, v12);
      v12 += 760;
      v13 += 760;
      v11 -= 760;
    }

    while (v12 != v8);
    v14 = v7;
    do
    {
      (**v7)(v7);
      v7 += 95;
      v14 += 95;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1001E250C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100128320(va);
  _Unwind_Resume(a1);
}

void sub_1001E2520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100385864();
  }

  sub_100128320(va);
  _Unwind_Resume(a1);
}

double *sub_1001E2544(double *result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v68 = v9[1];
          v69 = *(a2 - 1);
          if (v68 > v69)
          {
            v70 = *(v9 + 1);
          }

          else
          {
            v70 = *(a2 - 1);
          }

          if (v68 > v69)
          {
            v68 = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          *(v9 + 1) = v70;
          v71 = *(a2 - 1);
          if (v71 > *v9)
          {
            v72 = *(a2 - 1);
          }

          else
          {
            v72 = *v9;
          }

          if (v71 > *v9)
          {
            v71 = *v9;
          }

          *(a2 - 1) = v71;
          v74 = *v9;
          v73 = v9[1];
          if (v72 <= v73)
          {
            v74 = v9[1];
            v73 = v72;
          }

          *v9 = v74;
          v9[1] = v73;
          return result;
        case 4:
          v98 = v9[1];
          v97 = v9[2];
          if (*v9 > v97)
          {
            v99 = *v9;
          }

          else
          {
            v99 = v9[2];
          }

          if (*v9 <= v97)
          {
            v97 = *v9;
          }

          v9[2] = v97;
          *v9 = v99;
          v100 = *(a2 - 1);
          if (v98 > v100)
          {
            v101 = v98;
          }

          else
          {
            v101 = *(a2 - 1);
          }

          if (v98 <= v100)
          {
            v100 = v98;
          }

          *(a2 - 1) = v100;
          v102 = *v9;
          if (*v9 > v101)
          {
            v103 = *v9;
          }

          else
          {
            v103 = v101;
          }

          if (*v9 > v101)
          {
            v102 = v101;
          }

          *v9 = v103;
          v9[1] = v102;
          v104 = v9[2];
          v105 = *(a2 - 1);
          if (v104 > v105)
          {
            v106 = v9[2];
          }

          else
          {
            v106 = *(a2 - 1);
          }

          if (v104 > v105)
          {
            v104 = *(a2 - 1);
          }

          *(a2 - 1) = v104;
          v107 = v9[1];
          if (v107 > v106)
          {
            v108 = v9[1];
          }

          else
          {
            v108 = v106;
          }

          if (v107 > v106)
          {
            v107 = v106;
          }

          v9[1] = v108;
          v9[2] = v107;
          return result;
        case 5:
          v75 = *v9;
          v76 = v9[1];
          if (*v9 > v76)
          {
            v77 = *v9;
          }

          else
          {
            v77 = v9[1];
          }

          if (*v9 > v76)
          {
            v75 = v9[1];
          }

          *v9 = v77;
          v9[1] = v75;
          v78 = v9[3];
          v79 = *(a2 - 1);
          if (v78 > v79)
          {
            v80 = *(v9 + 3);
          }

          else
          {
            v80 = *(a2 - 1);
          }

          if (v78 > v79)
          {
            v78 = *(a2 - 1);
          }

          *(a2 - 1) = v78;
          *(v9 + 3) = v80;
          v81 = *(a2 - 1);
          v82 = v9[2];
          if (v81 > v82)
          {
            v83 = *(a2 - 1);
          }

          else
          {
            v83 = v9[2];
          }

          if (v81 > v82)
          {
            v81 = v9[2];
          }

          *(a2 - 1) = v81;
          v85 = *(v9 + 2);
          v84 = v9[3];
          v86 = v9[1];
          if (v83 <= v84)
          {
            v85 = *(v9 + 3);
            v84 = v83;
          }

          *(v9 + 2) = v85;
          v9[3] = v84;
          v87 = *(a2 - 1);
          if (v86 > v87)
          {
            v88 = v86;
          }

          else
          {
            v88 = *(a2 - 1);
          }

          if (v86 <= v87)
          {
            v87 = v86;
          }

          *(a2 - 1) = v87;
          v89 = *v9;
          v91 = v9[2];
          v90 = v9[3];
          if (v90 > *v9)
          {
            v92 = v9[3];
          }

          else
          {
            v92 = *v9;
          }

          if (v90 > *v9)
          {
            v90 = *v9;
          }

          if (v92 <= v91)
          {
            v89 = v9[2];
            v91 = v92;
          }

          if (v90 > v88)
          {
            v93 = v90;
          }

          else
          {
            v93 = v88;
          }

          if (v90 > v88)
          {
            v90 = v88;
          }

          if (v93 <= v91)
          {
            v88 = v91;
          }

          *v9 = v89;
          v9[1] = v88;
          if (v93 > v91)
          {
            v94 = v91;
          }

          else
          {
            v94 = v93;
          }

          v9[2] = v94;
          v9[3] = v90;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v95 = *(a2 - 1);
        v96 = *v9;
        if (v95 > *v9)
        {
          *v9 = v95;
          *(a2 - 1) = v96;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_1001E3830(v9, a2, a2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      if (*v9 > v14)
      {
        v47 = *v9;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v9 <= v14)
      {
        v14 = *v9;
      }

      *(a2 - 1) = v14;
      *v9 = v47;
      v48 = *(a2 - 1);
      v49 = v9[v13];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v9[v13];
      }

      if (v48 > v49)
      {
        v48 = v9[v13];
      }

      *(a2 - 1) = v48;
      v51 = *v9;
      v52 = v9[v13];
      v53 = v50 <= *v9;
      if (v50 > *v9)
      {
        v51 = v9[v13];
      }

      v9[v13] = v51;
      v54 = *v9;
      if (v53)
      {
        v54 = v50;
      }

      *v9 = v54;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v15 = &v9[v13];
      if (*v15 > v14)
      {
        v16 = *v15;
      }

      else
      {
        v16 = *(a2 - 1);
      }

      if (*v15 <= v14)
      {
        v14 = *v15;
      }

      *(a2 - 1) = v14;
      *v15 = v16;
      v17 = *(a2 - 1);
      if (v17 > *v9)
      {
        v18 = *(a2 - 1);
      }

      else
      {
        v18 = *v9;
      }

      if (v17 > *v9)
      {
        v17 = *v9;
      }

      *(a2 - 1) = v17;
      v19 = *v15;
      v20 = v18 <= *v15;
      if (v18 > *v15)
      {
        v19 = *v9;
      }

      *v9 = v19;
      v22 = *(v15 - 1);
      v21 = *v15;
      if (v20)
      {
        v21 = v18;
      }

      *v15 = v21;
      v23 = *(a2 - 2);
      if (v22 > v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a2 - 2);
      }

      if (v22 <= v23)
      {
        v23 = v22;
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v24;
      v25 = *(a2 - 2);
      v26 = v9[1];
      if (v25 > v26)
      {
        v27 = *(a2 - 2);
      }

      else
      {
        v27 = v9[1];
      }

      if (v25 > v26)
      {
        v25 = v9[1];
      }

      *(a2 - 2) = v25;
      v28 = *(v15 - 1);
      v29 = v27 <= v28;
      if (v27 > v28)
      {
        v28 = v9[1];
      }

      v9[1] = v28;
      v30 = *(v15 - 1);
      if (v29)
      {
        v30 = v27;
      }

      *(v15 - 1) = v30;
      v31 = v15[1];
      v32 = *(a2 - 3);
      if (v31 > v32)
      {
        v33 = *(v15 + 1);
      }

      else
      {
        v33 = *(a2 - 3);
      }

      if (v31 > v32)
      {
        v31 = *(a2 - 3);
      }

      *(a2 - 3) = v31;
      *(v15 + 1) = v33;
      v34 = *(a2 - 3);
      v35 = v9[2];
      if (v34 > v35)
      {
        v36 = *(a2 - 3);
      }

      else
      {
        v36 = v9[2];
      }

      if (v34 > v35)
      {
        v34 = v9[2];
      }

      *(a2 - 3) = v34;
      v37 = v15[1];
      v38 = v36 <= v37;
      if (v36 > v37)
      {
        v37 = v9[2];
      }

      v9[2] = v37;
      v40 = *v15;
      v39 = v15[1];
      if (v38)
      {
        v39 = v36;
      }

      v41 = *(v15 - 1);
      if (v40 > v39)
      {
        v42 = *v15;
      }

      else
      {
        v42 = v39;
      }

      if (v40 <= v39)
      {
        v39 = *v15;
      }

      if (v39 > v41)
      {
        v43 = v39;
      }

      else
      {
        v43 = *(v15 - 1);
      }

      if (v39 > v41)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v39;
      }

      if (v43 > v42)
      {
        v45 = *(v15 - 1);
      }

      else
      {
        v45 = v42;
      }

      if (v43 > v42)
      {
        v43 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v43;
      v15[1] = v44;
      v46 = *v9;
      *v9 = v43;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    v55 = *v9;
    if (*(v9 - 1) <= *v9)
    {
      if (v55 <= *(a2 - 1))
      {
        v60 = v9 + 1;
        do
        {
          v9 = v60;
          if (v60 >= a2)
          {
            break;
          }

          ++v60;
        }

        while (v55 <= *v9);
      }

      else
      {
        do
        {
          v59 = v9[1];
          ++v9;
        }

        while (v55 <= v59);
      }

      v61 = a2;
      if (v9 < a2)
      {
        v61 = a2;
        do
        {
          v62 = *--v61;
        }

        while (v55 > v62);
      }

      if (v9 < v61)
      {
        v63 = *v9;
        v64 = *v61;
        do
        {
          *v9 = v64;
          *v61 = v63;
          do
          {
            v65 = v9[1];
            ++v9;
            v63 = v65;
          }

          while (v55 <= v65);
          do
          {
            v66 = *--v61;
            v64 = v66;
          }

          while (v55 > v66);
        }

        while (v9 < v61);
      }

      v67 = v9 - 1;
      if (v9 - 1 != v8)
      {
        *v8 = *v67;
      }

      *v67 = v55;
      goto LABEL_112;
    }

LABEL_90:
    v56 = sub_1001E2B58(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_93;
    }

    v58 = sub_1001E3578(v9, v56);
    v9 = v56 + 1;
    result = sub_1001E3578(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_93:
      result = sub_1001E2544(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_112:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v109 = v9 + 1;
  v111 = v9 == a2 || v109 == a2;
  if (a5)
  {
    if (!v111)
    {
      v112 = 0;
      v113 = v9;
      do
      {
        v116 = *v113;
        v115 = v113[1];
        v113 = v109;
        if (v115 > v116)
        {
          v117 = v112;
          do
          {
            *(v9 + v117 + 8) = v116;
            if (!v117)
            {
              v114 = v9;
              goto LABEL_206;
            }

            v116 = *(v9 + v117 - 8);
            v117 -= 8;
          }

          while (v115 > v116);
          v114 = (v9 + v117 + 8);
LABEL_206:
          *v114 = v115;
        }

        v109 = v113 + 1;
        v112 += 8;
      }

      while (v113 + 1 != a2);
    }
  }

  else if (!v111)
  {
    do
    {
      v119 = *v8;
      v118 = v8[1];
      v8 = v109;
      if (v118 > v119)
      {
        v120 = v109;
        do
        {
          *v120 = v119;
          v119 = *(v120 - 2);
          --v120;
        }

        while (v118 > v119);
        *v120 = v118;
      }

      ++v109;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

double *sub_1001E2B58(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = (v3 + 1);
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v24 = v10 >> 3;
    v14 = 1;
LABEL_33:
    v28 = v24 + 1;
    v25 = (v24 + 1) / 2;
    v26 = v28 - v28 / 2;
    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s64(*&v2, 0);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8160, vcgtq_f64(v7[30], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8140, vcgtq_f64(v7[28], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8120, vcgtq_f64(v7[26], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8100, vcgtq_f64(v7[24], v13)), vbicq_s8(xmmword_1003D80E0, vcgtq_f64(v7[22], v13)))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D80C0, vcgtq_f64(v7[20], v13)), vorrq_s8(vbicq_s8(xmmword_1003D80A0, vcgtq_f64(v7[18], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8080, vcgtq_f64(v7[16], v13)), vbicq_s8(xmmword_1003D8060, vcgtq_f64(v7[14], v13))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8040, vcgtq_f64(v7[12], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8020, vcgtq_f64(v7[10], v13)), vbicq_s8(xmmword_1003D8000, vcgtq_f64(v7[8], v13)))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D7FE0, vcgtq_f64(v7[6], v13)), vbicq_s8(xmmword_1003D7FC0, vcgtq_f64(v7[4], v13))), vorrq_s8(vbicq_s8(xmmword_1003D7FA0, vcgtq_f64(v7[2], v13)), vbicq_s8(xmmword_1003D7F80, vcgtq_f64(*v7, v13)))))));
      v17 = vorrq_s8(vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8170, vcgtq_f64(v7[31], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8150, vcgtq_f64(v7[29], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8130, vcgtq_f64(v7[27], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8110, vcgtq_f64(v7[25], v13)), vbicq_s8(xmmword_1003D80F0, vcgtq_f64(v7[23], v13)))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D80D0, vcgtq_f64(v7[21], v13)), vorrq_s8(vbicq_s8(xmmword_1003D80B0, vcgtq_f64(v7[19], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8090, vcgtq_f64(v7[17], v13)), vbicq_s8(xmmword_1003D8070, vcgtq_f64(v7[15], v13))))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D8050, vcgtq_f64(v7[13], v13)), vorrq_s8(vbicq_s8(xmmword_1003D8030, vcgtq_f64(v7[11], v13)), vbicq_s8(xmmword_1003D8010, vcgtq_f64(v7[9], v13)))), vorrq_s8(vorrq_s8(vbicq_s8(xmmword_1003D7FF0, vcgtq_f64(v7[7], v13)), vbicq_s8(xmmword_1003D7FD0, vcgtq_f64(v7[5], v13))), vorrq_s8(vbicq_s8(xmmword_1003D7FB0, vcgtq_f64(v7[3], v13)), vbicq_s8(xmmword_1003D7F90, vcgtq_f64(v7[1], v13))))))), v16);
      v12 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      if (v11)
      {
LABEL_20:
        if (!v12)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

    v18 = vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 61), *(v9 - 61), 8uLL), v13), xmmword_1003D8160), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 53), *(v9 - 53), 8uLL), v13), xmmword_1003D8120), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 45), *(v9 - 45), 8uLL), v13), xmmword_1003D80E0), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 25), *(v9 - 25), 8uLL), v13), xmmword_1003D8040), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 21), *(v9 - 21), 8uLL), v13), xmmword_1003D8020), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 17), *(v9 - 17), 8uLL), v13), xmmword_1003D8000))), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 13), *(v9 - 13), 8uLL), v13), xmmword_1003D7FE0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 9), *(v9 - 9), 8uLL), v13), xmmword_1003D7FC0)), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 5), *(v9 - 5), 8uLL), v13), xmmword_1003D7FA0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 1), *(v9 - 1), 8uLL), v13), xmmword_1003D7F80))))))), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 57), *(v9 - 57), 8uLL), v13), xmmword_1003D8140), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 49), *(v9 - 49), 8uLL), v13), xmmword_1003D8100), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 41), *(v9 - 41), 8uLL), v13), xmmword_1003D80C0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 37), *(v9 - 37), 8uLL), v13), xmmword_1003D80A0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 33), *(v9 - 33), 8uLL), v13), xmmword_1003D8080), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 29), *(v9 - 29), 8uLL), v13), xmmword_1003D8060)))))));
    v19 = vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 63), *(v9 - 63), 8uLL), v13), xmmword_1003D8170), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 55), *(v9 - 55), 8uLL), v13), xmmword_1003D8130), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 47), *(v9 - 47), 8uLL), v13), xmmword_1003D80F0), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 27), *(v9 - 27), 8uLL), v13), xmmword_1003D8050), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 23), *(v9 - 23), 8uLL), v13), xmmword_1003D8030), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 19), *(v9 - 19), 8uLL), v13), xmmword_1003D8010))), vorrq_s8(vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 15), *(v9 - 15), 8uLL), v13), xmmword_1003D7FF0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 11), *(v9 - 11), 8uLL), v13), xmmword_1003D7FD0)), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 7), *(v9 - 7), 8uLL), v13), xmmword_1003D7FB0), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 3), *(v9 - 3), 8uLL), v13), xmmword_1003D7F90))))))), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 59), *(v9 - 59), 8uLL), v13), xmmword_1003D8150), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 51), *(v9 - 51), 8uLL), v13), xmmword_1003D8110), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 43), *(v9 - 43), 8uLL), v13), xmmword_1003D80D0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 39), *(v9 - 39), 8uLL), v13), xmmword_1003D80B0), vorrq_s8(vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 35), *(v9 - 35), 8uLL), v13), xmmword_1003D8090), vandq_s8(vcgtq_f64(vextq_s8(*(v9 - 31), *(v9 - 31), 8uLL), v13), xmmword_1003D8070)))))));
    v20 = vorrq_s8(v19, v18);
    v11 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7->f64[v21];
        v7->f64[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_14:
    v7 += 32 * (v12 == 0);
    v14 = v11 == 0;
    if (v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = -512;
    }

    v9 = (v9 + v15);
  }

  while (v9 - v7 > 1008);
  v24 = (v9 - v7) >> 3;
  if (!(v12 | v11))
  {
    goto LABEL_33;
  }

  v25 = v24 - 63;
  v26 = 64;
  v27 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_44:
    if (v25 >= 1)
    {
      if (v25 > 3)
      {
        v42 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        v43 = &v9[-(v25 & 0x7FFFFFFFFFFFFFFCLL)];
        v46 = vdupq_lane_s64(*&v2, 0);
        v47 = xmmword_1003D8180;
        v48 = (v9 - 1);
        v49 = vdupq_n_s64(2uLL);
        v50 = vdupq_n_s64(1uLL);
        v51 = 0uLL;
        v52 = vdupq_n_s64(4uLL);
        v53 = v25 & 0x7FFFFFFFFFFFFFFCLL;
        v54 = 0uLL;
        do
        {
          v51 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_f64(vextq_s8(*v48, *v48, 8uLL), v46), v50), v47), v51);
          v54 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_f64(vextq_s8(v48[-1], v48[-1], 8uLL), v46), v50), vaddq_s64(v47, v49)), v54);
          v47 = vaddq_s64(v47, v52);
          v48 -= 2;
          v53 -= 4;
        }

        while (v53);
        v55 = vorrq_s8(v54, v51);
        v11 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
        goto LABEL_55;
      }

      v42 = 0;
      v11 = 0;
      v43 = v9;
      do
      {
        v56 = *v43--;
        v11 |= (v56 > v2) << v42++;
LABEL_55:
        ;
      }

      while (v25 != v42);
      goto LABEL_56;
    }

    if (v12)
    {
      v44 = 0;
    }

    else
    {
      v44 = v27;
    }

    v45 = &v7->f64[v44];
LABEL_68:
    if (v12)
    {
      v9 -= v25;
      goto LABEL_72;
    }

    goto LABEL_75;
  }

LABEL_34:
  if (v25 < 1)
  {
    v12 = 0;
  }

  else
  {
    if (v25 >= 4)
    {
      v29 = v25 & 0x7FFFFFFFFFFFFFFCLL;
      v30 = &v7->f64[v25 & 0x7FFFFFFFFFFFFFFCLL];
      v31 = vdupq_lane_s64(*&v2, 0);
      v32 = xmmword_1003D8180;
      v33 = v7 + 1;
      v34 = vdupq_n_s64(2uLL);
      v35 = vdupq_n_s64(1uLL);
      v36 = 0uLL;
      v37 = vdupq_n_s64(4uLL);
      v38 = v25 & 0x7FFFFFFFFFFFFFFCLL;
      v39 = 0uLL;
      do
      {
        v36 = vorrq_s8(vshlq_u64(vbicq_s8(v35, vcgtq_f64(v33[-1], v31)), v32), v36);
        v39 = vorrq_s8(vshlq_u64(vbicq_s8(v35, vcgtq_f64(*v33, v31)), vaddq_s64(v32, v34)), v39);
        v32 = vaddq_s64(v32, v37);
        v33 += 2;
        v38 -= 4;
      }

      while (v38);
      v40 = vorrq_s8(v39, v36);
      v12 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      goto LABEL_42;
    }

    v29 = 0;
    v12 = 0;
    v30 = v7;
    do
    {
      v41 = *v30++;
      v12 |= (v41 <= v2) << v29++;
LABEL_42:
      ;
    }

    while (v25 != v29);
  }

  v27 = v25;
  v25 = v26;
  if (v14)
  {
    goto LABEL_44;
  }

LABEL_56:
  if (v12 && v11)
  {
    do
    {
      v57 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v58 = &v9[-__clz(__rbit64(v11))];
      v59 = v7->f64[v57];
      v7->f64[v57] = *v58;
      *v58 = v59;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v27 = 0;
  }

  v45 = &v7->f64[v27];
  if (!v11)
  {
    goto LABEL_68;
  }

  if (v12)
  {
    do
    {
LABEL_72:
      v63 = __clz(v12) ^ 0x3F;
      v64 = &v45[v63];
      if (v9 != v64)
      {
        v65 = *v64;
        *v64 = *v9;
        *v9 = v65;
      }

      v12 &= ~(-1 << v63);
      --v9;
    }

    while (v12);
    v45 = v9 + 1;
  }

  else
  {
    do
    {
      v60 = __clz(v11) ^ 0x3F;
      v61 = &v9[-v60];
      if (v45 != v61)
      {
        v62 = *v61;
        *v61 = *v45;
        *v45 = v62;
      }

      v11 &= ~(-1 << v60);
      ++v45;
    }

    while (v11);
  }

LABEL_75:
  v66 = v45 - 1;
  if (v45 - 1 != a1)
  {
    *a1 = *v66;
  }

  *v66 = v2;
  return v45 - 1;
}

BOOL sub_1001E3578(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v26 = a1[1];
        v27 = *(a2 - 1);
        if (v26 > v27)
        {
          v28 = *(a1 + 1);
        }

        else
        {
          v28 = *(a2 - 1);
        }

        if (v26 > v27)
        {
          v26 = *(a2 - 1);
        }

        *(a2 - 1) = v26;
        *(a1 + 1) = v28;
        v29 = *(a2 - 1);
        if (v29 > *a1)
        {
          v30 = *(a2 - 1);
        }

        else
        {
          v30 = *a1;
        }

        if (v29 > *a1)
        {
          v29 = *a1;
        }

        *(a2 - 1) = v29;
        v32 = *a1;
        v31 = a1[1];
        if (v30 <= v31)
        {
          v32 = a1[1];
          v31 = v30;
        }

        *a1 = v32;
        a1[1] = v31;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v4 = *a1;
        v5 = a1[1];
        if (*a1 > v5)
        {
          v6 = *a1;
        }

        else
        {
          v6 = a1[1];
        }

        if (*a1 > v5)
        {
          v4 = a1[1];
        }

        *a1 = v6;
        a1[1] = v4;
        v7 = a1[3];
        v8 = *(a2 - 1);
        if (v7 > v8)
        {
          v9 = *(a1 + 3);
        }

        else
        {
          v9 = *(a2 - 1);
        }

        if (v7 > v8)
        {
          v7 = *(a2 - 1);
        }

        *(a2 - 1) = v7;
        *(a1 + 3) = v9;
        v10 = *(a2 - 1);
        v11 = a1[2];
        if (v10 > v11)
        {
          v12 = *(a2 - 1);
        }

        else
        {
          v12 = a1[2];
        }

        if (v10 > v11)
        {
          v10 = a1[2];
        }

        *(a2 - 1) = v10;
        v14 = *(a1 + 2);
        v13 = a1[3];
        v15 = a1[1];
        if (v12 <= v13)
        {
          v14 = *(a1 + 3);
          v13 = v12;
        }

        *(a1 + 2) = v14;
        a1[3] = v13;
        v16 = *(a2 - 1);
        if (v15 > v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = *(a2 - 1);
        }

        if (v15 <= v16)
        {
          v16 = v15;
        }

        *(a2 - 1) = v16;
        v18 = *a1;
        v20 = a1[2];
        v19 = a1[3];
        if (v19 > *a1)
        {
          v21 = a1[3];
        }

        else
        {
          v21 = *a1;
        }

        if (v19 > *a1)
        {
          v19 = *a1;
        }

        if (v21 <= v20)
        {
          v18 = a1[2];
          v20 = v21;
        }

        if (v19 > v17)
        {
          v22 = v19;
        }

        else
        {
          v22 = v17;
        }

        if (v19 > v17)
        {
          v19 = v17;
        }

        if (v22 <= v20)
        {
          v17 = v20;
        }

        *a1 = v18;
        a1[1] = v17;
        if (v22 > v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        a1[2] = v23;
        a1[3] = v19;
        return 1;
    }

    goto LABEL_63;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_63:
    v33 = a1 + 2;
    v34 = a1[2];
    v36 = *a1;
    v35 = a1[1];
    if (v35 > v34)
    {
      v37 = a1[1];
    }

    else
    {
      v37 = a1[2];
    }

    if (v35 <= v34)
    {
      v34 = a1[1];
    }

    if (v34 > v36)
    {
      v38 = v34;
    }

    else
    {
      v38 = *a1;
    }

    if (v34 > v36)
    {
      v34 = *a1;
    }

    *v33 = v34;
    if (v38 > v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    if (v38 > v37)
    {
      v38 = v37;
    }

    *a1 = v39;
    a1[1] = v38;
    v40 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v41 = 0;
    for (i = 24; ; i += 8)
    {
      v43 = *v40;
      v44 = *v33;
      if (*v40 > *v33)
      {
        break;
      }

LABEL_87:
      v33 = v40++;
      if (v40 == a2)
      {
        return 1;
      }
    }

    v45 = i;
    do
    {
      *(a1 + v45) = v44;
      v46 = v45 - 8;
      if (v45 == 8)
      {
        *a1 = v43;
        if (++v41 != 8)
        {
          goto LABEL_87;
        }

        return v40 + 1 == a2;
      }

      v44 = *(a1 + v45 - 16);
      v45 -= 8;
    }

    while (v43 > v44);
    *(a1 + v46) = v43;
    if (++v41 != 8)
    {
      goto LABEL_87;
    }

    return v40 + 1 == a2;
  }

  v24 = *(a2 - 1);
  v25 = *a1;
  if (v24 <= *a1)
  {
    return 1;
  }

  *a1 = v24;
  *(a2 - 1) = v25;
  return 1;
}

double *sub_1001E3830(double *a1, double *a2, double *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v8 = &a1[v7];
          if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && *v8 > v8[1])
          {
            ++v8;
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v9 = &a1[v5];
          v10 = *v8;
          v11 = *v9;
          if (*v8 <= *v9)
          {
            do
            {
              *v9 = v10;
              v9 = v8;
              if (v4 < v7)
              {
                break;
              }

              v12 = 2 * v7;
              v7 = (2 * v7) | 1;
              v8 = &a1[v7];
              v13 = v12 + 2;
              if (v13 < v3 && *v8 > v8[1])
              {
                ++v8;
                v7 = v13;
              }

              v10 = *v8;
            }

            while (*v8 <= v11);
            *v9 = v11;
          }
        }

        v6 = v5-- <= 0;
      }

      while (!v6);
    }

    v14 = a2;
    if (a2 == a3)
    {
LABEL_38:
      if (v3 < 2)
      {
        return v14;
      }

      while (1)
      {
        v27 = 0;
        v28 = *a1;
        v29 = a1;
        do
        {
          v30 = v29;
          v31 = &v29[v27];
          v29 = v31 + 1;
          v32 = 2 * v27;
          v27 = (2 * v27) | 1;
          v33 = v32 + 2;
          if (v33 < v3)
          {
            v35 = v31[2];
            v34 = v31 + 2;
            if (*(v34 - 1) > v35)
            {
              v29 = v34;
              v27 = v33;
            }
          }

          *v30 = *v29;
        }

        while (v27 <= ((v3 - 2) >> 1));
        if (v29 != --a2)
        {
          *v29 = *a2;
          *a2 = v28;
          v36 = (v29 - a1 + 8) >> 3;
          v6 = v36 < 2;
          v37 = v36 - 2;
          if (v6)
          {
            goto LABEL_42;
          }

          v38 = v37 >> 1;
          v39 = &a1[v38];
          v40 = *v39;
          v28 = *v29;
          if (*v39 <= *v29)
          {
            goto LABEL_42;
          }

          do
          {
            *v29 = v40;
            v29 = v39;
            if (!v38)
            {
              break;
            }

            v38 = (v38 - 1) >> 1;
            v39 = &a1[v38];
            v40 = *v39;
          }

          while (*v39 > v28);
        }

        *v29 = v28;
LABEL_42:
        v6 = v3-- <= 2;
        if (v6)
        {
          return v14;
        }
      }
    }

    if (v3 < 2)
    {
      v15 = *a1;
      v14 = a2;
      do
      {
        v16 = *v14;
        if (*v14 > v15)
        {
          *v14 = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++v14;
      }

      while (v14 != a3);
      goto LABEL_38;
    }

    v17 = a1 + 1;
    v18 = a1 + 2;
    v14 = a2;
    while (1)
    {
      v19 = *v14;
      if (*v14 > *a1)
      {
        *v14 = *a1;
        *a1 = v19;
        if (a2 - a1 == 16 || *v17 <= *v18)
        {
          v20 = a1 + 1;
          v21 = 1;
          v22 = *v17;
          if (*v17 <= v19)
          {
LABEL_32:
            v23 = a1;
            do
            {
              *v23 = v22;
              v23 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v24 = 2 * v21;
              v21 = (2 * v21) | 1;
              v20 = &a1[v21];
              v25 = v24 + 2;
              if (v25 < v3 && *v20 > v20[1])
              {
                ++v20;
                v21 = v25;
              }

              v22 = *v20;
            }

            while (*v20 <= v19);
            *v23 = v19;
          }
        }

        else
        {
          v20 = a1 + 2;
          v21 = 2;
          v22 = *v18;
          if (*v18 <= v19)
          {
            goto LABEL_32;
          }
        }
      }

      if (++v14 == a3)
      {
        goto LABEL_38;
      }
    }
  }

  return a3;
}

void sub_1001E3B48(uint64_t a1, void *a2)
{
  v3 = a2[29];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1001DF9C0((a2 + 22));
  v4 = a2[19];
  while (v4)
  {
    v5 = v4;
    v4 = *v4;
    v6 = v5[3];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = v7;
    }

    operator delete(v5);
  }

  v8 = a2[17];
  a2[17] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  sub_1001FE7FC(a2 + 3);
  v9 = a2[1];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1001E3CD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E3D54(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 16)
    {
      v27 = *(v13 - 1);
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v14[1];
        *v25 = *v14;
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v25 += 16;
        v24 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_1001E40F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004426C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_10025A89C(a2, __p, a4);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }
}

char **sub_1001E423C(char **a1)
{
  sub_1000275F4((a1 + 27), a1[28]);
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[22] = v3;
    operator delete(v3);
  }

  sub_1000275F4((a1 + 18), a1[19]);
  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  sub_1000275F4((a1 + 6), a1[7]);
  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

void sub_1001E4374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *__p = *a3;
  v14 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v5 = a5[1];
  v11 = *a5;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10025B30C(a2, __p, a4, &v11);
  v6 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = __p[0];
  if (__p[0])
  {
    v8 = __p[1];
    v9 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v10 = *(v8 - 1);
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = __p[0];
    }

    __p[1] = v7;
    operator delete(v9);
  }
}

void sub_1001E44B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10002BB1C(&a9);
  sub_100048F1C(&a11);
  _Unwind_Resume(a1);
}

void sub_1001E4560(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

void sub_1001E4578(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

void sub_1001E4590(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_1001E45A8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E4618()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001E4688(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[3];
  v9 = a1[4];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v11 = *(*a1 + 56);
  v12 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v12;
  v40 = *(a3 + 32);
  v13 = sub_1001E8F98(v11, v39);
  sub_100255CD0(v39, a2, a1, a1[8]);
  if (*a4 == 1)
  {
    sub_1001820DC(&v37, a1);
    __p = 0;
    v35 = 0;
    v36 = 0;
    v14 = *a2;
    v15 = a2[1];
    v33[0] = v14;
    v33[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v32, 0, sizeof(v32));
    if (*(&v39[0] + 1) != *&v39[0])
    {
      if (((*(&v39[0] + 1) - *&v39[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1001E53B8(a5, &v37, &__p, v33, v32, v13);
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    v18 = v37;
    if (v37)
    {
      v19 = v38;
      v20 = v37;
      if (v38 != v37)
      {
        do
        {
          v21 = *(v19 - 2);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          v19 -= 80;
        }

        while (v19 != v18);
        v20 = v37;
      }

      v38 = v18;
LABEL_43:
      operator delete(v20);
    }
  }

  else
  {
    sub_1001820DC(&v30, a1);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v16 = *a2;
    v17 = a2[1];
    v26[0] = v16;
    v26[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v25, 0, sizeof(v25));
    if (*(&v39[0] + 1) != *&v39[0])
    {
      if (((*(&v39[0] + 1) - *&v39[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1001E53B8(a5, &v30, &v27, v26, v25, v13);
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    v22 = v30;
    if (v30)
    {
      v23 = v31;
      v20 = v30;
      if (v31 != v30)
      {
        do
        {
          v24 = *(v23 - 2);
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v23 -= 80;
        }

        while (v23 != v22);
        v20 = v30;
      }

      v31 = v22;
      goto LABEL_43;
    }
  }

  if (*&v39[0])
  {
    *(&v39[0] + 1) = *&v39[0];
    operator delete(*&v39[0]);
  }
}

void sub_1001E4C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  sub_1001E4CD4(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001E4D4C(&a25);
  v37 = *(v35 - 144);
  if (v37)
  {
    *(v35 - 136) = v37;
    operator delete(v37);
    if (!v34)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_7;
  }

  operator delete(v34);
  _Unwind_Resume(a1);
}

void sub_1001E4CBC()
{
  if (v0)
  {
    JUMPOUT(0x1001E4CACLL);
  }

  JUMPOUT(0x1001E4C98);
}

void sub_1001E4CC8()
{
  if (v0)
  {
    JUMPOUT(0x1001E4CACLL);
  }

  JUMPOUT(0x1001E4C98);
}

uint64_t sub_1001E4CD4(uint64_t result)
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

void **sub_1001E4D4C(void **a1)
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
        v5 = *(v3 - 2);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

float64_t sub_1001E4E08(uint64_t a1, double a2)
{
  v37 = (*(**(a1 + 48) + 32))(*(a1 + 48));
  v33 = (1.0 - a2) * *(a1 + 64);
  v3.f64[0] = log(v33);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104) - v4;
  if (v5)
  {
    v6 = v5 >> 3;
    v32 = v3.f64[0];
    if (v37 != INFINITY)
    {
      v9 = *(a1 + 120);
      if (v6 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v5 >> 3;
      }

      if (v6 >= 2 && (v4 - v9) > 0xF)
      {
        v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
        v30 = vdupq_lane_s64(*&v3.f64[0], 0);
        v31 = vdupq_lane_s64(*&v33, 0);
        v18 = v10 & 0xFFFFFFFFFFFFFFFELL;
        v19 = v4;
        v20 = v9;
        do
        {
          v21 = *v20++;
          v35 = exp(*(&v21 + 1));
          v22.f64[0] = exp(*&v21);
          v22.f64[1] = v35;
          __x = vaddq_f64(v31, vmulq_n_f64(vmulq_n_f64(v22, v37), a2));
          v36 = log(__x.f64[1]);
          v23.f64[0] = log(__x.f64[0]);
          v23.f64[1] = v36;
          v3 = vsubq_f64(v30, v23);
          *v19++ = v3;
          v18 -= 2;
        }

        while (v18);
        if (v6 == v12)
        {
          return v3.f64[0];
        }
      }

      else
      {
        v12 = 0;
      }

      v24 = v10 - v12;
      v25 = v9 + v12;
      v26 = v4 + v12;
      do
      {
        v27 = *v25++;
        v28 = exp(v27);
        v3.f64[0] = v32 - log(v33 + v37 * v28 * a2);
        *v26++ = *&v3.f64[0];
        --v24;
      }

      while (v24);
      return v3.f64[0];
    }

    v3.f64[0] = v3.f64[0] - log(v33 + a2 * 0.0);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v6 < 4)
    {
      v8 = 0;
LABEL_19:
      v16 = v7 - v8;
      v17 = v4 + v8;
      do
      {
        *v17++ = *&v3.f64[0];
        --v16;
      }

      while (v16);
      return v3.f64[0];
    }

    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = vdupq_lane_s64(*&v3.f64[0], 0);
    v14 = (v4 + 1);
    v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14[-1] = v13;
      *v14 = v13;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v6 != v8)
    {
      goto LABEL_19;
    }
  }

  return v3.f64[0];
}

BOOL sub_1001E5040(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = v1 + 1;
  if (v1 != v2 && v3 != v2)
  {
    v5 = *v1;
    v6 = v1 + 1;
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v5 < v7)
      {
        v5 = v8;
        v1 = v3;
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return *v1 <= 0.0;
}

double sub_1001E5088(void *a1, double a2)
{
  sub_1001E527C(a1, a2);
  v4 = a1[9];
  v3 = a1[10];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a1[3];
  v5 = a1[4];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return NAN;
}

void sub_1001E5264(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E527C(uint64_t a1, double a2)
{
  result = (*(**(a1 + 48) + 48))(*(a1 + 48));
  v6 = *(a1 + 32) - *(a1 + 24);
  if (v6)
  {
    v7 = v5;
    v8 = (1.0 - a2) * *(a1 + 64);
    v9 = v6 >> 3;
    v10 = 0;
    if (v5 == INFINITY)
    {
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }

      do
      {
        result = sub_1001E5688(a1, v10, v8 / (v8 + a2 * 0.0), a2, 0.0, a2 * 0.0, v8);
        *(*(a1 + 72) + 8 * v10++) = v8 / (v8 + a2 * 0.0);
      }

      while (v11 != v10);
    }

    else
    {
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        v13 = exp(*(*(a1 + 120) + 8 * v10));
        v14 = v7 * v13 * a2;
        v15 = v8 / (v8 + v14);
        result = sub_1001E5688(a1, v10, v15, a2, v7 * v13, v14, v8);
        *(*(a1 + 72) + 8 * v10++) = v15;
      }

      while (v12 != v10);
    }
  }

  return result;
}

uint64_t *sub_1001E53B8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, double a6)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = *a2;
  result[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  *(result + 3) = *a3;
  result[5] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = a4[1];
  result[6] = *a4;
  result[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[9] = 0;
  *(result + 8) = a6;
  v8 = *result;
  v7 = result[1];
  result[10] = 0;
  result[11] = 0;
  v9 = v7 - *&v8;
  if (v9)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * (v9 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1001E55DC(_Unwind_Exception *a1)
{
  v8 = *v6;
  if (*v6)
  {
    *v5 = v8;
    operator delete(v8);
    v9 = *v4;
    if (!*v4)
    {
LABEL_3:
      sub_1001E4CD4(v2);
      v10 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v9 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 80) = v9;
  operator delete(v9);
  sub_1001E4CD4(v2);
  v10 = *v3;
  if (!*v3)
  {
LABEL_4:
    sub_1001E4D4C(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 32) = v10;
  operator delete(v10);
  sub_1001E4D4C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E5688(uint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = a4;
  v16 = a3;
  v13 = a6;
  v14 = a5;
  v12 = a7;
  if (a3 < 0.0)
  {
    v8 = result;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 8) - *result) >> 4) <= a2)
    {
      sub_1000BFF58();
    }

    v11 = *result + 80 * a2;
    v10 = (*(**(result + 48) + 32))(*(result + 48));
    v9 = *(v8 + 120);
    v19 = 0;
    LOBYTE(v18) = 0;
    memset(&v23, 0, sizeof(v23));
    std::string::assign(&v23, "Invalid outlierprobability (NaN?). Why?");
    memset(&v24, 0, sizeof(v24));
    std::string::assign(&v24, "\nisNaN = ");
    v27 = 0x100000000000000;
    memset(&v28, 0, sizeof(v28));
    v26 = 0;
    v25 = 48;
    std::string::assign(&v28, "\nParticle = ");
    memset(&v29, 0, sizeof(v29));
    if ((sub_1001E60D4(&v11, &v29) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      v21 = &off_100442730;
      sub_100049F88(&v20);
    }

    memset(&v30, 0, sizeof(v30));
    std::string::assign(&v30, "\nGaussian partition = ");
    memset(&v31, 0, sizeof(v31));
    if ((sub_1000DE4DC(&v10, &v31) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v32, 0, sizeof(v32));
    std::string::assign(&v32, "\nGaussian lognormpdfrelative = ");
    memset(&v33, 0, sizeof(v33));
    if ((sub_1000DE4DC((v9 + 8 * a2), &v33) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v34, 0, sizeof(v34));
    std::string::assign(&v34, "\nGaussian likelihood = ");
    memset(&v35, 0, sizeof(v35));
    if ((sub_1000DE4DC(&v14, &v35) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v36, 0, sizeof(v36));
    std::string::assign(&v36, "\npriorUniform = ");
    memset(&v37, 0, sizeof(v37));
    if ((sub_1000DE4DC((v8 + 64), &v37) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v38, 0, sizeof(v38));
    std::string::assign(&v38, "\nobservationProbabilityFromGaussian = ");
    memset(&v39, 0, sizeof(v39));
    if ((sub_1000DE4DC(&v13, &v39) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v40, 0, sizeof(v40));
    std::string::assign(&v40, "\nobservationProbabilityFromUniform = ");
    memset(&v41, 0, sizeof(v41));
    if ((sub_1000DE4DC(&v12, &v41) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v42, 0, sizeof(v42));
    std::string::assign(&v42, "\nInlier Confidence (init) = ");
    memset(&v43, 0, sizeof(v43));
    if ((sub_1000DE4DC(&v15, &v43) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    memset(&v44, 0, sizeof(v44));
    std::string::assign(&v44, "\nresult = ");
    memset(&v45, 0, sizeof(v45));
    if ((sub_1000DE4DC(&v16, &v45) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v20);
      v20.__vftable = &off_100434090;
      sub_100049F88(&v20);
    }

    sub_1000E661C(&v18, &v23, 21);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

LABEL_40:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

LABEL_41:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

LABEL_42:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }

LABEL_43:
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }

LABEL_44:
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

LABEL_46:
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_49;
    }

LABEL_48:
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }

LABEL_49:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_28:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_53;
    }

LABEL_52:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_54;
    }

LABEL_53:
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_55;
    }

LABEL_54:
    operator delete(v25);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

LABEL_55:
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_57:
      operator delete(v18);
LABEL_34:
      sub_10003F5D0(&__p);
    }

LABEL_56:
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

  return result;
}

void sub_1001E5EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E60D4(uint64_t *a1, std::string *a2)
{
  v33 = 0u;
  v32 = 0u;
  *__p = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  std::locale::locale(&v28);
  v30 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0uLL;
  DWORD2(v33) = 24;
  *(&v28 + 1) = &__p[1];
  *&v29 = &__p[1];
  *(&v29 + 1) = &__p[1];
  *&v33 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v32);
  if (v32 < 0)
  {
    v4 = v32;
  }

  *&v30 = &__p[1];
  *(&v30 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v29 = 0uLL;
  *(&v28 + 1) = 0;
  v27 = off_100433ED0;
  v35.__loc_ = 0;
  std::ios_base::init(&v35, &v27);
  v36 = 0;
  v37 = -1;
  v39 = &v38;
  v40 = &v38 + 2;
  v5 = (&v34 + *(v34 - 3));
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = *a1;
  v7 = std::ostream::operator<<();
  v8 = *(v7 + *(*v7 - 24) + 32);
  v9 = *(&v35.__rdstate_ + *(v34 - 3));
  v11 = *(v9 + 40);
  v10 = *(v9 + 48);
  v39 = v11;
  v40 = v10;
  if ((v8 & 5) == 0)
  {
    v14 = &v10[-v11];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v18 = a2->__r_.__value_.__r.__words[2];
      v17 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v17 >= v14)
      {
        v19 = HIBYTE(v18);
LABEL_14:
        if ((v19 & 0x80u) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v11 == v10)
        {
          v20 = v16;
          goto LABEL_27;
        }

        if (v14 < 0x20 || v16 - v11 < 0x20)
        {
          v20 = v16;
          v21 = v11;
        }

        else
        {
          v20 = (v16 + (v14 & 0xFFFFFFFFFFFFFFE0));
          v21 = (v11 + (v14 & 0xFFFFFFFFFFFFFFE0));
          v22 = (v11 + 16);
          v23 = &v16->__r_.__value_.__r.__words[2];
          v24 = v14 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v25 = *v22;
            *(v23 - 1) = *(v22 - 1);
            *v23 = v25;
            v22 += 2;
            v23 += 4;
            v24 -= 32;
          }

          while (v24);
          if (v14 == (v14 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v20->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v14;
              v12 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v32) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v14 & 0x7F;
              v12 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v32) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v26 = *v21++;
          v20->__r_.__value_.__s.__data_[0] = v26;
          v20 = (v20 + 1);
        }

        while (v21 != v10);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = a2;
      if (v14 <= 0x16)
      {
        goto LABEL_17;
      }

      v17 = 22;
    }

    std::string::__grow_by(a2, v17, v14 - v17, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v19) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v12 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v32) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v28);
  return v12;
}

void sub_1001E649C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

void sub_1001E64C4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E6534()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_1001E65A4(void *result, uint64_t a2)
{
  *result = a2;
  result[2] = 0;
  return result;
}

void sub_1001E65B0(uint64_t a1, uint64_t **a2)
{
  v16 = 15;
  strcpy(v15, "LocalizerThread");
  sub_100325488(v15);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    v4 = *(a1 + 8);
    if (v4)
    {
LABEL_3:
      if (v4 == 1)
      {
        v5 = *a1;
        if (*a2)
        {
          sub_1001E6920(v10, *a2);
          sub_1001E6920(v7, *a2 + 59);
          sub_1001E6B04(v5, v10, v7);
          if (v9 < 0)
          {
            operator delete(v8[37]);
          }

          sub_100050024(v8);
          sub_1000505E0(v7);
          if (v12 < 0)
          {
            operator delete(v11[37]);
          }

          sub_100050024(v11);
          sub_1000505E0(v10);
        }

        else
        {
          sub_1001CAAD8(v5);
        }
      }

      return;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = *a1;
  if (*a2)
  {
    sub_1001E6920(v14, *a2);
    sub_1001E6920(v13, *a2 + 59);
    sub_1001E67C8(v6, v14);
  }

  sub_1001CB774(v6);
}

void sub_1001E677C(_Unwind_Exception *a1)
{
  sub_10004EA10(&STACK[0x3B8]);
  sub_10004EA10(&STACK[0x590]);
  _Unwind_Resume(a1);
}

void sub_1001E67AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E67C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1002B85E0(a2);
  v3 = sub_10004FF1C(*v2);
  v4 = sub_10010C670() - v3;
  operator new();
}

void sub_1001E6908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001CDA50(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E6920(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  v3 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v3;
  v4 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v4;
  v5 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v5;
  v6 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v6;
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  v9 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v9;
  v10 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v10;
  v11 = a2[9];
  a2[9] = 0;
  *(a1 + 72) = v11;
  v12 = a2[10];
  a2[10] = 0;
  *(a1 + 80) = v12;
  v13 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v13;
  v14 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v14;
  v15 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v15;
  v16 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v16;
  v17 = a2[15];
  a2[15] = 0;
  *(a1 + 120) = v17;
  v18 = a2[16];
  a2[16] = 0;
  *(a1 + 128) = v18;
  v19 = *(a2 + 17);
  a2[17] = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = a2[19];
  a2[18] = 0;
  a2[19] = 0;
  *(a1 + 160) = *(a2 + 10);
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = *(a2 + 11);
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = *(a2 + 12);
  a2[24] = 0;
  a2[25] = 0;
  *(a1 + 208) = *(a2 + 13);
  a2[26] = 0;
  a2[27] = 0;
  *(a1 + 224) = *(a2 + 14);
  a2[28] = 0;
  a2[29] = 0;
  *(a1 + 240) = *(a2 + 15);
  a2[30] = 0;
  a2[31] = 0;
  *(a1 + 256) = *(a2 + 16);
  a2[32] = 0;
  a2[33] = 0;
  *(a1 + 272) = *(a2 + 17);
  a2[34] = 0;
  a2[35] = 0;
  *(a1 + 288) = *(a2 + 18);
  a2[36] = 0;
  a2[37] = 0;
  *(a1 + 304) = *(a2 + 19);
  a2[38] = 0;
  a2[39] = 0;
  *(a1 + 320) = *(a2 + 20);
  a2[40] = 0;
  a2[41] = 0;
  *(a1 + 336) = *(a2 + 21);
  a2[42] = 0;
  a2[43] = 0;
  *(a1 + 352) = *(a2 + 22);
  a2[44] = 0;
  a2[45] = 0;
  *(a1 + 368) = *(a2 + 23);
  a2[46] = 0;
  a2[47] = 0;
  *(a1 + 384) = *(a2 + 24);
  a2[48] = 0;
  a2[49] = 0;
  *(a1 + 400) = *(a2 + 25);
  a2[50] = 0;
  a2[51] = 0;
  *(a1 + 416) = *(a2 + 26);
  a2[52] = 0;
  a2[53] = 0;
  *(a1 + 432) = a2[54];
  result = *(a2 + 55);
  *(a1 + 456) = a2[57];
  *(a1 + 440) = result;
  a2[56] = 0;
  a2[57] = 0;
  a2[55] = 0;
  *(a1 + 464) = a2[58];
  return result;
}

void sub_1001E6B04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 17) = 1;
  std::mutex::unlock((a1 + 24));
  if (qword_10045B050 != -1)
  {
    sub_100385A60();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Apply event queue in batch", buf, 2u);
  }

  v32[0] = 0;
  v31[0] = 0;
  while (a2[58] != *(a3 + 464) || sub_10001A918((a2 + 55), a3 + 440))
  {
    v7 = sub_1002B85E0(a2);
    v8 = v7[1];
    v16[0] = *v7;
    v16[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *a1;
    v28 = &v29;
    v29 = 0;
    *buf = 0;
    v23 = buf;
    v24 = 0x3802000000;
    v25 = sub_1001E787C;
    v26 = nullsub_140;
    v27 = v9;
    v17 = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = sub_1001E788C;
    v20 = &unk_100442840;
    v21 = buf;
    sub_10000AE28((v9 + 32), &v17);
    _Block_object_dispose(buf, 8);
    if (v29 && (v10 = sub_10004FF1C(*v29), sub_10004FF1C(v16[0]) >= v10))
    {
      v12 = *a1;
      LOBYTE(v29) = 0;
      *buf = 0;
      v23 = buf;
      v24 = 0x3802000000;
      v25 = sub_1001E78AC;
      v26 = nullsub_141;
      v27 = v12;
      v28 = &v29;
      v17 = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = sub_1001E78BC;
      v20 = &unk_100442868;
      v21 = buf;
      sub_10000AE28((v12 + 32), &v17);
      _Block_object_dispose(buf, 8);
      v13 = v30;
      v30 = 0uLL;
      v14 = v16[1];
      *v16 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v29 != 1)
        {
          goto LABEL_13;
        }
      }

      else if (v29 != 1)
      {
        goto LABEL_13;
      }

      v15 = *(&v30 + 1);
      if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      sub_1002B8190(a2);
    }

LABEL_13:
    sub_1001CB458(*(a1 + 8), v32, v31, v16);
    v11 = v16[1];
    if (v16[1])
    {
      if (!atomic_fetch_add((v16[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  sub_1001CA984(a1);
}

void sub_1001E6EC8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10000D388(exception_object);
}

void sub_1001E6F20(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100385A60();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      *buf = sub_1001E65B0;
      v4 = 0;
      sub_1001E7A08();
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Starting localizer thread", buf, 2u);
  goto LABEL_4;
}

void sub_1001E7080(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100385A60();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      *buf = sub_1001E65B0;
      v4 = 0;
      operator new();
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Starting localizer thread", buf, 2u);
  goto LABEL_4;
}

void sub_1001E7290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E7360(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004427A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E73A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14EventGenerator15applyInRealTimeI27input_event_stream_iteratorEEvT_S2_EUlNSt3__16chrono8durationIxNS3_5ratioILl1ELl1000000000EEEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001E741C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[1];
  if (*(*a1 + 464) == *(v5 + 464) && !sub_10001A918(*a1 + 440, v5 + 440))
  {
    return 1;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v7 = *a1;
    v8 = a1[1];
    if (*(*a1 + 464) == *(v8 + 464))
    {
      if (!sub_10001A918(v7 + 440, v8 + 440))
      {
        break;
      }

      v7 = *a1;
    }

    v9 = a1[2];
    v10 = sub_1002B85E0(v7);
    if (sub_10004FF1C(*v10) + *v9 > a2)
    {
      break;
    }

    v11 = sub_1002B85E0(*a1);
    v27[0] = *a1[2];
    sub_1001E76CC(*v11, v27);
    v12 = sub_1002B85E0(*a1);
    v13 = v22;
    if (v22 >= v23)
    {
      v6 = sub_100182F0C(&__p, v12);
    }

    else
    {
      *v22 = *v12;
      v14 = *(v12 + 8);
      v13[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = (v13 + 2);
    }

    v22 = v6;
    sub_1002B8190(*a1);
  }

  v15 = *v4;
  v24 = v22;
  v25 = __p;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4002000000;
  v27[3] = sub_1001E77AC;
  v27[4] = nullsub_139;
  v27[5] = &v25;
  v27[6] = &v24;
  v27[7] = v15;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 0x40000000;
  v26[2] = sub_1001E77C4;
  v26[3] = &unk_100442808;
  v26[4] = v27;
  sub_10000AE28((v15 + 32), v26);
  _Block_object_dispose(v27, 8);
  v16 = __p;
  if (__p)
  {
    v17 = v22;
    v18 = __p;
    if (v22 != __p)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 2;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v22 = v16;
    operator delete(v18);
  }

  return 0;
}

_DWORD *sub_1001E76CC(int *a1, uint64_t *a2)
{
  v4 = *a1;
  result = a1 + 2;
  v3 = v4;
  switch(v4 ^ (v4 >> 31))
  {
    case 1:
      if (v3 < 0)
      {
        result = *result;
      }

      *(result + 2) += *a2;
      break;
    case 2:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0x10:
      goto LABEL_6;
    case 3:
    case 8:
      if (v3 < 0)
      {
        result = *result;
      }

      v5 = *a2;
      *(result + 4) += *a2;
      *(result + 10) = v5 / 1000000000.0 + *(result + 10);
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xF:
      if (v3 < 0)
      {
        result = *result;
      }

      *(result + 1) += *a2;
      break;
    default:
      if (v3 < 0)
      {
        result = *result;
        *result += *a2;
      }

      else
      {
LABEL_6:
        *result += *a2;
      }

      break;
  }

  return result;
}

__n128 sub_1001E77AC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void sub_1001E77C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *v1[5];
  if (*v1[6] != v2)
  {
    v3 = v1[7];
    do
    {
      v5 = v3[1];
      if (v5 >= v3[2])
      {
        v4 = sub_100182F0C(v3, v2);
      }

      else
      {
        v6 = *(v2 + 8);
        *v5 = *v2;
        v5[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v4 = (v5 + 2);
      }

      v3[1] = v4;
      sub_100051018(*v3, v4, &v7, (v4 - *v3) >> 4);
      v2 += 16;
    }

    while (v2 != *v1[6]);
  }
}

__n128 sub_1001E787C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1001E788C(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *v2 = v4;
  return result;
}

__n128 sub_1001E78AC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1001E78CC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2 != (*a1)[1])
  {
    v3 = a1[1];
    v4 = *v2;
    if (*v3 == 1)
    {
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      }

      v6 = v3[2];
      v3[1] = v4;
      v3[2] = v5;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v7 = v2[1];
      v3[1] = v4;
      v3[2] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      *v3 = 1;
    }

    sub_1001CDC48(*v1, v1[1], &v10, (v1[1] - *v1) >> 4);
    v8 = v1[1];
    v9 = *(v8 - 8);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    v1[1] = v8 - 16;
  }
}

void sub_1001E7AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E7CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001E7B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__thread_struct **a9, std::__thread_struct *a10)
{
  sub_1001E7C50(&a9);
  sub_1001E7CBC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E7B20(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v11 = 0;
  v12 = 0;
  v5(v6, &v11);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (a1)
  {
    v8 = *a1;
    *a1 = 0;
    if (v8)
    {
      std::__thread_struct::~__thread_struct(v8);
      operator delete();
    }

    operator delete();
  }

  return 0;
}

void sub_1001E7C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, std::__thread_struct **);
  sub_10002BB1C(va1);
  sub_1001E7C50(va);
  _Unwind_Resume(a1);
}

void sub_1001E7C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E7C50(va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_1001E7C50(std::__thread_struct ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      std::__thread_struct::~__thread_struct(v2);
      operator delete();
    }

    operator delete();
  }

  return result;
}

std::__thread_struct **sub_1001E7CBC(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void sub_1001E7D30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1001E7D84(uint64_t a1)
{
  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
    sub_100050024((a1 + 640));
    sub_1000505E0((a1 + 496));
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100050024((a1 + 640));
    sub_1000505E0((a1 + 496));
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 464));
LABEL_3:
  sub_100050024((a1 + 168));

  return sub_1000505E0((a1 + 24));
}

void sub_1001E7EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E7CBC(va);
  _Unwind_Resume(a1);
}

void sub_1001E7F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__thread_struct *a10)
{
  sub_1001E80BC(&a9);
  sub_1001E7CBC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E7F38(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v12 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5(v6, &v12);
  v7 = *(&v12 + 1);
  if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (a1)
  {
    v8 = *(a1 + 40);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9)
    {
      std::__thread_struct::~__thread_struct(v9);
      operator delete();
    }

    operator delete();
  }

  return 0;
}

void sub_1001E808C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10002BB1C(va1);
  sub_1001E80BC(va);
  _Unwind_Resume(a1);
}

void sub_1001E80A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E80BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001E80BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      std::__thread_struct::~__thread_struct(v3);
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_1001E8178()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E81E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001E8258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100258548(a1);
  if (v4 <= 1)
  {
    sub_1003846E0(__p, v12);
    sub_1000BC6D8(__p);
  }

  *a2 = off_10043D898;
  *(a2 + 8) = off_10043DB08;
  *(a2 + 16) = 0u;
  *(a2 + 32) &= 0xFCu;
  *(a2 + 40) = off_10043DB28;
  *(a2 + 48) = 0u;
  *(a2 + 64) &= 0xFCu;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 300) = 0;
  *(a2 + 304) = off_10043D858;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 456) &= 0xC0u;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a2 + 520) = 0;
  *(a2 + 528) = off_10043DB28;
  *(a2 + 536) = 0u;
  *(a2 + 552) &= 0xFCu;
  *(a2 + 560) = 0;
  *(a2 + 568) = off_10043D878;
  *(a2 + 576) = 0u;
  *(a2 + 592) &= 0xF8u;
  *(a2 + 600) = 0;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0;
  *(a2 + 700) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = *(a2 + 752) & 0xF000000000000000 | 0x10000000;
  *(a2 + 296) = 4;
  *(a2 + 16) = *sub_100258558(a1, 0);
  *(a2 + 24) = *sub_100258558(a1, 1);
  if (v4 >= 3)
  {
    *(a2 + 144) = *sub_100258558(a1, 2);
    if (v4 >= 5)
    {
      v5 = *sub_100258558(a1, 3);
      v6 = sub_100258558(a1, 4);
      *(a2 + 72) = atan2(*v6, v5);
    }
  }

  *(a2 + 152) = sqrt(sub_1002B0F94((a1 + 3), 2uLL));
  if (sub_1002B0F38((a1 + 3)) && (sub_1002B0F2C((a1 + 3), v12), v12[0] >= 2))
  {
    v7 = sub_1002B0954((a1 + 3), 0, 0);
    sub_100123618(a2, *v7);
    v8 = sub_1002B0954((a1 + 3), 0, 1uLL);
    sub_10012362C(a2, *v8);
    v9 = *sub_1002B0954((a1 + 3), 1uLL, 1uLL);
  }

  else
  {
    sub_100123618(a2, INFINITY);
    v9 = INFINITY;
    sub_10012362C(a2, INFINITY);
  }

  return sub_100123640(a2, v9);
}

void sub_1001E85D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t sub_1001E8650(double *a1, double *a2)
{
  v2 = sub_100217148(a1, *a2, a2[1]);
  result = vdupq_n_s64(0x7FF4000000000000uLL);
  v2[1] = result;
  v2[2] = result;
  v2[3].i16[0] = 0;
  v2[4].i64[0] = 0;
  v2[4].i64[1] = 0;
  v2[3].i64[1] = 0;
  return result;
}

double *sub_1001E8684(double *a1, uint64_t a2, double *a3)
{
  result = sub_100217148(a1, *a3, a3[1]);
  *(result + 1) = *(a2 + 16);
  *(result + 2) = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(result + 49) = 0;
  v5 = *(a2 + 64);
  result[7] = *(a2 + 56);
  *(result + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[9] = *(a2 + 72);
  return result;
}

void sub_1001E86E8(uint64_t a1, double *a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (!a3)
  {
    sub_1000474A4(&v29, "");
    sub_1001E921C("You must have made a mistake", &v35);
    sub_100383AA4(&v35, __p, &v29);
    sub_1000BC6D8(__p);
  }

  if (a7 - a6 != a3)
  {
    sub_1000474A4(&v29, "");
    sub_1001E926C("For now this is not allowed. Siblings is strictly the number of samples that are permitted", &v36);
    sub_100383AA4(&v36, __p, &v29);
    sub_1000BC6D8(__p);
  }

  if (a7 <= a6)
  {
    sub_1000474A4(__p, "");
    sub_10017D730("Bug in indexing", &v29);
    sub_100383AA4(&v29, v27, __p);
    sub_1000BC6D8(v27);
  }

  v12 = 80 * a6;
  do
  {
    if (v8 >= *a4)
    {
      sub_100217148(v29.n128_f64, *a2, a2[1]);
      v18 = *(a1 + 32);
      v30 = *(a1 + 16);
      v31 = v18;
      v32 = *(a1 + 48);
      v19 = *(a1 + 64);
      *&v33 = *(a1 + 56);
      *(&v33 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v34 = *(a1 + 72);
      v16 = *a5 - 80 * *a4;
      v17 = v16 + v12;
      sub_100217150((v16 + v12), &v29);
    }

    else
    {
      v13 = a4[2];
      if (v8 >= 0xCCCCCCCCCCCCCCCDLL * ((v13 - a4[1]) >> 4))
      {
        if (v13 >= a4[3])
        {
          a4[2] = sub_1001E92BC(a4 + 1, &v29, a1, a2);
        }

        else
        {
          sub_100217148(a4[2], *a2, a2[1]);
          *(v13 + 16) = *(a1 + 16);
          *(v13 + 32) = *(a1 + 32);
          *(v13 + 48) = *(a1 + 48);
          *(v13 + 49) = 0;
          *(v13 + 56) = *(a1 + 56);
          v25 = *(a1 + 64);
          *(v13 + 64) = v25;
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          *(v13 + 72) = *(a1 + 72);
          a4[2] = v13 + 80;
          a4[2] = v13 + 80;
        }

        goto LABEL_6;
      }

      sub_100217148(v29.n128_f64, *a2, a2[1]);
      v14 = *(a1 + 32);
      v30 = *(a1 + 16);
      v31 = v14;
      v32 = *(a1 + 48);
      v15 = *(a1 + 64);
      *&v33 = *(a1 + 56);
      *(&v33 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v34 = *(a1 + 72);
      v16 = a4[1];
      v17 = v16 + v12;
      sub_100217150((v16 + v12), &v29);
    }

    v20 = v30;
    v21 = v31;
    *(v17 + 48) = v32;
    *(v17 + 16) = v20;
    *(v17 + 32) = v21;
    v22 = v33;
    v33 = 0uLL;
    v23 = *(v17 + 64);
    *(v17 + 56) = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      *(v16 + v12 + 72) = v34;
      v24 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(v16 + v12 + 72) = v34;
      v24 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        goto LABEL_6;
      }
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

LABEL_6:
    ++v8;
    v12 += 80;
  }

  while (a7 != v8);
}

void sub_1001E8AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E8B6C(uint64_t result)
{
  v1 = *(result + 64);
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

void sub_1001E8C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001E8C4C(void *result, uint64_t a2, void *a3)
{
  switch(a2)
  {
    case 5:
      v9 = *(result + 1);
      v7 = *(result + 4);
      v10 = result[5];
      v8 = __sincos_stret(v7);
      v11[0] = *&v8.__cosval;
      v11[1] = *&v8.__sinval;
      v4 = &v12;
      v5 = a3;
      v6 = 5;
      break;
    case 3:
      v9 = *(result + 1);
      v10 = result[5];
      v4 = v11;
      v5 = a3;
      v6 = 3;
      break;
    case 2:
      v9 = *(result + 1);
      v4 = &v10;
      v5 = a3;
      v6 = 2;
      break;
    default:
      return result;
  }

  return sub_1001E8FFC(v5, &v9, v4, v6);
}

void sub_1001E8D30(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(a1 + 64);
  *(a1 + 56) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1001E8DB8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t ***a8)
{
  v15 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v16 = (*(*v15 + 56))(v15, a1, a6, a7, *(a1 + 16), *(a1 + 24), a2, a3);
  v17 = v16;
  v18 = HIBYTE(v16);
  if ((v16 & 1) == 0)
  {
    v19 = *a8;
    if (*a8)
    {
      v22[0] = off_10043DB08;
      v23 = 0;
      *&v22[1] = a2;
      *&v22[2] = a3;
      sub_100246474(v19, v22, a1, v24);
      if (v24[0] == 1)
      {
        nullsub_75(&v26);
        v20 = v25;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v17 = 1;
        v18 = 1;
      }

      nullsub_75(v22);
    }
  }

  if (v17)
  {
    *(a1 + 72) = 0;
  }

  else if (a5 >= 1)
  {
    *(a1 + 72) += a5;
  }

  return v17 | (v18 << 8);
}

void *sub_1001E8FFC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}