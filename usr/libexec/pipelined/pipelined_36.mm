void sub_1002347FC(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a2[1];
  v52 = *a2;
  v53 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001FE808(a1, &v52, &v54);
  v7 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  sub_100216AF0(&v49, 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 4));
  v9 = v56;
  v8 = v57;
  if (v57 == v56)
  {
    v32 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 4);
    v13 = 0.0;
    v11 = 0.0;
    v33 = v49;
    v34 = v50;
    if (v50 != v49)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v44 = v3;
  v45 = v4;
  v10 = 0;
  v11 = 0.0;
  v12 = 72;
  v13 = 0.0;
  do
  {
    if ((*(&v9[-1] + v12 - 8) & 1) == 0)
    {
      v14 = (v9 + v12 - 72);
      v15 = v50;
      if (v50 >= v51)
      {
        v19 = sub_1001FF408(&v49, v14);
      }

      else
      {
        sub_100217150(v50, v14);
        v16 = *(v9 + v12 - 56);
        v17 = *(v9 + v12 - 40);
        v15[3].n128_u16[0] = *(&v9[-1] + v12 - 8);
        v15[1] = v16;
        v15[2] = v17;
        v18 = v9->n128_u64[v12 / 8 - 1];
        v15[3].n128_u64[1] = v9[-1].n128_u64[v12 / 8];
        v15[4].n128_u64[0] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v15[4].n128_u64[1] = v9->n128_u64[v12 / 8];
        v19 = v15 + 5;
      }

      v50 = v19;
      v20 = v47;
      if (v47 >= v48)
      {
        v22 = __p;
        v23 = v47 - __p;
        v24 = (v47 - __p) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v26 = v48 - __p;
        if ((v48 - __p) >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v28 = (8 * v24);
        v29 = &v28[-((v47 - __p) >> 3)];
        *v28 = *(v54 + v10);
        v21 = (v28 + 1);
        memcpy(v29, v22, v23);
        __p = v29;
        v47 = v21;
        v48 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v47 = *(v54 + v10);
        v21 = v20 + 8;
      }

      v47 = v21;
      v30 = sub_10021569C(v56 + v12 - 72);
      v11 = v11 + exp(v30);
      v9 = v56;
    }

    v31 = sub_10021569C(&v9[-4] + v12 - 8);
    v13 = v13 + exp(v31);
    ++v10;
    v9 = v56;
    v8 = v57;
    v32 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 4);
    v12 += 80;
  }

  while (v10 < v32);
  v3 = v44;
  v4 = v45;
  v33 = v49;
  v34 = v50;
  if (v50 == v49)
  {
LABEL_32:
    sub_1001EC44C(&v49, v9, v8, v32);
    sub_10011DD68(&__p, v54, v55, (v55 - v54) >> 3);
    v33 = v49;
    v34 = v50;
    v11 = v13;
  }

LABEL_33:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_100235538(a3, v33, v34, 0xCCCCCCCCCCCCCCCDLL * ((v34 - v33) >> 4));
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  if (v47 != __p)
  {
    if (((v47 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v35 = v3[1];
  *(a3 + 48) = *v3;
  *(a3 + 56) = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 64) = sub_1001FE800(v4);
  *(a3 + 72) = v11 / v13;
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  v36 = v49;
  if (v49)
  {
    v37 = v50;
    v38 = v49;
    if (v50 != v49)
    {
      do
      {
        v39 = v37[-1].n128_u64[0];
        if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        v37 -= 5;
      }

      while (v37 != v36);
      v38 = v49;
    }

    v50 = v36;
    operator delete(v38);
  }

  v40 = v56;
  if (v56)
  {
    v41 = v57;
    v42 = v56;
    if (v57 != v56)
    {
      do
      {
        v43 = v41[-1].n128_u64[0];
        if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v41 -= 5;
      }

      while (v41 != v40);
      v42 = v56;
    }

    v57 = v40;
    operator delete(v42);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }
}

void sub_100234CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  sub_10002BB1C(v20);
  v23 = *v21;
  if (*v21)
  {
    *(v19 + 32) = v23;
    operator delete(v23);
  }

  sub_1001E4D4C(v19);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001E4D4C(&a14);
  sub_100235420(&a19);
  _Unwind_Resume(a1);
}

unint64_t *sub_100234D64(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_100258548(a2);
  if (v4 != sub_100258548(a1))
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (a2[1] - *a2 != v7)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v6 != v5)
  {
    v8 = v7 >> 3;
    v9 = *a2;
    if ((v7 >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >> 3;
    }

    if (v8 <= 5 || (v5 < v9 + 8 * v10 ? (v11 = v9 >= v5 + 8 * v10) : (v11 = 1), !v11))
    {
      v12 = 0;
LABEL_18:
      v17 = v10 - v12;
      v18 = (v9 + 8 * v12);
      v19 = (v5 + 8 * v12);
      do
      {
        v20 = *v18++;
        *v19 = v20 + *v19;
        ++v19;
        --v17;
      }

      while (v17);
      return a1;
    }

    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (v9 + 16);
    v14 = (v5 + 16);
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vaddq_f64(*v13, *v14);
      v14[-1] = vaddq_f64(v13[-1], v14[-1]);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v8 != v12)
    {
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_100234ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100234F24(double **a1@<X0>, std::string *a2@<X8>)
{
  if (sub_1002C9298(a1))
  {
    v18 = 4;
    strcpy(v17, "null");
  }

  else
  {
    sub_1002B1214((a1 + 3));
  }

  sub_100258810(a1, &v13);
  v4 = std::string::insert(&v13, 0, "MultivariateGaussian(mean:");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v14, ", cov:");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v17[0];
  }

  if (v18 >= 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = v17[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v16, ")");
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v17[0]);
    return;
  }

LABEL_19:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_20;
  }
}

void sub_1002350C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v28 - 17) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((*(v28 - 17) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*(v28 - 40));
  _Unwind_Resume(exception_object);
}

uint64_t sub_100235188(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = *(a1 + 120);
    v5 = *(a1 + 112);
    if (v4 != v3)
    {
      v6 = *(a1 + 120);
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 112);
    }

    *(a1 + 120) = v3;
    operator delete(v5);
  }

  if (*(a1 + 80) == 1)
  {
    v10 = *(a1 + 88);
    if (v10)
    {
      *(a1 + 96) = v10;
      operator delete(v10);
    }

    *(a1 + 80) = 0;
    if (*a1 != 1)
    {
      return a1;
    }
  }

  else if (*a1 != 1)
  {
    return a1;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    *(a1 + 16) = v12;
    operator delete(v12);
  }

  *a1 = 0;
  return a1;
}

float64_t sub_100235280(void *a1, void *a2)
{
  if (a2[1] != a1[1])
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = v3 - v2;
  if (a2[3] - a2[2] != v3 - v2)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v3 != v2)
  {
    v5 = v4 >> 3;
    v6 = a2[2];
    if ((v4 >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 3;
    }

    if (v5 <= 5 || (v2 < v6 + 8 * v7 ? (v8 = v6 >= v2 + 8 * v7) : (v8 = 1), !v8))
    {
      v9 = 0;
LABEL_18:
      v15 = v7 - v9;
      v16 = (v6 + 8 * v9);
      v17 = (v2 + 8 * v9);
      do
      {
        v18 = *v16++;
        v13.f64[0] = v18 + *v17;
        *v17++ = v13.f64[0];
        --v15;
      }

      while (v15);
      return v13.f64[0];
    }

    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 16);
    v11 = (v2 + 16);
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vaddq_f64(v10[-1], v11[-1]);
      v14 = vaddq_f64(*v10, *v11);
      v11[-1] = v13;
      *v11 = v14;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v5 != v9)
    {
      goto LABEL_18;
    }
  }

  return v13.f64[0];
}

void sub_100235400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100235420(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
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
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t *sub_1002354E4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100235188(v2);
    operator delete();
  }

  return a1;
}

void sub_100235538(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10023566C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_100182230(&a11);
  *(v11 + 8) = v12;
  sub_1001822DC(&a9);
  _Unwind_Resume(a1);
}

void sub_10023568C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002356FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10023576C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, int a7, uint64_t a8)
{
  v8 = *a2;
  *a2 = 0;
  v9 = *a3;
  *a3 = 0;
  *result = v8;
  *(result + 8) = v9;
  v10 = *a4;
  *a4 = 0;
  v12 = *a5;
  v11 = a5[1];
  *(result + 16) = v10;
  *(result + 24) = v12;
  *(result + 32) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  *(result + 40) = *a6;
  *(result + 48) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = a7;
  *(result + 64) = a8;
  return result;
}

uint64_t *sub_1002357C8(uint64_t *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_100235910(void *a1, uint64_t a2, double a3)
{
  if (!*(a2 + 24))
  {
    v8 = a1[5];
    v7 = a1[6];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 32);
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a1;
      v11 = a2;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      a1 = v10;
      a2 = v11;
    }
  }

  v4 = *a1;
  v5 = a1[4];
  v12 = a1[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001F9C4C(v14, a2);
  (*(*v4 + 24))(v4, &v12, v14, a3);
  sub_1001F9864(v14);
  v6 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_100235AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1001F9864(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_100235AD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  v11 = *(a1 + 40);
  memset(v15, 0, 24);
  sub_1001CFBC8(v15, *a3, *(a3 + 8), 0x4EC4EC4EC4EC4EC5 * ((*(a3 + 8) - *a3) >> 4));
  memset(&v15[3], 0, 24);
  v13 = *(a3 + 24);
  v12 = *(a3 + 32);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v15[6] = *(a3 + 48);
  v14 = sub_100172010(a4, *(a1 + 56));
  sub_100225DBC(&v16, v15, a5, v14);
  sub_1001E9DBC(v10, a2, v11, &v16);
}

void sub_100235D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_1001CFAA0(&a16);
  sub_1001CFAA0(&a9);
  _Unwind_Resume(a1);
}

void sub_100235DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1001CE6F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100235E18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100235E60()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100235ED0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100235F94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = *(*a1 + 64);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = *(*a1 + 56);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[8 * (v7 >> 1)];
      v12 = *v10;
      v11 = (v10 + 1);
      v7 += ~(v7 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  v13 = v8 - v5;
  v14 = v13 >> 3;
  if ((v13 >> 3) <= 1)
  {
    LODWORD(v14) = 1;
  }

  v15 = (v14 - 1);
  v16 = (v13 >> 3);
  v17 = (v6 >> 3) - 1;
  v18 = v4 == v8;
  if (v4 == v8)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  if (!v18)
  {
    v17 = v16;
  }

  v20 = *(*a1 + 112);
  v21 = (v20 + 24 * v19);
  v22 = (v20 + 24 * v17);
  if (*(v21 + 23) < 0)
  {
    sub_100003228(v25, *v21, *(v21 + 1));
    if ((*(v22 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = *v21;
    v26 = *(v21 + 2);
    *v25 = v23;
    if ((*(v22 + 23) & 0x80000000) == 0)
    {
LABEL_18:
      v24 = *v22;
      __p[2] = *(v22 + 2);
      *__p = v24;
      goto LABEL_21;
    }
  }

  sub_100003228(__p, *v22, *(v22 + 1));
LABEL_21:
  sub_1001181E4(a3, v25);
}

void sub_1002360F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100236110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(v9);
  sub_100047F24(&a9);
  _Unwind_Resume(a1);
}

void sub_100236140(void *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v7 = *(*a1 + 64);
  }

  else
  {
    v6 = v5 >> 3;
    v7 = *(*a1 + 56);
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 1);
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  v12 = (v7 - v4) >> 3;
  if (v12 <= 1)
  {
    LODWORD(v12) = 1;
  }

  v13 = (v12 - 1);
  v14 = (v5 >> 3) - 1;
  if (v3 == v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v17 = v2 + 112;
  v16 = *(v2 + 112);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v17 + 8) - v16) >> 3) > v15)
  {
    v18 = a1[22];
    sub_1001181E4(v19, (v16 + 24 * v15));
  }

  sub_1000BFF58();
}

void sub_100236370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  nullsub_75(&a17);
  sub_1000B9C50(&a9);
  _Unwind_Resume(a1);
}

void sub_1002363A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100118124(va);
  _Unwind_Resume(a1);
}

void sub_1002363B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100236424()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100236494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v8 = a4[1] - *a4;
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "UniformGeneratorBase::setParticleState, for #outputParticles=%zu", buf, 0xCu);
  }

  v26 = 0;
  v27 = 0;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = off_10043DB08;
  v29 = 0;
  v9 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    nullsub_75(buf);
  }

  else
  {
    do
    {
      v12 = sub_10025B320(*(a3 + 40), a2, 1);
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v27;
      v26 = v14;
      v27 = v13;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v26;
      v24[0] = (*(*v26 + 24))(v26);
      v24[1] = v17;
      v24[2] = v18;
      v24[3] = v19;
      sub_10031CE24(v24, a2, v25);
      sub_10012A358(buf, v25);
      nullsub_75(v25);
      v20 = *v9;
      v23 = __PAIR128__(v27, v16);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001E8D30(v20, &v23);
      v21 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v11 = *v9++;
      *(v11 + 16) = *&buf[8];
      *(v11 + 48) = 0;
    }

    while (v9 != v10);
    v22 = v27;
    nullsub_75(buf);
    if (v22)
    {
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }
}

void sub_10023675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  nullsub_75(va1);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002367C4(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004437A8;
  sub_10020E1E8((a1 + 8), a2);
  return a1;
}

void sub_100236808(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v8 = (a4[1] - *a4) >> 3;
    buf.n128_u32[0] = 134217984;
    *(buf.n128_u64 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "WifiHistoryWeight::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  sub_10025DEAC(a3, &v234);
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v9 = v234;
  v10 = v235;
  v215 = a4;
  if (v235 == v234)
  {
    v13 = 0x4EC4EC4EC4EC4EC5 * ((v235 - v234) >> 4);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v14 = v232;
      if (v232 >= v233)
      {
        v16 = v231;
        v17 = v232 - v231;
        v18 = (v232 - v231) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v20 = v233 - v231;
        if ((v233 - v231) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        *(8 * v18) = 0x3F947AE147AE147BLL;
        v15 = 8 * v18 + 8;
        memcpy(0, v16, v17);
        v231 = 0;
        v232 = v15;
        v233 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v232 = 0x3F947AE147AE147BLL;
        v15 = (v14 + 8);
      }

      v232 = v15;
      v22 = (v234 + v11);
      v23 = *(v234 + v11 + 32);
      if (v23 == v23 >> 31)
      {
        v24 = v22[9];
      }

      else
      {
        v27 = *(v22 + 5);
        v25 = (v22 + 5);
        v26 = v27;
        if (v23 < 0)
        {
          v25 = v26;
        }

        v24 = *(v25 + 23);
      }

      a4 = v215;
      if (sub_1001CF958(v24))
      {
        *(v236 + v12) = 0;
      }

      ++v12;
      v9 = v234;
      v10 = v235;
      v13 = 0x4EC4EC4EC4EC4EC5 * ((v235 - v234) >> 4);
      v11 += 208;
    }

    while (v12 < v13);
  }

  v221 = 0;
  v222 = 0;
  v220 = 0;
  sub_1001CFBC8(&v220, v9, v10, v13);
  __p = 0;
  v224 = 0;
  v225 = 0;
  if (v237 != v236)
  {
    if (((v237 - v236) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v226 = v238;
  sub_100225DBC(&v227, &v220, 0, 1.0);
  if (__p)
  {
    v224 = __p;
    operator delete(__p);
  }

  v28 = v220;
  if (v220)
  {
    v29 = v221;
    v30 = v220;
    if (v221 != v220)
    {
      v31 = v221 - 168;
      do
      {
        v34 = *(v29 - 44);
        if (v34 == v34 >> 31)
        {
          if (*(v29 - 128) == 1)
          {
            *(v29 - 128) = 0;
          }
        }

        else
        {
          v32 = *(v29 - 21);
          if (v34 < 0)
          {
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          else
          {
            v33 = *(v29 - 21);
            (*v32)(v29 - 168);
          }
        }

        v29 -= 208;
        v31 -= 208;
      }

      while (v29 != v28);
      v30 = v220;
    }

    v221 = v28;
    operator delete(v30);
  }

  v217 = 0;
  v218 = 0;
  v219 = 0;
  v35 = *a4;
  v36 = a4[1];
  if (*a4 != v36)
  {
    for (i = v35 + 1; i != v36; ++i)
    {
      v38 = *i;
      v39 = sub_10021569C(*v35);
      if (v39 > sub_10021569C(v38))
      {
        v35 = i;
      }
    }
  }

  v40 = sub_10021569C(*v35);
  v42 = *a4;
  v41 = a4[1];
  v43 = 0.0;
  if (v40 == -INFINITY)
  {
    v44 = *a4;
  }

  else
  {
    v44 = a4[1];
    if (v42 != v41)
    {
      do
      {
        v45 = sub_10021569C(*v42);
        v43 = v43 + exp(v45 - v40);
        ++v42;
      }

      while (v42 != v41);
      v44 = *a4;
      v41 = a4[1];
    }
  }

  v46 = log(v43);
  sub_100216AF0(&v217, ((v41 - v44) >> 1) + ((v41 - v44) >> 3));
  v47 = *a4;
  v214 = a4[1];
  if (*a4 == v214)
  {
    goto LABEL_107;
  }

  while (2)
  {
    for (j = 0; j != 5; ++j)
    {
      v49 = *v47;
      v50 = v218;
      if (v218 >= v219)
      {
        v55 = 0xCCCCCCCCCCCCCCCDLL * ((v218 - v217) >> 4) + 1;
        if (v55 > 0x333333333333333)
        {
          sub_10000FC84();
        }

        if (0x999999999999999ALL * ((v219 - v217) >> 4) > v55)
        {
          v55 = 0x999999999999999ALL * ((v219 - v217) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v219 - v217) >> 4) >= 0x199999999999999)
        {
          v56 = 0x333333333333333;
        }

        else
        {
          v56 = v55;
        }

        *&v248 = &v217;
        if (v56)
        {
          if (v56 <= 0x333333333333333)
          {
            operator new();
          }

          sub_10000D444();
        }

        buf.n128_u64[0] = 0;
        buf.n128_u64[1] = 16 * ((v218 - v217) >> 4);
        v247 = buf.n128_u64[1];
        sub_100217150(buf.n128_u64[1], v49);
        v58 = v49[1];
        v59 = v49[2];
        v57[3].n128_u16[0] = v49[3].n128_u16[0];
        v57[1] = v58;
        v57[2] = v59;
        v57[3].n128_u64[1] = v49[3].n128_u64[1];
        v60 = v49[4].n128_u64[0];
        v57[4].n128_u64[0] = v60;
        if (v60)
        {
          atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
        }

        v57[4].n128_u64[1] = v49[4].n128_u64[1];
        v54 = (v247 + 80);
        *&v247 = v247 + 80;
        v62 = v217;
        v61 = v218;
        v240.n128_u64[0] = &v217;
        v240.n128_u64[1] = v216;
        v241.n128_u64[0] = v239;
        v241.n128_u8[8] = 0;
        v63 = (buf.n128_u64[1] + v217 - v218);
        v239[0] = v63;
        v216[0] = v63;
        if (v217 != v218)
        {
          v64 = (buf.n128_u64[1] + v217 - v218);
          v65 = v217;
          do
          {
            sub_100217150(v64, v65);
            v67 = v65[1];
            v68 = v65[2];
            v66[3].n128_u16[0] = v65[3].n128_u16[0];
            v66[1] = v67;
            v66[2] = v68;
            v66[3].n128_u64[1] = v65[3].n128_u64[1];
            v69 = v65[4].n128_u64[0];
            v66[4].n128_u64[0] = v69;
            if (v69)
            {
              atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
            }

            v66[4].n128_u64[1] = v65[4].n128_u64[1];
            v65 += 5;
            v64 = (v239[0] + 80);
            v239[0] = v239[0] + 80;
          }

          while (v65 != v61);
          v241.n128_u8[8] = 1;
          do
          {
            v70 = v62[4].n128_u64[0];
            if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v70->__on_zero_shared)(v70);
              std::__shared_weak_count::__release_weak(v70);
            }

            v62 += 5;
          }

          while (v62 != v61);
          if ((v241.n128_u8[8] & 1) == 0)
          {
            v106 = *v241.n128_u64[0];
            v107 = *v240.n128_u64[1];
            while (v106 != v107)
            {
              v108 = *(v106 - 16);
              if (v108 && !atomic_fetch_add(&v108->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v108->__on_zero_shared)(v108);
                std::__shared_weak_count::__release_weak(v108);
              }

              v106 -= 80;
            }
          }
        }

        v71 = v217;
        v217 = v63;
        v218 = v54;
        v219 = *(&v247 + 1);
        if (v71)
        {
          operator delete(v71);
        }

        v218 = v54;
        if (!j)
        {
          continue;
        }
      }

      else
      {
        sub_100217150(v218, *v47);
        v51 = v49[1];
        v52 = v49[2];
        v50[3].n128_u16[0] = v49[3].n128_u16[0];
        v50[1] = v51;
        v50[2] = v52;
        v50[3].n128_u64[1] = v49[3].n128_u64[1];
        v53 = v49[4].n128_u64[0];
        v50[4].n128_u64[0] = v53;
        if (v53)
        {
          atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
        }

        v50[4].n128_u64[1] = v49[4].n128_u64[1];
        v54 = v50 + 5;
        v218 = v54;
        if (!j)
        {
          continue;
        }
      }

      v54[-3].n128_f64[1] = (*(*a2 + 24))(a2, -2.0, 2.0) + v54[-3].n128_f64[1];
      v72 = (*(*v54[-2].n128_u64[1] + 16))(v54[-2].n128_u64[1]);
      v73 = *(*a2 + 24);
      if (!v72)
      {
        v101 = v73(a2, 0.0, 20.0);
        v102 = (*(*a2 + 48))(a2);
        v103 = v101 + 5.0;
        v104 = v54[-4].n128_f64[0];
        v105 = __sincos_stret(v102);
        v79 = v104 + v103 * v105.__cosval;
        v80 = v54[-4].n128_f64[1] + v103 * v105.__sinval;
LABEL_61:
        v54[-4].n128_f64[0] = v79;
        v54[-4].n128_f64[1] = v80;
        continue;
      }

      v74 = v73(a2, 0.0, 20.0);
      v75 = (*(*a2 + 48))(a2);
      v76 = v74 + 5.0;
      v77 = v54[-4].n128_f64[0];
      v78 = __sincos_stret(v75);
      v79 = v77 + v76 * v78.__cosval;
      v80 = v54[-4].n128_f64[1] + v76 * v78.__sinval;
      if ((*(*v72 + 16))(v72, v79, v80))
      {
        goto LABEL_61;
      }

      v81 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v82 = (*(*a2 + 48))(a2);
      v83 = v81 + 5.0;
      v84 = v54[-4].n128_f64[0];
      v85 = __sincos_stret(v82);
      v79 = v84 + v83 * v85.__cosval;
      v80 = v54[-4].n128_f64[1] + v83 * v85.__sinval;
      if ((*(*v72 + 16))(v72, v79, v80))
      {
        goto LABEL_61;
      }

      v86 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v87 = (*(*a2 + 48))(a2);
      v88 = v86 + 5.0;
      v89 = v54[-4].n128_f64[0];
      v90 = __sincos_stret(v87);
      v79 = v89 + v88 * v90.__cosval;
      v80 = v54[-4].n128_f64[1] + v88 * v90.__sinval;
      if ((*(*v72 + 16))(v72, v79, v80))
      {
        goto LABEL_61;
      }

      v91 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v92 = (*(*a2 + 48))(a2);
      v93 = v91 + 5.0;
      v94 = v54[-4].n128_f64[0];
      v95 = __sincos_stret(v92);
      v79 = v94 + v93 * v95.__cosval;
      v80 = v54[-4].n128_f64[1] + v93 * v95.__sinval;
      if ((*(*v72 + 16))(v72, v79, v80))
      {
        goto LABEL_61;
      }

      v96 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v97 = (*(*a2 + 48))(a2);
      v98 = v96 + 5.0;
      v99 = v54[-4].n128_f64[0];
      v100 = __sincos_stret(v97);
      v79 = v99 + v98 * v100.__cosval;
      v80 = v54[-4].n128_f64[1] + v98 * v100.__sinval;
      if ((*(*v72 + 16))(v72, v79, v80))
      {
        goto LABEL_61;
      }
    }

    if (++v47 != v214)
    {
      continue;
    }

    break;
  }

LABEL_107:
  sub_10020E218((a1 + 8), &v217, &v231, &v227, v216);
  v110 = v217;
  v109 = v218;
  if (v218 == v217)
  {
    v115 = v215[1] - *v215;
    if (0xCCCCCCCCCCCCCCCDLL * ((v218 - v217) >> 4) >= v115 >> 3)
    {
      goto LABEL_113;
    }

LABEL_159:
    sub_1000474A4(&v240, "");
    sub_1000BDA70("Didn't generate enough hypotheses for output!", &buf);
    sub_1000E661C(&v240, &buf, 1);
    if (SBYTE7(v247) < 0)
    {
      operator delete(buf.n128_u64[0]);
    }

    if (v241.n128_i8[7] < 0)
    {
      operator delete(v240.n128_u64[0]);
    }

    sub_10003F5D0(v239);
  }

  v111 = 0;
  v112 = 0;
  do
  {
    if (fabs(*(v216[0] + v112)) == INFINITY)
    {
      *(v216[0] + v112) = 0xC202A05F20000000;
    }

    v113 = sub_10021569C(&v110[v111]);
    sub_10021715C(&v110[v111], *(v216[0] + v112++) - v113);
    v110 = v217;
    v109 = v218;
    v114 = 0xCCCCCCCCCCCCCCCDLL * ((v218 - v217) >> 4);
    v111 += 80;
  }

  while (v112 < v114);
  v115 = v215[1] - *v215;
  if (v114 < v115 >> 3)
  {
    goto LABEL_159;
  }

LABEL_113:
  if (v115 << 29)
  {
    v116 = (v115 >> 3);
    if (v116 >= 2)
    {
      v117 = (v116 - 2) >> 1;
      v118 = v117 + 1;
      v119 = &v110[80 * v117];
      do
      {
        sub_10023ABF8(v110, (v115 >> 3), v119);
        v119 -= 80;
        --v118;
      }

      while (v118);
    }

    v120 = &v110[80 * (v115 >> 3)];
    if (v120 != v109)
    {
      v211 = &v110[80 * (v115 >> 3)];
      do
      {
        v212 = sub_10021569C(v211);
        if (v212 > sub_10021569C(v110))
        {
          sub_1001EE0EC(v211, v110);
          sub_10023ABF8(v110, v116, v110);
        }

        v211 += 80;
      }

      while (v211 != v109);
    }

    if (v116 >= 2)
    {
      do
      {
        v122 = v120;
        sub_100217150(&v240, v110);
        v123 = 0;
        v124 = *(v110 + 1);
        v125 = *(v110 + 2);
        v126 = *(v110 + 24);
        v244 = *(v110 + 56);
        v243 = v126;
        *(v110 + 7) = 0;
        *(v110 + 8) = 0;
        v245 = *(v110 + 9);
        v127 = v110;
        v241 = v124;
        v242 = v125;
        do
        {
          v128 = v127;
          v127 += 80 * v123 + 80;
          v129 = 2 * v123;
          v123 = (2 * v123) | 1;
          v130 = v129 + 2;
          if (v129 + 2 < v116)
          {
            v131 = sub_10021569C(v127);
            if (v131 > sub_10021569C(v127 + 80))
            {
              v127 += 80;
              v123 = v130;
            }
          }

          sub_100217150(v128, v127);
          v132 = *(v127 + 16);
          v133 = *(v127 + 32);
          *(v128 + 48) = *(v127 + 48);
          *(v128 + 16) = v132;
          *(v128 + 32) = v133;
          v134 = *(v127 + 56);
          *(v127 + 56) = 0;
          *(v127 + 64) = 0;
          v135 = *(v128 + 64);
          *(v128 + 56) = v134;
          if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
          }

          *(v128 + 72) = *(v127 + 72);
        }

        while (v123 <= ((v116 - 2) >> 1));
        v120 = v122 - 5;
        if (v127 == &v122[-5])
        {
          sub_100217150(v127, &v240);
          v162 = v241;
          v163 = v242;
          *(v127 + 48) = v243;
          *(v127 + 16) = v162;
          *(v127 + 32) = v163;
          v164 = v244;
          v244 = 0uLL;
          v165 = *(v127 + 64);
          *(v127 + 56) = v164;
          if (v165 && !atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
          }

          *(v127 + 72) = v245;
          goto LABEL_153;
        }

        sub_100217150(v127, v122 - 5);
        v136 = v122[-4];
        v137 = v122[-3];
        *(v127 + 48) = v122[-2].n128_u16[0];
        *(v127 + 16) = v136;
        *(v127 + 32) = v137;
        v138 = *(&v122[-2] + 8);
        v122[-2].n128_u64[1] = 0;
        v122[-1].n128_u64[0] = 0;
        v139 = *(v127 + 64);
        *(v127 + 56) = v138;
        if (v139 && !atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        *(v127 + 72) = v122[-1].n128_u64[1];
        sub_100217150(v122 - 5, &v240);
        v140 = v122 - 4;
        v141 = v241;
        v142 = v242;
        v140[2].n128_u16[0] = v243;
        *v140 = v141;
        v140[1] = v142;
        v143 = v244;
        v244 = 0uLL;
        v144 = v122[-1].n128_u64[0];
        *(v122 - 24) = v143;
        if (v144 && !atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v144->__on_zero_shared)(v144);
          std::__shared_weak_count::__release_weak(v144);
          v122[-1].n128_u64[1] = v245;
          v145 = v127 + 80 - v110;
          if (v145 >= 81)
          {
LABEL_136:
            v146 = (-2 - 0x3333333333333333 * (v145 >> 4)) >> 1;
            v147 = &v110[80 * v146];
            v148 = sub_10021569C(v147);
            if (v148 > sub_10021569C(v127))
            {
              sub_100217150(&buf, v127);
              v149 = *(v127 + 16);
              v150 = *(v127 + 32);
              v249 = *(v127 + 48);
              v247 = v149;
              v248 = v150;
              v250 = *(v127 + 56);
              *(v127 + 56) = 0;
              *(v127 + 64) = 0;
              v251 = *(v127 + 72);
              do
              {
                v151 = v147;
                sub_100217150(v127, v147);
                v152 = *(v147 + 16);
                v153 = *(v147 + 32);
                *(v127 + 48) = *(v147 + 48);
                *(v127 + 16) = v152;
                *(v127 + 32) = v153;
                v154 = *(v147 + 56);
                *(v147 + 56) = 0;
                *(v147 + 64) = 0;
                v155 = *(v127 + 64);
                *(v127 + 56) = v154;
                if (v155 && !atomic_fetch_add(&v155->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v155->__on_zero_shared)(v155);
                  std::__shared_weak_count::__release_weak(v155);
                }

                *(v127 + 72) = *(v151 + 72);
                if (!v146)
                {
                  break;
                }

                v146 = (v146 - 1) >> 1;
                v147 = &v110[80 * v146];
                v156 = sub_10021569C(v147);
                v127 = v151;
              }

              while (v156 > sub_10021569C(&buf));
              sub_100217150(v151, &buf);
              v157 = v247;
              v158 = v248;
              *(v151 + 48) = v249;
              *(v151 + 16) = v157;
              *(v151 + 32) = v158;
              v159 = v250;
              v250 = 0uLL;
              v160 = *(v151 + 64);
              *(v151 + 56) = v159;
              if (v160 && !atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v160->__on_zero_shared)(v160);
                std::__shared_weak_count::__release_weak(v160);
              }

              v161 = *(&v250 + 1);
              *(v151 + 72) = v251;
              if (v161 && !atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v161->__on_zero_shared)(v161);
                std::__shared_weak_count::__release_weak(v161);
              }
            }
          }
        }

        else
        {
          v122[-1].n128_u64[1] = v245;
          v145 = v127 + 80 - v110;
          if (v145 >= 81)
          {
            goto LABEL_136;
          }
        }

LABEL_153:
        v166 = v244.n128_u64[1];
        if (v244.n128_u64[1] && !atomic_fetch_add((v244.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v166->__on_zero_shared)(v166);
          std::__shared_weak_count::__release_weak(v166);
        }
      }

      while (v116-- > 2);
    }
  }

  v167 = *v215;
  v168 = v215[1];
  if (v168 != *v215)
  {
    v169 = 0;
    v170 = 0;
    do
    {
      v171 = v217;
      v172 = v217 + v169;
      v173 = v167[v170];
      sub_100217150(v173, (v217 + v169));
      v174 = *(v172 + 1);
      v175 = *(v172 + 2);
      *(v173 + 48) = *(v172 + 24);
      *(v173 + 16) = v174;
      *(v173 + 32) = v175;
      v176 = *(v172 + 56);
      *(v172 + 7) = 0;
      *(v172 + 8) = 0;
      v177 = *(v173 + 64);
      *(v173 + 56) = v176;
      if (v177 && !atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v177->__on_zero_shared)(v177);
        std::__shared_weak_count::__release_weak(v177);
      }

      *(v173 + 72) = *&v171[v169 + 72];
      ++v170;
      v167 = *v215;
      v168 = v215[1];
      v169 += 80;
    }

    while (v170 < (v168 - *v215) >> 3);
  }

  if (v167 != v168)
  {
    for (k = v167 + 1; k != v168; ++k)
    {
      v179 = *k;
      v180 = sub_10021569C(*v167);
      if (v180 > sub_10021569C(v179))
      {
        v167 = k;
      }
    }
  }

  v181 = sub_10021569C(*v167);
  v183 = *v215;
  v182 = v215[1];
  v184 = 0.0;
  if (v181 != -INFINITY && v183 != v182)
  {
    do
    {
      v185 = sub_10021569C(*v183);
      v184 = v184 + exp(v185 - v181);
      ++v183;
    }

    while (v183 != v182);
    v183 = *v215;
    v182 = v215[1];
  }

  v186 = log(v184);
  if (v182 != v183)
  {
    v187 = 0;
    v188 = v40 + v46;
    v189 = v188 - (v181 + v186);
    v190 = fabs(v189);
    do
    {
      if (v190 < 0x7FF0000000000000)
      {
        v192 = v189;
      }

      else
      {
        v191 = sub_10021569C(v183[v187]);
        v183 = *v215;
        v192 = v188 - log(((v215[1] - *v215) >> 3)) - v191;
      }

      sub_10021715C(v183[v187], v192);
      if ((COERCE_UNSIGNED_INT64(sub_10021569C(*(*v215 + 8 * v187))) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        sub_1000474A4(&v240, "");
        sub_10023AEF4("Should be no NaNs", &buf);
        sub_1000E661C(&v240, &buf, 1);
        if (SBYTE7(v247) < 0)
        {
          operator delete(buf.n128_u64[0]);
        }

        if (v241.n128_i8[7] < 0)
        {
          operator delete(v240.n128_u64[0]);
        }

        sub_10003F5D0(v239);
      }

      ++v187;
      v183 = *v215;
    }

    while (v187 < (v215[1] - *v215) >> 3);
  }

  if (v216[0])
  {
    v216[1] = v216[0];
    operator delete(v216[0]);
  }

  v193 = v217;
  if (v217)
  {
    v194 = v218;
    v195 = v217;
    if (v218 != v217)
    {
      do
      {
        v196 = v194[-1].n128_u64[0];
        if (v196 && !atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v196->__on_zero_shared)(v196);
          std::__shared_weak_count::__release_weak(v196);
        }

        v194 -= 5;
      }

      while (v194 != v193);
      v195 = v217;
    }

    v218 = v193;
    operator delete(v195);
  }

  if (v229)
  {
    v230 = v229;
    operator delete(v229);
  }

  v197 = v227;
  if (v227)
  {
    v198 = v228;
    v199 = v227;
    if (v228 != v227)
    {
      v200 = v228 - 168;
      do
      {
        v203 = *(v198 - 44);
        if (v203 == v203 >> 31)
        {
          if (*(v198 - 128) == 1)
          {
            *(v198 - 128) = 0;
          }
        }

        else
        {
          v201 = *(v198 - 21);
          if (v203 < 0)
          {
            if (v201)
            {
              (*(*v201 + 8))(v201);
            }
          }

          else
          {
            v202 = *(v198 - 21);
            (*v201)(v198 - 168);
          }
        }

        v198 -= 208;
        v200 -= 208;
      }

      while (v198 != v197);
      v199 = v227;
    }

    v228 = v197;
    operator delete(v199);
  }

  if (v231)
  {
    v232 = v231;
    operator delete(v231);
  }

  if (v236)
  {
    v237 = v236;
    operator delete(v236);
  }

  v204 = v234;
  if (v234)
  {
    v205 = v235;
    v206 = v234;
    if (v235 != v234)
    {
      v207 = v235 - 168;
      do
      {
        v210 = *(v205 - 44);
        if (v210 == v210 >> 31)
        {
          if (*(v205 - 128) == 1)
          {
            *(v205 - 128) = 0;
          }
        }

        else
        {
          v208 = *(v205 - 21);
          if (v210 < 0)
          {
            if (v208)
            {
              (*(*v208 + 8))(v208);
            }
          }

          else
          {
            v209 = *(v205 - 21);
            (*v208)(v205 - 168);
          }
        }

        v205 -= 208;
        v207 -= 208;
      }

      while (v205 != v204);
      v206 = v234;
    }

    v235 = v204;
    operator delete(v206);
  }
}

void sub_100237FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_1001E4D4C(&a15);
  sub_1001CFAA0(&a25);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
    v56 = a40;
    if (!a40)
    {
LABEL_7:
      v57 = a37;
      if (!a37)
      {
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_100386060(&a38, v57, &a37);
      goto LABEL_12;
    }
  }

  else
  {
    v56 = a40;
    if (!a40)
    {
      goto LABEL_7;
    }
  }

  a41 = v56;
  operator delete(v56);
  v57 = a37;
  if (!a37)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t sub_10023819C(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = off_1004437D0;
  sub_100145110(a1 + 8, a3);
  *(a1 + 64) = a2;
  return a1;
}

void sub_1002381EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int64x2_t *a5)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v9 = (a4[1] - *a4) >> 3;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "WifiBoundsGeneratorBase::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  buf = 0u;
  v81 = 0u;
  v82 = 1065353216;
  v11 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    v14 = 0;
  }

  else
  {
    do
    {
      v12 = sub_10025B320(*(a3 + 40), a2, *(a1 + 64));
      v13 = sub_100238B64(&buf, v12);
      sub_10003ABD8(v13, v11++);
    }

    while (v11 != v10);
    v14 = v81;
  }

  v74 = 0uLL;
  v73 = off_10043DB08;
  v75 &= 0xFCu;
  if (!v14)
  {
    goto LABEL_82;
  }

  while (2)
  {
    v71 = 0;
    v72 = 0;
    __p = 0;
    if (*(*(*v14[2] + 40))(v14[2]))
    {
      v16 = (*(*v14[2] + 40))(v14[2]);
      (*(**v16 + 56))(v76);
      v18 = v76[0];
      v17 = v76[1];
      *&v79 = 0;
      v78 = 0uLL;
      if (v76[0] == v76[1])
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (*v18)
          {
            v22 = v20;
            if (((v20 >> 4) + 1) >> 60)
            {
              *&v78 = 0;
              *(&v78 + 1) = v20;
              *&v79 = 0;
              sub_10000FC84();
            }

            if (v20 >> 4 != -1)
            {
              if (!(((v20 >> 4) + 1) >> 60))
              {
                operator new();
              }

              *&v78 = 0;
              *(&v78 + 1) = v20;
              *&v79 = 0;
              sub_10000D444();
            }

            v21 = 0;
            v23 = (16 * (v20 >> 4));
            *v23 = *v18;
            v24 = v18[1];
            v23[1] = v24;
            if (v24)
            {
              atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = 0;
            v20 = (v23 + 2);
            memcpy(0, 0, v22);
          }

          v18 += 2;
        }

        while (v18 != v17);
        *&v78 = 0;
        *(&v78 + 1) = v20;
        *&v79 = 0;
        v25 = __p;
        if (__p)
        {
          v26 = v71;
          v27 = __p;
          if (v71 != __p)
          {
            do
            {
              v28 = *(v26 - 1);
              if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v28->__on_zero_shared)(v28);
                std::__shared_weak_count::__release_weak(v28);
              }

              v26 -= 16;
            }

            while (v26 != v25);
            v27 = __p;
          }

          v71 = v25;
          operator delete(v27);
          v20 = *(&v78 + 1);
          v21 = v78;
          v19 = v79;
        }
      }

      __p = v21;
      v71 = v20;
      v72 = v19;
      *&v79 = 0;
      v78 = 0uLL;
      v29 = v76[0];
      if (v76[0])
      {
        v30 = v76[1];
        v31 = v76[0];
        if (v76[1] != v76[0])
        {
          do
          {
            v32 = *(v30 - 1);
            if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v32->__on_zero_shared)(v32);
              std::__shared_weak_count::__release_weak(v32);
            }

            v30 -= 16;
          }

          while (v30 != v29);
          v31 = v76[0];
        }

        v76[1] = v29;
        operator delete(v31);
      }
    }

    else
    {
      __p = 0;
      v71 = 0;
      v72 = 0;
    }

    v33 = v14[4];
    v34 = v14[5];
    while (v33 != v34)
    {
      v36 = __p;
      v37 = v71;
      if (__p == v71)
      {
        *&v78 = (*(*v14[2] + 24))(v14[2]);
        *(&v78 + 1) = v49;
        *&v79 = v50;
        *(&v79 + 1) = v51;
        sub_10031CE24(&v78, a2, v76);
        sub_10012A358(&v73, v76);
        nullsub_75(v76);
        v52 = *v33;
        v53 = v14[3];
        *&v65 = v14[2];
        *(&v65 + 1) = v53;
        if (!v53)
        {
          goto LABEL_72;
        }

LABEL_71:
        atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
        goto LABEL_72;
      }

      v38 = (*(*v14[2] + 16))(v14[2]);
      v39 = *(a1 + 48);
      v41 = *(a1 + 40);
      v40 = *(a1 + 44);
      v78 = xmmword_1003DE5A0;
      v79 = unk_1003DE5B0;
      v42 = (v37 - v36) >> 4;
      if (v42 >= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = (v37 - v36) >> 4;
      }

      if (v43)
      {
        v44 = 1;
        do
        {
          v45 = (*(*a2 + 88))(a2, v42);
          v46 = (*(**&v36[16 * v45] + 32))(*&v36[16 * v45]);
          v47 = v46[1];
          *v76 = *v46;
          v77 = v47;
          if (sub_10031C818(v76, &v78))
          {
            sub_10031C5F8(&v78, v76);
          }
        }

        while ((*(*a2 + 32))(a2) >= v39 && v44++ < v43);
      }

      v66 = off_10043DB08;
      v67 = 0.0;
      v68 = 0.0;
      v69 &= 0xFCu;
      if (v41)
      {
        while (1)
        {
          sub_10031CE24(&v78, a2, v76);
          sub_10012A358(&v66, v76);
          nullsub_75(v76);
          if ((*(*v38 + 16))(v38, v67, v68))
          {
            break;
          }

          if (!--v41)
          {
            goto LABEL_66;
          }
        }

        sub_1002C50C0(a5);
      }

      else
      {
LABEL_66:
        sub_1002C50D0(a5);
      }

      sub_10012A358(&v73, &v66);
      nullsub_75(&v66);
      v52 = *v33;
      v53 = v14[3];
      *&v65 = v14[2];
      *(&v65 + 1) = v53;
      if (v53)
      {
        goto LABEL_71;
      }

LABEL_72:
      sub_1001E8D30(v52, &v65);
      v54 = *(&v65 + 1);
      if (*(&v65 + 1) && !atomic_fetch_add((*(&v65 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v54->__on_zero_shared)(v54);
        std::__shared_weak_count::__release_weak(v54);
      }

      v35 = *v33++;
      *(v35 + 16) = v74;
      *(v35 + 48) = 0;
    }

    v15 = __p;
    if (__p)
    {
      v55 = v71;
      if (v71 != __p)
      {
        do
        {
          v56 = *(v55 - 1);
          if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v55 -= 16;
        }

        while (v55 != v15);
        v15 = __p;
      }

      operator delete(v15);
    }

    v14 = *v14;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_82:
  v57 = nullsub_75(&v73);
  v58 = v81;
  while (v58)
  {
    v59 = v58;
    v58 = *v58;
    v60 = v59[4];
    if (v60)
    {
      v59[5] = v60;
      operator delete(v60);
    }

    v61 = v59[3];
    if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61, v57);
      std::__shared_weak_count::__release_weak(v61);
    }

    operator delete(v59);
  }

  v62 = buf;
  *&buf = 0;
  if (v62)
  {
    operator delete(v62);
  }
}

void sub_100238AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100048F1C(va);
  nullsub_75(va1);
  sub_100239060(v12 - 160);
  _Unwind_Resume(a1);
}

void *sub_100238B64(void *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  v11 = *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v11)
        {
          return v10 + 4;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v10[1];
    if (v13 == v5)
    {
      break;
    }

    if (v13 >= *&v6)
    {
      v13 %= *&v6;
    }

    if (v13 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != v11)
  {
    goto LABEL_17;
  }

  return v10 + 4;
}

void sub_10023904C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023AF44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100239060(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[4];
    if (v4)
    {
      v3[5] = v4;
      operator delete(v4);
    }

    v5 = v3[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
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

uint64_t sub_100239120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 8);
  for (i = *(result + 16); v5 != i; result = (*(*v11 + 16))(v11, a2, a3, a4, a5))
  {
    v11 = *v5++;
  }

  return result;
}

void sub_1002391A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (*(a3 + 80) == 1 && !sub_10017226C(a3 + 88) && (*(a3 + 280) & 0x8080) == 0x8080)
  {
    v7 = *a4;
    v8 = a4[1];
    if (*a4 != v8)
    {
      do
      {
        v9 = sub_1000BC004(*(a3 + 248));
        v10 = *(a3 + 192);
        (*(**(*v7 + 56) + 48))(&v17);
        v11 = sub_1000BC6A0(&v17, v10);
        *(*v7 + 32) = v11 + (*(*a2 + 64))(a2, 0.0, v9);
        v12 = v18;
        if (v18)
        {
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }
  }

  else
  {
    v13 = *a4;
    for (i = a4[1]; v13 != i; *(v16 + 32) = v15)
    {
      v15 = (*(*a2 + 48))(a2);
      v16 = *v13++;
    }
  }
}

void *sub_100239368(void *a1, uint64_t a2)
{
  *a1 = off_1004437F8;
  sub_100250BA8(a2, (a1 + 1));
  return a1;
}

void sub_1002393B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int64x2_t *a5)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v10 = (a4[1] - *a4) >> 3;
    buf.n128_u32[0] = 134217984;
    *(buf.n128_u64 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Multiphone::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  *v50 = 0u;
  *v51 = 0u;
  v52 = 1065353216;
  v12 = *a4;
  v11 = a4[1];
  if (*a4 == v11)
  {
LABEL_44:
    v36 = v51[0];
    if (v51[0])
    {
      do
      {
        v37 = v36;
        v36 = *v36;
        v38 = v37[4];
        if (v38)
        {
          v37[5] = v38;
          operator delete(v38);
        }

        v39 = v37[3];
        if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        operator delete(v37);
      }

      while (v36);
    }
  }

  else
  {
    do
    {
      v13 = sub_100238B64(v50, (*v12 + 56));
      sub_10003ABD8(v13, v12++);
    }

    while (v12 != v11);
    v14 = v51[0];
    if (v51[0])
    {
      while (1)
      {
        (*(**(a3 + 64) + 16))(&__p);
        v16 = (*(*v14[2] + 40))(v14[2]);
        (*(**v16 + 48))(&buf);
        v17 = buf;
        *v46 = buf;
        v47 = v54;
        v19 = v14[4];
        v18 = v14[5];
        if (v19 != v18)
        {
          break;
        }

        v26 = buf.n128_u64[0];
        if (!buf.n128_u64[0])
        {
          goto LABEL_33;
        }

LABEL_25:
        v27 = v46[1];
        v28 = v26;
        if (v46[1] != v26)
        {
          do
          {
            v29 = *(v27 - 1);
            if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v29->__on_zero_shared)(v29, v17);
              std::__shared_weak_count::__release_weak(v29);
            }

            v27 -= 16;
          }

          while (v27 != v26);
          v28 = v46[0];
        }

        v46[1] = v26;
        operator delete(v28);
LABEL_33:
        v30 = __p;
        if (__p)
        {
          v31 = v49;
          v15 = __p;
          if (v49 != __p)
          {
            v32 = v49 - 168;
            do
            {
              v35 = *(v31 - 44);
              if (v35 == v35 >> 31)
              {
                if (*(v31 - 128) == 1)
                {
                  *(v31 - 128) = 0;
                }
              }

              else
              {
                v33 = *(v31 - 21);
                if (v35 < 0)
                {
                  if (v33)
                  {
                    (*(*v33 + 8))(v33, v17);
                  }
                }

                else
                {
                  v34 = *(v31 - 21);
                  (*v33)(v31 - 168);
                }
              }

              v31 -= 208;
              v32 -= 208;
            }

            while (v31 != v30);
            v15 = __p;
          }

          v49 = v30;
          operator delete(v15);
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_44;
        }
      }

      while (1)
      {
        v43 = off_10043DB08;
        v44 = 0uLL;
        v45 &= 0xFCu;
        v44 = *(*v19 + 16);
        v20 = (*(*v14[2] + 40))(v14[2]);
        (*(**v20 + 16))(&buf);
        v42[0] = sub_100258CE4(a1 + 8, &buf, v46, &__p);
        v42[1] = v21;
        v42[2] = v22;
        sub_1002590E8(a1 + 8, v42, a2, a2, a5, v42[0]);
        *(*v19 + 40) = v23;
        v24 = v55;
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
          v25 = buf.n128_u64[1];
          if (buf.n128_u64[1])
          {
LABEL_18:
            if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }
          }
        }

        else
        {
          v25 = buf.n128_u64[1];
          if (buf.n128_u64[1])
          {
            goto LABEL_18;
          }
        }

        v17 = nullsub_75(&v43);
        if (++v19 == v18)
        {
          v26 = v46[0];
          if (!v46[0])
          {
            goto LABEL_33;
          }

          goto LABEL_25;
        }
      }
    }
  }

  v40 = v50[0];
  v50[0] = 0;
  if (v40)
  {
    operator delete(v40);
  }
}

void sub_100239904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100239060(va);
  _Unwind_Resume(a1);
}

void sub_100239918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_1001CE6F4(va);
  sub_100239060(va1);
  _Unwind_Resume(a1);
}

void sub_100239934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100239060(va);
  _Unwind_Resume(a1);
}

void sub_100239948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1001736CC(&a29);
  nullsub_75(&a13);
  sub_100048F1C(&a17);
  sub_1001CE6F4(&a20);
  sub_100239060(&a23);
  _Unwind_Resume(a1);
}

void *sub_100239984(void *a1, uint64_t a2)
{
  *a1 = off_100443820;
  sub_100145110((a1 + 1), a2);
  return a1;
}

void sub_1002399C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 80))
  {
    sub_1001300D0(v7, a3 + 88);
    sub_1000BF8EC(a3, &v6);
    v4 = (*(*v6 + 56))(v6);
    sub_10011B8B8(v5, v4);
    sub_1000B9540(v5);
  }

  sub_1000474A4(v7, "");
  sub_10023AFE8("Trying to inject particles from a non-existent external (GPS-like) measurement!", &v9);
  sub_100382FC4(&v9, v8, v7);
  sub_10003F5D0(v8);
}

void sub_10023A5D0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_10023A8D0(void *a1)
{
  *a1 = off_1004437D0;
  sub_1001451B0((a1 + 1));
  return a1;
}

void sub_10023A914(void *a1)
{
  *a1 = off_1004437D0;
  sub_1001451B0((a1 + 1));

  operator delete();
}

void *sub_10023A978(void *a1)
{
  *a1 = off_1004438C8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10023AA24(void *a1)
{
  *a1 = off_1004438C8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  operator delete();
}

void *sub_10023AB20(void *a1)
{
  *a1 = off_100443820;
  sub_1001451B0((a1 + 1));
  return a1;
}

void sub_10023AB64(void *a1)
{
  *a1 = off_100443820;
  sub_1001451B0((a1 + 1));

  operator delete();
}

void sub_10023ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a3 - a1) >> 4)))
    {
      v8 = (0x999999999999999ALL * ((a3 - a1) >> 4)) | 1;
      v9 = a1 + 80 * v8;
      v10 = 0x999999999999999ALL * ((a3 - a1) >> 4) + 2;
      if (v10 < a2)
      {
        v11 = sub_10021569C(a1 + 80 * v8);
        if (v11 > sub_10021569C(v9 + 80))
        {
          v9 += 80;
          v8 = v10;
        }
      }

      v12 = sub_10021569C(v9);
      if (v12 <= sub_10021569C(v4))
      {
        sub_100217150(&v28, v4);
        v13 = *(v4 + 16);
        v14 = *(v4 + 32);
        v31 = *(v4 + 48);
        v29 = v13;
        v30 = v14;
        v32 = *(v4 + 56);
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        v33 = *(v4 + 72);
        do
        {
          v15 = v9;
          sub_100217150(v4, v9);
          v16 = *(v9 + 16);
          v17 = *(v9 + 32);
          *(v4 + 48) = *(v9 + 48);
          *(v4 + 16) = v16;
          *(v4 + 32) = v17;
          v18 = *(v9 + 56);
          *(v9 + 56) = 0;
          *(v9 + 64) = 0;
          v19 = *(v4 + 64);
          *(v4 + 56) = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          *(v4 + 72) = *(v15 + 72);
          if (v6 < v8)
          {
            break;
          }

          v20 = (2 * v8) | 1;
          v9 = a1 + 80 * v20;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v20;
          }

          else
          {
            v21 = sub_10021569C(a1 + 80 * v20);
            if (v21 <= sub_10021569C(v9 + 80))
            {
              v8 = v20;
            }

            else
            {
              v9 += 80;
            }
          }

          v22 = sub_10021569C(v9);
          v4 = v15;
        }

        while (v22 <= sub_10021569C(&v28));
        sub_100217150(v15, &v28);
        v23 = v29;
        v24 = v30;
        *(v15 + 48) = v31;
        *(v15 + 16) = v23;
        *(v15 + 32) = v24;
        v25 = v32;
        v32 = 0uLL;
        v26 = *(v15 + 64);
        *(v15 + 56) = v25;
        if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v27 = *(&v32 + 1);
        *(v15 + 72) = v33;
        if (v27)
        {
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }
        }
      }
    }
  }
}

std::string *sub_10023AEF4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023AF28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023AF44(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[4];
      if (v3)
      {
        v2[5] = v3;
        operator delete(v3);
      }

      v4 = v2[3];
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

std::string *sub_10023AFE8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023B01C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023B038(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = nullsub_75(i - 32);
    v5 = *(i - 40);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5, v4);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10023B0E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023B158()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10023B1C8(int a1@<W0>, std::string *a2@<X8>)
{
  v4 = strerror(a1);
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = std::string::insert(&__dst, 0, "ERRNO: ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v18, " (");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v13 = std::string::append(&v19, p_p, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v20, ")");
  *a2 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_22:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_10023B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

std::string *sub_10023B498@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1 <= 1545)
  {
    if (a1 <= 521)
    {
      if (a1 > 274)
      {
        if (a1 <= 515)
        {
          if (a1 == 275)
          {
            v2 = "CHECK constraint failed";
            return std::string::assign(a2, v2);
          }

          if (a1 == 283)
          {
            v2 = "WAL mode database file is recovered";
            return std::string::assign(a2, v2);
          }
        }

        else
        {
          switch(a1)
          {
            case 516:
              v2 = "statement aborted because the transaction that was active when the SQL statement first started was rolled back";
              return std::string::assign(a2, v2);
            case 517:
              v2 = "database connection tried to promote a read transaction into a write transaction but finds that another database connection has already written to the database and thus invalidated prior reads";
              return std::string::assign(a2, v2);
            case 520:
              v2 = "SQLite is unable to obtain a read lock on a WAL mode database because the shared-memory file associated with that database is read-only";
              return std::string::assign(a2, v2);
          }
        }
      }

      else if (a1 <= 263)
      {
        if (a1 == 261)
        {
          v2 = "operation could not continue because another process is busy recovering a WAL mode database file following a crash";
          return std::string::assign(a2, v2);
        }

        if (a1 == 262)
        {
          v2 = "locking conflict has occurred due to contention with a different database connection that happens to hold a shared cache with the database connection to which the error was returned";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 264:
            v2 = "WAL mode database cannot be opened because the database file needs to be recovered and recovery requires write access but only read access is available";
            return std::string::assign(a2, v2);
          case 266:
            v2 = "I/O error in the VFS layer while trying to read from a file on disk. This error might result from a hardware malfunction or because a filesystem came unmounted while the file was open.";
            return std::string::assign(a2, v2);
          case 267:
            v2 = "content in the virtual table may be corrupt";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 <= 781)
    {
      if (a1 <= 530)
      {
        if (a1 == 522)
        {
          v2 = "read attempt in the VFS layer was unable to obtain as many bytes as was requested. This might be due to a truncated file";
          return std::string::assign(a2, v2);
        }

        if (a1 == 526)
        {
          v2 = "a file open operation failed because the file is really a directory";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 531:
            v2 = "a commit hook callback returned non-zero that thus caused the SQL statement to be rolled back";
            return std::string::assign(a2, v2);
          case 776:
            v2 = "database cannot be opened because it has a hot journal that needs to be rolled back but cannot because the database is readonly";
            return std::string::assign(a2, v2);
          case 778:
            v2 = "I/O error in the VFS layer while trying to write into a file on disk. This error might result from a hardware malfunction or because a filesystem came unmounted while the file was open. This error should not occur if the filesystem is full as there is a separate error code (SQLITE_FULL) for that purpose";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 > 1033)
    {
      switch(a1)
      {
        case 1034:
          v2 = "I/O error in the VFS layer while trying to flush previously written content out of OS and/or disk-control buffers and into persistent storage";
          return std::string::assign(a2, v2);
        case 1290:
          v2 = "I/O error in the VFS layer while trying to invoke fsync() on a directory. The unix VFS attempts to fsync() directories after creating or deleting certain files to ensure that those files will still appear in the filesystem following a power loss or system crash. This error code indicates a problem attempting to perform that fsync()";
          return std::string::assign(a2, v2);
        case 1299:
          v2 = "NOT NULL constraint failed";
          return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 782:
          v2 = "file open operation failed because the operating system was unable to convert the filename into a full pathname";
          return std::string::assign(a2, v2);
        case 787:
          v2 = "foreign key constraint failed";
          return std::string::assign(a2, v2);
        case 1032:
          v2 = "database cannot be modified because the database file has been moved since it was opened";
          return std::string::assign(a2, v2);
      }
    }

LABEL_102:
    v2 = "unhandled message. please check documentation";
    return std::string::assign(a2, v2);
  }

  if (a1 > 3593)
  {
    if (a1 <= 5385)
    {
      if (a1 <= 4105)
      {
        if (a1 == 3594)
        {
          v2 = "I/O error within the xCheckReservedLock method on the sqlite3_io_methods object";
          return std::string::assign(a2, v2);
        }

        if (a1 == 3850)
        {
          v2 = "I/O error in the advisory file locking logic";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 4106:
            v2 = "I/O error within the xClose method on the sqlite3_io_methods object";
            return std::string::assign(a2, v2);
          case 4618:
            v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to open a new shared memory segment";
            return std::string::assign(a2, v2);
          case 4874:
            v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to resize an existing shared memory segment";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 > 6153)
    {
      switch(a1)
      {
        case 6154:
          v2 = "I/O error within the xFetch or xUnfetch methods on the sqlite3_io_methods object while trying to map or unmap part of the database file into the process address space";
          return std::string::assign(a2, v2);
        case 6410:
          v2 = "the VFS is unable to determine a suitable directory in which to place temporary files";
          return std::string::assign(a2, v2);
        case 6922:
          v2 = "a file relevant to the call was invalidated by a dispatch vnode source event";
          return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 5386:
          v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to map a shared memory segment into the process address space";
          return std::string::assign(a2, v2);
        case 5642:
          v2 = "I/O error within the xRead or xWrite methods on the sqlite3_io_methods object while trying to seek a file descriptor to the beginning point of the file where the read or write is to occur";
          return std::string::assign(a2, v2);
        case 5898:
          v2 = "the xDelete method on the sqlite3_vfs object failed because the file being deleted does not exist";
          return std::string::assign(a2, v2);
      }
    }

    goto LABEL_102;
  }

  if (a1 <= 2066)
  {
    if (a1 <= 1801)
    {
      if (a1 == 1546)
      {
        v2 = "I/O error in the VFS layer while trying to truncate a file to a smaller size";
        return std::string::assign(a2, v2);
      }

      if (a1 == 1555)
      {
        v2 = "PRIMARY KEY constraint failed";
        return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 1802:
          v2 = "I/O error in the VFS layer while trying to invoke fstat() (or the equivalent) on a file in order to determine information such as the file size or access permissions";
          return std::string::assign(a2, v2);
        case 1811:
          v2 = "a RAISE function within a trigger fired, causing the SQL statement to abort";
          return std::string::assign(a2, v2);
        case 2058:
          v2 = "an I/O error within xUnlock method on the sqlite3_io_methods object";
          return std::string::assign(a2, v2);
      }
    }

    goto LABEL_102;
  }

  if (a1 > 2578)
  {
    switch(a1)
    {
      case 2579:
        v2 = "a rowid is not unique";
        return std::string::assign(a2, v2);
      case 3082:
        v2 = "an operation could not be completed due to the inability to allocate sufficient memory";
        return std::string::assign(a2, v2);
      case 3338:
        v2 = "I/O error within the xAccess method on the sqlite3_vfs object";
        return std::string::assign(a2, v2);
    }

    goto LABEL_102;
  }

  if (a1 == 2067)
  {
    v2 = "UNIQUE constraint failed";
    return std::string::assign(a2, v2);
  }

  if (a1 == 2314)
  {
    v2 = "I/O error within xLock method on the sqlite3_io_methods object while trying to obtain a read lock";
    return std::string::assign(a2, v2);
  }

  if (a1 != 2570)
  {
    goto LABEL_102;
  }

  v2 = "I/O error within xDelete method on the sqlite3_vfs object";
  return std::string::assign(a2, v2);
}

void sub_10023B8D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023B8F0()
{
  sub_100200EAC(1);
  if (qword_10045B080 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v0 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 68289539;
    v4 = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "assert";
    v9 = 2081;
    v10 = "0";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_10045B080 != -1)
    {
      dispatch_once(&qword_10045B080, &stru_100443A28);
      v1 = qword_10045B088;
      if (!os_signpost_enabled(qword_10045B088))
      {
        goto LABEL_6;
      }
    }

    else
    {
LABEL_4:
      v1 = qword_10045B088;
      if (!os_signpost_enabled(qword_10045B088))
      {
        goto LABEL_6;
      }
    }

    *buf = 68289539;
    v4 = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "assert";
    v9 = 2081;
    v10 = "0";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "corrupt database, will now abort", "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_10045B080 != -1)
    {
      dispatch_once(&qword_10045B080, &stru_100443A28);
      v2 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

LABEL_7:
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      goto LABEL_8;
    }

LABEL_6:
    v2 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

LABEL_8:
    abort_report_np();
LABEL_9:
    dispatch_once(&qword_10045B080, &stru_100443A28);
  }
}

void sub_10023BB40(sqlite3 **a1, int a2)
{
  v4 = sqlite3_extended_result_codes(*a1, a2);
  sub_100001838(v4, *a1);
  if (v4)
  {
    v5 = __error();
    sub_10023B1C8(*v5, &v25);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v20, a2);
    v6 = std::string::insert(&v20, 0, "Failed to change state of extended error codes, on=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v18, " w/ ");
    if ((v19 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v18[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = v18[1];
    }

    v10 = std::string::append(&v21, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v17, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v25;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v22, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v24, &v23);
    v24.__vftable = &off_100440BD8;
    sub_10010A984(v16);
  }
}

void sub_10023BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_10019FF4C((v69 - 152));
    v71 = a40;
    if (!a40)
    {
LABEL_12:
      std::runtime_error::~runtime_error((v69 - 168));
      if (*(v69 - 169) < 0)
      {
        operator delete(*(v69 - 192));
        if ((a48 & 0x80000000) == 0)
        {
LABEL_14:
          if ((*(v69 - 201) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }
      }

      else if ((a48 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(a43);
      if ((*(v69 - 201) & 0x80000000) == 0)
      {
LABEL_15:
        if ((a55 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(*(v69 - 224));
      if ((a55 & 0x80000000) == 0)
      {
LABEL_16:
        if ((a67 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

LABEL_23:
      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v68 & 1) == 0)
        {
LABEL_27:
          if (*(v69 - 65) < 0)
          {
            operator delete(*(v69 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v67);
        goto LABEL_27;
      }

LABEL_25:
      if (!v68)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_11:
    operator delete(v71);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a23);
  sub_10019FF4C((v69 - 152));
  v71 = a40;
  if (!a40)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_10023C05C(sqlite3 **a1)
{
  *pnCkpt = 0;
  v2 = sqlite3_wal_checkpoint_v2(*a1, 0, 0, &pnCkpt[1], pnCkpt);
  sub_100001838(v2, *a1);
  if (v2)
  {
    v4 = __error();
    sub_10023B1C8(*v4, &v17);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v13, " w/ ");
    v5 = std::string::insert(&v13, 0, "Checkpoint failed.");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v12, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v17;
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v16, &v15);
    v16.__vftable = &off_100440BD8;
    sub_10010A984(v11);
  }

  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v3 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v20 = pnCkpt[1];
    v21 = 1024;
    v22 = pnCkpt[0];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Checkpoint succeeded w/ %d frames logged and %d frames checkpointed", buf, 0xEu);
  }
}

void sub_10023C3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_10019FF4C((v62 - 144));
    v64 = a40;
    if (!a40)
    {
LABEL_12:
      std::runtime_error::~runtime_error((v62 - 192));
      if (*(v62 - 201) < 0)
      {
        operator delete(*(v62 - 224));
        if ((a48 & 0x80000000) == 0)
        {
LABEL_14:
          if ((a60 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_20;
        }
      }

      else if ((a48 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(a43);
      if ((a60 & 0x80000000) == 0)
      {
LABEL_15:
        if (a54 < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

LABEL_20:
      operator delete(a55);
      if (a54 < 0)
      {
LABEL_16:
        operator delete(a49);
        if ((v61 & 1) == 0)
        {
LABEL_23:
          if (*(v62 - 153) < 0)
          {
            operator delete(*(v62 - 176));
            _Unwind_Resume(a1);
          }

          _Unwind_Resume(a1);
        }

LABEL_22:
        __cxa_free_exception(v60);
        goto LABEL_23;
      }

LABEL_21:
      if (!v61)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_11:
    operator delete(v64);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a23);
  sub_10019FF4C((v62 - 144));
  v64 = a40;
  if (!a40)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_10023C59C(sqlite3 **a1@<X0>, const char *a2@<X2>, const char *a3@<X3>, sqlite3_int64 a4@<X4>, int a5@<W5>, sqlite3_blob **a6@<X8>)
{
  ppBlob = 0;
  v8 = sqlite3_blob_open(*a1, "main", a2, a3, a4, a5, &ppBlob);
  sub_100001838(v8, *a1);
  if (v8)
  {
    v9 = __error();
    sub_10023B1C8(*v9, &v10);
    __cxa_allocate_exception(0x40uLL);
    operator new();
  }

  *a6 = ppBlob;
}

void sub_10023C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_10019FF4C((v54 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v54 - 176));
  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
    if ((a26 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a21);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a47);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_8:
    if (a39 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a40);
  if (a39 < 0)
  {
LABEL_9:
    operator delete(a34);
    if ((v52 & 1) == 0)
    {
LABEL_18:
      if (*(v54 - 73) < 0)
      {
        operator delete(*(v54 - 96));
      }

      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v53);
    goto LABEL_18;
  }

LABEL_16:
  if (!v52)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

uint64_t sub_10023CA1C(uint64_t a1, __int128 *a2, sqlite3 **a3, dispatch_object_t object)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = object;
  *(a1 + 72) = 0;
  if (object)
  {
    dispatch_retain(object);
    v6 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10023CC2C;
    v10[3] = &unk_1004439A8;
    v10[4] = a1;
    __p[0] = v10;
    sub_10023DB38(v6, __p);
    return a1;
  }

  std::operator+<char>();
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  sub_10000210C(a3, v9, "Failed to create new savepoint");
  if ((v12 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

void sub_10023CB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1001848BC(v19 + 32);
    if ((*(v19 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1001848BC(v19 + 32);
    if ((*(v19 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10023CBA0(uint64_t a1, uint64_t a2, sqlite3 **a3, NSObject *a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_10023CA1C(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10023CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023CC2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  std::operator+<char>();
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_10000210C(v1, p_p, "Failed to create new savepoint");
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10023CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023CCC8(uint64_t a1)
{
  v8 = 0;
  *buf = off_100443BB8 + 1;
  v11[0] = a1;
  sub_10023F0B8(buf, &v8);
  if (*buf)
  {
    v2 = (buf[0] & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2 && **buf)
  {
    (**buf)(v11, v11, 2);
  }

  if (*(a1 + 24) && (*(a1 + 73) & 1) == 0 && (*(a1 + 72) & 1) == 0)
  {
    if (qword_10045B080 == -1)
    {
      v3 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100386320();
      v3 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        std::current_exception();
        if (*buf)
        {
          std::exception_ptr::exception_ptr(&v7, buf);
          v6.__ptr_ = &v7;
          std::rethrow_exception(v6);
          __break(1u);
          return;
        }

        if (qword_10045B080 == -1)
        {
          v4 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
LABEL_18:
            sub_10023D174(a1);
            std::exception_ptr::~exception_ptr(buf);
            goto LABEL_19;
          }
        }

        else
        {
          sub_100386320();
          v4 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }
        }

        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forgot to commit transaction?", v12, 2u);
        goto LABEL_18;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "transaction not completed", buf, 2u);
    goto LABEL_14;
  }

LABEL_19:
  if (v8)
  {
    (*((v8 & 0xFFFFFFFFFFFFFFFELL) + 8))(v9);
    if (v8)
    {
      if ((v8 & 1) == 0 && *v8)
      {
        (*v8)(v9, v9, 2);
      }
    }
  }

  v5 = *(a1 + 56);
  if (v5 == a1 + 32)
  {
    (*(*v5 + 32))(v5);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(*a1);
    return;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_30;
  }
}

void sub_10023CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::exception_ptr::~exception_ptr(&a10);
  v19 = __cxa_begin_catch(exception_object);
  if (a2 != 2)
  {
    sub_100386348();
    sub_10023D174(v15);
    __cxa_end_catch();
LABEL_25:
    JUMPOUT(0x10023CE10);
  }

  v20 = sub_10023D350(v19);
  v21 = v20;
  if (v20)
  {
    if (*v20 == 13)
    {
      if (qword_10045B080 == -1)
      {
        v22 = qword_10045B088;
        if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_100386320();
        v22 = qword_10045B088;
        if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }

      *(v16 - 48) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring rollback exception because the only reasonable case is low-disk in which case it's because of a higher-level error anyway", (v16 - 48), 2u);
LABEL_16:
      __cxa_end_catch();
      goto LABEL_25;
    }

    if (qword_10045B080 != -1)
    {
      sub_100386320();
      v28 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v28 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v29 = *v21;
      *(v16 - 48) = 67109120;
      *(v16 - 44) = v29;
      v24 = "Rolling back due to sql failure %d";
      v25 = (v16 - 48);
      v26 = v28;
      v27 = 8;
      goto LABEL_14;
    }

LABEL_15:
    sub_10023D174(v15);
    goto LABEL_16;
  }

  if (qword_10045B080 == -1)
  {
    v23 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_100386320();
    v23 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }
  }

  *(v16 - 48) = 0;
  v24 = "Rolling back due to unknown kind of failure";
  v25 = (v16 - 48);
  v26 = v23;
  v27 = 2;
LABEL_14:
  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v24, v25, v27);
  goto LABEL_15;
}

uint64_t sub_10023D174(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_10023D850(a1);
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    return (*(*result + 48))(result);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10023D848;
  v5[3] = &unk_1004439E8;
  v5[4] = a1;
  v4 = v5;
  sub_10023DB38(v2, &v4);
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_10023D270(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (qword_10045B080 != -1)
    {
      sub_100386320();
    }

    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      sub_10010A5D4(&__p);
    }

    if (!v9)
    {
      __cxa_end_catch();
      JUMPOUT(0x10023D240);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void *sub_10023D350(char **a1)
{
  v1 = **a1;
  if (result)
  {
    v3 = result[1];
    if (!v3)
    {
      return 0;
    }

    (*(*v3 + 8))(&v6);
    v5 = v6;
    v4 = v7;
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 24))(v4);
      }
    }

    if (v5)
    {
      return (v5 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10023D49C(uint64_t *a1)
{
  v3 = a1[8];
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_10023D52C;
    v4[3] = &unk_1004439C8;
    v4[4] = a1;
    v5 = v4;
    sub_10023DB38(v3, &v5);
  }

  else
  {

    sub_10023D534(a1);
  }
}

void sub_10023D534(uint64_t *a1)
{
  if (*(a1 + 72) == 1)
  {
    sub_1000474A4(&v16, "");
    sub_100218D04("Cannot commit - already rolled back", &v12);
    sub_100383AA4(&v12, &__p, &v16);
    sub_10003F5D0(&__p);
  }

  if (*(a1 + 73) == 1)
  {
    sub_1000474A4(&__p, "");
    sub_1000D8214("Cannot commit - already committed", &v16);
    sub_100383AA4(&v16, buf, &__p);
    sub_10003F5D0(buf);
  }

  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v2 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = sqlite3_db_filename(*a1[3], "main");
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(&__p, v4, v5);
    }

    *(&__p + v6) = 0;
    p_p = &__p;
    if (v11 < 0)
    {
      p_p = __p;
    }

    buf[0] = 136315394;
    *&buf[1] = v3;
    v14 = 2080;
    v15 = p_p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Committing transaction %s into %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[3];
  std::operator+<char>();
  if (v11 >= 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  sub_10000210C(v8, v9, "Failed to release savepoint without rollback");
  if (v11 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 73) = 1;
}

void sub_10023D7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D850(uint64_t a1)
{
  if (*(a1 + 73) == 1)
  {
    sub_1000474A4(__p, "");
    sub_100218D04("Cannot rollback - already committed", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v7);
  }

  if (*(a1 + 72) == 1)
  {
    sub_1000474A4(__p, "");
    sub_100218D04("Cannot rollback - already cancelled", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v7);
  }

  if (qword_10045B080 == -1)
  {
    v2 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100386320();
  v2 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Rolling back transaction", &buf, 2u);
  }

LABEL_6:
  v3 = *(a1 + 24);
  std::operator+<char>();
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  sub_10000210C(v3, p_buf, "Failed to rollback savepoint");
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v5 = *(a1 + 24);
  std::operator+<char>();
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &buf;
  }

  else
  {
    v6 = buf.__r_.__value_.__r.__words[0];
  }

  sub_10000210C(v5, v6, "Failed to release savepoint after rollback");
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 72) = 1;
}

void sub_10023DAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023DB38(NSObject *a1, uint64_t a2)
{
  v4 = std::promise<void>::promise(&v7);
  std::promise<void>::get_future(v4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10023DC1C;
  v5[3] = &unk_100443A48;
  v5[4] = a2;
  v5[5] = &v7;
  dispatch_sync(a1, v5);
  std::future<void>::get(&v6);
  std::future<void>::~future(&v6);
  std::promise<void>::~promise(&v7);
}

void sub_10023DBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::future<void> a15)
{
  std::future<void>::~future(&a15);
  std::promise<void>::~promise((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10023DC60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_10023DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void (***sub_10023DCB4(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_10023DD04(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_10023DFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C8FD8(va);
  _Unwind_Resume(a1);
}

void sub_10023E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000C8FD8(va1);
  _Unwind_Resume(a1);
}

void sub_10023E0A4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P13tag_sql_rowid" & 0x7FFFFFFFFFFFFFFFLL), &v14);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v14;
  }

  else
  {
    v4.__i_ = v14.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v14, v4, 91);
  v15 = v14;
  memset(&v14, 0, sizeof(v14));
  v5 = std::string::append(&v15, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v18);
  v7 = *(a1 + 8);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v13 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v12[1];
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 10);
  *a2 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v13 < 0)
  {
    operator delete(v12[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_10023E340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_10023E6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10023E860(va);
  _Unwind_Resume(a1);
}

void sub_10023E6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10023E860(va1);
  _Unwind_Resume(a1);
}

void sub_10023E7D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10023E818(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10023E860(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10023E980(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P18tag_sql_blob_flags" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v13;
  }

  else
  {
    v4.__i_ = v13.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v13, v4, 91);
  v14 = v13;
  memset(&v13, 0, sizeof(v13));
  v5 = std::string::append(&v14, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_1001A21BC((a1 + 8));
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v16, 10);
  *a2 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

LABEL_17:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_10023EB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_10023EE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10023F00C(va);
  _Unwind_Resume(a1);
}

void sub_10023EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10023F00C(va1);
  _Unwind_Resume(a1);
}

void sub_10023EF80(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10023EFC4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10023F00C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_10023F0B8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = 0;
    sub_10023F218(&v4, result);
    sub_10023F218(v3, a2);
    result = sub_10023F218(a2, &v4);
    if (v4)
    {
      if ((v4 & 1) == 0)
      {
        if (*v4)
        {
          return (*v4)(v5, v5, 2);
        }
      }
    }
  }

  return result;
}

void *sub_10023F154(void *result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *result;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      a2[4] = 0;
      return result;
    }

    v3 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v3 == ("ZN2db9resources11transactionD1EvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (v4 = result, v5 = a2, v6 = strcmp(v3, ("ZN2db9resources11transactionD1EvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), a2 = v5, v7 = v6, result = v4, !v7))
    {
      *a2 = result;
    }

    else
    {
      *v5 = 0;
    }
  }

  return result;
}

void sub_10023F204(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t sub_10023F218(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_10023F2C4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void sub_10023F2E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023F358()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10023F3C8(uint64_t a1)
{
  *a1 = 0;
  result = INFINITY;
  *(a1 + 8) = xmmword_1003D9740;
  return result;
}

uint64_t sub_10023F3DC(uint64_t a1, double *a2)
{
  v9 = off_10043DAA8;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  sub_10012C6F8(&v9, a2[7]);
  sub_10012C6E4(&v9, a2[6]);
  sub_1001294DC(&v9, a2[3]);
  sub_1001294E4(&v9, a2[4]);
  sub_1001294D4(&v9, a2[2]);
  sub_10012A894(&v9, a2[5]);
  v4 = *(&v10 + 1);
  v5 = llround(*&v10);
  *a1 = v5;
  v6 = v4 / v5;
  v7 = sqrt((*&v11 / v5 - v6 * v6) * 3.0);
  *(a1 + 8) = v6 - v7;
  *(a1 + 16) = v6 + v7;
  nullsub_73(&v9);
  return a1;
}

double sub_10023F4E0(uint64_t a1)
{
  if (*a1)
  {
    return (*(a1 + 16) - *(a1 + 8)) * (*a1 + 1) / *a1;
  }

  else
  {
    return INFINITY;
  }
}

void sub_10023F744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  while (1)
  {
    v17 = *(v16 - 1);
    v16 -= 3;
    if (v17 < 0)
    {
      operator delete(*v16);
    }

    if (v16 == &a16)
    {
      JUMPOUT(0x10023F764);
    }
  }
}

uint64_t sub_10023F7B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(result + 16);
  if (v2 >= *(result + 8))
  {
    v2 = *(result + 8);
  }

  *result += *a2;
  *(result + 8) = v2;
  v4 = *(a2 + 16);
  if (v3 >= v4)
  {
    v4 = v3;
  }

  *(result + 16) = v4;
  return result;
}

void sub_10023F7EC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v21 = v19;
  v22 = v20;
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v16[0] = v4;
  v16[1] = v20;
  v17 = 48;
  v18 = 48;
  v5 = sub_1000E5EB8(v16);
  v6 = v5;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v21 = v5;
    v22 = v20;
    v7 = &v20[-v5];
    v8 = a2;
    if (&v20[-v5] < 0x17)
    {
      goto LABEL_6;
    }

LABEL_14:
    std::string::__grow_by(a2, 0x16uLL, v7 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 != v20)
    {
      goto LABEL_7;
    }

LABEL_18:
    v9 = v8;
    goto LABEL_21;
  }

  *(v5 - 1) = 45;
  v6 = (v5 - 1);
  v21 = (v5 - 1);
  v22 = v20;
  v7 = &v20[-v5 + 1];
  v8 = a2;
  if (v7 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 == v20)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7 < 0x20 || (v8 - v6) < 0x20)
  {
    v9 = v8;
    v10 = v6;
  }

  else
  {
    v9 = (v8 + (v7 & 0xFFFFFFFFFFFFFFE0));
    v10 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v6 + 16);
    v12 = &v8->__r_.__value_.__r.__words[2];
    v13 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v15 = *v10++;
    v9->__r_.__value_.__s.__data_[0] = v15;
    v9 = (v9 + 1);
  }

  while (v10 != v20);
LABEL_21:
  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v7 & 0x7F;
  }
}

void sub_10023F9A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023F9BC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023F9F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FA0C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FA7C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10023FAEC(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = v2 - *sub_100258558((a1 + 8), 1);
  v4 = sub_1002B0954(a1 + 32, 1uLL, 1uLL);
  v5 = sub_10023FB90(v3 / sqrt(*v4));
  v6 = -*(a1 + 96);
  v7 = v6 - *sub_100258558((a1 + 8), 1);
  v8 = sub_1002B0954(a1 + 32, 1uLL, 1uLL);
  return v5 - sub_10023FB90(v7 / sqrt(*v8));
}

double sub_10023FB90(double a1)
{
  if (a1 >= 0.0)
  {
    return 1.0 / (exp(a1 * 0.7988 * (a1 * 0.04417 * a1 + 1.0) * -2.0) + 1.0);
  }

  else
  {
    return 1.0 - sub_10023FB90(-a1);
  }
}

std::string *sub_10023FC08@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FC3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023FC58(uint64_t result)
{
  if (*result == 1)
  {
    *(result + 8) = off_10043FFE0;
    v1 = *(result + 24);
    if (v1)
    {
      *(result + 32) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    *result = 0;
  }

  return result;
}

std::string *sub_10023FCC4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FCF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023FD14@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FD48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FD64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FDD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

std::string *sub_10023FE44@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FE78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023FE94@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FEC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FEE4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FF54()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

__n128 sub_10023FFC4(__n128 *a1, uint64_t a2)
{
  v2 = (*(a2 + 24) * 1000000000.0);
  a1->n128_u64[0] = v2;
  v3 = (*(a2 + 16) * 1000000000.0);
  a1->n128_u64[1] = v3;
  v4 = (*(a2 + 32) * 1000000000.0);
  v5 = v3 + v2 + v4;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u64[1] = v5;
  result = *(a2 + 40);
  a1[2] = result;
  a1[3].n128_u64[0] = v5;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  a1[4].n128_u64[1] = 0;
  a1[5].n128_u32[0] = 0;
  a1[6].n128_u64[0] = 0;
  a1[6].n128_u64[1] = 0;
  a1[5].n128_u64[1] = off_10043D878;
  a1[7].n128_u8[0] &= 0xF8u;
  a1[6].n128_u32[1] = 3;
  return result;
}

uint64_t sub_100240058(uint64_t a1)
{
  nullsub_66(a1 + 88);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      v5 = v3 - 7;
      v6 = v3 - 7;
      v7 = v3 - 7;
      do
      {
        v8 = *v7;
        v7 -= 7;
        (*v8)(v6);
        v5 -= 7;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1002400FC(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003863D4();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v31 = 134218496;
    *v32 = v7;
    *&v32[8] = 2048;
    v33 = v8;
    v34 = 1024;
    v35 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received an altitude event at %lld with relative altitude %f m when localizer is at floor level %d", &v31, 0x1Cu);
  }

  v9 = *(a2 + 16);
  *(a1 + 104) = v9;
  v10 = *(a1 + 100);
  if (v10 < 2)
  {
    sub_100240548(a1);
    v12 = v11;
    v13 = *(a1 + 64);
    if (v13 >= *(a1 + 72))
    {
      v14 = sub_100240ED8((a1 + 56), a2);
    }

    else
    {
      sub_10012C46C(*(a1 + 64), a2);
      v14 = v13 + 56;
      *(a1 + 64) = v13 + 56;
    }

    *(a1 + 64) = v14;
    sub_100240C10((a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((v14 - *(a1 + 56)) >> 3) - 1);
    sub_100240548(a1);
    v26 = *(a1 + 96);
    if (vabdd_f64(v12, v25) > *(a1 + 40))
    {
      if (v26 != a3)
      {
        if (qword_10045B050 != -1)
        {
          sub_1003863E8();
        }

        v27 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 96);
          v31 = 67109376;
          *v32 = v28;
          *&v32[4] = 1024;
          *&v32[6] = a3;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Floor switched from %d to %d during a detected transition", &v31, 0xEu);
        }
      }

      return;
    }

    if (v26 == a3)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003863E8();
      }

      v29 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 100);
        v31 = 67109376;
        *v32 = v30;
        *&v32[4] = 1024;
        *&v32[6] = a3;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Detected a transition %d ends! But we haven't switched floor (%d) yet!", &v31, 0xEu);
      }
    }

LABEL_38:
    sub_100240698(a1, v9, a3);
    return;
  }

  if (v10 == 3)
  {
    *(a1 + 96) = a3;
    *(a1 + 100) = 2;
  }

  v15 = *(a1 + 64);
  if (v15 >= *(a1 + 72))
  {
    v16 = sub_100240ED8((a1 + 56), a2);
  }

  else
  {
    sub_10012C46C(*(a1 + 64), a2);
    v16 = v15 + 56;
    *(a1 + 64) = v15 + 56;
  }

  *(a1 + 64) = v16;
  sub_100240C10((a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((v16 - *(a1 + 56)) >> 3) - 1);
  sub_100240548(a1);
  v18 = v17;
  sub_1002409F0(a1);
  if (*(a1 + 80) != 2 || (v20 = v18 - v19, fabs(v20) <= *(a1 + 32)))
  {
    if (*(a1 + 96) == a3)
    {
      return;
    }

    if (qword_10045B050 != -1)
    {
      sub_1003863E8();
    }

    v22 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 96);
      v24 = *(a1 + 80) == 2;
      v31 = 67109632;
      *v32 = v23;
      *&v32[4] = 1024;
      *&v32[6] = a3;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Floor switched from %d to %d, but before we detected any floor in altitude_history; is time window full: %d", &v31, 0x14u);
    }

    goto LABEL_38;
  }

  if (qword_10045B050 != -1)
  {
    sub_1003863E8();
  }

  v21 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Detected floor transition", &v31, 2u);
  }

  *(a1 + 100) = v20 < 0.0;
}

void *sub_100240548(void *result)
{
  v1 = result[7];
  v2 = result[8];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = *(v2 - 40) - result[1];
    v5 = 0.0;
    while (*(v2 - 40) >= v4)
    {
      v5 = v5 + *(v2 - 32);
      --v3;
      v2 -= 56;
      if (v2 == v1)
      {
        return result;
      }
    }

    if (!v3)
    {
      sub_1000474A4(v7, "");
      sub_100241238("At this point, there must be at least one altitude event in ahead window!", &v8);
      sub_100383AA4(&v8, __p, v7);
      sub_10003F5D0(__p);
    }
  }

  return result;
}

void sub_100240654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100240698(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 56);
  v3 = *(result + 64);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 16;
    while (*(v4 + v7) < a2 - *(result + 8))
    {
      ++v5;
      v7 += 56;
      if (v6 == v5)
      {
        v5 = v6;
        goto LABEL_9;
      }
    }

    if (v5)
    {
LABEL_9:
      *(result + 80) = 0;
      v9 = 0;
      v10 = 0;
      __p = 0;
      v13.__r_.__value_.__r.__words[0] = &__p;
      v13.__r_.__value_.__s.__data_[8] = 0;
      if (v5 < 0x492492492492493)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  if (*(result + 80) == 2)
  {
    sub_1000474A4(v12, "");
    sub_1002411E8("We should have cleared all the measurements not in the ahead window, time window should not be full!", &v13);
    sub_100383AA4(&v13, v11, v12);
    sub_10003F5D0(v11);
  }

  *(result + 96) = a3;
  *(result + 100) = 2;
  return result;
}

void sub_10024095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002409F0(void *result)
{
  v1 = result[7];
  v2 = result[8];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = *result + *(v1 + 16);
    v5 = 0.0;
    while (v4 >= *(v1 + 16))
    {
      v5 = v5 + *(v1 + 24);
      v1 += 56;
      --v3;
      if (v1 == v2)
      {
        return result;
      }
    }

    if (!v3)
    {
      sub_1000474A4(v7, "");
      sub_100241238("At this point, there must be at least one altitude event in ahead window!", &v8);
      sub_100383AA4(&v8, __p, v7);
      sub_10003F5D0(__p);
    }
  }

  return result;
}

void sub_100240AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_100240B74(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 56;
      v6 = v3 - 56;
      v7 = v3 - 56;
      do
      {
        v8 = *v7;
        v7 -= 56;
        (*v8)(v6);
        v5 -= 56;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_100240C10(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2] - v2;
  if (v3 == 56)
  {
    *(result + 8) = 1;
  }

  else
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
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
          v6 = *(v2 + 56 * a2 + 16);
          v7 = *result;
          v8 = (v2 + 16 + 56 * v5);
          while (1)
          {
            v9 = *v8;
            v8 += 7;
            if (v7 >= v6 - v9)
            {
              break;
            }

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
    v11 = 0;
    if (v5)
    {
      if (v5 < 0x492492492492493)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  return result;
}

void sub_100240E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100241138(va);
  _Unwind_Resume(a1);
}

void sub_100240E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100240B74(va);
  _Unwind_Resume(a1);
}

void sub_100240EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100386410();
  }

  sub_100241138(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100240ED8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10000FC84();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_10000D444();
  }

  v19 = 8 * ((a1[1] - *a1) >> 3);
  sub_10012C46C(v19, a2);
  v6 = 56 * v2 + 56;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v19 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v19 + v9;
    do
    {
      v14 = sub_10012C46C(v13, v12);
      v12 += 56;
      v13 += 56;
      v11 -= 56;
    }

    while (v12 != v8);
    v15 = v7;
    v16 = v7;
    do
    {
      v17 = *v16;
      v16 += 7;
      (*v17)(v7, v14);
      v15 += 7;
      v7 = v16;
    }

    while (v16 != v8);
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

void sub_100241090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002410C8(va);
  _Unwind_Resume(a1);
}

void sub_1002410A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386410();
  }

  sub_1002410C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002410C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_100241138(void ***result)
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
        v6 = v4 - 7;
        v7 = v4 - 7;
        v8 = v4 - 7;
        do
        {
          v9 = *v8;
          v8 -= 7;
          (*v9)(v7);
          v6 -= 7;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

std::string *sub_1002411E8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10024121C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100241238@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10024126C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024129C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024130C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10024137C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = off_100443C28;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 104) = *a2;
  v7 = (a1 + 104);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 120) = a3;
  sub_100250F64(a4, a1 + 128);
  *(a1 + 184) = sub_100251AA8(a4);
  *(a1 + 192) = sub_100251B20(a4);
  sub_100251CA8(a4, a1 + 200);
  if (!*v7)
  {
    sub_1000474A4(__p, "");
    sub_10023FD14("In order to auto-multifloor/multibuilding between a set of locations, you must at least provide a non-empty set of locations", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BC6D8(&v12);
  }

  if (qword_10045B050 != -1)
  {
    sub_100386470();
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_100248AE8(*v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134283521;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Auto switching between %{private}zu locations", &buf, 0xCu);
    if (qword_10045B050 != -1)
    {
      sub_100386470();
    }
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "CoarseIndoorSpec is %d", &buf, 8u);
  }

  return a1;
}

void sub_1002415A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1002D72A8(v20 + 200);
  sub_10002BB1C(v21);
  sub_10024319C((v20 + 8));
  _Unwind_Resume(a1);
}

void sub_100241604(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_10024319C((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100241624(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 112);
  *(a1 + 104) = v3;
  *(a1 + 112) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1002416B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100248AF0(*(a1 + 104), a2, __p);
  sub_1002121EC(a3, __p);
  v4 = v8;
  if (v8)
  {
    do
    {
      v5 = *v4;
      sub_1001DF638(v4 + 2);
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p[0];
  __p[0] = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_10024172C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DF5D8(va);
  _Unwind_Resume(a1);
}

void sub_100241740(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  if (!sub_100232F48(a2))
  {
    v20 = *(a1 + 184);
    if (v20 == 1)
    {
      a8 = a2[209];
      a9 = a2[208];
      a10 = a2[218];
      a11 = a2[217];
    }

    v21 = *(a1 + 120);
    sub_1002D7200(v25, a1 + 200);
    LODWORD(v22) = v20;
    sub_10025C350(a2, a3, a4, (a1 + 104), a5, a8, a9, a10, a11, a6, a7, v21, v22, v25);
  }

  sub_1000474A4(v27, "");
  sub_10020DEDC("This function should not be used on regional locations.", &v28);
  sub_100382FC4(&v28, __p, v27);
  sub_1000BC6D8(__p);
}

void sub_1002418BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100241914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5)
{
  if (a5)
  {
    *&__p[16] = 0uLL;
    *__p = off_10043D8F8;
    *&__p[8] = &__p[16];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    v66 = 0;
    v64 = off_10043DB28;
    v65 = 0;
    v67 = 0;
    sub_100127C2C(a5, __p);
    sub_100127BE8(__p);
  }

  (*(*a2 + 16))(__p);
  sub_1002416B8(a1, __p, v59);
  v6 = *__p;
  if (*__p)
  {
    v7 = *&__p[8];
    v8 = *__p;
    if (*&__p[8] != *__p)
    {
      v9 = *&__p[8] - 168;
      do
      {
        v12 = *(v7 - 176);
        if (v12 == v12 >> 31)
        {
          if (*(v7 - 128) == 1)
          {
            *(v7 - 128) = 0;
          }
        }

        else
        {
          v10 = *(v7 - 168);
          if (v12 < 0)
          {
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }
          }

          else
          {
            v11 = *(v7 - 168);
            (*v10)(v7 - 168);
          }
        }

        v7 -= 208;
        v9 -= 208;
      }

      while (v7 != v6);
      v8 = *__p;
    }

    *&__p[8] = v6;
    operator delete(v8);
  }

  (*(*a3 + 16))(__p);
  sub_1002416B8(a1, __p, v57);
  v13 = *__p;
  if (*__p)
  {
    v14 = *&__p[8];
    v15 = *__p;
    if (*&__p[8] != *__p)
    {
      v16 = *&__p[8] - 168;
      do
      {
        v19 = *(v14 - 176);
        if (v19 == v19 >> 31)
        {
          if (*(v14 - 128) == 1)
          {
            *(v14 - 128) = 0;
          }
        }

        else
        {
          v17 = *(v14 - 168);
          if (v19 < 0)
          {
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }

          else
          {
            v18 = *(v14 - 168);
            (*v17)(v14 - 168);
          }
        }

        v14 -= 208;
        v16 -= 208;
      }

      while (v14 != v13);
      v15 = *__p;
    }

    *&__p[8] = v13;
    operator delete(v15);
  }

  v20 = *(a1 + 104);
  v61[0] = off_100443CC8;
  v61[1] = v59;
  v61[2] = v57;
  v62 = v61;
  sub_100248D50(v20, v61, &v54);
  if (v62 == v61)
  {
    (*(*v62 + 32))(v62);
    v21 = v56;
    if (v56)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v62)
    {
      (*(*v62 + 40))();
    }

    v21 = v56;
    if (v56)
    {
LABEL_33:
      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  v24 = v55;
  if (v55)
  {
    v44 = 0;
    do
    {
      v22 = v44;
      v23 = v44 >> 3;
      if (((v44 >> 3) + 1) >> 61)
      {
        sub_10000FC84();
      }

      if (v44 >> 3 != -1)
      {
        if (!(((v44 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

      *(8 * v23) = v24[4];
      v44 = 8 * v23 + 8;
      memcpy(0, 0, v22);
      v24 = *v24;
    }

    while (v24);
  }

  else
  {
    v44 = 0;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v41 = v44 >> 3;
  if (v44)
  {
    if (!(v41 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v50 - v48) >> 5) < v41)
  {
    if (v41 <= 0x199999999999999)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *v45 = 0u;
  *v46 = 0u;
  v47 = 1065353216;
  if (qword_10045B050 != -1)
  {
    sub_100386470();
  }

  v25 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *__p = 134218240;
    *&__p[4] = v44 >> 3;
    *&__p[12] = 2048;
    *&__p[14] = (v52 - v51) >> 3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Candidate locations: %zu; recommended locations: %zu", __p, 0x16u);
  }

  sub_1001D14C8(a4, &v51, &v48);
  v26 = v46[0];
  if (v46[0])
  {
    do
    {
      v27 = *v26;
      operator delete(v26);
      v26 = v27;
    }

    while (v27);
  }

  v28 = v45[0];
  v45[0] = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v29 = v55;
  if (v55)
  {
    do
    {
      v30 = v29;
      v29 = *v29;
      v31 = v30[3];
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v32 = v30;
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v30 = v32;
      }

      operator delete(v30);
    }

    while (v29);
  }

  v33 = v54;
  v54 = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = v58;
  if (v58)
  {
    do
    {
      v35 = *v34;
      sub_1001DF638(v34 + 2);
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = v57[0];
  v57[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = v60;
  if (v60)
  {
    do
    {
      v38 = *v37;
      sub_1001DF638(v37 + 2);
      operator delete(v37);
      v37 = v38;
    }

    while (v38);
  }

  v39 = v59[0];
  v59[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_100242DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001F9AF8(&a43);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
    v67 = a52;
    if (!a52)
    {
LABEL_3:
      if (!v65)
      {
LABEL_8:
        sub_10004D7DC(&a55);
        sub_1001DF5D8(&a60);
        sub_1001DF5D8(&a65);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v65);
      goto LABEL_8;
    }
  }

  else
  {
    v67 = a52;
    if (!a52)
    {
      goto LABEL_3;
    }
  }

  a53 = v67;
  operator delete(v67);
  if (!v65)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_100242F5C(void *a1)
{
  *a1 = off_100443C28;
  sub_1002D72A8((a1 + 25));
  v2 = a1[14];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    sub_10024319C(a1 + 1);
    return a1;
  }

  else
  {
    sub_10024319C(a1 + 1);
    return a1;
  }
}

void sub_100243008(void *a1)
{
  *a1 = off_100443C28;
  sub_1002D72A8((a1 + 25));
  v2 = a1[14];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[7];
  a1[7] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[4];
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    v8 = v7[3];
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }

    operator delete(v7);
  }

  v10 = a1[2];
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  operator delete();
}

void *sub_10024319C(void *a1)
{
  v2 = a1[8];
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

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  while (v5)
  {
    v6 = v5;
    v5 = *v5;
    v7 = v6[3];
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v8;
    }

    operator delete(v6);
  }

  v9 = a1[1];
  a1[1] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_100243278(void *a1, uint64_t a2)
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

__n128 sub_100243794(uint64_t a1, uint64_t a2)
{
  *a2 = off_100443CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_1002437C4(uint64_t a1, uint64_t ***a2)
{
  if (sub_1002121F0(*(a1 + 8), a2))
  {
    return 1;
  }

  v5 = *(a1 + 16);

  return sub_1002121F0(v5, a2);
}

uint64_t sub_10024381C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK30DynamicPossibleLocationTracker26recommendPossibleLocationsERK12RadioHistoryS2_RKN5boost8optionalI11GPSLocationEERKNSt3__110shared_ptrI24ZaxisWifiLocationTrackerEERKNSA_I31OutdoorEstimatorLogEntryTrackerEERK17CLLocationTrackerRKN5proto3CLP8LogEntry6Vision14ARSessionStateEP13YieldTraceLogE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK30DynamicPossibleLocationTracker26recommendPossibleLocationsERK12RadioHistoryS2_RKN5boost8optionalI11GPSLocationEERKNSt3__110shared_ptrI24ZaxisWifiLocationTrackerEERKNSA_I31OutdoorEstimatorLogEntryTrackerEERK17CLLocationTrackerRKN5proto3CLP8LogEntry6Vision14ARSessionStateEP13YieldTraceLogE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK30DynamicPossibleLocationTracker26recommendPossibleLocationsERK12RadioHistoryS2_RKN5boost8optionalI11GPSLocationEERKNSt3__110shared_ptrI24ZaxisWifiLocationTrackerEERKNSA_I31OutdoorEstimatorLogEntryTrackerEERK17CLLocationTrackerRKN5proto3CLP8LogEntry6Vision14ARSessionStateEP13YieldTraceLogE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK30DynamicPossibleLocationTracker26recommendPossibleLocationsERK12RadioHistoryS2_RKN5boost8optionalI11GPSLocationEERKNSt3__110shared_ptrI24ZaxisWifiLocationTrackerEERKNSA_I31OutdoorEstimatorLogEntryTrackerEERK17CLLocationTrackerRKN5proto3CLP8LogEntry6Vision14ARSessionStateEP13YieldTraceLogE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100243894(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_100243920(uint64_t a1, const void **a2)
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

void sub_100243AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100128D70(va);
  _Unwind_Resume(a1);
}

void sub_100243AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_100128D70(va);
  _Unwind_Resume(a1);
}

void sub_100243B10()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100243B80()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_100243BF0(uint64_t a1, int a2)
{
  *a1 = off_100443D58;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 128) = a2;
  return result;
}

void *sub_100243C24(void *a1)
{
  *a1 = off_100443D58;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = v2 + 8;
      v5 = a1[4];
      v10 = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100336698(v3, &v10);
      v6 = v11;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  sub_100244894((a1 + 5));
  v7 = a1[4];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[2];
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

uint64_t sub_100243DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3, a1 + 48);
  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 24))(result, 0);
    v5 = *(**(a1 + 8) + 24);

    return v5();
  }

  return result;
}

uint64_t sub_100243E64(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 104))(*(a1 + 24));
  (*(**(a1 + 24) + 16))(*(a1 + 24), a2, v4, a1 + 48);
  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 24))(result, 0);
    v6 = *(**(a1 + 8) + 24);

    return v6();
  }

  return result;
}

void sub_100243F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = (a1 + 40);
  if (*(a1 + 40) == 1)
  {
    sub_1000474A4(&v20, "");
    sub_1001D0C58("Universe already initialized.  Localization not stopped?", &v19);
    sub_100383AA4(&v19, __p, &v20);
    sub_10003F5D0(__p);
  }

  if (*(a1 + 24))
  {
    sub_1000474A4(__p, "");
    sub_100211ECC("Localization not stopped?", &v20);
    sub_100383AA4(&v20, v17, __p);
    sub_10003F5D0(v17);
  }

  if (*v8 == 1)
  {
    sub_100244ACC(v8, a3);
  }

  else
  {
    sub_100184308(a1 + 48, a3);
    *(a1 + 40) = 1;
  }

  (*(*a1 + 128))(__p, a1, a2, a3, a4);
  v9 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v10 = *(a1 + 32);
  *(a1 + 24) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(a1 + 8);
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *(a1 + 8);
    if (!v12)
    {
      return;
    }
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  __p[0] = v15;
  __p[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_100336650(v12, __p);
  v16 = __p[1];
  if (__p[1])
  {
    if (!atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_100244204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024427C(uint64_t a1)
{
  sub_100244894(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 32))(v2, 1);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 0);
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 24);

    return v4();
  }

  return result;
}

uint64_t sub_100244348(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    sub_1000474A4(v7, "");
    sub_10024545C("localizeOn not called yet.  Localizer not available to add finalizer actions", &v10);
    sub_100383AA4(&v10, __p, v7);
    sub_10003F5D0(__p);
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      v4 = v2;
      (*(*v3 + 24))(v3, v8);
      v2 = v4;
    }

    else
    {
      v9 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*v2 + 80))(v2, v8);
  result = v9;
  if (v9 == v8)
  {
    return (*(*v9 + 32))(v9);
  }

  if (v9)
  {
    return (*(*v9 + 40))();
  }

  return result;
}

void sub_1002444F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100244544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001848BC(va);
  _Unwind_Resume(a1);
}

void sub_100244558(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_10024469C(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_1000474A4(v3, "");
    sub_1002114B8("Haven't selected something to localize on", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_1000BA6B0(__p);
  }

  return a1 + 24;
}

void sub_100244748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024478C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  if (v7 == 1)
  {
    sub_100244ACC(v6, a3);
  }

  else
  {
    sub_100184308(a1 + 48, a3);
    *(a1 + 40) = 1;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386498();
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134349056;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "changeSelectedLocations at timestamp %{public}lld", &v9, 0xCu);
  }

  sub_10018351C(*(a1 + 24), a2, a3);
}

void sub_100244894(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 72);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(a1 + 40);
    while (v3)
    {
      v4 = v3;
      v3 = *v3;
      sub_10011B04C(v4 + 4);
      v5 = v4[3];
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v4);
    }

    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *a1 = 0;
  }
}

void sub_1002449EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = v2;
      v2 = *v2;
      sub_10011B04C(v3 + 4);
      v4 = v3[3];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }

      operator delete(v3);
    }

    while (v2);
  }
}

void sub_100244A88(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100244ACC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 != a2)
  {
    *(a1 + 56) = *(a2 + 12);
    sub_100244BFC(a1 + 24, a2[4], 0);
  }

  v9 = a2[7];
  v8 = a2[8];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 72);
  *(a1 + 64) = v9;
  *(a1 + 72) = v8;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    *(a1 + 80) = *(a2 + 72);
  }

  else
  {
    *(a1 + 80) = *(a2 + 72);
  }
}

void sub_100244BFC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8 = a2[3];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = v7[3];
        v7[2] = v9;
        v7[3] = v8;
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        sub_10011B8BC((v7 + 4), (a2 + 4));
        v11 = *v7;
        sub_100244E60(a1, v7);
        a2 = *a2;
        v7 = v11;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      do
      {
        v12 = v7;
        v7 = *v7;
        sub_10011B04C(v12 + 4);
        v13 = v12[3];
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        operator delete(v12);
      }

      while (v7);
    }
  }

LABEL_10:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_100244DEC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1002449EC(v1, v2);
  __cxa_rethrow();
}

void sub_100244E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(v9);
  sub_100184820(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100244E60(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1001183C0(&v14, (a2 + 16));
  *(a2 + 8) = v4;
  v5 = sub_100244F9C(a1, v4, (a2 + 16));
  v6 = a1[1];
  v7 = *(a2 + 8);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v6)
    {
      v7 %= *&v6;
    }
  }

  else
  {
    v7 &= *&v6 - 1;
  }

  if (v5)
  {
    *a2 = *v5;
    *v5 = a2;
    if (*a2)
    {
      v9 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v9 >= *&v6)
        {
          v9 %= *&v6;
        }
      }

      else
      {
        v9 &= *&v6 - 1;
      }

      if (v9 != v7)
      {
        v12 = (*a1 + 8 * v9);
LABEL_19:
        *v12 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v10 = *a1;
    *(*a1 + 8 * v7) = a1 + 2;
    if (*a2)
    {
      v11 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      v12 = (v10 + 8 * v11);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

const void ***sub_100244F9C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_100245244(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      if (v10 >= 2)
      {
        v28 = 0;
        do
        {
          v29 = v23[1];
          v30 = v29;
          if (v29 >= v6)
          {
            v30 = v29 % v6;
          }

          if (v30 != v11)
          {
            break;
          }

          if (v29 == a2)
          {
            v31 = sub_1001182C8(v23 + 2, a3) != (v28 & 1);
            if (v28 & v31)
            {
              return v22;
            }
          }

          else
          {
            v31 = (v28 & 1) != 0;
            if ((v28 & v31) != 0)
            {
              return v22;
            }
          }

          v28 |= v31;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }

      else
      {
        v24 = 0;
        v25 = v6 - 1;
        do
        {
          v26 = v23[1];
          if ((v26 & v25) != v11)
          {
            break;
          }

          if (v26 == a2)
          {
            v27 = sub_1001182C8(v23 + 2, a3) != (v24 & 1);
            if (v24 & v27)
            {
              return v22;
            }
          }

          else
          {
            v27 = (v24 & 1) != 0;
            if ((v24 & v27) != 0)
            {
              return v22;
            }
          }

          v24 |= v27;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }
    }
  }

  return v22;
}

void sub_100245244(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

std::string *sub_10024545C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100245490(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002454AC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024551C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10024558C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1002455B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100443E38;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = sub_100250C24(a3);
  *(a1 + 24) = 1.0 - exp(v5 * -0.25);
  v6 = sub_100250C38(a3);
  *(a1 + 32) = 1.0 - exp(v6 * -0.25);
  v7 = sub_100250C74(a3);
  *(a1 + 40) = 1.0 - exp(v7 * -0.25);
  return a1;
}

void sub_100245684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a3 + 8) + 8) - **(a3 + 8) >= 0x11uLL)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 32);
    v8 = (a2 + 56);
    v9 = *(a3 + 24);
    v10 = *(v9 + 8);
    v11 = *((*(**(a2 + 56) + 56))(*(a2 + 56)) + 1616);
    v12 = *(v9 + 12);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 <= v10;
    }

    if ((v13 || (v12 == 1 ? (v14 = v11 < v10) : (v14 = 1), !v14)) && (*(*v6 + 16))(v6) < v7 && (v15.n128_u64[0] = *(a2 + 16), sub_10025B594(*(a3 + 8), *(a1 + 8), *(a2 + 56), *(a3 + 24), 0, *(a2 + 49), *(a3 + 16), &v24, v15, *(a2 + 24)), v24 == 1))
    {
      v16 = sub_100245938(a2, v8, &v25, *(a3 + 16));
      if (v24)
      {
        v17 = v26;
        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17, v16);
            v18 = v17;
LABEL_24:
            std::__shared_weak_count::__release_weak(v18);
          }
        }
      }
    }

    else
    {
      v19 = 24;
      if (*(a2 + 49))
      {
        v19 = 40;
      }

      v20 = *(a1 + v19);
      if ((*(**(a1 + 8) + 16))(*(a1 + 8)) < v20)
      {
        v21 = sub_10025BB48(*(a3 + 8), *(a1 + 8), *(a2 + 56), 0, *(a2 + 49), *(a3 + 16), *(a2 + 16), *(a2 + 24));
        v22 = v21[1];
        v24 = *v21;
        v25 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
        }

        v23 = sub_100245938(a2, v8, &v24, *(a3 + 16));
        if (v22)
        {
          if (!atomic_fetch_add(v22 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v22 + 16))(v22, v23);
            v18 = v22;
            goto LABEL_24;
          }
        }
      }
    }
  }
}

double sub_100245938(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != *a3)
  {
    v8 = *((*(**a2 + 56))(*a2) + 1632);
    sub_100176F74(a4, *a2, *a3, v18);
    v15 = off_10043DB08;
    v17 = 0;
    v16 = vaddq_f64(*(a1 + 16), v19);
    v9 = (*(**a3 + 16))();
    if (*(*v9 + 48))(v9) && (*(a1 + 49) & 1) != 0 || (v10 = (*(**a3 + 16))(), ((*(*v10 + 16))(v10, v16.f64[0], v16.f64[1])))
    {
      *(a1 + 16) = v16;
      v11 = a3[1];
      *&v14 = *a3;
      *(&v14 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001E8D30(a1, &v14);
      v12 = *(&v14 + 1);
      if (*(&v14 + 1))
      {
        if (!atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }

    nullsub_75(&v15);
    *&result = nullsub_75(v18).n128_u64[0];
  }

  return result;
}

void sub_100245B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_10002BB1C(&a9);
  nullsub_75(&a11);
  nullsub_75(&a15);
  _Unwind_Resume(a1);
}

void sub_100245B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  nullsub_75(va);
  nullsub_75(va1);
  _Unwind_Resume(a1);
}

void *sub_100245B70(void *result, uint64_t a2, uint64_t a3)
{
  *result = off_100443E60;
  result[1] = a2;
  result[2] = a3;
  return result;
}

void sub_100245D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_1000C0CF0(&a11);
  _Unwind_Resume(a1);
}

void sub_100245D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000C0CF0(va);
  _Unwind_Resume(a1);
}

void sub_100245D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000C0CF0(va);
  _Unwind_Resume(a1);
}

void *sub_100245D64(void *result)
{
  *result = off_100443E38;
  v1 = result[2];
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

void sub_100245DF8(void *a1)
{
  *a1 = off_100443E38;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100245EB8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100245F28()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100245F98(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *a1 = MGGetBoolAnswer();
  return a1;
}

uint64_t sub_100245FF0(uint64_t result, uint64_t a2)
{
  *(result + 25) = 1;
  v2 = *(result + 32);
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
  }

  *(result + 16) = a2 + 1000000000 * v2;
  return result;
}

void sub_10024601C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    if (qword_10045B050 == -1)
    {
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        *(a1 + 24) = 0;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1003864AC();
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    v8 = 134217984;
    v9 = (a2 - v4 + 1000000000 * v5) / 1000000000.0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got a scan after %f seconds", &v8, 0xCu);
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(a1 + 32);
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
  }

  *(a1 + 16) = a2 + 1000000000 * v7;
}

uint64_t sub_100246158(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25) != 1 || *(a1 + 8) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  v5 = !((v4 < 0) ^ v3 | (v4 == 0));
  *(a1 + 24) = v5;
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    return 0;
  }

  v6 = (v4 + 1000000000 * *(a1 + 32)) / 1000000000.0;
  if (*a1 == 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003864AC();
    }

    v7 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
      return 1;
    }

    v13 = 134349056;
    v14 = v6;
    v8 = "FATAL: no Wi-Fi scan timer expired and no scans in %{public}f";
    v9 = v7;
    v10 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    if (0xEEEEEEEEEEEEEEEFLL * v6 + 0x888888888888888 > 0x1111111111111110)
    {
      return 1;
    }

    if (qword_10045B050 != -1)
    {
      sub_1003864AC();
    }

    v12 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v13 = 134349056;
    v14 = v6;
    v8 = "WARNING: no Wi-Fi scans in %{public}f";
    v9 = v12;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, 0xCu);
  return 1;
}