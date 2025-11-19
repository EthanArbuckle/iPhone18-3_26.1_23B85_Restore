void sub_10010FCDC(uint64_t a1)
{
  *a1 = &off_10043D2B0;
  if (*(a1 + 359) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 336));
    a1 = v2;
  }

  sub_10010FA10(a1);
}

void sub_10010FD50(std::locale::facet *this)
{
  this->__vftable = &off_10043D2B0;
  if (SHIBYTE(this[22].__vftable) < 0)
  {
    operator delete(this[21].__vftable);
  }

  sub_10010FA10(this);

  operator delete();
}

void *sub_10010FDEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = *(a1 + 216);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 224) - v6) >> 3) > a5)
  {
    v7 = (v6 + 24 * a5);
    v8 = v7[23];
    if (v8 < 0)
    {
      v7 = *v7;
      v8 = *(v6 + 24 * a5 + 8);
    }

    if (v8)
    {
      v9 = a2;
      do
      {
        if (v9)
        {
          v10 = *v7;
          v11 = v9[6];
          if (v11 == v9[7])
          {
            if ((*(*v9 + 104))(v9, v10) == -1)
            {
              v9 = 0;
            }
          }

          else
          {
            v9[6] = v11 + 1;
            *v11 = v10;
          }
        }

        ++v7;
        --v8;
      }

      while (v8);
    }
  }

  return a2;
}

uint64_t sub_10010FEBC(void *a1, int a2, std::ios_base *this, int a4, uint64_t a5, std::string *a6)
{
  v9 = a1[39];
  if (v9 != a1[40])
  {
    v10 = v9 + 24 * *(a5 + 24);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    size = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    v15 = a6->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v15 = a6;
    }

    if (size < 0)
    {
      size = a6->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v16 = 0;
      v17 = v15;
      while (1)
      {
        if (size != v16)
        {
          if (v15[v16] == 37)
          {
            v19 = &v15[v16 + 1];
            if (size - 1 == v16)
            {
              v18 = 0;
            }

            else if (*v19 == 65)
            {
              v19 = &v15[v16 + 2];
              v18 = -1;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
            v19 = v17;
          }

          if (v18)
          {
            break;
          }
        }

        ++v17;
        if (size == ++v16)
        {
          goto LABEL_26;
        }
      }

      if (&v15[v16] != v19)
      {
        v20 = a1;
        v60.__locale_ = "%A";
        v61 = "";
        sub_10011068C(a6, &v60, v12, &v12[v13], &v15[v16], v19, v12, &v12[v13]);
        a1 = v20;
      }
    }
  }

LABEL_26:
  v21 = a1[36];
  if (v21 != a1[37])
  {
    v22 = v21 + 24 * *(a5 + 24);
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >= 0)
    {
      v25 = *(v22 + 23);
    }

    else
    {
      v25 = *(v22 + 8);
    }

    v26 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    v27 = a6->__r_.__value_.__r.__words[0];
    if (v26 >= 0)
    {
      v27 = a6;
    }

    if (v26 < 0)
    {
      v26 = a6->__r_.__value_.__l.__size_;
    }

    if (v26)
    {
      v28 = 0;
      v29 = v27;
      while (1)
      {
        if (v26 != v28)
        {
          if (v27[v28] == 37)
          {
            v31 = &v27[v28 + 1];
            if (v26 - 1 == v28)
            {
              v30 = 0;
            }

            else if (*v31 == 97)
            {
              v31 = &v27[v28 + 2];
              v30 = -1;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = v29;
          }

          if (v30)
          {
            break;
          }
        }

        ++v29;
        if (v26 == ++v28)
        {
          goto LABEL_51;
        }
      }

      if (&v27[v28] != v31)
      {
        v32 = a1;
        v60.__locale_ = "%a";
        v61 = "";
        sub_10011068C(a6, &v60, v24, &v24[v25], &v27[v28], v31, v24, &v24[v25]);
        a1 = v32;
      }
    }
  }

LABEL_51:
  v33 = a1[33];
  if (v33 != a1[34])
  {
    v34 = v33 + 24 * *(a5 + 16);
    v35 = *(v34 + 23);
    if (v35 >= 0)
    {
      v36 = v34;
    }

    else
    {
      v36 = *v34;
    }

    if (v35 >= 0)
    {
      v37 = *(v34 + 23);
    }

    else
    {
      v37 = *(v34 + 8);
    }

    v38 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    v39 = a6->__r_.__value_.__r.__words[0];
    if (v38 >= 0)
    {
      v39 = a6;
    }

    if (v38 < 0)
    {
      v38 = a6->__r_.__value_.__l.__size_;
    }

    if (v38)
    {
      v40 = 0;
      v41 = v39;
      while (1)
      {
        if (v38 != v40)
        {
          if (v39[v40] == 37)
          {
            v43 = &v39[v40 + 1];
            if (v38 - 1 == v40)
            {
              v42 = 0;
            }

            else if (*v43 == 66)
            {
              v43 = &v39[v40 + 2];
              v42 = -1;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
            v43 = v41;
          }

          if (v42)
          {
            break;
          }
        }

        ++v41;
        if (v38 == ++v40)
        {
          goto LABEL_76;
        }
      }

      if (&v39[v40] != v43)
      {
        v44 = a1;
        v60.__locale_ = "%B";
        v61 = "";
        sub_10011068C(a6, &v60, v36, &v36[v37], &v39[v40], v43, v36, &v36[v37]);
        a1 = v44;
      }
    }
  }

LABEL_76:
  v45 = a1[30];
  if (v45 != a1[31])
  {
    v46 = v45 + 24 * *(a5 + 16);
    v47 = *(v46 + 23);
    if (v47 >= 0)
    {
      v48 = v46;
    }

    else
    {
      v48 = *v46;
    }

    if (v47 >= 0)
    {
      v49 = *(v46 + 23);
    }

    else
    {
      v49 = *(v46 + 8);
    }

    v50 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
    v51 = a6->__r_.__value_.__r.__words[0];
    if (v50 >= 0)
    {
      v51 = a6;
    }

    if (v50 < 0)
    {
      v50 = a6->__r_.__value_.__l.__size_;
    }

    if (v50)
    {
      v52 = 0;
      v53 = v51;
      while (1)
      {
        if (v50 != v52)
        {
          if (v51[v52] == 37)
          {
            v55 = &v51[v52 + 1];
            if (v50 - 1 == v52)
            {
              v54 = 0;
            }

            else if (*v55 == 98)
            {
              v55 = &v51[v52 + 2];
              v54 = -1;
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            v54 = 0;
            v55 = v53;
          }

          if (v54)
          {
            break;
          }
        }

        ++v53;
        if (v50 == ++v52)
        {
          goto LABEL_101;
        }
      }

      if (&v51[v52] != v55)
      {
        v60.__locale_ = "%b";
        v61 = "";
        sub_10011068C(a6, &v60, v48, &v48[v49], &v51[v52], v55, v48, &v48[v49]);
      }
    }
  }

LABEL_101:
  if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
  {
    v56 = a6->__r_.__value_.__r.__words[0];
  }

  std::ios_base::getloc(this);
  std::locale::use_facet(&v60, &std::time_put<char,std::ostreambuf_iterator<char>>::id);
  if ((SHIBYTE(a6->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v57 = a6->__r_.__value_.__l.__size_;
  }

  v58 = std::time_put<char,std::ostreambuf_iterator<char>>::put();
  std::locale::~locale(&v60);
  return v58;
}

uint64_t sub_100110384(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100003228((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_100003228((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  if (*(a2 + 79) < 0)
  {
    sub_100003228((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100003228((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  return a1;
}

void sub_100110474(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void *sub_1001104E8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100110610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_10004E704(&a11);
  *(v11 + 8) = v12;
  sub_10004E764(&a9);
  _Unwind_Resume(a1);
}

void sub_100110634(std::locale::facet *a1)
{
  sub_10010FA10(a1);

  operator delete();
}

void sub_10011068C(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8)
{
  v8 = a6;
  v44 = 0u;
  v45 = 0u;
  *__p = 0u;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v12 = v11;
    v13 = v11;
  }

  else
  {
    v16 = a5;
    v13 = v11;
    v12 = v11;
    while (1)
    {
      while (1)
      {
        v13 = sub_100110A24(&v46, __p, a1, v13, v12, v16);
        v20 = __p[1] + 8 * ((v45 + *(&v45 + 1)) >> 12);
        if (v44 == __p[1])
        {
          v21 = 0;
        }

        else
        {
          v21 = *v20 + ((v45 + WORD4(v45)) & 0xFFF);
        }

        sub_100111324(__p, v20, v21, a7, a8, a8 - a7);
        size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = a1->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = a1->__r_.__value_.__l.__size_;
        }

        v22 = &v11[size];
        if (v8 != &v11[size])
        {
          break;
        }

        v16 = v8;
        v12 = v8;
        v8 = &v11[size];
        if (v16 == v22)
        {
          goto LABEL_34;
        }
      }

      v23 = a2[1];
      if (*a2 == v23)
      {
        break;
      }

      v16 = v8;
      while (1)
      {
        v24 = *a2;
        v25 = v16;
        do
        {
          if (*v25 != *v24)
          {
            break;
          }

          ++v25;
          ++v24;
          if (v25 == v22)
          {
            break;
          }
        }

        while (v24 != v23);
        if (v24 == v23)
        {
          break;
        }

        if (++v16 == v22)
        {
          v16 = &v11[size];
          v25 = &v11[size];
          goto LABEL_29;
        }
      }

      v22 = v25;
LABEL_29:
      if (v16 != v25)
      {
        a8 = a4;
        a7 = a3;
      }

      v12 = v8;
      v8 = v22;
      if (v16 == v22)
      {
        goto LABEL_34;
      }
    }

    v12 = v8;
  }

LABEL_34:
  v26 = sub_100110A24(&v46, __p, a1, v13, v12, &v11[size]);
  v27 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v27 & 0x80u) == 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v27 & 0x80u) != 0)
  {
    v27 = a1->__r_.__value_.__l.__size_;
  }

  v29 = v28 + v27;
  if (*(&v45 + 1))
  {
    v30 = (v45 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v44 == __p[1])
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v32 = __p[1] + 8 * ((v45 + *(&v45 + 1)) >> 12);
    }

    else
    {
      v31 = ((v45 + *(&v45 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v32 = __p[1] + v31;
      v33 = *(__p[1] + v31) + ((v45 + *(&v45 + 1)) & 0xFFF);
      v34 = ((v45 + *(&v45 + 1)) & 0xFFF) + ((v31 - v30) << 9) - (v45 & 0xFFF);
      v35 = v33;
      v36 = (*(__p[1] + v30) + (v45 & 0xFFF));
      if (v33 == v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34;
      }
    }

    sub_100112C60(a1, v29, __p[1] + v30, v36, v32, v35, v37);
  }

  else
  {
    std::string::erase(a1, &v26[-v28], v29 - v26);
  }

  v38 = __p[1];
  v39 = v44;
  *(&v45 + 1) = 0;
  v40 = (v44 - __p[1]) >> 3;
  if (v40 >= 3)
  {
    do
    {
      operator delete(*v38);
      v39 = v44;
      v38 = (__p[1] + 8);
      __p[1] = v38;
      v40 = (v44 - v38) >> 3;
    }

    while (v40 > 2);
  }

  if (v40 == 1)
  {
    v41 = 2048;
    goto LABEL_53;
  }

  if (v40 == 2)
  {
    v41 = 4096;
LABEL_53:
    *&v45 = v41;
  }

  if (v38 != v39)
  {
    do
    {
      v42 = *v38++;
      operator delete(v42);
    }

    while (v38 != v39);
    if (v44 != __p[1])
    {
      *&v44 = v44 + ((__p[1] - v44 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

char *sub_100110A24(int a1, int64x2_t *a2, int a3, char *__dst, char *__src, char *a6)
{
  v8 = __dst;
  v10 = a2[2].i64[1];
  if (v10)
  {
    v11 = __dst == __src;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = a2->i64[1];
    v13 = a2[2].u64[0];
    v14 = __dst + 1;
    v15 = xmmword_1003D1DF0;
    do
    {
      while (1)
      {
        *(v14 - 1) = (*(v12 + ((v13 >> 9) & 0x7FFFFFFFFFFFF8)))[v13 & 0xFFF];
        v12 = a2->i64[1];
        v17 = vaddq_s64(a2[2], v15);
        a2[2] = v17;
        v13 = v17.i64[0];
        if (v17.i64[0] >= 0x2000uLL)
        {
          break;
        }

        v10 = v17.i64[1];
        ++v8;
        if (v17.i64[1])
        {
          v18 = v14 == __src;
        }

        else
        {
          v18 = 1;
        }

        ++v14;
        if (v18)
        {
          goto LABEL_16;
        }
      }

      operator delete(*v12);
      v15 = xmmword_1003D1DF0;
      v12 = (a2->i64[1] + 8);
      a2->i64[1] = v12;
      v10 = a2[2].i64[1];
      v13 = a2[2].i64[0] - 4096;
      a2[2].i64[0] = v13;
      ++v8;
      if (v10)
      {
        v16 = v14 == __src;
      }

      else
      {
        v16 = 1;
      }

      ++v14;
    }

    while (!v16);
  }

LABEL_16:
  if (v10)
  {
    if (v8 != a6)
    {
      v19 = a2->i64[1];
      v20 = a2[2].i64[0];
      do
      {
        v21 = a2[1].i64[0];
        if (v21 == v19)
        {
          v22 = 0;
        }

        else
        {
          v22 = ((v21 - v19) << 9) - 1;
        }

        v23 = a2[2].i64[1] + v20;
        if (v22 == v23)
        {
          sub_100110C38(a2);
          v19 = a2->i64[1];
          v23 = a2[2].i64[1] + a2[2].i64[0];
        }

        (*(v19 + ((v23 >> 9) & 0x7FFFFFFFFFFFF8)))[v23 & 0xFFF] = *v8;
        v24 = a2[2].u64[0];
        ++a2[2].i64[1];
        *v8 = *(*(a2->i64[1] + ((v24 >> 9) & 0x7FFFFFFFFFFFF8)) + (v24 & 0xFFF));
        v19 = a2->i64[1];
        v25 = vaddq_s64(a2[2], xmmword_1003D1DF0);
        a2[2] = v25;
        v20 = v25.i64[0];
        if (v25.i64[0] >= 0x2000uLL)
        {
          operator delete(*v19);
          v19 = (a2->i64[1] + 8);
          a2->i64[1] = v19;
          v20 = a2[2].i64[0] - 4096;
          a2[2].i64[0] = v20;
        }

        ++v8;
      }

      while (v8 != a6);
      return a6;
    }
  }

  else
  {
    if (v8 == __src)
    {
      return a6;
    }

    v26 = a6 - __src;
    if (v26)
    {
      memmove(v8, __src, v26);
    }

    v8 += v26;
  }

  return v8;
}

void *sub_100110C38(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_100111000(a1, &v11);
}

void sub_100110FA8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_100111000(void *result, void *a2)
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

      sub_10000D444();
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_10011118C(const void **result, void *a2)
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

      sub_10000D444();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t *sub_100111324(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
    if (!a3)
    {
LABEL_3:
      v16 = 0;
      v17 = a1[2].i64[1];
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
    if (a3 == v15)
    {
      goto LABEL_3;
    }
  }

  v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
LABEL_4:
    v18 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v18 = 0;
    }

    v19 = v10 + v17;
    v20 = v18 - v19;
    if (a6 > v20)
    {
      sub_100112080(a1, a6 - v20);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v19 = a1[2].i64[0] + v17;
    }

    v21 = (v12 + 8 * (v19 >> 12));
    if (v13 == v12)
    {
      v22 = 0;
      v23 = v17 - v16;
      if (v17 - v16 < v6)
      {
LABEL_10:
        v24 = &a5[-v6];
        if (v23 < v6 >> 1)
        {
          v24 = a4;
        }

        v25 = &v24[v23];
        if (&v24[v23] == a5)
        {
          v26 = v22;
          v27 = v21;
        }

        else
        {
          v40 = &v24[v23];
          v27 = v21;
          v26 = v22;
          do
          {
            *v26++ = *v40;
            if (&v26[-*v27] == 4096)
            {
              v41 = v27[1];
              ++v27;
              v26 = v41;
            }

            ++v40;
            ++a1[2].i64[1];
          }

          while (v40 != a5);
        }

        a5 = v25;
        v6 = v23;
        if (!v23)
        {
          goto LABEL_85;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v22 = *v21 + (v19 & 0xFFF);
      v23 = v17 - v16;
      if (v17 - v16 < v6)
      {
        goto LABEL_10;
      }
    }

    v26 = v22;
    v27 = v21;
    if (!v6)
    {
      goto LABEL_85;
    }

LABEL_30:
    v34 = &v22[-v6] - *v21;
    if (v34 < 1)
    {
      v45 = 4095 - v34;
      v35 = &v21[-(v45 >> 12)];
      v36 = *v35 + (~v45 & 0xFFF);
      if (v36 == v22)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v35 = &v21[v34 >> 12];
      v36 = *v35 + (v34 & 0xFFF);
      if (v36 == v22)
      {
LABEL_54:
        if (v6 < v23)
        {
          v50 = v22 - (*v21 + v23);
          if (v50 < 1)
          {
            v61 = 4095 - v50;
            v51 = &v21[-(v61 >> 12)];
            v52 = *v51 + (~v61 & 0xFFF);
          }

          else
          {
            v51 = &v21[v50 >> 12];
            v52 = *v51 + (v50 & 0xFFF);
          }

          sub_100112A5C(v51, v52, v35, v36, v21, v22, &v80);
          v21 = v82;
          v22 = v83;
        }

        if (a5 != a4)
        {
          v63 = *v21;
          v62 = v21 - 1;
          v64 = v22 - v63;
          if (a5 - a4 >= v22 - v63)
          {
            v65 = v64;
          }

          else
          {
            v65 = a5 - a4;
          }

          v66 = &a5[-v65];
          if (v65)
          {
LABEL_75:
            memmove(&v22[-v65], v66, v65);
          }

          while (v66 != a4)
          {
            v67 = *v62--;
            v22 = (v67 + 4096);
            if (v66 - a4 >= 4096)
            {
              v65 = 4096;
            }

            else
            {
              v65 = v66 - a4;
            }

            v66 -= v65;
            if (v65)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_85;
      }
    }

    v46 = v35;
    v47 = v36;
    while (1)
    {
      *v26++ = *v47;
      if (&v26[-*v27] == 4096)
      {
        v48 = v27[1];
        ++v27;
        v26 = v48;
        if (&(++v47)[-*v46] == 4096)
        {
LABEL_53:
          v49 = v46[1];
          ++v46;
          v47 = v49;
        }
      }

      else if (&(++v47)[-*v46] == 4096)
      {
        goto LABEL_53;
      }

      ++a1[2].i64[1];
      if (v47 == v22)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_18:
  if (a6 > v10)
  {
    sub_10011196C(a1, a6 - v10);
    v10 = a1[2].u64[0];
    v12 = a1->i64[1];
    v13 = a1[1].i64[0];
    v11 = v10 >> 12;
  }

  v28 = (v12 + 8 * v11);
  if (v13 != v12)
  {
    v29 = *v28 + (v10 & 0xFFF);
    if (v16 < v6)
    {
      goto LABEL_22;
    }

LABEL_34:
    v32 = v29;
    v33 = (v12 + 8 * v11);
    if (!v6)
    {
      goto LABEL_85;
    }

    goto LABEL_35;
  }

  v29 = 0;
  if (v16 >= v6)
  {
    goto LABEL_34;
  }

LABEL_22:
  v30 = &a4[v6];
  if (v16 < v6 >> 1)
  {
    v30 = a5;
  }

  v31 = &v30[-v16];
  if (v31 == a4)
  {
    v32 = v29;
    v33 = v28;
  }

  else
  {
    v42 = v31;
    v33 = v28;
    v32 = v29;
    do
    {
      if (v32 == *v33)
      {
        v44 = *--v33;
        v32 = (v44 + 4096);
      }

      v43 = *--v42;
      *--v32 = v43;
      a1[2] = vaddq_s64(a1[2], xmmword_1003D1E00);
    }

    while (v42 != a4);
  }

  a4 = v31;
  v6 = v16;
  if (!v16)
  {
    goto LABEL_85;
  }

LABEL_35:
  v37 = v29 - *v28 + v6;
  if (v37 < 1)
  {
    v38 = &v28[-((4095 - v37) >> 12)];
    v39 = &(*v38)[~(4095 - v37) & 0xFFF];
    if (v39 == v29)
    {
      goto LABEL_65;
    }

    goto LABEL_58;
  }

  v38 = &v28[v37 >> 12];
  v39 = &(*v38)[v37 & 0xFFF];
  if (v39 != v29)
  {
LABEL_58:
    v53 = v38;
    v54 = v39;
    do
    {
      if (v32 == *v33)
      {
        v56 = *--v33;
        v32 = (v56 + 4096);
        if (v54 == *v53)
        {
LABEL_64:
          v57 = *--v53;
          v54 = (v57 + 4096);
        }
      }

      else if (v54 == *v53)
      {
        goto LABEL_64;
      }

      v55 = *--v54;
      *--v32 = v55;
      a1[2] = vaddq_s64(a1[2], xmmword_1003D1E00);
    }

    while (v54 != v29);
  }

LABEL_65:
  if (v6 < v16)
  {
    v58 = v29 - *v28 + v16;
    if (v58 < 1)
    {
      v68 = 4095 - v58;
      v59 = &v28[-(v68 >> 12)];
      v60 = &(*v59)[~v68 & 0xFFF];
    }

    else
    {
      v59 = &v28[v58 >> 12];
      v60 = &(*v59)[v58 & 0xFFF];
    }

    v80 = v28;
    v81 = v29;
    sub_10011277C(v38, v39, v59, v60, &v80);
    v28 = v80;
    v29 = v81;
  }

  if (a4 != a5)
  {
    v76 = *v28;
    v75 = (v28 + 1);
    v77 = v76 - v29 + 4096;
    if (a5 - a4 >= v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = a5 - a4;
    }

    if (v78)
    {
LABEL_96:
      memmove(v29, a4, v78);
    }

    while (1)
    {
      a4 += v78;
      if (a4 == a5)
      {
        break;
      }

      v79 = *v75++;
      v29 = v79;
      if (a5 - a4 >= 4096)
      {
        v78 = 4096;
      }

      else
      {
        v78 = a5 - a4;
      }

      if (v78)
      {
        goto LABEL_96;
      }
    }
  }

LABEL_85:
  v69 = a1->i64[1];
  result = (v69 + 8 * (a1[2].i64[0] >> 12));
  if (a1[1].i64[0] == v69)
  {
    v71 = 0;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v71 = *result + (a1[2].i64[0] & 0xFFF);
    if (!v16)
    {
      return result;
    }
  }

  v72 = v71 - *result + v16;
  if (v72 < 1)
  {
    result -= (4095 - v72) >> 12;
    v74 = *result;
  }

  else
  {
    result += v72 >> 12;
    v73 = *result;
  }

  return result;
}

const void **sub_10011196C(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v4 == v3)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = a2;
  }

  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v3) << 9) - 1;
  }

  if ((v5 & 0xFFF) != 0)
  {
    v7 = (v5 >> 12) + 1;
  }

  else
  {
    v7 = v5 >> 12;
  }

  v8 = result[4];
  v9 = v6 - &v8[result[5]];
  if (v7 >= v9 >> 12)
  {
    v10 = v9 >> 12;
  }

  else
  {
    v10 = v7;
  }

  if (v7 <= v9 >> 12)
  {
    for (result[4] = &v8[4096 * v10]; v10; --v10)
    {
      v15 = v2[2];
      v17 = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_10011118C(v2, &v17);
    }
  }

  else
  {
    v11 = v7 - v10;
    v12 = result[3] - *result;
    v13 = (v4 - v3) >> 3;
    if (v7 - v10 > (v12 >> 3) - v13)
    {
      if (v12 >> 2 <= v11 + v13)
      {
        v14 = v11 + v13;
      }

      else
      {
        v14 = v12 >> 2;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

      operator new();
    }

    if (v11)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v8[4096 * v10]; v10; --v10)
    {
      v16 = v2[2];
      v17 = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_10011118C(v2, &v17);
    }
  }

  return result;
}

void sub_100112014(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100112080(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_100111000(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_100111000(v2, &v14);
    }
  }

  return result;
}

void sub_100112710(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char **sub_10011277C(char **result, char *__src, char **a3, char *a4, uint64_t a5)
{
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__src != a4)
    {
      v10 = *v9++;
      v11 = v10 - v8 + 4096;
      if (a4 - __src >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a4 - __src;
      }

      if (v12)
      {
LABEL_7:
        result = memmove(v8, v7, v12);
      }

      while (1)
      {
        v7 += v12;
        if (v7 == a4)
        {
          break;
        }

        v13 = *v9++;
        v8 = v13;
        if (a4 - v7 >= 4096)
        {
          v12 = 4096;
        }

        else
        {
          v12 = a4 - v7;
        }

        if (v12)
        {
          goto LABEL_7;
        }
      }

      v8 += v12;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_66;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_66;
  }

  v15 = result;
  v16 = *result + 4096;
  v17 = *a5;
  v8 = *(a5 + 8);
  if (v16 != __src)
  {
    v18 = *v17++;
    v19 = v18 - v8 + 4096;
    if (v16 - __src >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v16 - __src;
    }

    if (v20)
    {
LABEL_19:
      result = memmove(v8, v7, v20);
    }

    while (1)
    {
      v7 += v20;
      if (v7 == v16)
      {
        break;
      }

      v21 = *v17++;
      v8 = v21;
      if (v16 - v7 >= 4096)
      {
        v20 = 4096;
      }

      else
      {
        v20 = v16 - v7;
      }

      if (v20)
      {
        goto LABEL_19;
      }
    }

    v8 += v20;
    if (*(v17 - 1) + 4096 == v8)
    {
      v8 = *v17;
      *a5 = v17;
      *(a5 + 8) = v8;
      for (i = v15 + 1; i != a3; ++i)
      {
        while (1)
        {
LABEL_31:
          v23 = 0;
          v24 = *i;
          v25 = *v17++;
          v26 = v25 - v8 + 4096;
          if (v26 <= 4096)
          {
            v27 = v26;
          }

          else
          {
            v27 = 4096;
          }

          if (v27)
          {
LABEL_35:
            result = memmove(v8, &v24[v23], v27);
          }

          while (1)
          {
            v23 += v27;
            if (v23 == 4096)
            {
              break;
            }

            v28 = *v17++;
            v8 = v28;
            if (4096 - v23 >= 4096)
            {
              v27 = 4096;
            }

            else
            {
              v27 = 4096 - v23;
            }

            if (v27)
            {
              goto LABEL_35;
            }
          }

          v8 += v27;
          v29 = v17 - 1;
          if (*(v17 - 1) + 4096 != v8)
          {
            break;
          }

          v8 = *v17;
          *a5 = v17;
          *(a5 + 8) = v8;
          if (++i == a3)
          {
            goto LABEL_44;
          }
        }

        --v17;
        *a5 = v29;
        *(a5 + 8) = v8;
      }

      goto LABEL_44;
    }

    --v17;
  }

  *a5 = v17;
  *(a5 + 8) = v8;
  i = v15 + 1;
  if (i != a3)
  {
    goto LABEL_31;
  }

LABEL_44:
  v30 = *i;
  if (*i != a4)
  {
    v31 = *v17++;
    v32 = v31 - v8 + 4096;
    if (a4 - v30 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = a4 - v30;
    }

    if (v33)
    {
LABEL_49:
      result = memmove(v8, v30, v33);
    }

    while (1)
    {
      v30 += v33;
      if (v30 == a4)
      {
        break;
      }

      v34 = *v17++;
      v8 = v34;
      if (a4 - v30 >= 4096)
      {
        v33 = 4096;
      }

      else
      {
        v33 = a4 - v30;
      }

      if (v33)
      {
        goto LABEL_49;
      }
    }

    v8 += v33;
    if (*(v17 - 1) + 4096 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *a5 = v17;
LABEL_66:
  *(a5 + 8) = v8;
  return result;
}

void *sub_100112A5C@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_46;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13];
      if (v14 - a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14 - a2;
      }

      v14 -= v16;
      a6 -= v16;
      if (v16)
      {
        result = memmove(a6, v14, v16);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_44;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21];
      if (v22 - v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22 - v20;
      }

      v22 -= v24;
      a6 -= v24;
      if (v24)
      {
        result = memmove(a6, v22, v24);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      while (1)
      {
        v29 = *v27;
        v30 = *v27 + 4096;
        while (1)
        {
          v31 = (a6 - v28);
          if (v30 - v29 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v30 - v29;
          }

          v30 -= v32;
          a6 -= v32;
          if (v32)
          {
            result = memmove(a6, v30, v32);
          }

          if (v30 == v29)
          {
            break;
          }

          v33 = *--v8;
          v28 = v33;
          a6 = v33 + 4096;
        }

        v28 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v27 == a1)
        {
          goto LABEL_35;
        }
      }

      v34 = v8[1];
      ++v8;
      v28 = v34;
      a6 = v34;
      --v27;
    }

    while (v27 != a1);
  }

LABEL_35:
  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36];
      if (v35 - a2 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - a2;
      }

      v35 -= v38;
      a6 -= v38;
      if (v38)
      {
        result = memmove(a6, v35, v38);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_44:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_46:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

std::string::size_type sub_100112C60(std::string *a1, uint64_t a2, void *a3, std::string::value_type *a4, uint64_t a5, std::string::value_type *a6, std::string::size_type a7)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = a1->__r_.__value_.__r.__words[0];
    v9 = a2 - a1->__r_.__value_.__r.__words[0];
    if (!a7)
    {
      return v10 + v9;
    }
  }

  else
  {
    v9 = a2 - a1;
    if (!a7)
    {
      v10 = a1;
      return v10 + v9;
    }
  }

  p_p = &__p;
  sub_100112E30(&__p, a3, a4, a5, a6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 22;
    v15 = a1;
    if (22 - v13 >= a7)
    {
      v16 = v13 - v9;
      if (v13 == v9)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_15:
    std::string::__grow_by(a1, v14, v13 + a7 - v14, v13, v9, 0, a7);
    a1->__r_.__value_.__l.__size_ = v13 + a7;
    v15 = a1->__r_.__value_.__r.__words[0];
    v17 = v13 + a7;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v13 = a1->__r_.__value_.__l.__size_;
  v14 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - v13 < a7)
  {
    goto LABEL_15;
  }

  v15 = a1->__r_.__value_.__r.__words[0];
  v16 = v13 - v9;
  if (v13 != v9)
  {
LABEL_24:
    memmove(v15 + v9 + a7, v15 + v9, v16);
    v17 = v13 + a7;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }

LABEL_16:
    *(&a1->__r_.__value_.__s + 23) = v17 & 0x7F;
    v15->__r_.__value_.__s.__data_[v17] = 0;
    if (!size)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_11:
  v17 = v9 + a7;
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:
  a1->__r_.__value_.__l.__size_ = v17;
  v15->__r_.__value_.__s.__data_[v17] = 0;
  if (size)
  {
LABEL_17:
    memmove(v15 + v9, p_p, size);
  }

LABEL_18:
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = a1 + v9;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_22:
    v19 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v19;
  }

  result = v9 + a1->__r_.__value_.__r.__words[0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_100112E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100112E30(std::string *this, void *a2, std::string::value_type *a3, uint64_t a4, std::string::value_type *a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::string::push_back(this, *v6++);
      if (&v6[-*a2] == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }
}

void sub_100112EA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100112ED8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100112FA4(uint64_t a1, uint64_t a2, const std::ios_base *a3, unsigned int a4, uint64_t *a5)
{
  if ((*a5 - 0x7FFFFFFFFFFFFFFELL) > 2)
  {
    if (*(a1 + 39) < 0)
    {
      v8 = a4;
      v9 = a1;
      sub_100003228(&v266, *(a1 + 16), *(a1 + 24));
      a4 = v8;
      a1 = v9;
    }

    else
    {
      v266 = *(a1 + 16);
    }

    v10 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
    size = v266.__r_.__value_.__l.__size_;
    v12 = v266.__r_.__value_.__r.__words[0];
    if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v266;
    }

    else
    {
      v13 = v266.__r_.__value_.__r.__words[0];
    }

    if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v266.__r_.__value_.__l.__size_;
    }

    if (v14)
    {
      v15 = 0;
      v16 = v13;
      while (1)
      {
        if (v14 != v15)
        {
          if (v13->__r_.__value_.__s.__data_[v15] == 37)
          {
            v18 = &v13->__r_.__value_.__s.__data_[v15 + 1];
            if (v14 - 1 == v15)
            {
              v17 = 0;
            }

            else if (*v18 == 84)
            {
              v18 = &v13->__r_.__value_.__s.__data_[v15 + 2];
              v17 = -1;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
            v18 = v16;
          }

          if (v17)
          {
            break;
          }
        }

        v16 = (v16 + 1);
        if (v14 == ++v15)
        {
          goto LABEL_28;
        }
      }

      if (v13 + v15 != v18)
      {
        v19 = a1;
        v20 = a4;
        v267[0].__locale_ = "%T";
        v267[1].__locale_ = "";
        sub_100114B54(&v266, v267, "%H:%M:%S", "", v13 + v15, v18, "%H:%M:%S", "");
        v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
        size = v266.__r_.__value_.__l.__size_;
        v12 = v266.__r_.__value_.__r.__words[0];
        a4 = v20;
        a1 = v19;
      }
    }

LABEL_28:
    if ((v10 & 0x80u) == 0)
    {
      v21 = &v266;
    }

    else
    {
      v21 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v22 = v10;
    }

    else
    {
      v22 = size;
    }

    v259 = a5;
    if (v22)
    {
      v23 = 0;
      v24 = v21;
      while (1)
      {
        if (v22 != v23)
        {
          if (v21->__r_.__value_.__s.__data_[v23] == 37)
          {
            v26 = &v21->__r_.__value_.__s.__data_[v23 + 1];
            if (v22 - 1 == v23)
            {
              v25 = 0;
            }

            else if (*v26 == 82)
            {
              v26 = &v21->__r_.__value_.__s.__data_[v23 + 2];
              v25 = -1;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
            v26 = v24;
          }

          if (v25)
          {
            break;
          }
        }

        v24 = (v24 + 1);
        if (v22 == ++v23)
        {
          goto LABEL_48;
        }
      }

      if (v21 + v23 != v26)
      {
        v27 = a1;
        v28 = a4;
        v267[0].__locale_ = "%R";
        v267[1].__locale_ = "";
        sub_100114B54(&v266, v267, "%H:%M", "", v21 + v23, v26, "%H:%M", "");
        v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
        size = v266.__r_.__value_.__l.__size_;
        v12 = v266.__r_.__value_.__r.__words[0];
        a4 = v28;
        a1 = v27;
      }
    }

LABEL_48:
    v256 = a1;
    v257 = a4;
    __p[0] = 0;
    __p[1] = 0;
    v265 = 0;
    v29 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v30 = &v266;
    }

    else
    {
      v30 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v31 = v10;
    }

    else
    {
      v31 = size;
    }

    v32 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0]);
    if (v32)
    {
      v33 = v32;
      if (v31 >= v32)
      {
        v34 = v30 + v31;
        v35 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0];
        v36 = v30;
        do
        {
          if (v31 - v33 == -1)
          {
            break;
          }

          v37 = memchr(v36, v35, v31 - v33 + 1);
          if (!v37)
          {
            break;
          }

          v38 = v37;
          if (!memcmp(v37, v29, v33))
          {
            if (v38 == v34 || v38 - v30 == -1)
            {
              break;
            }

            goto LABEL_64;
          }

          v36 = (v38 + 1);
          v31 = v34 - (v38 + 1);
        }

        while (v31 >= v33);
      }
    }

    else
    {
LABEL_64:
      v39 = *v259;
      v40 = 0x7FFFFFFFFFFFFFFELL;
      if (*v259 == 0x8000000000000000)
      {
        v40 = 0x8000000000000000;
      }

      if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = v40;
      }

      if ((*v259 - 0x7FFFFFFFFFFFFFFELL) > 2)
      {
        v39 = *v259 % 86400000000;
      }

      v41 = v39 % 1000000;
      if (v41 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = -v41;
      }

      sub_100115534(v42, 6);
      if (SHIBYTE(v265) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *&v267[0].__locale_;
      v265 = v268;
      std::ios_base::getloc(a3);
      v43 = std::locale::use_facet(v267, &std::numpunct<char>::id);
      v44 = (v43->__vftable[1].~facet)(v43);
      std::locale::~locale(v267);
      v45 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_format[0]);
      if (v45 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_10000D39C();
      }

      v46 = v45;
      if (v45 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v45;
      if (v45)
      {
        memmove(&__dst, boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_format[0], v45);
      }

      __dst.__r_.__value_.__s.__data_[v46] = 0;
      std::string::push_back(&__dst, v44);
      if (v265 >= 0)
      {
        v47 = __p;
      }

      else
      {
        v47 = __p[0];
      }

      if (v265 >= 0)
      {
        v48 = HIBYTE(v265);
      }

      else
      {
        v48 = __p[1];
      }

      std::string::append(&__dst, v47, v48);
      v49 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0]);
      v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = __dst.__r_.__value_.__l.__size_;
      }

      v53 = v266.__r_.__value_.__l.__size_;
      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v266;
      }

      else
      {
        v54 = v266.__r_.__value_.__r.__words[0];
      }

      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
      }

      if (v53 && v49)
      {
        v55 = (v54 + v53);
        v56 = v53 - 1;
        while (1)
        {
          v57 = v55;
          v58 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0];
          if (v54 != v55)
          {
            v59 = v56;
            v60 = v49 - 1;
            v58 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0];
            v57 = v54;
            do
            {
              if (*v57 != *v58)
              {
                break;
              }

              ++v57;
              ++v58;
              if (!v59)
              {
                break;
              }

              v61 = v60--;
              --v59;
            }

            while (v61);
          }

          if (v58 == &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0][v49])
          {
            break;
          }

          v54 = (v54 + 1);
          --v56;
          if (v54 == v55)
          {
            goto LABEL_111;
          }
        }

        if (v54 != v57)
        {
          v267[0] = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0];
          v267[1].__locale_ = &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::seconds_with_fractional_seconds_format[0][v49];
          sub_10011068C(&v266, v267, p_dst, p_dst + v52, v54, v57, p_dst, p_dst + v52);
          v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }
      }

LABEL_111:
      if (v50 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
      size = v266.__r_.__value_.__l.__size_;
      v12 = v266.__r_.__value_.__r.__words[0];
    }

    v62 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::posix_zone_string_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v63 = &v266;
    }

    else
    {
      v63 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v64 = v10;
    }

    else
    {
      v64 = size;
    }

    v65 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::posix_zone_string_format[0]);
    if (v65)
    {
      v66 = v65;
      if (v64 >= v65)
      {
        v67 = v63 + v64;
        v68 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::posix_zone_string_format[0];
        v69 = v64;
        v70 = v63;
        do
        {
          v71 = v69 - v66;
          if (v71 == -1)
          {
            break;
          }

          v72 = memchr(v70, v68, v71 + 1);
          if (!v72)
          {
            break;
          }

          v73 = v72;
          if (!memcmp(v72, v62, v66))
          {
            if (v73 == v67 || v73 - v63 == -1)
            {
              break;
            }

            goto LABEL_130;
          }

          v70 = (v73 + 1);
          v69 = v67 - (v73 + 1);
        }

        while (v69 >= v66);
      }
    }

    else
    {
LABEL_130:
      v74 = strlen(v62);
      if (v64 && v74)
      {
        v75 = (v63 + v64);
        v76 = v64 - 1;
        while (1)
        {
          v77 = v75;
          v78 = v62;
          if (v63 != v75)
          {
            v79 = v76;
            v80 = v74 - 1;
            v78 = v62;
            v77 = v63;
            do
            {
              if (*v77 != *v78)
              {
                break;
              }

              ++v77;
              ++v78;
              if (!v79)
              {
                break;
              }

              v81 = v80--;
              --v79;
            }

            while (v81);
          }

          if (v78 == &v62[v74])
          {
            break;
          }

          v63 = (v63 + 1);
          --v76;
          if (v63 == v75)
          {
            goto LABEL_143;
          }
        }

        if (v63 != v77)
        {
          v267[0].__locale_ = v62;
          v267[1].__locale_ = &v62[v74];
          sub_100115854(&v266, v267, v63, v77);
          v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
          size = v266.__r_.__value_.__l.__size_;
          v12 = v266.__r_.__value_.__r.__words[0];
        }
      }
    }

LABEL_143:
    v82 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_name_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v83 = &v266;
    }

    else
    {
      v83 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v84 = v10;
    }

    else
    {
      v84 = size;
    }

    v85 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_name_format[0]);
    if (v85)
    {
      v86 = v85;
      if (v84 >= v85)
      {
        v87 = v83 + v84;
        v88 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_name_format[0];
        v89 = v83;
        do
        {
          if (v84 - v86 == -1)
          {
            break;
          }

          v90 = memchr(v89, v88, v84 - v86 + 1);
          if (!v90)
          {
            break;
          }

          v91 = v90;
          if (!memcmp(v90, v82, v86))
          {
            if (v91 == v87 || v91 - v83 == -1)
            {
              break;
            }

            goto LABEL_159;
          }

          v89 = (v91 + 1);
          v84 = v87 - (v91 + 1);
        }

        while (v84 >= v86);
      }
    }

    else
    {
LABEL_159:
      sub_10003BFA8(v267);
      __dst.__r_.__value_.__s.__data_[0] = 32;
      v92 = sub_10003C2E4(v267, &__dst, 1);
      v93 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_name_format[0]);
      sub_10003C2E4(v92, boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_name_format[0], v93);
      std::stringbuf::str();
      v94 = v263;
      v95 = v261;
      if (v263 >= 0)
      {
        v95 = &v261;
      }

      if (v263 >= 0)
      {
        v96 = v263;
      }

      else
      {
        v96 = v262;
      }

      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v266;
      }

      else
      {
        v97 = v266.__r_.__value_.__r.__words[0];
      }

      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v266.__r_.__value_.__l.__size_;
      }

      if (v98 && v96)
      {
        v99 = &v95[v96];
        v100 = (v97 + v98);
        v101 = v96 - 1;
        v102 = v98 - 1;
        while (1)
        {
          v103 = v100;
          v104 = v95;
          if (v97 != v100)
          {
            v105 = v102;
            v106 = v101;
            v104 = v95;
            v103 = v97;
            do
            {
              if (*v103 != *v104)
              {
                break;
              }

              ++v103;
              ++v104;
              if (!v105)
              {
                break;
              }

              v107 = v106--;
              --v105;
            }

            while (v107);
          }

          if (v104 == v99)
          {
            break;
          }

          v97 = (v97 + 1);
          --v102;
          if (v97 == v100)
          {
            goto LABEL_183;
          }
        }

        if (v97 != v103)
        {
          __dst.__r_.__value_.__r.__words[0] = v95;
          __dst.__r_.__value_.__l.__size_ = v99;
          sub_100115BA4(&v266, &__dst, v97, v103);
          v94 = v263;
        }
      }

LABEL_183:
      if (v94 < 0)
      {
        operator delete(v261);
      }

      if (v272 < 0)
      {
        operator delete(v271);
      }

      std::locale::~locale(&v268);
      std::ostream::~ostream();
      std::ios::~ios();
      v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
      size = v266.__r_.__value_.__l.__size_;
      v12 = v266.__r_.__value_.__r.__words[0];
    }

    v108 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_abbrev_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v109 = &v266;
    }

    else
    {
      v109 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v110 = v10;
    }

    else
    {
      v110 = size;
    }

    v111 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_abbrev_format[0]);
    if (v111)
    {
      v112 = v111;
      if (v110 >= v111)
      {
        v113 = v109 + v110;
        v114 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_abbrev_format[0];
        v115 = v109;
        do
        {
          if (v110 - v112 == -1)
          {
            break;
          }

          v116 = memchr(v115, v114, v110 - v112 + 1);
          if (!v116)
          {
            break;
          }

          v117 = v116;
          if (!memcmp(v116, v108, v112))
          {
            if (v117 == v113 || v117 - v109 == -1)
            {
              break;
            }

            goto LABEL_204;
          }

          v115 = (v117 + 1);
          v110 = v113 - (v117 + 1);
        }

        while (v110 >= v112);
      }
    }

    else
    {
LABEL_204:
      sub_10003BFA8(v267);
      __dst.__r_.__value_.__s.__data_[0] = 32;
      v118 = sub_10003C2E4(v267, &__dst, 1);
      v119 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_abbrev_format[0]);
      sub_10003C2E4(v118, boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_abbrev_format[0], v119);
      std::stringbuf::str();
      v120 = v263;
      v121 = v261;
      if (v263 >= 0)
      {
        v121 = &v261;
      }

      if (v263 >= 0)
      {
        v122 = v263;
      }

      else
      {
        v122 = v262;
      }

      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = &v266;
      }

      else
      {
        v123 = v266.__r_.__value_.__r.__words[0];
      }

      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v124 = v266.__r_.__value_.__l.__size_;
      }

      if (v124 && v122)
      {
        v125 = &v121[v122];
        v126 = (v123 + v124);
        v127 = v122 - 1;
        v128 = v124 - 1;
        while (1)
        {
          v129 = v126;
          v130 = v121;
          if (v123 != v126)
          {
            v131 = v128;
            v132 = v127;
            v130 = v121;
            v129 = v123;
            do
            {
              if (*v129 != *v130)
              {
                break;
              }

              ++v129;
              ++v130;
              if (!v131)
              {
                break;
              }

              v133 = v132--;
              --v131;
            }

            while (v133);
          }

          if (v130 == v125)
          {
            break;
          }

          v123 = (v123 + 1);
          --v128;
          if (v123 == v126)
          {
            goto LABEL_228;
          }
        }

        if (v123 != v129)
        {
          __dst.__r_.__value_.__r.__words[0] = v121;
          __dst.__r_.__value_.__l.__size_ = v125;
          sub_100115BA4(&v266, &__dst, v123, v129);
          v120 = v263;
        }
      }

LABEL_228:
      if (v120 < 0)
      {
        operator delete(v261);
      }

      if (v272 < 0)
      {
        operator delete(v271);
      }

      std::locale::~locale(&v268);
      std::ostream::~ostream();
      std::ios::~ios();
      v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
      size = v266.__r_.__value_.__l.__size_;
      v12 = v266.__r_.__value_.__r.__words[0];
    }

    v134 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_extended_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v135 = &v266;
    }

    else
    {
      v135 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v136 = v10;
    }

    else
    {
      v136 = size;
    }

    v137 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_extended_format[0]);
    if (v137)
    {
      v138 = v137;
      if (v136 >= v137)
      {
        v139 = v135 + v136;
        v140 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_extended_format[0];
        v141 = v136;
        v142 = v135;
        do
        {
          v143 = v141 - v138;
          if (v143 == -1)
          {
            break;
          }

          v144 = memchr(v142, v140, v143 + 1);
          if (!v144)
          {
            break;
          }

          v145 = v144;
          if (!memcmp(v144, v134, v138))
          {
            if (v145 == v139 || v145 - v135 == -1)
            {
              break;
            }

            goto LABEL_249;
          }

          v142 = (v145 + 1);
          v141 = v139 - (v145 + 1);
        }

        while (v141 >= v138);
      }
    }

    else
    {
LABEL_249:
      v146 = strlen(v134);
      if (v136 && v146)
      {
        v147 = (v135 + v136);
        v148 = v136 - 1;
        while (1)
        {
          v149 = v147;
          v150 = v134;
          if (v135 != v147)
          {
            v151 = v148;
            v152 = v146 - 1;
            v150 = v134;
            v149 = v135;
            do
            {
              if (*v149 != *v150)
              {
                break;
              }

              ++v149;
              ++v150;
              if (!v151)
              {
                break;
              }

              v153 = v152--;
              --v151;
            }

            while (v153);
          }

          if (v150 == &v134[v146])
          {
            break;
          }

          v135 = (v135 + 1);
          --v148;
          if (v135 == v147)
          {
            goto LABEL_262;
          }
        }

        if (v135 != v149)
        {
          v267[0].__locale_ = v134;
          v267[1].__locale_ = &v134[v146];
          sub_100115854(&v266, v267, v135, v149);
          v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
          size = v266.__r_.__value_.__l.__size_;
          v12 = v266.__r_.__value_.__r.__words[0];
        }
      }
    }

LABEL_262:
    v154 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v155 = &v266;
    }

    else
    {
      v155 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v156 = v10;
    }

    else
    {
      v156 = size;
    }

    v157 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_format[0]);
    if (v157)
    {
      v158 = v157;
      if (v156 >= v157)
      {
        v159 = v155 + v156;
        v160 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::zone_iso_format[0];
        v161 = v156;
        v162 = v155;
        do
        {
          v163 = v161 - v158;
          if (v163 == -1)
          {
            break;
          }

          v164 = memchr(v162, v160, v163 + 1);
          if (!v164)
          {
            break;
          }

          v165 = v164;
          if (!memcmp(v164, v154, v158))
          {
            if (v165 == v159 || v165 - v155 == -1)
            {
              break;
            }

            goto LABEL_278;
          }

          v162 = (v165 + 1);
          v161 = v159 - (v165 + 1);
        }

        while (v161 >= v158);
      }
    }

    else
    {
LABEL_278:
      v166 = strlen(v154);
      if (v156 && v166)
      {
        v167 = (v155 + v156);
        v168 = v156 - 1;
        while (1)
        {
          v169 = v167;
          v170 = v154;
          if (v155 != v167)
          {
            v171 = v168;
            v172 = v166 - 1;
            v170 = v154;
            v169 = v155;
            do
            {
              if (*v169 != *v170)
              {
                break;
              }

              ++v169;
              ++v170;
              if (!v171)
              {
                break;
              }

              v173 = v172--;
              --v171;
            }

            while (v173);
          }

          if (v170 == &v154[v166])
          {
            break;
          }

          v155 = (v155 + 1);
          --v168;
          if (v155 == v167)
          {
            goto LABEL_291;
          }
        }

        if (v155 != v169)
        {
          v267[0].__locale_ = v154;
          v267[1].__locale_ = &v154[v166];
          sub_100115854(&v266, v267, v155, v169);
          v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
          size = v266.__r_.__value_.__l.__size_;
          v12 = v266.__r_.__value_.__r.__words[0];
        }
      }
    }

LABEL_291:
    v174 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v175 = &v266;
    }

    else
    {
      v175 = v12;
    }

    if ((v10 & 0x80u) == 0)
    {
      v176 = v10;
    }

    else
    {
      v176 = size;
    }

    v177 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_format[0]);
    if (v177)
    {
      v178 = v177;
      if (v176 >= v177)
      {
        v179 = v175 + v176;
        v180 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_format[0];
        v181 = v175;
        do
        {
          if (v176 - v178 == -1)
          {
            break;
          }

          v182 = memchr(v181, v180, v176 - v178 + 1);
          if (!v182)
          {
            break;
          }

          v183 = v182;
          if (!memcmp(v182, v174, v178))
          {
            if (v183 == v179 || v183 - v175 == -1)
            {
              break;
            }

            goto LABEL_307;
          }

          v181 = (v183 + 1);
          v176 = v179 - (v183 + 1);
        }

        while (v176 >= v178);
      }
    }

    else
    {
LABEL_307:
      v184 = HIBYTE(v265);
      LOBYTE(v185) = HIBYTE(v265);
      locale = __p[1];
      if (v265 >= 0)
      {
        v187 = HIBYTE(v265);
      }

      else
      {
        v187 = __p[1];
      }

      if (!v187)
      {
        v188 = *v259;
        v189 = 0x7FFFFFFFFFFFFFFELL;
        if (*v259 == 0x8000000000000000)
        {
          v189 = 0x8000000000000000;
        }

        if (v188 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v188 = v189;
        }

        if ((*v259 - 0x7FFFFFFFFFFFFFFELL) > 2)
        {
          v188 = *v259 % 86400000000;
        }

        v190 = v188 % 1000000;
        if (v190 >= 0)
        {
          v191 = v190;
        }

        else
        {
          v191 = -v190;
        }

        sub_100115534(v191, 6);
        if (SHIBYTE(v265) < 0)
        {
          operator delete(__p[0]);
        }

        v265 = v268;
        *__p = *&v267[0].__locale_;
        v174 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_format[0];
        v184 = BYTE7(v268);
        locale = v267[1].__locale_;
        v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
        size = v266.__r_.__value_.__l.__size_;
        v12 = v266.__r_.__value_.__r.__words[0];
        v185 = BYTE7(v268);
      }

      v192 = strlen(v174);
      if ((v185 & 0x80u) == 0)
      {
        v193 = __p;
      }

      else
      {
        v193 = __p[0];
      }

      if ((v185 & 0x80u) == 0)
      {
        v194 = v184;
      }

      else
      {
        v194 = locale;
      }

      if ((v10 & 0x80u) == 0)
      {
        v195 = &v266;
      }

      else
      {
        v195 = v12;
      }

      if ((v10 & 0x80u) == 0)
      {
        v196 = v10;
      }

      else
      {
        v196 = size;
      }

      if (v196 && v192)
      {
        v197 = (v195 + v196);
        v198 = v196 - 1;
        while (1)
        {
          v199 = v197;
          v200 = v174;
          if (v195 != v197)
          {
            v201 = v198;
            v202 = v192 - 1;
            v200 = v174;
            v199 = v195;
            do
            {
              if (*v199 != *v200)
              {
                break;
              }

              ++v199;
              ++v200;
              if (!v201)
              {
                break;
              }

              v203 = v202--;
              --v201;
            }

            while (v203);
          }

          if (v200 == &v174[v192])
          {
            break;
          }

          v195 = (v195 + 1);
          --v198;
          if (v195 == v197)
          {
            goto LABEL_348;
          }
        }

        if (v195 != v199)
        {
          v267[0].__locale_ = v174;
          v267[1].__locale_ = &v174[v192];
          sub_10011068C(&v266, v267, v193, &v193[v194], v195, v199, v193, &v193[v194]);
          v10 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
          size = v266.__r_.__value_.__l.__size_;
          v12 = v266.__r_.__value_.__r.__words[0];
        }
      }
    }

LABEL_348:
    v204 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
    if ((v10 & 0x80u) == 0)
    {
      v12 = &v266;
      size = v10;
    }

    v205 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0]);
    if (v205)
    {
      v206 = v205;
      if (size >= v205)
      {
        v207 = v12 + size;
        v208 = *boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
        v209 = v12;
        do
        {
          if (size - v206 == -1)
          {
            break;
          }

          v210 = memchr(v209, v208, size - v206 + 1);
          if (!v210)
          {
            break;
          }

          v211 = v210;
          if (!memcmp(v210, v204, v206))
          {
            if (v211 == v207 || v211 - v12 == -1)
            {
              break;
            }

            goto LABEL_360;
          }

          v209 = (v211 + 1);
          size = v207 - (v211 + 1);
        }

        while (size >= v206);
      }

LABEL_426:
      v270 = 0;
      v268 = 0u;
      v269 = 0u;
      *&v267[0].__locale_ = 0u;
      v244 = *v259;
      if ((*v259 - 0x7FFFFFFFFFFFFFFELL) > 2)
      {
        v250 = sub_1001149C4(v244 / 500654080);
        v247 = v257;
        v248 = a3;
        v249 = v256;
        v251 = (14 - WORD1(v250)) / 12;
        v246 = WORD2(v250) + 365 * (v250 - v251 + 4800) + ((v250 - v251 + 4800) >> 2) - (v250 - v251 + 4800) / 0x64u + (v250 - v251 + 4800) / 0x190u - 32045 + ((858993460 * (153 * (WORD1(v250) + 12 * v251 - 3) + 2)) >> 32);
      }

      else
      {
        if (v244 == 0x8000000000000000)
        {
          v245 = 0;
        }

        else
        {
          v245 = -2;
        }

        if (v244 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v246 = -1;
        }

        else
        {
          v246 = v245;
        }

        v247 = v257;
        v248 = a3;
        v249 = v256;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = v246;
      sub_100115EF4(&__dst, v267);
      v252 = *v259;
      v253 = 0x7FFFFFFFFFFFFFFELL;
      if (*v259 == 0x8000000000000000)
      {
        v253 = 0x8000000000000000;
      }

      if (v252 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v252 = v253;
      }

      if ((*v259 - 0x7FFFFFFFFFFFFFFELL) > 2)
      {
        v252 = *v259 % 86400000000;
      }

      LODWORD(v267[0].__locale_) = (v252 / 1000000) % 60;
      HIDWORD(v267[0].__locale_) = (v252 / 60000000) % 60;
      LODWORD(v267[1].__locale_) = v252 / -694967296;
      LODWORD(v269) = -1;
      if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v260, v266.__r_.__value_.__l.__data_, v266.__r_.__value_.__l.__size_);
      }

      else
      {
        v260 = v266;
      }

      v254 = (*(*v249 + 48))(v249, a2, v248, v247, v267, &v260);
      if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v260.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v265) & 0x80000000) == 0)
        {
LABEL_446:
          if ((SHIBYTE(v266.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return v254;
          }

LABEL_450:
          operator delete(v266.__r_.__value_.__l.__data_);
          return v254;
        }
      }

      else if ((SHIBYTE(v265) & 0x80000000) == 0)
      {
        goto LABEL_446;
      }

      operator delete(__p[0]);
      if ((SHIBYTE(v266.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v254;
      }

      goto LABEL_450;
    }

LABEL_360:
    v212 = *v259;
    v213 = 0x7FFFFFFFFFFFFFFELL;
    if (*v259 == 0x8000000000000000)
    {
      v213 = 0x8000000000000000;
    }

    if (v212 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v212 = v213;
    }

    if ((*v259 - 0x7FFFFFFFFFFFFFFELL) > 2)
    {
      v212 = *v259 % 86400000000;
    }

    v214 = v212 % 1000000;
    if (v214)
    {
      if (v214 >= 0)
      {
        v215 = v214;
      }

      else
      {
        v215 = -v214;
      }

      sub_100115534(v215, 6);
      if ((SHIBYTE(v265) & 0x80000000) == 0)
      {
LABEL_371:
        v265 = v268;
        *__p = *&v267[0].__locale_;
        v216 = BYTE7(v268);
        if (SBYTE7(v268) < 0)
        {
          v216 = v267[1].__locale_;
        }

        if (v216)
        {
          std::ios_base::getloc(a3);
          v217 = std::locale::use_facet(v267, &std::numpunct<char>::id);
          v218 = (v217->__vftable[1].~facet)(v217);
          std::locale::~locale(v267);
          memset(&__dst, 0, sizeof(__dst));
          std::string::push_back(&__dst, v218);
          if (v265 >= 0)
          {
            v219 = __p;
          }

          else
          {
            v219 = __p[0];
          }

          if (v265 >= 0)
          {
            v220 = HIBYTE(v265);
          }

          else
          {
            v220 = __p[1];
          }

          std::string::append(&__dst, v219, v220);
          v221 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0]);
          v222 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v223 = &__dst;
          }

          else
          {
            v223 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v224 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v224 = __dst.__r_.__value_.__l.__size_;
          }

          v225 = v266.__r_.__value_.__l.__size_;
          if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v226 = &v266;
          }

          else
          {
            v226 = v266.__r_.__value_.__r.__words[0];
          }

          if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v225 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
          }

          if (v225 && v221)
          {
            v227 = (v226 + v225);
            v228 = v225 - 1;
            while (1)
            {
              v229 = v227;
              v230 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
              if (v226 != v227)
              {
                v231 = v228;
                v232 = v221 - 1;
                v230 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
                v229 = v226;
                do
                {
                  if (*v229 != *v230)
                  {
                    break;
                  }

                  ++v229;
                  ++v230;
                  if (!v231)
                  {
                    break;
                  }

                  v233 = v232--;
                  --v231;
                }

                while (v233);
              }

              if (v230 == &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0][v221])
              {
                break;
              }

              v226 = (v226 + 1);
              --v228;
              if (v226 == v227)
              {
                goto LABEL_422;
              }
            }

            if (v226 != v229)
            {
              v267[0] = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
              v267[1].__locale_ = &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0][v221];
              sub_10011068C(&v266, v267, v223, v223 + v224, v226, v229, v223, v223 + v224);
              v222 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }
          }

LABEL_422:
          if (v222 < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v234 = strlen(boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0]);
          v235 = v266.__r_.__value_.__l.__size_;
          if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v236 = &v266;
          }

          else
          {
            v236 = v266.__r_.__value_.__r.__words[0];
          }

          if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v235 = SHIBYTE(v266.__r_.__value_.__r.__words[2]);
          }

          if (v235 && v234)
          {
            v237 = (v236 + v235);
            v238 = v235 - 1;
            while (1)
            {
              v239 = v237;
              v240 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
              if (v236 != v237)
              {
                v241 = v238;
                v242 = v234 - 1;
                v240 = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
                v239 = v236;
                do
                {
                  if (*v239 != *v240)
                  {
                    break;
                  }

                  ++v239;
                  ++v240;
                  if (!v241)
                  {
                    break;
                  }

                  v243 = v242--;
                  --v241;
                }

                while (v243);
              }

              if (v240 == &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0][v234])
              {
                break;
              }

              v236 = (v236 + 1);
              --v238;
              if (v236 == v237)
              {
                goto LABEL_426;
              }
            }

            if (v236 != v239)
            {
              v267[0] = boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0];
              v267[1].__locale_ = &boost::date_time::time_facet<boost::posix_time::ptime,char,std::ostreambuf_iterator<char>>::fractional_seconds_or_none_format[0][v234];
              sub_100115854(&v266, v267, v236, v239);
            }
          }
        }

        goto LABEL_426;
      }
    }

    else
    {
      v267[0].__locale_ = 0;
      v267[1].__locale_ = 0;
      *&v268 = 0;
      if ((SHIBYTE(v265) & 0x80000000) == 0)
      {
        goto LABEL_371;
      }
    }

    operator delete(__p[0]);
    goto LABEL_371;
  }

  *a5;
  v5 = *(*a1 + 40);

  return v5();
}

void sub_1001148E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, std::locale a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a41);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1001149C4(int a1)
{
  v1 = ((4 * (a1 + 32044)) | 3u) / 0x23AB1;
  v2 = a1 + 32044 - ((146097 * v1) >> 2);
  v3 = ((4 * v2) | 3) / 0x5B5;
  v4 = v2 - ((1461 * v3) >> 2);
  v5 = 5 * v4 + 2;
  v6 = v3 + 100 * v1 - 4800 + v5 / 0x5FA;
  if (v6 < 0x578u || (v6 >> 4) >= 0x271u)
  {
    sub_10010D170();
  }

  if ((v5 / 0x99) - 12 * (v5 / 0x5FA) == 0xFFFD || (v5 / 0x99 - 12 * (v5 / 0x5FA) + 3) >= 0xDu)
  {
    sub_10010DA80();
  }

  if (v4 - ((153 * (v5 / 0x99) + 2) / 5) == 0xFFFF || (v4 - (153 * (v5 / 0x99) + 2) / 5 + 1) >= 0x20u)
  {
    sub_10010E390();
  }

  return ((v5 / 0x99 - 12 * (v5 / 0x5FA) + 3) << 16) | ((v4 - (153 * (v5 / 0x99) + 2) / 5 + 1) << 32) | (v3 + 100 * v1 - 4800 + v5 / 0x5FA);
}

void sub_100114B54(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8)
{
  v8 = a6;
  v44 = 0u;
  v45 = 0u;
  *__p = 0u;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v12 = v11;
    v13 = v11;
  }

  else
  {
    v16 = a5;
    v13 = v11;
    v12 = v11;
    while (1)
    {
      while (1)
      {
        v13 = sub_100110A24(&v46, __p, a1, v13, v12, v16);
        v20 = __p[1] + 8 * ((v45 + *(&v45 + 1)) >> 12);
        if (v44 == __p[1])
        {
          v21 = 0;
        }

        else
        {
          v21 = *v20 + ((v45 + WORD4(v45)) & 0xFFF);
        }

        sub_100114EEC(__p, v20, v21, a7, a8, a8 - a7);
        size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = a1->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = a1->__r_.__value_.__l.__size_;
        }

        v22 = &v11[size];
        if (v8 != &v11[size])
        {
          break;
        }

        v16 = v8;
        v12 = v8;
        v8 = &v11[size];
        if (v16 == v22)
        {
          goto LABEL_34;
        }
      }

      v23 = a2[1];
      if (*a2 == v23)
      {
        break;
      }

      v16 = v8;
      while (1)
      {
        v24 = *a2;
        v25 = v16;
        do
        {
          if (*v25 != *v24)
          {
            break;
          }

          ++v25;
          ++v24;
          if (v25 == v22)
          {
            break;
          }
        }

        while (v24 != v23);
        if (v24 == v23)
        {
          break;
        }

        if (++v16 == v22)
        {
          v16 = &v11[size];
          v25 = &v11[size];
          goto LABEL_29;
        }
      }

      v22 = v25;
LABEL_29:
      if (v16 != v25)
      {
        a8 = a4;
        a7 = a3;
      }

      v12 = v8;
      v8 = v22;
      if (v16 == v22)
      {
        goto LABEL_34;
      }
    }

    v12 = v8;
  }

LABEL_34:
  v26 = sub_100110A24(&v46, __p, a1, v13, v12, &v11[size]);
  v27 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v27 & 0x80u) == 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v27 & 0x80u) != 0)
  {
    v27 = a1->__r_.__value_.__l.__size_;
  }

  v29 = v28 + v27;
  if (*(&v45 + 1))
  {
    v30 = (v45 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v44 == __p[1])
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v32 = __p[1] + 8 * ((v45 + *(&v45 + 1)) >> 12);
    }

    else
    {
      v31 = ((v45 + *(&v45 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v32 = __p[1] + v31;
      v33 = *(__p[1] + v31) + ((v45 + *(&v45 + 1)) & 0xFFF);
      v34 = ((v45 + *(&v45 + 1)) & 0xFFF) + ((v31 - v30) << 9) - (v45 & 0xFFF);
      v35 = v33;
      v36 = (*(__p[1] + v30) + (v45 & 0xFFF));
      if (v33 == v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34;
      }
    }

    sub_100112C60(a1, v29, __p[1] + v30, v36, v32, v35, v37);
  }

  else
  {
    std::string::erase(a1, &v26[-v28], v29 - v26);
  }

  v38 = __p[1];
  v39 = v44;
  *(&v45 + 1) = 0;
  v40 = (v44 - __p[1]) >> 3;
  if (v40 >= 3)
  {
    do
    {
      operator delete(*v38);
      v39 = v44;
      v38 = (__p[1] + 8);
      __p[1] = v38;
      v40 = (v44 - v38) >> 3;
    }

    while (v40 > 2);
  }

  if (v40 == 1)
  {
    v41 = 2048;
    goto LABEL_53;
  }

  if (v40 == 2)
  {
    v41 = 4096;
LABEL_53:
    *&v45 = v41;
  }

  if (v38 != v39)
  {
    do
    {
      v42 = *v38++;
      operator delete(v42);
    }

    while (v38 != v39);
    if (v44 != __p[1])
    {
      *&v44 = v44 + ((__p[1] - v44 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

uint64_t *sub_100114EEC(int64x2_t *a1, char *a2, uint64_t a3, char *__src, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
    if (!a3)
    {
LABEL_3:
      v16 = 0;
      v17 = a1[2].i64[1];
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
    if (a3 == v15)
    {
      goto LABEL_3;
    }
  }

  v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
LABEL_4:
    v18 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v18 = 0;
    }

    v19 = v10 + v17;
    v20 = v18 - v19;
    if (a6 > v20)
    {
      sub_100112080(a1, a6 - v20);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v19 = a1[2].i64[0] + v17;
    }

    v21 = (v12 + 8 * (v19 >> 12));
    if (v13 == v12)
    {
      v22 = 0;
      v23 = v17 - v16;
      v24 = v17 - v16 - v6;
      if (v17 - v16 < v6)
      {
LABEL_10:
        v25 = &a5[v24];
        if (v23 >= v6 >> 1)
        {
          v26 = v25;
        }

        else
        {
          v26 = &__src[v23];
        }

        if (v26 == a5)
        {
          v29 = v22;
          v28 = v21;
        }

        else
        {
          v27 = v26;
          v28 = v21;
          v29 = v22;
          do
          {
            *v29++ = *v27;
            if (&v29[-*v28] == 4096)
            {
              v30 = v28[1];
              ++v28;
              v29 = v30;
            }

            ++v27;
            ++a1[2].i64[1];
          }

          while (v27 != a5);
        }

        a5 = v26;
        v6 = v23;
        if (!v23)
        {
          goto LABEL_97;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = *v21 + (v19 & 0xFFF);
      v23 = v17 - v16;
      v24 = v17 - v16 - v6;
      if (v17 - v16 < v6)
      {
        goto LABEL_10;
      }
    }

    v29 = v22;
    v28 = v21;
    if (!v6)
    {
      goto LABEL_97;
    }

LABEL_39:
    v40 = &v22[-v6] - *v21;
    if (v40 < 1)
    {
      v43 = 4095 - v40;
      v41 = &v21[-(v43 >> 12)];
      v42 = *v41 + (~v43 & 0xFFF);
      if (v42 == v22)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v41 = &v21[v40 >> 12];
      v42 = *v41 + (v40 & 0xFFF);
      if (v42 == v22)
      {
LABEL_50:
        if (v6 < v23)
        {
          v48 = v22 - (*v21 + v23);
          if (v48 < 1)
          {
            v62 = 4095 - v48;
            v49 = &v21[-(v62 >> 12)];
            v50 = *v49 + (~v62 & 0xFFF);
          }

          else
          {
            v49 = &v21[v48 >> 12];
            v50 = *v49 + (v48 & 0xFFF);
          }

          sub_100112A5C(v49, v50, v41, v42, v21, v22, &v81);
          v21 = v83;
          v22 = v84;
        }

        if (a5 != __src)
        {
          v64 = *v21;
          v63 = v21 - 1;
          v65 = v22 - v64;
          if (a5 - __src >= v22 - v64)
          {
            v66 = v65;
          }

          else
          {
            v66 = a5 - __src;
          }

          v67 = &a5[-v66];
          if (v66)
          {
LABEL_76:
            memmove(&v22[-v66], v67, v66);
          }

          while (v67 != __src)
          {
            v68 = *v63--;
            v22 = (v68 + 4096);
            if (v67 - __src >= 4096)
            {
              v66 = 4096;
            }

            else
            {
              v66 = v67 - __src;
            }

            v67 -= v66;
            if (v66)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_97;
      }
    }

    v44 = v41;
    v45 = v42;
    while (1)
    {
      *v29++ = *v45;
      if (&v29[-*v28] == 4096)
      {
        v46 = v28[1];
        ++v28;
        v29 = v46;
        if (&(++v45)[-*v44] == 4096)
        {
LABEL_49:
          v47 = v44[1];
          ++v44;
          v45 = v47;
        }
      }

      else if (&(++v45)[-*v44] == 4096)
      {
        goto LABEL_49;
      }

      ++a1[2].i64[1];
      if (v45 == v22)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_20:
  if (a6 > v10)
  {
    sub_10011196C(a1, a6 - v10);
    v10 = a1[2].u64[0];
    v12 = a1->i64[1];
    v13 = a1[1].i64[0];
    v11 = v10 >> 12;
  }

  v31 = (v12 + 8 * v11);
  if (v13 != v12)
  {
    v32 = *v31 + (v10 & 0xFFF);
    v33 = v6 - v16;
    if (v6 > v16)
    {
      goto LABEL_24;
    }

LABEL_35:
    v37 = v32;
    v36 = v31;
    if (!v6)
    {
      goto LABEL_97;
    }

    goto LABEL_55;
  }

  v32 = 0;
  v33 = v6 - v16;
  if (v6 <= v16)
  {
    goto LABEL_35;
  }

LABEL_24:
  v34 = &__src[v33];
  if (v16 < v6 >> 1)
  {
    v34 = &a5[-v16];
  }

  if (v34 == __src)
  {
    v37 = v32;
    v36 = v31;
  }

  else
  {
    v35 = v34;
    v36 = v31;
    v37 = v32;
    do
    {
      if (v37 == *v36)
      {
        v39 = *--v36;
        v37 = (v39 + 4096);
      }

      v38 = *--v35;
      *--v37 = v38;
      a1[2] = vaddq_s64(a1[2], xmmword_1003D1E00);
    }

    while (v35 != __src);
  }

  __src = v34;
  v6 = v16;
  if (!v16)
  {
    goto LABEL_97;
  }

LABEL_55:
  v51 = v32 - *v31 + v6;
  if (v51 < 1)
  {
    v52 = &v31[-((4095 - v51) >> 12)];
    v53 = &(*v52)[~(4095 - v51) & 0xFFF];
    if (v53 == v32)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v52 = &v31[v51 >> 12];
  v53 = &(*v52)[v51 & 0xFFF];
  if (v53 != v32)
  {
LABEL_59:
    v54 = v52;
    v55 = v53;
    do
    {
      if (v37 == *v36)
      {
        v57 = *--v36;
        v37 = (v57 + 4096);
        if (v55 == *v54)
        {
LABEL_65:
          v58 = *--v54;
          v55 = (v58 + 4096);
        }
      }

      else if (v55 == *v54)
      {
        goto LABEL_65;
      }

      v56 = *--v55;
      *--v37 = v56;
      a1[2] = vaddq_s64(a1[2], xmmword_1003D1E00);
    }

    while (v55 != v32);
  }

LABEL_66:
  if (v6 < v16)
  {
    v59 = v32 - *v31 + v16;
    if (v59 < 1)
    {
      v69 = 4095 - v59;
      v60 = &v31[-(v69 >> 12)];
      v61 = &(*v60)[~v69 & 0xFFF];
    }

    else
    {
      v60 = &v31[v59 >> 12];
      v61 = &(*v60)[v59 & 0xFFF];
    }

    v81 = v31;
    v82 = v32;
    sub_10011277C(v52, v53, v60, v61, &v81);
    v31 = v81;
    v32 = v82;
  }

  if (__src != a5)
  {
    v71 = *v31;
    v70 = (v31 + 1);
    v72 = v71 - v32 + 4096;
    if (a5 - __src >= v72)
    {
      v73 = v72;
    }

    else
    {
      v73 = a5 - __src;
    }

    if (v73)
    {
LABEL_90:
      memmove(v32, __src, v73);
    }

    while (1)
    {
      __src += v73;
      if (__src == a5)
      {
        break;
      }

      v74 = *v70++;
      v32 = v74;
      if (a5 - __src >= 4096)
      {
        v73 = 4096;
      }

      else
      {
        v73 = a5 - __src;
      }

      if (v73)
      {
        goto LABEL_90;
      }
    }
  }

LABEL_97:
  v75 = a1->i64[1];
  result = (v75 + 8 * (a1[2].i64[0] >> 12));
  if (a1[1].i64[0] == v75)
  {
    v77 = 0;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v77 = *result + (a1[2].i64[0] & 0xFFF);
    if (!v16)
    {
      return result;
    }
  }

  v78 = v77 - *result + v16;
  if (v78 < 1)
  {
    result -= (4095 - v78) >> 12;
    v80 = *result;
  }

  else
  {
    result += v78 >> 12;
    v79 = *result;
  }

  return result;
}

uint64_t sub_100115534(uint64_t a1, int a2)
{
  sub_10003BFA8(&v11);
  v3 = *(v11 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v11 + v3));
  std::ios_base::imbue((&v11 + v3), v4);
  std::locale::~locale(&v16);
  v5 = *(&v13[3].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v15, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v15);
  }

  std::locale::~locale(&v10);
  v6 = v11;
  *(&v13[1].__locale_ + *(v11 - 24)) = a2;
  v7 = &v11 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v11 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v16, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v16);
  }

  *(v7 + 36) = 48;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001157F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100115808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 72));
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100115824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_10003C1C4(&a10);
  _Unwind_Resume(a1);
}

void sub_100115840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100115854(std::string *a1, unsigned __int8 **a2, char *a3, char *a4)
{
  v35 = 0u;
  v36 = 0u;
  *__p = 0u;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (a3 == a4)
  {
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v7 = v6;
    v8 = v6;
  }

  else
  {
    v21 = a3;
    v8 = v6;
    v23 = v6;
    do
    {
      v7 = a4;
      v8 = sub_100110A24(&v37, __p, a1, v8, v23, v21);
      v24 = __p[1] + 8 * ((v36 + *(&v36 + 1)) >> 12);
      if (v35 == __p[1])
      {
        v25 = 0;
      }

      else
      {
        v25 = *v24 + ((v36 + WORD4(v36)) & 0xFFF);
      }

      sub_100114EEC(__p, v24, v25, 0, 0, 0);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v26 = &v6[size];
      if (v7 == &v6[size])
      {
        break;
      }

      v27 = a2[1];
      if (*a2 == v27)
      {
        break;
      }

      v21 = v7;
      while (1)
      {
        a4 = &v6[size];
        v28 = *a2;
        if (v21 != v26)
        {
          v28 = *a2;
          a4 = v21;
          do
          {
            if (*a4 != *v28)
            {
              break;
            }

            ++a4;
            ++v28;
            if (a4 == v26)
            {
              break;
            }
          }

          while (v28 != v27);
        }

        if (v28 == v27)
        {
          break;
        }

        if (++v21 == v26)
        {
          goto LABEL_8;
        }
      }

      v23 = v7;
    }

    while (v21 != a4);
  }

LABEL_8:
  v9 = sub_100110A24(&v37, __p, a1, v8, v7, &v6[size]);
  v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v12 = v11 + v10;
  if (*(&v36 + 1))
  {
    v13 = (v36 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v35 == __p[1])
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v15 = __p[1] + 8 * ((v36 + *(&v36 + 1)) >> 12);
    }

    else
    {
      v14 = ((v36 + *(&v36 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v15 = __p[1] + v14;
      v16 = *(__p[1] + v14) + ((v36 + *(&v36 + 1)) & 0xFFF);
      v17 = ((v36 + *(&v36 + 1)) & 0xFFF) + ((v14 - v13) << 9) - (v36 & 0xFFF);
      v18 = v16;
      v19 = (*(__p[1] + v13) + (v36 & 0xFFF));
      if (v16 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }
    }

    sub_100112C60(a1, v12, __p[1] + v13, v19, v15, v18, v20);
  }

  else
  {
    std::string::erase(a1, &v9[-v11], v12 - v9);
  }

  v29 = __p[1];
  v30 = v35;
  *(&v36 + 1) = 0;
  v31 = (v35 - __p[1]) >> 3;
  if (v31 >= 3)
  {
    do
    {
      operator delete(*v29);
      v30 = v35;
      v29 = (__p[1] + 8);
      __p[1] = v29;
      v31 = (v35 - v29) >> 3;
    }

    while (v31 > 2);
  }

  if (v31 == 1)
  {
    v32 = 2048;
    goto LABEL_49;
  }

  if (v31 == 2)
  {
    v32 = 4096;
LABEL_49:
    *&v36 = v32;
  }

  if (v29 != v30)
  {
    do
    {
      v33 = *v29++;
      operator delete(v33);
    }

    while (v29 != v30);
    if (v35 != __p[1])
    {
      *&v35 = v35 + ((__p[1] - v35 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_100115BA4(std::string *a1, unsigned __int8 **a2, char *a3, char *a4)
{
  v35 = 0u;
  v36 = 0u;
  *__p = 0u;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (a3 == a4)
  {
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v7 = v6;
    v8 = v6;
  }

  else
  {
    v21 = a3;
    v8 = v6;
    v23 = v6;
    do
    {
      v7 = a4;
      v8 = sub_100110A24(&v37, __p, a1, v8, v23, v21);
      v24 = __p[1] + 8 * ((v36 + *(&v36 + 1)) >> 12);
      if (v35 == __p[1])
      {
        v25 = 0;
      }

      else
      {
        v25 = *v24 + ((v36 + WORD4(v36)) & 0xFFF);
      }

      sub_100114EEC(__p, v24, v25, 0, 0, 0);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v26 = &v6[size];
      if (v7 == &v6[size])
      {
        break;
      }

      v27 = a2[1];
      if (*a2 == v27)
      {
        break;
      }

      v21 = v7;
      while (1)
      {
        a4 = &v6[size];
        v28 = *a2;
        if (v21 != v26)
        {
          v28 = *a2;
          a4 = v21;
          do
          {
            if (*a4 != *v28)
            {
              break;
            }

            ++a4;
            ++v28;
            if (a4 == v26)
            {
              break;
            }
          }

          while (v28 != v27);
        }

        if (v28 == v27)
        {
          break;
        }

        if (++v21 == v26)
        {
          goto LABEL_8;
        }
      }

      v23 = v7;
    }

    while (v21 != a4);
  }

LABEL_8:
  v9 = sub_100110A24(&v37, __p, a1, v8, v7, &v6[size]);
  v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v12 = v11 + v10;
  if (*(&v36 + 1))
  {
    v13 = (v36 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v35 == __p[1])
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v15 = __p[1] + 8 * ((v36 + *(&v36 + 1)) >> 12);
    }

    else
    {
      v14 = ((v36 + *(&v36 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v15 = __p[1] + v14;
      v16 = *(__p[1] + v14) + ((v36 + *(&v36 + 1)) & 0xFFF);
      v17 = ((v36 + *(&v36 + 1)) & 0xFFF) + ((v14 - v13) << 9) - (v36 & 0xFFF);
      v18 = v16;
      v19 = (*(__p[1] + v13) + (v36 & 0xFFF));
      if (v16 == v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }
    }

    sub_100112C60(a1, v12, __p[1] + v13, v19, v15, v18, v20);
  }

  else
  {
    std::string::erase(a1, &v9[-v11], v12 - v9);
  }

  v29 = __p[1];
  v30 = v35;
  *(&v36 + 1) = 0;
  v31 = (v35 - __p[1]) >> 3;
  if (v31 >= 3)
  {
    do
    {
      operator delete(*v29);
      v30 = v35;
      v29 = (__p[1] + 8);
      __p[1] = v29;
      v31 = (v35 - v29) >> 3;
    }

    while (v31 > 2);
  }

  if (v31 == 1)
  {
    v32 = 2048;
    goto LABEL_49;
  }

  if (v31 == 2)
  {
    v32 = 4096;
LABEL_49:
    *&v36 = v32;
  }

  if (v29 != v30)
  {
    do
    {
      v33 = *v29++;
      operator delete(v33);
    }

    while (v29 != v30);
    if (v35 != __p[1])
    {
      *&v35 = v35 + ((__p[1] - v35 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100115EF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 0 || v4 >= 0xFFFFFFFE)
  {
    sub_1000474A4(&v13, "tm unable to handle ");
    v10 = *a1 + 2;
    if (v10 >= 3)
    {
      v11 = "a special date value";
    }

    else
    {
      v11 = off_10043D620[v10];
    }

    std::string::append(&v13, v11);
    std::logic_error::logic_error(&v12, &v13);
    sub_1001160F4(&v12);
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = sub_1001149C4(v4);
  *(a2 + 16) = WORD1(v5) - 1;
  *(a2 + 20) = v5 - 1900;
  *(a2 + 12) = WORD2(v5);
  v6 = sub_1001149C4(*a1);
  v7 = (14 - WORD1(v6)) / 12;
  v8 = ((v6 - v7) + WORD2(v6) + ((v6 - v7) >> 2) - (v6 - v7) / 0x64u + (v6 - v7) / 0x190u + ((357913942 * (31 * (WORD1(v6) + 12 * v7 - 2))) >> 32)) % 7;
  if (v8 >= 7)
  {
    sub_100116A30();
  }

  *(a2 + 24) = v8;
  result = sub_100116150(a1);
  *(a2 + 28) = result - 1;
  *(a2 + 32) = -1;
  return result;
}

void sub_1001160C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::out_of_range a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::out_of_range::~out_of_range(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001160F4(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001162A8(exception, a1);
}

uint64_t sub_100116150(int *a1)
{
  v2 = sub_1001149C4(*a1);
  sub_10010ECA0(&v10, v2, 1u, 1u);
  v3 = *a1;
  if ((*a1 + 2) < 3)
  {
    if (v3 == -2 || v10 == -2)
    {
LABEL_18:
      sub_100117340();
    }

LABEL_10:
    if (v3)
    {
      if (v3 == -1)
      {
        if (v10 == -1)
        {
          goto LABEL_18;
        }

LABEL_28:
        sub_100117340();
      }

      if (v10 != -1)
      {
        if (!v10)
        {
          goto LABEL_28;
        }

        v7 = v3 - v10;
        v8 = v3 == v10 ? 0 : -2;
        v9 = v7 == -1 ? -1 : v8;
        v5 = v9 + 1;
        if ((v5 & 0x10000) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }
    }

    else if (!v10)
    {
      goto LABEL_18;
    }

    return 1;
  }

  if ((v10 + 2) < 3)
  {
    if (v10 == -2)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v5 = (v3 - v10) + 1;
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if (v5 >= 0x16Fu)
  {
    goto LABEL_18;
  }

  return v5;
}

uint64_t sub_1001162A8(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_10043D3B8;
  *(a1 + 8) = off_10043D3E8;
  *(a1 + 24) = off_10043D410;
  return a1;
}

uint64_t sub_100116354(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_100116584(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001168F4(exception, a1);
}

void sub_1001165E0(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_100116684(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_100116718(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_1001167C8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_100116850(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

uint64_t sub_1001168F4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043D3B8;
  *(a1 + 8) = off_10043D3E8;
  *(a1 + 24) = off_10043D410;
  return a1;
}

void sub_100116B20(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100116B80(exception, a1);
}

uint64_t sub_100116B80(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_10043D490;
  *(a1 + 8) = off_10043D4C0;
  *(a1 + 24) = off_10043D4E8;
  return a1;
}

uint64_t sub_100116C2C(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_100116E5C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100117204(exception, a1);
}

void sub_100116EB8(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_100116F5C(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_100116FF0(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_1001170A0(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_100117128(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

void sub_1001171CC(std::out_of_range *a1)
{
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

uint64_t sub_100117204(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_10043D508;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043D490;
  *(a1 + 8) = off_10043D4C0;
  *(a1 + 24) = off_10043D4E8;
  return a1;
}

void sub_100117430(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100117490(exception, a1);
}

uint64_t sub_100117490(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_10043D590;
  *(a1 + 8) = off_10043D5C0;
  *(a1 + 24) = off_10043D5E8;
  return a1;
}

uint64_t sub_10011753C(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_10011776C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100117B14(exception, a1);
}

void sub_1001177C8(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_10011786C(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);
}

void sub_100117900(std::out_of_range *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_1001179B0(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_100117A38(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

void sub_100117ADC(std::out_of_range *a1)
{
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

uint64_t sub_100117B14(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_10043D608;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043D590;
  *(a1 + 8) = off_10043D5C0;
  *(a1 + 24) = off_10043D5E8;
  return a1;
}

void sub_100117C50()
{
  sub_10010EE5C(v3, 1, asc_1003D1E10, &asc_1003D1E10[1], &asc_1003D1E10[2], &asc_1003D1E10[3]);
  memset(v2, 0, sizeof(v2));
  sub_10010F138(&v0, "not-a-date-time", "N5boost9date_time10time_facetINS_10posix_time5ptimeEcNSt3__119ostreambuf_iteratorIcNS4_11char_traitsIcEEEEEE", v2);
  sub_10010F26C(&__p);
}

void sub_100117EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_10010FA10(v21);
    _Unwind_Resume(a1);
  }

  sub_10010FA10(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_100117F60()
{
  v0.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((atomic_load_explicit(&qword_10045CDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045CDA0))
  {
    mach_timebase_info(&info);
    qword_10045CD98 = info;
    __cxa_guard_release(&qword_10045CDA0);
  }

  qword_10045CD80 = 1000 * v0.__d_.__rep_ - mach_absolute_time() * qword_10045CD98 / HIDWORD(qword_10045CD98);
  if ((atomic_load_explicit(&qword_10045CDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045CDA0))
  {
    mach_timebase_info(&info);
    qword_10045CD98 = info;
    __cxa_guard_release(&qword_10045CDA0);
  }

  qword_10045CD88 = mach_absolute_time() * qword_10045CD98 / HIDWORD(qword_10045CD98);
  if ((atomic_load_explicit(&qword_10045CDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045CDB0))
  {
    mach_timebase_info(&info);
    qword_10045CDA8 = info;
    __cxa_guard_release(&qword_10045CDB0);
  }

  result = mach_continuous_time();
  qword_10045CD90 = result * qword_10045CDA8 / HIDWORD(qword_10045CDA8);
  return result;
}

uint64_t sub_100118124(uint64_t result)
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

void sub_1001181E4(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_100118424();
}

char *sub_10011823C(char **a1)
{
  result = *a1;
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

BOOL sub_100118254(const void ***a1, const void ***a2)
{
  v2 = *(*a2 + 23);
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  if (v3 >= 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = **a1;
  }

  if (v2 >= 0)
  {
    v6 = *(*a2 + 23);
  }

  else
  {
    v6 = (*a2)[1];
  }

  if (v2 >= 0)
  {
    v7 = *a2;
  }

  else
  {
    v7 = **a2;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v4 < v6;
  }
}

BOOL sub_1001182C8(const void ***a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *v2;
  }

  return memcmp(v7, v8, v4) == 0;
}

BOOL sub_100118344(const void ***a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 != v5)
  {
    return 1;
  }

  if (v3 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *v2;
  }

  return memcmp(v7, v8, v4) != 0;
}

unint64_t sub_1001183C0(uint64_t a1, uint64_t ***a2)
{
  v2 = *(*a2 + 23);
  v3 = (*a2)[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sub_1000045A4(&v7, v4, v5);
}

void *sub_100118404(void *a1, uint64_t **a2)
{
  v2 = *(*a2 + 23);
  v3 = (*a2)[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sub_10003C2E4(a1, v4, v5);
}

void sub_10011852C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100118564(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043D648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001185B8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *sub_100118638(void *a1)
{
  *a1 = off_10043D698;
  sub_1000E4A44((a1 + 4), a1[5]);
  sub_1000E4A44((a1 + 1), a1[2]);
  return a1;
}

void sub_100118690(void *a1)
{
  *a1 = off_10043D698;
  sub_1000E4A44((a1 + 4), a1[5]);
  sub_1000E4A44((a1 + 1), a1[2]);

  operator delete();
}

void *sub_100118708(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "ParamOverrides(", 15);
  sub_10003C2E4(a1, "paramOverridesClient=", 21);
  if (*(a2 + 56))
  {
    sub_1000E27FC((a2 + 8));
    if ((v12 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v12 & 0x80u) == 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = v11;
    }

    sub_10003C2E4(a1, p_p, v5);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v6 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v6, "paramOverridesServer=", 21);
  if ((*(a2 + 56) & 2) != 0)
  {
    sub_1000E27FC((a2 + 32));
    if ((v12 & 0x80u) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p;
    }

    if ((v12 & 0x80u) == 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v11;
    }

    sub_10003C2E4(a1, v7, v8);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10011885C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011887C(uint64_t a1)
{
  *a1 = off_10043D6B8;
  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
    if ((*(a1 + 791) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 767) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 791) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 768));
  if ((*(a1 + 767) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 743) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 744));
  if ((*(a1 + 743) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 719) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 720));
  if ((*(a1 + 719) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 695) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(a1 + 696));
  if ((*(a1 + 695) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 671) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 672));
  if ((*(a1 + 671) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 647) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(a1 + 648));
  if ((*(a1 + 647) & 0x80000000) == 0)
  {
LABEL_9:
    sub_1001214AC((a1 + 584));
    sub_1001359D8(a1 + 80);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 624));
  sub_1001214AC((a1 + 584));
  sub_1001359D8(a1 + 80);
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_23;
  }

LABEL_21:
  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_23:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1001189F0(uint64_t a1)
{
  sub_10011887C(a1);

  operator delete();
}

uint64_t sub_100118A30(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D6B8;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  v15 = a1 + 80;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = off_10043DD58;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = off_10043DAA8;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) &= 0xFCu;
  *(a1 + 208) = 0;
  *(a1 + 216) = off_10043DB68;
  *(a1 + 224) = 0;
  *(a1 + 232) = off_10043DB48;
  *(a1 + 240) = off_10043DB08;
  *(a1 + 248) = 0u;
  *(a1 + 264) &= 0xFCu;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = *(a1 + 296) & 0xF8 | 4;
  *(a1 + 304) &= 0xF8u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = off_10043DAC8;
  *(a1 + 336) = xmmword_1003D21F0;
  *(a1 + 352) = xmmword_1003D2200;
  *(a1 + 368) |= 0xFu;
  *(a1 + 376) = off_10043DAC8;
  *(a1 + 384) = xmmword_1003D21F0;
  *(a1 + 400) = xmmword_1003D2200;
  *(a1 + 416) |= 0xFu;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = off_10043DB08;
  *(a1 + 472) = 0u;
  *(a1 + 488) &= 0xFCu;
  *(a1 + 496) = off_10043DB08;
  *(a1 + 504) = 0u;
  *(a1 + 520) &= 0xFCu;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 578) &= ~1u;
  v5 = a1 + 584;
  *(a1 + 584) = off_10043D818;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 616) &= ~1u;
  v13 = (a1 + 648);
  v14 = (a1 + 624);
  v12 = (a1 + 672);
  v6 = (a1 + 696);
  v7 = (a1 + 720);
  v8 = (a1 + 744);
  v9 = (a1 + 768);
  v10 = (a1 + 792);
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 816) &= 0xE000u;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=(v4, (a2 + 56));
  sub_100135A24(v15, a2 + 80);
  sub_10012163C(v5, a2 + 584);
  std::string::operator=(v14, (a2 + 624));
  std::string::operator=(v13, (a2 + 648));
  std::string::operator=(v12, (a2 + 672));
  std::string::operator=(v6, (a2 + 696));
  std::string::operator=(v7, (a2 + 720));
  std::string::operator=(v8, (a2 + 744));
  std::string::operator=(v9, (a2 + 768));
  std::string::operator=(v10, (a2 + 792));
  *(a1 + 816) = *(a2 + 816);
  return a1;
}

void sub_100118DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12)
{
  if (*(v12 + 815) < 0)
  {
    operator delete(*v19);
    if ((*(v12 + 791) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v12 + 767) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v12 + 791) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v18);
  if ((*(v12 + 767) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v12 + 743) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*v17);
  if ((*(v12 + 743) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v12 + 719) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((*(v12 + 719) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v12 + 695) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*v20);
  if ((*(v12 + 695) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v12 + 671) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*a9);
  if ((*(v12 + 671) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v12 + 647) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*a10);
  if ((*(v12 + 647) & 0x80000000) == 0)
  {
LABEL_9:
    sub_1001214AC(v16);
    sub_1001359D8(a12);
    if ((*(v12 + 79) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*a11);
  sub_1001214AC(v16);
  sub_1001359D8(a12);
  if ((*(v12 + 79) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*v14);
  if ((*(v12 + 55) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(v12 + 31) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*(v12 + 32));
  if ((*(v12 + 31) & 0x80000000) == 0)
  {
LABEL_12:
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(*v13);
  _Unwind_Resume(a1);
}

uint64_t sub_100118F20(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  sub_100135A24(a1 + 80, a2 + 80);
  sub_10012163C(a1 + 584, a2 + 584);
  std::string::operator=((a1 + 624), (a2 + 624));
  std::string::operator=((a1 + 648), (a2 + 648));
  std::string::operator=((a1 + 672), (a2 + 672));
  std::string::operator=((a1 + 696), (a2 + 696));
  std::string::operator=((a1 + 720), (a2 + 720));
  std::string::operator=((a1 + 744), (a2 + 744));
  std::string::operator=((a1 + 768), (a2 + 768));
  std::string::operator=((a1 + 792), (a2 + 792));
  *(a1 + 816) = *(a2 + 816);
  return a1;
}

void *sub_100118FEC(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "FloorConfiguration(", 19);
  v4 = sub_10003C2E4(a1, "regionSet=", 10);
  memset(&v49, 0, sizeof(v49));
  std::string::operator=(&v49, (a2 + 8));
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v49;
  }

  else
  {
    v5 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, v5, size);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "splitRssiMap=", 13);
  memset(&v49, 0, sizeof(v49));
  std::string::operator=(&v49, (a2 + 32));
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v49;
  }

  else
  {
    v9 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v49.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "magnetometerReference=", 22);
  memset(&v49, 0, sizeof(v49));
  std::string::operator=(&v49, (a2 + 56));
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v49;
  }

  else
  {
    v13 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v49.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  v16 = sub_10003C2E4(v15, "splitRssiMapMetadata=", 21);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011D888(a2 + 80, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v49);
    v49.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v49);
  }

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
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v16, p_p, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = sub_10003C2E4(a1, ", ", 2);
  v20 = sub_10003C2E4(v19, "rttModel=", 9);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011DAF8(a2 + 584, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v49);
    v49.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v49);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v20, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v23, "DEPRECATED_configurationId=", 27);
  if ((*(a2 + 816) & 0x20) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 624));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v49;
    }

    else
    {
      v24 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v24, v25);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v26 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v26, "DEPRECATED_id=", 14);
  if ((*(a2 + 816) & 0x40) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 648));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v49;
    }

    else
    {
      v27 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v27, v28);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v29 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v29, "DEPRECATED_description=", 23);
  if ((*(a2 + 816) & 0x80) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 672));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v49;
    }

    else
    {
      v30 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v30, v31);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v32 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v32, "DEPRECATED_shortDescription=", 28);
  if ((*(a2 + 816) & 0x100) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 696));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v49;
    }

    else
    {
      v33 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v33, v34);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v35 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v35, "DEPRECATED_planogram=", 21);
  if ((*(a2 + 816) & 0x200) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 720));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v49;
    }

    else
    {
      v36 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v36, v37);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v38 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v38, "DEPRECATED_occupancyGrid=", 25);
  if ((*(a2 + 816) & 0x400) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 744));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v49;
    }

    else
    {
      v39 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v39, v40);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v41 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v41, "DEPRECATED_floorTransitionSet=", 30);
  if ((*(a2 + 816) & 0x800) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 768));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v49;
    }

    else
    {
      v42 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v42, v43);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v44 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v44, "DEPRECATED_wifiLog=", 19);
  if ((*(a2 + 816) & 0x1000) != 0)
  {
    memset(&v49, 0, sizeof(v49));
    std::string::operator=(&v49, (a2 + 792));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v49;
    }

    else
    {
      v45 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v49.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v45, v46);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_100119760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100119828(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "IndoorOutdoorLikelihoodParams(", 30);
  v4 = sub_10003C2E4(a1, "indoorSurveyOnTileMean=", 23);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v29);
    v29.__vftable = &off_100434090;
    sub_100049F88(&v29);
  }

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

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "indoorSurveyOnTileMin=", 22);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v29);
    v29.__vftable = &off_100434090;
    sub_100049F88(&v29);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "indoorSurveyOnTileStdDev=", 25);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 24), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v29);
    v29.__vftable = &off_100434090;
    sub_100049F88(&v29);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v15, "indoorOffTileMean=", 18);
  if ((*(a2 + 64) & 8) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 32), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &off_100434090;
      sub_100049F88(&v29);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v16, v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v18 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v18, "indoorOffTileStdDev=", 20);
  if ((*(a2 + 64) & 0x10) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 40), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &off_100434090;
      sub_100049F88(&v29);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v19, v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v21 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v21, "outdoorOffTileMean=", 19);
  if ((*(a2 + 64) & 0x20) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 48), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &off_100434090;
      sub_100049F88(&v29);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v22, v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v24 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v24, "outdoorOffTileStdDev=", 21);
  if ((*(a2 + 64) & 0x40) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 56), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &off_100434090;
      sub_100049F88(&v29);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v25, v26);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_100119E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100119E80(void *a1)
{
  *a1 = off_10043D6F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100119EE0(void *a1)
{
  *a1 = off_10043D6F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_100119F68(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D6F8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) &= 0xF8u;
  if (a1 != a2)
  {
    sub_10011DD68((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_10011DD68((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_10011A014(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_10011A054(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "PolygonBounds(", 14);
  v4 = sub_10003C2E4(a1, "xs=", 3);
  sub_10011A274(a2 + 8);
  if (SHIBYTE(v19) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(v19) >= 0)
  {
    v6 = HIBYTE(v19);
  }

  else
  {
    v6 = v18;
  }

  sub_10003C2E4(v4, p_p, v6);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "ys=", 3);
  sub_10011A274(a2 + 32);
  if (SHIBYTE(v19) >= 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if (SHIBYTE(v19) >= 0)
  {
    v10 = HIBYTE(v19);
  }

  else
  {
    v10 = v18;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "tolerance=", 10);
  memset(&v16, 0, sizeof(v16));
  if ((sub_1000DE4DC((a2 + 56), &v16) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v16;
  }

  else
  {
    v13 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, size);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10011A22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011A274(uint64_t a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = *(a1 + 8);
  v9 = v3;
  sub_10011E018(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011A42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011A440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

void **sub_10011A478(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 72;
      v6 = v3 - 72;
      v7 = v3 - 72;
      do
      {
        v8 = *v7;
        v7 -= 72;
        (*v8)(v6);
        v5 -= 72;
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

void *sub_10011A514(void *a1)
{
  *a1 = off_10043D718;
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      v5 = v3 - 9;
      v6 = v3 - 9;
      v7 = v3 - 9;
      do
      {
        v8 = *v7;
        v7 -= 9;
        (*v8)(v6);
        v5 -= 9;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  a1[1] = off_10043D6F8;
  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  v11 = a1[2];
  if (v11)
  {
    a1[3] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_10011A60C(void *a1)
{
  *a1 = off_10043D718;
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      v5 = v3 - 9;
      v6 = v3 - 9;
      v7 = v3 - 9;
      do
      {
        v8 = *v7;
        v7 -= 9;
        (*v8)(v6);
        v5 -= 9;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  a1[1] = off_10043D6F8;
  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  v11 = a1[2];
  if (v11)
  {
    a1[3] = v11;
    operator delete(v11);
  }

  operator delete();
}

double sub_10011A724(uint64_t a1, uint64_t a2)
{
  if (a1 + 8 != a2)
  {
    sub_10011DD68((a1 + 16), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_10011DD68((a1 + 40), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  result = *(a2 + 56);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 64);
  return result;
}

uint64_t sub_10011A78C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D718;
  *(a1 + 8) = off_10043D6F8;
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) &= 0xF8u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) &= 0xFCu;
  if (a1 == a2)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    sub_10011DD68(v4, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
    sub_10011DD68((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    sub_10011E29C((a1 + 80), *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  }

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_10011A8AC(_Unwind_Exception *a1)
{
  sub_10011A478(v2);
  sub_100119E80(v1);
  _Unwind_Resume(a1);
}

void *sub_10011A8CC(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "GeoJsonPolygon(", 15);
  v4 = sub_10003C2E4(a1, "exteriorRing=", 13);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011E604(a2 + 8, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &off_100434090;
    sub_100049F88(&v13);
  }

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

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "interiorRings=", 14);
  sub_10011AA80((a2 + 80));
  if (SHIBYTE(v15) >= 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__vftable;
  }

  if (SHIBYTE(v15) >= 0)
  {
    v10 = HIBYTE(v15);
  }

  else
  {
    v10 = v14;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13.__vftable);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10011AA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011AA80(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_10011E85C(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011AC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AC84(uint64_t a1)
{
  *a1 = off_10043D738;
  v2 = *(a1 + 1888);
  if (v2)
  {
    v3 = *(a1 + 1896);
    v4 = *(a1 + 1888);
    if (v3 != v2)
    {
      v5 = v3 - 103;
      v6 = v3 - 103;
      do
      {
        (**v6)(v6);
        v5 -= 103;
        v7 = v6 == v2;
        v6 -= 103;
      }

      while (!v7);
      v4 = *(a1 + 1888);
    }

    *(a1 + 1896) = v2;
    operator delete(v4);
  }

  if (*(a1 + 1887) < 0)
  {
    operator delete(*(a1 + 1864));
  }

  v8 = *(a1 + 1832);
  if (v8)
  {
    v9 = *(a1 + 1840);
    v10 = *(a1 + 1832);
    if (v9 != v8)
    {
      v11 = v9 - 14;
      v12 = v9 - 14;
      v13 = v9 - 14;
      do
      {
        v14 = *v13;
        v13 -= 14;
        (*v14)(v12);
        v11 -= 14;
        v7 = v12 == v8;
        v12 = v13;
      }

      while (!v7);
      v10 = *(a1 + 1832);
    }

    *(a1 + 1840) = v8;
    operator delete(v10);
  }

  v15 = *(a1 + 1800);
  if (v15)
  {
    v16 = *(a1 + 1808);
    v17 = *(a1 + 1800);
    if (v16 != v15)
    {
      v18 = v16 - 9;
      v19 = v16 - 9;
      v20 = v16 - 9;
      do
      {
        v21 = *v20;
        v20 -= 9;
        (*v21)(v19);
        v18 -= 9;
        v7 = v19 == v15;
        v19 = v20;
      }

      while (!v7);
      v17 = *(a1 + 1800);
    }

    *(a1 + 1808) = v15;
    operator delete(v17);
  }

  nullsub_76(a1 + 1624);
  sub_10013AB80(a1 + 1440);
  sub_10013A118(a1 + 1056);
  *(a1 + 992) = off_10043D698;
  sub_1000E4A44(a1 + 1024, *(a1 + 1032));
  sub_1000E4A44(a1 + 1000, *(a1 + 1008));
  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
    if ((*(a1 + 959) & 0x80000000) == 0)
    {
LABEL_26:
      if ((*(a1 + 927) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else if ((*(a1 + 959) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(*(a1 + 936));
  if ((*(a1 + 927) & 0x80000000) == 0)
  {
LABEL_27:
    sub_10011887C(a1 + 80);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(*(a1 + 904));
  sub_10011887C(a1 + 80);
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_28:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_35:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_36:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_10011AF1C(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 103;
      v6 = v3 - 103;
      do
      {
        (**v6)(v6);
        v5 -= 103;
        v7 = v6 == v2;
        v6 -= 103;
      }

      while (!v7);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_10011AFB0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 112;
      v6 = v3 - 112;
      v7 = v3 - 112;
      do
      {
        v8 = *v7;
        v7 -= 112;
        (*v8)(v6);
        v5 -= 112;
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

void sub_10011B050(uint64_t a1)
{
  sub_10011AC84(a1);

  operator delete();
}

std::string *sub_10011B088(uint64_t a1, const std::string *a2)
{
  result = std::string::operator=((a1 + 32), a2);
  *(a1 + 1912) |= 2u;
  return result;
}

uint64_t sub_10011B0BC(uint64_t result, int a2)
{
  *(result + 1616) = a2;
  *(result + 1912) |= 0x4000u;
  return result;
}

double sub_10011B0D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 1664) = *(a2 + 8);
  *(a1 + 1680) = *(a2 + 24);
  *(a1 + 1696) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 1712) = result;
  *(a1 + 1720) = *(a2 + 64);
  return result;
}

double sub_10011B0FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 1736) = *(a2 + 8);
  *(a1 + 1752) = *(a2 + 24);
  *(a1 + 1768) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 1784) = result;
  *(a1 + 1792) = *(a2 + 64);
  return result;
}

uint64_t sub_10011B12C(uint64_t result, double a2)
{
  *(result + 1824) = a2;
  *(result + 1912) |= 0x80000u;
  return result;
}

uint64_t sub_10011B140(uint64_t result, int a2)
{
  *(result + 1856) = a2;
  *(result + 1912) |= 0x200000u;
  return result;
}

uint64_t sub_10011B154(uint64_t result, char a2)
{
  *(result + 1860) = a2;
  *(result + 1912) |= 0x400000u;
  return result;
}

uint64_t sub_10011B168(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D738;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  sub_10011D568(a1 + 80);
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 992) = off_10043D698;
  *(a1 + 1008) = 0u;
  *(a1 + 1000) = a1 + 1008;
  *(a1 + 1032) = 0u;
  *(a1 + 1024) = a1 + 1032;
  *(a1 + 1048) &= 0xFCu;
  *(a1 + 1056) = off_10043DE88;
  *(a1 + 1064) = off_10043DE28;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1104) &= 0xF8u;
  *(a1 + 1112) = off_10043DB48;
  *(a1 + 1120) = off_10043DB08;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) &= 0xFCu;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = *(a1 + 1176) & 0xF8 | 4;
  *(a1 + 1184) = off_10043DE48;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) &= 0xC0u;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = off_10043DB28;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) &= 0xFCu;
  *(a1 + 1328) = off_10043DB28;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) &= 0xFCu;
  *(a1 + 1360) = off_10043DE28;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) &= 0xF8u;
  *(a1 + 1424) = 0;
  *(a1 + 1408) = 0u;
  *(a1 + 1432) &= 0xF800u;
  *(a1 + 1440) = off_10043DEA8;
  *(a1 + 1448) = off_10043DE28;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1488) &= 0xF8u;
  *(a1 + 1496) = off_10043DB48;
  *(a1 + 1504) = off_10043DB08;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) &= 0xFCu;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = *(a1 + 1560) & 0xF8 | 4;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1592) &= 0xF8u;
  *(a1 + 1624) = off_10043DB28;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) &= 0xFCu;
  *(a1 + 1656) = off_10043D6D8;
  *(a1 + 1712) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1720) &= 0x80u;
  *(a1 + 1728) = off_10043D6D8;
  *(a1 + 1784) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1792) &= 0x80u;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = 0u;
  *(a1 + 1848) = 0;
  *(a1 + 1832) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1912) &= 0xFE000000;
  std::string::operator=(v4, (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=(v5, (a2 + 56));
  sub_100118F20(a1 + 80, a2 + 80);
  std::string::operator=((a1 + 904), (a2 + 904));
  *(a1 + 928) = *(a2 + 928);
  std::string::operator=((a1 + 936), (a2 + 936));
  std::string::operator=((a1 + 960), (a2 + 960));
  *(a1 + 984) = *(a2 + 984);
  if (a1 != a2)
  {
    sub_1000E4F40((a1 + 1000), *(a2 + 1000), (a2 + 1008));
    sub_1000E4F40((a1 + 1024), *(a2 + 1024), (a2 + 1032));
  }

  *(a1 + 1048) = *(a2 + 1048);
  sub_10013A238(a1 + 1056, a2 + 1056);
  sub_10013AC60(a1 + 1440, a2 + 1440);
  *(a1 + 1600) = *(a2 + 1600);
  *(a1 + 1608) = *(a2 + 1608);
  *(a1 + 1616) = *(a2 + 1616);
  sub_10012A358(a1 + 1624, a2 + 1624);
  *(a1 + 1664) = *(a2 + 1664);
  *(a1 + 1680) = *(a2 + 1680);
  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1712) = *(a2 + 1712);
  *(a1 + 1720) = *(a2 + 1720);
  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1744) = *(a2 + 1744);
  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  if (a1 == a2)
  {
    *(a1 + 1824) = *(a2 + 1824);
  }

  else
  {
    sub_10011E29C((a1 + 1800), *(a2 + 1800), *(a2 + 1808), 0x8E38E38E38E38E39 * ((*(a2 + 1808) - *(a2 + 1800)) >> 3));
    *(a1 + 1824) = *(a2 + 1824);
    sub_10011EAE0((a1 + 1832), *(a2 + 1832), *(a2 + 1840), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1840) - *(a2 + 1832)) >> 4));
  }

  *(a1 + 1856) = *(a2 + 1856);
  *(a1 + 1860) = *(a2 + 1860);
  std::string::operator=((a1 + 1864), (a2 + 1864));
  if (a1 != a2)
  {
    sub_10011EEF8((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xDAB7EC1DD3431B57 * ((*(a2 + 1896) - *(a2 + 1888)) >> 3));
  }

  *(a1 + 1912) = *(a2 + 1912);
  return a1;
}

void sub_10011B7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 79) < 0)
  {
    operator delete(*v14);
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v12 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v12 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v12 + 32));
  if ((*(v12 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10011B8BC(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  sub_100118F20(a1 + 80, a2 + 80);
  std::string::operator=((a1 + 904), (a2 + 904));
  *(a1 + 928) = *(a2 + 928);
  std::string::operator=((a1 + 936), (a2 + 936));
  std::string::operator=((a1 + 960), (a2 + 960));
  *(a1 + 984) = *(a2 + 984);
  if (a1 != a2)
  {
    sub_1000E4F40((a1 + 1000), *(a2 + 1000), (a2 + 1008));
    sub_1000E4F40((a1 + 1024), *(a2 + 1024), (a2 + 1032));
  }

  *(a1 + 1048) = *(a2 + 1048);
  sub_10013A238(a1 + 1056, a2 + 1056);
  sub_10013AC60(a1 + 1440, a2 + 1440);
  *(a1 + 1600) = *(a2 + 1600);
  *(a1 + 1608) = *(a2 + 1608);
  *(a1 + 1616) = *(a2 + 1616);
  sub_10012A358(a1 + 1624, a2 + 1624);
  *(a1 + 1664) = *(a2 + 1664);
  *(a1 + 1680) = *(a2 + 1680);
  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1712) = *(a2 + 1712);
  *(a1 + 1720) = *(a2 + 1720);
  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1744) = *(a2 + 1744);
  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  if (a1 == a2)
  {
    *(a1 + 1824) = *(a2 + 1824);
  }

  else
  {
    sub_10011E29C((a1 + 1800), *(a2 + 1800), *(a2 + 1808), 0x8E38E38E38E38E39 * ((*(a2 + 1808) - *(a2 + 1800)) >> 3));
    *(a1 + 1824) = *(a2 + 1824);
    sub_10011EAE0((a1 + 1832), *(a2 + 1832), *(a2 + 1840), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1840) - *(a2 + 1832)) >> 4));
  }

  *(a1 + 1856) = *(a2 + 1856);
  *(a1 + 1860) = *(a2 + 1860);
  std::string::operator=((a1 + 1864), (a2 + 1864));
  if (a1 != a2)
  {
    sub_10011EEF8((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xDAB7EC1DD3431B57 * ((*(a2 + 1896) - *(a2 + 1888)) >> 3));
  }

  *(a1 + 1912) = *(a2 + 1912);
  return a1;
}

void *sub_10011BAD0(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "LocationConfiguration(", 22);
  v4 = sub_10003C2E4(a1, "id=", 3);
  memset(&v123, 0, sizeof(v123));
  std::string::operator=(&v123, (a2 + 8));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v123;
  }

  else
  {
    v5 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, v5, size);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v7, "uid=", 4);
  if ((*(a2 + 1912) & 2) != 0)
  {
    memset(&v123, 0, sizeof(v123));
    std::string::operator=(&v123, (a2 + 32));
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v123;
    }

    else
    {
      v8 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v123.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v8, v9);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v10 = sub_10003C2E4(a1, ", ", 2);
  v11 = sub_10003C2E4(v10, "description=", 12);
  memset(&v123, 0, sizeof(v123));
  std::string::operator=(&v123, (a2 + 56));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v123;
  }

  else
  {
    v12 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v11, v12, v13);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v14 = sub_10003C2E4(a1, ", ", 2);
  v15 = sub_10003C2E4(v14, "floorConfiguration=", 19);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011F1DC(a2 + 80, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v123);
    v123.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v123);
  }

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
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v15, p_p, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = sub_10003C2E4(a1, ", ", 2);
  v19 = sub_10003C2E4(v18, "iconSet=", 8);
  memset(&v123, 0, sizeof(v123));
  std::string::operator=(&v123, (a2 + 904));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v123;
  }

  else
  {
    v20 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v19, v20, v21);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v22 = sub_10003C2E4(a1, ", ", 2);
  v23 = sub_10003C2E4(v22, "autoUpdate=", 11);
  memset(&v123, 0, sizeof(v123));
  if (*(a2 + 928))
  {
    v24 = 49;
  }

  else
  {
    v24 = 48;
  }

  v123.__r_.__value_.__s.__data_[0] = v24;
  *(&v123.__r_.__value_.__s + 23) = 1;
  sub_10003C2E4(v23, &v123, 1);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v25 = sub_10003C2E4(a1, ", ", 2);
  v26 = sub_10003C2E4(v25, "floorTransitionSet=", 19);
  memset(&v123, 0, sizeof(v123));
  std::string::operator=(&v123, (a2 + 936));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v123;
  }

  else
  {
    v27 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v26, v27, v28);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v29 = sub_10003C2E4(a1, ", ", 2);
  v30 = sub_10003C2E4(v29, "locationGroupId=", 16);
  memset(&v123, 0, sizeof(v123));
  std::string::operator=(&v123, (a2 + 960));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v123;
  }

  else
  {
    v31 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v30, v31, v32);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v33 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v33, "deleted=", 8);
  if (*(a2 + 1913))
  {
    memset(&v123, 0, sizeof(v123));
    if (*(a2 + 984))
    {
      v34 = 49;
    }

    else
    {
      v34 = 48;
    }

    v123.__r_.__value_.__s.__data_[0] = v34;
    *(&v123.__r_.__value_.__s + 23) = 1;
    sub_10003C2E4(a1, &v123, 1);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v35 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v35, "paramOverrides=", 15);
  if ((*(a2 + 1913) & 2) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_10011F434(a2 + 992, &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v36, v37);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v38 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v38, "floorplan=", 10);
  if ((*(a2 + 1913) & 4) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_10011F68C(a2 + 1056, &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v39, v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v41 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v41, "occupancy=", 10);
  if ((*(a2 + 1913) & 8) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_10011F8FC(a2 + 1440, &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &__p;
    }

    else
    {
      v42 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v42, v43);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v44 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v44, "universalOrientationOfMagneticNorth=", 36);
  if ((*(a2 + 1913) & 0x10) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 1600), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &__p;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v45, v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v47 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v47, "timestampCreatedMillis=", 23);
  if ((*(a2 + 1913) & 0x20) == 0)
  {
    sub_10003C2E4(a1, "<null>", 6);
    goto LABEL_155;
  }

  *&v121.__r_.__value_.__l.__data_ = 0uLL;
  v127 = &v123.__r_.__value_.__s.__data_[2];
  v128 = v126;
  v48 = *(a2 + 1608);
  if (v48 >= 0)
  {
    v49 = *(a2 + 1608);
  }

  else
  {
    v49 = -v48;
  }

  v121.__r_.__value_.__r.__words[2] = 0;
  __p.__r_.__value_.__r.__words[0] = v49;
  __p.__r_.__value_.__l.__size_ = v126;
  __p.__r_.__value_.__s.__data_[16] = 48;
  HIDWORD(__p.__r_.__value_.__r.__words[2]) = 48;
  v50 = sub_1000E5EB8(&__p);
  v51 = v50;
  if ((v48 & 0x8000000000000000) == 0)
  {
    v127 = v50;
    v128 = v126;
    v52 = &v126[-v50];
    v53 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_123;
    }

LABEL_126:
    v54 = (v121.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v54 >= v52)
    {
      v55 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
LABEL_132:
      if (v55 >= 0)
      {
        v56 = &v121;
      }

      else
      {
        v56 = v121.__r_.__value_.__r.__words[0];
      }

      if (v51 != v126)
      {
        goto LABEL_136;
      }

LABEL_130:
      v57 = v56;
      goto LABEL_144;
    }

    v53 = v121.__r_.__value_.__l.__size_;
LABEL_128:
    std::string::__grow_by(&v121, v54, v52 - v54, v53, 0, v53, 0);
    v121.__r_.__value_.__l.__size_ = 0;
    v55 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    goto LABEL_132;
  }

  *(v50 - 1) = 45;
  v51 = (v50 - 1);
  v127 = (v50 - 1);
  v128 = v126;
  v52 = &v126[-v50 + 1];
  v53 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_123:
  if (v52 > 0x16)
  {
    v54 = 22;
    goto LABEL_128;
  }

  v56 = &v121;
  if (v51 == v126)
  {
    goto LABEL_130;
  }

LABEL_136:
  if (v52 < 0x20 || (v56 - v51) < 0x20)
  {
    v57 = v56;
    v58 = v51;
  }

  else
  {
    v57 = (v56 + (v52 & 0xFFFFFFFFFFFFFFE0));
    v58 = &v51[v52 & 0xFFFFFFFFFFFFFFE0];
    v59 = (v51 + 16);
    v60 = &v56->__r_.__value_.__r.__words[2];
    v61 = v52 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v62 = *v59;
      *(v60 - 1) = *(v59 - 1);
      *v60 = v62;
      v59 += 2;
      v60 += 4;
      v61 -= 32;
    }

    while (v61);
    if (v52 == (v52 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_144;
    }
  }

  do
  {
    v63 = *v58++;
    v57->__r_.__value_.__s.__data_[0] = v63;
    v57 = (v57 + 1);
  }

  while (v58 != v126);
LABEL_144:
  v57->__r_.__value_.__s.__data_[0] = 0;
  v64 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    v121.__r_.__value_.__l.__size_ = v52;
  }

  else
  {
    v64 = v52 & 0x7F;
    *(&v121.__r_.__value_.__s + 23) = v52 & 0x7F;
    v52 = v121.__r_.__value_.__l.__size_;
  }

  if (v64 >= 0)
  {
    v65 = &v121;
  }

  else
  {
    v65 = v121.__r_.__value_.__r.__words[0];
  }

  if (v64 >= 0)
  {
    v66 = v64;
  }

  else
  {
    v66 = v52;
  }

  sub_10003C2E4(a1, v65, v66);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

LABEL_155:
  v67 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v67, "floorNumber=", 12);
  if ((*(a2 + 1913) & 0x40) == 0)
  {
    sub_10003C2E4(a1, "<null>", 6);
    goto LABEL_194;
  }

  memset(&v121, 0, sizeof(v121));
  v124 = &v123.__r_.__value_.__s.__data_[2];
  v125 = &v123.__r_.__value_.__r.__words[2] + 7;
  v68 = *(a2 + 1616);
  if (v68 >= 0)
  {
    v69 = *(a2 + 1616);
  }

  else
  {
    v69 = -v68;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = v69;
  __p.__r_.__value_.__l.__size_ = &v123.__r_.__value_.__r.__words[2] + 7;
  __p.__r_.__value_.__s.__data_[16] = 48;
  HIDWORD(__p.__r_.__value_.__r.__words[2]) = 48;
  v70 = sub_1000E4C90(&__p);
  v71 = v70;
  if ((v68 & 0x80000000) == 0)
  {
    v124 = v70;
    v125 = &v123.__r_.__value_.__r.__words[2] + 7;
    v72 = &v123.__r_.__value_.__r.__words[2] - v70 + 7;
    v73 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_165:
    v74 = (v121.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v74 >= v72)
    {
      v75 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
LABEL_171:
      if (v75 >= 0)
      {
        v76 = &v121;
      }

      else
      {
        v76 = v121.__r_.__value_.__r.__words[0];
      }

      if (v71 != (&v123.__r_.__value_.__r.__words[2] + 7))
      {
        goto LABEL_175;
      }

LABEL_169:
      v77 = v76;
      goto LABEL_183;
    }

    v73 = v121.__r_.__value_.__l.__size_;
LABEL_167:
    std::string::__grow_by(&v121, v74, v72 - v74, v73, 0, v73, 0);
    v121.__r_.__value_.__l.__size_ = 0;
    v75 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    goto LABEL_171;
  }

  *(v70 - 1) = 45;
  v71 = (v70 - 1);
  v124 = (v70 - 1);
  v125 = &v123.__r_.__value_.__r.__words[2] + 7;
  v72 = &v123.__r_.__value_.__r - v70 + 24;
  v73 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    goto LABEL_165;
  }

LABEL_162:
  if (v72 > 0x16)
  {
    v74 = 22;
    goto LABEL_167;
  }

  v76 = &v121;
  if (v71 == (&v123.__r_.__value_.__r.__words[2] + 7))
  {
    goto LABEL_169;
  }

LABEL_175:
  if (v72 < 0x20 || (v76 - v71) < 0x20)
  {
    v77 = v76;
    v78 = v71;
  }

  else
  {
    v77 = (v76 + (v72 & 0xFFFFFFFFFFFFFFE0));
    v78 = (v71 + (v72 & 0xFFFFFFFFFFFFFFE0));
    v79 = &v71->__r_.__value_.__r.__words[2];
    v80 = &v76->__r_.__value_.__r.__words[2];
    v81 = v72 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v82 = *v79;
      *(v80 - 1) = *(v79 - 1);
      *v80 = v82;
      v79 += 4;
      v80 += 4;
      v81 -= 32;
    }

    while (v81);
    if (v72 == (v72 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_183;
    }
  }

  do
  {
    v83 = v78->__r_.__value_.__s.__data_[0];
    v78 = (v78 + 1);
    v77->__r_.__value_.__s.__data_[0] = v83;
    v77 = (v77 + 1);
  }

  while (v78 != (&v123.__r_.__value_.__r.__words[2] + 7));
LABEL_183:
  v77->__r_.__value_.__s.__data_[0] = 0;
  v84 = SHIBYTE(v121.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    v121.__r_.__value_.__l.__size_ = v72;
  }

  else
  {
    v84 = v72 & 0x7F;
    *(&v121.__r_.__value_.__s + 23) = v72 & 0x7F;
    v72 = v121.__r_.__value_.__l.__size_;
  }

  if (v84 >= 0)
  {
    v85 = &v121;
  }

  else
  {
    v85 = v121.__r_.__value_.__r.__words[0];
  }

  if (v84 >= 0)
  {
    v86 = v84;
  }

  else
  {
    v86 = v72;
  }

  sub_10003C2E4(a1, v85, v86);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

LABEL_194:
  v87 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v87, "tangentPoint=", 13);
  if ((*(a2 + 1913) & 0x80) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_10011FB6C(a2 + 1624, &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = &__p;
    }

    else
    {
      v88 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v88, v89);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v90 = sub_10003C2E4(a1, ", ", 2);
  v91 = sub_10003C2E4(v90, "wifiIndoorOutdoorLikelihoodParams=", 34);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011FDDC(a2 + 1656, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v123);
    v123.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v123);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &__p;
  }

  else
  {
    v92 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v93 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v91, v92, v93);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v94 = sub_10003C2E4(a1, ", ", 2);
  v95 = sub_10003C2E4(v94, "beaconIndoorOutdoorLikelihoodParams=", 36);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011FDDC(a2 + 1728, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v123);
    v123.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v123);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v97 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v95, v96, v97);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v98 = sub_10003C2E4(a1, ", ", 2);
  v99 = sub_10003C2E4(v98, "surveyBounds=", 13);
  sub_10011AA80((a2 + 1800));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v100 = &v123;
  }

  else
  {
    v100 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v101 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v101 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v99, v100, v101);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v102 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v102, "area=", 5);
  if ((*(a2 + 1914) & 8) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 1824), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &__p;
    }

    else
    {
      v103 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v103, v104);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v105 = sub_10003C2E4(a1, ", ", 2);
  v106 = sub_10003C2E4(v105, "floorplanBounds=", 16);
  sub_10011CE7C((a2 + 1832));
  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v123;
  }

  else
  {
    v107 = v123.__r_.__value_.__r.__words[0];
  }

  if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v108 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v108 = v123.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v106, v107, v108);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v109 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v109, "context=", 8);
  if ((*(a2 + 1914) & 0x20) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_100120510((a2 + 1856), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v123);
      v123.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v123);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &__p;
    }

    else
    {
      v110 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v111 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v110, v111);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v112 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v112, "coarseRegionalWithWifiLocations=", 32);
  if ((*(a2 + 1914) & 0x40) != 0)
  {
    memset(&v123, 0, sizeof(v123));
    if (*(a2 + 1860))
    {
      v113 = 49;
    }

    else
    {
      v113 = 48;
    }

    v123.__r_.__value_.__s.__data_[0] = v113;
    *(&v123.__r_.__value_.__s + 23) = 1;
    sub_10003C2E4(a1, &v123, 1);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v114 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v114, "DEPRECATED_webviewLocationId=", 29);
  if ((*(a2 + 1914) & 0x80) != 0)
  {
    memset(&v123, 0, sizeof(v123));
    std::string::operator=(&v123, (a2 + 1864));
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v123;
    }

    else
    {
      v115 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v123.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v115, v116);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v117 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v117, "DEPRECATED_floorConfigurations=", 31);
  if (*(a2 + 1915))
  {
    sub_10011D080((a2 + 1888));
    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v118 = &v123;
    }

    else
    {
      v118 = v123.__r_.__value_.__r.__words[0];
    }

    if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v119 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v119 = v123.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v118, v119);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}