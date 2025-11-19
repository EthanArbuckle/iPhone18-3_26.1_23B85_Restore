void sub_100173EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v55 - 177) < 0)
  {
    operator delete(*(v55 - 200));
  }

  if (*(v55 - 153) < 0)
  {
    operator delete(*(v55 - 176));
  }

  if (*(v55 - 129) < 0)
  {
    operator delete(*(v55 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_100173FF0(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  if (a3)
  {
    sub_100175684(byte_1009E94B0, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v7 = &v31;
    }

    else
    {
      v7 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v8 = v33;
    }

    else
    {
      v8 = v32;
    }

    v9 = std::string::append(&v34, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v11 = &qword_1009E94F0;
    }

    else
    {
      v11 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v12 = byte_1009E9507;
    }

    else
    {
      v12 = unk_1009E94F8;
    }

    v13 = std::string::append(&v35, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  else
  {
    sub_100175684(byte_1009E9490, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v17 = &v31;
    }

    else
    {
      v17 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v18 = v33;
    }

    else
    {
      v18 = v32;
    }

    v19 = std::string::append(&v34, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v21 = &qword_1009E94F0;
    }

    else
    {
      v21 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v22 = byte_1009E9507;
    }

    else
    {
      v22 = unk_1009E94F8;
    }

    v23 = std::string::append(&v35, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  v25 = std::string::append(&v36, p_p, v16);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v37, ".gz");
  *a4 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
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

  if (v33 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_1001742A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100174350(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  if (a3)
  {
    sub_100175684(byte_1009E94B0, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v7 = &v31;
    }

    else
    {
      v7 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v8 = v33;
    }

    else
    {
      v8 = v32;
    }

    v9 = std::string::append(&v34, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v11 = &qword_1009E94F0;
    }

    else
    {
      v11 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v12 = byte_1009E9507;
    }

    else
    {
      v12 = unk_1009E94F8;
    }

    v13 = std::string::append(&v35, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  else
  {
    sub_100175684(byte_1009E9490, byte_1009E94D0, &v34);
    sub_100175750(a1, &v31);
    if ((v33 & 0x80u) == 0)
    {
      v17 = &v31;
    }

    else
    {
      v17 = v31;
    }

    if ((v33 & 0x80u) == 0)
    {
      v18 = v33;
    }

    else
    {
      v18 = v32;
    }

    v19 = std::string::append(&v34, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (byte_1009E9507 >= 0)
    {
      v21 = &qword_1009E94F0;
    }

    else
    {
      v21 = qword_1009E94F0;
    }

    if (byte_1009E9507 >= 0)
    {
      v22 = byte_1009E9507;
    }

    else
    {
      v22 = unk_1009E94F8;
    }

    v23 = std::string::append(&v35, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_10017576C(a2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v16 = v30;
    }

    else
    {
      v16 = v29;
    }
  }

  v25 = std::string::append(&v36, p_p, v16);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v37, "_temp.bin");
  *a4 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
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

  if (v33 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_100174604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001746B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!sub_1003033C8((a1 + 40)))
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 64);
      if (*(a1 + 87) < 0)
      {
        v8 = *v8;
      }

      v23 = 136315138;
      *v24 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#accessory,file queue,%s does not exist,moving forward", &v23, 0xCu);
    }

    goto LABEL_20;
  }

  LOWORD(v23) = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  *&v24[4] = 0;
  v27 = 0;
  v31 = xmmword_100561E40;
  v10 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  v18 = xmmword_100561E40;
  if (sub_1003038C0(a1 + 88, &v23) && sub_1003038C0(a1 + 40, &v10))
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20 = v27;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#accessory,file queue,temp file version %d,current file version %d", buf, 0xEu);
    }

    v5 = v27;
    v6 = v14;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v11);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*&v24[4]);
    }

    if (v5 <= v6)
    {
      return;
    }

LABEL_20:
    if (sub_1001749E8(v2, v4, (a1 + 88), (a1 + 40)))
    {
      v9 = *(a1 + 116);
      if (v9 == 1)
      {
        if (*(v2 + 80))
        {
          sub_100169AD0(v2 + 56, *(a1 + 112));
        }
      }

      else if (!v9)
      {
        sub_100175820();
      }
    }

    return;
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(*&v24[4]);
  }
}

void sub_1001749A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (a24)
  {
    sub_10000AD84(a24);
  }

  _Unwind_Resume(exception_object);
}

id sub_1001749E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a4 + 23) >= 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = *a4;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:0];

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = [NSString stringWithUTF8String:v9];
    v11 = [NSURL fileURLWithPath:v10 isDirectory:0];

    if (v11)
    {
      v12 = +[NSFileManager defaultManager];
      v19 = 0;
      v20 = 0;
      v13 = [v12 replaceItemAtURL:v8 withItemAtURL:v11 backupItemName:0 options:1 resultingItemURL:&v20 error:&v19];
      v14 = v20;
      v15 = v19;

      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        *buf = 136315394;
        v22 = v17;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#accessory,file queue,download,safeReplaceFileOnDiskWith,%s,replacementSucceeded,%d", buf, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049EA70();
      }

      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EAA4();
    }

    v14 = 0;
    v13 = 0;
  }

  return v13;
}

uint64_t sub_100174C6C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

char *sub_100174CC0(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1000056BC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_1000056BC(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_1000056BC(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_100174D5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100174D90(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_100174DF8(uint64_t a1)
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:a1 forKey:@"CompanionFeature1Disable"];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 synchronize];
}

void sub_100174E90(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!*a3)
  {
    sub_10049EAD8();
  }

  sub_100173424(*a1, a2, 1, &v15);
  sub_1000054A8();
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v15;
  }

  else
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  sub_100005544(v6, &v14);
  v7 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100175010;
  block[3] = &unk_100998860;
  block[4] = a1;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000056BC(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2;
  dispatch_async(v7, block);
  if (v12)
  {
    sub_10000AD84(v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_100174FDC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100175010(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#accessory,file queue,read %s for NN coefficients", buf, 0xCu);
  }

  sub_1001811B4((a1 + 40), &v17);
  v5 = v17;
  if (v17)
  {
    v6 = *(a1 + 64);
    v16 = 0;
    v17 = 0;
    v15 = v5;
    sub_1001721EC(v6, &v16, &v15, *(a1 + 80));
    v7 = v15;
    v15 = 0;
    if (v7)
    {
      operator delete();
    }

    v8 = v16;
    v16 = 0;
    if (v8)
    {
      operator delete();
    }

    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 80);
      sub_10041C9CC();
      v11 = v19 >= 0 ? buf : *buf;
      *v20 = 136315138;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#accessory,file queue,nn parameters are successfully set for accessory %s", v20, 0xCu);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }

    v12 = *(v2 + 88);
    if (v12)
    {
      v13 = *(*(a1 + 64) + 208);
      if (v13)
      {
        sub_1002E0D8C(v12, *(a1 + 80), v13);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049EB04();
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_100175218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

char *sub_10017527C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1000056BC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  v5 = *(a2 + 72);
  *(v3 + 8) = *(a2 + 64);
  *(v3 + 9) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001752E0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void *sub_10017533C(void *a1, uint64_t a2)
{
  sub_100169D10(v4, a2);
  sub_100175A08(v4, a1);
  sub_100169FAC(v4);
  return a1;
}

void sub_1001753B0(uint64_t a1, unsigned int a2)
{
  sub_100173424(*a1, a2, 0, &v14);
  sub_1000054A8();
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v14;
  }

  else
  {
    v4 = v14.__r_.__value_.__r.__words[0];
  }

  sub_100005544(v4, &v13);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC();
    v6 = v12 >= 0 ? &__p : __p;
    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#accessory,scheduleLUTCalculationForAccessory is called for accessory %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  v7 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1001755C4;
  v8[3] = &unk_100998890;
  v8[4] = a1;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000056BC(&v9, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v13;
  }

  v10 = a2;
  dispatch_async(v7, v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_10017557C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 65) < 0)
  {
    operator delete(*(v26 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_100175658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a13)
  {
    sub_10000AD84(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100175684@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_100175C6C(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

_BYTE *sub_100175750@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xA)
  {
    return sub_100004A08(a2, "INVALID");
  }

  else
  {
    return sub_10041C3F4();
  }
}

_BYTE *sub_10017576C@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xD)
  {
    return sub_100004A08(a2, "INVALID");
  }

  else
  {
    return sub_10041C9CC();
  }
}

uint64_t sub_100175788(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10017588C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009988D0;
  sub_1001F4158(a1 + 3);
  return a1;
}

void sub_100175908(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009988D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10017595C(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    v2 = *(a1 + 256);
    if (v2)
    {
      *(a1 + 264) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v3 = *(a1 + 192);
    if (v3)
    {
      *(a1 + 200) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      *(a1 + 136) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 72) = v5;

      operator delete(v5);
    }
  }
}

void *sub_100175A08(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100175C60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_100175C6C(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_100175CF8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100175DA8()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100175E58()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100175F08()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100175FB8()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100176068()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100176118()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_1001761C8()
{
  if ((atomic_load_explicit(&qword_1009E9F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9F08))
  {
    sub_100004A08(&xmmword_1009E9EF0, "");
    __cxa_atexit(&std::string::~string, &xmmword_1009E9EF0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9F08);
  }
}

void sub_100176278()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009EE858 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009EE848 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE848, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009EE870 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009EE860 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE860, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009EE888 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009EE878 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE878, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009EE8A0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009EE890 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE890, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009EE8B8 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009EE8A8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE8A8, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009EE8D0 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009EE8C0 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE8C0, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009EE8E8 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009EE8D8 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE8D8, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009EE900 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009EE8F0 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE8F0, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009EE918 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009EE908 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE908, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1001768B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017697C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10017A718(a1, a2);
  *(v3 + 32) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 360) = 0;
  *(v3 + 368) = 0;
  *(v3 + 440) = 0;
  *(v3 + 456) = 0u;
  *(v3 + 448) = v3 + 456;
  *(v3 + 480) = 0u;
  *(v3 + 472) = v3 + 480;
  *(v3 + 504) = 0u;
  *(v3 + 496) = v3 + 504;
  *(v3 + 528) = 0u;
  *(v3 + 520) = v3 + 528;
  *(v3 + 552) = 0u;
  *(v3 + 544) = v3 + 552;
  *(v3 + 576) = 0u;
  *(v3 + 568) = v3 + 576;
  *(v3 + 600) = 0u;
  *(v3 + 592) = v3 + 600;
  *(v3 + 624) = 0u;
  *(v3 + 616) = v3 + 624;
  *(v3 + 648) = 0u;
  *(v3 + 640) = v3 + 648;
  *(v3 + 672) = 0u;
  *(v3 + 664) = v3 + 672;
  *(v3 + 696) = 0u;
  *(v3 + 688) = v3 + 696;
  *(v3 + 720) = 0u;
  *(v3 + 712) = v3 + 720;
  if (!*(v3 + 24))
  {
    __assert_rtn("RoseMeasurementAggregator", "MeasurementAggregator.cpp", 23, "fHandleReceivedRoseMeasurementsCb != nullptr");
  }

  return a1;
}

void sub_100176A84(_Unwind_Exception *a1)
{
  sub_10002074C((v1 + 89), v1[90]);
  sub_10002074C((v1 + 86), v1[87]);
  sub_10002074C((v1 + 83), v1[84]);
  sub_10002074C((v1 + 80), v1[81]);
  sub_10002074C((v1 + 77), v1[78]);
  sub_10017AC74((v1 + 74), v1[75]);
  sub_10017AB6C((v1 + 71), v1[72]);
  sub_10017AA64((v1 + 68), v1[69]);
  sub_10017AA08((v1 + 65), v1[66]);
  sub_10017A900((v1 + 62), v1[63]);
  sub_10017A900((v1 + 59), v1[60]);
  sub_10017A830((v1 + 56), v1[57]);
  sub_10017A7B0(v1);
  _Unwind_Resume(a1);
}

void sub_100176B2C(uint64_t a1, uint64_t a2)
{
  v40 = *(a2 + 56);
  v38 = *(a2 + 64);
  v39 = v38;
  LOWORD(v37) = v40;
  *buf = &v40;
  v4 = sub_10017ACD4(a1 + 592, &v40);
  sub_10017ADB4((v4 + 5), &v39);
  v5 = qword_1009F9820;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 112);
    v7 = *(a2 + 8);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *&buf[4] = v7;
      v44 = 1024;
      v45 = v40;
      v46 = 1024;
      v47 = v6;
      v48 = 2048;
      v49 = v39;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: machCont %.6f ticketId %hu cycleIndex %hu targetMacAddress 0x%016llx", buf, 0x22u);
    }

    v8 = *(a2 + 96);
    if (*(a2 + 96))
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        sub_1004279E4(v8, buf);
        if (v47 >= 0)
        {
          v10 = buf;
        }

        else
        {
          v10 = *buf;
        }

        *v41 = 136315138;
        v42 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: ignoring due to status %s", v41, 0xCu);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      *buf = &v37;
      v11 = sub_10017AE80(a1 + 448, &v37);
      v12 = v11;
      if ((*(v11 + 600) & 1) != 0 || *(v11 + 1746) == 1 && *(v11 + 1744) != v6)
      {
        sub_100177318(v11 + 48);
      }

      sub_100177388(v12 + 48, a2);
      *(v12 + 1744) = v6;
      *(v12 + 1746) = 1;
      v13 = *(a2 + 16);
      *(v12 + 1752) = *(a2 + 8);
      *(v12 + 1760) = v13;
      if (*(a1 + 160) == 1)
      {
        if (*(a2 + 56) == *(a1 + 40) && *(a2 + 112) == *(a1 + 46) && *(a2 + 292) == *(a1 + 48))
        {
          sub_100004A08(buf, "addRangeResult: found AOACIRDataEvent match");
          if ((*(a1 + 160) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001774F8(buf, a1 + 32);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }

          *(v12 + 1056) = *(a1 + 32);
          v14 = *(a1 + 48);
          v15 = *(a1 + 64);
          v16 = *(a1 + 80);
          *(v12 + 1120) = *(a1 + 96);
          *(v12 + 1104) = v16;
          *(v12 + 1088) = v15;
          *(v12 + 1072) = v14;
          v17 = *(a1 + 112);
          v18 = *(a1 + 128);
          v19 = *(a1 + 144);
          *(v12 + 1184) = *(a1 + 160);
          *(v12 + 1168) = v19;
          *(v12 + 1152) = v18;
          *(v12 + 1136) = v17;
        }

        else
        {
          sub_100004A08(buf, "addRangeResult: purging mismatched AOACIRDataEvent");
          if ((*(a1 + 160) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001774F8(buf, a1 + 32);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a1 + 160) == 1)
        {
          *(a1 + 160) = 0;
        }
      }

      else
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: no cached AOACIRDataEvent", buf, 2u);
        }
      }

      if (*(a1 + 248) == 1)
      {
        if (*(a2 + 56) == *(a1 + 176) && *(a2 + 112) == *(a1 + 182) && *(a2 + 292) == *(a1 + 200))
        {
          sub_100004A08(buf, "addRangeResult: found TOACIRDataEvent match");
          if ((*(a1 + 248) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001775E0(buf, a1 + 168);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }

          v21 = *(a1 + 184);
          *(v12 + 1192) = *(a1 + 168);
          *(v12 + 1208) = v21;
          v22 = *(a1 + 200);
          v23 = *(a1 + 216);
          v24 = *(a1 + 232);
          *(v12 + 1272) = *(a1 + 248);
          *(v12 + 1240) = v23;
          *(v12 + 1256) = v24;
          *(v12 + 1224) = v22;
        }

        else
        {
          sub_100004A08(buf, "addRangeResult: purging mismatched TOACIRDataEvent");
          if ((*(a1 + 248) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001775E0(buf, a1 + 168);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a1 + 248) == 1)
        {
          *(a1 + 248) = 0;
        }
      }

      else
      {
        v25 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: no cached TOACIRDataEvent", buf, 2u);
        }
      }

      if (*(a1 + 360) == 1)
      {
        if (*(a2 + 56) == *(a1 + 264) && *(a2 + 112) == *(a1 + 270) && *(a2 + 292) == *(a1 + 324))
        {
          sub_100004A08(buf, "addRangeResult: found TOACIRDataV2Event match");
          if ((*(a1 + 360) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001776C8(buf, a1 + 256);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }

          v26 = *(a1 + 256);
          v27 = *(a1 + 272);
          *(v12 + 1312) = *(a1 + 288);
          *(v12 + 1296) = v27;
          *(v12 + 1280) = v26;
          v28 = *(a1 + 304);
          v29 = *(a1 + 320);
          v30 = *(a1 + 336);
          *(v12 + 1369) = *(a1 + 345);
          *(v12 + 1360) = v30;
          *(v12 + 1344) = v29;
          *(v12 + 1328) = v28;
        }

        else
        {
          sub_100004A08(buf, "addRangeResult: purging mismatched TOACIRDataV2Event");
          if ((*(a1 + 360) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001776C8(buf, a1 + 256);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a1 + 360) == 1)
        {
          *(a1 + 360) = 0;
        }
      }

      else
      {
        v31 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: no cached TOACIRDataV2Event", buf, 2u);
        }
      }

      if (*(a1 + 440) == 1)
      {
        if (*(a2 + 56) == *(a1 + 376) && *(a2 + 112) == *(a1 + 388) && *(a2 + 292) == *(a1 + 400))
        {
          sub_100004A08(buf, "addRangeResult: found RangeResultDebugV2Event match");
          if ((*(a1 + 440) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001777B0(buf, a1 + 368);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }

          *(v12 + 1664) = *(a1 + 368);
          v32 = *(a1 + 384);
          v33 = *(a1 + 400);
          v34 = *(a1 + 416);
          *(v12 + 1721) = *(a1 + 425);
          *(v12 + 1712) = v34;
          *(v12 + 1696) = v33;
          *(v12 + 1680) = v32;
        }

        else
        {
          sub_100004A08(buf, "addRangeResult: purging mismatched RangeResultDebugV2Event");
          if ((*(a1 + 440) & 1) == 0)
          {
            sub_1000195BC();
          }

          sub_1001777B0(buf, a1 + 368);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a1 + 440) == 1)
        {
          *(a1 + 440) = 0;
        }
      }

      else
      {
        v35 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResult: no cached RangeResultDebugV2Event", buf, 2u);
        }
      }

      if (*(v12 + 1184) == 1 && *(v12 + 1272) == 1)
      {
        v36 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR) || (sub_10049EBB4(v36, (v12 + 1184)) & 1) != 0)
        {
          *(v12 + 1184) = 0;
        }

        if (*(v12 + 1272) == 1)
        {
          *(v12 + 1272) = 0;
        }
      }

      if (sub_100177898(a1, v37, v38))
      {
        sub_100177A6C(a1, v37, v38);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049EB38(a2, v5);
  }
}

void sub_1001772D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100177318(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049EC0C(v2);
  }

  sub_10017A658(a1);
  if (*(a1 + 1698) == 1)
  {
    *(a1 + 1698) = 0;
  }

  if (*(a1 + 1712) == 1)
  {
    *(a1 + 1712) = 0;
  }
}

uint64_t sub_100177388(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 552);
  *a1 = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 16) = v7;
  if (v4 == 1)
  {
    if (a1 == a2)
    {
      v13 = *(a2 + 96);
      v14 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 96) = v13;
      *(a1 + 112) = v14;
    }

    else
    {
      sub_10017AF94((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
      v8 = *(a2 + 96);
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 96) = v8;
      *(a1 + 112) = v9;
      sub_10017B0C0((a1 + 136), *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    }

    memcpy((a1 + 160), (a2 + 160), 0x181uLL);
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    sub_100012F38(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(a1 + 136) = 0;
    *(a1 + 128) = v12;
    *(a1 + 112) = v11;
    *(a1 + 96) = v10;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    sub_100020574(a1 + 136, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    memcpy((a1 + 160), (a2 + 160), 0x181uLL);
    *(a1 + 552) = 1;
  }

  return a1;
}

void sub_1001774DC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001774F8(uint64_t *a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 14);
    v8 = *(a2 + 16);
    v9 = 136315906;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,%s: ticketId %hu cycleIdx %hu anchorTimeOffsetRoseTicks %u", &v9, 0x1Eu);
  }
}

void sub_1001775E0(uint64_t *a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 14);
    v8 = *(a2 + 32);
    v9 = 136315906;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,%s: ticketId %hu cycleIdx %hu anchorTimeOffsetRoseTicks %u", &v9, 0x1Eu);
  }
}

void sub_1001776C8(uint64_t *a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 14);
    v8 = *(a2 + 68);
    v9 = 136315906;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,%s: ticketId %hu cycleIdx %hu anchorTimeOffsetRoseTicks %u", &v9, 0x1Eu);
  }
}

void sub_1001777B0(uint64_t *a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 20);
    v8 = *(a2 + 32);
    v9 = 136315906;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,%s: ticketId %hu cycleIdx %hu anchorTimeOffsetRoseTicks %u", &v9, 0x1Eu);
  }
}

BOOL sub_100177898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  if (!sub_10017C530(a1 + 448, &v13))
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10049ED28(&v13, &v14);
    return 0;
  }

  v4 = sub_10017A618(a1 + 448, &v13);
  v5 = v4[552];
  v6 = v4[776];
  v7 = v4[1000];
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v10 = v4[1136];
    v11 = v4[1224];
    v12 = v4[1608];
    *buf = 67110912;
    v16 = v13;
    v17 = 2048;
    v18 = v14;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v12;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#aggr,haveReceivedRoseMeasurements ticketId %hu targetMac 0x%016llx rng %d loc_ts %d rem_ts %d aoacir %d toacir %d dbg %d", buf, 0x36u);
  }

  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (((v5 | (v6 & v7)) & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    sub_10049EC50(&v13, &v14);
    return 0;
  }

  if (result)
  {
    sub_10049ECBC(&v13, &v14);
  }

  return 1;
}

void sub_100177A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  if (sub_100177898(a1, a2, a3))
  {
    *buf = &v16;
    v4 = sub_10017AE80(a1 + 448, &v16);
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v9 = v4[600];
      v10 = v4[824];
      v11 = v4[1048];
      v12 = v4[1184];
      v13 = v4[1272];
      v14 = v4[1384];
      v15 = v4[1656];
      *buf = 67111168;
      *&buf[4] = v16;
      v19 = 2048;
      v20 = v17;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      v32 = v14;
      v33 = 1024;
      v34 = v15;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#aggr,sendReceivedRoseMeasurements ticketId %hu targetMac 0x%016llx rng %d loc_ts %d rem_ts %d aoacir %d toacir %d toacirv2 %d dbg %d", buf, 0x3Cu);
    }

    v6 = v4[600];
    if (v4[824] == 1)
    {
      v7 = v4[1048];
      if (v4[600])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
      if (v4[600])
      {
        goto LABEL_11;
      }
    }

    if ((v7 & 1) == 0)
    {
LABEL_13:
      sub_100177318((v4 + 48));
      return;
    }

LABEL_11:
    v8 = *(a1 + 24);
    if (!v8)
    {
      sub_100037B10();
    }

    (*(*v8 + 48))(v8, v4 + 48);
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049ED94();
  }
}

void *sub_100177C58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
    sub_100004A08(__p, "addAOACIRDataEvent: purging previous event");
    if ((*(a1 + 160) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1001774F8(__p, a1 + 32);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100004A08(__p, "addAOACIRDataEvent: adding event");
  sub_1001774F8(__p, a2);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 160);
  v5 = *(a2 + 48);
  v7 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 64) = *(a2 + 32);
  *(a1 + 80) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v8 = *(a2 + 112);
  v10 = *(a2 + 64);
  v9 = *(a2 + 80);
  *(a1 + 128) = *(a2 + 96);
  *(a1 + 144) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 160) = 1;
  }

  v11 = *(a2 + 8);
  result = sub_100177E38(a1, v11);
  if (v13)
  {
    LOWORD(__p[0]) = v11;
    __p[1] = result;
    v18 = __p;
    v14 = sub_10017B234(a1 + 520, __p);
    sub_10017B33C(v14 + 48, a2);
    v18 = __p;
    result = sub_10017B234(a1 + 520, __p);
    if (result[11] >= 0x33uLL)
    {
      do
      {
        v18 = __p;
        v15 = sub_10017B234(a1 + 520, __p);
        v15[5] = vaddq_s64(v15[5], xmmword_100561EC0);
        sub_10017B5B8(v15[3].i64, 1);
        v18 = __p;
        result = sub_10017B234(a1 + 520, __p);
      }

      while (result[11] > 0x32uLL);
    }
  }

  return result;
}

void sub_100177E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100177E38(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 600);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = a1 + 600;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == a1 + 600 || *(v3 + 32) > a2 || (v11 = &v10, v7 = sub_10017ACD4(a1 + 592, &v10), v7[7] != 1))
  {
    v2 = 0;
LABEL_12:
    v8 = 0;
    return v8 | v2;
  }

  v8 = *(v7[5] + 32) & 0xFFFFFFFFFFFFFF00;
  v2 = *(v7[5] + 32);
  return v8 | v2;
}

void *sub_100177EEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    sub_100004A08(__p, "addTOACIRDataEvent: purging previous event");
    if ((*(a1 + 248) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1001775E0(__p, a1 + 168);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100004A08(__p, "addTOACIRDataEvent: adding event");
  sub_1001775E0(__p, a2);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 248);
  *(a1 + 168) = *a2;
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 32);
  *(a1 + 184) = *(a2 + 16);
  *(a1 + 232) = v6;
  *(a1 + 216) = v5;
  *(a1 + 200) = v7;
  if ((v4 & 1) == 0)
  {
    *(a1 + 248) = 1;
  }

  v8 = *(a2 + 8);
  result = sub_100177E38(a1, v8);
  if (v10)
  {
    LOWORD(__p[0]) = v8;
    __p[1] = result;
    v15 = __p;
    v11 = sub_10017B618(a1 + 544, __p);
    sub_10017B720(v11 + 48, a2);
    v15 = __p;
    result = sub_10017B618(a1 + 544, __p);
    if (result[11] >= 0x33uLL)
    {
      do
      {
        v15 = __p;
        v12 = sub_10017B618(a1 + 544, __p);
        v12[5] = vaddq_s64(v12[5], xmmword_100561EC0);
        sub_10017B9B4(v12[3].i64, 1);
        v15 = __p;
        result = sub_10017B618(a1 + 544, __p);
      }

      while (result[11] > 0x32uLL);
    }
  }

  return result;
}

void sub_1001780B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001780CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 360) == 1)
  {
    sub_100004A08(__p, "addTOACIRDataEvent: purging previous event");
    if ((*(a1 + 360) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1001776C8(__p, a1 + 256);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100004A08(__p, "addTOACIRDataV2Event: adding event");
  sub_1001776C8(__p, a2);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 360);
  v6 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 256) = *a2;
  *(a1 + 272) = v6;
  *(a1 + 288) = v5;
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  v9 = *(a2 + 48);
  *(a1 + 352) = *(a2 + 96);
  *(a1 + 320) = v8;
  *(a1 + 336) = v7;
  *(a1 + 304) = v9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 360) = 1;
  }
}

void sub_1001781A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001781C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v16 = *(a2 + 8);
  v5 = *(a2 + 32);
  v15 = v5;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v4;
    LOWORD(v19[0]) = 2048;
    *(v19 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeResultDebugEvent: ticketId %hu targetMacAddress 0x%016llx", buf, 0x12u);
  }

  *buf = &v16;
  v7 = sub_10017ACD4(a1 + 592, &v16);
  sub_10017ADB4((v7 + 5), &v15);
  *buf = v16;
  v19[0] = v15;
  v17 = buf;
  v8 = sub_10017AE80(a1 + 448, buf);
  v9 = v8;
  v10 = *(a2 + 20);
  if ((*(v8 + 1656) & 1) == 0 && (*(v8 + 1746) != 1 || *(v8 + 1744) == v10))
  {
    memcpy((v8 + 1392), a2, 0x108uLL);
    goto LABEL_9;
  }

  sub_100177318(v8 + 48);
  v11 = *(v9 + 1656);
  memcpy((v9 + 1392), a2, 0x108uLL);
  if ((v11 & 1) == 0)
  {
LABEL_9:
    *(v9 + 1656) = 1;
  }

  *(v9 + 1744) = v10;
  *(v9 + 1746) = 1;
  v17 = buf;
  v12 = sub_10017BA14(a1 + 568, buf);
  sub_10017BB1C(v12 + 48, a2);
  v17 = buf;
  result = sub_10017BA14(a1 + 568, buf);
  if (*(result + 88) >= 0x33uLL)
  {
    do
    {
      v17 = buf;
      v14 = sub_10017BA14(a1 + 568, buf);
      v14[5] = vaddq_s64(v14[5], xmmword_100561EC0);
      sub_10017BD88(v14[3].i64, 1);
      v17 = buf;
      result = sub_10017BA14(a1 + 568, buf);
    }

    while (*(result + 88) > 0x32uLL);
  }

  return result;
}

void sub_10017843C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 440) == 1)
  {
    sub_100004A08(__p, "addRangeResultDebugV2Event: purging previous event");
    if ((*(a1 + 440) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1001777B0(__p, a1 + 368);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100004A08(__p, "addRangeResultDebugV2Event: adding event");
  sub_1001777B0(__p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 440);
  *(a1 + 368) = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(a1 + 432) = *(a2 + 64);
  *(a1 + 400) = v6;
  *(a1 + 416) = v5;
  *(a1 + 384) = v7;
  if ((v4 & 1) == 0)
  {
    *(a1 + 440) = 1;
  }
}

void sub_10017850C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100178528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

    v5 = *(a2 + 48);
    if (*(a2 + 48))
    {
      v6 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sub_1004279E4(v5, &__p);
      if (v33 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = p_p;
      v8 = "#aggr,addRangeTimestampEvent(local): ignoring due to status %s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &buf, 0xCu);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      return;
    }

    v29 = *(a2 + 50);
    if ((*(a2 + 208) & 1) == 0)
    {
      sub_10049EE14();
    }

    v28 = *(a2 + 116);
    __p = &v29;
    v11 = sub_10017ACD4(a1 + 592, &v29);
    sub_10017ADB4((v11 + 5), &v28);
    LOWORD(__p) = v29;
    v32 = v28;
    *&buf = &__p;
    v12 = sub_10017BDE8(a1 + 496, &__p);
    sub_10017BEF0(v12 + 48, a2);
    *&buf = &__p;
    if (*(sub_10017BDE8(a1 + 496, &__p) + 88) >= 0x33uLL)
    {
      do
      {
        *&buf = &__p;
        v13 = sub_10017BDE8(a1 + 496, &__p);
        v13[5] = vaddq_s64(v13[5], xmmword_100561EC0);
        sub_10017C1AC(v13[3].i64, 1);
        *&buf = &__p;
      }

      while (*(sub_10017BDE8(a1 + 496, &__p) + 88) > 0x32uLL);
    }

    v14 = v29;
    v15 = a1;
LABEL_31:
    sub_100178A2C(v15, v14);
    return;
  }

  v9 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v6 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1004279E4(v9, &__p);
    if (v33 >= 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    v8 = "#aggr,addRangeTimestampEvent(remote): ignoring due to status %s";
    goto LABEL_15;
  }

  v16 = *(a2 + 50);
  v17 = sub_100177E38(a1, v16);
  if ((v18 & 1) == 0)
  {
    return;
  }

  LOWORD(buf) = v16;
  *(&buf + 1) = v17;
  __p = buf;
  v32 = v17;
  if ((a1 + 480) == sub_10017C20C(a1 + 472, &__p) || !*(sub_10017A618(a1 + 472, &__p) + 40) || (v19 = *(a2 + 58), __p = &buf, v20 = sub_10017BDE8(a1 + 472, &buf), v21 = v20[11] + v20[10] - 1, v19 >= *(*(v20[7] + 8 * (v21 / 0x12)) + 216 * (v21 % 0x12) + 58)))
  {
    __p = &buf;
    v26 = sub_10017BDE8(a1 + 472, &buf);
    sub_10017BEF0(v26 + 48, a2);
    __p = &buf;
    if (*(sub_10017BDE8(a1 + 472, &buf) + 88) >= 0x33uLL)
    {
      do
      {
        __p = &buf;
        v27 = sub_10017BDE8(a1 + 472, &buf);
        v27[5] = vaddq_s64(v27[5], xmmword_100561EC0);
        sub_10017C1AC(v27[3].i64, 1);
        __p = &buf;
      }

      while (*(sub_10017BDE8(a1 + 472, &buf) + 88) > 0x32uLL);
    }

    v15 = a1;
    v14 = v16;
    goto LABEL_31;
  }

  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a2 + 58);
    __p = &buf;
    v24 = sub_10017BDE8(a1 + 472, &buf);
    v25 = v24[11] + v24[10] - 1;
    LODWORD(v25) = *(*(v24[7] + 8 * (v25 / 0x12)) + 216 * (v25 % 0x12) + 58);
    LODWORD(__p) = 67109376;
    HIDWORD(__p) = v23;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#aggr,addRangeTimestampEvent(remote) received msmt cycleIdx(%hu) < queued cycleIdx(%hu). Resetting aggregator.", &__p, 0xEu);
  }

  sub_10017A248(a1, *(a2 + 50));
}

void sub_100178A2C(void *a1, unsigned int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,sendIfHaveReceivedRoseMeasurementsFromTimestamps", buf, 2u);
  }

  v5 = sub_100177E38(a1, a2);
  if (v6)
  {
    LOWORD(v116) = a2;
    *(&v116 + 1) = v5;
    *buf = v116;
    *&buf[8] = v5;
    v7 = a1 + 63 != sub_10017C20C((a1 + 62), buf) && *(sub_10017A618((a1 + 62), buf) + 40) != 0;
    *buf = v116;
    if (a1 + 60 == sub_10017C20C((a1 + 59), buf))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(sub_10017A618((a1 + 59), buf) + 40) != 0;
      if (v7 && v9)
      {
        *buf = &v116;
        v10 = sub_10017C588((a1 + 77), &v116);
        *buf = &v116;
        v11 = sub_10017BDE8((a1 + 62), &v116);
        v12 = *(*(*(v11 + 56) + 8 * (*(v11 + 80) / 0x12uLL)) + 216 * (*(v11 + 80) % 0x12uLL) + 58);
        *(v10 + 48) = (*(v10 + 48) + ((v12 < *(v10 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v12;
        *buf = &v116;
        v13 = sub_10017C588((a1 + 80), &v116);
        *buf = &v116;
        v14 = sub_10017BDE8((a1 + 59), &v116);
        v15 = *(*(*(v14 + 56) + 8 * (*(v14 + 80) / 0x12uLL)) + 216 * (*(v14 + 80) % 0x12uLL) + 58);
        *(v13 + 48) = (*(v13 + 48) + ((v15 < *(v13 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v15;
        for (*buf = &v116; *(sub_10017BDE8((a1 + 59), &v116) + 88); *buf = &v116)
        {
          *buf = &v116;
          v16 = *(sub_10017C588((a1 + 80), &v116) + 48);
          *buf = &v116;
          if (v16 >= *(sub_10017C588((a1 + 77), &v116) + 48))
          {
            break;
          }

          *buf = &v116;
          v17 = sub_10017BDE8((a1 + 59), &v116);
          v17[5] = vaddq_s64(v17[5], xmmword_100561EC0);
          sub_10017C1AC(v17[3].i64, 1);
          *buf = &v116;
          if (*(sub_10017BDE8((a1 + 59), &v116) + 88))
          {
            *buf = &v116;
            v18 = sub_10017C588((a1 + 80), &v116);
            *buf = &v116;
            v19 = sub_10017BDE8((a1 + 59), &v116);
            v20 = *(*(*(v19 + 56) + 8 * (*(v19 + 80) / 0x12uLL)) + 216 * (*(v19 + 80) % 0x12uLL) + 58);
            *(v18 + 48) = (*(v18 + 48) + ((v20 < *(v18 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v20;
          }
        }

        for (*buf = &v116; *(sub_10017BDE8((a1 + 62), &v116) + 88); *buf = &v116)
        {
          *buf = &v116;
          v21 = *(sub_10017C588((a1 + 77), &v116) + 48);
          *buf = &v116;
          if (v21 >= *(sub_10017C588((a1 + 80), &v116) + 48))
          {
            break;
          }

          *buf = &v116;
          v22 = sub_10017BDE8((a1 + 62), &v116);
          v22[5] = vaddq_s64(v22[5], xmmword_100561EC0);
          sub_10017C1AC(v22[3].i64, 1);
          *buf = &v116;
          if (*(sub_10017BDE8((a1 + 62), &v116) + 88))
          {
            *buf = &v116;
            v23 = sub_10017C588((a1 + 77), &v116);
            *buf = &v116;
            v24 = sub_10017BDE8((a1 + 62), &v116);
            v25 = *(*(*(v24 + 56) + 8 * (*(v24 + 80) / 0x12uLL)) + 216 * (*(v24 + 80) % 0x12uLL) + 58);
            *(v23 + 48) = (*(v23 + 48) + ((v25 < *(v23 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v25;
          }
        }

        for (*buf = &v116; *(sub_10017BDE8((a1 + 59), &v116) + 88); *buf = &v116)
        {
          *buf = &v116;
          if (!*(sub_10017BDE8((a1 + 62), &v116) + 88))
          {
            break;
          }

          *buf = &v116;
          v26 = *(sub_10017C588((a1 + 80), &v116) + 48);
          *buf = &v116;
          if (v26 >= *(sub_10017C588((a1 + 77), &v116) + 48))
          {
            break;
          }

          *buf = &v116;
          v27 = sub_10017BDE8((a1 + 59), &v116);
          v27[5] = vaddq_s64(v27[5], xmmword_100561EC0);
          sub_10017C1AC(v27[3].i64, 1);
          *buf = &v116;
          if (*(sub_10017BDE8((a1 + 59), &v116) + 88))
          {
            *buf = &v116;
            v28 = sub_10017C588((a1 + 80), &v116);
            *buf = &v116;
            v29 = sub_10017BDE8((a1 + 59), &v116);
            v30 = *(*(*(v29 + 56) + 8 * (*(v29 + 80) / 0x12uLL)) + 216 * (*(v29 + 80) % 0x12uLL) + 58);
            *(v28 + 48) = (*(v28 + 48) + ((v30 < *(v28 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v30;
          }
        }

        *buf = &v116;
        if (*(sub_10017BDE8((a1 + 62), &v116) + 88))
        {
          *buf = &v116;
          if (*(sub_10017BDE8((a1 + 59), &v116) + 88))
          {
            *buf = &v116;
            v31 = *(sub_10017C588((a1 + 80), &v116) + 48);
            *buf = &v116;
            if (v31 == *(sub_10017C588((a1 + 77), &v116) + 48))
            {
              *buf = &v116;
              v32 = sub_10017BDE8((a1 + 62), &v116);
              v33 = *(*(v32 + 56) + 8 * (*(v32 + 80) / 0x12uLL)) + 216 * (*(v32 + 80) % 0x12uLL);
              v109 = *v33;
              v34 = *(v33 + 17);
              v228 = *(v33 + 1);
              v229 = v34;
              v230 = *(v33 + 33);
              v231 = *(v33 + 49);
              v35 = *(v33 + 50);
              v36 = *(v33 + 52);
              v37 = *(v33 + 68);
              v38 = *(v33 + 100);
              v226 = *(v33 + 84);
              v227 = v38;
              v224 = v36;
              v225 = v37;
              v111 = *(v33 + 116);
              v223 = *(v33 + 204);
              v222 = *(v33 + 188);
              v39 = *(v33 + 156);
              v221 = *(v33 + 172);
              v220 = v39;
              v40 = *(v33 + 124);
              v219 = *(v33 + 140);
              v218 = v40;
              v110 = *(v33 + 208);
              *&v115[3] = *(v33 + 212);
              *v115 = *(v33 + 209);
              *buf = &v116;
              v41 = sub_10017BDE8((a1 + 59), &v116);
              v42 = *(*(v41 + 56) + 8 * (*(v41 + 80) / 0x12uLL)) + 216 * (*(v41 + 80) % 0x12uLL);
              v108 = *v42;
              v43 = *(v42 + 17);
              v214 = *(v42 + 1);
              v215 = v43;
              v216 = *(v42 + 33);
              v217 = *(v42 + 49);
              v44 = *(v42 + 50);
              v113 = *(v42 + 52);
              v114 = *(v42 + 56);
              v112 = *(v42 + 58);
              v45 = *(v42 + 60);
              v206 = *(v42 + 76);
              v205 = v45;
              v46 = *(v42 + 124);
              v210 = *(v42 + 140);
              v209 = v46;
              v47 = *(v42 + 92);
              v208 = *(v42 + 108);
              v207 = v47;
              *(v213 + 12) = *(v42 + 200);
              v213[0] = *(v42 + 188);
              v48 = *(v42 + 156);
              v212 = *(v42 + 172);
              v211 = v48;
              *buf = &v116;
              v49 = sub_10017BDE8((a1 + 62), &v116);
              v49[5] = vaddq_s64(v49[5], xmmword_100561EC0);
              sub_10017C1AC(v49[3].i64, 1);
              *buf = &v116;
              v50 = sub_10017BDE8((a1 + 59), &v116);
              v50[5] = vaddq_s64(v50[5], xmmword_100561EC0);
              sub_10017C1AC(v50[3].i64, 1);
              if (v35 != v44)
              {
                sub_10049EEBC();
              }

              *buf = v116;
              if (a1 + 66 == sub_10017C20C((a1 + 65), buf) || !*(sub_10017A618((a1 + 65), buf) + 40))
              {
                goto LABEL_53;
              }

              *buf = &v116;
              v51 = sub_10017C588((a1 + 83), &v116);
              *buf = &v116;
              v52 = sub_10017B234((a1 + 65), &v116);
              v53 = *(*(*(v52 + 56) + ((*(v52 + 80) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(v52 + 80) & 0x1FLL) << 7) + 14);
              *(v51 + 48) = (*(v51 + 48) + ((v53 < *(v51 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v53;
              for (*buf = &v116; *(sub_10017B234((a1 + 65), &v116) + 88); *buf = &v116)
              {
                *buf = &v116;
                v54 = *(sub_10017C588((a1 + 83), &v116) + 48);
                *buf = &v116;
                if (v54 >= *(sub_10017C588((a1 + 77), &v116) + 48))
                {
                  break;
                }

                *buf = &v116;
                v55 = sub_10017B234((a1 + 65), &v116);
                v55[5] = vaddq_s64(v55[5], xmmword_100561EC0);
                sub_10017B5B8(v55[3].i64, 1);
                *buf = &v116;
                if (*(sub_10017B234((a1 + 65), &v116) + 88))
                {
                  *buf = &v116;
                  v56 = sub_10017C588((a1 + 83), &v116);
                  *buf = &v116;
                  v57 = sub_10017B234((a1 + 65), &v116);
                  v58 = *(*(*(v57 + 56) + ((*(v57 + 80) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(v57 + 80) & 0x1FLL) << 7) + 14);
                  *(v56 + 48) = (*(v56 + 48) + ((v58 < *(v56 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v58;
                }
              }

              *buf = &v116;
              if (*(sub_10017B234((a1 + 65), &v116) + 88) && (*buf = &v116, v59 = *(sub_10017C588((a1 + 83), &v116) + 48), *buf = &v116, v59 == *(sub_10017C588((a1 + 77), &v116) + 48)))
              {
                *buf = &v116;
                v60 = sub_10017B234((a1 + 65), &v116);
                v61 = *(*(v60 + 56) + ((*(v60 + 80) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(v60 + 80) & 0x1FLL) << 7);
                v107 = *v61;
                v62 = *(v61 + 81);
                v202 = *(v61 + 65);
                v203 = v62;
                v204[0] = *(v61 + 97);
                *(v204 + 15) = *(v61 + 112);
                v63 = *(v61 + 17);
                v198 = *(v61 + 1);
                v199 = v63;
                v64 = *(v61 + 49);
                v200 = *(v61 + 33);
                v201 = v64;
                *buf = &v116;
                v65 = sub_10017B234((a1 + 65), &v116);
                v65[5] = vaddq_s64(v65[5], xmmword_100561EC0);
                sub_10017B5B8(v65[3].i64, 1);
                v66 = 1;
              }

              else
              {
LABEL_53:
                v66 = 0;
                v107 = 0;
              }

              *buf = v116;
              if (a1 + 69 == sub_10017C20C((a1 + 68), buf) || !*(sub_10017A618((a1 + 68), buf) + 40))
              {
                goto LABEL_64;
              }

              *buf = &v116;
              v74 = sub_10017C588((a1 + 86), &v116);
              *buf = &v116;
              v75 = sub_10017B618((a1 + 68), &v116);
              v76 = *(*(*(v75 + 56) + 8 * (*(v75 + 80) / 0x33uLL)) + 80 * (*(v75 + 80) % 0x33uLL) + 14);
              *(v74 + 48) = (*(v74 + 48) + ((v76 < *(v74 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v76;
              for (*buf = &v116; *(sub_10017B618((a1 + 68), &v116) + 88); *buf = &v116)
              {
                *buf = &v116;
                v77 = *(sub_10017C588((a1 + 86), &v116) + 48);
                *buf = &v116;
                if (v77 >= *(sub_10017C588((a1 + 77), &v116) + 48))
                {
                  break;
                }

                *buf = &v116;
                v78 = sub_10017B618((a1 + 68), &v116);
                v78[5] = vaddq_s64(v78[5], xmmword_100561EC0);
                sub_10017B9B4(v78[3].i64, 1);
                *buf = &v116;
                if (*(sub_10017B618((a1 + 68), &v116) + 88))
                {
                  *buf = &v116;
                  v79 = sub_10017C588((a1 + 86), &v116);
                  *buf = &v116;
                  v80 = sub_10017B618((a1 + 68), &v116);
                  v81 = *(*(*(v80 + 56) + 8 * (*(v80 + 80) / 0x33uLL)) + 80 * (*(v80 + 80) % 0x33uLL) + 14);
                  *(v79 + 48) = (*(v79 + 48) + ((v81 < *(v79 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v81;
                }
              }

              *buf = &v116;
              if (*(sub_10017B618((a1 + 68), &v116) + 88) && (*buf = &v116, v82 = *(sub_10017C588((a1 + 86), &v116) + 48), *buf = &v116, v82 == *(sub_10017C588((a1 + 77), &v116) + 48)))
              {
                *buf = &v116;
                v83 = sub_10017B618((a1 + 68), &v116);
                v84 = *(*(v83 + 56) + 8 * (*(v83 + 80) / 0x33uLL)) + 80 * (*(v83 + 80) % 0x33uLL);
                v85 = *v84;
                v86 = *(v84 + 17);
                v87 = *(v84 + 49);
                v196 = *(v84 + 33);
                v197[0] = v87;
                *(v197 + 15) = *(v84 + 64);
                v88 = *(v84 + 1);
                v195 = v86;
                v194 = v88;
                *buf = &v116;
                v89 = sub_10017B618((a1 + 68), &v116);
                v89[5] = vaddq_s64(v89[5], xmmword_100561EC0);
                sub_10017B9B4(v89[3].i64, 1);
                v90 = 1;
              }

              else
              {
LABEL_64:
                v90 = 0;
                v85 = 0;
              }

              *buf = v116;
              if (a1 + 72 == sub_10017C20C((a1 + 71), buf) || !*(sub_10017A618((a1 + 71), buf) + 40))
              {
                goto LABEL_75;
              }

              *buf = &v116;
              v91 = sub_10017C588((a1 + 89), &v116);
              *buf = &v116;
              v92 = sub_10017BA14((a1 + 71), &v116);
              v93 = *(*(*(v92 + 56) + ((*(v92 + 80) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 264 * (*(v92 + 80) & 0xFLL) + 20);
              *(v91 + 48) = (*(v91 + 48) + ((v93 < *(v91 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v93;
              while (a1[73])
              {
                *buf = &v116;
                v94 = *(sub_10017C588((a1 + 89), &v116) + 48);
                *buf = &v116;
                if (v94 >= *(sub_10017C588((a1 + 77), &v116) + 48))
                {
                  break;
                }

                *buf = &v116;
                v95 = sub_10017BA14((a1 + 71), &v116);
                v95[5] = vaddq_s64(v95[5], xmmword_100561EC0);
                sub_10017BD88(v95[3].i64, 1);
                *buf = &v116;
                if (*(sub_10017BA14((a1 + 71), &v116) + 88))
                {
                  *buf = &v116;
                  v96 = sub_10017C588((a1 + 89), &v116);
                  *buf = &v116;
                  v97 = sub_10017BA14((a1 + 71), &v116);
                  v98 = *(*(*(v97 + 56) + ((*(v97 + 80) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 264 * (*(v97 + 80) & 0xFLL) + 20);
                  *(v96 + 48) = (*(v96 + 48) + ((v98 < *(v96 + 48)) << 16)) & 0xFFFFFFFFFFFF0000 | v98;
                }
              }

              *buf = &v116;
              if (*(sub_10017BA14((a1 + 71), &v116) + 88) && (*buf = &v116, v99 = *(sub_10017C588((a1 + 89), &v116) + 48), *buf = &v116, v99 == *(sub_10017C588((a1 + 77), &v116) + 48)))
              {
                *buf = &v116;
                v100 = sub_10017BA14((a1 + 71), &v116);
                v101 = (*(*(v100 + 56) + ((*(v100 + 80) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 264 * (*(v100 + 80) & 0xFLL));
                v102 = *v101;
                memcpy(__dst, v101 + 1, sizeof(__dst));
                *buf = &v116;
                v103 = sub_10017BA14((a1 + 71), &v116);
                v103[5] = vaddq_s64(v103[5], xmmword_100561EC0);
                sub_10017BD88(v103[3].i64, 1);
                v104 = 1;
              }

              else
              {
LABEL_75:
                v104 = 0;
                v102 = 0;
              }

              buf[0] = 0;
              v134 = 0;
              v189 = 0;
              v190 = 0;
              v192[271] = 0;
              v192[343] = 0;
              v155 = v108;
              v156 = v214;
              v157 = v215;
              v158 = v216;
              v159 = v217;
              v160 = v35;
              v162 = v114;
              v161 = v113;
              v163 = v112;
              v170 = v211;
              v171 = v212;
              *v172 = v213[0];
              *&v172[12] = *(v213 + 12);
              v166 = v207;
              v167 = v208;
              v168 = v209;
              v169 = v210;
              v164 = v205;
              v165 = v206;
              v173 = 1;
              v135 = v109;
              v136 = v228;
              v137 = v229;
              v138 = v230;
              v139 = v231;
              v140 = v35;
              v141 = v224;
              v142 = v225;
              v143 = v226;
              v144 = v227;
              v145 = v111;
              v148 = v220;
              v149 = v221;
              v150 = v222;
              v146 = v218;
              v147 = v219;
              v151 = v223;
              v152 = v110;
              *v153 = *v115;
              *&v153[3] = *&v115[3];
              v154 = 1;
              v174 = v107;
              v177 = v200;
              v178 = v201;
              v175 = v198;
              v176 = v199;
              v180 = v203;
              *v181 = v204[0];
              v179 = v202;
              *&v181[15] = *(v204 + 15);
              v182 = v66;
              v183 = v85;
              *&v187[15] = *(v197 + 15);
              v186 = v196;
              *v187 = v197[0];
              v184 = v194;
              v185 = v195;
              v188 = v90;
              v191 = v102;
              memcpy(v192, __dst, 0x107uLL);
              v192[263] = v104;
              v105 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                if ((v110 & 1) == 0)
                {
                  sub_1000195BC();
                }

                *v117 = 67110400;
                v118 = v35;
                v119 = 1024;
                v120 = v112;
                v121 = 2048;
                v122 = v111;
                v123 = 1024;
                v124 = v66;
                v125 = 1024;
                v126 = v90;
                v127 = 1024;
                v128 = v104;
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#aggr,sendIfHaveReceivedRoseMeasurementsFromTimestamps sent ticketId %hu cycleIndex %hu targetMac 0x%016llx aoacir %d toacir %d dbg %d", v117, 0x2Au);
              }

              v106 = a1[3];
              if (!v106)
              {
                sub_100037B10();
              }

              (*(*v106 + 48))(v106, buf);
              if (v134 == 1)
              {
                if (__p)
                {
                  v133 = __p;
                  operator delete(__p);
                }

                if (v130)
                {
                  v131 = v130;
                  operator delete(v130);
                }
              }

              return;
            }
          }
        }

        v73 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v70 = "#aggr,cannot find matching local range timestamp event or remote range timestamp event";
        v71 = v73;
        v72 = 2;
LABEL_51:
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, v70, buf, v72);
        return;
      }
    }

    v67 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v68 = "True";
    if (v7)
    {
      v69 = "False";
    }

    else
    {
      v69 = "True";
    }

    if (v9)
    {
      v68 = "False";
    }

    *buf = 136315394;
    *&buf[4] = v69;
    *&buf[12] = 2080;
    *&buf[14] = v68;
    v70 = "#aggr,local timestamp queue empty? %s, remote timestamp queue empty? %s";
    v71 = v67;
    v72 = 22;
    goto LABEL_51;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049EE40(a2, v8);
  }
}

void sub_10017A228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100020B80(va);
  _Unwind_Resume(a1);
}

void sub_10017A248(uint64_t a1, unsigned int a2)
{
  v25 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#aggr,clearState: ticketId %hu", &buf, 8u);
  }

  v5 = *(a1 + 448);
  if (v5 != (a1 + 456))
  {
    do
    {
      if (*(v5 + 16) == a2)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v5[5];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#aggr,clearState: erasing slot with mac addr %016llx", &buf, 0xCu);
        }

        v8 = sub_10017C320((a1 + 448), v5);
      }

      else
      {
        v9 = v5[1];
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v10 = *v8 == v5;
            v5 = v8;
          }

          while (!v10);
        }
      }

      v5 = v8;
    }

    while (v8 != (a1 + 456));
  }

  if ((*(a1 + 160) & 1) != 0 && *(a1 + 40) == a2)
  {
    v11 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT) || (LOWORD(buf) = 0, _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#aggr,clearState: erasing most recent AOA CIR event", &buf, 2u), (*(a1 + 160) & 1) != 0))
    {
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 248) == 1 && *(a1 + 176) == a2)
  {
    v12 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT) || (LOWORD(buf) = 0, _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#aggr,clearState: erasing most recent TOA CIR event", &buf, 2u), (*(a1 + 248) & 1) != 0))
    {
      *(a1 + 248) = 0;
    }
  }

  if (*(a1 + 360) == 1 && *(a1 + 264) == a2)
  {
    v13 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT) || (LOWORD(buf) = 0, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#aggr,clearState: erasing most recent TOA CIR V2 event", &buf, 2u), (*(a1 + 360) & 1) != 0))
    {
      *(a1 + 360) = 0;
    }
  }

  v14 = *(a1 + 600);
  if (v14)
  {
    v15 = a1 + 600;
    do
    {
      v16 = *(v14 + 32);
      v17 = v16 >= a2;
      v18 = v16 < a2;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *(v14 + 8 * v18);
    }

    while (v14);
    if (v15 != a1 + 600 && *(v15 + 32) <= a2)
    {
      *&buf = &v25;
      v19 = sub_10017ACD4(a1 + 592, &v25);
      v20 = v19[5];
      v21 = v19 + 6;
      if (v20 != v19 + 6)
      {
        do
        {
          v22 = v20[4];
          LOWORD(buf) = v25;
          *(&buf + 1) = v22;
          sub_10017C36C((a1 + 472), &buf);
          sub_10017C36C((a1 + 496), &buf);
          sub_10017C3C8((a1 + 520), &buf);
          sub_10017C424((a1 + 544), &buf);
          sub_10017C480((a1 + 568), &buf);
          sub_10017C4DC((a1 + 616), &buf);
          sub_10017C4DC((a1 + 640), &buf);
          sub_10017C4DC((a1 + 664), &buf);
          sub_10017C4DC((a1 + 688), &buf);
          sub_10017C4DC((a1 + 712), &buf);
          v23 = v20[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v20[2];
              v10 = *v24 == v20;
              v20 = v24;
            }

            while (!v10);
          }

          v20 = v24;
        }

        while (v24 != v21);
      }
    }
  }
}

uint64_t sub_10017A618(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    sub_10017C290("map::at:  key not found");
  }

  return v2 + 48;
}

void sub_10017A658(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      *(a1 + 144) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 80) = v3;
      operator delete(v3);
    }

    *(a1 + 552) = 0;
  }

  if (*(a1 + 776) == 1)
  {
    *(a1 + 776) = 0;
  }

  if (*(a1 + 1000) == 1)
  {
    *(a1 + 1000) = 0;
  }

  if (*(a1 + 1136) == 1)
  {
    *(a1 + 1136) = 0;
  }

  if (*(a1 + 1224) == 1)
  {
    *(a1 + 1224) = 0;
  }

  if (*(a1 + 1336) == 1)
  {
    *(a1 + 1336) = 0;
  }

  if (*(a1 + 1608) == 1)
  {
    *(a1 + 1608) = 0;
  }

  if (*(a1 + 1688) == 1)
  {
    *(a1 + 1688) = 0;
  }
}

uint64_t sub_10017A718(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10017A7B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10017A830(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017A830(a1, *a2);
    sub_10017A830(a1, a2[1]);
    sub_10017A89C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_10017A89C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 568) == 1)
  {
    v3 = *(a2 + 152);
    if (v3)
    {
      *(a2 + 160) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 88);
    if (v4)
    {
      *(a2 + 96) = v4;

      operator delete(v4);
    }
  }
}

void sub_10017A900(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017A900(a1, *a2);
    sub_10017A900(a1, a2[1]);
    sub_10017A95C(a2 + 6);

    operator delete(a2);
  }
}

uint64_t sub_10017A95C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 9;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 18;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void sub_10017AA08(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017AA08(a1, *a2);
    sub_10017AA08(a1, a2[1]);
    sub_10004EDBC(a2 + 6);

    operator delete(a2);
  }
}

void sub_10017AA64(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017AA64(a1, *a2);
    sub_10017AA64(a1, a2[1]);
    sub_10017AAC0(a2 + 6);

    operator delete(a2);
  }
}

uint64_t sub_10017AAC0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 51;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void sub_10017AB6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017AB6C(a1, *a2);
    sub_10017AB6C(a1, a2[1]);
    sub_10017ABC8(a2 + 6);

    operator delete(a2);
  }
}

uint64_t sub_10017ABC8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 16;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void sub_10017AC74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017AC74(a1, *a2);
    sub_10017AC74(a1, a2[1]);
    sub_10002074C((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_10017ACD4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10017ADB4(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10017AE80(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_10017AF24(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9 && (v6 != v9 || v7 >= v8[5]))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6 && v8[5] >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_13:
  *a2 = v8;
  return result;
}

void *sub_10017AF94(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100013050(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_10017B0C0(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_1000205F0(v6, v11);
    }

    sub_100019B38();
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

uint64_t sub_10017B234(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10017B2F0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10004EDBC(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_10017B33C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 4 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10017B3E4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + ((v8 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v8 & 0x1F) << 7);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  *(v9 + 32) = a2[2];
  *(v9 + 48) = v12;
  *v9 = v10;
  *(v9 + 16) = v11;
  result = a2[4];
  v14 = a2[5];
  v15 = a2[7];
  *(v9 + 96) = a2[6];
  *(v9 + 112) = v15;
  *(v9 + 64) = result;
  *(v9 + 80) = v14;
  ++*(a1 + 40);
  return result;
}

void *sub_10017B3E4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10017B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017B5B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x20)
  {
    a2 = 1;
  }

  if (v2 < 0x40)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 32;
  }

  return v4 ^ 1u;
}

uint64_t sub_10017B618(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10017B6D4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10017AAC0(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_10017B720(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10017B7E0(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  *v9 = *a2;
  result = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  *(v9 + 48) = *(a2 + 48);
  *(v9 + 64) = v12;
  *(v9 + 16) = result;
  *(v9 + 32) = v11;
  ++*(a1 + 40);
  return result;
}

void *sub_10017B7E0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10017B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017B9B4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

uint64_t sub_10017BA14(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10017BAD0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10017ABC8(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10017BB1C(uint64_t a1, void *__src)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 2 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10017BBB4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = memcpy((*(v6 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 264 * (v8 & 0xF)), __src, 0x108uLL);
  ++*(a1 + 40);
  return result;
}

void *sub_10017BBB4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10017BD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017BD88(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x10)
  {
    a2 = 1;
  }

  if (v2 < 0x20)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }

  return v4 ^ 1u;
}

uint64_t sub_10017BDE8(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10017BEA4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10017A95C(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_10017BEF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 18 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10017BFD8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x12)) + 216 * (v8 % 0x12);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 80) = v13;
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  v14 = *(a2 + 96);
  v15 = *(a2 + 112);
  v16 = *(a2 + 144);
  *(v9 + 128) = *(a2 + 128);
  *(v9 + 144) = v16;
  *(v9 + 96) = v14;
  *(v9 + 112) = v15;
  result = *(a2 + 160);
  v18 = *(a2 + 176);
  v19 = *(a2 + 192);
  *(v9 + 208) = *(a2 + 208);
  *(v9 + 176) = v18;
  *(v9 + 192) = v19;
  *(v9 + 160) = result;
  ++*(a1 + 40);
  return result;
}

void *sub_10017BFD8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x12;
  v3 = v1 - 18;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10017C160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017C1AC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x12)
  {
    a2 = 1;
  }

  if (v2 < 0x24)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 18;
  }

  return v4 ^ 1u;
}

uint64_t *sub_10017C20C(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = v2;
  do
  {
    v8 = *(v3 + 16);
    if (v8 >= v5)
    {
      if (v8 == v5)
      {
        v9 = v3[5];
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 16);
  if (v5 < v12 || v5 == v12 && v6 < v7[5])
  {
    return v2;
  }

  return v7;
}

void sub_10017C290(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10017C2EC(exception, a1);
}

std::logic_error *sub_10017C2EC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t *sub_10017C320(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_100037488(a1, a2);
  sub_10017A89C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_10017C36C(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_10017C20C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100037488(a1, v3);
  sub_10017A95C(v4 + 6);
  operator delete(v4);
  return 1;
}

uint64_t sub_10017C3C8(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_10017C20C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100037488(a1, v3);
  sub_10004EDBC(v4 + 6);
  operator delete(v4);
  return 1;
}

uint64_t sub_10017C424(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_10017C20C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100037488(a1, v3);
  sub_10017AAC0(v4 + 6);
  operator delete(v4);
  return 1;
}

uint64_t sub_10017C480(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_10017C20C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100037488(a1, v3);
  sub_10017ABC8(v4 + 6);
  operator delete(v4);
  return 1;
}

uint64_t sub_10017C4DC(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = sub_10017C20C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100037488(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_10017C530(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    result = 1;
    do
    {
      v6 = *(v2 + 16);
      if (v3 >= v6 && (v3 != v6 || v4 >= v2[5]))
      {
        if (v6 >= v3 && v2[5] >= v4)
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_10017C588(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10017C624(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_10017C694(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  sub_10017EE08((a1 + 8), a2);
  v2 = 0;
  operator new();
}

void sub_10017C844(_Unwind_Exception *a1)
{
  v4 = *(v1 + 952);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  sub_10017EC64(v1 + 776);
  sub_10017ECA8(v2);
  sub_10017EFC8(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_10017C8B0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_10017DB10(v1, v175);
  if (v184[392])
  {
    v135[1] = v175[1];
    v135[2] = v175[2];
    v135[3] = v175[3];
    v135[0] = v175[0];
    v136 = v176;
    v137 = 0;
    v139 = 0;
    v138 = 0;
    sub_100012F38(&v137, v177, v178, (v178 - v177) >> 3);
    v140 = v179;
    v141 = v180;
    v142 = v181;
    v143 = 0;
    v145 = 0;
    v144 = 0;
    sub_100020574(&v143, v182, v183, 0x6DB6DB6DB6DB6DB7 * ((v183 - v182) >> 3));
    memcpy(v146, v184, 0x181uLL);
    v4 = v2[68];
    v5 = v2[70];
    v153 = v2[69];
    v154 = v5;
    v6 = v2[66];
    v149 = v2[65];
    v150 = v6;
    v151 = v2[67];
    v152 = v4;
    v7 = v2[64];
    v147 = v2[63];
    v148 = v7;
    v155 = *(v2 + 1136);
    v8 = *(v2 + 1192);
    v158 = *(v2 + 1176);
    v159 = v8;
    v160 = *(v2 + 1208);
    v161 = *(v2 + 1224);
    v9 = *(v2 + 1160);
    v156 = *(v2 + 1144);
    v157 = v9;
    v10 = v2[80];
    v11 = v2[82];
    v166 = v2[81];
    v167[0] = v11;
    *(v167 + 9) = *(v2 + 1321);
    v12 = v2[78];
    v162 = v2[77];
    v163 = v12;
    v164 = v2[79];
    v165 = v10;
    memcpy(v168, v2 + 84, 0x109uLL);
    v168[272] = 0;
    v173 = 0;
    v174 = 257;
    sub_10017E090(v3, v135);
    std::mutex::lock(v3 + 16);
    sig = v3[17].__m_.__sig;
    v14 = *v3[17].__m_.__opaque;
    std::mutex::unlock(v3 + 16);
    *buf = sig;
    *&buf[8] = v14;
    sub_10016B2BC(v120, v135, buf);
    sub_10016CCC8(v120, &v104);
    v15 = v116[18];
    v16 = v116[18] >= -0.5;
    if (v116[18] < -0.5)
    {
      v17 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#me,measurementInRangeCheck failed - range %.2f m", buf, 0xCu);
      }
    }

    if ((LOBYTE(v116[46]) & 1) == 0)
    {
      __assert_rtn("handleReceivedRoseMeasurements", "MeasurementEngine.cpp", 196, "rangeResultWithUncertainties.rangeUncMeters().has_value()");
    }

    if ((LOBYTE(v116[48]) & 1) == 0)
    {
      __assert_rtn("handleReceivedRoseMeasurements", "MeasurementEngine.cpp", 197, "rangeResultWithUncertainties.fieldOfViewConfidence().has_value()");
    }

    if (v155 == 1)
    {
      sub_10017E3D4(v3, &v147, LOBYTE(v146[104]), buf);
      v18 = *buf;
      if (*buf != *&buf[8])
      {
        sub_10017AF94(&v109, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
        v18 = *buf;
      }

      if (v18)
      {
        *&buf[8] = v18;
        operator delete(v18);
      }
    }

    if (sub_10016DAF8(&v3[15], &v104, LOBYTE(v3->__m_.__sig)))
    {
      sub_10016DBD4(buf);
      sub_10017AF94(&v109, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#me,normalized SOI RSSI is below threshold, setting NN output to (0, 0, 0, 0, 0, 1)", buf, 2u);
      }
    }

    v45 = v16;
    v46 = v3;
    v20 = *(&v114 + 1);
    v21 = v114;
    if (v114 != *(&v114 + 1))
    {
      v22 = 1;
      while ((*(v21 + 32) & 1) != 0)
      {
        if ((*(v21 + 48) & 1) == 0)
        {
          v43 = 217;
          v44 = "aoaHypothesis.measEngElevationUncertaintyDegrees.has_value()";
LABEL_100:
          __assert_rtn("handleReceivedRoseMeasurements", "MeasurementEngine.cpp", v43, v44);
        }

        v23 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if ((LOBYTE(v116[46]) & 1) == 0)
          {
            sub_1000195BC();
          }

          if ((LOBYTE(v116[48]) & 1) == 0)
          {
            sub_1000195BC();
          }

          v24 = *(v21 + 40);
          v25 = *(v21 + 24);
          *buf = 67110144;
          *&buf[4] = v22;
          *&buf[8] = 2048;
          *&buf[10] = v116[45];
          *&buf[18] = 2048;
          *&buf[20] = v25;
          *&buf[28] = 2048;
          *&buf[30] = v24;
          *&buf[38] = 2048;
          *&buf[40] = v116[47];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::handleReceivedRoseMeasurements: hypothesis %d uncertainties: rangeM %.3f azDeg %.3f elDeg %.3f fovConf %.3f", buf, 0x30u);
        }

        v21 += 56;
        ++v22;
        if (v21 == v20)
        {
          goto LABEL_26;
        }
      }

      v43 = 216;
      v44 = "aoaHypothesis.measEngAzimuthUncertaintyDegrees.has_value()";
      goto LABEL_100;
    }

LABEL_26:
    v26 = qword_1009F9820;
    if (BYTE4(v104))
    {
      v27 = WORD4(v107);
      v48 = WORD4(v107);
      v28 = v108;
      v49 = v108;
      v47.n128_u64[0] = v107;
      v47.n128_f64[1] = v116[18];
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v27;
        *&buf[8] = 2048;
        *&buf[10] = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: addRangeMeasurement for ticket %d mac 0x%016llx", buf, 0x12u);
      }

      *buf = &v48;
      v29 = sub_10017F0A4(&v46[15].__m_.__opaque[32], &v48);
      v30 = COERCE_DOUBLE(sub_10016DE38((v29 + 48), &v47));
      v32 = v31;
      v33 = qword_1009F9820;
      v34 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        if (v34)
        {
          *buf = 134217984;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: rangeOffsetFromMedian %.3f", buf, 0xCu);
        }

        if (v30 > 1.0)
        {
          v35 = qword_1009F9820;
          v45 = 0;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v30;
            *&buf[12] = 2048;
            *&buf[14] = 0x3FF0000000000000;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: range offset %.3f exceeds max %.3f - not okToPublishToClient", buf, 0x16u);
            v45 = 0;
          }
        }
      }

      else if (v34)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: no rangeOffsetFromMedian", buf, 2u);
      }

      v26 = qword_1009F9820;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v45;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: okToPublishToClient %d", buf, 8u);
    }

    if (LOBYTE(v116[26]) == 5)
    {
      v36 = v46[17].__m_.__opaque[12];
    }

    else
    {
      v36 = 1;
    }

    if (v106 == 1)
    {
      LOBYTE(v106) = 0;
    }

    v37 = v146[153];
    if ((v146[153] & 0x100) != 0 && (BYTE4(v140) & 0xFE) == 0x1A)
    {
      v38 = v45;
      if (*&v46[17].__m_.__opaque[4] > LOBYTE(v146[153]))
      {
        v38 = 0;
      }

      v39 = qword_1009F9820;
      LOBYTE(v45) = v38;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v40 = "N";
        if (v38)
        {
          v40 = "Y";
        }

        *buf = 67109378;
        *&buf[4] = v37;
        *&buf[8] = 2080;
        *&buf[10] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#me,handleReceivedRoseMeasurements: mmsValStatus = %d, Used = %s", buf, 0x12u);
      }
    }

    *&buf[32] = v106;
    v51 = v107;
    v41 = v110;
    v52 = v108;
    *buf = v104;
    *&buf[16] = v105;
    *v53 = v109;
    v109 = 0uLL;
    v110 = 0;
    v54 = v41;
    v57 = v113;
    v55 = v111;
    v56 = v112;
    v58 = v114;
    v59 = v115;
    v114 = 0uLL;
    v115 = 0;
    memcpy(v60, v116, sizeof(v60));
    v67 = v153;
    v68 = v154;
    v63 = v149;
    v64 = v150;
    v65 = v151;
    v66 = v152;
    v61 = v147;
    v62 = v148;
    v69 = v155;
    v72 = v158;
    v73 = v159;
    v74 = v160;
    v75 = v161;
    v70 = v156;
    v71 = v157;
    v80 = v166;
    v81[0] = v167[0];
    *(v81 + 9) = *(v167 + 9);
    v76 = v162;
    v77 = v163;
    v78 = v164;
    v79 = v165;
    memcpy(v82, v168, sizeof(v82));
    v85 = v106;
    v86 = v107;
    v83 = v104;
    v84 = v105;
    v87 = v108;
    v88 = 0;
    v90 = 0;
    v89 = 0;
    sub_100012F38(&v88, 0, 0, 0);
    v91 = v111;
    v92 = v112;
    v93 = v113;
    __p = 0;
    v96 = 0;
    v95 = 0;
    sub_100020574(&__p, v114, *(&v114 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v114 + 1) - v114) >> 3));
    memcpy(v97, v116, sizeof(v97));
    v98 = v117;
    *&v100[13] = *&v119[13];
    v99 = v118;
    *v100 = *v119;
    v101 = 1;
    v102 = v119[20] & v36;
    v103 = v45;
    v42 = *&v46->__m_.__opaque[24];
    if (!v42)
    {
      sub_100037B10();
    }

    (*(*v42 + 48))(v42, buf);
    if (v101 == 1)
    {
      if (__p)
      {
        v95 = __p;
        operator delete(__p);
      }

      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }
    }

    if (v58)
    {
      *(&v58 + 1) = v58;
      operator delete(v58);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (v114)
    {
      *(&v114 + 1) = v114;
      operator delete(v114);
    }

    if (v109)
    {
      *(&v109 + 1) = v109;
      operator delete(v109);
    }

    if (v134 == 1)
    {
      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }
    }

    if (v129 == 1)
    {
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }
    }

    if (v123)
    {
      v124 = v123;
      operator delete(v123);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v173 == 1)
    {
      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      if (v169)
      {
        v170 = v169;
        operator delete(v169);
      }
    }

    if (v143)
    {
      v144 = v143;
      operator delete(v143);
    }

    if (v137)
    {
      v138 = v137;
      operator delete(v137);
    }

    if (v182)
    {
      operator delete(v182);
    }

    if (v177)
    {
      operator delete(v177);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049EEE8();
  }
}

void sub_10017D4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10002069C(&STACK[0x750]);
  sub_10017ED6C(&STACK[0x9B0]);
  sub_10017D8CC(&STACK[0x1330]);
  sub_100020B80(&STACK[0x1A28]);
  _Unwind_Resume(a1);
}

void sub_10017D588(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 1024));
  *(a1 + 1088) = *(a2 + 4);

  std::mutex::unlock((a1 + 1024));
}

uint64_t sub_10017D5D0(uint64_t a1, void ***a2, void ***a3)
{
  v5 = *a2;
  if (!*a2)
  {
    v7 = *a3;
    if (!*a3)
    {
      return 1;
    }

    goto LABEL_6;
  }

  *a2 = 0;
  v11 = v5;
  v6 = sub_1001702DC(a1 + 776, 5, &v11);
  sub_100167040(&v11);
  v7 = *a3;
  v8 = (*a3 == 0) & v6;
  if (*a3 && v6)
  {
LABEL_6:
    *a3 = 0;
    v10 = v7;
    v8 = sub_1001702DC(a1 + 776, 9, &v10);
    sub_100167040(&v10);
  }

  return v8;
}

void sub_10017D6A8(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 96;
  if (*(a2 + 96))
  {
    v5 = *(a2 + 48);
    v12[2] = *(a2 + 32);
    v12[3] = v5;
    v6 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v6;
    v7 = *(a2 + 72);
    v13 = *(a2 + 64);
    v14 = 0;
    v8 = *(a2 + 80);
    v15 = 0;
    v16 = 0;
    sub_100012F38(&v14, v7, v8, (v8 - v7) >> 3);
    v9 = *(v4 + 16);
    v17 = *v4;
    v18 = v9;
    v19 = *(v4 + 32);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_100020574(&v20, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    memcpy(v23, (a2 + 160), 0x181uLL);
    v23[392] = 0;
    v23[520] = 0;
    v23[528] = 0;
    v23[608] = 0;
    v23[616] = 0;
    v23[720] = 0;
    v23[728] = 0;
    v23[992] = 0;
    v23[1000] = 0;
    v28 = 0;
    v29 = 0;
    v10 = *(a1 + 32);
    if (!v10)
    {
      sub_100037B10();
    }

    (*(*v10 + 48))(v10, v12);
    if (v28 == 1)
    {
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  else
  {
    v11 = a1 + 40;

    sub_100176B2C(v11, a2);
  }
}

void sub_10017D898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017D8CC(uint64_t a1)
{
  if (*(a1 + 1768) == 1)
  {
    v2 = *(a1 + 1296);
    if (v2)
    {
      *(a1 + 1304) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 1232);
    if (v3)
    {
      *(a1 + 1240) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    *(a1 + 144) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_10017D96C(uint64_t a1, unsigned int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v12) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::clearState: ticketId %hu", buf, 8u);
  }

  sub_10017A248(a1 + 40, a2);
  v5 = *(a1 + 1000);
  if (v5 != (a1 + 1008))
  {
    do
    {
      if (*(v5 + 16) == a2)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v5[5];
          *buf = 134217984;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::clearState: erasing slot with mac addr %016llx", buf, 0xCu);
        }

        v8 = sub_100037488((a1 + 1000), v5);
        sub_10016F608(v5 + 6);
        operator delete(v5);
      }

      else
      {
        v9 = v5[1];
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v5[2];
            v10 = *v8 == v5;
            v5 = v8;
          }

          while (!v10);
        }
      }

      v5 = v8;
    }

    while (v8 != (a1 + 1008));
  }
}

void sub_10017DB10(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 552) == 1)
  {
    if ((*(a1 + 776) & 1) != 0 || *(a1 + 1000))
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::getRangeResult: warning: have range result AND range timestamps; ignoring range timestamps", &buf, 2u);
        if ((*(a1 + 552) & 1) == 0)
        {
          sub_1000195BC();
        }
      }
    }

    v5 = a1[3];
    v53 = a1[2];
    v54 = v5;
    v6 = a1[1];
    buf = *a1;
    v52 = v6;
    v7 = *(a1 + 9);
    v55 = *(a1 + 8);
    v56 = 0uLL;
    v8 = *(a1 + 10);
    v57 = 0;
    sub_100012F38(&v56, v7, v8, (v8 - v7) >> 3);
    v9 = a1[7];
    v58 = a1[6];
    v59 = v9;
    v10 = *(a1 + 17);
    v60 = *(a1 + 16);
    v61 = 0uLL;
    v62 = 0;
    sub_100020574(&v61, v10, *(a1 + 18), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 18) - v10) >> 3));
    memcpy(v63, a1 + 10, 0x181uLL);
    if (*(a1 + 1688) == 1)
    {
      v63[28] = *(a1 + 207);
      LOBYTE(v63[29]) = 1;
      v63[30] = *(a1 + 208);
      LOBYTE(v63[31]) = 1;
      v63[32] = *(a1 + 209);
      LOBYTE(v63[33]) = 1;
      v63[34] = *(a1 + 210);
      LOBYTE(v63[35]) = 1;
    }

    v11 = v57;
    *(a2 + 64) = v55;
    v12 = v54;
    *(a2 + 32) = v53;
    *(a2 + 48) = v12;
    v13 = v52;
    *a2 = buf;
    *(a2 + 16) = v13;
    *(a2 + 72) = v56;
    *(a2 + 88) = v11;
    v14 = v58;
    v15 = v59;
    *(a2 + 128) = v60;
    *(a2 + 96) = v14;
    *(a2 + 112) = v15;
    *(a2 + 136) = v61;
    *(a2 + 152) = v62;
    memcpy((a2 + 160), v63, 0x181uLL);
    *(a2 + 552) = 1;
    return;
  }

  if (*(a1 + 776))
  {
    v16 = *(a1 + 1000) == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EF1C();
    }

    goto LABEL_45;
  }

  if ((a1[48] & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EF50();
    }

    goto LABEL_45;
  }

  if ((*(a1 + 150) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EF84();
    }

    goto LABEL_45;
  }

  if ((*(a1 + 561) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EFB8();
    }

    goto LABEL_45;
  }

  if ((*(a1 + 785) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049EFEC();
    }

    goto LABEL_45;
  }

  v17 = *(a1 + 560);
  v18 = *(a1 + 784);
  if (v17 != v18)
  {
    v36 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_100428144(v17, &buf);
      v37 = SBYTE7(v52);
      v38 = buf;
      sub_100428144(v18, v42);
      p_buf = &buf;
      if (v37 < 0)
      {
        p_buf = v38;
      }

      if (v43 >= 0)
      {
        v40 = v42;
      }

      else
      {
        v40 = v42[0];
      }

      *v47 = 136315394;
      v48 = p_buf;
      v49 = 2080;
      v50 = v40;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#me,RoseMeasurementEngine::getRangeResult: error: local and remote timestamp events have inconsistent rfChannel, %s vs %s", v47, 0x16u);
      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (SBYTE7(v52) < 0)
      {
        operator delete(buf);
      }
    }

    goto LABEL_45;
  }

  v19 = sub_100042358(*(a1 + 735));
  v20 = sub_10017E630((a1 + 35), (a1 + 49), v19);
  sub_10017E7EC((a1 + 35), (a1 + 49));
  v29 = v28;
  if (!v20)
  {
    v41 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F020(v41, v29);
    }

LABEL_45:
    *a2 = 0;
    *(a2 + 552) = 0;
    return;
  }

  sub_10017E9A0((a1 + 40), v21, v22, v23, v24, v25, v26, v27, v42, v28, 1.0);
  v46 = v17;
  if ((*(a1 + 150) & 1) == 0)
  {
    sub_1000195BC();
  }

  sub_1001937FC(&buf, 1, *(a1 + 305), v42, *(a1 + 74));
  v30 = *(a1 + 72);
  *(&buf + 1) = *(a1 + 71);
  LOBYTE(v52) = v30;
  v31 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v31;
  v32 = v57;
  *(a2 + 64) = v55;
  v33 = v52;
  *a2 = buf;
  *(a2 + 16) = v33;
  *(a2 + 72) = v56;
  *(a2 + 88) = v32;
  v56 = 0uLL;
  v34 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v34;
  v35 = v62;
  *(a2 + 128) = v60;
  *(a2 + 136) = v61;
  *(a2 + 152) = v35;
  v57 = 0;
  v61 = 0uLL;
  v62 = 0;
  memcpy((a2 + 160), v63, 0x181uLL);
  *(a2 + 552) = 1;
  sub_10002069C(&buf);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }
}

void sub_10017E044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10017E090(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 280) & 1) != 0 && (*(a2 + 264))
  {
    v3 = *(a2 + 256);
    v29[0] = *(a2 + 272);
    v29[1] = v3;
    sub_10017019C(a1 + 776, *(a2 + 368), v29, &v27);
    v4 = (a2 + 136);
    *(a2 + 144) = *(a2 + 136);
    v5 = v27;
    v6 = v28;
    if (v28 == v27)
    {
      v24 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#me,No AoA hypotheses are generated because reverse LUTs are not available", buf, 2u);
    }

    else
    {
      v7 = 0;
      do
      {
        v25 = 0;
        v26 = 0;
        sub_100042378(&v26, &v25, v5[1], *v5);
        v8 = *(a2 + 144);
        v9 = *(a2 + 152);
        if (v8 >= v9)
        {
          v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - *v4) >> 3);
          v13 = v12 + 1;
          if ((v12 + 1) > 0x492492492492492)
          {
            sub_100019B38();
          }

          v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - *v4) >> 3);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x249249249249249)
          {
            v15 = 0x492492492492492;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_100020640(a2 + 136, v15);
          }

          v16 = 56 * v12;
          v17 = v25;
          *v16 = v26;
          *(v16 + 8) = v17;
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          *(v16 + 48) = 0;
          v11 = 56 * v12 + 56;
          v18 = *(a2 + 136);
          v19 = *(a2 + 144) - v18;
          v20 = 56 * v12 - v19;
          memcpy((v16 - v19), v18, v19);
          v21 = *(a2 + 136);
          *(a2 + 136) = v20;
          *(a2 + 144) = v11;
          *(a2 + 152) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          v10 = v25;
          *v8 = v26;
          *(v8 + 8) = v10;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          *(v8 + 32) = 0;
          *(v8 + 40) = 0;
          *(v8 + 48) = 0;
          v11 = v8 + 56;
        }

        *(a2 + 144) = v11;
        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v31 = v7;
          v32 = 2048;
          v33 = v26;
          v34 = 2048;
          v35 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::aoa hypothesis %d: azimuth = %.2f deg, elevation = %.2f deg", buf, 0x1Cu);
        }

        ++v7;
        v5 += 2;
      }

      while (v5 != v6);
    }

    v5 = v27;
LABEL_26:
    if (v5)
    {
      v28 = v5;
      operator delete(v5);
    }

    return;
  }

  v23 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#me,calculateAoAHypotheses: invalid PDOA", buf, 2u);
  }
}

void sub_10017E3D4(uint64_t a1@<X0>, _OWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_10017E46C(a2, v7);
  if (v7[0] == v7[1])
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    sub_100171FFC(*(a1 + 944), v7, a3, a4);
  }

  v8 = v7;
  sub_1001674A8(&v8);
}

void sub_10017E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001674A8(va);
  _Unwind_Resume(a1);
}

void sub_10017E46C(_OWORD *a1@<X1>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = a1[3];
  v16[0] = a1[2];
  v16[1] = v5;
  do
  {
    v6 = *(v16 + v4 + 6);
    *v15 = *(v16 + v4 + 4);
    *(v15 + 1) = v6;
    sub_10017158C(&v17, v15);
    v4 += 4;
  }

  while (v4 != 20);
  sub_10017E5F0(a2, &v17);
  v7 = 0;
  v18 = v17;
  v8 = a1[7];
  v15[0] = a1[6];
  v15[1] = v8;
  do
  {
    v9 = *(v15 + v7 + 6);
    *v14 = *(v15 + v7 + 4);
    *(v14 + 1) = v9;
    sub_10017158C(&v17, v14);
    v7 += 4;
  }

  while (v7 != 20);
  sub_10017E5F0(a2, &v17);
  v10 = 0;
  v18 = v17;
  v11 = a1[5];
  v14[0] = a1[4];
  v14[1] = v11;
  do
  {
    v12 = *(v14 + v10 + 6);
    *&v13 = *(v14 + v10 + 4);
    *(&v13 + 1) = v12;
    sub_10017158C(&v17, &v13);
    v10 += 4;
  }

  while (v10 != 20);
  sub_10017E5F0(a2, &v17);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_10017E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 - 56);
  if (v13)
  {
    *(v11 - 48) = v13;
    operator delete(v13);
  }

  sub_1001674A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017E5F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10017F200(a1, a2);
  }

  else
  {
    sub_10017F1AC(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL sub_10017E630(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 64);
  v4 = *(a2 + 72);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *&v4 + *&v5;
  v9 = v6 + v7;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134219264;
    v15 = v5;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = *&v4 + *&v5;
    v24 = 2048;
    v25 = v6 + v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::checkTimestampAndFrequencyConsistency: rtt_i %lld tat_i %lld rtt_r %lld tat_r %lld num %lld den %lld", &v14, 0x3Eu);
  }

  if (v9)
  {
    v11 = sub_100042368(500.0);
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = v8 / v9 + -1.0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::checkTimestampAndFrequencyConsistency: cfo_ppu %E  timestamp_derived_frequency_deviation_ppu %E", &v14, 0x16u);
    }

    return fabs(a3 - (v8 / v9 + -1.0)) <= v11;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10049F09C();
      return 0;
    }
  }

  return result;
}

void sub_10017E7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v2 = *(a2 + 72);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *&v2 + *&v3 + v5 + v4;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134219264;
    v12 = v3;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v5 * *&v3 - v4 * *&v2;
    v21 = 2048;
    v22 = *&v2 + *&v3 + v5 + v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::computeRange: rtt_i %lld tat_i %lld rtt_r %lld tat_r %lld num %lld den %lld", &v11, 0x3Eu);
  }

  if (v6)
  {
    v8 = sub_10041C3DC(llround((v5 * *&v3 - v4 * *&v2) / v6));
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_100042328(v8);
      v11 = 134218240;
      v12 = v8;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#me,RoseMeasurementEngine::computeRange: tofSec = %.6e rangeM = %.6e", &v11, 0x16u);
    }

    sub_100042328(v8);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049F0D0();
  }
}

void sub_10017E9A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v14 = sub_100427984(*(a1 + 20), a2, a3, a4, a5, a6, a7, a8);
  v55 = *(a1 + 22);
  v56 = v14;
  v53 = sub_100427658(*(a1 + 24), v15, v16, v17, v18, v19, v20, v21);
  v25 = sub_10041C3B4(*(a1 + 28));
  v52 = *(a1 + 26);
  v59 = *(a1 + 36);
  v26 = vcvtd_n_f64_s32(*(a1 + 86), 2uLL);
  v27 = vcvtd_n_f64_s32(*(a1 + 88), 2uLL);
  v48 = *(a1 + 95);
  if (*(a1 + 68) != 0xFF)
  {
    LOWORD(v22) = *(a1 + 100);
    LOWORD(v23) = *(a1 + 102);
    LOWORD(v24) = *(a1 + 104);
    v50 = *(a1 + 79);
    v51 = *(a1 + 78);
    v49 = *(a1 + 80);
    v30 = *(a1 + 70);
    v28 = *(a1 + 72);
    v33 = v22 * 0.01;
    v32 = v23 * 0.01;
    v31 = v24 * 0.01;
    v29 = 1;
  }

  else
  {
    v28 = 0.0;
    v29 = 0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
  }

  v34 = *(a1 + 74);
  v35 = sub_10041C3B4(v34);
  v36 = *(a1 + 99);
  v58 = 0;
  v57 = 0u;
  v37 = *(a1 + 106);
  v38 = *(a1 + 110);
  v39 = sub_10004230C(a10);
  v40 = sub_10004230C(a11);
  *&v45 = v28;
  *(&v45 + 1) = v29;
  *&v44 = v30;
  *(&v44 + 1) = v29;
  *(&v43 + 1) = v29;
  *(&v42 + 1) = v29;
  *&v43 = v49;
  *(&v41 + 1) = v29;
  *&v42 = v50;
  *&v41 = v51;
  sub_10041E100(a9, v56, v55, v53, v52, 0, &v59, 0, v25, v39, v26, v27, v48, v40, v35, &v57, v41, v42, v43, v44, v45, 0, v34, v36, *&v33, v29, *&v32, v29, *&v31, v29, 9, v46, 0, 0, 0, 0, v37, SHIWORD(v37), v38, v47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v57)
  {
    *(&v57 + 1) = v57;
    operator delete(v57);
  }
}

void sub_10017EC48(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017EC64(uint64_t a1)
{
  std::mutex::~mutex((a1 + 104));
  sub_100167040((a1 + 96));
  std::mutex::~mutex((a1 + 24));
  sub_100167040((a1 + 16));
  return a1;
}

uint64_t sub_10017ECA8(void **a1)
{
  sub_10002074C((a1 + 89), a1[90]);
  sub_10002074C((a1 + 86), a1[87]);
  sub_10002074C((a1 + 83), a1[84]);
  sub_10002074C((a1 + 80), a1[81]);
  sub_10002074C((a1 + 77), a1[78]);
  sub_10017AC74((a1 + 74), a1[75]);
  sub_10017AB6C((a1 + 71), a1[72]);
  sub_10017AA64((a1 + 68), a1[69]);
  sub_10017AA08((a1 + 65), a1[66]);
  sub_10017A900((a1 + 62), a1[63]);
  sub_10017A900((a1 + 59), a1[60]);
  sub_10017A830((a1 + 56), a1[57]);

  return sub_10017A7B0(a1);
}

uint64_t sub_10017ED6C(uint64_t a1)
{
  if (*(a1 + 2408) == 1)
  {
    v2 = *(a1 + 1936);
    if (v2)
    {
      *(a1 + 1944) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 1872);
    if (v3)
    {
      *(a1 + 1880) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 1768) == 1)
  {
    v4 = *(a1 + 1296);
    if (v4)
    {
      *(a1 + 1304) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 1232);
    if (v5)
    {
      *(a1 + 1240) = v5;
      operator delete(v5);
    }
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    *(a1 + 144) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_10017EE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 sub_10017EF1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100998A18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10017EF54(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10017EF7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017EFC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10017F048(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10017F048(a1, *a2);
    sub_10017F048(a1, a2[1]);
    sub_10016F608(a2 + 6);

    operator delete(a2);
  }
}

uint64_t sub_10017F0A4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_10017AF24(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10017F160(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10016F608(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10017F1AC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1001724D4(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_10017F200(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100019B38();
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

  v18 = a1;
  if (v6)
  {
    sub_1001673D4(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1001724D4(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100170384(&v14);
  return v8;
}

void sub_10017F31C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100170384(va);
  _Unwind_Resume(a1);
}

void sub_10017F330()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100561F08;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

uint64_t sub_10017F424()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EE930 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EE920 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE920, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EE948 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EE938 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE938, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EE960 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EE950 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE950, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EE978 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EE968 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE968, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EE990 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EE980 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE980, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EE9A8 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EE998 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE998, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EE9C0 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EE9B0 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE9B0, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EE9D8 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EE9C8 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE9C8, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EE9F0 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EE9E0 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EE9E0, &_mh_execute_header);
}

void sub_10017FA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017FAC8()
{
  std::ofstream::open();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v2 = 0;
  v3 = 0;
  v1 = 0;
  v4 = 0;
  v8 = xmmword_100561E40;
  v0 = 257;
  operator new();
}

void sub_10017FC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100019668(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_10017FCA8(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!a2[16])
  {
    return 0;
  }

  std::ostream::flush();
  v8 = 0;
  if (!sub_100303D7C(a3, &v8))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F140(a3);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }

    return 0;
  }

  std::ostream::sentry::sentry();
  v5 = a2 + *(*a2 - 24);
  if ((v5[32] & 5) == 0)
  {
    v6 = *(v5 + 5);
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v18 = 174;
    (*(*v6 + 40))(v9);
    if (v9[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
  }

  return 1;
}

void sub_10017FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    std::ostream::sentry::~sentry();
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F1B0(v11);
    }

    sub_1000F60E0(v10);
    __cxa_end_catch();
    JUMPOUT(0x10017FE6CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017FF28(uint64_t a1, uint64_t *a2, void ***a3, void ***a4, unsigned __int8 *a5)
{
  *a5 = 0;
  v9 = *a3;
  v10 = a3[1];
  while (v10 != v9)
  {
    v10 -= 3;
    v29[0] = v10;
    sub_1001674A8(v29);
  }

  a3[1] = v9;
  v11 = *a4;
  v12 = a4[1];
  while (v12 != v11)
  {
    v12 -= 3;
    v29[0] = v12;
    sub_1001674A8(v29);
  }

  a4[1] = v11;
  if (sub_1001802C4(a1, a2))
  {
    v13 = sub_100303230(a2);
    if ((v14 & 1) == 0)
    {
      sub_10049F220();
    }

    v15 = v13;
    sub_100180564(v29, a2);
    if (v29[17])
    {
      *(&v29[1] + *(v29[0] - 3)) &= ~0x1000u;
      std::istream::seekg();
      std::istream::read();
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a5;
        v28[0] = 67109120;
        v28[1] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#lut,channelAvailabilityMask in reverse LUT file is 0x%02x", v28, 8u);
      }

      v18 = *a5;
      if (*a5)
      {
        v19 = 0;
        v20 = *a5;
        do
        {
          v21 = v20;
          v19 += v20 & 1;
          v20 >>= 1;
        }

        while (v21 > 1);
        v22 = 16428 * v19 + 179;
      }

      else
      {
        v22 = 179;
      }

      if (v15 == v22)
      {
        v24 = sub_10042838C(5, 1);
        if (((v18 >> v24) & 1) != 0 && (sub_100180734(v24, v29, a3) & 1) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049F288();
          }
        }

        else
        {
          v25 = *a5;
          v26 = sub_10042838C(9, 1);
          if ((v25 >> v26) & 1) == 0 || (sub_100180734(v26, v29, a4))
          {
            v23 = 1;
LABEL_33:
            std::filebuf::~filebuf();
            std::istream::~istream();
            std::ios::~ios();
            return v23;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_10049F2C4();
          }
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049F24C();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F300(a2);
    }

    v23 = 0;
    goto LABEL_33;
  }

  return 0;
}

void sub_1001802A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001809E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001802C4(uint64_t a1, uint64_t a2)
{
  if (sub_100303FF4(a2))
  {
    *buf = 0;
    v22 = 0;
    v23 = 0;
    __p = 0;
    v18 = 0;
    v19 = 0;
    *&v17[4] = 0;
    v20 = 0;
    v24 = xmmword_100561E40;
    if (sub_1003038C0(a2, buf))
    {
      if (v20 > 2u)
      {
        v11 = sub_100303230(a2);
        if ((v12 & 1) == 0)
        {
          __assert_rtn("checkLutFileIntegrity", "AoAFileUtils.cpp", 250, "optFileSize.has_value()");
        }

        if (DWORD2(v24) && v11 == DWORD2(v24) + 178)
        {
          v7 = 1;
          goto LABEL_21;
        }

        v3 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          v14 = 136315138;
          v15 = v13;
          v5 = "#lut,checking integrity of LUT file %s fails because file size is not correct";
          goto LABEL_19;
        }
      }

      else
      {
        v3 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v4 = a2;
          }

          else
          {
            v4 = *a2;
          }

          v14 = 136315138;
          v15 = v4;
          v5 = "#lut,checking integrity of LUT file %s fails because file contents are not latest";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v14, 0xCu);
        }
      }
    }

    else
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        v14 = 136315138;
        v15 = v9;
        v5 = "#lut,checking integrity of LUT file %s fails because reading file header fails";
        goto LABEL_19;
      }
    }

    v7 = 0;
LABEL_21:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*&v17[4]);
    }

    return v7;
  }

  v6 = qword_1009F9820;
  v7 = 0;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136315138;
    *v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#lut,checking integrity of LUT file %s fails because either file does not exist or CRC fails", buf, 0xCu);
    return 0;
  }

  return v7;
}

void sub_10018054C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100019668(va);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100180564(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1001806FC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100180734(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v30 = 0;
  v31 = 0;
  sub_100180AAC(&__p, 0x25uLL);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100180AAC(&__p, 0x559uLL);
  v4 = 0;
  v5 = 0;
LABEL_2:
  v24 = v5;
  v25 = v4;
  v7 = v26;
  v6 = v27;
  if (v27 != v26)
  {
    v8 = v27;
    do
    {
      v10 = *(v8 - 24);
      v8 -= 24;
      v9 = v10;
      if (v10)
      {
        *(v6 - 16) = v9;
        operator delete(v9);
      }

      v6 = v8;
    }

    while (v8 != v7);
  }

  v11 = 0;
  v27 = v7;
LABEL_8:
  v30 = __p;
  v12 = 37;
  while (1)
  {
    LOWORD(v32) = 0;
    std::istream::read();
    std::istream::read();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v13 = v30;
    if (v30 >= v31)
    {
      v15 = (v30 - __p) >> 2;
      if ((v15 + 1) >> 62)
      {
        sub_100019B38();
      }

      v16 = (v31 - __p) >> 1;
      if (v16 <= v15 + 1)
      {
        v16 = v15 + 1;
      }

      if (v31 - __p >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_10004F51C(&__p, v17);
      }

      v18 = (4 * v15);
      *v18 = v32;
      v14 = 4 * v15 + 4;
      v19 = v18 - (v30 - __p);
      memcpy(v19, __p, v30 - __p);
      v20 = __p;
      __p = v19;
      v30 = v14;
      v31 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v30 = v32;
      v14 = (v13 + 4);
    }

    v30 = v14;
    if (!--v12)
    {
      sub_100180B4C(&v26, &__p);
      if (++v11 != 37)
      {
        goto LABEL_8;
      }

      sub_100166BCC(a3, &v26);
      v4 = v24 > 1;
      v5 = v24 + 1;
      if (v24 == 2)
      {
        v21 = 1;
        goto LABEL_29;
      }

      goto LABEL_2;
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049F370();
  }

  v21 = v25;
LABEL_29:
  v32 = &v26;
  sub_1001674A8(&v32);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v21 & 1;
}

void sub_100180998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char *a18)
{
  a18 = &a12;
  sub_1001674A8(&a18);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001809E0(void *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

void *sub_100180AAC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_10004F51C(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

uint64_t sub_100180B4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100181A04(a1, a2);
  }

  else
  {
    sub_1001819B0(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100180B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    for (i = 0; i != 3; ++i)
    {
      if (*(*a3 + 8) - **a3 != 72)
      {
        sub_10049F3AC();
      }

      for (j = 0; j != 37; ++j)
      {
        for (k = 0; k != 148; k += 4)
        {
          v7 = *(*(**a3 + 24 * i) + 24 * j);
          std::ostream::write();
          v8 = *(*(**a3 + 24 * i) + 24 * j) + k;
          result = std::ostream::write();
        }
      }
    }
  }

  return result;
}

void sub_100180C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = 0;
  *(&v10 + *(v10 - 3)) = v6;
  v7 = (&v10 + *(v10 - 3));
  std::ios_base::init(v7, &v11);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  v8 = 0;
  if (a5)
  {
    do
    {
      v9 = a5;
      v8 += a5 & 1;
      LOBYTE(a5) = a5 >> 1;
    }

    while (v9 > 1);
  }

  sub_10017FAC8();
}

void sub_100181060(int a1@<W2>, uint64_t a2@<X8>)
{
  sub_1000054A8();
  sub_10000561C(__p);
  if (a1 > 7)
  {
    if ((a1 - 9) < 5 || (a1 - 998) < 2)
    {
      if (byte_1009E9F07 < 0)
      {
        sub_1000056BC(a2, xmmword_1009E9EF0, *(&xmmword_1009E9EF0 + 1));
      }

      else
      {
        *a2 = xmmword_1009E9EF0;
        *(a2 + 16) = unk_1009E9F00;
      }

      goto LABEL_23;
    }

    v8 = &xmmword_1009EEAB8;
  }

  else
  {
    v4 = &xmmword_1009EEA10;
    v5 = &xmmword_1009EEA88;
    if (a1 != 6)
    {
      v5 = &xmmword_1009EEAA0;
    }

    v6 = &xmmword_1009EEA58;
    if (a1 != 4)
    {
      v6 = &xmmword_1009EEA70;
    }

    if (a1 <= 5)
    {
      v5 = v6;
    }

    v7 = &xmmword_1009EEA28;
    if (a1 != 2)
    {
      v7 = &xmmword_1009EEA40;
    }

    if (!a1)
    {
      v4 = &xmmword_1009EE9F8;
    }

    if (a1 > 1)
    {
      v4 = v7;
    }

    if (a1 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }
  }

  sub_100175684(__p, v8, a2);
LABEL_23:
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100181198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001811B4(uint64_t *a1@<X1>, void *a2@<X8>)
{
  if (sub_1003040F8(a1, 16850))
  {
    sub_100180564(v5, a1);
    v4 = (v5 + *(v5[0] - 3));
    v4->__exceptions_ = 5;
    std::ios_base::clear(v4, v4->__rdstate_);
    if (v5[17])
    {
      *(&v5[1] + *(v5[0] - 3)) &= ~0x1000u;
      std::istream::seekg();
      operator new();
    }

    *a2 = 0;
    std::filebuf::~filebuf();
    std::istream::~istream();
    std::ios::~ios();
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F414(a1);
    }

    *a2 = 0;
  }
}

void sub_1001817E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001809E0(va);
  _Unwind_Resume(a1);
}

void sub_100181800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (__cdecl **a9)(std::ios_base::failure *__hidden this), uint64_t a10, __int128 a11)
{
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::runtime_error::runtime_error(&a9, exception_ptr);
    a11 = exception_ptr[1];
    __cxa_begin_catch(a1);
    *v11 = 0;
    std::ios_base::failure::~failure(&a9);
    __cxa_end_catch();
    operator delete();
  }

  operator delete();
}

uint64_t sub_1001818E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

uint64_t sub_1001819B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_10016742C(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100181A04(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100019B38();
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

  v18 = a1;
  if (v6)
  {
    sub_1001673D4(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_10016742C(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100170384(&v14);
  return v8;
}

void sub_100181B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100170384(va);
  _Unwind_Resume(a1);
}

void sub_100181B34()
{
  if ((atomic_load_explicit(&qword_1009E9F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9F08))
  {
    byte_1009E9F07 = 0;
    LOBYTE(xmmword_1009E9EF0) = 0;
    __cxa_atexit(&std::string::~string, &xmmword_1009E9EF0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9F08);
  }
}

uint64_t sub_100181BB4()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009EEA08 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009EE9F8 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EE9F8, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009EEA20 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009EEA10 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA10, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009EEA38 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009EEA28 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA28, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009EEA50 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009EEA40 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA40, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009EEA68 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009EEA58 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA58, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009EEA80 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009EEA70 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA70, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009EEA98 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009EEA88 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEA88, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009EEAB0 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009EEAA0 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009EEAA0, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009EEAC8 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009EEAB8 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009EEAB8, &_mh_execute_header);
}

void sub_1001821E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001822A8(int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0x15)
  {
    if (a3 > 2)
    {
      if (a4 > 2)
      {
        if (a1)
        {
          operator new();
        }

        sub_10049F5F4();
      }

      sub_10049F53C();
    }

    sub_10049F484();
  }

  sub_10049F650(a2);
}

void sub_1001824EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100182520(void *a1)
{
  if ((atomic_load_explicit(&qword_1009EA8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009EA8E0))
  {
    sub_100182654(&v6);
    v4 = std::random_device::operator()(&v6);
    dword_1009E9F18[0] = v4;
    for (i = 1; i != 624; ++i)
    {
      v4 = i + 1812433253 * (v4 ^ (v4 >> 30));
      dword_1009E9F18[i] = v4;
    }

    qword_1009EA8D8 = 0;
    std::random_device::~random_device(&v6);
    __cxa_guard_release(&qword_1009EA8E0);
  }

  if ((atomic_load_explicit(&qword_1009EA928, memory_order_acquire) & 1) == 0)
  {
    sub_10049F718();
  }

  std::mutex::lock(&stru_1009EA8E8);
  v2 = sub_1001826C8(a1, dword_1009E9F18, a1);
  std::mutex::unlock(&stru_1009EA8E8);
  return v2;
}

void sub_100182618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_guard_abort(&qword_1009EA8E0);
  _Unwind_Resume(a1);
}

std::random_device *sub_100182654(std::random_device *a1)
{
  sub_100004A08(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1001826AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001826C8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_100182758(v12, a2, 0x40uLL);
      return sub_100182838(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      sub_100182758(v12, a2, v10 - v9);
      do
      {
        v11 = sub_100182838(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_100182758(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & &_mh_execute_header;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ &_mh_execute_header) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & &_mh_execute_header;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_100182838(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = sub_10018290C(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = sub_10018290C(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

uint64_t sub_10018290C(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_1001829AC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 sub_100182A80(uint64_t a1, uint64_t a2)
{
  *a2 = off_100998BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_100182ADC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100182B28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100182BA8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100013050(result, a2);
  }

  return result;
}

void sub_100182C04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100182C20()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

double sub_100182C8C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = off_100998D58;
  return result;
}

uint64_t sub_100182CCC(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_100182D10(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_100182D74(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    sub_10049F76C();
  }

  std::mutex::lock((a1 + 24));
  v4 = (*(**(a1 + 16) + 48))(*(a1 + 16), a2);
  std::mutex::unlock((a1 + 24));
  return v4;
}

void sub_100182DFC(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 8))
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    v5[2] = a2[2];
    std::mutex::lock((a1 + 24));
    (*(**(a1 + 8) + 32))(*(a1 + 8), v5);
    std::mutex::unlock((a1 + 24));
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049F798(v4);
    }
  }
}

uint64_t sub_100182EB8(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock((a1 + 24));
  return v3;
}

uint64_t sub_100182F38(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_100182F7C(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_100182FE0(uint64_t result)
{
  *(result + 4) = 0;
  *result = 196808;
  return result;
}

_WORD *sub_100182FF4(_WORD *result, __int16 a2, __int16 a3, __int16 a4, __int16 a5, int a6)
{
  result[2] += a3 * a2;
  result[3] |= a4;
  result[4] |= a5;
  if ((a6 & 0x10000) != 0)
  {
    v6 = result;
    result = sub_10042841C(a6);
    if (v7)
    {

      return sub_1004281CC(v6 + 5, result);
    }
  }

  return result;
}

void sub_1001830D0(uint64_t a1, uint64_t a2)
{
  *a1 = off_100998EC8;
  *(a1 + 8) = *(sub_1000054A8() + 144);
  *(a1 + 12) = 0;
  *(a1 + 16) = a2;
  sub_10018A8C4();
}

void sub_10018362C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  __cxa_free_exception(v31);

  sub_10016898C(v29 + 2232);
  v33 = *(v29 + 1816);
  if (v33)
  {
    sub_10000AD84(v33);
  }

  v34 = *(v29 + 1800);
  if (v34)
  {
    sub_10000AD84(v34);
  }

  sub_100021914(v29 + 1752);

  std::mutex::~mutex((v29 + 1680));
  sub_100188DE4((v29 + 1152));
  sub_10018936C(v29 + 40);
  v35 = *(v29 + 32);
  if (v35)
  {
    sub_10000AD84(v35);
  }

  _Unwind_Resume(a1);
}

void sub_100183728(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049F7E4();
  }

  v4 = a2[3];
  v42 = a2[2];
  v43 = v4;
  v5 = *a2;
  v41 = a2[1];
  v40 = v5;
  v6 = *(a2 + 9);
  v44 = *(a2 + 8);
  v45 = 0;
  v7 = *(a2 + 10);
  v47 = 0;
  v46 = 0;
  sub_100012F38(&v45, v6, v7, (v7 - v6) >> 3);
  v8 = a2[7];
  v48 = a2[6];
  v49 = v8;
  v9 = *(a2 + 17);
  v50 = *(a2 + 16);
  v51 = 0;
  v53 = 0;
  v52 = 0;
  sub_100020574(&v51, v9, *(a2 + 18), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 18) - v9) >> 3));
  memcpy(v54, a2 + 10, 0x181uLL);
  memcpy(v55, a2 + 552, sizeof(v55));
  sub_10016D798(v56, a2 + 1160);
  v62 = *(a2 + 888);
  if ((v54[72] & 0x100) != 0 && (v54[72] & 0x1000000) != 0)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if ((v54[72] & 0x100) == 0)
      {
        sub_1000195BC();
      }

      sub_10049F818(v54[72], buf, v11);
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if ((v54[72] & 0x1000000) == 0)
      {
        sub_1000195BC();
      }

      sub_10049F864(BYTE2(v54[72]), v38, v12);
    }
  }

  else
  {
    v10 = sub_1000054A8();
    if (sub_1000149D4(v10) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_10049F8B0();
    }
  }

  v13 = *(a1 + 1744);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v14[2] = sub_100187780;
  v14[3] = &unk_100999108;
  v14[4] = a1;
  v15 = v40;
  v19 = v44;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_100012F38(&v20, v45, v46, (v46 - v45) >> 3);
  v23 = v48;
  v24 = v49;
  v25 = v50;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100020574(&v26, v51, v52, 0x6DB6DB6DB6DB6DB7 * ((v52 - v51) >> 3));
  memcpy(v29, v54, sizeof(v29));
  memcpy(v30, v55, sizeof(v30));
  sub_10016D798(&v31, v56);
  v37 = v62;
  dispatch_async(v13, v14);
  if (v36 == 1)
  {
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v61 == 1)
  {
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_100183B54(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sp,notifyLutFileReady: received new lut file ready notice for accessory type: %d", buf, 8u);
  }

  v5 = *(a1 + 1744);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100184590;
  v6[3] = &unk_100998F28;
  v6[4] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

void sub_100183C5C(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sp,notifyNNFileReady: received new NN file ready notice for accessory type: %d", buf, 8u);
  }

  v5 = *(a1 + 1744);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001845B4;
  v6[3] = &unk_100998F28;
  v6[4] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

void sub_100183D64(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100168990((v1 + 2232), 0, v1 + 40);
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001697AC(v1 + 2232, 0, &v3);
  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_100183DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100183DEC(uint64_t a1)
{
  *a1 = off_100998EC8;
  sub_10016898C(a1 + 2232);
  v2 = *(a1 + 1816);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  v3 = *(a1 + 1800);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_100021914(a1 + 1752);

  std::mutex::~mutex((a1 + 1680));
  sub_100188E54((a1 + 1552));
  sub_100188E54((a1 + 1472));
  sub_100188E54((a1 + 1392));
  sub_100188F00(a1 + 1352);
  sub_100188F84(a1 + 1312);
  sub_100021914(a1 + 1272);
  sub_100188E54((a1 + 1224));
  sub_100189188((a1 + 1176));
  v4 = *(a1 + 1168);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  std::mutex::~mutex((a1 + 1064));
  sub_10017F048(a1 + 1040, *(a1 + 1048));
  v5 = *(a1 + 992);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  std::mutex::~mutex((a1 + 920));
  v6 = *(a1 + 912);
  *(a1 + 912) = 0;
  if (v6)
  {
    v10 = v6;
    sub_100167554(&v10);
    operator delete();
  }

  std::mutex::~mutex((a1 + 840));
  v7 = *(a1 + 832);
  *(a1 + 832) = 0;
  if (v7)
  {
    v10 = v7;
    sub_100167554(&v10);
    operator delete();
  }

  sub_10017ECA8((a1 + 80));
  sub_10017EFC8(a1 + 48);
  v8 = *(a1 + 32);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  return a1;
}

void sub_100183F68(uint64_t a1)
{
  sub_100183DEC(a1);

  operator delete();
}

uint64_t sub_100183FA0(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (!a3)
  {
    sub_10049F8E4();
  }

  sub_100183FC4(a1, a2, a3);
  return 1;
}

uint64_t sub_100183FC4(uint64_t a1, unsigned __int16 a2, int a3)
{
  v6 = a2;
  std::mutex::lock((a1 + 1680));
  v7 = &v6;
  *(sub_10018B23C((a1 + 1752), &v6) + 5) = a3;
  std::mutex::unlock((a1 + 1680));
  return 1;
}

void sub_100184044(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider::notifyServiceCancel: ticketId %hu", buf, 8u);
  }

  v5 = *(a1 + 1744);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018414C;
  v6[3] = &unk_100998F08;
  v6[4] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

void sub_10018414C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[224];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10041C3F0();
    sub_1002D9B18(v3, v4, v5);
  }

  sub_1001841C4(v2, *(a1 + 40));
  sub_10047CD18(v2 + 144, *(a1 + 40));
  sub_10017D96C((v2 + 5), *(a1 + 40));
  if (!v2[132])
  {
    v2[229] = 0;
  }
}

BOOL sub_1001841C4(uint64_t a1, unsigned __int16 a2)
{
  v5 = a2;
  std::mutex::lock((a1 + 1680));
  v3 = sub_1000222CC((a1 + 1752), &v5);
  if (v3)
  {
    sub_1000223BC((a1 + 1752), v3);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049F910(&v5);
  }

  std::mutex::unlock((a1 + 1680));
  return v3 != 0;
}

void sub_100184278(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider::notifyServiceStop: ticketId %hu", buf, 8u);
  }

  v5 = *(a1 + 1744);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100184380;
  v6[3] = &unk_100998F08;
  v6[4] = a1;
  v7 = a2;
  dispatch_async(v5, v6);
}

void sub_100184380(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[224];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10041C3F0();
    sub_1002D9D9C(v3, v4, v5);
  }

  sub_10047CD18(v2 + 144, *(a1 + 40));
  sub_10017D96C((v2 + 5), *(a1 + 40));
  if (!v2[132])
  {
    v2[229] = 0;
  }
}

void sub_1001843EC(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#sp,RoseSolutionProvider::notifyFileSystemAccessAllowed called", buf, 2u);
  }

  v3 = *(a1 + 1744);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001844AC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_1001844AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100169890(v1 + 2232);
  sub_100168990((v1 + 2232), 0, v1 + 40);
  v2 = *(v1 + 32);
  v8 = *(v1 + 24);
  v9 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001697AC(v1 + 2232, 0, &v8);
  if (v9)
  {
    sub_10000AD84(v9);
  }

  v3 = *(v1 + 12);
  if (v3)
  {
    sub_100168990((v1 + 2232), v3, v1 + 40);
    v4 = *(v1 + 12);
    v5 = *(v1 + 32);
    v6 = *(v1 + 24);
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001697AC(v1 + 2232, v4, &v6);
    if (v7)
    {
      sub_10000AD84(v7);
    }
  }
}

void sub_100184568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184590(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v1 + 12))
  {
    sub_100168990((v1 + 2232), v2, v1 + 40);
  }
}

void sub_1001845B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v1 + 12))
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001697AC(v1 + 2232, v2, &v4);
    if (v5)
    {
      sub_10000AD84(v5);
    }
  }
}

void sub_10018461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184634(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049F984();
  }

  v4 = *a2;
  v5 = *(a2 + 129);
  v29 = *(a2 + 113);
  v30 = v5;
  v31[0] = *(a2 + 145);
  *(v31 + 15) = *(a2 + 160);
  v6 = *(a2 + 65);
  v25 = *(a2 + 49);
  v26 = v6;
  v7 = *(a2 + 97);
  v27 = *(a2 + 81);
  v28 = v7;
  v8 = *(a2 + 33);
  v23 = *(a2 + 17);
  v24 = v8;
  v9 = sub_1002FE75C(a1 + 1632, v4);
  v10 = *(a1 + 1744);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001847C4;
  block[3] = &unk_100998F48;
  block[4] = a1;
  *&block[5] = v4;
  block[6] = v9;
  v13 = v11;
  v20 = v29;
  v21 = v30;
  *v22 = v31[0];
  *&v22[15] = *(v31 + 15);
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v14 = v23;
  v15 = v24;
  dispatch_async(v10, block);
}

uint64_t sub_1001847C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(**(v2 + 16) + 24))(*(v2 + 16), a1 + 40);

  return sub_10018482C(v2, (a1 + 40));
}

uint64_t sub_10018482C(uint64_t a1, double *a2)
{
  kdebug_trace();
  dispatch_assert_queue_V2(*(a1 + 1744));
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049F9B8();
  }

  v4 = sub_1002FE75C(a1 + 1632, *a2);
  if (v6)
  {
    v5.n128_u64[0] = v4;
    sub_100497A14(a2, v38, v5);
    v7 = *(a1 + 1792);
    if (v7)
    {
      sub_1002DE278(v7, v38);
    }

    if (sub_10047C238(a1 + 1152, v38))
    {
      sub_10047D3D0(a1 + 1152, &v36);
      kdebug_trace();
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049F9EC(&v36, v8);
      }

      kdebug_trace();
      v9 = v36;
      v31 = v37;
      if (v36 == v37)
      {
        v10 = 0;
LABEL_50:
        kdebug_trace();
      }

      else
      {
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = v11 + 1;
          v13 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v12;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#sp,computeAndEmitSensorFusionSolution(imu_data): processing solution %d", buf, 8u);
          }

          v14 = *(v9 + 8);
          sub_10018AF1C(&v33, v9 + 16);
          v15 = qword_1009F9820;
          if (!v35)
          {
            break;
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *&buf[4] = v12;
            *&buf[8] = 2048;
            *&buf[10] = v35;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#sp,computeAndEmitSensorFusionSolution(imu_data): solution %d: processing %zu tickets", buf, 0x12u);
          }

          v32 = v12;
          v16 = v33;
          if (v33 != &v34)
          {
            do
            {
              v17 = *(v16 + 13);
              v18 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109120;
                *&buf[4] = v17;
                _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#sp,computeAndEmitSensorFusionSolution(imu_data): emitting solution for ticketId %hu", buf, 8u);
              }

              v19 = sub_1002FE978(a1 + 1632, *v9);
              if (v20)
              {
                sub_10018A750(buf, v17, v14, v9, a2, 1, *&v19);
                (*(**(a1 + 16) + 16))(*(a1 + 16), buf);
                if (v66 == 1 && __p)
                {
                  v65 = __p;
                  operator delete(__p);
                }

                if (v63 == 1 && v61)
                {
                  v62 = v61;
                  operator delete(v61);
                }

                if (v60 == 1)
                {
                  sub_10002074C(v59, v59[1]);
                }

                if (v58 == 1)
                {
                  if (v56)
                  {
                    v57 = v56;
                    operator delete(v56);
                  }

                  if (v54)
                  {
                    v55 = v54;
                    operator delete(v54);
                  }
                }

                v10 = 1;
              }

              else
              {
                v21 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  v25 = *v9;
                  v26 = *(v9 + 8);
                  *buf = 134218496;
                  *&buf[4] = v25;
                  *&buf[12] = 1024;
                  *&buf[14] = v17;
                  v52 = 2048;
                  v53 = v26;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#sp,computeAndEmitSensorFusionSolution(imu_data): could not convert mach cont time %.9f to mach abs time, NOT emitting solution for ticketId %hu, Peer: 0x%llx", buf, 0x1Cu);
                }
              }

              v22 = v16[1];
              if (v22)
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v23 = v16[2];
                  v24 = *v23 == v16;
                  v16 = v23;
                }

                while (!v24);
              }

              v16 = v23;
            }

            while (v23 != &v34);
          }

          v27 = *(a1 + 1792);
          if (v27)
          {
            sub_1002DE704(v27, v38, v9);
          }

          sub_10002074C(&v33, v34);
          v9 += 144;
          v11 = v32;
          if (v9 == v31)
          {
            goto LABEL_50;
          }
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049FA74();
        }

        sub_10002074C(&v33, v34);
      }

      *buf = &v36;
      sub_10018AE8C(buf);
    }

    else
    {
      v10 = 0;
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }

  else
  {
    v28 = qword_1009F9820;
    v10 = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *a2;
      *buf = 134217984;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#sp,computeAndEmitSensorFusionSolution(imu_data): failed to convert mach abs time %.9f to mach continuous; ignoring", buf, 0xCu);
      v10 = 0;
    }
  }

  return v10 & 1;
}

void sub_100184DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  a45 = &a22;
  sub_10018AE8C(&a45);
  sub_10018A840(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_100184E58(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049FAE8();
  }

  switch(*a2)
  {
    case 0:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049FB1C();
      }

      return kdebug_trace();
    case 1:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A037C();
      }

      if ((*(a2 + 560) & 1) == 0)
      {
        sub_1004A03B0();
      }

      kdebug_trace();
      if ((*(a2 + 560) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_100185398(a1, (a2 + 8));
      break;
    case 2:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FEB4();
      }

      if ((*(a2 + 784) & 1) == 0)
      {
        sub_10049FEE8();
      }

      kdebug_trace();
      if ((*(a2 + 784) & 1) == 0)
      {
        goto LABEL_75;
      }

      (*(*a1 + 32))(a1, a2 + 568);
      break;
    case 3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A02B0();
      }

      if ((*(a2 + 864) & 1) == 0)
      {
        sub_1004A02E4();
      }

      kdebug_trace();
      if ((*(a2 + 864) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_1001858F8(a1, (a2 + 792));
      break;
    case 4:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A01E4();
      }

      if ((*(a2 + 1000) & 1) == 0)
      {
        sub_1004A0218();
      }

      kdebug_trace();
      if ((*(a2 + 1000) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_100185B14(a1, (a2 + 872));
      break;
    case 5:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A0118();
      }

      if ((*(a2 + 1088) & 1) == 0)
      {
        sub_1004A014C();
      }

      kdebug_trace();
      if ((*(a2 + 1088) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_100185CA4(a1, (a2 + 1008));
      break;
    case 6:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FF80();
      }

      if ((*(a2 + 1320) & 1) == 0)
      {
        sub_10049FFB4();
      }

      kdebug_trace();
      if ((*(a2 + 1320) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_100185F8C(a1, a2 + 1208);
      break;
    case 7:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FDE8();
      }

      if ((*(a2 + 1592) & 1) == 0)
      {
        sub_10049FE1C();
      }

      kdebug_trace();
      if ((*(a2 + 1592) & 1) == 0)
      {
        goto LABEL_75;
      }

      (*(*a1 + 40))(a1, a2 + 1328);
      break;
    case 8:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FD1C();
      }

      if ((*(a2 + 1672) & 1) == 0)
      {
        sub_10049FD50();
      }

      kdebug_trace();
      if ((*(a2 + 1672) & 1) == 0)
      {
        goto LABEL_75;
      }

      (*(*a1 + 48))(a1, a2 + 1600);
      break;
    case 9:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FC50();
      }

      if ((*(a2 + 1728) & 1) == 0)
      {
        sub_10049FC84();
      }

      kdebug_trace();
      if ((*(a2 + 1728) & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_100186260(a1, a2 + 1680);
      break;
    case 0xA:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_10049FB84();
      }

      if ((*(a2 + 1800) & 1) == 0)
      {
        sub_10049FBB8();
      }

      kdebug_trace();
      if ((*(a2 + 1800) & 1) == 0)
      {
LABEL_75:
        sub_1000195BC();
      }

      sub_1001862F4(a1, a2 + 1736);
      break;
    case 0xB:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A004C();
      }

      if ((*(a2 + 1200) & 1) == 0)
      {
        sub_1004A0080();
      }

      sub_100185E08(a1, (a2 + 1096));
      break;
    case 0xC:
      if ((*(a2 + 2032) & 1) == 0)
      {
        sub_10049FB58();
      }

      sub_100186388(a1, a2 + 1808);
      break;
    default:
      return kdebug_trace();
  }

  return kdebug_trace();
}