void sub_100567BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567E08(uint64_t a1, void *a2, int a3)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
  {
    v6 = 138543618;
    v7 = [a2 description];
    v8 = 1024;
    v9 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "HomeKit error: %{public}@ for type: %d", &v6, 0x12u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C404C();
  }
}

uint64_t sub_100568094(uint64_t a1, void *a2)
{
  v3 = sub_10056820C(a1, "CLHomeKitProvider", a2);
  *v3 = off_10245F5B0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(a1 + 160) = [*(v3 + 40) newTimer];
  v4 = *(a1 + 40);
  *(a1 + 112) = [[CLHomeKitDelegate alloc] initWithProvider:a1];
  *(a1 + 120) = [[WPHomeKit alloc] initWithDelegate:*(a1 + 112) queue:{objc_msgSend(v4, "queue")}];
  *(a1 + 152) = [[CBCentralManager alloc] initWithDelegate:*(a1 + 112) queue:{objc_msgSend(v4, "queue")}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005682B8;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  [*(a1 + 160) setHandler:v6];
  return a1;
}

void sub_1005681E4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  sub_1005683CC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10056820C(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10245F700;
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

void sub_10056829C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005682B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100568314(v1);
  v2 = (*&qword_102656EB0 + j__CFAbsoluteTimeGetCurrent_2() * 1000.0) / 1000.0;
  v3 = v1[20];

  return [v3 setNextFireTime:v2];
}

void sub_100568314(void *a1)
{
  v1 = a1[16];
  v2 = a1[17];
  if (v1 != v2)
  {
    v4[8] = 0;
    v4[64] = 0;
    __p = v1;
    v6 = v2;
    a1[16] = 0;
    a1[17] = 0;
    v7 = a1[18];
    a1[18] = 0;
    v3 = 2;
    (*(*a1 + 152))(a1, &v3, v4, 1, 0xFFFFFFFFLL, 0);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1005683B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005683CC(uint64_t a1)
{
  *a1 = off_10245F700;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100568450(void *a1)
{
  *a1 = off_10245F5B0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  return sub_1005683CC(a1);
}

void sub_1005684B4(id *a1)
{
  [a1[20] invalidate];

  a1[20] = 0;
  [a1[15] invalidate];

  a1[15] = 0;
  a1[14] = 0;

  a1[19] = 0;
}

uint64_t sub_100568514(uint64_t a1)
{
  if (*a1 == 76)
  {
    if (*(a1 + 2) == 6)
    {
      v1 = *(a1 + 3);
      if ((v1 & 0x1F) == 0xD)
      {
        if (v1 == 13)
        {
          return 3;
        }

        else if (*(a1 + 4) > 1u)
        {
          return 4;
        }

        else if (*(a1 + 11))
        {
          if (*(a1 + 13))
          {
            if (*(a1 + 15))
            {
              if (*(a1 + 16) == 2)
              {
                return 9;
              }

              else
              {
                return 8;
              }
            }

            else
            {
              return 7;
            }
          }

          else
          {
            return 6;
          }
        }

        else
        {
          return 5;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

double sub_1005685C0@<D0>(unsigned __int16 *a1@<X0>, int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        *(&__dst.__r_.__value_.__s + 23) = 12;
        strcpy(&__dst, "Invalid Type");
        if (a3)
        {
          std::to_string(&v103, *(a1 + 2));
          v77 = std::string::insert(&v103, 0, " got: ", 6uLL);
          v78 = *&v77->__r_.__value_.__l.__data_;
          v104.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v104.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = std::string::append(&v104, " exptected: ", 0xCuLL);
          v80 = *&v79->__r_.__value_.__l.__data_;
          v105.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
          *&v105.__r_.__value_.__l.__data_ = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v102, 6);
          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = &v102;
          }

          else
          {
            v81 = v102.__r_.__value_.__r.__words[0];
          }

          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v102.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v102.__r_.__value_.__l.__size_;
          }

          v83 = std::string::append(&v105, v81, size);
          v84 = *&v83->__r_.__value_.__l.__data_;
          v107 = v83->__r_.__value_.__r.__words[2];
          v106 = v84;
          v83->__r_.__value_.__l.__size_ = 0;
          v83->__r_.__value_.__r.__words[2] = 0;
          v83->__r_.__value_.__r.__words[0] = 0;
          if (v107 >= 0)
          {
            v20 = &v106;
          }

          else
          {
            v20 = v106;
          }

          if (v107 >= 0)
          {
            v21 = HIBYTE(v107);
          }

          else
          {
            v21 = *(&v106 + 1);
          }

          goto LABEL_128;
        }
      }

      else
      {
        sub_100006BE0(&__dst, "Invalid Company Identifier", 0x1AuLL);
        if (a3)
        {
          std::to_string(&v103, *a1);
          v22 = std::string::insert(&v103, 0, " got: ", 6uLL);
          v23 = *&v22->__r_.__value_.__l.__data_;
          v104.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v104.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v24 = std::string::append(&v104, " expected: ", 0xBuLL);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v105.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v105.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v102, 76);
          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v102;
          }

          else
          {
            v26 = v102.__r_.__value_.__r.__words[0];
          }

          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v102.__r_.__value_.__l.__size_;
          }

          v28 = std::string::append(&v105, v26, v27);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v107 = v28->__r_.__value_.__r.__words[2];
          v106 = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          if (v107 >= 0)
          {
            v20 = &v106;
          }

          else
          {
            v20 = v106;
          }

          if (v107 >= 0)
          {
            v21 = HIBYTE(v107);
          }

          else
          {
            v21 = *(&v106 + 1);
          }

          goto LABEL_128;
        }
      }
    }

    else if (a2 == 2)
    {
      sub_100006BE0(&__dst, "Invalid Remaining Length", 0x18uLL);
      if (a3)
      {
        std::to_string(&v103, *(a1 + 3) & 0x1F);
        v46 = std::string::insert(&v103, 0, " got: ", 6uLL);
        v47 = *&v46->__r_.__value_.__l.__data_;
        v104.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&v104.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        v48 = std::string::append(&v104, " expected: ", 0xBuLL);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v105.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v105.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v102, 13);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &v102;
        }

        else
        {
          v50 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = v102.__r_.__value_.__l.__size_;
        }

        v52 = std::string::append(&v105, v50, v51);
        v53 = *&v52->__r_.__value_.__l.__data_;
        v107 = v52->__r_.__value_.__r.__words[2];
        v106 = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        if (v107 >= 0)
        {
          v20 = &v106;
        }

        else
        {
          v20 = v106;
        }

        if (v107 >= 0)
        {
          v21 = HIBYTE(v107);
        }

        else
        {
          v21 = *(&v106 + 1);
        }

        goto LABEL_128;
      }
    }

    else
    {
      if (a2 == 3)
      {
        sub_100006BE0(&__dst, "Invalid Advertising Interval and Length", 0x27uLL);
        if (!a3)
        {
          goto LABEL_174;
        }

        std::to_string(&v105, *(a1 + 3));
        v7 = std::string::insert(&v105, 0, ": ", 2uLL);
        v8 = *&v7->__r_.__value_.__l.__data_;
        v107 = v7->__r_.__value_.__r.__words[2];
        v106 = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        v9 = v107 >= 0 ? &v106 : v106;
        v10 = v107 >= 0 ? HIBYTE(v107) : *(&v106 + 1);
        std::string::append(&__dst, v9, v10);
        if (SHIBYTE(v107) < 0)
        {
          operator delete(v106);
        }

        if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_174;
        }

        v11 = v105.__r_.__value_.__r.__words[0];
        goto LABEL_173;
      }

      *(&__dst.__r_.__value_.__s + 23) = 20;
      strcpy(&__dst, "Invalid Status Flags");
      if (a3)
      {
        std::to_string(&v103, *(a1 + 4) >> 1);
        v55 = std::string::insert(&v103, 0, " got: ", 6uLL);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v104.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v104.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v104, " expected: ", 0xBuLL);
        v58 = *&v57->__r_.__value_.__l.__data_;
        v105.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v105.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v102, 0);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v102;
        }

        else
        {
          v59 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v102.__r_.__value_.__l.__size_;
        }

        v61 = std::string::append(&v105, v59, v60);
        v62 = *&v61->__r_.__value_.__l.__data_;
        v107 = v61->__r_.__value_.__r.__words[2];
        v106 = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        if (v107 >= 0)
        {
          v20 = &v106;
        }

        else
        {
          v20 = v106;
        }

        if (v107 >= 0)
        {
          v21 = HIBYTE(v107);
        }

        else
        {
          v21 = *(&v106 + 1);
        }

LABEL_128:
        std::string::append(&__dst, v20, v21);
        if (SHIBYTE(v107) < 0)
        {
          operator delete(v106);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_174;
        }

        v11 = v103.__r_.__value_.__r.__words[0];
        goto LABEL_173;
      }
    }

LABEL_174:
    result = *&__dst.__r_.__value_.__l.__data_;
    *a4 = __dst;
    return result;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      sub_100006BE0(&__dst, "Invalid Accessory Category Identifier", 0x25uLL);
      if (!a3)
      {
        goto LABEL_174;
      }

      std::to_string(&v101, 1);
      v30 = std::string::insert(&v101, 0, " (out of range [", 0x10uLL);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = std::string::append(&v102, " - ", 3uLL);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v100, 0xFFFF);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v100;
      }

      else
      {
        v34 = v100.__r_.__value_.__r.__words[0];
      }

      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v100.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v103, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v104, "]): ", 4uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v105.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v105.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v99, *(a1 + 11));
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v99;
      }

      else
      {
        v40 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v99.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v105, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v107 = v42->__r_.__value_.__r.__words[2];
      v106 = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (v107 >= 0)
      {
        v44 = &v106;
      }

      else
      {
        v44 = v106;
      }

      if (v107 >= 0)
      {
        v45 = HIBYTE(v107);
      }

      else
      {
        v45 = *(&v106 + 1);
      }
    }

    else
    {
      sub_100006BE0(&__dst, "Invalid Global State Number", 0x1BuLL);
      if (!a3)
      {
        goto LABEL_174;
      }

      std::to_string(&v101, 1);
      v85 = std::string::insert(&v101, 0, " (out of range [", 0x10uLL);
      v86 = *&v85->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(&v102, " - ", 3uLL);
      v88 = *&v87->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v100, 0xFFFF);
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v100;
      }

      else
      {
        v89 = v100.__r_.__value_.__r.__words[0];
      }

      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v100.__r_.__value_.__l.__size_;
      }

      v91 = std::string::append(&v103, v89, v90);
      v92 = *&v91->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      v93 = std::string::append(&v104, "]): ", 4uLL);
      v94 = *&v93->__r_.__value_.__l.__data_;
      v105.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
      *&v105.__r_.__value_.__l.__data_ = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v99, *(a1 + 13));
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &v99;
      }

      else
      {
        v95 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v96 = v99.__r_.__value_.__l.__size_;
      }

      v97 = std::string::append(&v105, v95, v96);
      v98 = *&v97->__r_.__value_.__l.__data_;
      v107 = v97->__r_.__value_.__r.__words[2];
      v106 = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;
      if (v107 >= 0)
      {
        v44 = &v106;
      }

      else
      {
        v44 = v106;
      }

      if (v107 >= 0)
      {
        v45 = HIBYTE(v107);
      }

      else
      {
        v45 = *(&v106 + 1);
      }
    }

    goto LABEL_157;
  }

  if (a2 != 9)
  {
    if (a2 == 8)
    {
      sub_100006BE0(&__dst, "Invalid Compatible Version", 0x1AuLL);
      if (a3)
      {
        std::to_string(&v103, *(a1 + 16));
        v12 = std::string::insert(&v103, 0, " got ", 5uLL);
        v13 = *&v12->__r_.__value_.__l.__data_;
        v104.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v104.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = std::string::append(&v104, " expected ", 0xAuLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v105.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v105.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v102, 2);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v102;
        }

        else
        {
          v16 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v102.__r_.__value_.__l.__size_;
        }

        v18 = std::string::append(&v105, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v107 = v18->__r_.__value_.__r.__words[2];
        v106 = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (v107 >= 0)
        {
          v20 = &v106;
        }

        else
        {
          v20 = v106;
        }

        if (v107 >= 0)
        {
          v21 = HIBYTE(v107);
        }

        else
        {
          v21 = *(&v106 + 1);
        }

        goto LABEL_128;
      }

      goto LABEL_174;
    }

    sub_100006BE0(&__dst, "Invalid Configuration Number", 0x1CuLL);
    if (!a3)
    {
      goto LABEL_174;
    }

    std::to_string(&v101, 1);
    v63 = std::string::insert(&v101, 0, " (out of range [", 0x10uLL);
    v64 = *&v63->__r_.__value_.__l.__data_;
    v102.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v102.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    v65 = std::string::append(&v102, " - ", 3uLL);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v100, 255);
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v100;
    }

    else
    {
      v67 = v100.__r_.__value_.__r.__words[0];
    }

    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v100.__r_.__value_.__l.__size_;
    }

    v69 = std::string::append(&v103, v67, v68);
    v70 = *&v69->__r_.__value_.__l.__data_;
    v104.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v104.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    v71 = std::string::append(&v104, "]): ", 4uLL);
    v72 = *&v71->__r_.__value_.__l.__data_;
    v105.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
    *&v105.__r_.__value_.__l.__data_ = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v99, *(a1 + 15));
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v99;
    }

    else
    {
      v73 = v99.__r_.__value_.__r.__words[0];
    }

    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v99.__r_.__value_.__l.__size_;
    }

    v75 = std::string::append(&v105, v73, v74);
    v76 = *&v75->__r_.__value_.__l.__data_;
    v107 = v75->__r_.__value_.__r.__words[2];
    v106 = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    if (v107 >= 0)
    {
      v44 = &v106;
    }

    else
    {
      v44 = v106;
    }

    if (v107 >= 0)
    {
      v45 = HIBYTE(v107);
    }

    else
    {
      v45 = *(&v106 + 1);
    }

LABEL_157:
    std::string::append(&__dst, v44, v45);
    if (SHIBYTE(v107) < 0)
    {
      operator delete(v106);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    v11 = v101.__r_.__value_.__r.__words[0];
LABEL_173:
    operator delete(v11);
    goto LABEL_174;
  }

  sub_10000EC00(a4, "Valid");
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {

    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return result;
}

void sub_100569110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100569360(id *a1)
{
  v3 = 0x100000002;
  if (sub_10000608C(a1, &v3, 2) <= 0)
  {
    [a1[15] stopScanningForType:1];
    [a1[15] stopScanningForType:0];
    [a1[19] stopScan];
    [a1[20] setNextFireDelay:1.79769313e308];
  }

  return 1;
}

void sub_100569408(void *a1)
{
  *a1 = off_10245F5B0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  sub_1005683CC(a1);

  operator delete();
}

void sub_10056947C(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
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
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018C417C();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
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
        sub_1018C4190();
      }
    }
  }
}

uint64_t sub_100569620(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1005697D8(uint64_t a1, int a2, int *a3, char *a4)
{
  v31 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 48);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 28) >= v13)
        {
          v17 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v13));
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 28))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 64);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 32) >= v13)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v13));
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 32))
      {
        v29 = v19;
        v26 = *(v19 + 56);
        v27 = *a4;
        *buf = &v31;
        *(sub_100007FA0(v19 + 40, &v31) + 32) = v27;
        buf[0] = 0;
        buf[8] = 0;
        v35 = 0;
        v37 = 0;
        v38 = 0;
        __p = 0;
        if (v17 == v15)
        {
          if ((*(*a1 + 128))(a1, a3, buf))
          {
            sub_10056BC2C();
          }

          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = a1 + 56;
        v29 = a1 + 64;
        v21 = byte_1025D6DB1;
        v28 = v13;
        *buf = &v28;
        *(sub_100024014(a1 + 56, &v28) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_100024014(a1 + 56, &v28);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v24 = *a4;
        v28 = *a3;
        *buf = &v28;
        v25 = sub_100024014(v20, &v28);
        *buf = &v31;
        *(sub_100007FA0((v25 + 5), &v31) + 32) = v24;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410(v30 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018C417C();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v33 = 1026;
    v34 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018C4294();
    return 0;
  }

  return result;
}

void sub_100569BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100569BD0(uint64_t a1, int a2, int *a3)
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
      sub_1018C417C();
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
      sub_1018C43A0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100569D64(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1018C44A4();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018C44A4();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLHomeKitProvider_Type::Notification, CLHomeKitProvider_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLHomeKitProvider_Type::Notification, NotificationData_T = CLHomeKitProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_10056A108(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  *a3 = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  *(a3 + 64) = *(v8 + 64);
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  *(a3 + 16) = v9;
  if (v8 != a3)
  {
    sub_10056BDA0((a3 + 72), *(v8 + 72), *(v8 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 80) - *(v8 + 72)) >> 3));
  }

  return 1;
}

void sub_10056A260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056A278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = 0;
  v4[8] = 0;
  v4[64] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  (*(*a1 + 152))(a1, a2, v4, a3, a4, 0);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_10056A2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056A310(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      sub_10056B1CC();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_10056AC08();
    }
  }
}

void sub_10056A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_10056A7E8(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C417C();
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
      sub_1018C45F0(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C417C();
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
      sub_1018C44CC(a1);
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
              sub_1018C44A4();
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
                sub_1018C44A4();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLHomeKitProvider_Type::Notification, CLHomeKitProvider_Type::NotificationData, char, char>::listClients() [Notification_T = CLHomeKitProvider_Type::Notification, NotificationData_T = CLHomeKitProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_10056AD18(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10056B500(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_10056B0D4(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018C44A4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018C44A4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLHomeKitProvider_Type::Notification, CLHomeKitProvider_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLHomeKitProvider_Type::Notification, NotificationData_T = CLHomeKitProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_10056B0D4(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10056B500(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10056B238(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_10245F7E0;
  v3 = a2[2];
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = *a2;
  v6 = a2[1];
  *(a1 + 96) = 0;
  v8 = a1 + 96;
  *(v8 - 72) = v7;
  *(v8 - 8) = v5;
  *(v8 - 24) = v4;
  *(v8 - 40) = v3;
  *(v8 - 56) = v6;
  *(v8 + 8) = 0u;
  sub_10056B374(v8, *(a2 + 9), *(a2 + 10), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return a1;
}

void sub_10056B304(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245F7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056B358(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }
}

uint64_t sub_10056B374(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10056B3F0(result, a4);
  }

  return result;
}

void sub_10056B3D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056B3F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10056B440(a1, a2);
  }

  sub_10028C64C();
}

void sub_10056B440(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10056B49C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

id sub_10056B500(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10056B560(a1);
}

id sub_10056B560(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018C4704();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7F048 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018C4704();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7F048 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

void sub_10056B758(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      sub_100006BE0(a3, "Invalid Accessory Category Identifier", 0x25uLL);
      std::to_string(&v34, 1);
      v5 = std::string::insert(&v34, 0, " (out of range [", 0x10uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v35, " - ", 3uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v33, 0xFFFF);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v33;
      }

      else
      {
        v9 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v36, v9, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v37, "]): ", 4uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v32, *(a1 + 6));
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v32;
      }

      else
      {
        v15 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v32.__r_.__value_.__l.__size_;
      }

      v17 = std::string::append(&v38, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v40 = v17->__r_.__value_.__r.__words[2];
      v39 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (v40 >= 0)
      {
        v19 = &v39;
      }

      else
      {
        v19 = v39;
      }

      if (v40 >= 0)
      {
        v20 = HIBYTE(v40);
      }

      else
      {
        v20 = *(&v39 + 1);
      }

      std::string::append(a3, v19, v20);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = v34.__r_.__value_.__r.__words[0];
LABEL_59:
        operator delete(v21);
      }
    }
  }

  else
  {
    *(a3 + 23) = 20;
    strcpy(a3, "Invalid Status Flags");
    std::to_string(&v36, *(a1 + 8));
    v22 = std::string::insert(&v36, 0, " got: ", 6uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v37, " expected: ", 0xBuLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v35, 0);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v35.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v38, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v40 = v28->__r_.__value_.__r.__words[2];
    v39 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v30 = &v39;
    }

    else
    {
      v30 = v39;
    }

    if (v40 >= 0)
    {
      v31 = HIBYTE(v40);
    }

    else
    {
      v31 = *(&v39 + 1);
    }

    std::string::append(a3, v30, v31);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_59;
    }
  }
}

void sub_10056BAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 57) < 0)
  {
    operator delete(*(v48 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056BD3C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_10056BDA0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      sub_10056B3F0(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

double sub_10056BF14()
{
  v0 = [&off_10254EAC8 intValue] * 0.625;
  result = v0 + [&off_10254EAE0 intValue] * 0.625;
  *&qword_102656EB0 = result;
  return result;
}

double sub_10056BF68(uint64_t a1)
{
  v2 = sub_1000081AC();

  return sub_10056BFA0(a1, v2);
}

double sub_10056BFA0(uint64_t a1, double a2)
{
  v3 = (a1 + 160);
  if (*(a1 + 160) == 1)
  {
    v5 = *(a1 + 208);
    *(a1 + 888) = *(a1 + 192);
    *(a1 + 904) = v5;
    *(a1 + 916) = *(a1 + 220);
    v6 = *(a1 + 176);
    *(a1 + 856) = *v3;
    *(a1 + 872) = v6;
    *(a1 + 936) = *(a1 + 240);
    sub_100731D80((a1 + 944), *(a1 + 248), *(a1 + 256), (*(a1 + 256) - *(a1 + 248)) >> 2);
    v7 = *(a1 + 448);
    *(a1 + 1128) = *(a1 + 432);
    *(a1 + 1144) = v7;
    *(a1 + 1156) = *(a1 + 460);
    v8 = *(a1 + 384);
    *(a1 + 1064) = *(a1 + 368);
    *(a1 + 1080) = v8;
    v9 = *(a1 + 416);
    *(a1 + 1096) = *(a1 + 400);
    *(a1 + 1112) = v9;
    v10 = *(a1 + 320);
    *(a1 + 1000) = *(a1 + 304);
    *(a1 + 1016) = v10;
    v11 = *(a1 + 352);
    *(a1 + 1032) = *(a1 + 336);
    *(a1 + 1048) = v11;
    v12 = *(a1 + 288);
    *(a1 + 968) = *(a1 + 272);
    *(a1 + 984) = v12;
    std::string::operator=((a1 + 1176), (a1 + 480));
    v13 = *(a1 + 600);
    *(a1 + 1312) = *(a1 + 616);
    v14 = *(a1 + 648);
    *(a1 + 1328) = *(a1 + 632);
    *(a1 + 1344) = v14;
    v15 = *(a1 + 536);
    *(a1 + 1248) = *(a1 + 552);
    v16 = *(a1 + 584);
    *(a1 + 1264) = *(a1 + 568);
    *(a1 + 1280) = v16;
    *(a1 + 1296) = v13;
    v17 = *(a1 + 520);
    *(a1 + 1200) = *(a1 + 504);
    *(a1 + 1360) = *(a1 + 664);
    *(a1 + 1216) = v17;
    *(a1 + 1232) = v15;
    v18 = *(a1 + 816);
    *(a1 + 1496) = *(a1 + 800);
    *(a1 + 1512) = v18;
    *(a1 + 1528) = *(a1 + 832);
    *(a1 + 1544) = *(a1 + 848);
    v19 = *(a1 + 752);
    *(a1 + 1432) = *(a1 + 736);
    *(a1 + 1448) = v19;
    v20 = *(a1 + 784);
    *(a1 + 1464) = *(a1 + 768);
    *(a1 + 1480) = v20;
    v21 = *(a1 + 688);
    *(a1 + 1368) = *(a1 + 672);
    *(a1 + 1384) = v21;
    v22 = *(a1 + 720);
    *(a1 + 1400) = *(a1 + 704);
    *(a1 + 1416) = v22;
    *(a1 + 2248) = a2;
  }

  *a1 = 0xFFFF;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 36) = _Q0;
  *(a1 + 52) = _Q0;
  *(a1 + 68) = _Q0;
  *(a1 + 84) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0xBFF0000000000000;
  *(a1 + 124) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;

  return sub_10056C154(v3);
}

double sub_10056C154(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  v3 = (a1 + 88);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 136) = 0xFFFFFFFFLL;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0xFFFF;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v4 = xmmword_101C75BF0;
  *(a1 + 168) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 184) = _Q1;
  *(a1 + 200) = _Q1;
  *(a1 + 216) = _Q1;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0xBFF0000000000000;
  *(a1 + 252) = 0;
  *(a1 + 244) = 0;
  *(a1 + 260) = 0;
  *(a1 + 264) = 0xBFF0000000000000;
  *(a1 + 272) = 0x7FFFFFFF;
  *(a1 + 292) = 0;
  *(a1 + 276) = 0;
  *(a1 + 284) = 0;
  *(a1 + 300) = 0;
  *(a1 + 304) = 0x30000000BLL;
  *(a1 + 312) = -1;
  if (*(a1 + 343) < 0)
  {
    v12 = _Q1;
    operator delete(*(a1 + 320));
    v4 = xmmword_101C75BF0;
    _Q1 = v12;
  }

  *(a1 + 320) = 0;
  *(a1 + 343) = 0;
  *(a1 + 344) = 0xFFFF;
  *(a1 + 356) = 0;
  *(a1 + 348) = 0;
  *(a1 + 364) = v4;
  *(a1 + 380) = _Q1;
  *(a1 + 396) = _Q1;
  *(a1 + 412) = _Q1;
  *(a1 + 428) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0xBFF0000000000000;
  *(a1 + 456) = 0;
  *(a1 + 460) = 0xBFF0000000000000;
  *(a1 + 468) = 0x7FFFFFFF;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 500) = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 12) = v10;
  *(a1 + 28) = v10;
  *(a1 + 512) = -1;
  *(a1 + 520) = -1;
  *(a1 + 528) = -1;
  *(a1 + 536) = -1;
  *(a1 + 540) = v13;
  *(a1 + 556) = 0;
  *(a1 + 560) = -1;
  *(a1 + 568) = -1;
  *(a1 + 576) = -1;
  *(a1 + 580) = xmmword_101C7F0A0;
  *(a1 + 60) = v10;
  *(a1 + 44) = v10;
  *(a1 + 600) = -1;
  *(a1 + 608) = -1;
  *(a1 + 616) = -1;
  *(a1 + 624) = -1;
  *(a1 + 632) = -1;
  *(a1 + 636) = v13;
  *(a1 + 652) = 0;
  *(a1 + 656) = -1;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  result = NAN;
  *(a1 + 680) = 0xFFFFFFFF00000000;
  *(a1 + 688) = 0;
  return result;
}

void sub_10056C358(uint64_t a1, void *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018C4718();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::setAirplaneMode(%{public}d)", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C472C(a2);
  }

  v5 = sub_1000081AC();
  sub_10056C448(a1, v5, a2);
}

void sub_10056C448(uint64_t a1, double a2, int a3)
{
  if (*(a1 + 2256) != a3)
  {
    *(a1 + 2256) = a3;
    if (a3)
    {
      sub_10056C468(a1, a2);
    }

    else
    {
      sub_10056C72C(a1, a2);
    }
  }
}

void sub_10056C468(uint64_t a1, double a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018C4718();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v27[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::enableAirplaneMode", v27, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C482C();
  }

  *(a1 + 2272) = 0;
  sub_10056CFBC(a1, v27, a2);
  v5 = v27[0];
  *(a1 + 1568) = v27[1];
  v6 = v28[0];
  *(a1 + 1584) = v27[2];
  *(a1 + 1600) = v6;
  *(a1 + 1612) = *(v28 + 12);
  *(a1 + 1552) = v5;
  *(a1 + 1632) = v29;
  v7 = *(a1 + 1640);
  if (v7)
  {
    *(a1 + 1648) = v7;
    operator delete(v7);
  }

  v8 = 0;
  *(a1 + 1640) = *__p;
  v9 = v40;
  *(a1 + 1808) = v41;
  v10 = v43[0];
  *(a1 + 1824) = v42;
  *(a1 + 1840) = v10;
  v11 = v36;
  *(a1 + 1744) = v37;
  v12 = v39;
  *(a1 + 1760) = v38;
  *(a1 + 1776) = v12;
  *(a1 + 1792) = v9;
  v13 = v32;
  *(a1 + 1680) = v33;
  v14 = v35;
  *(a1 + 1696) = v34;
  *(a1 + 1712) = v14;
  *(a1 + 1728) = v11;
  *(a1 + 1656) = v31;
  __p[1] = 0;
  v31 = 0;
  __p[0] = 0;
  *(a1 + 1664) = v13;
  *(a1 + 1852) = *(v43 + 12);
  v15 = (a1 + 1872);
  if (*(a1 + 1895) < 0)
  {
    operator delete(*v15);
    v8 = __p[0];
  }

  *v15 = v44;
  v16 = v55;
  *(a1 + 2024) = v54;
  *(a1 + 2040) = v16;
  v17 = v51;
  *(a1 + 1960) = v50;
  *(a1 + 1976) = v17;
  v18 = v53;
  *(a1 + 1992) = v52;
  *(a1 + 2008) = v18;
  v19 = v47;
  *(a1 + 1896) = v46;
  *(a1 + 1912) = v19;
  v20 = v49;
  *(a1 + 1928) = v48;
  *(a1 + 1944) = v20;
  v21 = v66;
  *(a1 + 2192) = v65;
  *(a1 + 2208) = v21;
  *(a1 + 2224) = v67;
  v22 = v62;
  *(a1 + 2128) = v61;
  *(a1 + 2144) = v22;
  v23 = v64;
  *(a1 + 2160) = v63;
  *(a1 + 2176) = v23;
  v24 = v58;
  *(a1 + 2064) = v57;
  *(a1 + 2080) = v24;
  v25 = v60;
  *(a1 + 2096) = v59;
  *(a1 + 1888) = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  *(a1 + 2056) = v56;
  *(a1 + 2240) = v68;
  *(a1 + 2112) = v25;
  if (v8)
  {
    __p[1] = v8;
    operator delete(v8);
  }

  if (*(a1 + 1552) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C4910();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::enableAirplaneMode: marking the mach continuous time.", v27, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C4938();
    }

    *(a1 + 2272) = a2;
  }
}

void sub_10056C72C(uint64_t a1, double a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018C4718();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::disableAirplaneMode", &v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C4A1C();
  }

  if (*(a1 + 1552) == 1)
  {
    v5 = *(a1 + 2272);
    if (v5 > 0.0 && v5 < a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018C4910();
      }

      v7 = a2 - v5;
      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134349056;
        v11 = v7;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::disableAirplaneMode: airplane mode duration %{public}f secs", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C4AF8();
      }

      if (v7 >= 1200.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018C4910();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v10) = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLCellLocationRefresh::disableAirplaneMode: ignoring previous cell location before airplane mode.", &v10, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C4BE4();
        }

        *(a1 + 2280) = 1;
        *(a1 + 2264) = a2;
      }
    }
  }
}

void sub_10056C920(uint64_t a1)
{
  bzero(v24, 0x858uLL);
  v7 = 0xFFFF;
  v9 = 0;
  v8 = 0;
  v10 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v11 = _Q0;
  v12 = _Q0;
  v13 = _Q0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0xBFF0000000000000;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0x7FFFFFFF;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24[0] = 0;
  sub_10123EFA0(&v25);
  sub_10123EFA0(&v30);
  sub_10123EFA0(&v35);
  v40 = 0;
  v41 = 0;
  v42 = 0u;
  v43 = 0;
  sub_10056CA7C(a1, &v7);
  if (v39 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_10056CA58(_Unwind_Exception *a1)
{
  sub_10056D2F4(v1 + 856);
  sub_10056D2F4(v1 + 160);
  _Unwind_Resume(a1);
}

uint64_t sub_10056CA7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  *(a1 + 160) = *(a2 + 160);
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 176) = v11;
  *(a1 + 240) = *(a2 + 240);
  sub_10007057C(a1 + 248, (a2 + 248));
  *(a1 + 272) = *(a2 + 272);
  v14 = *(a2 + 288);
  v15 = *(a2 + 304);
  v16 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v16;
  *(a1 + 288) = v14;
  *(a1 + 304) = v15;
  v17 = *(a2 + 352);
  v18 = *(a2 + 368);
  v19 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v19;
  *(a1 + 352) = v17;
  *(a1 + 368) = v18;
  v20 = *(a2 + 416);
  v21 = *(a2 + 432);
  v22 = *(a2 + 448);
  *(a1 + 460) = *(a2 + 460);
  *(a1 + 432) = v21;
  *(a1 + 448) = v22;
  *(a1 + 416) = v20;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v23 = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 480) = v23;
  *(a2 + 503) = 0;
  *(a2 + 480) = 0;
  v25 = *(a2 + 584);
  v24 = *(a2 + 600);
  v26 = *(a2 + 568);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 568) = v26;
  *(a1 + 584) = v25;
  *(a1 + 600) = v24;
  v28 = *(a2 + 520);
  v27 = *(a2 + 536);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 520) = v28;
  *(a1 + 536) = v27;
  v29 = *(a2 + 616);
  v30 = *(a2 + 632);
  v31 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 632) = v30;
  *(a1 + 648) = v31;
  *(a1 + 616) = v29;
  v32 = *(a2 + 672);
  v33 = *(a2 + 688);
  v34 = *(a2 + 720);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = v34;
  *(a1 + 672) = v32;
  *(a1 + 688) = v33;
  v35 = *(a2 + 736);
  v36 = *(a2 + 752);
  v37 = *(a2 + 784);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 784) = v37;
  *(a1 + 736) = v35;
  *(a1 + 752) = v36;
  v38 = *(a2 + 800);
  v39 = *(a2 + 816);
  v40 = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 816) = v39;
  *(a1 + 832) = v40;
  *(a1 + 800) = v38;
  *(a1 + 856) = *(a2 + 856);
  v41 = *(a2 + 872);
  v42 = *(a2 + 888);
  v43 = *(a2 + 904);
  *(a1 + 916) = *(a2 + 916);
  *(a1 + 888) = v42;
  *(a1 + 904) = v43;
  *(a1 + 872) = v41;
  *(a1 + 936) = *(a2 + 936);
  sub_10007057C(a1 + 944, (a2 + 944));
  *(a1 + 968) = *(a2 + 968);
  v44 = *(a2 + 984);
  v45 = *(a2 + 1000);
  v46 = *(a2 + 1032);
  *(a1 + 1016) = *(a2 + 1016);
  *(a1 + 1032) = v46;
  *(a1 + 984) = v44;
  *(a1 + 1000) = v45;
  v47 = *(a2 + 1048);
  v48 = *(a2 + 1064);
  v49 = *(a2 + 1096);
  *(a1 + 1080) = *(a2 + 1080);
  *(a1 + 1096) = v49;
  *(a1 + 1048) = v47;
  *(a1 + 1064) = v48;
  v50 = *(a2 + 1112);
  v51 = *(a2 + 1128);
  v52 = *(a2 + 1144);
  *(a1 + 1156) = *(a2 + 1156);
  *(a1 + 1128) = v51;
  *(a1 + 1144) = v52;
  *(a1 + 1112) = v50;
  v53 = (a1 + 1176);
  if (*(a1 + 1199) < 0)
  {
    operator delete(*v53);
  }

  v54 = *(a2 + 1176);
  *(a1 + 1192) = *(a2 + 1192);
  *v53 = v54;
  *(a2 + 1199) = 0;
  *(a2 + 1176) = 0;
  v55 = *(a2 + 1296);
  v56 = *(a2 + 1280);
  v57 = *(a2 + 1264);
  *(a1 + 1248) = *(a2 + 1248);
  *(a1 + 1264) = v57;
  *(a1 + 1280) = v56;
  *(a1 + 1296) = v55;
  v58 = *(a2 + 1232);
  v59 = *(a2 + 1216);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1216) = v59;
  *(a1 + 1232) = v58;
  v60 = *(a2 + 1312);
  v61 = *(a2 + 1328);
  v62 = *(a2 + 1344);
  *(a1 + 1360) = *(a2 + 1360);
  *(a1 + 1344) = v62;
  *(a1 + 1328) = v61;
  *(a1 + 1312) = v60;
  v63 = *(a2 + 1368);
  v64 = *(a2 + 1384);
  v65 = *(a2 + 1416);
  *(a1 + 1400) = *(a2 + 1400);
  *(a1 + 1416) = v65;
  *(a1 + 1368) = v63;
  *(a1 + 1384) = v64;
  v66 = *(a2 + 1432);
  v67 = *(a2 + 1448);
  v68 = *(a2 + 1480);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1480) = v68;
  *(a1 + 1432) = v66;
  *(a1 + 1448) = v67;
  v69 = *(a2 + 1496);
  v70 = *(a2 + 1512);
  v71 = *(a2 + 1528);
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1512) = v70;
  *(a1 + 1528) = v71;
  *(a1 + 1496) = v69;
  *(a1 + 1552) = *(a2 + 1552);
  v72 = *(a2 + 1568);
  v73 = *(a2 + 1584);
  v74 = *(a2 + 1600);
  *(a1 + 1612) = *(a2 + 1612);
  *(a1 + 1600) = v74;
  *(a1 + 1584) = v73;
  *(a1 + 1568) = v72;
  *(a1 + 1632) = *(a2 + 1632);
  sub_10007057C(a1 + 1640, (a2 + 1640));
  *(a1 + 1664) = *(a2 + 1664);
  v75 = *(a2 + 1680);
  v76 = *(a2 + 1696);
  v77 = *(a2 + 1712);
  *(a1 + 1728) = *(a2 + 1728);
  *(a1 + 1712) = v77;
  *(a1 + 1696) = v76;
  *(a1 + 1680) = v75;
  v78 = *(a2 + 1744);
  v79 = *(a2 + 1760);
  v80 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v80;
  *(a1 + 1760) = v79;
  *(a1 + 1744) = v78;
  v81 = *(a2 + 1808);
  v82 = *(a2 + 1824);
  v83 = *(a2 + 1840);
  *(a1 + 1852) = *(a2 + 1852);
  *(a1 + 1840) = v83;
  *(a1 + 1824) = v82;
  *(a1 + 1808) = v81;
  v84 = (a1 + 1872);
  if (*(a1 + 1895) < 0)
  {
    operator delete(*v84);
  }

  v85 = *(a2 + 1872);
  *(a1 + 1888) = *(a2 + 1888);
  *v84 = v85;
  *(a2 + 1895) = 0;
  *(a2 + 1872) = 0;
  v87 = *(a2 + 1976);
  v86 = *(a2 + 1992);
  v88 = *(a2 + 1960);
  *(a1 + 1944) = *(a2 + 1944);
  *(a1 + 1960) = v88;
  *(a1 + 1976) = v87;
  *(a1 + 1992) = v86;
  v90 = *(a2 + 1912);
  v89 = *(a2 + 1928);
  *(a1 + 1896) = *(a2 + 1896);
  *(a1 + 1912) = v90;
  *(a1 + 1928) = v89;
  v91 = *(a2 + 2008);
  v92 = *(a2 + 2024);
  v93 = *(a2 + 2040);
  *(a1 + 2056) = *(a2 + 2056);
  *(a1 + 2024) = v92;
  *(a1 + 2040) = v93;
  *(a1 + 2008) = v91;
  v94 = *(a2 + 2064);
  v95 = *(a2 + 2080);
  v96 = *(a2 + 2096);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2096) = v96;
  *(a1 + 2080) = v95;
  *(a1 + 2064) = v94;
  v97 = *(a2 + 2128);
  v98 = *(a2 + 2144);
  v99 = *(a2 + 2160);
  *(a1 + 2176) = *(a2 + 2176);
  *(a1 + 2160) = v99;
  *(a1 + 2144) = v98;
  *(a1 + 2128) = v97;
  v100 = *(a2 + 2192);
  v101 = *(a2 + 2208);
  v102 = *(a2 + 2224);
  *(a1 + 2240) = *(a2 + 2240);
  *(a1 + 2224) = v102;
  *(a1 + 2208) = v101;
  *(a1 + 2192) = v100;
  v103 = *(a2 + 2248);
  v104 = *(a2 + 2264);
  *(a1 + 2280) = *(a2 + 2280);
  *(a1 + 2248) = v103;
  *(a1 + 2264) = v104;
  return a1;
}

NSDictionary *sub_10056CEDC(uint64_t a1)
{
  v2 = @"skipPreviousCellAfterAirplaneModeDisableAgeSecs";
  v3 = [NSNumber numberWithDouble:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_10056CFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 160) == 1)
  {
    v5 = *(a1 + 208);
    *(a2 + 32) = *(a1 + 192);
    *(a2 + 48) = v5;
    *(a2 + 60) = *(a1 + 220);
    v6 = *(a1 + 176);
    *a2 = *(a1 + 160);
    *(a2 + 16) = v6;
    *(a2 + 80) = *(a1 + 240);
    *(a2 + 88) = 0;
    v7 = *(a1 + 248);
    v8 = *(a1 + 256);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    result = sub_10038EB38(a2 + 88, v7, v8, (v8 - v7) >> 2);
    v10 = *(a1 + 448);
    *(a2 + 272) = *(a1 + 432);
    *(a2 + 288) = v10;
    *(a2 + 300) = *(a1 + 460);
    v11 = *(a1 + 384);
    *(a2 + 208) = *(a1 + 368);
    *(a2 + 224) = v11;
    v12 = *(a1 + 416);
    *(a2 + 240) = *(a1 + 400);
    *(a2 + 256) = v12;
    v13 = *(a1 + 320);
    *(a2 + 144) = *(a1 + 304);
    *(a2 + 160) = v13;
    v14 = *(a1 + 352);
    *(a2 + 176) = *(a1 + 336);
    *(a2 + 192) = v14;
    v15 = *(a1 + 288);
    *(a2 + 112) = *(a1 + 272);
    *(a2 + 128) = v15;
    if (*(a1 + 503) < 0)
    {
      result = sub_100007244((a2 + 320), *(a1 + 480), *(a1 + 488));
    }

    else
    {
      *(a2 + 320) = *(a1 + 480);
      *(a2 + 336) = *(a1 + 496);
    }

    *(a2 + 504) = *(a1 + 664);
    v19 = *(a1 + 648);
    *(a2 + 472) = *(a1 + 632);
    *(a2 + 488) = v19;
    v20 = *(a1 + 584);
    *(a2 + 408) = *(a1 + 568);
    *(a2 + 424) = v20;
    v21 = *(a1 + 616);
    *(a2 + 440) = *(a1 + 600);
    *(a2 + 456) = v21;
    v22 = *(a1 + 520);
    *(a2 + 344) = *(a1 + 504);
    *(a2 + 360) = v22;
    v23 = *(a1 + 552);
    *(a2 + 376) = *(a1 + 536);
    *(a2 + 392) = v23;
    v24 = *(a1 + 816);
    *(a2 + 640) = *(a1 + 800);
    *(a2 + 656) = v24;
    *(a2 + 672) = *(a1 + 832);
    *(a2 + 688) = *(a1 + 848);
    v25 = *(a1 + 752);
    *(a2 + 576) = *(a1 + 736);
    *(a2 + 592) = v25;
    v26 = *(a1 + 784);
    *(a2 + 608) = *(a1 + 768);
    *(a2 + 624) = v26;
    v27 = *(a1 + 688);
    *(a2 + 512) = *(a1 + 672);
    *(a2 + 528) = v27;
    v28 = *(a1 + 704);
    v29 = *(a1 + 720);
LABEL_16:
    *(a2 + 544) = v28;
    *(a2 + 560) = v29;
    return result;
  }

  if ((*(a1 + 856) & 1) != 0 && a3 >= 0.0)
  {
    v16 = *(a1 + 2248);
    if (v16 >= 0.0)
    {
      v17 = a3 - v16;
      if (v17 >= 0.0 && v17 <= 60.0)
      {
        v30 = *(a1 + 904);
        *(a2 + 32) = *(a1 + 888);
        *(a2 + 48) = v30;
        *(a2 + 60) = *(a1 + 916);
        v31 = *(a1 + 872);
        *a2 = *(a1 + 856);
        *(a2 + 16) = v31;
        *(a2 + 80) = *(a1 + 936);
        *(a2 + 88) = 0;
        v32 = *(a1 + 944);
        v33 = *(a1 + 952);
        *(a2 + 96) = 0;
        *(a2 + 104) = 0;
        result = sub_10038EB38(a2 + 88, v32, v33, (v33 - v32) >> 2);
        v34 = *(a1 + 1144);
        *(a2 + 272) = *(a1 + 1128);
        *(a2 + 288) = v34;
        *(a2 + 300) = *(a1 + 1156);
        v35 = *(a1 + 1080);
        *(a2 + 208) = *(a1 + 1064);
        *(a2 + 224) = v35;
        v36 = *(a1 + 1112);
        *(a2 + 240) = *(a1 + 1096);
        *(a2 + 256) = v36;
        v37 = *(a1 + 1016);
        *(a2 + 144) = *(a1 + 1000);
        *(a2 + 160) = v37;
        v38 = *(a1 + 1048);
        *(a2 + 176) = *(a1 + 1032);
        *(a2 + 192) = v38;
        v39 = *(a1 + 984);
        *(a2 + 112) = *(a1 + 968);
        *(a2 + 128) = v39;
        if (*(a1 + 1199) < 0)
        {
          result = sub_100007244((a2 + 320), *(a1 + 1176), *(a1 + 1184));
        }

        else
        {
          *(a2 + 320) = *(a1 + 1176);
          *(a2 + 336) = *(a1 + 1192);
        }

        v40 = *(a1 + 1312);
        v41 = *(a1 + 1344);
        *(a2 + 472) = *(a1 + 1328);
        *(a2 + 488) = v41;
        *(a2 + 504) = *(a1 + 1360);
        v42 = *(a1 + 1248);
        v43 = *(a1 + 1280);
        *(a2 + 408) = *(a1 + 1264);
        *(a2 + 424) = v43;
        *(a2 + 440) = *(a1 + 1296);
        *(a2 + 456) = v40;
        v44 = *(a1 + 1216);
        *(a2 + 344) = *(a1 + 1200);
        *(a2 + 360) = v44;
        *(a2 + 376) = *(a1 + 1232);
        *(a2 + 392) = v42;
        v45 = *(a1 + 1512);
        *(a2 + 640) = *(a1 + 1496);
        *(a2 + 656) = v45;
        *(a2 + 672) = *(a1 + 1528);
        *(a2 + 688) = *(a1 + 1544);
        v46 = *(a1 + 1448);
        *(a2 + 576) = *(a1 + 1432);
        *(a2 + 592) = v46;
        v47 = *(a1 + 1480);
        *(a2 + 608) = *(a1 + 1464);
        *(a2 + 624) = v47;
        v48 = *(a1 + 1384);
        *(a2 + 512) = *(a1 + 1368);
        *(a2 + 528) = v48;
        v28 = *(a1 + 1400);
        v29 = *(a1 + 1416);
        goto LABEL_16;
      }
    }
  }

  return sub_10123EFA0(a2);
}

void sub_10056D2A4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056D2F4(uint64_t a1)
{
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10056D338(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = off_10245F888;
  *(a1 + 8) = off_10245FA20;
  *(a1 + 16) = off_10245FA60;
  *(a1 + 24) = off_10245FA90;
  *(a1 + 32) = off_10245FAC8;
  *(a1 + 40) = a2;
  *(a1 + 48) = *a3;
  v4 = a3[1];
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 257;
  *(a1 + 200) = 2;
  v5 = (a1 + 200);
  *(a1 + 192) = 0x4FFFFFFFFLL;
  *(a1 + 208) = 0xBFF0000000000000;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 25;
  v6 = (a1 + 236);
  *(a1 + 248) = 0x40EFA40000000000;
  v7 = (a1 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v43 = a1 + 64;
  sub_10056DEE8(a1, a1 + 272);
  Init = CLMotionActivity::getInit((a1 + 392), v8);
  v10 = CLMotionActivity::getInit((a1 + 528), Init);
  CLMotionActivity::getInit((a1 + 664), v10);
  *(a1 + 800) = 257;
  *(a1 + 802) = 0;
  *(a1 + 808) = 0xBFF0000000000000;
  *(a1 + 816) = 0xFFFF;
  *(a1 + 820) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 836) = xmmword_101C75BF0;
  *(a1 + 852) = _Q1;
  *(a1 + 868) = _Q1;
  *(a1 + 884) = _Q1;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0xBFF0000000000000;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0xBFF0000000000000;
  *(a1 + 940) = 0x7FFFFFFF;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 972) = 0;
  *(a1 + 974) = 0;
  *(a1 + 976) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 992) = 0;
  *(a1 + 1008) = (*(*a1 + 64))(a1);
  *(a1 + 1024) = 0u;
  *(a1 + 1016) = a1 + 1024;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  sub_1004F4254(a1 + 1080, a1);
  *(a1 + 1208) = 0;
  *(a1 + 1210) = 0;
  memset(buf, 0, sizeof(buf));
  v50 = 1065353216;
  sub_100574928(out_token, 0xAuLL);
  sub_100574DA4((a1 + 88));
  *(a1 + 88) = *out_token;
  *(a1 + 104) = v47;
  v47 = 0;
  memset(out_token, 0, sizeof(out_token));
  v48 = out_token;
  sub_100574D20(&v48);
  sub_1004906DC(buf);
  if (((*(**(a1 + 48) + 120))(*(a1 + 48), a1 + 196) & 1) == 0)
  {
    *(a1 + 196) = 4;
  }

  if (((*(**(a1 + 48) + 128))(*(a1 + 48), a1 + 200) & 1) == 0)
  {
    *v5 = 2;
  }

  if (((*(**(a1 + 48) + 152))(*(a1 + 48), a1 + 236) & 1) == 0)
  {
    *v6 = 25;
  }

  if (((*(**(a1 + 48) + 144))(*(a1 + 48), a1 + 248) & 1) == 0)
  {
    *v7 = 0x40EFA40000000000;
  }

  if (((*(**(a1 + 48) + 136))(*(a1 + 48), a1 + 1072) & 1) == 0)
  {
    *(a1 + 1072) = 0;
  }

  if (((*(**(a1 + 48) + 160))(*(a1 + 48), a1 + 240) & 1) == 0)
  {
    *(a1 + 240) = 300;
  }

  if (((*(**(a1 + 48) + 168))(*(a1 + 48), a1 + 1000) & 1) == 0)
  {
    *(a1 + 1000) = 0x40D5180000000000;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018C4FA8();
  }

  v16 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 1072);
    v18 = *(a1 + 196);
    v19 = *v5;
    v20 = *v7;
    v21 = *v6;
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v17;
    *&buf[24] = 1025;
    *&buf[26] = v18;
    *&buf[30] = 1025;
    v50 = v19;
    v51 = 2049;
    v52 = v20;
    v53 = 1025;
    v54 = v21;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:HarvestController-Contruct, isHarvestAllLocations:%{private}hhd, highThermalThreshold:%{private}d, lowThermalThreshold:%{private}d, maxHarvestAge_s:%{private}.09f, maxHarvestPointsPer:%{private}d}", buf, 0x34u);
  }

  (*(**(a1 + 48) + 40))(*(a1 + 48), a1);
  (*(**(a1 + 48) + 200))(*(a1 + 48), 0);
  (*(**(a1 + 48) + 184))(*(a1 + 48), 13);
  (*(**(a1 + 48) + 184))(*(a1 + 48), 15);
  v22 = *(a1 + 48);
  sub_1001CBE2C(buf, kCTCallStatusChangeNotification);
  (*(*v22 + 272))(v22, buf);
  v23 = sub_1000206B4();
  sub_10001CBC0(v23, @"PrivateMode", (a1 + 185));
  v24 = (*(*a1 + 64))(a1);
  v25 = sub_1000206B4();
  v26 = (a1 + 992);
  if (!sub_100023B78(v25, @"LastPrune", (a1 + 992)) || (v27 = *v26, *v26 < 1.0))
  {
    *v26 = v24;
    v27 = v24;
  }

  v28 = *(a1 + 248) - vabdd_f64(v24, v27);
  if (v28 >= 3.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 3.0;
  }

  v30 = *(a1 + 48);
  sub_10000EC00(buf, "HarvestPruneTimer");
  (*(*v30 + 264))(out_token, v30, buf, sub_10056DF80, a1, [*(a1 + 40) silo], v24 + v29, *(a1 + 248));
  v31 = *out_token;
  memset(out_token, 0, sizeof(out_token));
  v32 = *(a1 + 1048);
  *(a1 + 1040) = v31;
  if (v32)
  {
    sub_100008080(v32);
    if (*&out_token[2])
    {
      sub_100008080(*&out_token[2]);
    }
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v33 = *(a1 + 48);
  sub_10000EC00(buf, "HarvestUnlockTimer");
  (*(*v33 + 264))(out_token, v33, buf, sub_10056E134, a1, [*(a1 + 40) silo], v24 + *(a1 + 1000));
  v34 = *out_token;
  memset(out_token, 0, sizeof(out_token));
  v35 = *(a1 + 1064);
  *(a1 + 1056) = v34;
  if (v35)
  {
    sub_100008080(v35);
    if (*&out_token[2])
    {
      sub_100008080(*&out_token[2]);
    }
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018C4FA8();
  }

  v36 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v29;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#pruneTimer, nextPruneTime_s:%{private}.09f}", buf, 0x1Cu);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_10001A3E8();
  if (sub_100328630())
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v37 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:registering for internal notifications}", buf, 0x12u);
    }

    *buf = 0;
    v38 = [objc_msgSend(*(a1 + 40) "silo")];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10056E2E8;
    handler[3] = &unk_10245FAE8;
    handler[4] = a1;
    notify_register_dispatch("CLHarvestController-upload", buf, v38, handler);
    out_token[0] = 0;
    v39 = [objc_msgSend(*(a1 + 40) "silo")];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10056E4C0;
    v44[3] = &unk_10245FAE8;
    v44[4] = a1;
    notify_register_dispatch("CLHarvestController-prune", out_token, v39, v44);
  }

  *(a1 + 384) = v24;
  sub_10056E5E4(a1);
  v41 = qword_102656EC8;
  v40 = unk_102656ED0;
  while (v41 != v40)
  {
    (*(**(a1 + 48) + 56))(*(a1 + 48), v41);
    v41 += 24;
  }

  sub_10056E6C8(a1);
  return a1;
}

double sub_10056DEE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xBFF0000000000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 76) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *a2 = 1;
  (*(*a1 + 16))(&v4);
  result = *&v4;
  *(a2 + 40) = v4;
  *(a2 + 56) = v5;
  return result;
}

void sub_10056DF80(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C4FD0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 1;
    v3 = _os_activity_create(dword_100000000, "CL: CLHarvestController::onPruneTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C4FE4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "activity";
      v13 = 2050;
      v14 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestController::onPruneTimer, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100573690(a2);
  if (v6 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10056E134(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C4FD0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 1;
    v3 = _os_activity_create(dword_100000000, "CL: CLHarvestController::onUploadTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C4FE4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "activity";
      v13 = 2050;
      v14 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestController::onUploadTimer, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1005737F4(a2);
  if (v6 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10056E2E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLHarvestController-upload}", v3, 0x12u);
  }

  sub_10056E3BC(v1);
}

void sub_10056E3BC(uint64_t a1)
{
  *(a1 + 1008) = (*(*a1 + 64))(a1);
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 != (a1 + 72))
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      sub_100C73518(v2[5]);
      objc_autoreleasePoolPop(v4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_1005732F8(a1);
  v8 = *(a1 + 64);
  if (v8 != v3)
  {
    do
    {
      sub_100C73BB8(v8[5]);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v7 = *v10 == v8;
          v8 = v10;
        }

        while (!v7);
      }

      v8 = v10;
    }

    while (v10 != v3);
  }
}

void sub_10056E4C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLHarvestController-prune}", v7, 0x12u);
  }

  v3 = *(v1 + 64);
  if (v3 != (v1 + 72))
  {
    do
    {
      sub_100C738E8(v3[5]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != (v1 + 72));
  }
}

void sub_10056E5E4(unsigned __int8 *a1)
{
  v2 = a1[257];
  v3 = (*(*a1 + 104))(a1);
  a1[257] = v3;
  if (v2 != v3)
  {
    (*(*a1 + 64))(a1);
    v5 = 376;
    if (v2)
    {
      v5 = 368;
    }

    *&a1[v5] = v4 - *(a1 + 48) + *&a1[v5];
    *(a1 + 48) = v4;
    if (a1[257] == 1)
    {
      v6 = sub_1005731B4(a1);
    }

    else
    {
      v6 = 1.79769313e308;
    }

    sub_100572DDC(a1, v6);
  }
}

void sub_10056E6C8(uint64_t a1)
{
  if (objc_opt_class())
  {
    v2 = +[MCProfileConnection sharedConnection];
    v3 = [v2 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "MCProfile DiagnosticsSubmissionAllowed: %d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C500C(v3);
    }

    *(a1 + 1210) = v3 == 1;
  }

  else
  {
    *(a1 + 1210) = 0;
  }
}

uint64_t sub_10056E7E8(uint64_t a1)
{
  *a1 = off_10245F888;
  *(a1 + 8) = off_10245FA20;
  *(a1 + 16) = off_10245FA60;
  *(a1 + 24) = off_10245FA90;
  *(a1 + 32) = off_10245FAC8;
  sub_10056E964(a1);
  v2 = *(a1 + 1184);
  if (v2)
  {
    *(a1 + 1192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1064);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 1048);
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_10001AF44(a1 + 1016, *(a1 + 1024));
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1003C93BC(a1 + 112, *(a1 + 120));
  v10 = (a1 + 88);
  sub_100574D20(&v10);
  sub_100574ED8(a1 + 64, *(a1 + 72));
  v8 = *(a1 + 56);
  if (v8)
  {
    sub_100008080(v8);
  }

  return a1;
}

void sub_10056E964(uint64_t a1)
{
  sub_10056F1B0(a1, 0);
  v2 = *(a1 + 64);
  if (v2 != (a1 + 72))
  {
    do
    {
      (*(*v2[5] + 88))(v2[5]);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 72));
  }

  (*(**(a1 + 168) + 16))(*(a1 + 168));
  (*(**(a1 + 136) + 16))(*(a1 + 136));
  (*(**(a1 + 48) + 192))(*(a1 + 48), 13);
  (*(**(a1 + 48) + 192))(*(a1 + 48), 15);
  v6 = *(a1 + 48);
  sub_1001CBE2C(&v8, kCTCallStatusChangeNotification);
  (*(*v6 + 288))(v6, &v8);
  *(a1 + 972) = 0;
  (*(**(a1 + 48) + 208))(*(a1 + 48), 0);
  (*(**(a1 + 48) + 48))(*(a1 + 48));
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v7 = sub_1000206B4();
  sub_100116DD4(v7, @"LastPrune", (a1 + 992));

  *(a1 + 264) = 0;
}

void sub_10056EBD0(uint64_t a1)
{
  sub_10056E7E8(a1);

  operator delete();
}

void sub_10056EC08(uint64_t a1)
{
  sub_10056E7E8(a1 - 8);

  operator delete();
}

void sub_10056EC44(uint64_t a1)
{
  sub_10056E7E8(a1 - 16);

  operator delete();
}

void sub_10056EC80(uint64_t a1)
{
  sub_10056E7E8(a1 - 24);

  operator delete();
}

void sub_10056ECBC(uint64_t a1)
{
  sub_10056E7E8(a1 - 32);

  operator delete();
}

void sub_10056ECF8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[22];
  a1[21] = v10;
  a1[22] = v9;
  if (v11)
  {
    sub_100008080(v11);
  }

  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a1[18];
  a1[17] = v13;
  a1[18] = v12;
  if (v14)
  {
    sub_100008080(v14);
  }

  v16 = *a4;
  v15 = a4[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a1[20];
  a1[19] = v16;
  a1[20] = v15;
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = *a5;
  v19 = a5[1];
  if (*a5 != v19)
  {
    do
    {
      v20 = v18[1];
      v23[0] = *v18;
      v23[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10056EF94(a1, v23);
      if (v20)
      {
        sub_100008080(v20);
      }

      v18 += 2;
    }

    while (v18 != v19);
  }

  (*(*a1 + 48))(a1);
  if ((*(*a1[21] + 40))(a1[21]))
  {
    (*(*a1[21] + 72))(a1[21]);
    v21 = *(*a1[17] + 72);

    v21();
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v22 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:gps harvesting is not supported}", buf, 0x12u);
    }
  }
}

uint64_t *sub_10056EF94(uint64_t a1, uint64_t *a2)
{
  v9 = sub_1000183C0(*a2);
  v10 = &v9;
  v4 = sub_100071E08(a1 + 64, &v9);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_100008080(v7);
  }

  v10 = &v9;
  result = sub_1003E3DEC(a1 + 112, &v9);
  result[5] = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

void sub_10056F044(uint64_t a1)
{
  (*(**(a1 + 168) + 88))(*(a1 + 168));

  sub_1002F76A4(a1 + 1080);
}

double sub_10056F0A0(uint64_t a1)
{
  (*(**(a1 + 168) + 96))(*(a1 + 168));

  return sub_1004F4C18((a1 + 1080));
}

double sub_10056F0FC(uint64_t a1)
{
  (*(**(a1 + 152) + 96))(*(a1 + 152));

  return sub_1004F4C18((a1 + 1064));
}

uint64_t sub_10056F1B0(uint64_t result, int a2)
{
  if (*(result + 187) != a2)
  {
    v3 = result;
    *(result + 187) = a2;
    v4 = **(result + 48);
    if (a2)
    {
      (*(v4 + 80))();
      (*(*v3[6] + 80))(v3[6], 4);
      (*(*v3[6] + 80))(v3[6], 0);
    }

    else
    {
      (*(v4 + 88))();
      (*(*v3[6] + 88))(v3[6], 4);
      (*(*v3[6] + 88))(v3[6], 0);
    }

    v5 = (*v3)[5];

    return v5(v3);
  }

  return result;
}

uint64_t sub_10056F324(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 5)
  {
    switch(a2)
    {
      case 6:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v11 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester registering for PassKit notifications}", &v21, 0x12u);
        }

        (*(**(v2 + 48) + 368))(*(v2 + 48), 0);
        return (*(**(v2 + 48) + 368))();
      case 7:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v20 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester registering for leech visit notifications}", &v21, 0x12u);
        }

        return (*(**(v2 + 48) + 392))(*(v2 + 48));
      case 8:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v8 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester registering for wifi notificatons}", &v21, 0x12u);
        }

        v9 = *(v2 + 48);
        v21 = 3;
        return (*(*v9 + 328))(v9, &v21);
    }
  }

  else if (a2 == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v10 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester registering for location leech notifications}", &v21, 0x12u);
    }

    (*(**(v2 + 48) + 232))(*(v2 + 48), 5);
    (*(**(v2 + 48) + 232))(*(v2 + 48), 12);
    return (*(**(v2 + 48) + 232))(*(v2 + 48), 46);
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v12 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v21 = 68289026;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester #msim registering for telephony notifications}", &v21, 0x12u);
      }

      v13 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kCellInfoNotification");
      (*(*v13 + 272))(v13, &v21);
      v14 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kSimInfoChangedNotification");
      (*(*v14 + 272))(v14, &v21);
      v15 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kServingCellChangedNotification");
      (*(*v15 + 272))(v15, &v21);
      v16 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kServingNetworkChangedNotification");
      (*(*v16 + 272))(v16, &v21);
      v17 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kSubscriptionsInUseNotification");
      (*(*v17 + 272))(v17, &v21);
      v18 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kRegistrationDisplayStatusNotification");
      (*(*v18 + 272))(v18, &v21);
    }

    else
    {
      if (a2 != 5)
      {
        return result;
      }

      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v3 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v21 = 68289026;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester registering for #legacy telephony notifications}", &v21, 0x12u);
      }

      v4 = *(v2 + 48);
      sub_1001CBE2C(&v21, kCTCellMonitorUpdateNotification);
      (*(*v4 + 280))(v4, &v21);
      v5 = *(v2 + 48);
      sub_1001CBE2C(&v21, kCTRegistrationCellChangedNotification);
      (*(*v5 + 280))(v5, &v21);
      v6 = *(v2 + 48);
      sub_1001CBE2C(&v21, kCTRegistrationNewServingNetworkNotification);
      (*(*v6 + 280))(v6, &v21);
      v7 = *(v2 + 48);
      sub_1001CBE2C(&v21, @"kSubscriptionsInUseNotification");
      (*(*v7 + 280))(v7, &v21);
    }

    v19 = *(v2 + 48);
    sub_1001CBE2C(&v21, @"kTimingAdvanceInfoNotification");
    return (*(*v19 + 272))(v19, &v21);
  }

  return result;
}

uint64_t sub_10056FBC0(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 5)
  {
    switch(a2)
    {
      case 6:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v11 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for PassKit notifications}", &v21, 0x12u);
        }

        (*(**(v2 + 48) + 376))(*(v2 + 48), 0);
        return (*(**(v2 + 48) + 376))();
      case 7:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v20 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for leech visit notifications}", &v21, 0x12u);
        }

        return (*(**(v2 + 48) + 400))(*(v2 + 48));
      case 8:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v8 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for wifi notificatons}", &v21, 0x12u);
        }

        v9 = *(v2 + 48);
        v21 = 3;
        return (*(*v9 + 336))(v9, &v21);
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v10 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for location notifications}", &v21, 0x12u);
        }

        (*(**(v2 + 48) + 240))(*(v2 + 48), 5);
        (*(**(v2 + 48) + 240))(*(v2 + 48), 12);
        return (*(**(v2 + 48) + 240))(*(v2 + 48), 46);
      case 4:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v12 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for telephony notifications}", &v21, 0x12u);
        }

        v13 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kCellInfoNotification");
        (*(*v13 + 288))(v13, &v21);
        v14 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kSimInfoChangedNotification");
        (*(*v14 + 288))(v14, &v21);
        v15 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kServingCellChangedNotification");
        (*(*v15 + 288))(v15, &v21);
        v16 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kServingNetworkChangedNotification");
        (*(*v16 + 288))(v16, &v21);
        v17 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kSubscriptionsInUseNotification");
        (*(*v17 + 288))(v17, &v21);
        v18 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kRegistrationDisplayStatusNotification");
        (*(*v18 + 288))(v18, &v21);
        v19 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kTimingAdvanceInfoNotification");
        return (*(*v19 + 288))(v19, &v21);
      case 5:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v3 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289026;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvester unregistering for #legacy telephony notifications}", &v21, 0x12u);
        }

        v4 = *(v2 + 48);
        sub_1001CBE2C(&v21, kCTCellMonitorUpdateNotification);
        (*(*v4 + 296))(v4, &v21);
        v5 = *(v2 + 48);
        sub_1001CBE2C(&v21, kCTRegistrationCellChangedNotification);
        (*(*v5 + 296))(v5, &v21);
        v6 = *(v2 + 48);
        sub_1001CBE2C(&v21, kCTRegistrationNewServingNetworkNotification);
        (*(*v6 + 296))(v6, &v21);
        v7 = *(v2 + 48);
        sub_1001CBE2C(&v21, @"kSubscriptionsInUseNotification");
        return (*(*v7 + 296))(v7, &v21);
    }
  }

  return result;
}

void sub_10057045C(uint64_t a1, signed int a2, unsigned int a3)
{
  v28 = a2;
  v5 = *(a1 + 72);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 72;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 72 && *(v7 + 32) <= a2)
  {
    if (sub_100574F38((*(a1 + 88) + 40 * a3), &v28))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v15 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        v16 = v28;
        sub_100BD6D14(a3, __p);
        if (v27 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2050;
        v34 = v16;
        v35 = 2081;
        v36 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:SubHarvester re-registered for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (qword_1025D47D0 != -1)
        {
          sub_1018C4FA8();
        }
      }

      v18 = qword_1025D47D8;
      if (os_signpost_enabled(qword_1025D47D8))
      {
        v19 = v28;
        sub_100BD6D14(a3, __p);
        if (v27 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2050;
        v34 = v19;
        v35 = 2081;
        v36 = v20;
        v12 = "SubHarvester re-registered for notification";
        v13 = "{msg%{public}.0s:SubHarvester re-registered for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}";
        v14 = v18;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = (*(a1 + 88) + 40 * a3);
      v22 = v21[3];
      sub_100574AF0(v21, &v28);
      if (!v22)
      {
        sub_10056F324(a1, a3);
      }

      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v23 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v24 = v28;
        sub_100BD6D14(a3, __p);
        if (v27 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2050;
        v34 = v24;
        v35 = 2081;
        v36 = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:subharvester registered for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_8:
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
    {
      sub_100BD6D14(a3, __p);
      if (v27 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      v34 = a2;
      v35 = 2081;
      v36 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unknown SubHarvester registering for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }
    }

    v10 = qword_1025D47D8;
    if (os_signpost_enabled(qword_1025D47D8))
    {
      sub_100BD6D14(a3, __p);
      if (v27 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      v34 = a2;
      v35 = 2081;
      v36 = v11;
      v12 = "Unknown SubHarvester registering for notification";
      v13 = "{msg%{public}.0s:Unknown SubHarvester registering for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}";
      v14 = v10;
LABEL_23:
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, buf, 0x26u);
LABEL_24:
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100570910(uint64_t a1, signed int a2, unsigned int a3)
{
  v17 = a2;
  v5 = *(a1 + 72);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 72;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 72 && *(v7 + 32) <= a2)
  {
    if (sub_100574F38((*(a1 + 88) + 40 * a3), &v17))
    {
      sub_100574FEC((*(a1 + 88) + 40 * a3), &v17);
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v12 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v13 = v17;
        sub_100BD6D14(a3, __p);
        v14 = v16 >= 0 ? __p : __p[0];
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        v23 = v13;
        v24 = 2081;
        v25 = v14;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:subharvester unregistered for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!*(*(a1 + 88) + 40 * a3 + 24))
      {
        sub_10056FBC0(a1, a3);
      }
    }
  }

  else
  {
LABEL_8:
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
    {
      sub_100BD6D14(a3, __p);
      if (v16 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = a2;
      v24 = 2081;
      v25 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unknown SubHarvester unregistering for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }
    }

    v10 = qword_1025D47D8;
    if (os_signpost_enabled(qword_1025D47D8))
    {
      sub_100BD6D14(a3, __p);
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = a2;
      v24 = 2081;
      v25 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unknown SubHarvester unregistering for notification", "{msg%{public}.0s:Unknown SubHarvester unregistering for notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestNotificationType:%{private, location:escape_only}s}", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t sub_100570C6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = (result + 72);
  if (v2 != (result + 72))
  {
    do
    {
      result = (*(*v2[5] + 96))(v2[5], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_100570D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004FD18(v34);
  sub_10004FD18(v33);
  v5 = sub_1001C0EF0(a2, "Locations");
  v6 = v5;
  v7 = *(a3 + 20) < 0.0 || v5 < 1;
  if (v7)
  {
    goto LABEL_37;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    v31 = 0.0;
    v32 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    sub_100185ADC(a2, "Locations", v34);
    if (sub_1000B9370(v34, "LatitudeMin", &v32) && sub_1000B9370(v34, "LatitudeMax", &v31) && sub_1000B9370(v34, "LongitudeMin", &v30) && sub_1000B9370(v34, "LongitudeMax", &v29) && sub_100185ADC(v34, "Rules", v33))
    {
      v10 = *(a3 + 4);
      if (v32 <= v10 && v31 >= v10)
      {
        v11 = *(a3 + 12);
        if (v30 <= v11 && v29 >= v11)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_1018C4FA8();
          }

          v12 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            v13 = LocationLogEncryptionDataSize();
            v27 = LocationLogEncryptionEncryptData();
            v26 = LocationLogEncryptionDataSize();
            v25 = LocationLogEncryptionEncryptData();
            v24 = LocationLogEncryptionDataSize();
            v23 = LocationLogEncryptionEncryptData();
            v22 = LocationLogEncryptionDataSize();
            v21 = LocationLogEncryptionEncryptData();
            v20 = LocationLogEncryptionDataSize();
            v19 = LocationLogEncryptionEncryptData();
            v14 = LocationLogEncryptionDataSize();
            v15 = LocationLogEncryptionEncryptData();
            *buf = 68292098;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 1040;
            v40 = v13;
            v41 = 2098;
            v42 = v27;
            v43 = 1040;
            v44 = v26;
            v45 = 2098;
            v46 = v25;
            v47 = 1040;
            v48 = v24;
            v49 = 2098;
            v50 = v23;
            v51 = 1040;
            v52 = v22;
            v53 = 2098;
            v54 = v21;
            v55 = 1040;
            v56 = v20;
            v57 = 2098;
            v58 = v19;
            v59 = 1040;
            v60 = v14;
            v61 = 2098;
            v62 = v15;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:applying bounding-box-specific overrides, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, latMin:%{public, location:Encrypted_latitude}.*P, lonMin:%{public, location:Encrypted_longitude}.*P, latMax:%{public, location:Encrypted_latitude}.*P, lonMax:%{public, location:Encrypted_longitude}.*P}", buf, 0x72u);
          }

          v8 = 1;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v16 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 1025;
        v40 = v9 - 1;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:location-specific entry is incomplete, incompleteEntry:%{private}d}", buf, 0x18u);
      }
    }

    if (v8)
    {
      break;
    }

    if (*(a3 + 20) < 0.0)
    {
      break;
    }

    v7 = v9++ < v6;
  }

  while (v7);
  if ((v8 & 1) == 0)
  {
LABEL_37:
    if (sub_100185ADC(a2, "Default", v33))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v17 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:applying overrides}", buf, 0x12u);
      }
    }

    else
    {
      sub_1004F9A30(v33, a2);
    }
  }

  sub_100570C6C(a1, v33);
  sub_100005DA4(v33);
  return sub_100005DA4(v34);
}

void sub_1005711D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  sub_100005DA4(&a29);
  sub_100005DA4(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_100571204(uint64_t a1)
{
  sub_10004FD18(v6);
  if ((*(**(a1 + 48) + 112))(*(a1 + 48), v6))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v3 = "{msg%{public}.0s:found default overrides - applying}";
LABEL_15:
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, v3, buf, 0x12u);
    }
  }

  else if ((*(**(a1 + 48) + 360))(*(a1 + 48), v6))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v3 = "{msg%{public}.0s:found network overrides - applying}";
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v3 = "{msg%{public}.0s:no overrides found in daemon settings or network settings}";
      goto LABEL_15;
    }
  }

  v4 = (*(**(a1 + 168) + 56))(*(a1 + 168));
  sub_100570D08(a1, v6, v4);
  return sub_100005DA4(v6);
}

_BYTE *sub_100571460(_BYTE *result, int a2)
{
  if (result[185] != a2)
  {
    result[185] = a2;
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_10057149C()
{
  v28 = 0;
  sub_10001CAF4(buf);
  sub_10001CB4C(*buf, "EnableHarvestingForLocationSimulation", &v28);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (v28)
  {
    sub_10000EC00(v26, "http://localhost:8008");
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v0 = [&off_1025542A0 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v0)
    {
      v1 = *v23;
      while (2)
      {
        for (i = 0; i != v0; i = i + 1)
        {
          if (*v23 != v1)
          {
            objc_enumerationMutation(&off_1025542A0);
          }

          v3 = *(*(&v22 + 1) + 8 * i);
          __p = 0;
          v20 = 0;
          v21 = 0;
          sub_10001CAF4(buf);
          sub_100005050(*buf, v3, &__p);
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }

          v4 = SHIBYTE(v21);
          if (v21 >= 0)
          {
            v5 = HIBYTE(v21);
          }

          else
          {
            v5 = v20;
          }

          v6 = v27;
          if ((v27 & 0x80u) != 0)
          {
            v6 = v26[1];
          }

          if (v5 != v6 || ((v7 = __p, v21 >= 0) ? (v8 = &__p) : (v8 = __p), (v27 & 0x80u) == 0 ? (v9 = v26) : (v9 = v26[0]), memcmp(v8, v9, v5)))
          {
            if (qword_1025D47D0 != -1)
            {
              sub_1018C4FA8();
            }

            v12 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              v13 = [v3 UTF8String];
              p_p = &__p;
              if (v21 < 0)
              {
                p_p = __p;
              }

              *buf = 136315394;
              *&buf[4] = v13;
              *&buf[12] = 2080;
              *&buf[14] = p_p;
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Collection endpoint for: %s  set to : %s. Should be localhost:8008", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C5314(buf);
              v16 = [v3 UTF8String];
              v17 = &__p;
              if (v21 < 0)
              {
                v17 = __p;
              }

              v29 = 136315394;
              v30 = v16;
              v31 = 2080;
              v32 = v17;
              v18 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLHarvestController::isHarvestingAllowedForLocationSimulation() const", "%s\n", v18);
              if (v18 != buf)
              {
                free(v18);
              }
            }

            if (SHIBYTE(v21) < 0)
            {
              operator delete(__p);
            }

            v10 = 0;
            goto LABEL_47;
          }

          if (v4 < 0)
          {
            operator delete(v7);
          }
        }

        v0 = [&off_1025542A0 countByEnumeratingWithState:&v22 objects:v34 count:16];
        v10 = 1;
        if (v0)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_47:
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v11 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "EnableHarvestingForLocationSimulation not set to True.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5224();
    }

    return 0;
  }

  return v10;
}

void sub_100571888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100571904(uint64_t a1, int a2)
{
  result = sub_100023B30();
  if ((result & 0x800000) != 0 && *(a1 + 1209) != a2)
  {
    if (a2)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v5 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:starting motion activity monitoring}", buf, 0x12u);
      }

      (*(**(a1 + 48) + 248))(*(a1 + 48), 2);
      (*(**(a1 + 48) + 248))(*(a1 + 48), 3);
      v6 = *(a1 + 48);
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100571BE0;
      v11 = &unk_10245FB08;
      v12 = a1;
      result = (*(*v6 + 352))();
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:stopping motion activity monitoring}", buf, 0x12u);
      }

      (*(**(a1 + 48) + 256))(*(a1 + 48), 2);
      (*(**(a1 + 48) + 256))();
      CLMotionActivity::init((a1 + 392));
      CLMotionActivity::init((a1 + 528));
      result = CLMotionActivity::init((a1 + 664));
      *(a1 + 802) = 0;
      *(a1 + 808) = 0xBFF0000000000000;
    }

    *(a1 + 1209) = a2;
  }

  return result;
}

void sub_100571BE0(uint64_t a1, double *a2)
{
  v3 = *a2 > 0.0 && a2[1] < 0.0;
  v4 = *(a1 + 32);
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v5 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v8[0] = 68289795;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = v6;
    v13 = 2049;
    v14 = v7;
    v15 = 1025;
    v16 = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:fetched most recent connection, startTime:%{private}f, endTime:%{private}f, vehicleConnected:%{private}hhd}", v8, 0x2Cu);
  }

  sub_100571D08(v4, v3);
}

void sub_100571D08(uint64_t a1, int a2)
{
  if (*(a1 + 808) >= 0.0)
  {
    if (*(a1 + 802) == a2)
    {
      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 802);
      v8 = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1025;
      v13 = v7;
      v14 = 1025;
      v15 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vehicle connected state changed, oldVehicleConnectionState:%{private}d, newVehicleConnectionState:%{private}d}", &v8, 0x1Eu);
    }

    *(a1 + 802) = a2;
    v5 = (*(*a1 + 64))(a1);
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v8 = 68289283;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1025;
      v13 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vehicle connected state changed, was unknown, newVehicleConnectionState:%{private}d}", &v8, 0x18u);
    }

    *(a1 + 802) = a2;
    v5 = (*(*a1 + 64))(a1) + -60.0;
  }

  *(a1 + 808) = v5;
}

uint64_t sub_100571F00(uint64_t result, int a2)
{
  if (*(result + 1208) != a2)
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:starting battery monitoring}", &v6, 0x12u);
      }

      result = (*(**(v3 + 48) + 184))(*(v3 + 48), 7);
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v5 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:stopping battery monitoring}", &v6, 0x12u);
      }

      result = (*(**(v3 + 48) + 192))(*(v3 + 48), 7);
    }

    *(v3 + 1208) = v2;
  }

  return result;
}

void sub_1005720B4(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 336);
  LODWORD(v3) = *(a1 + 232);
  if (v3 != *a2)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v5 = qword_1025D47D8;
    v6 = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
    v3 = *a2;
    if (v6)
    {
      v7 = *(a1 + 232);
      v8[0] = 68289539;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2049;
      v12 = v7;
      v13 = 2049;
      v14 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Reachability changed state, oldReachability:%{private, location:CLDaemonStatus_Type::Reachability}lld, newReachability:%{private, location:CLDaemonStatus_Type::Reachability}lld}", v8, 0x26u);
      LODWORD(v3) = *a2;
    }
  }

  *(a1 + 232) = v3;
}

void sub_100572204(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = (a1 + 72);
  if (v1 != (a1 + 72))
  {
    do
    {
      sub_100C73A68(v1[5]);
      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_100572270(uint64_t a1, void **a2, int a3)
{
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v7;
    v22 = 1026;
    v23 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:update authorization, clientKey:%{public, location:escape_only}s, isAuthorized:%{public}hhd}", buf, 0x22u);
  }

  v8 = qword_102656EC8;
  v9 = unk_102656ED0;
  if (qword_102656EC8 != unk_102656ED0)
  {
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    if (v10 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_23;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_23:
    sub_1018C5444();
  }

  *buf = a2;
  *(sub_100575024(a1 + 1016, a2) + 56) = a3;
  return (*(*a1 + 40))(a1);
}

void sub_10057245C(uint64_t a1, int a2, int a3, uint64_t a4, char a5)
{
  ++*(a1 + 356);
  sub_100039440(a1);
  (*(**(a1 + 152) + 88))(*(a1 + 152), a4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100572548;
  v10[3] = &unk_10245FB28;
  v11 = a2;
  v12 = a3;
  v10[4] = a1;
  v10[5] = a4;
  v13 = a5;
  sub_100071CE4(a1, 2u, v10);
  sub_100039584(a1);
}

uint64_t sub_100572548(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1000183C0(*a2);
  sub_10021CA28(v3, v4);
  v5 = *(**a2 + 16);

  return v5();
}

uint64_t sub_1005725D4(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 340);
  if (*(a1 + 217) != *(a2 + 9))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v5 = "Disconnected";
      v6 = *(a1 + 217);
      if (*(a2 + 9))
      {
        v7 = "Connected";
      }

      else
      {
        v7 = "Disconnected";
      }

      v11[0] = 68289539;
      if (v6)
      {
        v5 = "Connected";
      }

      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2081;
      v15 = v7;
      v16 = 2081;
      v17 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Battery changed state, oldBatteryState:%{private, location:escape_only}s, newBatteryState:%{private, location:escape_only}s}", v11, 0x26u);
    }
  }

  v8 = *(a2 + 16);
  *(a1 + 208) = *a2;
  *(a1 + 224) = v8;
  v9 = *(a1 + 208);
  sub_1004F4C7C(a1 + 1080, *(a1 + 217), v9);
  return (*(**(a1 + 136) + 88))(*(a1 + 136), a1 + 208);
}

void sub_100572754(uint64_t a1, int a2)
{
  ++*(a1 + 344);
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onThermalStatusNotification, thermalLevel:%{public}d}", &v13, 0x18u);
  }

  v5 = *(a1 + 188);
  v6 = *(a1 + 189);
  *(a1 + 192) = a2;
  v7 = *(a1 + 196);
  if (v7 <= a2)
  {
    v8 = 0;
    *(a1 + 189) = 0;
    if (v7 >= a2)
    {
      goto LABEL_11;
    }

    v8 = 0;
    *(a1 + 188) = 0;
  }

  else
  {
    if (*(a1 + 200) < a2)
    {
      return;
    }

    *(a1 + 188) = 257;
    v8 = 1;
  }

  if (v5 != v8)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v9 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 188);
      v13 = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1025;
      v18 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:thermal (low cpu tasks) transition, acceptable:%{private}hhd}", &v13, 0x18u);
    }

    if (v6 == *(a1 + 189))
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_11:
  if (v6 != v8)
  {
LABEL_18:
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v11 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 189);
      v13 = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1025;
      v18 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:thermal (high cpu tasks) transition, acceptable:%{private}hhd}", &v13, 0x18u);
    }

LABEL_22:
    (*(*a1 + 40))(a1);
  }
}

void **sub_1005729E8(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      sub_1004CA6DC(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004CA724(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_100572AFC(uint64_t a1)
{
  if (*(a1 + 192) >= 10)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v2 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v4 = *(a1 + 192);
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1025;
      v19 = v4;
      v5 = "{msg%{public}.0s:thermal level is too high - no network request, thermalLevel:%{private}d}";
      v6 = v2;
      v7 = OS_LOG_TYPE_INFO;
      v8 = 24;
LABEL_23:
      _os_log_impl(dword_100000000, v6, v7, v5, &v14, v8);
      return 0;
    }

    return result;
  }

  v9 = *(a1 + 232);
  if (v9 == 1)
  {
    v11 = (*(*a1 + 224))(a1);
    if (v11)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v12 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v14 = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:currently have active or held calls - no network requests over cellular}", &v14, 0x12u);
      }
    }

    if ((*(**(a1 + 48) + 312))(*(a1 + 48)) != 5)
    {
      return v11 ^ 1u;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v13 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v14 = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v5 = "{msg%{public}.0s:currently roaming - no network requests over cellular}";
      v6 = v13;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }
  }

  else
  {
    if (v9)
    {
      return 1;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v10 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v14 = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v5 = "{msg%{public}.0s:no data available - no network requests}";
      v6 = v10;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_22:
      v8 = 18;
      goto LABEL_23;
    }
  }

  return result;
}

void sub_100572DDC(uint64_t a1, double a2)
{
  v2 = a2;
  if (*(a1 + 976) == a2)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2049;
      v19 = v2;
      v4 = "{msg%{public}.0s:#uploadTimer already set to this time, uploadTimerFireTime_s:%{private}.09f}";
LABEL_30:
      v10 = v3;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_31:
      v12 = 28;
      goto LABEL_32;
    }
  }

  else if (*(a1 + 973) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2049;
      v19 = v2;
      v4 = "{msg%{public}.0s:#uploadTimer locked, ignoring timer update request, uploadTimerFireTime_s:%{private}.09f}";
      goto LABEL_30;
    }
  }

  else if (*(a1 + 257))
  {
    v6 = *(a1 + 984);
    if (v6 != 1.79769313e308 && v6 + 3.0 > v2)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v8 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v14 = 68289539;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2049;
        v19 = v2;
        v20 = 2049;
        v21 = 0x4008000000000000;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#uploadTimer fired twice quickly, adding delay, uploadTimerFireTime_s:%{private}.09f, uploadDelay_s:%{private}.09f}", &v14, 0x26u);
      }

      v2 = *(a1 + 984) + 3.0;
    }

    (*(**(a1 + 1056) + 24))(*(a1 + 1056), v2);
    *(a1 + 976) = v2;
    if (v2 == 1.79769313e308)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v9 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v4 = "{msg%{public}.0s:#uploadTimer disabled}";
        v10 = v9;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 18;
LABEL_32:
        _os_log_impl(dword_100000000, v10, v11, v4, &v14, v12);
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v13 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289283;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2049;
        v19 = v2;
        v4 = "{msg%{public}.0s:#uploadTimer fire date set, uploadTimerFireTime_s:%{private}.09f}";
        v10 = v13;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2049;
      v19 = v2;
      v4 = "{msg%{public}.0s:Upload requirements not met, ignoring #uploadTimer update request, uploadTimerFireTime_s:%{private}.09f}";
      goto LABEL_30;
    }
  }
}

double sub_1005731B4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 == (a1 + 120))
  {
    v2 = 1.79769313e308;
  }

  else
  {
    v2 = 1.79769313e308;
    do
    {
      if (v1[5] < v2)
      {
        v2 = v1[5];
      }

      v3 = *(v1 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v1 + 2);
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != (a1 + 120));
  }

  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = v2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "getNextUploadTime: min time: %f", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5678(v2);
  }

  return v2;
}

void sub_1005732F8(uint64_t a1)
{
  v2 = *(a1 + 257);
  (*(*a1 + 64))(a1);
  v4 = 376;
  if (v2)
  {
    v4 = 368;
  }

  *(a1 + v4) = v3 - *(a1 + 384) + *(a1 + v4);
  *(a1 + 384) = v3;
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v5 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 336);
    v7 = *(a1 + 340);
    v8 = *(a1 + 344);
    v9 = *(a1 + 348);
    v10 = *(a1 + 352);
    v11 = *(a1 + 356);
    v12 = *(a1 + 360);
    v13 = *(a1 + 368);
    v14 = *(a1 + 376);
    *v19 = 68291331;
    *&v19[8] = 2082;
    *&v19[10] = "";
    *&v19[18] = 1025;
    *&v19[20] = v6;
    *&v19[24] = 1025;
    *&v19[26] = v7;
    *&v19[30] = 1025;
    *v20 = v8;
    *&v20[4] = 1025;
    *&v20[6] = v9;
    *&v20[10] = 1025;
    *&v20[12] = v10;
    *&v20[16] = 1025;
    *&v20[18] = v11;
    *&v20[22] = 1025;
    *v21 = v12;
    *&v21[4] = 2049;
    *&v21[6] = v13;
    *&v21[14] = 2049;
    *&v21[16] = v14;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MainHarvesterMetrics, reachabilityNotifications:%{private}d, batteryNotifications:%{private}d, thermalNotifications:%{private}d, locationNotifications:%{private}d, rawsGpsNotifications:%{private}d, validatedGpsNotifications:%{private}d, managerNotifications:%{private}d, durationMinimumUploadRequirementsMet:%{private}f, durationMinimumUploadRequirementsNotMet:%{private}f}", v19, 0x50u);
  }

  *(a1 + 280) = (*(*a1 + 64))(a1);
  sub_10056DEE8(a1, v19);
  *(a1 + 272) = *v19;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  *(a1 + 288) = *&v19[16];
  *(a1 + 304) = *v20;
  v20[7] = 0;
  v19[16] = 0;
  v15 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    v17 = v20[7];
    *v15 = *&v20[8];
    *(a1 + 328) = *v21;
    v21[7] = 0;
    v20[8] = 0;
    v18 = v22;
    *(a1 + 336) = *&v21[8];
    *(a1 + 352) = v18;
    *(a1 + 368) = v23;
    if (v17 < 0)
    {
      operator delete(*&v19[16]);
    }
  }

  else
  {
    *v15 = *&v20[8];
    *(a1 + 328) = *v21;
    v16 = v22;
    *(a1 + 336) = *&v21[8];
    *(a1 + 352) = v16;
    *(a1 + 368) = v23;
  }
}

double sub_10057355C(uint64_t a1)
{
  v2 = a1 + 836;
  v3 = *(a1 + 64);
  v4 = (a1 + 72);
  if (v3 != (a1 + 72))
  {
    do
    {
      sub_100C73A68(v3[5]);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          _ZF = *v6 == v3;
          v3 = v6;
        }

        while (!_ZF);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  (*(**(a1 + 152) + 64))(*(a1 + 152));
  *(a1 + 816) = 0xFFFF;
  result = 0.0;
  *(a1 + 820) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *v2 = xmmword_101C75BF0;
  *(v2 + 16) = _Q2;
  *(v2 + 32) = _Q2;
  *(v2 + 48) = _Q2;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0xBFF0000000000000;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  *(v2 + 96) = 0xBFF0000000000000;
  *(a1 + 940) = 0x7FFFFFFF;
  *(a1 + 944) = 0;
  *(a1 + 960) = 0;
  *(a1 + 952) = 0;
  *(a1 + 968) = 0;
  return result;
}

void sub_100573690(double *a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 124);
    v4 = *(a1 + 31);
    v10[0] = 68289539;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2049;
    v14 = v3;
    v15 = 2049;
    v16 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pruneTimer fired, lastPruneTime_s:%{private}.09f, maxHarvestAge_s:%{private}.09f}", v10, 0x26u);
  }

  a1[124] = (*(*a1 + 64))(a1);
  v5 = *(a1 + 8);
  v6 = a1 + 9;
  if (v5 != v6)
  {
    do
    {
      sub_100C738E8(v5[5]);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }
}

void sub_1005737F4(uint64_t a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uploadTimer fired}", &v4, 0x12u);
  }

  if ((*(*a1 + 104))(a1))
  {
    sub_10056E3BC(a1);
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uploadTimer upload requirements not met, skipping upload}", &v4, 0x12u);
    }
  }
}

_BYTE *sub_100573970@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (!*(a1 + 264))
  {
    v4 = [[CLKeychainItemWrapper alloc] initWithIdentifier:@"HarvesterMetricsUUID" keyType:kSecAttrAccount];
    v5 = [(CLKeychainItemWrapper *)v4 objectForKey:kSecValueData];
    if (!v5)
    {
      v5 = [+[NSUUID UUID](NSUUID UUIDString];
      [(CLKeychainItemWrapper *)v4 setObject:&__kCFBooleanTrue forKey:kSecAttrIsInvisible];
      [(CLKeychainItemWrapper *)v4 setObject:kSecAttrAccessibleAlwaysThisDeviceOnly forKey:kSecAttrAccessible];
      [(CLKeychainItemWrapper *)v4 setObject:v5 forKey:kSecValueData];
    }

    *(a1 + 264) = v5;
  }

  v6 = [+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:12, +[NSDate date]];
  [(NSDateComponents *)v6 setMonth:[(NSDateComponents *)v6 month]> 6];
  v7 = [[NSString alloc] initWithFormat:@"%@%ld%ld", *(a1 + 264), -[NSDateComponents year](v6, "year"), -[NSDateComponents month](v6, "month")];
  v8 = [v7 dataUsingEncoding:4];

  CC_SHA1([v8 bytes], objc_msgSend(v8, "length"), md);
  v9 = +[NSMutableString string];
  for (i = 0; i != 20; ++i)
  {
    [v9 appendFormat:@"%02x", md[i]];
  }

  return sub_10000EC00(a2, [v9 UTF8String]);
}

void sub_100573BA0(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (*a4)
  {
    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v8 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:data protection is becoming re-enabled}", buf, 0x12u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100573ED0;
  v12[3] = &unk_10245FB48;
  v13 = a2;
  v14 = a3;
  v12[4] = a4;
  sub_100071CE4(a1, 9u, v12);
  if ((*(*a1 + 104))(a1))
  {
    (*(**(a1 + 1056) + 16))(*(a1 + 1056));
    if ((*(*a1 + 64))(a1) - *(a1 + 1008) >= *(a1 + 1000))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:starting DataProtection-initiated upload}", buf, 0x12u);
      }

      sub_10056E3BC(a1);
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v9 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v10 = "{msg%{public}.0s:uploaded too recently, skipping DataProtection-initiated upload}";
LABEL_17:
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 0x12u);
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v9 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v10 = "{msg%{public}.0s:upload requirements not met, skipping DataProtection-initiated upload}";
      goto LABEL_17;
    }
  }
}

void sub_100573F08(_BYTE *a1, int a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_100571D08(a1, *(a4 + 48));
    v20 = (a1 + 1080);
    if (a1[802] == 1)
    {
      sub_1004F4A94(v20);
    }

    else
    {
      sub_1004F4B4C(v20);
    }

    *(a1 + 392) = *a4;
    v21 = *(a4 + 16);
    v22 = *(a4 + 32);
    v23 = *(a4 + 64);
    *(a1 + 440) = *(a4 + 48);
    *(a1 + 456) = v23;
    *(a1 + 408) = v21;
    *(a1 + 424) = v22;
    v24 = *(a4 + 80);
    v25 = *(a4 + 96);
    v26 = *(a4 + 112);
    *(a1 + 65) = *(a4 + 128);
    *(a1 + 488) = v25;
    *(a1 + 504) = v26;
    *(a1 + 472) = v24;
    *(a1 + 49) = *(a1 + 60);
    v27 = *(a4 + 80);
    v28 = *(a4 + 96);
    v29 = *(a4 + 112);
    *(a1 + 82) = *(a4 + 128);
    *(a1 + 39) = v28;
    *(a1 + 40) = v29;
    *(a1 + 38) = v27;
    v30 = *(a4 + 16);
    v31 = *(a4 + 32);
    v32 = *(a4 + 64);
    *(a1 + 36) = *(a4 + 48);
    *(a1 + 37) = v32;
    *(a1 + 34) = v30;
    *(a1 + 35) = v31;
    *(a1 + 33) = *a4;
    goto LABEL_26;
  }

  if (a3 == 3)
  {
    if (*(a1 + 166) == *a4)
    {
      return;
    }

    v8 = a1 + 664;
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v9 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68290051;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 1040;
      v42 = 136;
      v43 = 2097;
      v44 = a1 + 664;
      v45 = 1040;
      v46 = 136;
      v47 = 2097;
      v48 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dominant motion activity changed, oldDominantActivity:%{private, location:CLMotionActivity}.*P, newDominantActivity:%{private, location:CLMotionActivity}.*P}", buf, 0x32u);
    }

    v10 = (*(*a1 + 136))(a1);
    v11 = (*(*a1 + 144))(a1);
    *v8 = *a4;
    v12 = *(a4 + 64);
    v14 = *(a4 + 16);
    v13 = *(a4 + 32);
    *(a1 + 712) = *(a4 + 48);
    *(a1 + 728) = v12;
    *(a1 + 680) = v14;
    *(a1 + 696) = v13;
    v16 = *(a4 + 96);
    v15 = *(a4 + 112);
    v17 = *(a4 + 80);
    *(a1 + 99) = *(a4 + 128);
    *(a1 + 760) = v16;
    *(a1 + 776) = v15;
    *(a1 + 744) = v17;
    v18 = (*(*a1 + 64))(a1);
    if ((*(*a1 + 136))(a1))
    {
      v19 = 1;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      v19 = v18 != 0.0;
    }

    a1[800] = v19;
LABEL_17:
    if ((*(*a1 + 144))(a1))
    {
      v33 = 1;
    }

    else
    {
      if (!v11)
      {
LABEL_22:
        if ((*(*a1 + 128))(a1))
        {
          sub_1004F4910((a1 + 1080));
        }

        else
        {
          sub_1004F49C8((a1 + 1080));
        }

        (*(*a1 + 40))(a1);
        goto LABEL_26;
      }

      v33 = v18 != 0.0;
    }

    a1[801] = v33;
    goto LABEL_22;
  }

LABEL_26:
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1005742E8;
  v34[3] = &unk_10245FB48;
  v35 = a2;
  v36 = a3;
  v34[4] = a4;
  sub_100071CE4(a1, 3u, v34);
}

void sub_10057431C(unsigned __int8 *a1, int a2, int a3, int *a4)
{
  if (a3 <= 7)
  {
    if (a3 == 6)
    {
      sub_1005720B4(a1, a4 + 1);
    }

    else if (a3 == 7)
    {
      sub_1005725D4(a1, a4);
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        a1[184] = *a4;
        break;
      case 13:
        sub_100572754(a1, *a4);
        break;
      case 15:
        a1[256] = *a4;
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v8 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          v9 = a1[256];
          *buf = 68289283;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 1025;
          v18 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:battery save mode state update, batterySaverEnabled:%{private}hhd}", buf, 0x18u);
        }

        (*(*a1 + 40))(a1);
        break;
    }
  }

  sub_10056E5E4(a1);
  sub_100039440(a1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100574524;
  v10[3] = &unk_10245FB48;
  v11 = a2;
  v12 = a3;
  v10[4] = a4;
  sub_100071CE4(a1, 0, v10);
  sub_100039584(a1);
}

void sub_100574538(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    [a3 type];
    *buf = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1025;
    v13 = a3 != 0;
    v14 = 2049;
    v15 = [a3 type];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onVisit, validLocationOfInterest:%{private}hhd, locationOfInterestType:%{private, location:RTLocationOfInterestType}lld}", buf, 0x22u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005746A8;
  v7[3] = &unk_10245FBB0;
  v7[5] = a3;
  v7[6] = a1;
  v7[4] = a2;
  sub_100071CE4(a1, 7u, v7);
}

uint64_t sub_1005746A8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 48);
  v4 = sub_1000183C0(*a2);
  sub_10021CA28(v3, v4);
  v5 = *(**a2 + 64);

  return v5();
}

void sub_100574724(uint64_t a1, int a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1005747D8;
  v4[3] = &unk_10245FBD0;
  v6 = a2;
  v3 = a3[1];
  v4[4] = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100071CE4(a1, 6u, v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1005747C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005747D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 56))(v3, v4, &v7);
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100574854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057486C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100574888(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void *sub_100574928(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1005749D4(result, a2);
  }

  return result;
}

void sub_1005749D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100574A20(a1, a2);
  }

  sub_10028C64C();
}

void sub_100574A20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100574A78(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100574AF0(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_100574AF0(void *a1, unsigned int *a2)
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
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100574D20(void ***a1)
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
        v4 = sub_1004906DC(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100574DA4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1004906DC(v3 - 40);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_100574E64(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100574ED8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100574ED8(a1, *a2);
    sub_100574ED8(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_100574F38(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100574FEC(void *a1, unsigned int *a2)
{
  result = sub_100574F38(a1, a2);
  if (result)
  {
    sub_1005465E4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_100575024(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_1005750BC();
  }

  return result;
}

void sub_100575158(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100575174()
{
  sub_10000EC00(v2, "com.apple.locationd.bundle-/System/Library/LocationBundles/AppGenius.bundle");
  sub_10000EC00(v3, "com.apple.locationd.bundle-/System/Library/LocationBundles/Traffic.bundle");
  sub_10000EC00(v4, "com.apple.locationd.bundle-/System/Library/LocationBundles/AltimeterHarvest.bundle");
  sub_10000EC00(v5, "com.apple.locationd.bundle-/System/Library/LocationBundles/TraceHarvest.bundle");
  sub_10000EC00(v6, "com.apple.locationd.bundle-/System/Library/LocationBundles/IonosphereHarvest.bundle");
  sub_10000EC00(v7, "com.apple.locationd.bundle-/System/Library/LocationBundles/LocationHarvest.bundle");
  qword_102656EC8 = 0;
  unk_102656ED0 = 0;
  qword_102656ED8 = 0;
  sub_100390144(&qword_102656EC8, v2, &v8, 6uLL);
  for (i = 0; i != -144; i -= 24)
  {
    if (v7[i + 23] < 0)
    {
      operator delete(*&v7[i]);
    }
  }

  return __cxa_atexit(sub_1004E8DEC, &qword_102656EC8, dword_100000000);
}

void sub_1005752B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 143);
  v13 = -144;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_10057531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *a3;
  v9 = *(a3 + 16);
  if (a2 && !sub_100CE74C4(a1))
  {
    if (qword_1025D44D0 != -1)
    {
      sub_1018C578C();
    }

    v5 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Minimum distance not reached, overriding notification with kCMWorkoutLocationTypeIndoor", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C57A0();
    }

    *&v8 = 1;
  }

  return sub_100CE7578(a1, a2, &v8);
}

void sub_1005753FC(uint64_t a1)
{
  sub_100575464(a1);

  operator delete();
}

uint64_t sub_100575464(uint64_t a1)
{
  *a1 = off_1024A6A98;
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_1005754EC(a1 + 520);
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1005754EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 24);
  sub_1000B8618(&v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100575558(uint64_t a1, void *a2)
{
  *a1 = off_10245FE50;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 16) = a2;
  return a1;
}

void sub_1005755A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_1018C58B4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005755C8(uint64_t a1)
{
  *a1 = off_10245FE50;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 8) = 0;
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_100575674(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *(a1 + 8) = 0;
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005756B0(uint64_t a1)
{
  sub_1005755C8(a1);

  operator delete();
}

void sub_1005756E8(uint64_t a1)
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018C58D8();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "start mock data provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C58EC();
  }

  if (!*(a1 + 8))
  {
    v5 = 8;
    strcpy(__p, "MockAlgo");
    operator new();
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "start mock data provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5A04();
  }
}

void sub_1005758E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 2;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 2;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1005783C8(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 2;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::DM, T = CLDeviceMotion::Sample, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLDeviceMotion::Sample>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100575B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100575CB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 5;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 5;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100578C2C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 5;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Steps, T = CMDataProvider::Types::CMDPLegacySteps, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMDataProvider::Types::CMDPLegacySteps>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100575F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576080(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 14;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 14;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1000E1A38(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 14;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::PedNetSteps, T = CMPedEntry, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMPedEntry>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057631C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057644C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 15;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 15;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1000D6FEC(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 15;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::BatchPedNetSteps, T = CMPedometerStep, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMPedometerStep>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1005766EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057681C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 6;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 6;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579390(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 6;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::HR, T = CLCatherineNotifier_Type::NotificationData, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLCatherineNotifier_Type::NotificationData>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100576ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576BEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 7;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 7;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579894(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 7;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryDMFeatures, T = CLAccessoryDMFeatures, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLAccessoryDMFeatures>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100576E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576FBC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 10;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 10;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579D18(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 10;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Odometer, T = CMDataProvider::Types::CMDPOdometer, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMDataProvider::Types::CMDPOdometer>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057725C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057738C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 11;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 11;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057A1A4(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 11;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Elevation, T = CLElevationChangeEntry, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLElevationChangeEntry>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057762C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057775C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 12;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 12;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057A5A4(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 12;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Activity, T = CLMotionStateMediator_Type::NotificationData, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLMotionStateMediator_Type::NotificationData>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1005779FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100577B2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 13;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 13;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057AA6C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 13;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::RawHR, T = CLRawHR, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLRawHR>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100577DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100577EFC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *buf = 9;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 9;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057AE9C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 9;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::FMCalorimetryReducedEmbeddings, T = imufm::CMIMUFoundationModelAdaptorResult, Strategy = CMDataProviderComposite::View::PassThroughStrategy<imufm::CMIMUFoundationModelAdaptorResult>]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057819C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005782CC(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    sub_1000432E8("map::at:  key not found");
  }

  return v2 + 56;
}

void sub_10057833C(void ***a1)
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
        v6 = v4 - 5;
        sub_10001AF44((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1005783C8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_1005785E8((a1 + 64), v9) >= a4)
        {
          if (*sub_1005785E8((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_1005785E8((a1 + 64), v9) >= a4 && *sub_1005785E8((a1 + 64), v9) < a5)
          {
            v10 = sub_1005785E8((a1 + 64), v9);
            v26 = v10[4];
            v27 = v10[5];
            v28 = v10[6];
            v29 = v10[7];
            v22 = *v10;
            v23 = v10[1];
            v24 = v10[2];
            v25 = v10[3];
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = v15 >> 7;
              v17 = (v15 >> 7) + 1;
              if (v17 >> 57)
              {
                sub_10028C64C();
              }

              v18 = v11 - v14;
              if (v18 >> 6 > v17)
              {
                v17 = v18 >> 6;
              }

              if (v18 >= 0x7FFFFFFFFFFFFF80)
              {
                v19 = 0x1FFFFFFFFFFFFFFLL;
              }

              else
              {
                v19 = v17;
              }

              if (v19)
              {
                sub_1005787E4(a3, v19);
              }

              v20 = (v16 << 7);
              v20[4] = v26;
              v20[5] = v27;
              v20[6] = v28;
              v20[7] = v29;
              *v20 = v22;
              v20[1] = v23;
              v13 = (v16 << 7) + 128;
              v20[2] = v24;
              v20[3] = v25;
              memcpy(0, v14, v15);
              v21 = *a3;
              *a3 = 0;
              *(a3 + 8) = v13;
              *(a3 + 16) = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(*(a3 + 8), v10, 0x80uLL);
              v13 = v12 + 128;
            }

            *(a3 + 8) = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }
}

void sub_1005785C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005785E8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLDeviceMotion::Sample>::operator[](const size_t) const [T = CLDeviceMotion::Sample]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[64 * (v4 - v5) + 4];
}

void sub_1005787E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10057882C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccelerometer::Sample>::operator[](const size_t) const [T = CLAccelerometer::Sample]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

uint64_t sub_100578A2C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccessoryDeviceMotion::AudioAccessorySample>::operator[](const size_t) const [T = CLAccessoryDeviceMotion::AudioAccessorySample]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[84 * (v4 - v5) + 4];
}

void sub_100578C2C(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_100578E80((a1 + 64), v9) >= a4)
        {
          if (*sub_100578E80((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_100578E80((a1 + 64), v9) >= a4 && *sub_100578E80((a1 + 64), v9) < a5)
          {
            v10 = sub_100578E80((a1 + 64), v9);
            v24 = *(v10 + 16);
            v25 = *(v10 + 32);
            v26 = *(v10 + 48);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3) + 1;
              if (v19 > 0x492492492492492)
              {
                sub_10028C64C();
              }

              v20 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v17) >> 3);
              if (2 * v20 > v19)
              {
                v19 = 2 * v20;
              }

              if (v20 >= 0x249249249249249)
              {
                v19 = 0x492492492492492;
              }

              if (v19)
              {
                sub_100579080(a3, v19);
              }

              v21 = 8 * (v18 >> 3);
              *v21 = *v10;
              *(v21 + 16) = v24;
              *(v21 + 32) = v25;
              *(v21 + 48) = v26;
              v16 = v21 + 56;
              v22 = v21 - v18;
              memcpy((v21 - v18), v17, v18);
              v23 = *a3;
              *a3 = v22;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = *(v10 + 16);
              v15 = *(v10 + 32);
              *(v11 + 6) = *(v10 + 48);
              *(v11 + 1) = v14;
              *(v11 + 2) = v15;
              *v11 = v13;
              v16 = (v11 + 56);
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100578E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100578E80(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMDataProvider::Types::CMDPLegacySteps>::operator[](const size_t) const [T = CMDataProvider::Types::CMDPLegacySteps]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

void sub_100579080(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005790DC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMPedEntry>::operator[](const size_t) const [T = CMPedEntry]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

void sub_1005792DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579334(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579390(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*(sub_100579638((a1 + 64), v9) + 40) >= a4)
        {
          if (*(sub_100579638((a1 + 64), v9) + 40) > a5)
          {
            return;
          }

          if (*(sub_100579638((a1 + 64), v9) + 40) >= a4 && *(sub_100579638((a1 + 64), v9) + 40) < a5)
          {
            v10 = sub_100579638((a1 + 64), v9);
            v30 = v10[8];
            v31 = v10[9];
            v32 = v10[10];
            v26 = v10[4];
            v27 = v10[5];
            v28 = v10[6];
            v29 = v10[7];
            v22 = *v10;
            v23 = v10[1];
            v24 = v10[2];
            v25 = v10[3];
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0x2E8BA2E8BA2E8BA3 * (v15 >> 4) + 1;
              if (v16 > 0x1745D1745D1745DLL)
              {
                sub_10028C64C();
              }

              v17 = 0x2E8BA2E8BA2E8BA3 * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0xBA2E8BA2E8BA2ELL)
              {
                v18 = 0x1745D1745D1745DLL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_100579838(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              v19[8] = v30;
              v19[9] = v31;
              v19[10] = v32;
              v19[4] = v26;
              v19[5] = v27;
              v19[6] = v28;
              v19[7] = v29;
              *v19 = v22;
              v19[1] = v23;
              v13 = v19 + 11;
              v19[2] = v24;
              v19[3] = v25;
              v20 = v19 - v15;
              memcpy(v19 - v15, v14, v15);
              v21 = *a3;
              *a3 = v20;
              *(a3 + 8) = v13;
              *(a3 + 16) = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(*(a3 + 8), v10, 0xB0uLL);
              v13 = (v12 + 176);
            }

            *(a3 + 8) = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}