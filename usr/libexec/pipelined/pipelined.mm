void sub_100001838(char a1, sqlite3 *db)
{
  if (a1 == 11)
  {
    if (db)
    {
      v3 = sqlite3_db_filename(db, "main");
      if (v3)
      {
        v4 = v3;
        v5 = sqlite3_close(db);
        if (v5)
        {
          v6 = v5;
          if (qword_10045B080 != -1)
          {
            sub_10038630C();
          }

          v7 = qword_10045B088;
          if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
            v8 = *__error();
            *buf = 67240448;
            *v59 = v6;
            *&v59[4] = 1026;
            *&v59[6] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to successfully close db handle, rc, %{public}d, errno, %{public}d", buf, 0xEu);
          }
        }

        v9 = strlen(v4);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          operator new();
        }

        v51 = v9;
        if (v9)
        {
          memmove(&v49, v4, v9);
        }

        *(&v49 + v10) = 0;
        if (qword_10045B080 != -1)
        {
          sub_100386320();
        }

        v13 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
        {
          v15 = &v49;
          if ((v51 & 0x80u) != 0)
          {
            v15 = v49;
          }

          *buf = 136446210;
          *v59 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting database and ancillary files at path, %{public}s", buf, 0xCu);
        }

        if ((v51 & 0x80u) == 0)
        {
          v16 = &v49;
        }

        else
        {
          v16 = v49;
        }

        if (remove(v16, v14))
        {
          if (qword_10045B080 != -1)
          {
            sub_100386320();
          }

          v18 = qword_10045B088;
          if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
            if ((v51 & 0x80u) == 0)
            {
              v19 = &v49;
            }

            else
            {
              v19 = v49;
            }

            v20 = *__error();
            v21 = __error();
            v22 = strerror(*v21);
            *buf = 136446722;
            *v59 = v19;
            *&v59[8] = 1026;
            v60 = v20;
            v61 = 2082;
            v62 = v22;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "could not remove file, path, %{public}s, errno, %{public}d, error, %{public}s", buf, 0x1Cu);
          }
        }

        if ((v51 & 0x80u) == 0)
        {
          v23 = v51;
        }

        else
        {
          v23 = v50;
        }

        if (v23 + 8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        if (v23 + 8 >= 0x17)
        {
          operator new();
        }

        v56[1] = 0;
        v57 = 0;
        v56[0] = 0;
        HIBYTE(v57) = v23 + 8;
        if (v23)
        {
          if ((v51 & 0x80u) == 0)
          {
            v24 = &v49;
          }

          else
          {
            v24 = v49;
          }

          memmove(v56, v24, v23);
        }

        strcpy(v56 + v23, "-journal");
        if (v57 >= 0)
        {
          v25 = v56;
        }

        else
        {
          v25 = v56[0];
        }

        if (remove(v25, v17))
        {
          if (qword_10045B080 != -1)
          {
            sub_100386320();
          }

          v27 = qword_10045B088;
          if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
          {
            if (v57 >= 0)
            {
              v28 = v56;
            }

            else
            {
              v28 = v56[0];
            }

            v29 = *__error();
            v30 = __error();
            v31 = strerror(*v30);
            *buf = 136446722;
            *v59 = v28;
            *&v59[8] = 1026;
            v60 = v29;
            v61 = 2082;
            v62 = v31;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#warning, could not unlink file, path, %{public}s, errno, %{public}d, error, %{public}s", buf, 0x1Cu);
          }
        }

        if ((v51 & 0x80u) == 0)
        {
          v32 = v51;
        }

        else
        {
          v32 = v50;
        }

        if (v32 + 4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        if (v32 + 4 >= 0x17)
        {
          operator new();
        }

        v54[1] = 0;
        v55 = 0;
        v54[0] = 0;
        HIBYTE(v55) = v32 + 4;
        if (v32)
        {
          if ((v51 & 0x80u) == 0)
          {
            v33 = &v49;
          }

          else
          {
            v33 = v49;
          }

          memmove(v54, v33, v32);
        }

        strcpy(v54 + v32, "-wal");
        if (v55 >= 0)
        {
          v34 = v54;
        }

        else
        {
          v34 = v54[0];
        }

        if (remove(v34, v26))
        {
          if (qword_10045B080 != -1)
          {
            sub_100386320();
          }

          v36 = qword_10045B088;
          if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
          {
            if (v55 >= 0)
            {
              v37 = v54;
            }

            else
            {
              v37 = v54[0];
            }

            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            *buf = 136446722;
            *v59 = v37;
            *&v59[8] = 1026;
            v60 = v38;
            v61 = 2082;
            v62 = v40;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#warning, could not unlink file, path, %{public}s, errno, %{public}d, error, %{public}s", buf, 0x1Cu);
          }
        }

        if ((v51 & 0x80u) == 0)
        {
          v41 = v51;
        }

        else
        {
          v41 = v50;
        }

        if (v41 + 4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        if (v41 + 4 >= 0x17)
        {
          operator new();
        }

        __p[1] = 0;
        v53 = 0;
        __p[0] = 0;
        HIBYTE(v53) = v41 + 4;
        if (v41)
        {
          if ((v51 & 0x80u) == 0)
          {
            v42 = &v49;
          }

          else
          {
            v42 = v49;
          }

          memmove(__p, v42, v41);
        }

        strcpy(__p + v41, "-shm");
        v43 = HIBYTE(v53);
        if (v53 >= 0)
        {
          v44 = __p;
        }

        else
        {
          v44 = __p[0];
        }

        if (remove(v44, v35))
        {
          if (qword_10045B080 != -1)
          {
            sub_100386320();
          }

          v45 = qword_10045B088;
          if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *__error();
            v47 = __error();
            v48 = strerror(*v47);
            *buf = 136446722;
            *v59 = v44;
            *&v59[8] = 1026;
            v60 = v46;
            v61 = 2082;
            v62 = v48;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#warning, could not unlink file, path, %{public}s, errno, %{public}d, error, %{public}s", buf, 0x1Cu);
            v43 = HIBYTE(v53);
          }
        }

        if (v43 < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
LABEL_106:
            if ((SHIBYTE(v57) & 0x80000000) == 0)
            {
              goto LABEL_107;
            }

            goto LABEL_112;
          }
        }

        else if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

        operator delete(v54[0]);
        if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
LABEL_107:
          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_108;
          }

LABEL_113:
          operator delete(v49);
LABEL_108:
          off_10045BD50();
        }

LABEL_112:
        operator delete(v56[0]);
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_113;
      }

      if (qword_10045B080 != -1)
      {
        sub_10038630C();
      }

      v11 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "null filepath for corrupt databse, we can't take any action";
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_10045B080 != -1)
      {
        sub_10038630C();
      }

      v11 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v12 = "null sqlite3 handle for corrupt database, we can't take any action";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, buf, 2u);
      }
    }
  }
}

void sub_100002054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a14 & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(a27);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_10000210C(sqlite3 **a1, const char *a2, const std::string::value_type *a3)
{
  errmsg = 0;
  v5 = sqlite3_exec(*a1, a2, 0, 0, &errmsg);
  sub_100001838(v5, *a1);
  if (v5)
  {
    v6 = __error();
    sub_10023B1C8(*v6, &v19);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v15, " w/ ");
    v7 = std::string::insert(&v15, 0, a3);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v14, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v19;
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v18, &v17);
    v18.__vftable = &off_100440BD8;
    sub_10010A984(v13);
  }

  sqlite3_free(errmsg);
}

void sub_100002434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v68 - 160));
    v70 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v68 - 176));
      if (*(v68 - 185) < 0)
      {
        operator delete(*(v68 - 208));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v68 - 217) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v68 - 217) & 0x80000000) == 0)
      {
LABEL_19:
        if (a66 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(*(v68 - 240));
      if (a66 < 0)
      {
LABEL_20:
        operator delete(a61);
        if ((v67 & 1) == 0)
        {
LABEL_27:
          if (*(v68 - 73) < 0)
          {
            operator delete(*(v68 - 96));
          }

          sqlite3_free(*(v68 - 72));
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v66);
        goto LABEL_27;
      }

LABEL_25:
      if (!v67)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    operator delete(v70);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v68 - 160));
  v70 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

unint64_t sub_100002668(uint64_t a1)
{
  sub_100007ABC(a1, &__p);
  sub_100002F5C(&__p, 0, &v9);
  if (v9 <= 1)
  {
    v4 = 0;
    v3 = 0;
    v5 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_100007BA8(&v9, &__p, 294914, 0);
    if (qword_10045B080 != -1)
    {
      sub_100384BD0();
    }

    v1 = qword_10045B088;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      sub_100002F5C(&__p, 0, v7);
      *buf = 67109120;
      v11 = v7[1];
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "db permissions = %x", buf, 8u);
    }

    v2 = sub_1000065A4(&v9);
    LODWORD(v5) = v2;
    v3 = v2 & 0xFFFFFFFF00000000;
    sub_1000065A0(&v9);
    v4 = v5 & 0xFFFFFF00;
    v5 = v5;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  return v3 | v4 | v5;
}

void sub_1000027CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000065A0(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

sqlite3 **sub_100002814(sqlite3 **a1, _BYTE *a2, int a3, int a4)
{
  *a1 = 0;
  if (qword_10045B080 != -1)
  {
    sub_10038630C();
  }

  v8 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Opening db %s", buf, 0xCu);
  }

  if (a4 == 1)
  {
    if (a2[23] >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = sub_100007C48(a2);
    v12 = v11;
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v38) = v11;
    if (v11)
    {
      memmove(buf, v10, v11);
    }

    buf[v12] = 0;
    sub_100007D28(buf, 0, 0);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*buf);
    }
  }

  if (a2[23] >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = sqlite3_open_v2(v13, a1, a3, 0);
  sub_100001838(v14, *a1);
  if (v14)
  {
    v21 = __error();
    sub_10023B1C8(*v21, &v34);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v30, " w/ ");
    v22 = std::string::insert(&v30, 0, "Couldn't open db");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v29, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v34;
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v29;
    }

    else
    {
      v24 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v31, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v33, &v32);
    v33.__vftable = &off_100440BD8;
    sub_10010A984(v28);
  }

  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v15 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v17 = *a1;
    v18 = sqlite3_db_filename(*a1, "main");
    *buf = 136315650;
    *&buf[4] = v16;
    v36 = 2048;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Opened db %s with sqlite handle %p. main = %s", buf, 0x20u);
  }

  sub_10000210C(a1, "PRAGMA auto_vacuum = 2", "Unable to enable auto_vacuum");
  sub_10000210C(a1, "PRAGMA journal_mode=WAL;", "Failed to set journal_mode=WAL");
  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v19 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Journal mode set to WAL", buf, 2u);
  }

  return a1;
}

void sub_100002D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    sub_10019FF4C((v62 - 176));
    v64 = a33;
    if (!a33)
    {
LABEL_10:
      std::runtime_error::~runtime_error((v62 - 216));
      if (a60 < 0)
      {
        operator delete(a55);
        if ((a41 & 0x80000000) == 0)
        {
LABEL_12:
          if ((a53 & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }
      }

      else if ((a41 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(a36);
      if ((a53 & 0x80000000) == 0)
      {
LABEL_13:
        if (a47 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

LABEL_18:
      operator delete(a48);
      if (a47 < 0)
      {
LABEL_14:
        operator delete(a42);
        if ((v61 & 1) == 0)
        {
LABEL_21:
          if (*(v62 - 177) < 0)
          {
            operator delete(*(v62 - 200));
            _Unwind_Resume(a1);
          }

          _Unwind_Resume(a1);
        }

LABEL_20:
        __cxa_free_exception(v60);
        goto LABEL_21;
      }

LABEL_19:
      if (!v61)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_9:
    operator delete(v64);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a23);
  sub_10019FF4C((v62 - 176));
  v64 = a33;
  if (!a33)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

int *sub_100002F5C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

uint64_t sub_1000031C8(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(a1, 47);
      return v1;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1 + v1;
    goto LABEL_6;
  }

  return v1;
}

void *sub_100003228(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000D39C();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_1000032E4(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if (a1 == a2)
    {
      if (v2 < 0)
      {
        sub_100003228(__p, *a2, v4);
      }

      else
      {
        *__p = *a2;
        v12 = *(a2 + 16);
      }

      sub_1000032E4(a1, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v8 = *a2;
      if ((v2 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (*v9 != 47)
      {
        sub_1000031C8(a1);
        v2 = *(a2 + 23);
        v8 = *a2;
        v4 = *(a2 + 8);
        v3 = *(a2 + 23);
      }

      if (v3 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = v8;
      }

      if (v3 >= 0)
      {
        v4 = v2;
      }

      std::string::append(a1, v10, v4);
    }
  }
}

void sub_1000033D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000033EC(uint64_t a1)
{
  sub_100002F5C(a1, 0, &v17);
  if (v17 != 3)
  {
    if (qword_10045B080 == -1)
    {
      v10 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100384BD0();
      v10 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }
    }

    LOWORD(v17) = 0;
    v6 = "dbVersionMismatchWithExpected: directory is missing - no need to remove";
    v7 = v10;
    v8 = OS_LOG_TYPE_INFO;
LABEL_12:
    v9 = 2;
    goto LABEL_13;
  }

  v2 = sub_100002668(a1);
  if (v2 == 2)
  {
    if (qword_10045B080 == -1)
    {
      v14 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        if (!sub_100184AE4(a1))
        {
          goto LABEL_14;
        }

        if (qword_10045B080 == -1)
        {
          v15 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_100384BD0();
          v15 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }

        LOWORD(v17) = 0;
        v6 = "dbVersionMismatchWithExpected: #warning, user_version==0, but tables exist";
        v7 = v15;
        v8 = OS_LOG_TYPE_FAULT;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100384BD0();
      v14 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#warning, dbVersionMismatchWithExpected: On-disk db has user_version == 0.", &v17, 2u);
    goto LABEL_25;
  }

  if (v2 == 1)
  {
    if (qword_10045B080 == -1)
    {
      v12 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100384BD0();
      v12 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }
    }

    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    v17 = 136315138;
    v18[0] = v13;
    v6 = "dbVersionMismatchWithExpected: No on-disk db in %s";
    v7 = v12;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 12;
    goto LABEL_13;
  }

  if (!v2)
  {
    v4 = HIDWORD(v2);
    if (HIDWORD(v2) == 17)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
        v5 = qword_10045B088;
        if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }

      v5 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
LABEL_8:
        v17 = 67240192;
        LODWORD(v18[0]) = 17;
        v6 = "dbVersionMismatchWithExpected: On-disk db in is correct version, %{public}d";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
        v9 = 8;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v7, v8, v6, &v17, v9);
      }

LABEL_14:
      v3 = 0;
      return v3 & 1;
    }

    if (qword_10045B080 == -1)
    {
      v16 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:
        v17 = 67240448;
        LODWORD(v18[0]) = v4;
        WORD2(v18[0]) = 1026;
        *(v18 + 6) = 17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "dbVersionMismatchWithExpected: current user_version, %{public}d, expected, %{public}d", &v17, 0xEu);
        v3 = 1;
        return v3 & 1;
      }
    }

    else
    {
      sub_100384BD0();
      v16 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }
    }

    v3 = 1;
  }

  return v3 & 1;
}

void sub_100003AD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100003AA8);
}

uint64_t sub_100003AE8(uint64_t a1)
{
  v2 = sub_100003F78();
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Runtime configuration is null");
  }

  return (*(*v2 + 16))(v2, a1);
}

void sub_100003BD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(a1);
    if (qword_10045B050 != -1)
    {
      sub_100383D08();
    }

    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      sub_1000D83A8();
    }

    *v2 = 0;
    __cxa_end_catch();
    JUMPOUT(0x100003B4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003CDC(uint64_t a1, unsigned __int16 *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_100367B9C(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387BE8();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

void sub_100003F84(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v14 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  std::locale::locale(&v11);
  v8 = v14;
  if (v14 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (v14 < 0)
  {
    v8 = __dst[1];
  }

  sub_100004198(&__p, v9, &v11, &v8[v9]);
  std::locale::~locale(&v11);
  if (v14 < 0)
  {
    operator delete(__dst[0]);
  }

  v10 = sub_10000426C((a2 + 8), &__p);
  if (v10)
  {
    sub_10000F9FC(a3, (v10 + 5));
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  sub_100004424(__s, __dst);
  if (LODWORD(__dst[0]) == SLODWORD(__dst[0]) >> 31)
  {
    sub_100004C58(__s, (a2 + 72), a3);
  }

  else
  {
    sub_10000F878(a3, __dst);
  }

  sub_100005B18(__dst);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_100004150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100005B18(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100004198(std::string *a1, char *a2, std::locale *this, char *a4)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a4)
  {
    v6 = a2;
    do
    {
      v8 = *v6;
      v9 = std::locale::use_facet(this, &std::ctype<char>::id);
      v10 = (v9->__vftable[1].__on_zero_shared)(v9, v8);
      std::string::push_back(a1, v10);
      ++v6;
    }

    while (v6 != a4);
  }
}

void sub_10000423C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t **sub_10000426C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_100004424(char *__s@<X1>, uint64_t a2@<X8>)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  std::locale::locale(&v8);
  v6 = v10;
  if (v10 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v10 < 0)
  {
    v6 = __dst[1];
  }

  sub_100004198(&__p, v7, &v8, &v6[v7]);
  std::locale::~locale(&v8);
  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1000049F0(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10000456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000045A4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void sub_1000049F0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  std::locale::locale(&v12);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  sub_100004B84(&__p, v5, &v12, &v5[v4]);
  std::locale::~locale(&v12);
  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = getenv(p_p);
  if (!v8)
  {
    *a2 = 0;
    if ((v6 & 0x80) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  v9 = v8;
  v10 = strlen(v8);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v10;
  if (v10)
  {
    memmove(&v12, v9, v10);
  }

  *(&v12 + v11) = 0;
  *(a2 + 8) = v12;
  *(a2 + 24) = v13;
  *a2 = 3;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_20;
  }
}

void sub_100004B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004B84(std::string *a1, char *a2, std::locale *this, char *a4)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a4)
  {
    v6 = a2;
    do
    {
      v8 = *v6;
      v9 = std::locale::use_facet(this, &std::ctype<char>::id);
      v10 = (v9->__vftable[1].~facet)(v9, v8);
      std::string::push_back(a1, v10);
      ++v6;
    }

    while (v6 != a4);
  }
}

void sub_100004C28(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void sub_100004C58(char *__s@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  std::locale::locale(&v10);
  v8 = v12;
  if (v12 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (v12 < 0)
  {
    v8 = __dst[1];
  }

  sub_100004198(&__p, v9, &v10, &v8[v9]);
  std::locale::~locale(&v10);
  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  sub_100004DD8(a2, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100004DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004DD8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a1[3];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithFormat:@"%@%s", a1[3], v8];
  v10 = v9;
  v11 = a1[1];
  v12 = a1[2];
  if (v12 == kCFPreferencesCurrentUser)
  {
    v13 = CFPreferencesCopyAppValue(v9, v11);
  }

  else
  {
    v13 = CFPreferencesCopyValue(v9, v11, v12, kCFPreferencesCurrentHost);
  }

  v14 = v13;
  sub_100004EDC(a3, v13);
  if (v14)
  {
    CFRelease(v14);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_100004EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100328D98(va);

  _Unwind_Resume(a1);
}

void sub_100004EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 ps_STLString];
      *(a1 + 8) = v50;
      *a1 = 3;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v3;
          v38.__vftable = 0;
          v38.__imp_.__imp_ = 0;
          *&v39 = 0;
          sub_1003285E0(&v38, [v8 count]);
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v10)
          {
            v11 = *v42;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                while (1)
                {
                  if (*v42 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  sub_100004EDC(&v50, *(*(&v41 + 1) + 8 * i));
                  imp = v38.__imp_.__imp_;
                  if (v38.__imp_.__imp_ < v39)
                  {
                    break;
                  }

                  v38.__imp_.__imp_ = sub_10032876C(&v38, &v50);
                  sub_100005B18(&v50);
                  i = i + 1;
                  if (v10 == i)
                  {
                    goto LABEL_17;
                  }
                }

                sub_10000F878(v38.__imp_.__imp_, &v50);
                v38.__imp_.__imp_ = imp + 32;
                sub_100005B18(&v50);
              }

LABEL_17:
              v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v10);
          }

          operator new();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v29 = objc_opt_class();
          NSStringFromClass(v29);
          v30 = [NSString stringWithFormat:@"Unsupported type %@ with value %@", objc_claimAutoreleasedReturnValue(), v3];
          __cxa_allocate_exception(0x40uLL);
          if (v30)
          {
            [v30 ps_STLString];
          }

          else
          {
            memset(&v50, 0, sizeof(v50));
          }

          std::runtime_error::runtime_error(&v38, &v50);
          v38.__vftable = &off_1004338D0;
          sub_10010A984(v31);
        }

        v14 = v3;
        v38 = 0;
        v39 = 0u;
        v40 = 1.0;
        prime = vcvtps_u32_f32([v14 count] / 1.0);
        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
        }

        if (prime > v38.__imp_.__imp_)
        {
          goto LABEL_29;
        }

        if (prime < v38.__imp_.__imp_)
        {
          v16 = vcvtps_u32_f32(*(&v39 + 1) / v40);
          if (v38.__imp_.__imp_ < 3 || (v17 = vcnt_s8(v38.__imp_.__imp_), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
          {
            v16 = std::__next_prime(v16);
          }

          else
          {
            v18 = 1 << -__clz(v16 - 1);
            if (v16 >= 2)
            {
              v16 = v18;
            }
          }

          if (prime <= v16)
          {
            prime = v16;
          }

          if (prime < v38.__imp_.__imp_)
          {
LABEL_29:
            sub_10000FE58(&v38, prime);
          }
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v19 = v14;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (!v20)
        {
LABEL_71:

          operator new();
        }

        v21 = *v35;
LABEL_42:
        v22 = 0;
        while (1)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          if (v23)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }

          else
          {
            isKindOfClass = 0;
          }

          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = v26;
          if (v26)
          {
            [v26 ps_STLStringOnNil:@"nil"];
            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v33 = 0;
            if ((isKindOfClass & 1) == 0)
            {
LABEL_60:
              sub_1000474A4(v46, "");
              sub_10017F360("Unsupported key type ", &v50);
              if (SHIBYTE(v33) < 0)
              {
                sub_100003228(&v51, __p[0], __p[1]);
              }

              else
              {
                v51 = *__p;
                v52 = v33;
              }

              sub_1000E661C(v46, &v50, 2);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(v51);
                if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_68;
                }

LABEL_65:
                if (SHIBYTE(v47) < 0)
                {
LABEL_69:
                  operator delete(v46[0]);
                }
              }

              else
              {
                if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_65;
                }

LABEL_68:
                operator delete(v50.__r_.__value_.__l.__data_);
                if (SHIBYTE(v47) < 0)
                {
                  goto LABEL_69;
                }
              }

              sub_10003F5D0(&v45);
            }
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (v23)
          {
            [v23 ps_STLString];
          }

          else
          {
            v46[0] = 0;
            v46[1] = 0;
            v47 = 0;
          }

          v28 = [v19 objectForKeyedSubscript:v23];
          sub_100004EDC(&v50, v28);
          sub_100328964(&v38, v46);
          sub_100005B18(&v50);

          if (SHIBYTE(v47) < 0)
          {
            operator delete(v46[0]);
          }

          if (v20 == ++v22)
          {
            v20 = [v19 countByEnumeratingWithState:&v34 objects:v48 count:16];
            if (!v20)
            {
              goto LABEL_71;
            }

            goto LABEL_42;
          }
        }
      }

      v4 = v3;
      v5 = *[v4 objCType];
      if ((v5 & 0xFFFFFFFD) == 0x64)
      {
        [v4 doubleValue];
        *(a1 + 8) = v6;
        v7 = 4;
      }

      else if ((v5 & 0xFFFFFFDF) == 0x51)
      {
        *(a1 + 8) = [v4 longLongValue];
        v7 = 2;
      }

      else
      {
        *(a1 + 8) = [v4 intValue];
        v7 = 1;
      }

      *a1 = v7;
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_100005A14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v59 - 192));
  if (a53 < 0)
  {
    operator delete(a48);
  }

  __cxa_end_catch();
  JUMPOUT(0x100005AF0);
}

void sub_100005AC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100005AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_10000F734(&a31);

  _Unwind_Resume(a1);
}

void sub_100005B18(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 > 2)
  {
    if (v1 > 4)
    {
      if (v1 == 5)
      {
        v3 = *(a1 + 8);
        if (!v3)
        {
          return;
        }

        v4 = *v3;
        if (*v3)
        {
          v5 = v3[1];
          v6 = *v3;
          if (v5 != v4)
          {
            do
            {
              v5 -= 32;
              sub_100005B18(v5);
            }

            while (v5 != v4);
            v6 = *v3;
          }

          v3[1] = v4;
          operator delete(v6);
        }
      }

      else
      {
        v7 = *(a1 + 8);
        if (!v7)
        {
          return;
        }

        v8 = *(v7 + 16);
        if (v8)
        {
          do
          {
            v10 = *v8;
            sub_100005B18(v8 + 5);
            if (*(v8 + 39) < 0)
            {
              operator delete(v8[2]);
            }

            operator delete(v8);
            v8 = v10;
          }

          while (v10);
        }

        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      operator delete();
    }

    if (v1 == 3 && *(a1 + 31) < 0)
    {
      v2 = *(a1 + 8);

      operator delete(v2);
    }
  }
}

uint64_t sub_100005C88(uint64_t result, __int16 a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100005C94(uint64_t a1, unsigned int *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_1000D8460(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100383B80();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

float sub_100005F78(uint64_t a1, float *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_1002FB174(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387208();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

sqlite3 **sub_100006244(sqlite3 **a1)
{
  if (!*a1)
  {
    return a1;
  }

  if (qword_10045B080 == -1)
  {
    v2 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  sub_10038630C();
  v2 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    v3 = *a1;
    v4 = sqlite3_db_filename(*a1, "main");
    v9 = 134218242;
    v10 = v3;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Closing sqlite handle %p. main = %s", &v9, 0x16u);
  }

LABEL_5:
  v5 = sqlite3_close(*a1);
  v6 = v5;
  if (v5)
  {
    sub_100001838(v5, *a1);
    if (qword_10045B080 != -1)
    {
      sub_100386320();
      v7 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        return a1;
      }

      goto LABEL_8;
    }

    v7 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v9 = 67109120;
      LODWORD(v10) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error closing db (error %d)", &v9, 8u);
    }
  }

  return a1;
}

void sub_1000063DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

void sub_1000063E8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

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
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100006584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000065A4(sqlite3 **a1)
{
  v38 = 20;
  strcpy(buf, "PRAGMA user_version;");
  v2 = _os_activity_create(&_mh_execute_header, "query DB version", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  sub_1000074F0(a1, buf, v2, &pStmt);

  if (v38 < 0)
  {
    operator delete(*buf);
  }

  v3 = 0;
  v4 = 2;
  v5 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    while (1)
    {
      v7 = sqlite3_step(i);
      v8 = v7;
      if (v7 != 100)
      {
        break;
      }

      if (v3)
      {
        sub_100384AB4();

        abort_report_np();
        __break(1u);
        goto LABEL_46;
      }

      if (sqlite3_column_type(v5, 0) != 5)
      {
        v3 = sqlite3_column_int(v5, 0);
        if (v3)
        {
          v4 = 0;
        }

        goto LABEL_14;
      }

      v3 = 0;
      i = pStmt;
    }

    if (v7 == 101)
    {
      break;
    }

    if (v7 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v12 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_46:
        sub_100384BD0();
        v12 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
LABEL_24:
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Query constraint violation", buf, 2u);
        }
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v7, db);
    if (v8)
    {
      v13 = __error();
      sub_10023B1C8(*v13, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v32, " w/ ");
      v14 = std::string::insert(&v32, 0, "Failed sqlite3_step");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v31, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v31 = __dst;
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v31;
      }

      else
      {
        v19 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v33, v19, size);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v35, &v34);
      v35.__vftable = &off_100440BD8;
      sub_10010A984(v30);
    }

LABEL_14:
    ;
  }

  v9 = sqlite3_reset(pStmt);
  sub_100001838(v9, db);
  if (v9)
  {
    v16 = __error();
    sub_10023B1C8(*v16, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v32, " w/ ");
    v17 = std::string::insert(&v32, 0, "Failed to execute query");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v31, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = __dst;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v31;
    }

    else
    {
      v23 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v31.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v33, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v30);
  }

  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v10 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "DB version retrieved from db = %d", buf, 8u);
  }

  sub_1000063E8(&pStmt);

  return v4 | (v3 << 32);
}

void sub_100006FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_3:
    if (a40 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a15);
  if (a40 < 0)
  {
LABEL_4:
    operator delete(a35);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    *(v74 - 176) = v72;
    if (*(v74 - 145) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a28);
  *(v74 - 176) = v72;
  if (*(v74 - 145) < 0)
  {
LABEL_6:
    operator delete(*(v74 - 168));
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a46 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v74 - 144));
    v76 = a51;
    if (!a51)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v74 - 216));
      if (*(v74 - 217) < 0)
      {
        operator delete(*(v74 - 240));
        if (a59 < 0)
        {
LABEL_18:
          operator delete(a54);
          if ((a71 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a59 < 0)
      {
        goto LABEL_18;
      }

      if ((a71 & 0x80000000) == 0)
      {
LABEL_19:
        if (a65 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a66);
      if (a65 < 0)
      {
LABEL_20:
        operator delete(a60);
        if ((v73 & 1) == 0)
        {
LABEL_27:
          if (*(v74 - 177) < 0)
          {
            operator delete(*(v74 - 200));
            sub_100184AB0(&a12);
            _Unwind_Resume(a1);
          }

          sub_100184AB0(&a12);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v71);
        goto LABEL_27;
      }

LABEL_25:
      if (!v73)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a52 = v76;
    operator delete(v76);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a41);
  sub_10019FF4C((v74 - 144));
  v76 = a51;
  if (!a51)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1000074F0(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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

void sub_100007840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
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
            sub_100184AB0(v68);

            _Unwind_Resume(a1);
          }

          sub_100184AB0(v68);

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

void sub_100007ABC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 10;
  strcpy(__p, "privacy.db");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  sub_1000032E4(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100007B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

size_t sub_100007BAC(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

size_t sub_100007C48(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v17 = 0;
  v3 = sub_100007BAC(a1, v2, &v17);
  v4 = v1[23];
  v5 = *v1;
  if (v2 >= v17)
  {
    v6 = v17;
  }

  else
  {
    v6 = v2;
  }

  if (v4 >= 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = *v1;
  }

  v8 = v7 - 1;
  v9 = v2;
  while (v9 > v17)
  {
    v10 = v9 - 1;
    v11 = v8[v9--];
    if (v11 == 47)
    {
      v6 = v10 + 1;
      break;
    }
  }

  if (v6 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v6;
  }

  if (v4 >= 0)
  {
    v13 = v1;
  }

  else
  {
    v13 = *v1;
  }

  v14 = v13 - 1;
  v15 = v6;
  while (v15 > v17)
  {
    if (v14[v15] != 47)
    {
      return v15;
    }

    if (v3 == --v15)
    {
      if (v2 == v6)
      {
        return v3;
      }

      else
      {
        return v3 + 1;
      }
    }
  }

  if (v2 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_100007D28(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (a2)
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    if (stat(v6, &v12) < 0)
    {
      v8 = *__error();
      goto LABEL_17;
    }

    st_mode = v12.st_mode;
    if ((v12.st_mode & 0xF000) != 0x4000)
    {
      v8 = 20;
LABEL_17:
      sub_1000142A8(v8, a1, a2, a3, "boost::filesystem::create_directory");
      return 0;
    }
  }

  else
  {
    st_mode = 511;
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (mkdir(v9, st_mode))
  {
    v10 = *__error();
    memset(&v12, 0, 24);
    sub_100002F5C(a1, &v12, &v13);
    if (v13 != 3)
    {
      sub_10001413C(v10, a1, a3, "boost::filesystem::create_directory");
    }

    return 0;
  }

  return 1;
}

void sub_100007F6C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100007F84(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100007FA8()
{
  if (qword_10045D4A0 != -1)
  {
    sub_100387184();
  }

  return qword_10045D498;
}

void sub_100007FE8(uint64_t a1, float a2)
{
  *(a1 + 16) = a2;
  sub_100008150(a1, &v4);
  (*(*v4 + 32))(v4, *(a1 + 16));
  v3 = v5;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *sub_1000080C0()
{
  if ((atomic_load_explicit(&qword_10045D798, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D798))
  {
    return &qword_10045D918;
  }

  qword_10045D918 = sub_1000DD47C();
  unk_10045D920 = v1;
  byte_10045D928 = 0;
  byte_10045D930 = 0;
  byte_10045D932 = 0;
  __cxa_guard_release(&qword_10045D798);
  return &qword_10045D918;
}

void sub_100008150(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100008270(a1, &v9);
    v5 = v9;
    v9 = 0uLL;
    v6 = *(a1 + 32);
    *(a1 + 24) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = *(a1 + 24);
  }

  v8 = *(a1 + 32);
  *a2 = v4;
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_100008270@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = result;
  *a2 = 0;
  a2[1] = 0;
  v5 = *result;
  if (*result <= 1)
  {
    if (!v5)
    {
      v17 = *(result + 16);
      sub_100009224((result + 152), &v27);
      sub_1002F9F88(110, v17, &v27, 1, 0, 0, *(v4 + 20));
    }

    if (v5 == 1)
    {
      v7 = *(result + 16);
      sub_100009224((result + 152), &__p);
      sub_1002F9F88(110, v7, &__p, 0, 0, 0, *(v4 + 20));
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v29 = sub_100009214();
        LOWORD(v30) = v8;
        v9 = sub_100008F80(&v29, &v30 + 1);
        if (v9)
        {
          v29 = 110;
          LODWORD(v30) = *(v4 + 16);
          sub_100009224((v4 + 152), &v31);
          v23 = sub_100009DF8();
          v24[0] = v10;
          v34 = sub_100005C94(&v23, v24 + 1);
          v21 = sub_100009E08();
          v22 = v11;
          LOBYTE(v35) = sub_100008F80(&v21, &v22 + 1) & 1;
          v35 = v35;
          *&v48[7] = v29;
          *&v48[15] = v30;
          v2 = v31;
          v3 = v32;
          v32 = 0;
          v33 = 0;
          v31 = 0;
          v25 = v34;
          v26 = v35;
        }

        v29 = 110;
        LODWORD(v30) = *(v4 + 16);
        v23 = sub_100009E18();
        LOWORD(v24[0]) = v12;
        BYTE4(v30) = sub_100008F80(&v23, v24 + 1) & 1;
        v21 = sub_100009E28();
        v22 = v13;
        BYTE5(v30) = sub_100008F80(&v21, &v22 + 1) & 1;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        sub_100009224((v4 + 152), &v34);
        v36 = *(v4 + 8);
        v37 = *(v4 + 20);
        v19 = sub_100009E38();
        v20 = v14;
        v38 = (sub_100005F78(&v19, &v20 + 1) * *(v4 + 8));
        v39 = 0;
        if (v9)
        {
          v40 = *&v48[7];
          v41 = *&v48[15];
          v43 = 0;
          v44 = 0;
          v42 = 0;
          if (v3 != v2)
          {
            if (((v3 - v2) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_10000FC84();
          }

          v45 = v25;
          v46 = v26;
          v39 = 1;
        }

        v47 = *(v4 + 108);
        sub_100009E48();
      case 3:
        v29 = 110;
        LODWORD(v30) = *(result + 16);
        sub_100009224((result + 152), &v31);
        *v48 = sub_100009DF8();
        *&v48[8] = v15;
        v34 = sub_100005C94(v48, &v48[12]);
        v23 = sub_100009E08();
        LOWORD(v24[0]) = v16;
        LOBYTE(v35) = sub_100008F80(&v23, v24 + 1) & 1;
        v35 = v35;
        sub_10000A0E0();
      case 4:
        v30 = 0;
        v31 = 0;
        v29 = &v30;
        v6 = *(result + 16);
        sub_1000092F8((result + 152), 0, &v18);
        sub_1002F9F88(110, v6, &v18, 0, 0, 0, *(v4 + 20));
    }
  }

  return result;
}

void sub_100008AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, char a19, char a20, uint64_t a21, char a22, char a23, int a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x100008438);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008DCC(uint64_t a1)
{
  sub_100008270(a1, &v6);
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if ((atomic_load_explicit(&qword_10045D4B0, memory_order_acquire) & 1) == 0)
  {
    sub_10038712C();
  }

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3802000000;
  v9[3] = sub_1002FB134;
  v9[4] = nullsub_204;
  v9[5] = a1;
  v9[6] = &v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10000AE30;
  v8[3] = &unk_100448670;
  v8[4] = v9;
  sub_10000AE28(&qword_10045D4A8, v8);
  _Block_object_dispose(v9, 8);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t sub_100008F80(uint64_t a1, char *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_1001C9608(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003851C4();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4 & 1;
}

void sub_100009224(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000092F8(a1, 0, a2);
  sub_1000092F8(a1, 1, &v5);
  v4 = v5;
  sub_100009A54(a2, *(a2 + 8), v5, v6, (v6 - v5) >> 2);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1000092AC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (v3)
  {
    operator delete(v3);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void sub_1000092F8(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1[3];
  v4 = a1[4];
  if (v5 == v4)
  {
    if ((a2 & 1) == 0)
    {
      v42 = a1[1];
      if (!v42)
      {
LABEL_84:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v43 = v42;
          v44 = *(v42 + 32);
          if (v44 < 1)
          {
            break;
          }

          v42 = *v43;
          if (!*v43)
          {
            goto LABEL_84;
          }
        }

        if ((v44 & 0x80000000) == 0)
        {
          break;
        }

        v42 = v43[1];
        if (!v42)
        {
          goto LABEL_84;
        }
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v46 = v43[5];
      v45 = v43[6];
      if (v45 == v46)
      {
        return;
      }

      if (v45 - v46 < 0)
      {
LABEL_13:
        sub_10000FC84();
      }

LABEL_87:
      operator new();
    }

LABEL_15:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if (v4 - v5 != 4)
  {
    v47 = a1[4];
    v50[0] = 0;
    v50[1] = 0;
    v49 = v50;
    v12 = a1 + 1;
    v48 = a2;
    while (1)
    {
      v13 = *v5;
      if (((((*v5 - 3) < 7) ^ a2) & 1) == 0)
      {
        v14 = *v12;
        if (!*v12)
        {
LABEL_25:
          operator new();
        }

        v15 = *v12;
        while (1)
        {
          while (1)
          {
            v16 = v15;
            v17 = *(v15 + 32);
            if (v13 >= v17)
            {
              break;
            }

            v15 = *v16;
            if (!*v16)
            {
              goto LABEL_25;
            }
          }

          if (v17 >= v13)
          {
            break;
          }

          v15 = v16[1];
          if (!v15)
          {
            goto LABEL_25;
          }
        }

        v18 = v16[5];
        if (!v14)
        {
LABEL_32:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v14;
            v20 = *(v14 + 32);
            if (v13 >= v20)
            {
              break;
            }

            v14 = *v19;
            if (!*v19)
            {
              goto LABEL_32;
            }
          }

          if (v20 >= v13)
          {
            break;
          }

          v14 = v19[1];
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v21 = v19[6];
        if (v18 != v21)
        {
          break;
        }
      }

LABEL_17:
      v5 += 4;
      a2 = v48;
      if (v5 == v47)
      {
        v36 = v49;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        if (v36 != v50)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            v39 = v37;
            v40 = v38[1];
            if (v40)
            {
              do
              {
                v41 = v40;
                v40 = *v40;
              }

              while (v40);
            }

            else
            {
              do
              {
                v41 = v38[2];
                v28 = *v41 == v38;
                v38 = v41;
              }

              while (!v28);
            }

            ++v37;
            v38 = v41;
          }

          while (v41 != v50);
          if (v39 < 0x3FFFFFFFFFFFFFFFLL)
          {
            operator new();
          }

          sub_10000FC84();
        }

        sub_1000275F4(&v49, v50[0]);
        return;
      }
    }

    v22 = v50;
    while (1)
    {
      if (v50 == v22 || (v23 = *(v22 + 7), *v18 < v23))
      {
        v24 = *v22;
        v25 = v22;
        if (v49 != v22)
        {
          v26 = *v22;
          v27 = v22;
          if (v24)
          {
            do
            {
              v25 = v26;
              v26 = v26[1];
            }

            while (v26);
          }

          else
          {
            do
            {
              v25 = v27[2];
              v28 = *v25 == v27;
              v27 = v25;
            }

            while (v28);
          }

          if (*(v25 + 7) >= *v18)
          {
            goto LABEL_58;
          }
        }

        v29 = v24 ? v25 + 1 : v22;
        v30 = *v29;
        if (!*v29)
        {
          goto LABEL_58;
        }

        v35 = v30[1];
        if (!v35)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v23 < *v18)
        {
          v31 = v22[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
              v33 = v32;
            }

            while (v31);
          }

          else
          {
            v33 = v22;
            do
            {
              v34 = v33;
              v33 = v33[2];
            }

            while (*v33 != v34);
          }

          if (v33 != v50)
          {
            *(v33 + 7);
          }

LABEL_58:
          operator new();
        }

        v30 = v22;
        v35 = v22[1];
        if (!v35)
        {
          do
          {
LABEL_63:
            v22 = v30[2];
            v28 = *v22 == v30;
            v30 = v22;
          }

          while (!v28);
          goto LABEL_35;
        }
      }

      do
      {
        v22 = v35;
        v35 = *v35;
      }

      while (v35);
LABEL_35:
      if (++v18 == v21)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = *v5;
  if ((((*v5 - 3) < 7) ^ a2))
  {
    goto LABEL_15;
  }

  v7 = a1[1];
  if (!v7)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 32);
      if (v6 >= v9)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_10;
      }
    }

    if (v9 >= v6)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v11 = v8[5];
  v10 = v8[6];
  if (v10 != v11)
  {
    if (v10 - v11 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }
}

char *sub_100009A54(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_10000FC84();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_10000D444();
    }

    v47 = (__dst - v11);
    v48 = 4 * ((__dst - v11) >> 2);
    v49 = (v48 + 4 * a5);
    v50 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x7FFFFFFFFFFFFFF8;
      v51 = (v48 + 4 * v60);
      v52 = &__src[4 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 8;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 4;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 4 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v15 = 4 * a5;
    v34 = &__dst[4 * a5];
    v35 = (v10 - 4 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 2) + 1;
      v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 8;
      }

      while (v44);
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v34);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 4 * a5;
    v22 = &v5[4 * a5];
    v23 = &v20[-4 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 4;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_63:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[4 * a5], v5, v20 - v22);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

void sub_10000A090(_Unwind_Exception *a1)
{
  sub_10002BB1C(v4);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
  }

  sub_1002F76DC(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void sub_10000A5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v35 = *a14;
  if (*a14)
  {
    v32[3].__shared_owners_ = v35;
    operator delete(v35);
    v36 = *v33;
    if (!*v33)
    {
LABEL_5:
      std::__shared_weak_count::~__shared_weak_count(v32);
      operator delete(v37);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v36 = *v33;
    if (!*v33)
    {
      goto LABEL_5;
    }
  }

  v32[2].__shared_owners_ = v36;
  operator delete(v36);
  std::__shared_weak_count::~__shared_weak_count(v32);
  operator delete(v38);
  _Unwind_Resume(a1);
}

void sub_10000A688(uint64_t a1, _DWORD *a2)
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
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
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

void *sub_10000A7A0(void *result, int *a2)
{
  v2 = *a2;
  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return result;
        }
      }

      else if ((v8 & (*&v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_10000AA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002F9538(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000AA28(int a1)
{
  if (a1 >= 15)
  {
    v1 = 5000;
  }

  else
  {
    v1 = 2407;
  }

  return (v1 + 5 * a1);
}

void sub_10000AA44(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v5);
      if (prime <= v8)
      {
        prime = v8;
      }

      if (prime >= *&v4)
      {
        return;
      }
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }

      if (prime <= v5)
      {
        prime = v5;
      }

      if (prime >= *&v4)
      {
        return;
      }
    }

    if (prime)
    {
      goto LABEL_6;
    }

    v9 = *a1;
    *a1 = 0;
    if (v9)
    {
      operator delete(v9);
    }

    *(a1 + 8) = 0;
  }
}

uint64_t sub_10000ACB4(uint64_t a1)
{
  *a1 = off_100448538;
  v2 = *(a1 + 120);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    do
    {
      v7 = *v4;
      v8 = v4[4];
      if (v8)
      {
        v4[5] = v8;
        operator delete(v8);
      }

      operator delete(v4);
      v4 = v7;
    }

    while (v7);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *sub_10000AD9C(void *a1)
{
  *a1 = off_1004480F0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10000AE30(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 40);
  v3 = *(v2 + 128);
  for (i = *(v2 + 136); v3 != i; result = (*(*v5 + 16))(v5, *(v1 + 48)))
  {
    v5 = *v3++;
  }

  return result;
}

uint64_t sub_10000B010(uint64_t a1, uint64_t *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_100252B88(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386588();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

void sub_10000B2A4(uint64_t a1@<X8>)
{
  *a1 = "MINIMUM_DISK_SPACE_REQUIRED_BYTES";
  *(a1 + 8) = 0;
  *(a1 + 16) = 157286400;
}

uint64_t sub_10000B2C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  a3[1] = -1;
  a3[2] = -1;
  *a3 = -1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  result = statfs(a1, &v9);
  if (result)
  {
    result = *__error();
    if (result)
    {
      return sub_10001413C(result, v4, a2, "boost::filesystem::space");
    }
  }

  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  f_bsize = v9.f_bsize;
  v8 = v9.f_bfree * v9.f_bsize;
  *a3 = v9.f_blocks * v9.f_bsize;
  a3[1] = v8;
  a3[2] = v9.f_bavail * f_bsize;
  return result;
}

void sub_10000B6E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained transactionManager];
  [v3 openTransactionWithDescription:@"prefetch importing on keybag unlock"];

  v4 = objc_autoreleasePoolPush();
  v5 = objc_loadWeakRetained(WeakRetained + 16);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  [v5 fsDb];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if (*buf)
    {
      goto LABEL_15;
    }
  }

  else if (*buf)
  {
    goto LABEL_15;
  }

  if (qword_10045B070 == -1)
  {
    v7 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_100388618();
  v7 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_7:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "There's an active provider that needs the DB that became available", buf, 2u);
  }

LABEL_8:
  if ([WeakRetained initializeDb])
  {
    v8 = WeakRetained[6];
    v15 = WeakRetained[5];
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v6 setFsDb:&v15];
    v9 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_15:

  objc_autoreleasePoolPop(v4);
  v10 = [WeakRetained transactionManager];
  v11 = [v10 isLastOpenTransactionWithDescription:@"prefetch importing on keybag unlock"];

  if (v11)
  {
    [*(a1 + 32) releaseObjectsNotNeededForLocalization];
    goto LABEL_20;
  }

  if (qword_10045B070 == -1)
  {
    v12 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_100388618();
  v12 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_19:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", buf, 2u);
  }

LABEL_20:
  if (qword_10045B070 != -1)
  {
    sub_100388618();
    v13 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v13 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_22:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Releasing the Keybag Unlocked transaction", buf, 2u);
  }

LABEL_23:
  v14 = [WeakRetained transactionManager];
  [v14 closeTransactionWithDescription:@"prefetch importing on keybag unlock"];
}

void sub_10000B9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);

  _Unwind_Resume(a1);
}

void sub_10000C38C()
{
  v0 = objc_autoreleasePoolPush();
  v2 = off_100431CB0;
  sub_1003282A4(v1, @"com.apple.locationd", @"mobile", @"pipelined_", 0);
  sub_10000C448();
}

void sub_10000C434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000D478(va);
  _Unwind_Resume(a1);
}

uint64_t start()
{
  if (qword_10045B070 != -1)
  {
    sub_100382340();
  }

  v0 = qword_10045B078;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = +[CLIndoorServiceDelegate versionString];
    v14 = 138543362;
    v15 = v1;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Starting pipelined %{public}@", &v14, 0xCu);
  }

  sub_10010AA50();
  sub_1000DD5F0();
  if ((v2 & 0x100) != 0)
  {
    sub_100382354();
  }

  v3 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  [NSURLCache setSharedURLCache:v3];
  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pipelined"];
  v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pipelined.maintenance"];
  xpc_set_event_stream_handler(kNSURLSessionLaunchOnDemandNotificationName, &_dispatch_main_q, &stru_100431C80);
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(CLIndoorServiceDelegate);
  [v4 setDelegate:v7];
  v8 = [(CLIndoorServiceDelegate *)v7 q];
  [v4 _setQueue:v8];

  v9 = [[CLIndoorMaintenanceDelegate alloc] initWithService:v7];
  [v5 setDelegate:v9];
  v10 = [(CLIndoorMaintenanceDelegate *)v9 q];
  [v5 _setQueue:v10];

  v11 = [[CLIndoorBackgroundTasks alloc] initWithService:v7];
  [v4 resume];
  [v5 resume];
  objc_autoreleasePoolPop(v6);
  CFRunLoopRun();
  if (qword_10045B070 != -1)
  {
    sub_1003824CC();
  }

  v12 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Shutting down pipelined", &v14, 2u);
  }

  return 0;
}

id sub_10000C95C()
{
  if (qword_10045B070 == -1)
  {
    v1 = qword_10045B078;
  }

  else
  {
    sub_100382340();
    v1 = qword_10045B078;
  }

  return v1;
}

void sub_10000C9B4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, kNSURLSessionLaunchOnDemandSessionIdentifierKey);
  v4 = [NSString stringWithUTF8String:string];
  if ([v4 hasPrefix:@"com.apple.pipelined.TilePrefetch"])
  {
    if (qword_10045B070 != -1)
    {
      sub_100382340();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      v6 = "Resuming tile prefetch downloads";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, &v11, v9);
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100382340();
    }

    v10 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      v11 = 136380675;
      v12 = string;
      v6 = "NSURL session launched us, but with a weird identifier: %{private}s";
      v7 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_10000CB40@<X0>(void *a1@<X8>)
{
  v10 = 0;
  v11 = 0uLL;
  v12 = -1;
  std::bad_alloc::bad_alloc(&v13);
  v9 = &off_100431D80;
  v13.__vftable = off_100431DA0;
  v5 = 0;
  v6 = 0uLL;
  v7 = -1;
  v4 = off_100431E38;
  v8[0].__vftable = off_100431E68;
  v8[1].__vftable = &off_100431EA8;
  sub_10000D87C(&v4, &v9);
  *&v6 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_alloc_]";
  *(&v6 + 1) = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
  v7 = 174;
  if ((atomic_load_explicit(&qword_10045B0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045B0E8))
  {
    operator new();
  }

  v2 = unk_10045B0E0;
  *a1 = qword_10045B0D8;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  std::bad_alloc::~bad_alloc(v8);
  v4 = &off_100431E10;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  std::bad_alloc::~bad_alloc(&v13);
  v9 = &off_100431E10;
  result = v10;
  if (v10)
  {
    return (*(*v10 + 32))(v10);
  }

  return result;
}

void sub_10000CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000DA44(va);
  _Unwind_Resume(a1);
}

void sub_10000CE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::bad_alloc_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10000DA44(va);
  sub_10000DA44(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CEB0(uint64_t result)
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

uint64_t sub_10000CF5C@<X0>(void *a1@<X8>)
{
  v10 = 0;
  v11 = 0uLL;
  v12 = -1;
  v9 = &off_100431FD0;
  v13.__vftable = off_100431FF0;
  v6 = 0uLL;
  v7 = -1;
  v4 = off_100432058;
  v5 = 0;
  v8[0].__vftable = off_100432088;
  v8[1].__vftable = &off_1004320C8;
  sub_10000D87C(&v4, &v9);
  *&v6 = "exception_ptr boost::exception_detail::get_static_exception_object() [Exception = boost::exception_detail::bad_exception_]";
  *(&v6 + 1) = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/exception/detail/exception_ptr.hpp";
  v7 = 174;
  if ((atomic_load_explicit(&qword_10045B100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045B100))
  {
    operator new();
  }

  v2 = *algn_10045B0F8;
  *a1 = qword_10045B0F0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  std::bad_exception::~bad_exception(v8);
  v4 = &off_100431E10;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  std::bad_exception::~bad_exception(&v13);
  v9 = &off_100431E10;
  result = v10;
  if (v10)
  {
    return (*(*v10 + 32))(v10);
  }

  return result;
}

void sub_10000D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::bad_exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10000E830(va);
  sub_10000E830(va1);
  _Unwind_Resume(a1);
}

void sub_10000D26C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

void sub_10000D2C8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

void sub_10000D324()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

void sub_10000D3B4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000D410(exception, a1);
}

std::logic_error *sub_10000D410(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000D444()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

id *sub_10000D478(id *a1)
{
  sub_100327B70((a1 + 4));

  return a1;
}

void sub_10000D4BC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

__n128 sub_10000D500(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = &off_100431F30;
  v3 = a2->n128_u64[1];
  a1->n128_u64[0] = &off_100431E10;
  a1->n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[1];
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[1] = result;
  a1->n128_u64[0] = off_100431E38;
  a1[2].n128_u64[1] = off_100431E68;
  a1[3].n128_u64[0] = &off_100431EA8;
  return result;
}

uint64_t sub_10000D604(uint64_t result)
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

void sub_10000D6C0(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_10000D760(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_10000D7DC(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_10000D87C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_10000D9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E098(&a9);
  sub_10000E098(&a10);
  _Unwind_Resume(a1);
}

void sub_10000DA1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000E098(va);
  _Unwind_Resume(a1);
}

void sub_10000DA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000E098(va);
  _Unwind_Resume(a1);
}

std::bad_alloc *sub_10000DA44(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void sub_10000DAC4(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

void sub_10000DBE4(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10000D500(exception, a1);
}

uint64_t sub_10000DC40(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_10000DCBC(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

void sub_10000DEE0(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10000D500(exception, (a1 + v2));
}

uint64_t sub_10000DF54(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_alloc::~bad_alloc(v1 + 5);
  v1->__vftable = &off_100431E10;
  result = v1[1].__vftable;
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      v1[1].__vftable = 0;
    }
  }

  return result;
}

void sub_10000DFE4(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_alloc::~bad_alloc(v1 + 5);
  v1->__vftable = &off_100431E10;
  v2 = v1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    v1[1].__vftable = 0;
  }

  operator delete();
}

void *sub_10000E098(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t sub_10000E0FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &off_100431F30;
  v3 = *(a2 + 8);
  *a1 = &off_100431E10;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 24))(v3);
    a2 = v4;
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = off_100431E38;
  *(a1 + 40) = off_100431E68;
  *(a1 + 48) = &off_100431EA8;
  sub_10000D87C(a1, a2);
  return a1;
}

void sub_10000E21C(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  sub_10000E290();
}

void sub_10000E37C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1003824F4(v1);
  }

  __cxa_rethrow();
}

atomic_uint **sub_10000E3A8(atomic_uint **result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
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

uint64_t sub_10000E46C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10000E49C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::bad_alloc *sub_10000E4E0(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

__n128 sub_10000E560(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = &off_100431F30;
  v3 = a2->n128_u64[1];
  a1->n128_u64[0] = &off_100431E10;
  a1->n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[1];
  a1[2].n128_u32[0] = a2[2].n128_u32[0];
  a1[1] = result;
  a1->n128_u64[0] = off_100432058;
  a1[2].n128_u64[1] = off_100432088;
  a1[3].n128_u64[0] = &off_1004320C8;
  return result;
}

void sub_10000E674(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_10000E714(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_10000E790(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

std::bad_exception *sub_10000E830(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void sub_10000E8B0(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

void sub_10000E9D0(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10000E560(exception, a1);
}

uint64_t sub_10000EA2C(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_10000EAA8(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

void sub_10000ECCC(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x38uLL);
  sub_10000E560(exception, (a1 + v2));
}

uint64_t sub_10000ED40(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_exception::~bad_exception(v1 + 5);
  v1->__vftable = &off_100431E10;
  result = v1[1].__vftable;
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      v1[1].__vftable = 0;
    }
  }

  return result;
}

void sub_10000EDD0(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  std::bad_exception::~bad_exception(v1 + 5);
  v1->__vftable = &off_100431E10;
  v2 = v1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    v1[1].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &off_100431F30;
  v3 = *(a2 + 8);
  *a1 = &off_100431E10;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 24))(v3);
    a2 = v4;
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *a1 = off_100432058;
  *(a1 + 40) = off_100432088;
  *(a1 + 48) = &off_1004320C8;
  sub_10000D87C(a1, a2);
  return a1;
}

void sub_10000EFA4(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 24);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = 0;
  sub_10000F018();
}

void sub_10000F104(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1003824F4(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10000F148(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::bad_exception *sub_10000F190(std::bad_exception *a1)
{
  std::bad_exception::~bad_exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

void *sub_10000F210(void *a1)
{
  *a1 = off_100432220;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_100005B18((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_10000F2A4(uint64_t a1)
{
  sub_10000F7A8(a1);

  operator delete();
}

void sub_10000F2DC(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  std::locale::locale(&v8);
  v6 = v10;
  if (v10 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v10 < 0)
  {
    v6 = __dst[1];
  }

  sub_100004198(&__p, v7, &v8, &v6[v7]);
  sub_10001049C((a1 + 8), &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    std::locale::~locale(&v8);
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  std::locale::~locale(&v8);
  if (v10 < 0)
  {
    goto LABEL_16;
  }
}

void sub_10000F438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a10);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::locale::~locale(&a10);
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_10000F49C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v4 = *v2;
        sub_100005B18((v2 + 5));
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v4;
      }

      while (v4);
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 16);
    if (v3)
    {
      bzero(*(a1 + 8), 8 * v3);
    }

    *(a1 + 32) = 0;
  }
}

void sub_10000F524(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  std::locale::locale(&v10);
  v6 = v12;
  if (v12 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v12 < 0)
  {
    v6 = __dst[1];
  }

  sub_100004198(&v13, v7, &v10, &v6[v7]);
  v8 = sub_1000108D0((a1 + 8), &v13);
  if (v8)
  {
    sub_100010A88((a1 + 8), v8, &__p);
    v9 = __p;
    __p = 0;
    if (v9)
    {
      if (v15 == 1)
      {
        sub_100005B18((v9 + 5));
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }
      }

      operator delete(v9);
    }
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    std::locale::~locale(&v10);
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  std::locale::~locale(&v10);
  if (v12 < 0)
  {
    goto LABEL_22;
  }
}

void sub_10000F6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a9);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::locale::~locale(&a9);
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F734(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_100005B18((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10000F7A8(uint64_t a1)
{
  *a1 = off_1004321A0;
  sub_100327B70(a1 + 104);

  *a1 = off_100432220;
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_100005B18((v2 + 5));
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

uint64_t sub_10000F878(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = *a2 ^ (*a2 >> 31);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *(result + 8) = *v2;
      }

      else
      {
        *(result + 8) = *v2;
      }
    }
  }

  else
  {
    if (v3 > 4)
    {
      if (v3 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (v3 == 3)
    {
      v4 = *v2;
      *(result + 24) = *(a2 + 24);
      *(result + 8) = v4;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *v2 = 0;
    }

    else
    {
      *(result + 8) = *v2;
    }
  }

  *result = *a2 ^ (*a2 >> 31);
  return result;
}

uint64_t sub_10000F9FC(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = *a2 ^ (*a2 >> 31);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *(result + 8) = *v2;
      }

      else
      {
        *(result + 8) = *v2;
      }
    }
  }

  else
  {
    if (v3 > 4)
    {
      if (v3 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (v3 == 3)
    {
      if (*(a2 + 31) < 0)
      {
        v5 = result;
        v6 = a2;
        sub_100003228((result + 8), *(a2 + 8), *(a2 + 16));
        a2 = v6;
        result = v5;
      }

      else
      {
        v4 = *v2;
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v4;
      }
    }

    else
    {
      *(result + 8) = *v2;
    }
  }

  *result = *a2 ^ (*a2 >> 31);
  return result;
}

void sub_10000FB7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10000FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 32;
    v15 = -v12;
    do
    {
      sub_100005B18(v14);
      v14 -= 32;
      v15 += 32;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_10000FC9C(&a9);
  _Unwind_Resume(a1);
}

void ***sub_10000FC9C(void ***result)
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
        do
        {
          v4 -= 32;
          sub_100005B18(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_10000FD14(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = (a2 + 16); ; sub_10000FFEC(a1, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return a1;
}

void sub_10000FE58(uint64_t a1, unint64_t a2)
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

uint64_t **sub_10000FFEC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1000103F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010440(va);
  _Unwind_Resume(a1);
}

void sub_100010404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010440(va);
  _Unwind_Resume(a1);
}

void sub_100010418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_100010440(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100010440(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_100005B18(v1 + 40);
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t **sub_10001049C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_100010894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010440(va);
  _Unwind_Resume(a1);
}

void sub_1000108A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_100010440(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1000108D0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t *sub_100010A88@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_100010BEC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100010C5C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100010CCC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100010CF4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  error = 0;
  v19[0] = kCFUserNotificationAlertHeaderKey;
  v8 = [NSString stringWithUTF8String:a2];
  v20[0] = v8;
  v19[1] = kCFUserNotificationAlertMessageKey;
  v9 = [NSString stringWithUTF8String:a3];
  v20[1] = v9;
  v20[2] = @"Collect";
  v19[2] = kCFUserNotificationDefaultButtonTitleKey;
  v19[3] = kCFUserNotificationAlternateButtonTitleKey;
  v20[3] = @"Dismiss";
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v11 = CFUserNotificationCreate(kCFAllocatorDefault, a4 / 1000000000.0, a1, &error, v10);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v11, sub_100010FB8, 0);
  if (RunLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
    if (qword_10045B090 != -1)
    {
      sub_100382518();
    }

    v14 = qword_10045B098;
    if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v18 = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "UI prompt %s displayed", buf, 0xCu);
    }
  }

  else
  {
    if (qword_10045B090 != -1)
    {
      sub_100382518();
    }

    v15 = qword_10045B098;
    if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to create the notifcation run loop source", buf, 2u);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_100010F64(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010FB8(const void *a1, char a2)
{
  if (qword_10045B090 != -1)
  {
    sub_100382540();
  }

  v4 = qword_10045B098;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Entered UI prompt handler", buf, 2u);
  }

  if ((a2 & 3u) > 1uLL)
  {
    if ((a2 & 3) == 2)
    {
      if (qword_10045B090 != -1)
      {
        sub_100382518();
      }

      v6 = qword_10045B098;
      if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 2;
        v7 = "Notification dismissed with unknown button identifier: %lu";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 12;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
      }
    }

    else
    {
      if (qword_10045B090 != -1)
      {
        sub_100382518();
      }

      v12 = qword_10045B098;
      if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "Notification timed-out";
        v8 = v12;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_25;
      }
    }
  }

  else
  {
    if ((a2 & 3) == 0)
    {
      if (qword_10045B090 != -1)
      {
        sub_100382518();
      }

      v5 = qword_10045B098;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Collecting logs", buf, 2u);
      }

      *buf = std::chrono::system_clock::now();
      sub_10010C81C(buf);
    }

    if (qword_10045B090 != -1)
    {
      sub_100382518();
    }

    v11 = qword_10045B098;
    if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v7 = "Notification dismissed";
      v8 = v11;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_25:
      v10 = 2;
      goto LABEL_26;
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_100012014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_100013638(&a33);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  operator delete(a9);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_10001229C(&a14);
  _Unwind_Resume(a1);
}

const void **sub_10001229C(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000122D4()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3812000000;
  v0[3] = sub_100012D7C;
  v0[4] = sub_100012D8C;
  v0[5] = "";
  operator new();
}

void sub_100012664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  _Block_object_dispose(&a29, 8);
  if (a40 < 0)
  {
    operator delete(__p);
    _Block_object_dispose((v41 - 192), 8);
    if ((*(v41 - 121) & 0x80000000) == 0)
    {
LABEL_4:
      _Block_object_dispose((v41 - 120), 8);
      sub_100013278((v40 + 48));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose((v41 - 192), 8);
    if ((*(v41 - 121) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  operator delete(*(v41 - 144));
  goto LABEL_4;
}

uint64_t sub_10001276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL sub_10001283C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    if (*(a1 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a2 + 1000 * (*(a2 + 8) % 0x1FFFF7uLL) == a3;
    }

    return 0;
  }

  if (v3)
  {
    if (*a2 == a3)
    {
      v6 = *(a2 + 8);
      v7 = *(v6 + 8);
      v8 = v6 == a1;
      if (v7)
      {
        return *(a1 + 8) == v7;
      }

      else
      {
        return v8;
      }
    }

    return 0;
  }

  return !a3 && *(a1 + 8) == 0xB2AB117A257EDFD1;
}

unint64_t sub_100012910@<X0>(int __errnum@<W1>, _BYTE *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
    a2[v6] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

const char *sub_1000129DC(int a1, int __errnum, char *a3, uint64_t a4)
{
  if (!a4)
  {
    return a3;
  }

  v5 = a3;
  v6 = a4 - 1;
  if (a4 == 1)
  {
LABEL_5:
    *v5 = 0;
    return a3;
  }

  v7 = strerror(__errnum);
  if (v7)
  {
    strncpy(a3, v7, v6);
    v5 = &a3[v6];
    goto LABEL_5;
  }

  return "Unknown error";
}

size_t sub_100012A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = (*(*a1 + 40))(a1, a2, v7, 48);
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a3[23] = result;
  if (result)
  {
    result = memmove(a3, v4, result);
  }

  a3[v6] = 0;
  return result;
}

void sub_100012BF4(id a1, NSFileHandle *a2)
{
  v2 = a2;
  v3 = [(NSFileHandle *)v2 readDataToEndOfFile];
  v4 = [NSString ps_stringWithUTF8Data:v3];
  v5 = v4;
  if (v4)
  {
    [v4 ps_STLString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
  }

  [(NSFileHandle *)v2 closeFile];
  if (qword_10045B090 != -1)
  {
    sub_100382518();
  }

  v6 = qword_10045B098;
  if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_INFO))
  {
    v7 = __p;
    if (v9 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Output from collecting wifi logs:\n%s", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100012D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

uint64_t sub_100012D7C(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

__n128 sub_100012D94(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_100012DB0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

__n128 sub_100012DC4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_100012DE0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100012DF4(void *a1)
{
  memset(&v18, 0, sizeof(v18));
  if (qword_10045B090 != -1)
  {
    sub_100382540();
  }

  v2 = qword_10045B098;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B178((*(a1[4] + 8) + 48), &__p);
    v3 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Collecting %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v4 = *(a1[4] + 8);
  v5 = *(a1[5] + 8);
  sub_10001B178((v4 + 48), buf);
  if (*(v5 + 71) < 0)
  {
    sub_100003228(&__p, *(v5 + 48), *(v5 + 56));
  }

  else
  {
    __p = *(v5 + 48);
  }

  sub_1000032E4(&__p, buf);
  sub_1000181FC((v4 + 48), &__p, 0, &v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_14:
      v6 = v18.__r_.__value_.__r.__words[2];
      if ((v18.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(*buf);
  v6 = v18.__r_.__value_.__r.__words[2];
  if ((v18.__r_.__value_.__s.__data_[16] & 1) == 0)
  {
LABEL_20:
    if (qword_10045B090 != -1)
    {
      sub_100382518();
    }

    v7 = qword_10045B098;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      sub_10001B178((*(a1[4] + 8) + 48), &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Collected %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v9 = *(*(a1[7] + 8) + 48);
    if (!v9)
    {
      sub_100013504(3u);
    }

    v10 = (v9 + 24);
    std::mutex::lock((v9 + 24));
    if ((*(v9 + 136) & 1) != 0 || (__p.__r_.__value_.__r.__words[0] = 0, v11 = *(v9 + 16), std::exception_ptr::~exception_ptr(&__p), v11))
    {
      sub_100013504(2u);
    }

    v12 = 1;
    goto LABEL_44;
  }

LABEL_18:
  if (v6 == 1 && !LODWORD(v18.__r_.__value_.__l.__data_))
  {
    goto LABEL_20;
  }

  if (qword_10045B090 != -1)
  {
    sub_100382518();
  }

  v13 = qword_10045B098;
  if (os_log_type_enabled(qword_10045B098, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1[6] + 8);
    v15 = (v14 + 48);
    if (*(v14 + 71) < 0)
    {
      v15 = *v15;
    }

    data = v18.__r_.__value_.__l.__data_;
    if (v18.__r_.__value_.__r.__words[2] == 1)
    {
      data = LODWORD(v18.__r_.__value_.__l.__data_) + 1000 * (v18.__r_.__value_.__l.__size_ % 0x1FFFF7);
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v15;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = data;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to copy %s: %d", &__p, 0x12u);
  }

  v9 = *(*(a1[7] + 8) + 48);
  if (!v9)
  {
    sub_100013504(3u);
  }

  v10 = (v9 + 24);
  std::mutex::lock((v9 + 24));
  if ((*(v9 + 136) & 1) != 0 || (__p.__r_.__value_.__r.__words[0] = 0, v17 = *(v9 + 16), std::exception_ptr::~exception_ptr(&__p), v17))
  {
    sub_100013504(2u);
  }

  v12 = 0;
LABEL_44:
  *(v9 + 140) = v12;
  *(v9 + 136) |= 5u;
  std::condition_variable::notify_all((v9 + 88));
  std::mutex::unlock(v10);
}

void sub_1000131E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v26 = v25;

  _Unwind_Resume(a1);
}

void *sub_100013278(void *result)
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

void sub_1000133F4(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_100013460(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_100013504(unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3.__cat_ = std::future_category();
  *&v3.__val_ = a1;
  std::future_error::future_error(exception, v3);
}

void sub_10001356C(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_100013608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void **sub_100013638(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v5 + 16))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1000136D4(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "CLSensorSurvey");
  v2 = qword_10045B098;
  qword_10045B098 = v1;
}

void sub_100013718()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_100013820(a1, a3, a2);
  *v4 = off_100432410;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_100014C64(&v8);
  return a1;
}

void sub_1000137E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100014C64(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1000137CCLL);
}

void sub_100013804(_Unwind_Exception *a1)
{
  sub_100014C64(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100013820(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_10001441C(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &off_100432468;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v5;
  return a1;
}

void sub_1000138A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000139A4(a1, a3, a2);
  *v4 = off_100432410;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_100014C64(&v8);
  return a1;
}

void sub_100013968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100014C64(&a10);
  __cxa_end_catch();
  JUMPOUT(0x100013950);
}

void sub_100013988(_Unwind_Exception *a1)
{
  sub_100014C64(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000139A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  sub_10001441C(v5, a2, &v8);
  std::runtime_error::runtime_error(a1, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *a1 = &off_100432468;
  v6 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v6;
  return a1;
}

void sub_100013A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100013820(a1, a4, a2);
  *v6 = off_100432410;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_100014C64(&v11);
  return a1;
}

void sub_100013B20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100014C64(&a10);
  __cxa_end_catch();
  JUMPOUT(0x100013B08);
}

void sub_100013B58(_Unwind_Exception *a1)
{
  sub_100014C64(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_100013820(a1, a5, a2);
  *v8 = off_100432410;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_100014AB0(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_100014C64(&v12);
  return a1;
}

void sub_100013C28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_100014C64(&a10);
  __cxa_end_catch();
  JUMPOUT(0x100013C0CLL);
}

void sub_100013C60(_Unwind_Exception *a1)
{
  sub_100014C64(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &off_100432468;
  v4 = *(a2 + 16);
  result[2].__vftable = *(a2 + 32);
  result[1] = v4;
  result->__vftable = off_100432410;
  v5 = *(a2 + 40);
  result[2].__imp_.__imp_ = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  return result;
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = off_100432410;
  sub_100014C64(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_100432410;
  sub_100014C64(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_100432410;
  sub_100014C64(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_100014C1C((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t sub_100013F9C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100013FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v11[0] = 0;
    if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v8 = a1 != 0;
    }

    else
    {
      v8 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v9 = 2;
    LODWORD(v11[0]) = a1;
    if (v8)
    {
      v9 = 3;
    }

    v11[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v11[2] = v9;
    boost::filesystem::filesystem_error::filesystem_error(exception, a3, v11);
  }

  if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v6 = 2;
  if (result)
  {
    v6 = 3;
  }

  *a2 = a1;
  *(a2 + 4) = 0;
  *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_10001413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13[0] = 0;
    if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13[0]) = a1;
    if (v9)
    {
      v10 = 3;
    }

    v13[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v13[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v13);
  }

  if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1000142A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v15[0] = 0;
    if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v10 = a1 != 0;
    }

    else
    {
      v10 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v11 = 2;
    LODWORD(v15[0]) = a1;
    if (v10)
    {
      v11 = 3;
    }

    v15[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v15[2] = v11;
    boost::filesystem::filesystem_error::filesystem_error(exception, a5, a2, a3, v15);
  }

  if ((qword_10045B110 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v8 = 2;
  if (result)
  {
    v8 = 3;
  }

  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a4 + 16) = v8;
  return result;
}

void sub_10001441C(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_10001452C(a2, &__p);
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

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000144C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100014504(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_10001452C@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100014680(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_1000146D0(a1, &__p);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_100432480;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10001489C(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_100014640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100014680@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return ((*v4)[4])(v4, *a1);
}

std::string *sub_1000146D0@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_100014A08(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_100012BC8(__s, 0x20uLL, ":%d", v7, v8, v9, v10, v11, *a1);
      v12 = strlen(__s);
      return std::string::append(a2, __s, v12);
    }

    v14 = *(a1 + 1);
  }

  else
  {
    v14 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v15 = (**v14)(v14);
  sub_100014A08(a2, v15);
  v21 = *a1;
  if (*(a1 + 2) == 1)
  {
    v21 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_100012BC8(__s, 0x20uLL, ":%d", v16, v17, v18, v19, v20, v21);
  v22 = strlen(__s);
  return std::string::append(a2, __s, v22);
}

void sub_10001487C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001489C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100014A08(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
  }

  else
  {

    sub_100014A08(a2, "(unknown source location)");
  }
}

void sub_1000149EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100014A08(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_100014AB0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100003228((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100003228((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_100014B44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100014B60(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100014C1C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100014B60(a1, __s, v4);
}

uint64_t *sub_100014C64(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_100014CD8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  if (*(a1 + 24))
  {
    v5 = *(a1 + 28) == 0xFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    if ((v6 & 0xFFFFFFFB) == 0 || v7 == 0xFFFF)
    {
      sub_100002F5C(a1, a2, &v10);
      *(a1 + 24) = v10;
      goto LABEL_14;
    }

    *(a1 + 24) = v6;
    *(a1 + 28) = v7;
  }

  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

LABEL_14:
  result = *(a1 + 24);
  *a3 = result;
  return result;
}

int *sub_100014D5C@<X0>(int *result@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  v3 = result;
  v5 = result[8];
  v6 = result[9];
  if (v5)
  {
    v7 = v6 == 0xFFFF;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    result = sub_100017B70(result, a2, v8);
    v5 = v8[0];
    v6 = v8[1];
    v3[8] = v8[0];
    v3[9] = v6;
  }

  else if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = result[8];
    v6 = result[9];
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

DIR *sub_100014DC8@<X0>(DIR **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *a1;
  if (*a1 && (*a1 = 0, result = closedir(result), result))
  {
    v7 = *__error();

    return sub_100014E5C(a3, v7, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_100014E5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *a1 = v4;
  if (v6)
  {
    v7 = 3;
  }

  a1[1] = a3;
  a1[2] = v7;
  return a1;
}

atomic_uint **sub_100014EFC(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v32[0] = 0;
      v9 = operator new(0x40uLL, &std::nothrow);
      if (v9)
      {
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 8) = 0;
        *(v9 + 1) = 0u;
        *(v9 + 36) = 0xFFFFLL;
        *(v9 + 11) = 0xFFFF;
        v9[6] = 0;
        v9[7] = 0;
        v29 = v9;
        atomic_fetch_add(v9, 1u);
        v10 = v9;
        v11 = v32[0];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v29 = v11;
      v32[0] = v10;
      sub_100016DC8(&v29);
      v13 = v32[0];
      if (!v32[0])
      {
        sub_100382554(a4);
        return sub_100016DC8(v32);
      }
    }

    else
    {
      v32[0] = 0;
      v12 = operator new(0x40uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 8) = 0;
      *(v12 + 1) = 0u;
      *(v12 + 36) = 0xFFFFLL;
      *(v12 + 11) = 0xFFFF;
      v12[6] = 0;
      v12[7] = 0;
      v29 = v12;
      atomic_fetch_add(v12, 1u);
      v29 = v32[0];
      v32[0] = v12;
      sub_100016DC8(&v29);
      v13 = v32[0];
    }

    memset(&v32[1], 0, 15);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = opendir(v14);
    *(v13 + 6) = v15;
    if (v15)
    {
      v16 = 1;
      v17 = 46;
    }

    else
    {
      v18 = *__error();
      v29 = 0;
      if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
      {
        v19 = v18 != 0;
      }

      else
      {
        v19 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v18);
      }

      v20 = 2;
      LODWORD(v29) = v18;
      if (v19)
      {
        v20 = 3;
      }

      v30 = &boost::system::detail::system_cat_holder<void>::instance;
      v31 = v20;
      if (v20)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v24 = sub_100016158(&v29, &__str);
        if ((a3 & 1) == 0 || (v24 & 1) == 0)
        {
          v25 = v29;
          if (v31 == 1)
          {
            v25 = v29 + 1000 * (v30 % 0x1FFFF7);
          }

          if (v25)
          {
            sub_10001413C(v25, a2, a4, "boost::filesystem::directory_iterator::construct");
          }

          else if (a4)
          {
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
          }
        }

        return sub_100016DC8(v32);
      }

      v17 = 0;
      v16 = 0;
    }

    v21 = v32[0];
    if (*(v32[0] + 6))
    {
      v22 = *a1;
      *a1 = v32[0];
      v32[0] = v22;
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = v32[1];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v32[1] + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (*(a2 + 23) < 0)
      {
        sub_100003228(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      sub_10001A754(&__str, &__p);
      std::string::operator=((v21 + 2), &__str);
      *&v23 = 0xFFFF00000000;
      *(&v23 + 1) = 0xFFFF00000000;
      *(v21 + 2) = v23;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v15)
        {
          return sub_100016DC8(v32);
        }

        goto LABEL_32;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_32:
        sub_100015408(a1, a4);
      }
    }

    return sub_100016DC8(v32);
  }

  return sub_10001413C(2, a2, a4, "boost::filesystem::directory_iterator::construct");
}