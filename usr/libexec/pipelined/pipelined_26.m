void sub_100191B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
LABEL_3:
    if (a45 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a20);
  if (a45 < 0)
  {
LABEL_4:
    operator delete(a40);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    *(v73 - 160) = v71;
    if (*(v73 - 129) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a33);
  *(v73 - 160) = v71;
  if (*(v73 - 129) < 0)
  {
LABEL_6:
    operator delete(*(v73 - 152));
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a51 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v73 - 128));
    v75 = a56;
    if (!a56)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v73 - 200));
      if (*(v73 - 201) < 0)
      {
        operator delete(*(v73 - 224));
        if (a64 < 0)
        {
LABEL_18:
          operator delete(a59);
          if ((*(v73 - 233) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a64 < 0)
      {
        goto LABEL_18;
      }

      if ((*(v73 - 233) & 0x80000000) == 0)
      {
LABEL_19:
        if (a70 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(*(v73 - 256));
      if (a70 < 0)
      {
LABEL_20:
        operator delete(a65);
        if ((v72 & 1) == 0)
        {
LABEL_27:
          if (*(v73 - 161) < 0)
          {
            operator delete(*(v73 - 184));
          }

          sub_1001928EC(&a10);
          if (a18 < 0)
          {
            operator delete(a13);
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v70);
        goto LABEL_27;
      }

LABEL_25:
      if (!v72)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a57 = v75;
    operator delete(v75);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a46);
  sub_10019FF4C((v73 - 128));
  v75 = a56;
  if (!a56)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t sub_100192074(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_1001920F4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_1001922A4(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001A3D88((v4 - 56));

  _Unwind_Resume(a1);
}

void sub_100192320(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100192670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_1001928EC(v68);

            _Unwind_Resume(a1);
          }

          sub_1001928EC(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1001928EC(uint64_t a1)
{
  sub_1001B7FD0(a1);

  return a1;
}

void sub_100192920(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001929B8;
  block[3] = &unk_100440550;
  block[4] = a1;
  v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  dispatch_sync(*(a1 + 32), v2);
}

void sub_1001929B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000210C(*(v1 + 40), "PRAGMA incremental_vacuum;", "Failed to execute incremental vacuum");
  v2 = *(v1 + 40);

  sub_10023C05C(v2);
}

void sub_100192A04(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  operator new();
}

void sub_100192BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v9 + 16))(v9);
  }

  sub_1001A5C34(va);

  _Unwind_Resume(a1);
}

void sub_100192C28(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::operator+<char>();
  v3 = std::string::append(&v91, ", ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0EF >= 0)
  {
    v5 = &qword_10045D0D8;
  }

  else
  {
    v5 = qword_10045D0D8;
  }

  if (byte_10045D0EF >= 0)
  {
    v6 = byte_10045D0EF;
  }

  else
  {
    v6 = *&byte_10045D0E0;
  }

  v7 = std::string::append(&v92, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v93, ", ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v94.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v94.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0D7 >= 0)
  {
    v11 = &qword_10045D0C0;
  }

  else
  {
    v11 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v12 = byte_10045D0D7;
  }

  else
  {
    v12 = *&byte_10045D0C8;
  }

  v13 = std::string::append(&v94, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v95, ", ");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D17F >= 0)
  {
    v17 = &qword_10045D168;
  }

  else
  {
    v17 = qword_10045D168;
  }

  if (byte_10045D17F >= 0)
  {
    v18 = byte_10045D17F;
  }

  else
  {
    v18 = unk_10045D170;
  }

  v19 = std::string::append(&v96, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v97.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v97.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v97, ", ");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D137 >= 0)
  {
    v23 = &xmmword_10045D120;
  }

  else
  {
    v23 = xmmword_10045D120;
  }

  if (byte_10045D137 >= 0)
  {
    v24 = byte_10045D137;
  }

  else
  {
    v24 = *(&xmmword_10045D120 + 1);
  }

  v25 = std::string::append(&v100, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v101.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v101.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v101, ", ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v105.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v105.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D197 >= 0)
  {
    v29 = &xmmword_10045D180;
  }

  else
  {
    v29 = xmmword_10045D180;
  }

  if (byte_10045D197 >= 0)
  {
    v30 = byte_10045D197;
  }

  else
  {
    v30 = *(&xmmword_10045D180 + 1);
  }

  v31 = std::string::append(&v105, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v106, ", ");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D14F >= 0)
  {
    v35 = &qword_10045D138;
  }

  else
  {
    v35 = qword_10045D138;
  }

  if (byte_10045D14F >= 0)
  {
    v36 = byte_10045D14F;
  }

  else
  {
    v36 = *&dword_10045D140;
  }

  v37 = std::string::append(&v107, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v109, ", ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D167 >= 0)
  {
    v41 = &qword_10045D150;
  }

  else
  {
    v41 = qword_10045D150;
  }

  if (byte_10045D167 >= 0)
  {
    v42 = byte_10045D167;
  }

  else
  {
    v42 = qword_10045D158;
  }

  v43 = std::string::append(&v110, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v111.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v111.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&v111, ", ");
  v46 = *&v45->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D1AF >= 0)
  {
    v47 = &qword_10045D198;
  }

  else
  {
    v47 = qword_10045D198;
  }

  if (byte_10045D1AF >= 0)
  {
    v48 = byte_10045D1AF;
  }

  else
  {
    v48 = qword_10045D1A0;
  }

  v49 = std::string::append(&__dst, v47, v48);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v103, ", ");
  v52 = *&v51->__r_.__value_.__l.__data_;
  v104.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
  *&v104.__r_.__value_.__l.__data_ = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D11F >= 0)
  {
    v53 = &qword_10045D108;
  }

  else
  {
    v53 = qword_10045D108;
  }

  if (byte_10045D11F >= 0)
  {
    v54 = byte_10045D11F;
  }

  else
  {
    v54 = unk_10045D110;
  }

  v55 = std::string::append(&v104, v53, v54);
  v56 = *&v55->__r_.__value_.__l.__data_;
  *&v108[16] = *(&v55->__r_.__value_.__l + 2);
  *v108 = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(v108, " FROM ");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v112.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v112.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  v59 = std::string::append(&v112, "venues");
  v60 = *&v59->__r_.__value_.__l.__data_;
  v99 = v59->__r_.__value_.__r.__words[2];
  __p = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
    if ((v108[23] & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_113;
    }
  }

  else if ((v108[23] & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(*v108);
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_114;
  }

LABEL_113:
  operator delete(v104.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v103.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v111.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_119;
  }

LABEL_118:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_64:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_120;
  }

LABEL_119:
  operator delete(v107.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_65:
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_121;
  }

LABEL_120:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_66:
    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_122;
  }

LABEL_121:
  operator delete(v105.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_67:
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_123;
  }

LABEL_122:
  operator delete(v101.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_68:
    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_124;
  }

LABEL_123:
  operator delete(v100.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_69:
    if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(v97.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_70:
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_126;
  }

LABEL_125:
  operator delete(v96.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_127;
  }

LABEL_126:
  operator delete(v95.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_72:
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_128;
  }

LABEL_127:
  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_129:
    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_130:
    operator delete(v91.__r_.__value_.__l.__data_);
    goto LABEL_75;
  }

LABEL_128:
  operator delete(v93.__r_.__value_.__l.__data_);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_129;
  }

LABEL_74:
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_130;
  }

LABEL_75:
  sub_100194D08(*(a1 + 40), &__p, 0, &v97);
  v61 = v97.__r_.__value_.__r.__words[0];
  v93.__r_.__value_.__r.__words[0] = v97.__r_.__value_.__r.__words[0];
  while (1)
  {
    v62 = sqlite3_step(v61);
    v63 = v62;
    if (v62 == 100)
    {
      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4) == 5)
      {
        v64 = 0;
      }

      else
      {
        v63 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 4);
        v64 = 1;
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3) == 5)
      {
        v66 = 0;
      }

      else
      {
        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3);
        v67 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 3);
        rep = std::chrono::system_clock::from_time_t(v67).__d_.__rep_;
        v66 = 1;
      }

      sub_1001B9080(&v104, v64, v63, v66, rep);
      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 6) == 5)
      {
        v68 = 0;
      }

      else
      {
        v63 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 6);
        v68 = 1;
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5) == 5)
      {
        v70 = 0;
      }

      else
      {
        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5);
        v71 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 5);
        v69 = std::chrono::system_clock::from_time_t(v71).__d_.__rep_;
        v70 = 1;
      }

      sub_1001B9080(&v103, v68, v63, v70, v69);
      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 7) != 5)
      {
        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 7);
        v72 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 7);
        std::chrono::system_clock::from_time_t(v72);
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 8) != 5)
      {
        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 8);
        v73 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 8);
        std::chrono::system_clock::from_time_t(v73);
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 9) != 5)
      {
        sqlite3_column_int(v93.__r_.__value_.__l.__data_, 9);
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 0) != 5)
      {
        sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 0);
      }

      sub_1001B6448(&v93, v108);
      __dst = *&v108[8];
      sub_1001B9204(&v93, v108);
      v111 = *&v108[8];
      sub_1001181E4(&v107, &v111);
    }

    if (v62 == 101)
    {
      break;
    }

    if (v62 == 19)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v79 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        LOWORD(v112.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "Query constraint violation", &v112, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v62, v97.__r_.__value_.__l.__size_);
    if (v63)
    {
      v76 = __error();
      sub_10023B1C8(*v76, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v109, " w/ ");
      v77 = std::string::insert(&v109, 0, "Failed sqlite3_step");
      v78 = *&v77->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v107, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v107 = __dst;
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v107;
      }

      else
      {
        v83 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v107.__r_.__value_.__l.__size_;
      }

      v85 = std::string::append(&v110, v83, size);
      v86 = *&v85->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v96, &v111);
      v96.__r_.__value_.__r.__words[0] = &off_100440BD8;
      sub_10010A984(&v106);
    }

    v61 = v97.__r_.__value_.__r.__words[0];
  }

  v74 = sqlite3_reset(v97.__r_.__value_.__l.__data_);
  sub_100001838(v74, v97.__r_.__value_.__l.__size_);
  if (v74)
  {
    v80 = __error();
    sub_10023B1C8(*v80, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v109, " w/ ");
    v81 = std::string::insert(&v109, 0, "Failed to execute query");
    v82 = *&v81->__r_.__value_.__l.__data_;
    v110.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
    *&v110.__r_.__value_.__l.__data_ = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v107, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v107 = __dst;
    }

    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = &v107;
    }

    else
    {
      v87 = v107.__r_.__value_.__r.__words[0];
    }

    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v88 = v107.__r_.__value_.__l.__size_;
    }

    v89 = std::string::append(&v110, v87, v88);
    v90 = *&v89->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = v90;
    v89->__r_.__value_.__l.__size_ = 0;
    v89->__r_.__value_.__r.__words[2] = 0;
    v89->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v96, &v111);
    v96.__r_.__value_.__r.__words[0] = &off_100440BD8;
    sub_10010A984(&v106);
  }

  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v75 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
  {
    v112.__r_.__value_.__r.__words[0] = 67240448;
    LOWORD(v112.__r_.__value_.__r.__words[1]) = 1026;
    *(&v112.__r_.__value_.__r.__words[1] + 2) = 0;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "ResourceList, indoor, %{public}d, regional, %{public}d", &v112, 0xEu);
  }

  sub_1001B8EC8(&v97);

  if (SHIBYTE(v99) < 0)
  {
    operator delete(__p);
  }
}

void sub_1001943B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, std::runtime_error a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
    if ((a54 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a74 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a54 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a49);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a61 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a73);
  if ((a61 & 0x80000000) == 0)
  {
LABEL_5:
    STACK[0x230] = v79;
    if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a56);
  STACK[0x230] = v79;
  if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(STACK[0x238]);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v81 - 256));
    v83 = a77;
    if (!a77)
    {
LABEL_16:
      std::runtime_error::~runtime_error(&a35);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
LABEL_18:
          if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(STACK[0x210]);
      if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
      {
LABEL_19:
        if (SLOBYTE(STACK[0x277]) < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(STACK[0x280]);
      if (SLOBYTE(STACK[0x277]) < 0)
      {
LABEL_20:
        operator delete(STACK[0x260]);
        if ((v78 & 1) == 0)
        {
LABEL_27:
          if (a68 < 0)
          {
            operator delete(a63);
          }

          sub_1001952D4(&a38);
          if (a47 < 0)
          {
            operator delete(a42);
          }

          sub_100195308(a15);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v80);
        goto LABEL_27;
      }

LABEL_25:
      if (!v78)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a78 = v83;
    operator delete(v83);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a75);
  sub_10019FF4C((v81 - 256));
  v83 = a77;
  if (!a77)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_100194D08(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100195058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_1001952D4(v68);

            _Unwind_Resume(a1);
          }

          sub_1001952D4(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1001952D4(uint64_t a1)
{
  sub_1001B8EC8(a1);

  return a1;
}

void ***sub_100195308(void ***a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_20;
  }

  do
  {
    while (1)
    {
      if (*(v3 - 16) == 1)
      {
        *(v3 - 16) = 0;
        if (*(v3 - 32) != 1)
        {
LABEL_8:
          if (*(v3 - 56) != 1)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else if (*(v3 - 32) != 1)
      {
        goto LABEL_8;
      }

      *(v3 - 32) = 0;
      if (*(v3 - 56) != 1)
      {
LABEL_9:
        if (*(v3 - 80) != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      *(v3 - 56) = 0;
      if (*(v3 - 80) != 1)
      {
LABEL_10:
        v6 = *(v3 - 14);
        if (!v6)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

LABEL_15:
      *(v3 - 80) = 0;
      v6 = *(v3 - 14);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

LABEL_4:
      v5 = v3 - 18;
      if (*(v3 - 121) < 0)
      {
        break;
      }

      v3 -= 18;
      if (v5 == v2)
      {
        goto LABEL_19;
      }
    }

    operator delete(*v5);
    v3 -= 18;
  }

  while (v5 != v2);
LABEL_19:
  v4 = *a1;
LABEL_20:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void sub_10019544C(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  operator new();
}

void sub_1001955EC(_Unwind_Exception *a1)
{
  v5 = v3;
  if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_100013278((v4 - 40));

  _Unwind_Resume(a1);
}

void sub_100196044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
LABEL_3:
    if (a45 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a20);
  if (a45 < 0)
  {
LABEL_4:
    operator delete(a40);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    *(v73 - 160) = v71;
    if (*(v73 - 129) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a33);
  *(v73 - 160) = v71;
  if (*(v73 - 129) < 0)
  {
LABEL_6:
    operator delete(*(v73 - 152));
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a51 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v73 - 128));
    v75 = a56;
    if (!a56)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v73 - 200));
      if (*(v73 - 201) < 0)
      {
        operator delete(*(v73 - 224));
        if (a64 < 0)
        {
LABEL_18:
          operator delete(a59);
          if ((*(v73 - 233) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a64 < 0)
      {
        goto LABEL_18;
      }

      if ((*(v73 - 233) & 0x80000000) == 0)
      {
LABEL_19:
        if (a70 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(*(v73 - 256));
      if (a70 < 0)
      {
LABEL_20:
        operator delete(a65);
        if ((v72 & 1) == 0)
        {
LABEL_27:
          if (*(v73 - 161) < 0)
          {
            operator delete(*(v73 - 184));
          }

          sub_100184AB0(&a10);
          if (a18 < 0)
          {
            operator delete(a13);
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v70);
        goto LABEL_27;
      }

LABEL_25:
      if (!v72)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a57 = v75;
    operator delete(v75);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a46);
  sub_10019FF4C((v73 - 128));
  v75 = a56;
  if (!a56)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_100196534(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_1001966DC(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001A6338((v4 - 56));

  _Unwind_Resume(a1);
}

void sub_100196758(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *(&v178.__r_.__value_.__s + 23) = 7;
  strcpy(&v178, "SELECT ");
  if (byte_10045D0D7 >= 0)
  {
    v5 = &qword_10045D0C0;
  }

  else
  {
    v5 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v6 = byte_10045D0D7;
  }

  else
  {
    v6 = *&byte_10045D0C8;
  }

  v7 = std::string::append(&v178, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v179.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v179.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v179, ", ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v180.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v180.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0EF >= 0)
  {
    v11 = &qword_10045D0D8;
  }

  else
  {
    v11 = qword_10045D0D8;
  }

  if (byte_10045D0EF >= 0)
  {
    v12 = byte_10045D0EF;
  }

  else
  {
    v12 = *&byte_10045D0E0;
  }

  v13 = std::string::append(&v180, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v181.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v181.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v181, ", ");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v182.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v182.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D11F >= 0)
  {
    v17 = &qword_10045D108;
  }

  else
  {
    v17 = qword_10045D108;
  }

  if (byte_10045D11F >= 0)
  {
    v18 = byte_10045D11F;
  }

  else
  {
    v18 = unk_10045D110;
  }

  v19 = std::string::append(&v182, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v183.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v183.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v183, ", ");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v184.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v184.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v184, "venues");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v185.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v185.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v185, ".");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v186.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v186.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v27 = &qword_10045D0F0;
  }

  else
  {
    v27 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v28 = byte_10045D107;
  }

  else
  {
    v28 = *&byte_10045D0F8;
  }

  v29 = std::string::append(&v186, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v187.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v187.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v187, ", LENGTH(");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v188.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v188.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v188, "tiles");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v189.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v189.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v189, ") ");
  v36 = *&v35->__r_.__value_.__l.__data_;
  v190.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v190.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v190, "FROM ");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v191.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v191.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v191, "venues");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v192.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v192.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v192, " LEFT OUTER JOIN ");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v193.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v193.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = std::string::append(&v193, "tile_data");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v194.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v194.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&v194, " ON ");
  v46 = *&v45->__r_.__value_.__l.__data_;
  v195.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v195.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = std::string::append(&v195, "venues");
  v48 = *&v47->__r_.__value_.__l.__data_;
  v196.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v196.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  v49 = std::string::append(&v196, ".");
  v50 = *&v49->__r_.__value_.__l.__data_;
  v197.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v197.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v51 = &qword_10045D0F0;
  }

  else
  {
    v51 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v52 = byte_10045D107;
  }

  else
  {
    v52 = *&byte_10045D0F8;
  }

  v53 = std::string::append(&v197, v51, v52);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v198.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v198.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  v55 = std::string::append(&v198, "=");
  v56 = *&v55->__r_.__value_.__l.__data_;
  v199.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v199.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v199, "tile_data");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v200.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v200.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  v59 = std::string::append(&v200, ".");
  v60 = *&v59->__r_.__value_.__l.__data_;
  v201.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
  *&v201.__r_.__value_.__l.__data_ = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v61 = &qword_10045D0F0;
  }

  else
  {
    v61 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v62 = byte_10045D107;
  }

  else
  {
    v62 = *&byte_10045D0F8;
  }

  v63 = std::string::append(&v201, v61, v62);
  v64 = *&v63->__r_.__value_.__l.__data_;
  v202.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
  *&v202.__r_.__value_.__l.__data_ = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  v65 = std::string::append(&v202, " ");
  v66 = *&v65->__r_.__value_.__l.__data_;
  v203.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
  *&v203.__r_.__value_.__l.__data_ = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v203, "WHERE (");
  v68 = *&v67->__r_.__value_.__l.__data_;
  v204.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&v204.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D137 >= 0)
  {
    v69 = &xmmword_10045D120;
  }

  else
  {
    v69 = xmmword_10045D120;
  }

  if (byte_10045D137 >= 0)
  {
    v70 = byte_10045D137;
  }

  else
  {
    v70 = *(&xmmword_10045D120 + 1);
  }

  v71 = std::string::append(&v204, v69, v70);
  v72 = *&v71->__r_.__value_.__l.__data_;
  v205.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
  *&v205.__r_.__value_.__l.__data_ = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  v73 = std::string::append(&v205, " IS NOT NULL ");
  v74 = *&v73->__r_.__value_.__l.__data_;
  v208.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
  *&v208.__r_.__value_.__l.__data_ = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v208, "OR ");
  v76 = *&v75->__r_.__value_.__l.__data_;
  v209.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
  *&v209.__r_.__value_.__l.__data_ = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D14F >= 0)
  {
    v77 = &qword_10045D138;
  }

  else
  {
    v77 = qword_10045D138;
  }

  if (byte_10045D14F >= 0)
  {
    v78 = byte_10045D14F;
  }

  else
  {
    v78 = *&dword_10045D140;
  }

  v79 = std::string::append(&v209, v77, v78);
  v80 = *&v79->__r_.__value_.__l.__data_;
  v211.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
  *&v211.__r_.__value_.__l.__data_ = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  v81 = std::string::append(&v211, " IS NOT NULL) ");
  v82 = *&v81->__r_.__value_.__l.__data_;
  v212.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
  *&v212.__r_.__value_.__l.__data_ = v82;
  v81->__r_.__value_.__l.__size_ = 0;
  v81->__r_.__value_.__r.__words[2] = 0;
  v81->__r_.__value_.__r.__words[0] = 0;
  v83 = std::string::append(&v212, "AND ");
  v84 = *&v83->__r_.__value_.__l.__data_;
  v213.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
  *&v213.__r_.__value_.__l.__data_ = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D1AF >= 0)
  {
    v85 = &qword_10045D198;
  }

  else
  {
    v85 = qword_10045D198;
  }

  if (byte_10045D1AF >= 0)
  {
    v86 = byte_10045D1AF;
  }

  else
  {
    v86 = qword_10045D1A0;
  }

  v87 = std::string::append(&v213, v85, v86);
  v88 = *&v87->__r_.__value_.__l.__data_;
  v214.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
  *&v214.__r_.__value_.__l.__data_ = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  v89 = std::string::append(&v214, " IS NULL ");
  v90 = *&v89->__r_.__value_.__l.__data_;
  v215.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
  *&v215.__r_.__value_.__l.__data_ = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  v91 = std::string::append(&v215, "ORDER BY ");
  v92 = *&v91->__r_.__value_.__l.__data_;
  v216.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
  *&v216.__r_.__value_.__l.__data_ = v92;
  v91->__r_.__value_.__l.__size_ = 0;
  v91->__r_.__value_.__r.__words[2] = 0;
  v91->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D167 >= 0)
  {
    v93 = &qword_10045D150;
  }

  else
  {
    v93 = qword_10045D150;
  }

  if (byte_10045D167 >= 0)
  {
    v94 = byte_10045D167;
  }

  else
  {
    v94 = qword_10045D158;
  }

  v95 = std::string::append(&v216, v93, v94);
  v96 = *&v95->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  v97 = std::string::append(&__dst, " DESC, ");
  v98 = *&v97->__r_.__value_.__l.__data_;
  v219.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
  *&v219.__r_.__value_.__l.__data_ = v98;
  v97->__r_.__value_.__l.__size_ = 0;
  v97->__r_.__value_.__r.__words[2] = 0;
  v97->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D197 >= 0)
  {
    v99 = &xmmword_10045D180;
  }

  else
  {
    v99 = xmmword_10045D180;
  }

  if (byte_10045D197 >= 0)
  {
    v100 = byte_10045D197;
  }

  else
  {
    v100 = *(&xmmword_10045D180 + 1);
  }

  v101 = std::string::append(&v219, v99, v100);
  v102 = *&v101->__r_.__value_.__l.__data_;
  v210.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
  *&v210.__r_.__value_.__l.__data_ = v102;
  v101->__r_.__value_.__l.__size_ = 0;
  v101->__r_.__value_.__r.__words[2] = 0;
  v101->__r_.__value_.__r.__words[0] = 0;
  v103 = std::string::append(&v210, " DESC, ");
  v104 = *&v103->__r_.__value_.__l.__data_;
  v218.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
  *&v218.__r_.__value_.__l.__data_ = v104;
  v103->__r_.__value_.__l.__size_ = 0;
  v103->__r_.__value_.__r.__words[2] = 0;
  v103->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D17F >= 0)
  {
    v105 = &qword_10045D168;
  }

  else
  {
    v105 = qword_10045D168;
  }

  if (byte_10045D17F >= 0)
  {
    v106 = byte_10045D17F;
  }

  else
  {
    v106 = unk_10045D170;
  }

  v107 = std::string::append(&v218, v105, v106);
  v108 = *&v107->__r_.__value_.__l.__data_;
  *&v176[16] = *(&v107->__r_.__value_.__l + 2);
  *v176 = v108;
  v107->__r_.__value_.__l.__size_ = 0;
  v107->__r_.__value_.__r.__words[2] = 0;
  v107->__r_.__value_.__r.__words[0] = 0;
  v109 = std::string::append(v176, " DESC, ");
  v110 = *&v109->__r_.__value_.__l.__data_;
  *&v220[16] = *(&v109->__r_.__value_.__l + 2);
  *v220 = v110;
  v109->__r_.__value_.__l.__size_ = 0;
  v109->__r_.__value_.__r.__words[2] = 0;
  v109->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0EF >= 0)
  {
    v111 = &qword_10045D0D8;
  }

  else
  {
    v111 = qword_10045D0D8;
  }

  if (byte_10045D0EF >= 0)
  {
    v112 = byte_10045D0EF;
  }

  else
  {
    v112 = *&byte_10045D0E0;
  }

  v113 = std::string::append(v220, v111, v112);
  v114 = *&v113->__r_.__value_.__l.__data_;
  v207 = v113->__r_.__value_.__r.__words[2];
  *__p = v114;
  v113->__r_.__value_.__l.__size_ = 0;
  v113->__r_.__value_.__r.__words[2] = 0;
  v113->__r_.__value_.__r.__words[0] = 0;
  if ((v220[23] & 0x80000000) != 0)
  {
    operator delete(*v220);
    if ((v176[23] & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_221;
    }
  }

  else if ((v176[23] & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(*v176);
  if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_82:
    if ((SHIBYTE(v210.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_222;
  }

LABEL_221:
  operator delete(v218.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v210.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_83:
    if ((SHIBYTE(v219.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_223;
  }

LABEL_222:
  operator delete(v210.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v219.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_224;
  }

LABEL_223:
  operator delete(v219.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_85:
    if ((SHIBYTE(v216.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_225;
  }

LABEL_224:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v216.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_86:
    if ((SHIBYTE(v215.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_226;
  }

LABEL_225:
  operator delete(v216.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v215.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_87:
    if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_227;
  }

LABEL_226:
  operator delete(v215.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_88:
    if ((SHIBYTE(v213.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_228;
  }

LABEL_227:
  operator delete(v214.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v213.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_89:
    if ((SHIBYTE(v212.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_229;
  }

LABEL_228:
  operator delete(v213.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v212.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_90:
    if ((SHIBYTE(v211.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_230;
  }

LABEL_229:
  operator delete(v212.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v211.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_91:
    if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_231;
  }

LABEL_230:
  operator delete(v211.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_92:
    if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_232;
  }

LABEL_231:
  operator delete(v209.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_93:
    if ((SHIBYTE(v205.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_233;
  }

LABEL_232:
  operator delete(v208.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v205.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_94:
    if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_234;
  }

LABEL_233:
  operator delete(v205.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_95:
    if ((SHIBYTE(v203.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_235;
  }

LABEL_234:
  operator delete(v204.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v203.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_96:
    if ((SHIBYTE(v202.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_236;
  }

LABEL_235:
  operator delete(v203.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v202.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_97:
    if ((SHIBYTE(v201.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_237;
  }

LABEL_236:
  operator delete(v202.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v201.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_98:
    if ((SHIBYTE(v200.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_238;
  }

LABEL_237:
  operator delete(v201.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v200.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_99:
    if ((SHIBYTE(v199.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_239;
  }

LABEL_238:
  operator delete(v200.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v199.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_100:
    if ((SHIBYTE(v198.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_240;
  }

LABEL_239:
  operator delete(v199.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v198.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_101:
    if ((SHIBYTE(v197.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_241;
  }

LABEL_240:
  operator delete(v198.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v197.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_102:
    if ((SHIBYTE(v196.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_242;
  }

LABEL_241:
  operator delete(v197.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v196.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v195.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_243;
  }

LABEL_242:
  operator delete(v196.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v195.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_104:
    if ((SHIBYTE(v194.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_244;
  }

LABEL_243:
  operator delete(v195.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v194.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_105:
    if ((SHIBYTE(v193.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_245;
  }

LABEL_244:
  operator delete(v194.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v193.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_106:
    if ((SHIBYTE(v192.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_246;
  }

LABEL_245:
  operator delete(v193.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v192.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_107:
    if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_247;
  }

LABEL_246:
  operator delete(v192.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_108:
    if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_248;
  }

LABEL_247:
  operator delete(v191.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_109:
    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_249;
  }

LABEL_248:
  operator delete(v190.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_110:
    if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_250;
  }

LABEL_249:
  operator delete(v189.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_111:
    if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_251;
  }

LABEL_250:
  operator delete(v188.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_112:
    if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_252;
  }

LABEL_251:
  operator delete(v187.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_113:
    if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_253;
  }

LABEL_252:
  operator delete(v186.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_114:
    if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_254;
  }

LABEL_253:
  operator delete(v185.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_115:
    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_255;
  }

LABEL_254:
  operator delete(v184.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_116:
    if ((SHIBYTE(v182.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_256;
  }

LABEL_255:
  operator delete(v183.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v182.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_117:
    if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_257;
  }

LABEL_256:
  operator delete(v182.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_118:
    if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_258;
  }

LABEL_257:
  operator delete(v181.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_119:
    if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

LABEL_259:
    operator delete(v179.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v178.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

LABEL_260:
    operator delete(v178.__r_.__value_.__l.__data_);
    goto LABEL_121;
  }

LABEL_258:
  operator delete(v180.__r_.__value_.__l.__data_);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_259;
  }

LABEL_120:
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_260;
  }

LABEL_121:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  memset(v176, 0, sizeof(v176));
  v177 = 1065353216;
  sub_100199024(*(a1 + 40), __p, 0, &v205);
  v115 = 0;
  v170 = 0;
  v171 = 0;
  v174 = 0;
  v175 = 0;
  v116 = v205.__r_.__value_.__r.__words[0];
  v201.__r_.__value_.__r.__words[0] = v205.__r_.__value_.__r.__words[0];
  v173 = a2;
  while (1)
  {
    v117 = sqlite3_step(v116);
    v118 = v117;
    if (v117 == 100)
    {
      sub_1001B1A90(&v201, v220);
      v218 = *&v220[8];
      sub_1001B6448(&v201, v220);
      v210 = *&v220[8];
      if (sqlite3_column_type(v201.__r_.__value_.__l.__data_, 2) == 5)
      {
        v119 = 0;
      }

      else
      {
        v120 = sqlite3_column_int(v201.__r_.__value_.__l.__data_, 2);
        v119 = v120;
        if (v120 == 1)
        {
          v122 = 1;
LABEL_138:
          if (sqlite3_column_type(v201.__r_.__value_.__l.__data_, 3) == 5)
          {
            v123 = 0;
          }

          else
          {
            v123 = sqlite3_column_int(v201.__r_.__value_.__l.__data_, 3);
          }

          if (sqlite3_column_type(v201.__r_.__value_.__l.__data_, 4) == 5)
          {
            v124 = 0;
          }

          else
          {
            v124 = (sqlite3_column_int(v201.__r_.__value_.__l.__data_, 4) << 32) | 1;
          }

          if (v122)
          {
            v125 = 73;
          }

          else
          {
            v125 = 82;
          }

          if (v124)
          {
            v126 = HIDWORD(v124);
          }

          else
          {
            v126 = 0;
          }

          if (v122)
          {
            v127 = sub_1002187CC(a2);
            v128 = sub_1002189DC(a2);
            v129 = v126 + HIDWORD(v174);
            v130 = SHIDWORD(v175) >= v127;
            HIDWORD(v174) = v129;
            v131 = v129 > v128;
            ++HIDWORD(v175);
            if (v130)
            {
LABEL_155:
              if (!sub_1001B9AB0(v176, &v210))
              {
                v140 = v170;
                v139 = v171;
                if (v122)
                {
                  v141 = v170;
                }

                else
                {
                  v141 = v171;
                }

                if (v122)
                {
                  v140 = v141 + 1;
                }

                else
                {
                  v139 = v141 + 1;
                }

                v170 = v140;
                LODWORD(v171) = v139;
                v142 = a3[2];
                if (v115 >= v142)
                {
                  v143 = v115;
                  v144 = v115 >> 3;
                  v145 = v144 + 1;
                  if ((v144 + 1) >> 61)
                  {
                    *a3 = 0;
                    sub_10000FC84();
                  }

                  if (v142 >> 2 > v145)
                  {
                    v145 = v142 >> 2;
                  }

                  if (v142 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v146 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v146 = v145;
                  }

                  if (v146)
                  {
                    if (!(v146 >> 61))
                    {
                      operator new();
                    }

                    *a3 = 0;
                    sub_10000D444();
                  }

                  *(8 * v144) = v123;
                  memcpy(0, 0, v143);
                  a3[1] = 8 * v144 + 8;
                  a3[2] = 0;
                  v115 = 8 * v144 + 8;
                }

                else
                {
                  *v115 = v123;
                  v115 += 8;
                }

                HIDWORD(v171) += v122 ^ 1;
                a3[1] = v115;
                v135 = 1;
                if (qword_10045B070 == -1)
                {
                  goto LABEL_157;
                }

                goto LABEL_188;
              }

LABEL_156:
              sub_10004E27C(v176, &v210);
              v135 = 0;
              if (qword_10045B070 == -1)
              {
LABEL_157:
                a2 = v173;
                goto LABEL_158;
              }

LABEL_188:
              sub_100384D90();
              a2 = v173;
LABEL_158:
              v136 = qword_10045B078;
              if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
              {
                v137 = &v210;
                if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v137 = v210.__r_.__value_.__r.__words[0];
                }

                v138 = &v218;
                if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v138 = v218.__r_.__value_.__r.__words[0];
                }

                *v220 = 67241475;
                *&v220[4] = v135;
                *&v220[8] = 2081;
                *&v220[10] = v137;
                *&v220[18] = 2081;
                *&v220[20] = v138;
                *&v220[28] = 1026;
                *&v220[30] = v125;
                v221 = 1026;
                v222 = v130;
                v223 = 1026;
                v224 = v131;
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "@EvictTrigger, limits, exec, %{public}d, %{private}s, %{private}s, %{public}c, untouched, -1, reasons, %{public}d, %{public}d", v220, 0x2Eu);
                if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_122:
                  operator delete(v210.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_123;
                  }

LABEL_167:
                  operator delete(v218.__r_.__value_.__l.__data_);
                  goto LABEL_123;
                }
              }

              else if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_122;
              }

              if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_123;
              }

              goto LABEL_167;
            }
          }

          else
          {
            v132 = sub_1002186C4(a2);
            v133 = sub_1002188D4(a2);
            v134 = v126 + v174;
            v130 = v175 >= v132;
            LODWORD(v174) = v134;
            v131 = v134 > v133;
            LODWORD(v175) = v175 + 1;
            if (v130)
            {
              goto LABEL_155;
            }
          }

          if (!v131)
          {
            goto LABEL_156;
          }

          goto LABEL_155;
        }

        if (v120 == 2)
        {
LABEL_137:
          v122 = 0;
          goto LABEL_138;
        }
      }

      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v121 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *v220 = 67109120;
        *&v220[4] = v119;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_ERROR, "location context is an unknown value, %d, will gracefully fail by assuming this is a regional tile. please file a radar", v220, 8u);
      }

      goto LABEL_137;
    }

    if (v117 == 101)
    {
      break;
    }

    if (v117 == 19)
    {
      *a3 = 0;
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v155 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        *v220 = 0;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_INFO, "Query constraint violation", v220, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v117, v205.__r_.__value_.__l.__size_);
    if (v118)
    {
      *a3 = 0;
      v156 = __error();
      sub_10023B1C8(*v156, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v214, " w/ ");
      v157 = std::string::insert(&v214, 0, "Failed sqlite3_step");
      v158 = *&v157->__r_.__value_.__l.__data_;
      v215.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
      *&v215.__r_.__value_.__l.__data_ = v158;
      v157->__r_.__value_.__l.__size_ = 0;
      v157->__r_.__value_.__r.__words[2] = 0;
      v157->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v213, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v213 = __dst;
      }

      if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v162 = &v213;
      }

      else
      {
        v162 = v213.__r_.__value_.__r.__words[0];
      }

      if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v213.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v213.__r_.__value_.__l.__size_;
      }

      v164 = std::string::append(&v215, v162, size);
      v165 = *&v164->__r_.__value_.__l.__data_;
      v216.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
      *&v216.__r_.__value_.__l.__data_ = v165;
      v164->__r_.__value_.__l.__size_ = 0;
      v164->__r_.__value_.__r.__words[2] = 0;
      v164->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v204, &v216);
      v204.__r_.__value_.__r.__words[0] = &off_100440BD8;
      sub_10010A984(&v212);
    }

LABEL_123:
    v116 = v205.__r_.__value_.__r.__words[0];
  }

  *a3 = 0;
  v147 = sqlite3_reset(v205.__r_.__value_.__l.__data_);
  sub_100001838(v147, v205.__r_.__value_.__l.__size_);
  if (v147)
  {
    v159 = __error();
    sub_10023B1C8(*v159, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v214, " w/ ");
    v160 = std::string::insert(&v214, 0, "Failed to execute query");
    v161 = *&v160->__r_.__value_.__l.__data_;
    v215.__r_.__value_.__r.__words[2] = v160->__r_.__value_.__r.__words[2];
    *&v215.__r_.__value_.__l.__data_ = v161;
    v160->__r_.__value_.__l.__size_ = 0;
    v160->__r_.__value_.__r.__words[2] = 0;
    v160->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v213, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v213 = __dst;
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v166 = &v213;
    }

    else
    {
      v166 = v213.__r_.__value_.__r.__words[0];
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v167 = HIBYTE(v213.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v167 = v213.__r_.__value_.__l.__size_;
    }

    v168 = std::string::append(&v215, v166, v167);
    v169 = *&v168->__r_.__value_.__l.__data_;
    v216.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
    *&v216.__r_.__value_.__l.__data_ = v169;
    v168->__r_.__value_.__l.__size_ = 0;
    v168->__r_.__value_.__r.__words[2] = 0;
    v168->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v204, &v216);
    v204.__r_.__value_.__r.__words[0] = &off_100440BD8;
    sub_10010A984(&v212);
  }

  if (qword_10045B070 != -1)
  {
    sub_100384D90();
  }

  v148 = qword_10045B078;
  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
  {
    *v220 = 67240960;
    *&v220[4] = v170;
    *&v220[8] = 1026;
    *&v220[10] = HIDWORD(v175);
    *&v220[14] = 1026;
    *&v220[16] = HIDWORD(v171);
    *&v220[20] = 1026;
    *&v220[22] = v175;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "@EvictTrigger, limits, result, indoor, %{public}d, %{public}d, regional, %{public}d, %{public}d", v220, 0x1Au);
  }

  if (HIDWORD(v171))
  {
    if (qword_10045B070 != -1)
    {
      sub_100384D90();
    }

    v149 = qword_10045B078;
    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
    {
      *v220 = 67240704;
      *&v220[4] = HIDWORD(v171);
      *&v220[8] = 1026;
      *&v220[10] = v171;
      *&v220[14] = 1026;
      *&v220[16] = 100 * v171 / SHIDWORD(v171);
      _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Wifi2Metric, eviction, %{public}d, untouched, %{public}d, pct, %{public}d, trigger, limits", v220, 0x14u);
    }

    AnalyticsSendEventLazy();
  }

  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v150 = qword_10045B088;
  if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_210;
  }

  *(&v210.__r_.__value_.__s + 23) = 2;
  strcpy(&v210, ", ");
  sub_1002CB374(&v210, v220);
  __dst.__r_.__value_.__r.__words[0] = *&v176[16];
  v216.__r_.__value_.__r.__words[0] = 0;
  sub_1001B9C68(v220, &__dst, &v216);
  if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v151 = &v218;
  }

  else
  {
    v151 = v218.__r_.__value_.__r.__words[0];
  }

  LODWORD(v219.__r_.__value_.__l.__data_) = 136380675;
  *(v219.__r_.__value_.__r.__words + 4) = v151;
  _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEBUG, "Relevant Group ids which were not considered for deletion, %{private}s", &v219, 0xCu);
  if ((SHIBYTE(v218.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v225 & 0x80000000) == 0)
    {
      goto LABEL_208;
    }

LABEL_262:
    operator delete(*&v220[24]);
    if ((v220[23] & 0x80000000) != 0)
    {
      goto LABEL_263;
    }

LABEL_209:
    if ((SHIBYTE(v210.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_210;
    }

LABEL_264:
    operator delete(v210.__r_.__value_.__l.__data_);
    goto LABEL_210;
  }

  operator delete(v218.__r_.__value_.__l.__data_);
  if (v225 < 0)
  {
    goto LABEL_262;
  }

LABEL_208:
  if ((v220[23] & 0x80000000) == 0)
  {
    goto LABEL_209;
  }

LABEL_263:
  operator delete(*v220);
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_264;
  }

LABEL_210:

  sub_1001B98F8(&v205);
  v152 = *&v176[16];
  if (*&v176[16])
  {
    do
    {
      v154 = *v152;
      if (*(v152 + 39) < 0)
      {
        operator delete(v152[2]);
      }

      operator delete(v152);
      v152 = v154;
    }

    while (v154);
  }

  v153 = *v176;
  *v176 = 0;
  if (v153)
  {
    operator delete(v153);
  }

  if (SHIBYTE(v207) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100198400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  *(v32 - 208) = v31;
  if (*(v32 - 177) < 0)
  {
    operator delete(*(v32 - 200));
    if ((SLOBYTE(STACK[0x467]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x467]) & 0x80000000) == 0)
  {
LABEL_3:
    STACK[0x490] = v30;
    if (SLOBYTE(STACK[0x4AF]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(STACK[0x450]);
  STACK[0x490] = v30;
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x498]);
    if ((SLOBYTE(STACK[0x487]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((SLOBYTE(STACK[0x487]) & 0x80000000) == 0)
  {
LABEL_5:
    *(v32 - 240) = v29;
    if (*(v32 - 209) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(STACK[0x470]);
  *(v32 - 240) = v29;
  if (*(v32 - 209) < 0)
  {
LABEL_6:
    operator delete(*(v32 - 232));
    if ((SLOBYTE(STACK[0x4C7]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((SLOBYTE(STACK[0x4C7]) & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v32 - 176));
    v34 = STACK[0x4D0];
    if (!STACK[0x4D0])
    {
LABEL_16:
      std::runtime_error::~runtime_error(&STACK[0x3F0]);
      if (SLOBYTE(STACK[0x567]) < 0)
      {
        operator delete(STACK[0x550]);
        if (SLOBYTE(STACK[0x507]) < 0)
        {
LABEL_18:
          operator delete(STACK[0x4F0]);
          if ((SLOBYTE(STACK[0x547]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (SLOBYTE(STACK[0x507]) < 0)
      {
        goto LABEL_18;
      }

      if ((SLOBYTE(STACK[0x547]) & 0x80000000) == 0)
      {
LABEL_19:
        if (SLOBYTE(STACK[0x527]) < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(STACK[0x530]);
      if (SLOBYTE(STACK[0x527]) < 0)
      {
LABEL_20:
        operator delete(STACK[0x510]);
        if ((v27 & 1) == 0)
        {
LABEL_27:
          if (SLOBYTE(STACK[0x587]) < 0)
          {
            operator delete(STACK[0x570]);
          }

          v35 = *a17;
          sub_100199740(&STACK[0x410]);
          sub_10004E210(&a27);
          if (v35)
          {
            *(a17 + 8) = v35;
            operator delete(v35);
          }

          if (SLOBYTE(STACK[0x447]) < 0)
          {
            operator delete(STACK[0x430]);
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v28);
        goto LABEL_27;
      }

LABEL_25:
      if (!v27)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    STACK[0x4D8] = v34;
    operator delete(v34);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(STACK[0x4B0]);
  sub_10019FF4C((v32 - 176));
  v34 = STACK[0x4D0];
  if (!STACK[0x4D0])
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_100199024(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100199374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_100199740(v68);

            _Unwind_Resume(a1);
          }

          sub_100199740(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

id sub_1001995F0(unsigned int *a1)
{
  v7[0] = @"numEvicted";
  v2 = [NSNumber numberWithInt:a1[8]];
  v8[0] = v2;
  v7[1] = @"numUntouched";
  v3 = [NSNumber numberWithInt:a1[9]];
  v8[1] = v3;
  v7[2] = @"pctUntouched";
  v4 = [NSNumber numberWithInt:a1[10]];
  v7[3] = @"trigger";
  v8[2] = v4;
  v8[3] = @"limits";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

uint64_t sub_100199740(uint64_t a1)
{
  sub_1001B98F8(a1);

  return a1;
}

void sub_100199774(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = *(a1 + 32);
  v3 = std::promise<void>::promise(&v7);
  std::promise<void>::get_future(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A64D4;
  block[3] = &unk_1004406E8;
  block[4] = v4;
  block[5] = &v7;
  dispatch_sync(v2, block);
  std::future<void>::get(&v6);
  std::future<void>::~future(&v6);
  std::promise<void>::~promise(&v7);
}

void sub_100199838(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_100199878(uint64_t a1, uint64_t a2)
{
  v80 = 0;
  v81 = 0;
  v82 = 0;
  std::operator+<char>();
  v3 = std::string::append(&v88, ", ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D1AF >= 0)
  {
    v5 = &qword_10045D198;
  }

  else
  {
    v5 = qword_10045D198;
  }

  if (byte_10045D1AF >= 0)
  {
    v6 = byte_10045D1AF;
  }

  else
  {
    v6 = qword_10045D1A0;
  }

  v7 = std::string::append(&v89, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&__dst, " FROM ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v83, "venues");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v84, " WHERE ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D1AF >= 0)
  {
    v15 = &qword_10045D198;
  }

  else
  {
    v15 = qword_10045D198;
  }

  if (byte_10045D1AF >= 0)
  {
    v16 = byte_10045D1AF;
  }

  else
  {
    v16 = qword_10045D1A0;
  }

  v17 = std::string::append(&v93, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v92, " IS NOT NULL");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v79 = v19->__r_.__value_.__r.__words[2];
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_86;
    }
  }

  else if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v93.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(v84.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(v83.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_89:
    operator delete(v89.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_90:
    operator delete(v88.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

LABEL_88:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_89;
  }

LABEL_19:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_90;
  }

LABEL_20:
  sub_10019AF98(*(a1 + 40), __p, 0, &pStmt);
  v21 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    v23 = sqlite3_step(i);
    v24 = v23;
    if (v23 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v21, 1) != 5)
    {
      v24 = sqlite3_column_int64(v21, 1);
    }

    sqlite3_column_type(v21, 0);
    v25 = sqlite3_column_int64(v21, 0);
    std::to_string(&v92, v25);
    v93.__r_.__value_.__r.__words[0] = v24;
    v26 = *(a2 + 24);
    if (!v26)
    {
      sub_1000DB498();
    }

    if ((*(*v26 + 48))(v26, &v93))
    {
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_45:
      operator delete(v92.__r_.__value_.__l.__data_);
      continue;
    }

    if (qword_10045B080 != -1)
    {
      sub_100384BD0();
    }

    v27 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
    {
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v92;
      }

      else
      {
        v28 = v92.__r_.__value_.__r.__words[0];
      }

      LODWORD(v93.__r_.__value_.__l.__data_) = 136380675;
      *(v93.__r_.__value_.__r.__words + 4) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "TileVisit, clear, %{private}s", &v93, 0xCu);
    }

    v29 = v81;
    if (v81 >= v82)
    {
      v81 = sub_1001BA068(&v80, &v92);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_45;
    }

    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v30 = *&v92.__r_.__value_.__l.__data_;
      v81[2] = v92.__r_.__value_.__r.__words[2];
      *v29 = v30;
      v81 = v29 + 3;
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_45;
    }

    sub_100003228(v81, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
    v81 = v29 + 3;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_45;
    }

LABEL_21:
    ;
  }

  if (v23 != 101)
  {
    if (v23 == 19)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v59 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        LOWORD(v92.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Query constraint violation", &v92, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v23, db);
    if (v24)
    {
      v60 = __error();
      sub_10023B1C8(*v60, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v87, " w/ ");
      v61 = std::string::insert(&v87, 0, "Failed sqlite3_step");
      v62 = *&v61->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v86, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v86 = __dst;
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v86;
      }

      else
      {
        v66 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v68 = std::string::append(&v88, v66, size);
      v69 = *&v68->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v90, &v89);
      v90.__vftable = &off_100440BD8;
      sub_10010A984(&v85);
    }

    goto LABEL_21;
  }

  v31 = sqlite3_reset(pStmt);
  sub_100001838(v31, db);
  if (v31)
  {
    v63 = __error();
    sub_10023B1C8(*v63, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v87, " w/ ");
    v64 = std::string::insert(&v87, 0, "Failed to execute query");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v86, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v86 = __dst;
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v86;
    }

    else
    {
      v70 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v71 = v86.__r_.__value_.__l.__size_;
    }

    v72 = std::string::append(&v88, v70, v71);
    v73 = *&v72->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v90, &v89);
    v90.__vftable = &off_100440BD8;
    sub_10010A984(&v85);
  }

  sub_1001B9EB0(&pStmt);

  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10018FA78(", ", &v80, &v92);
  *(&v85.__r_.__value_.__s + 23) = 7;
  strcpy(&v85, "UPDATE ");
  v32 = std::string::append(&v85, "venues");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v86, " SET ");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v87.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v87.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D1AF >= 0)
  {
    v36 = &qword_10045D198;
  }

  else
  {
    v36 = qword_10045D198;
  }

  if (byte_10045D1AF >= 0)
  {
    v37 = byte_10045D1AF;
  }

  else
  {
    v37 = qword_10045D1A0;
  }

  v38 = std::string::append(&v87, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v88, " = NULL WHERE ");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v42 = &qword_10045D0F0;
  }

  else
  {
    v42 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v43 = byte_10045D107;
  }

  else
  {
    v43 = *&byte_10045D0F8;
  }

  v44 = std::string::append(&v89, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&__dst, " IN (");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v92;
  }

  else
  {
    v48 = v92.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v92.__r_.__value_.__l.__size_;
  }

  v50 = std::string::append(&v83, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v84, ")");
  v53 = *&v52->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_92:
    operator delete(v83.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_93;
    }

LABEL_72:
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_94:
    operator delete(v89.__r_.__value_.__l.__data_);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_95;
    }

LABEL_74:
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_96:
    operator delete(v87.__r_.__value_.__l.__data_);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_97;
    }

LABEL_76:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_98:
    operator delete(v85.__r_.__value_.__l.__data_);
    goto LABEL_77;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_92;
  }

LABEL_71:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_93:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_94;
  }

LABEL_73:
  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_95:
  operator delete(v88.__r_.__value_.__l.__data_);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_96;
  }

LABEL_75:
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_97:
  operator delete(v86.__r_.__value_.__l.__data_);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_98;
  }

LABEL_77:
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v93;
  }

  else
  {
    v54 = v93.__r_.__value_.__r.__words[0];
  }

  sub_10000210C(*(a1 + 40), v54, "Failed to clear last visited");
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_100;
    }

LABEL_82:
    v55 = v80;
    if (v80)
    {
LABEL_101:
      v56 = v81;
      v57 = v55;
      if (v81 != v55)
      {
        do
        {
          v58 = *(v56 - 1);
          v56 -= 3;
          if (v58 < 0)
          {
            operator delete(*v56);
          }
        }

        while (v56 != v55);
        v57 = v80;
      }

      v81 = v55;
      operator delete(v57);
    }
  }

  else
  {
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_100:
    operator delete(v92.__r_.__value_.__l.__data_);
    v55 = v80;
    if (v80)
    {
      goto LABEL_101;
    }
  }
}

void sub_10019A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
LABEL_3:
    if (a53 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a27);
  if (a53 < 0)
  {
LABEL_4:
    operator delete(a48);
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a46 & 0x80000000) == 0)
  {
LABEL_5:
    *(v81 - 144) = v79;
    if (*(v81 - 113) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a41);
  *(v81 - 144) = v79;
  if (*(v81 - 113) < 0)
  {
LABEL_6:
    operator delete(*(v81 - 136));
    if ((a59 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a59 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v81 - 208));
    v83 = a64;
    if (!a64)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v81 - 256));
      if (a78 < 0)
      {
        operator delete(a77.__vftable);
        if (a72 < 0)
        {
LABEL_18:
          operator delete(a67);
          if ((a76 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a72 < 0)
      {
        goto LABEL_18;
      }

      if ((a76 & 0x80000000) == 0)
      {
LABEL_19:
        if (a74 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_20:
        operator delete(a73);
        if ((v80 & 1) == 0)
        {
LABEL_27:
          if (*(v81 - 217) < 0)
          {
            operator delete(*(v81 - 240));
          }

          sub_10019B564(&a14);
          if (a22 < 0)
          {
            operator delete(a17);
          }

          sub_1000D1490(&a24);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v78);
        goto LABEL_27;
      }

LABEL_25:
      if (!v80)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a65 = v83;
    operator delete(v83);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a54);
  sub_10019FF4C((v81 - 208));
  v83 = a64;
  if (!a64)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_10019AF98(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10019B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_10019B564(v68);

            _Unwind_Resume(a1);
          }

          sub_10019B564(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_10019B564(uint64_t a1)
{
  sub_1001B9EB0(a1);

  return a1;
}

void sub_10019B598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a1;
  v6 = a2;
  v5[0] = a3;
  v5[1] = &v6;
  v3 = *(a1 + 32);
  v4 = std::promise<void>::promise(&v9);
  std::promise<void>::get_future(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A6564;
  block[3] = &unk_1004406E8;
  block[4] = v5;
  block[5] = &v9;
  dispatch_sync(v3, block);
  std::future<void>::get(&v8);
  std::future<void>::~future(&v8);
  std::promise<void>::~promise(&v9);
}

void sub_10019B664(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_10019B6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[3] = a4;
  v7 = a2;
  v6[0] = a3;
  v6[1] = &v7;
  v6[2] = a1;
  v4 = *(a1 + 32);
  v5 = std::promise<void>::promise(&v10);
  std::promise<void>::get_future(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AAAE0;
  block[3] = &unk_1004406E8;
  block[4] = v6;
  block[5] = &v10;
  dispatch_sync(v4, block);
  std::future<void>::get(&v9);
  std::future<void>::~future(&v9);
  std::promise<void>::~promise(&v10);
}

void sub_10019B774(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_10019B7B4(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  operator new();
}

void sub_10019B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v9 + 16))(v9);
  }

  sub_1001AF018(va);

  _Unwind_Resume(a1);
}

void sub_10019B9D8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_10019BB80(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001AF614((v4 - 56));

  _Unwind_Resume(a1);
}

sqlite3_blob **sub_10019BBFC@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 40);
  if (byte_10045D1C7 >= 0)
  {
    v5 = &qword_10045D1B0;
  }

  else
  {
    v5 = qword_10045D1B0;
  }

  sub_10023C59C(v4, "venues", v5, a2, 1, &v9);
  sub_10024B60C(v8, v9);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(v7, v8, -1);
  sub_1002C6998(a3, v7);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v7);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v8);
  return sub_1001AF76C(&v9);
}

void sub_10019BCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((v2 - 48));
  sub_1001AF76C((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10019BCE0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_10019BE88(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001AFD08((v4 - 56));

  _Unwind_Resume(a1);
}

sqlite3_blob **sub_10019BF04@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  sub_10023C59C(*(a1 + 40), "tile_data", "headers", a2, 1, &v7);
  sub_10024B60C(v6, v7);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(v5, v6, -1);
  sub_1002CB92C(a3, v5);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v5);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v6);
  return sub_1001AF76C(&v7);
}

void sub_10019BF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((v2 - 48));
  sub_1001AF76C((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10019BFD8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_10019C180(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001B044C((v4 - 56));

  _Unwind_Resume(a1);
}

void sub_10019C1FC(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  operator new();
}

void sub_10019C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v9 + 16))(v9);
  }

  sub_1001B1C80(va);

  _Unwind_Resume(a1);
}

void sub_10019C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  v6 = a3;
  v3 = *(a1 + 32);
  operator new();
}

void sub_10019C5CC(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001B23F0((v4 - 56));

  _Unwind_Resume(a1);
}

void sub_10019C648(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = *(a1 + 32);
  v3 = std::promise<void>::promise(&v7);
  std::promise<void>::get_future(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2548;
  block[3] = &unk_1004406E8;
  block[4] = v4;
  block[5] = &v7;
  dispatch_sync(v2, block);
  std::future<void>::get(&v6);
  std::future<void>::~future(&v6);
  std::promise<void>::~promise(&v7);
}

void sub_10019C70C(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_10019C74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v3 = *(a1 + 32);
  v4 = std::promise<void>::promise(&v8);
  std::promise<void>::get_future(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2644;
  block[3] = &unk_1004406E8;
  block[4] = v5;
  block[5] = &v8;
  dispatch_sync(v3, block);
  std::future<void>::get(&v7);
  std::future<void>::~future(&v7);
  std::promise<void>::~promise(&v8);
}

void sub_10019C814(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_10019C854(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = *(a1 + 32);
  v3 = std::promise<void>::promise(&v7);
  std::promise<void>::get_future(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B2860;
  block[3] = &unk_1004406E8;
  block[4] = v4;
  block[5] = &v7;
  dispatch_sync(v2, block);
  std::future<void>::get(&v6);
  std::future<void>::~future(&v6);
  std::promise<void>::~promise(&v7);
}

void sub_10019C918(_Unwind_Exception *a1)
{
  std::future<void>::~future((v2 - 32));
  std::promise<void>::~promise((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_10019CA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, sqlite3_blob *a13)
{
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  sub_1001AF76C(&a13);
  _Unwind_Resume(a1);
}

void sub_10019CAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001AF76C(va);
  _Unwind_Resume(a1);
}

sqlite3 **sub_10019CAC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  *(&v71.__r_.__value_.__s + 23) = 7;
  strcpy(&v71, "SELECT ");
  v4 = std::string::append(&v71, "tile_data");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v72, ".rowid FROM ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v73, "tile_data");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v74, " JOIN ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v75, "venues");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v76, " ON ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v80.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v80.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v80, "tile_data");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v82.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v82.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v82, ".");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v20 = &qword_10045D0F0;
  }

  else
  {
    v20 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v21 = byte_10045D107;
  }

  else
  {
    v21 = *&byte_10045D0F8;
  }

  v22 = std::string::append(&v84, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v85, " = ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v86, "venues");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v87.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v87.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v87, ".");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v30 = &qword_10045D0F0;
  }

  else
  {
    v30 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v31 = byte_10045D107;
  }

  else
  {
    v31 = *&byte_10045D0F8;
  }

  v32 = std::string::append(&v88, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v89, " WHERE ");
  v35 = *&v34->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&__dst, "venues");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v81.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v81.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v81, ".");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0D7 >= 0)
  {
    v40 = &qword_10045D0C0;
  }

  else
  {
    v40 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v41 = byte_10045D0D7;
  }

  else
  {
    v41 = *&byte_10045D0C8;
  }

  v42 = std::string::append(&v83, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v91.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
  *&v91.__r_.__value_.__l.__data_ = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v91, " = ?");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v93 = v44->__r_.__value_.__r.__words[2];
  *buf = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  sub_100185CF8(v3, buf, 0, &pStmt);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(*buf);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v83.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v81.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v89.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(v88.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v87.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(v86.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(v85.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v84.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(v82.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(v80.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(v76.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(v75.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_35:
    if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(v74.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_68:
    operator delete(v72.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_69:
    operator delete(v71.__r_.__value_.__l.__data_);
    goto LABEL_38;
  }

LABEL_67:
  operator delete(v73.__r_.__value_.__l.__data_);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }

LABEL_37:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_69;
  }

LABEL_38:
  v46 = sub_100118234(a2);
  sub_1001B48E4(&pStmt, 1, v46);
  v47 = 0;
  v48 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    while (1)
    {
      v50 = sqlite3_step(i);
      v51 = v50;
      if (v50 != 100)
      {
        break;
      }

      if (sqlite3_column_type(v48, 0) == 5)
      {
        v47 = 1;
        goto LABEL_40;
      }

      v3 = sqlite3_column_int64(v48, 0);
      v47 = 1;
      i = pStmt;
    }

    if (v50 == 101)
    {
      break;
    }

    if (v50 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v54 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_72;
        }
      }

      else
      {
        sub_100384BD0();
        v54 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
LABEL_72:
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Query constraint violation", buf, 2u);
        }
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v50, db);
    if (v51)
    {
      v55 = __error();
      sub_10023B1C8(*v55, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v87, " w/ ");
      v56 = std::string::insert(&v87, 0, "Failed sqlite3_step");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v86, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v86 = __dst;
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v86;
      }

      else
      {
        v62 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v64 = std::string::append(&v88, v62, size);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v76, &v89);
      v76.__r_.__value_.__r.__words[0] = &off_100440BD8;
      sub_10010A984(&v85);
    }

LABEL_40:
    ;
  }

  v52 = sqlite3_reset(pStmt);
  sub_100001838(v52, db);
  if (v52)
  {
    v58 = __error();
    sub_10023B1C8(*v58, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v87, " w/ ");
    v59 = std::string::insert(&v87, 0, "Failed to execute query");
    v60 = *&v59->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v86, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v86 = __dst;
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v86;
    }

    else
    {
      v66 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v86.__r_.__value_.__l.__size_;
    }

    v68 = std::string::append(&v88, v66, v67);
    v69 = *&v68->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v76, &v89);
    v76.__r_.__value_.__r.__words[0] = &off_100440BD8;
    sub_10010A984(&v85);
  }

  if ((v47 & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    v61 = sub_100118234(a2);
    std::runtime_error::runtime_error(buf, v61);
    *buf = &off_100441210;
    sub_10010A984(v70);
  }

  sub_1001B472C(&pStmt);

  return v3;
}

void sub_10019D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
LABEL_3:
    if (a63 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a36);
  if (a63 < 0)
  {
LABEL_4:
    operator delete(a58);
    if ((a55 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a55 & 0x80000000) == 0)
  {
LABEL_5:
    *(v79 - 160) = v77;
    if (*(v79 - 129) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a50);
  *(v79 - 160) = v77;
  if (*(v79 - 129) < 0)
  {
LABEL_6:
    operator delete(*(v79 - 152));
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a69 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v79 - 128));
    v81 = a71;
    if (!a71)
    {
LABEL_16:
      std::runtime_error::~runtime_error(&a31);
      if (*(v79 - 201) < 0)
      {
        operator delete(*(v79 - 224));
        if (a74 < 0)
        {
LABEL_18:
          operator delete(a73);
          if ((*(v79 - 233) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a74 < 0)
      {
        goto LABEL_18;
      }

      if ((*(v79 - 233) & 0x80000000) == 0)
      {
LABEL_19:
        if (a76 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(*(v79 - 256));
      if (a76 < 0)
      {
LABEL_20:
        operator delete(a75);
        if ((v78 & 1) == 0)
        {
LABEL_27:
          if (*(v79 - 169) < 0)
          {
            operator delete(*(v79 - 192));
          }

          sub_1001862C4(&a33);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v76);
        goto LABEL_27;
      }

LABEL_25:
      if (!v78)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a72 = v81;
    operator delete(v81);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a64);
  sub_10019FF4C((v79 - 128));
  v81 = a71;
  if (!a71)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_10019E164(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_1004411C8;
  v11 = off_1004411F0;
  sub_1001B2D9C(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001B2ABC();
}

void sub_10019E488(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10019E4B0(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

sqlite3 **sub_10019E548(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  *(&__dst.__r_.__value_.__s + 23) = 18;
  strcpy(&__dst, "SELECT rowid FROM ");
  v4 = std::string::append(&__dst, "venues");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v42, " WHERE ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0D7 >= 0)
  {
    v8 = &qword_10045D0C0;
  }

  else
  {
    v8 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v9 = byte_10045D0D7;
  }

  else
  {
    v9 = *&byte_10045D0C8;
  }

  v10 = std::string::append(&v43, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v51, " = ?;");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v53 = v12->__r_.__value_.__r.__words[2];
  buf = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  sub_100185CF8(v3, &buf, 0, &pStmt);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(buf.__vftable);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

LABEL_27:
  operator delete(v43.__r_.__value_.__l.__data_);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  v14 = sub_100118234(a2);
  sub_1001B48E4(&pStmt, 1, v14);
  v15 = 0;
  v16 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    while (1)
    {
      v18 = sqlite3_step(i);
      v19 = v18;
      if (v18 != 100)
      {
        break;
      }

      if (sqlite3_column_type(v16, 0) == 5)
      {
        v15 = 1;
        goto LABEL_14;
      }

      v3 = sqlite3_column_int64(v16, 0);
      v15 = 1;
      i = pStmt;
    }

    if (v18 == 101)
    {
      break;
    }

    if (v18 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v22 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_100384BD0();
        v22 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
LABEL_32:
          LOWORD(buf.__vftable) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Query constraint violation", &buf, 2u);
        }
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v18, db);
    if (v19)
    {
      v23 = __error();
      sub_10023B1C8(*v23, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v46, " w/ ");
      v24 = std::string::insert(&v46, 0, "Failed sqlite3_step");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v45, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v45 = __dst;
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v45;
      }

      else
      {
        v30 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      v32 = std::string::append(&v47, v30, size);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v49, &v48);
      v49.__vftable = &off_100440BD8;
      sub_10010A984(v44);
    }

LABEL_14:
    ;
  }

  v20 = sqlite3_reset(pStmt);
  sub_100001838(v20, db);
  if (v20)
  {
    v26 = __error();
    sub_10023B1C8(*v26, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v46, " w/ ");
    v27 = std::string::insert(&v46, 0, "Failed to execute query");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v45, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = __dst;
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v45;
    }

    else
    {
      v34 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v45.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v47, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v49, &v48);
    v49.__vftable = &off_100440BD8;
    sub_10010A984(v44);
  }

  if ((v15 & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    v29 = sub_100118234(a2);
    std::runtime_error::runtime_error(&buf, v29);
    buf.__vftable = &off_100441328;
    sub_10010A984(v38);
  }

  sub_1001B472C(&pStmt);

  return v3;
}

void sub_10019F07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    if (a42 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a16);
  if (a42 < 0)
  {
LABEL_4:
    operator delete(a37);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a35 & 0x80000000) == 0)
  {
LABEL_5:
    *(v75 - 176) = v73;
    if (*(v75 - 145) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a30);
  *(v75 - 176) = v73;
  if (*(v75 - 145) < 0)
  {
LABEL_6:
    operator delete(*(v75 - 168));
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a48 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v75 - 144));
    v77 = a53;
    if (!a53)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v75 - 224));
      if (*(v75 - 233) < 0)
      {
        operator delete(*(v75 - 256));
        if (a61 < 0)
        {
LABEL_18:
          operator delete(a56);
          if ((a72 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a61 < 0)
      {
        goto LABEL_18;
      }

      if ((a72 & 0x80000000) == 0)
      {
LABEL_19:
        if (a67 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a68);
      if (a67 < 0)
      {
LABEL_20:
        operator delete(a62);
        if ((v74 & 1) == 0)
        {
LABEL_27:
          if (*(v75 - 185) < 0)
          {
            operator delete(*(v75 - 208));
          }

          sub_1001862C4(&a13);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v72);
        goto LABEL_27;
      }

LABEL_25:
      if (!v74)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a54 = v77;
    operator delete(v77);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a43);
  sub_10019FF4C((v75 - 144));
  v77 = a53;
  if (!a53)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_10019F620(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_1004412E0;
  v11 = off_100441308;
  sub_1001B3C78(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001B3998();
}

void sub_10019F944(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10019F96C(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

void sub_10019FA04(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Database");
  v2 = qword_10045B088;
  qword_10045B088 = v1;
}

void sub_10019FA78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_10019FAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_10019FACC(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100440B90;
  v11 = off_100440BB8;
  sub_1001A3064(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001A2D84();
}

void sub_10019FDF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

uint64_t sub_10019FE18(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100440BD8;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100440AF0;
  *(a1 + 16) = off_100440B28;
  *(a1 + 56) = &off_100440B60;
  return a1;
}

void sub_10019FF4C(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_10019FFE0(uint64_t result)
{
  *result = off_1004407B8;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1001A003C(uint64_t result)
{
  *result = off_100440860;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1001A0098(uint64_t result)
{
  *result = off_100440908;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1001A039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A0A60(va);
  _Unwind_Resume(a1);
}

void sub_1001A03B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A0A60(va1);
  _Unwind_Resume(a1);
}

void sub_1001A0498(uint64_t a1)
{
  *a1 = off_1004407B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A052C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P26tag_sqlite_extended_errmsg" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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
  sub_1001A0770(a1 + 8);
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

void sub_1001A06AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t sub_1001A0770(uint64_t a1)
{
  sub_10003BFA8(&v6);
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  sub_10003C2E4(&v6, v3, v4);
  std::stringbuf::str();
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001A08D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1001A09D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001A0A18(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001A0A60(uint64_t result)
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

void sub_1001A0DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A0DEC(va);
  _Unwind_Resume(a1);
}

void sub_1001A0DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A0DEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A0DEC(uint64_t result)
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

void sub_1001A0F50(uint64_t a1)
{
  *a1 = off_100440860;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A0FE4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P13tag_sql_query" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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
  sub_1001A0770(a1 + 8);
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

void sub_1001A1164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_1001A1314(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001A1358(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1001A163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A1B88(va);
  _Unwind_Resume(a1);
}

void sub_1001A1650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A1B88(va1);
  _Unwind_Resume(a1);
}

void sub_1001A1738(uint64_t a1)
{
  *a1 = off_100440908;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A17CC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P17tag_sqlite_errmsg" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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
  sub_1001A0770(a1 + 8);
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

void sub_1001A194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_1001A1AFC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001A1B40(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001A1B88(uint64_t result)
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

void sub_1001A1EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A2498(va);
  _Unwind_Resume(a1);
}

void sub_1001A1ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A2498(va1);
  _Unwind_Resume(a1);
}

void sub_1001A1F78(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN2db6errors22tag_sqlite_ext_errcodeE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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

void sub_1001A20F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t sub_1001A21BC(unsigned int *a1)
{
  sub_10003BFA8(&v4);
  v2 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001A230C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1001A240C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001A2450(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001A2498(uint64_t result)
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

void sub_1001A27D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A2814(va);
  _Unwind_Resume(a1);
}

void sub_1001A27E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A2814(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A2814(uint64_t result)
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

void sub_1001A2934(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN2db6errors18tag_sqlite_errcodeE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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

void sub_1001A2AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_1001A2C64(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001A2CA8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1001A2CF0(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

void sub_1001A3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1001A3034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A3064(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100440BD8;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100440AF0;
  *(a1 + 16) = off_100440B28;
  *(a1 + 56) = &off_100440B60;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001A31B8(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

void sub_1001A324C(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1001A336C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10019FE18(exception, a1);
}

void sub_1001A33C8(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001A3450(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1001A3580(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10019FE18(exception, a1 + v2);
}

void sub_1001A35F4(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_1001A3694(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_1001A3748(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1001A37E8(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001A3870(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1001A390C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1001A3944(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100440BD8;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100440AF0;
  *(a1 + 16) = off_100440B28;
  *(a1 + 56) = &off_100440B60;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001A3A98(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::mutex::lock((v2 + 24));
  if ((*(v2 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(v2 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(v2 + 144) = *a2;
  *(v2 + 136) |= 5u;
  std::condition_variable::notify_all((v2 + 88));
  std::mutex::unlock((v2 + 24));
}

void sub_1001A3B44(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A3BA8(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A3C14(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_1001A3CB8(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v6, &a1->__exception_);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    v4 = a1[1].__vftable;
    shared_owners = a1[1].__shared_owners_;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001A3D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A3D88(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A3EE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100189920(**(a1 + 40), *(*(a1 + 40) + 8), v3);
  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001A434C(*v1, v3);
  if (v3[0] != 1)
  {
    return;
  }

  if (v10 == 1)
  {
    v10 = 0;
    if (v9 != 1)
    {
LABEL_5:
      if (v8 != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (v9 != 1)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (v8 != 1)
  {
LABEL_6:
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if (v7 != 1)
  {
LABEL_7:
    v2 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  v2 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    return;
  }

LABEL_14:
  if (v5 < 0)
  {
LABEL_15:
    operator delete(__p);
  }
}

void sub_1001A4040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v12 = *(v11 + 32);
    std::current_exception();
    sub_1001A40BC(v12, &a10);
    std::exception_ptr::~exception_ptr(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1001A4008);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A40BC(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A4120(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A418C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001A420C(uint64_t a1)
{
  if ((*(a1 + 136) & 1) == 0 || *(a1 + 144) != 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 280) == 1)
  {
    *(a1 + 280) = 0;
    if (*(a1 + 264) != 1)
    {
LABEL_5:
      if (*(a1 + 240) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (*(a1 + 264) != 1)
  {
    goto LABEL_5;
  }

  *(a1 + 264) = 0;
  if (*(a1 + 240) != 1)
  {
LABEL_6:
    if (*(a1 + 216) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a1 + 240) = 0;
  if (*(a1 + 216) != 1)
  {
LABEL_7:
    v1 = *(a1 + 184);
    if (!v1)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    goto LABEL_15;
  }

LABEL_12:
  *(a1 + 216) = 0;
  v1 = *(a1 + 184);
  if (v1)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (*(a1 + 175) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 152));
    a1 = v3;
  }

  *(a1 + 144) = 0;
LABEL_18:
  v4 = *(*a1 + 8);

  return v4();
}

void sub_1001A434C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v8.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v8), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  if (*a2 == 1)
  {
    v5 = *(a2 + 8);
    *(a1 + 168) = *(a2 + 24);
    *(a1 + 152) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 176) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v6 = *(a2 + 48);
    *(a1 + 208) = *(a2 + 64);
    *(a1 + 192) = v6;
    *(a1 + 216) = 0;
    if (*(a2 + 72) == 1)
    {
      *(a1 + 224) = *(a2 + 80);
      *(a1 + 216) = 1;
      *(a1 + 240) = 0;
      v7 = *(a2 + 96);
      if (v7 != 1)
      {
LABEL_6:
        *(a1 + 264) = 0;
        if (*(a2 + 120) != 1)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 240) = 0;
      v7 = *(a2 + 96);
      if (v7 != 1)
      {
        goto LABEL_6;
      }
    }

    *(a1 + 248) = *(a2 + 104);
    *(a1 + 240) = v7;
    *(a1 + 264) = 0;
    if (*(a2 + 120) != 1)
    {
LABEL_7:
      *(a1 + 280) = 0;
      if (*(a2 + 136) != 1)
      {
LABEL_9:
        *(a1 + 144) = 1;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 288) = *(a2 + 144);
      *(a1 + 280) = 1;
      goto LABEL_9;
    }

LABEL_13:
    *(a1 + 272) = *(a2 + 128);
    *(a1 + 264) = 1;
    *(a1 + 280) = 0;
    if (*(a2 + 136) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001A44DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v10.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v10);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v9, (a1 + 16));
    v8.__ptr_ = &v9;
    std::rethrow_exception(v8);
    __break(1u);
    return;
  }

  *a2 = 0;
  if (*(a1 + 144) != 1)
  {
    if (!__lk.__owns_)
    {
      return;
    }

LABEL_11:
    std::mutex::unlock(__lk.__m_);
    return;
  }

  *(a2 + 8) = *(a1 + 152);
  *(a2 + 24) = *(a1 + 168);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v5 = *(a1 + 176);
  v6 = *(a1 + 192);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = *(a1 + 208);
  *(a2 + 72) = 0;
  if (*(a1 + 216) == 1)
  {
    *(a2 + 80) = *(a1 + 224);
    *(a2 + 72) = 1;
    *(a2 + 96) = 0;
    v7 = *(a1 + 240);
    if (v7 != 1)
    {
LABEL_7:
      *(a2 + 120) = 0;
      if (*(a1 + 264) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *(a2 + 96) = 0;
    v7 = *(a1 + 240);
    if (v7 != 1)
    {
      goto LABEL_7;
    }
  }

  *(a2 + 104) = *(a1 + 248);
  *(a2 + 96) = v7;
  *(a2 + 120) = 0;
  if (*(a1 + 264) != 1)
  {
LABEL_8:
    *(a2 + 136) = 0;
    if (*(a1 + 280) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_14:
  *(a2 + 128) = *(a1 + 272);
  *(a2 + 120) = 1;
  *(a2 + 136) = 0;
  if (*(a1 + 280) == 1)
  {
LABEL_9:
    *(a2 + 144) = *(a1 + 288);
    *(a2 + 136) = 1;
  }

LABEL_10:
  *a2 = 1;
  if (__lk.__owns_)
  {
    goto LABEL_11;
  }
}

void sub_1001A4684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A46B4(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A480C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10018C3C0(**(a1 + 40), **(*(a1 + 40) + 8), v3);
  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001A434C(*v1, v3);
  if (v3[0] != 1)
  {
    return;
  }

  if (v10 == 1)
  {
    v10 = 0;
    if (v9 != 1)
    {
LABEL_5:
      if (v8 != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (v9 != 1)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (v8 != 1)
  {
LABEL_6:
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if (v7 != 1)
  {
LABEL_7:
    v2 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  v2 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    return;
  }

LABEL_14:
  if (v5 < 0)
  {
LABEL_15:
    operator delete(__p);
  }
}

void sub_1001A4970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v12 = *(v11 + 32);
    std::current_exception();
    sub_1001A40BC(v12, &a10);
    std::exception_ptr::~exception_ptr(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1001A4938);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A49EC(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    *(result + 128) = 0;
    if (*(result + 112) != 1)
    {
LABEL_3:
      if (*(result + 88) != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      *(result + 88) = 0;
      if (*(result + 64) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (*(result + 112) != 1)
  {
    goto LABEL_3;
  }

  *(result + 112) = 0;
  if (*(result + 88) == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (*(result + 64) == 1)
  {
LABEL_5:
    *(result + 64) = 0;
  }

LABEL_6:
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_15:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_1001A4AF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = sub_10018D008(*v2, v2[1]);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    sub_10018E8A4(v3, v2[1]);
  }

  v7 = *v1;
  if (!*v1)
  {
    sub_100013504(3u);
  }

  std::mutex::lock((v7 + 24));
  if ((*(v7 + 136) & 1) != 0 || (v9.__ptr_ = 0, v8 = *(v7 + 16), std::exception_ptr::~exception_ptr(&v9), v8))
  {
    sub_100013504(2u);
  }

  *(v7 + 144) = v4;
  *(v7 + 152) = v6;
  *(v7 + 136) |= 5u;
  std::condition_variable::notify_all((v7 + 88));
  std::mutex::unlock((v7 + 24));
}

void sub_1001A4BBC(void *a1)
{
  std::mutex::unlock((v2 + 24));
  __cxa_begin_catch(a1);
  v4 = *(v1 + 32);
  std::current_exception();
  sub_1001A4C30(v4, v5);
  std::exception_ptr::~exception_ptr(v5);
  __cxa_end_catch();
}

void sub_1001A4C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A4C30(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A4C94(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A4D00(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_1001A4DA4(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v6, &a1->__exception_);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    v4 = a1[1].__vftable;
    shared_owners = a1[1].__shared_owners_;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001A4E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A4E74(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A4FCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10018FE58(**(a1 + 40), **(*(a1 + 40) + 8), v3);
  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001A5324(*v1, v3);
  if (v3[0] == 1)
  {
    v2 = v4;
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }
}

void sub_1001A50A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v12 = *(v11 + 32);
    std::current_exception();
    sub_1001A5120(v12, &a10);
    std::exception_ptr::~exception_ptr(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1001A506CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A5120(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A5184(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A51F0(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001A5270(uint64_t a1)
{
  if ((*(a1 + 136) & 1) != 0 && *(a1 + 144) == 1)
  {
    v1 = *(a1 + 160);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    *(a1 + 144) = 0;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1001A5324(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  if (*a2 == 1)
  {
    *(a1 + 152) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001A53DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
    return;
  }

  *a2 = 0;
  if (*(a1 + 144) != 1)
  {
    if (!__lk.__owns_)
    {
      return;
    }

LABEL_6:
    std::mutex::unlock(__lk.__m_);
    return;
  }

  *(a2 + 8) = *(a1 + 152);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *a2 = 1;
  if (__lk.__owns_)
  {
    goto LABEL_6;
  }
}

void sub_1001A54B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A54E4(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A563C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1001884F4(*v1, v4);
  v7 = v6;
  if (v5)
  {
    sub_1001910F8(v3, v4);
  }

  *&v8 = v5;
  *(&v8 + 1) = v7;
  sub_1001A3A98(v2, &v8);
}

void sub_1001A56B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __cxa_begin_catch(a1);
  v21 = *(v20 + 32);
  std::current_exception();
  sub_1001A3B44(v21, v22);
  std::exception_ptr::~exception_ptr(v22);
  __cxa_end_catch();
}

void sub_1001A56F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A570C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100192C28(**(a1 + 40), &__p);
  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001A5A9C(*v1, &__p);
  v2 = __p;
  if (!__p)
  {
    return;
  }

  v3 = v8;
  v4 = __p;
  if (v8 == __p)
  {
    goto LABEL_21;
  }

  do
  {
    while (1)
    {
      if (*(v3 - 16) == 1)
      {
        *(v3 - 16) = 0;
        if (*(v3 - 32) != 1)
        {
LABEL_9:
          if (*(v3 - 56) != 1)
          {
            goto LABEL_10;
          }

          goto LABEL_15;
        }
      }

      else if (*(v3 - 32) != 1)
      {
        goto LABEL_9;
      }

      *(v3 - 32) = 0;
      if (*(v3 - 56) != 1)
      {
LABEL_10:
        if (*(v3 - 80) != 1)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      *(v3 - 56) = 0;
      if (*(v3 - 80) != 1)
      {
LABEL_11:
        v6 = *(v3 - 14);
        if (!v6)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }

LABEL_16:
      *(v3 - 80) = 0;
      v6 = *(v3 - 14);
      if (!v6)
      {
        goto LABEL_5;
      }

LABEL_17:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

LABEL_5:
      v5 = v3 - 18;
      if (*(v3 - 121) < 0)
      {
        break;
      }

      v3 -= 18;
      if (v5 == v2)
      {
        goto LABEL_20;
      }
    }

    operator delete(*v5);
    v3 -= 18;
  }

  while (v5 != v2);
LABEL_20:
  v4 = __p;
LABEL_21:
  v8 = v2;
  operator delete(v4);
}

void sub_1001A5878(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_begin_catch(a1);
  v19 = *(v18 + 32);
  std::current_exception();
  sub_1001A58E8(v19, v20);
  std::exception_ptr::~exception_ptr(v20);
  __cxa_end_catch();
}

void sub_1001A58CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A58E8(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A594C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A59B8(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001A5A38(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = a1;
    sub_100195308((a1 + 144));
    a1 = v1;
  }

  v2 = *(*a1 + 8);

  return v2();
}

void sub_1001A5A9C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}