uint64_t sub_1007410A4(uint64_t a1)
{
  if (qword_1025D42E0 != -1)
  {
    sub_101927944();
  }

  v2 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Legacy compass stopped.", v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101927E6C();
  }

  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  *(a1 + 144) = 0;
  if (v3)
  {
    v5 = sub_10017C02C();
    sub_10095D9F8(v5, 0, *(a1 + 152));
    v6 = *(a1 + 152);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 152) = 0;
  }

  if (*(a1 + 186))
  {
    if (v4)
    {
      v7 = sub_1010AC550();
      sub_1010ACE04(v7, v4);
      (*(*v4 + 8))(v4);
    }
  }

  else if (*(a1 + 136))
  {
    v8 = sub_1001C3FFC();
    sub_10095D9F8(v8, 0, *(a1 + 136));
    v9 = *(a1 + 136);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 136) = 0;
  }

  result = *(a1 + 200);
  if (result)
  {
    sub_1009EA544();
    operator delete();
  }

  *(a1 + 188) = 2139095039;
  return result;
}

float sub_100741240(uint64_t a1, double *a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    return sub_1009EADE4(v2, a2);
  }

  return result;
}

uint64_t sub_100741250(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return sub_1009EAE50(result);
  }

  return result;
}

void sub_1007412C4(uint64_t a1)
{
  sub_1017E7D44(a1);

  operator delete();
}

void sub_1007412FC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 44));
  v5 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 16) = v5;
  *(a1 + 40) = 1;

  os_unfair_lock_unlock((a1 + 44));
}

void sub_100741354(uint64_t a1)
{
  sub_1017E7D44(a1);

  operator delete();
}

void sub_10074138C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 148));
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[3];
  *(a1 + 48) = a3[2];
  *(a1 + 64) = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[7];
  *(a1 + 112) = a3[6];
  *(a1 + 128) = v10;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 144) = 1;

  os_unfair_lock_unlock((a1 + 148));
}

void sub_1007413F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = 0u;
  *a1 = v5;
  *(a1 + 88) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  sub_100742900(a1 + 160, a3);
  *(a1 + 192) = 0;
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,constructor}", v9, 0x12u);
  }

  v7 = _os_feature_enabled_impl();
  v8 = *a1;
  if (v7)
  {
    [v8 silo];
    operator new();
  }

  [v8 silo];
  operator new();
}

void sub_1007416E8(uint64_t a1, int a2, id *a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,tileFileDownloadCallback, download,success:%{public}hhd}", buf, 0x18u);
  }

  if (a3)
  {
    v7 = [*a3 silo];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100742318;
    v8[3] = &unk_10246E770;
    v8[4] = a3;
    v8[5] = a1;
    v9 = a2;
    v8[6] = a3;
    [v7 async:v8];
  }
}

void sub_100741838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (*(a1 + 64) != *(a1 + 72))
    {
      if (a3)
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v7 = (a1 + 16);
          sub_1003CCADC((a1 + 16), ".gz", &__p);
          if (v25 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (*(a1 + 39) < 0)
          {
            v7 = *v7;
          }

          if (sub_1004E70A0(p_p, v7))
          {
            if (v25 >= 0)
            {
              v9 = &__p;
            }

            else
            {
              v9 = __p;
            }

            sub_1004E8E24(v9);
          }

          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p);
          }
        }

        v10 = (a1 + 16);
        if (*(a1 + 39) < 0)
        {
          v10 = *v10;
        }

        sub_1004E915C(v10, 3);
      }

      sub_100741C18(a1);
      v11 = *(a1 + 72);
      v12 = (v11 - 24);
      if (*(v11 - 1) < 0)
      {
        operator delete(*v12);
      }

      *(a1 + 72) = v12;
      sub_100741D20(a1);
      return;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101927F74();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      __p = 68289026;
      v22 = 2082;
      v23 = "";
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLRayTracingTileDownloader,download callback for unknown request}", &__p, 0x12u);
      if (qword_1025D4620 != -1)
      {
        sub_101927F88();
      }
    }

    v20 = qword_1025D4628;
    if (os_signpost_enabled(qword_1025D4628))
    {
      __p = 68289026;
      v22 = 2082;
      v23 = "";
      v15 = "CLRayTracingTileDownloader,download callback for unknown request";
      v16 = "{msg%{public}.0s:CLRayTracingTileDownloader,download callback for unknown request}";
      v17 = v20;
      v18 = 18;
      goto LABEL_38;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101927F74();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      __p = 68289538;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = a2 == 0;
      v26 = 1026;
      v27 = a4 == 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLRayTracingTileDownloader,unexpected nullptr, download pointer null:%{public}hhd, info pointer null:%{public}hhd}", &__p, 0x1Eu);
      if (qword_1025D4620 != -1)
      {
        sub_101927F88();
      }
    }

    v14 = qword_1025D4628;
    if (os_signpost_enabled(qword_1025D4628))
    {
      __p = 68289538;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = a2 == 0;
      v26 = 1026;
      v27 = a4 == 0;
      v15 = "CLRayTracingTileDownloader,unexpected nullptr";
      v16 = "{msg%{public}.0s:CLRayTracingTileDownloader,unexpected nullptr, download pointer null:%{public}hhd, info pointer null:%{public}hhd}";
      v17 = v14;
      v18 = 30;
LABEL_38:
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, v16, &__p, v18);
    }
  }
}

void sub_100741BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100741C18(uint64_t result)
{
  if (*(result + 184))
  {
    memset(v1, 0, 24);
    v1[7] = v1;
    sub_1001A19D8(v1, 1uLL);
  }

  return result;
}

void sub_100741D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1001E56E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100741D20(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile}", &buf, 0x12u);
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101927F88();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      buf.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile,fFileDownloader NULL}", &buf, 0x12u);
      if (qword_1025D4620 != -1)
      {
        sub_101927F88();
      }
    }

    v16 = qword_1025D4628;
    if (os_signpost_enabled(qword_1025D4628))
    {
      buf.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRayTracingTileDownloader,downloadNextOnDemandTile,fFileDownloader NULL", "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile,fFileDownloader NULL}", &buf, 0x12u);
    }

    return 0;
  }

  if (*(a1 + 64) == *(a1 + 72))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101927F88();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      buf.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile,empty list}", &buf, 0x12u);
    }

    return 0;
  }

  *(v3 + 80) = 257;
  v25 = 0x404E000000000000;
  v4 = (a1 + 40);
  std::string::operator=((a1 + 40), (a1 + 136));
  sub_1003CCADC((*(a1 + 72) - 24), ".gz", &buf);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  std::string::append((a1 + 40), p_buf, size);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v7 = sub_1000206B4();
  sub_100021668(v7, &buf);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = buf;
  v8 = *(a1 + 72);
  v11 = *(v8 - 24);
  v9 = v8 - 24;
  v10 = v11;
  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  if (v12 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  std::string::append((a1 + 16), v13, v14);
  memset(&buf, 0, sizeof(buf));
  if (_os_feature_enabled_impl())
  {
    std::string::operator=(&buf, (a1 + 16));
  }

  else
  {
    sub_1003CCADC((a1 + 16), ".gz", &v26);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    buf = v26;
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &buf;
  }

  else
  {
    v19 = buf.__r_.__value_.__r.__words[0];
  }

  v18 = (*(**(a1 + 8) + 16))(*(a1 + 8), v4, v19, &v25);
  if (qword_1025D4620 != -1)
  {
    sub_101927F88();
  }

  v20 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v26.__r_.__value_.__r.__words[0] = 68289282;
    LOWORD(v26.__r_.__value_.__r.__words[1]) = 2082;
    *(&v26.__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(v26.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(v26.__r_.__value_.__r.__words[2]) = v18;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile, isDownloadRequestSuccessful:%{public}hhd}", &v26, 0x18u);
  }

  if ((v18 & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101927F88();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v26.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v26.__r_.__value_.__r.__words[1]) = 2082;
      *(&v26.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadNextOnDemandTile,request failed}", &v26, 0x12u);
    }

    sub_100741C18(a1);
    v22 = *(a1 + 72);
    v23 = (v22 - 24);
    if (*(v22 - 1) < 0)
    {
      operator delete(*v23);
    }

    *(a1 + 72) = v23;
    if (*(a1 + 39) < 0)
    {
      **(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 16) = 0;
      *(a1 + 39) = 0;
    }

    if (*(a1 + 63) < 0)
    {
      **(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    else
    {
      *(a1 + 40) = 0;
      *(a1 + 63) = 0;
    }

    sub_100741D20(a1);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_10074228C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007422BC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000CF05C();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

void sub_100742318(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLRayTracingTileDownloader,Calling tileDownloadCompleted", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101927FB0();
  }

  sub_100741838(*(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

void sub_1007423C0(uint64_t a1, char a2, char a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 192);
    v8 = *(a1 + 193);
    v9[0] = 68289538;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v7;
    v14 = 1026;
    v15 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,dataConnectivityStatus, fDataConnectivityUp:%{public}hhd, fCellularDataConnectivityUp:%{public}hhd}", v9, 0x1Eu);
  }

  *(a1 + 192) = a2;
  *(a1 + 193) = a3;
}

void sub_1007424C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101927F74();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 68289026;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadTiles}", &v18, 0x12u);
  }

  if (*(a1 + 192) & 1) != 0 || (*(a1 + 193))
  {
    if (*(a1 + 64) == *(a1 + 72))
    {
      sub_1003CDF84(a1 + 64);
      *(a1 + 64) = *a2;
      *(a1 + 80) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(a1 + 159) < 0)
      {
        operator delete(*(a1 + 136));
      }

      v16 = *a3;
      *(a1 + 152) = *(a3 + 2);
      *(a1 + 136) = v16;
      *(a3 + 23) = 0;
      *a3 = 0;
      std::string::append((a1 + 136), "/", 1uLL);
      sub_100741D20(a1);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101927F88();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
        v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
        v18 = 68289538;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        v23 = v8;
        v24 = 2050;
        v25 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadTiles rejecting, existingDownloadListSize:%{public}ld, requestedDownloadListSize:%{public}ld}", &v18, 0x26u);
        if (qword_1025D4620 != -1)
        {
          sub_101927F88();
        }
      }

      v10 = qword_1025D4628;
      if (os_signpost_enabled(qword_1025D4628))
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
        v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
        v18 = 68289538;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        v23 = v11;
        v24 = 2050;
        v25 = v12;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRayTracingTileDownloader,downloadTiles rejecting", "{msg%{public}.0s:CLRayTracingTileDownloader,downloadTiles rejecting, existingDownloadListSize:%{public}ld, requestedDownloadListSize:%{public}ld}", &v18, 0x26u);
      }

      if (*(a1 + 184))
      {
        v13 = a1 + 160;
        v14 = a2;
        v15 = 1;
LABEL_26:
        sub_1007422BC(v13, v14, v15, 0);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101927F88();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileDownloader,downloadTiles}", &v18, 0x12u);
    }

    if (*(a1 + 184))
    {
      v13 = a1 + 160;
      v14 = a2;
      v15 = 3;
      goto LABEL_26;
    }
  }
}

void sub_100742830(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 39) < 0)
  {
    **(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
  }

  if (*(a1 + 63) < 0)
  {
    **(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
    *(a1 + 63) = 0;
  }

  sub_1001E573C((a1 + 64));
}

uint64_t sub_100742900(uint64_t a1, uint64_t a2)
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

uint64_t sub_100742998(uint64_t a1)
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

uint64_t sub_100742EB8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30[0] & 0x7F) << v23;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_55:
          v28 = 16;
          goto LABEL_56;
        }

        if (v12 == 4)
        {
          v15 = objc_alloc_init(TRANSITPbRegionPreloadMarket);
          [a1 addMarkets:v15];

          v30[0] = 0;
          v30[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = sub_1008327D8(v15, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_59;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v30[0] & 0x7F) << v17;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v10 = v18++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v19;
          }

LABEL_51:
          v28 = 32;
LABEL_56:
          *(a1 + v28) = v22;
          goto LABEL_59;
        }

        if (v12 == 2)
        {
          *(a1 + 36) |= 1u;
          v30[0] = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v30[0];
          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

char *sub_100743B48(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  __dst[24] = 0;
  *(__dst + 6) = 0;
  *(__dst + 5) = 0;
  *(__dst + 4) = __dst + 40;
  __dst[56] = 0;
  *(__dst + 8) = 0;
  __dst[72] = 0;
  *(__dst + 19) = 0;
  return __dst;
}

char *sub_100743BBC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[23] < 0)
  {
    return sub_100007244(a2, *result, *(result + 1));
  }

  *a2 = *result;
  *(a2 + 16) = *(result + 2);
  return result;
}

char *sub_100743BF8(char *__dst, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  sub_100743B48(__dst, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 80, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 12) = *(a3 + 2);
    *(__dst + 5) = v5;
  }

  return __dst;
}

uint64_t sub_100743CC4(uint64_t a1)
{
  sub_10001AF44(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100743D04(void *result)
{
  result[1] = 0;
  *result = result + 1;
  result[5] = 0;
  result[4] = 0;
  result[2] = 0;
  result[3] = result + 4;
  return result;
}

void *sub_100743D24(void *result, int a2, unint64_t a3)
{
  if (a2 == 1)
  {
    return sub_100743DAC(result, a3);
  }

  if (!a2)
  {
    return sub_100743D44(result, a3);
  }

  return result;
}

void *sub_100743D44(void *result, unint64_t a2)
{
  v7 = a2;
  v2 = result[1];
  if (!v2)
  {
    return sub_1006E2330(result, &v7);
  }

  v3 = result + 1;
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == result + 1 || v3[4] > a2)
  {
    return sub_1006E2330(result, &v7);
  }

  return result;
}

void *sub_100743DAC(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  v4 = *(a1 + 32);
  result = (a1 + 32);
  v3 = v4;
  if (!v4)
  {
    return sub_1006E2330((result - 1), &v9);
  }

  v5 = result;
  do
  {
    v6 = v3[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (v5 == result || v5[4] > a2)
  {
    return sub_1006E2330((result - 1), &v9);
  }

  return result;
}

void sub_100743E14(uint64_t **a1, int a2, unint64_t a3)
{
  if (a2 == 1)
  {
    sub_100743EB4(a1, a3);
  }

  else if (!a2)
  {
    sub_100743E34(a1, a3);
  }
}

void sub_100743E34(uint64_t **a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (a1 + 1);
    do
    {
      v4 = v2[4];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = v2[v6];
    }

    while (v2);
    if (v3 != (a1 + 1) && v3[4] <= a2)
    {
      sub_10045E8A0(a1, v3);

      operator delete(v3);
    }
  }
}

void sub_100743EB4(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (a1 + 24);
    v5 = v2;
    do
    {
      v6 = v3[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = v3[v8];
    }

    while (v3);
    if (v5 != v2 && v5[4] <= a2)
    {
      sub_10045E8A0(v4, v5);

      operator delete(v5);
    }
  }
}

id sub_100743F38(uint64_t a1, uint64_t *a2, void *a3)
{
  if ([a3 objectForKey:@"associatedStoreIdentifiers"])
  {
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [a3 objectForKey:@"associatedStoreIdentifiers"];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          sub_10000EC00(__p, [*(*(&v18 + 1) + 8 * i) UTF8String]);
          sub_100249B9C(&v22, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v6);
    }

    v9 = *a2;
    sub_1007443A0(&v14, &v22);
    *(v9 + 24) = 1;
    if ((v9 + 32) != &v14)
    {
      sub_100744480((v9 + 32), v14, &v15);
    }

    sub_10001AF44(&v14, v15);
    sub_10001AF44(&v22, v23[0]);
  }

  if ([a3 objectForKey:@"muid"] && objc_msgSend(objc_msgSend(a3, "objectForKey:", @"muid"), "unsignedLongLongValue"))
  {
    v10 = *a2;
    v11 = [objc_msgSend(a3 objectForKey:{@"muid", "unsignedLongLongValue"}];
    *(v10 + 56) = 1;
    *(v10 + 64) = v11;
  }

  result = [a3 objectForKey:@"resultProviderIdentifier"];
  if (result)
  {
    result = [objc_msgSend(a3 objectForKey:{@"resultProviderIdentifier", "intValue"}];
    if (result)
    {
      v13 = *a2;
      result = [objc_msgSend(a3 objectForKey:{@"resultProviderIdentifier", "intValue"}];
      *(v13 + 72) = 1;
      *(v13 + 76) = result;
    }
  }

  return result;
}

void sub_100744178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char *a27)
{
  sub_10001AF44(&a9, a10);
  sub_10001AF44(&a26, a27);
  _Unwind_Resume(a1);
}

void sub_1007441D4(uint64_t a1, void *a2, void *a3)
{
  sub_10000EC00(&v5, [a2 UTF8String]);
  sub_10000EC00(&__p, [a3 UTF8String]);
  sub_10074472C();
}

void sub_10074433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    sub_100008080(v25);
  }

  v28 = *(v26 - 48);
  if (v28)
  {
    sub_100008080(v28);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007443A0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007443F8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007443F8(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100249EE8(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t **sub_100744480(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = sub_100744604(v5, &v16, v15 + 4);
          sub_10002393C(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_10047CC44(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10074467C(&v13);
  }

  if (a2 != a3)
  {
    sub_1007446D4();
  }

  return result;
}

void *sub_100744604(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((sub_100019438(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t sub_10074467C(uint64_t a1)
{
  sub_10001AF44(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10001AF44(*a1, v2);
  }

  return a1;
}

uint64_t sub_1007447A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10246E808;
  sub_1007448D8((a1 + 24), a2, a3);
  return a1;
}

void sub_10074481C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246E808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100744870(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_10001AF44(a1 + 56, *(a1 + 64));
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

char *sub_1007448D8(char *a1, uint64_t a2, uint64_t a3)
{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_100743BF8(a1, v7, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  return a1;
}

void sub_100744960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1018714AC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100744984(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  result = sub_10005C6F0(a1, a2, a3, a4, a5);
  *result = off_10246E858;
  *(result + 41) = 0;
  return result;
}

uint64_t sub_1007449BC(uint64_t a1)
{
  *a1 = off_10246E858;
  if (*(a1 + 41) == 1)
  {
    if (qword_1025D41F0 != -1)
    {
      sub_1019280EC();
    }

    v2 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      *buf = 138477827;
      v8 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Service client is going away: %{private}@. Disabling AOP service.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928100(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLFlickGestureSubscription::~CLFlickGestureSubscription()", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v4 = sub_100FBF164();
    sub_100FBF44C(v4, 0);
  }

  sub_100114E74(a1);
  return a1;
}

void sub_100744B78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100744B88(uint64_t a1)
{
  sub_1007449BC(a1);

  operator delete();
}

uint64_t sub_100744BC0@<X0>(uint64_t a1@<X8>)
{
  v3[0] = off_10246E8D8;
  v3[1] = sub_100744CC0;
  v3[2] = 0;
  v3[3] = v3;
  sub_10000EC00(__p, "kCLConnectionMessageFlickGestureServiceRequest");
  sub_1007453A4(v6, v3);
  sub_10074567C(a1, __p, 1);
  sub_1007455FC(v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1007455FC(v3);
}

void sub_100744C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_100745424(&a13);
  sub_1007455FC(&a9);
  _Unwind_Resume(a1);
}

void sub_100744CC0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  sub_1000F3B70(a1);
  sub_10000EC00(buf, "com.apple.locationd.flickgesturemanager");
  v5 = sub_1001C2F40(a1);
  v6 = v5;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (qword_1025D41F0 != -1)
    {
      sub_101928144();
    }

    v16 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 24);
      *buf = 138477827;
      *&buf[4] = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Client %{private}@ is not entitled.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101928100(buf);
      v19 = *(a1 + 24);
      v27 = 138477827;
      v28 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLFlickGestureSubscription::handleMessageFlickGestureServiceRequest(std::shared_ptr<CLConnectionMessage>)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v33 = CMErrorMessage;
    v34 = &off_10254EED0;
    *buf = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    sub_1007452F0();
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v8 = CMFlickServiceEnable;
  if (![Dictionary objectForKey:CMFlickServiceEnable] || (v9 = objc_msgSend(Dictionary, "objectForKeyedSubscript:", v8)) == 0)
  {
    if (qword_1025D41F0 != -1)
    {
      sub_101928144();
    }

    v18 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Invalid parameters!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101928100(buf);
      LOWORD(v27) = 0;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLFlickGestureSubscription::handleMessageFlickGestureServiceRequest(std::shared_ptr<CLConnectionMessage>)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    goto LABEL_31;
  }

  if (!sub_100FBF164())
  {
    v31 = CMErrorMessage;
    v32 = &off_10254EEE8;
    [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    CLConnectionMessage::sendReply();
LABEL_31:
    sub_1000F3B70(a1);
    goto LABEL_32;
  }

  v10 = [v9 BOOLValue];
  if ([Dictionary objectForKey:v8])
  {
    if (qword_1025D41F0 != -1)
    {
      sub_101928144();
    }

    v11 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      v12 = "disable";
      v13 = *(a1 + 24);
      if (v10)
      {
        v12 = "enable";
      }

      *buf = 138478083;
      *&buf[4] = v13;
      v36 = 2082;
      v37 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Incoming Flick service request from client (%{private}@): %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928100(buf);
      v22 = "disable";
      v23 = *(a1 + 24);
      if (v10)
      {
        v22 = "enable";
      }

      v27 = 138478083;
      v28 = v23;
      v29 = 2082;
      v30 = v22;
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFlickGestureSubscription::handleMessageFlickGestureServiceRequest(std::shared_ptr<CLConnectionMessage>)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    *(a1 + 41) = v10;
    v14 = sub_100FBF164();
    if (sub_100FBF44C(v14, v10))
    {
      v15 = 100;
    }

    else
    {
      v15 = 108;
    }

    v25 = CMErrorMessage;
    v26 = [NSNumber numberWithUnsignedInt:v15];
    *buf = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    sub_1007452F0();
  }

  sub_1000F3B70(a1);
LABEL_32:
}

void sub_10074535C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007453A4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100745424(uint64_t a1)
{
  sub_1007455FC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1007454BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246E8D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007454EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_10074558C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007455B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007455FC(uint64_t a1)
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

uint64_t sub_10074567C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_1007456F8(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1007456F8(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100745954();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100745940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007459D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007459D0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100745B2C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100745A1C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100745A94((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100745A78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100745A94(uint64_t a1, uint64_t a2)
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

void sub_100745B2C(uint64_t a1)
{
  sub_1007455FC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100745B7C(uint64_t a1)
{
  sub_100745BB8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100745BB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100745B2C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id *sub_100745C2C(id *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void sub_100745C64(void *a1, uint64_t a2)
{
  if (&_ADClientAddValueForScalarKey)
  {
    v2 = [[NSString alloc] initWithFormat:@"%@.%@", *a1, a2];
    ADClientAddValueForScalarKey();
  }
}

void sub_100745CEC(void *a1, uint64_t a2)
{
  v2 = [[NSString alloc] initWithFormat:@"%@.%@", *a1, a2];
  ADClientSetValueForScalarKey();
}

void sub_100745D64(void *a1, uint64_t a2)
{
  v2 = [[NSString alloc] initWithFormat:@"%@.%@", *a1, a2];
  ADClientPushValueForDistributionKey();
}

void sub_100745DDC(void *a1@<X8>)
{
  v5 = 0;
  sub_10001CAF4(buf);
  v2 = sub_10005BBE4(*buf, "GpsSignalEnvironmentAiding", &v5);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v5 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 ^ 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10192816C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLSE,GpsSignalEnvironmentAiding,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101928194(v3);
  }

  if (v3)
  {
    operator new();
  }

  *a1 = 0;
}

void sub_100745F60(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100746514(va);
  operator delete();
}

void sub_100745FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  sub_10074647C(a1 + 16, a3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (*(a1 + 40))
  {
    if (qword_1025D4650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1019282E8(qword_1025D4650 == -1);
    abort_report_np();
    __break(1u);
  }

  sub_101928290();
LABEL_3:
  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLSE,initializing", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019282A4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLGnssAssistanceSignalEnv::CLGnssAssistanceSignalEnv(id<CLIntersiloUniverse>, CLGnssAssistanceSignalEnvCallback)", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sub_100CDF87C();
}

void sub_1007461D8(_Unwind_Exception *a1)
{
  sub_100746514((v1 + 2));
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100746234(uint64_t *a1)
{
  sub_100746514((a1 + 2));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

id sub_100746294(_DWORD *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101928290();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,CLGnssAssistanceSignalEnv,stop", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019285C8();
  }

  result = [*(*a1 + 16) unregister:*(*a1 + 8) forNotification:0];
  a1[12] = 0;
  return result;
}

void sub_100746340(uint64_t a1, char a2)
{
  *(a1 + 64) = a2;
  v2 = (a1 + 64);
  if (qword_1025D4650 != -1)
  {
    sub_101928290();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v4 = *v2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLSE,fIsAirborne,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019288AC(v2);
  }
}

uint64_t sub_10074647C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100746514(uint64_t a1)
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

void *sub_100746594(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = a2;
  a1[2] = 26;
  sub_100747250((a1 + 3), a3);
  return a1;
}

void sub_1007465D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1019289A0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007465F0(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100746620(void *a1)
{
  result = (***a1)(*a1, a1[1]);
  v4 = result;
  if (result)
  {
    v5 = v3;
    if (qword_1025D43F0 != -1)
    {
      sub_1019289C4();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v7[0]) = 67109120;
      HIDWORD(v7[0]) = v4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateDetector,sending event %d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019289D8(v4);
    }

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7[0] = v4;
    v7[1] = v5;
    return sub_100746770((a1 + 3), 8);
  }

  return result;
}

uint64_t sub_100746770(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1007467C4(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 0x100) != 0)
    {

      return sub_100746620(a1);
    }
  }

  return result;
}

uint64_t sub_100746834(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {

      return sub_100746620(a1);
    }
  }

  return result;
}

void sub_1007468A4(void *a1, uint64_t a2, double a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  if (((*(*v6 + 16))(v6) & 0x10000) == 0)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1019289C4();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLWorkoutActiveStateDetector, feedExternalActiveState called, but settings not updated", v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928BAC();
    }

    return;
  }

  if (!*a1)
  {
LABEL_18:
    v12 = 0;
    if (a2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_21;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_1019289C4();
  }

  v8 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLWorkoutActiveStateDetector, feedExternalActiveState, calling current model", v14, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101928AC8();
  }

  v9 = (*(**a1 + 24))(*a1, a2, a3);
  v11 = v9;
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFF00000000;
    a3 = v10;
LABEL_21:
    if (qword_1025D43F0 != -1)
    {
      sub_101928C90();
    }

    v13 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v14[0]) = 67109120;
      HIDWORD(v14[0]) = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateDetector, feedExternalActiveState sending event %d", v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928CB8(v11);
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14[0] = v12 | v11;
    *&v14[1] = a3;
    sub_100746770((a1 + 3), 8);
  }
}

void sub_100746B44(void *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    if (((*(*v3 + 16))(v3) & 0x1000000) != 0)
    {
      if (*a1)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1019289C4();
        }

        v6 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLWorkoutActiveStateDetector, feedPedNetActivePedState, calling current model", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101928DA8();
        }

        v8 = (*(**a1 + 32))(*a1, a2);
        if (v8)
        {
          v9 = v7;
          if (qword_1025D43F0 != -1)
          {
            sub_101928C90();
          }

          v10 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v11[0]) = 67109120;
            HIDWORD(v11[0]) = v8;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateDetector, feedPedNetActivePedState sending event %d", v11, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101928E8C(v8);
          }

          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          v11[0] = v8;
          v11[1] = v9;
          sub_100746770((a1 + 3), 8);
        }
      }
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_1019289C4();
      }

      v5 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLWorkoutActiveStateDetector, feedPedNetActivePedState called, but settings not updated", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101928F7C();
      }
    }
  }
}

void sub_100746DA8(void *a1, char *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_1019289C4();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 134349056;
    *&v10[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateDetector,setting workout type to,%{public}ld", v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101929060(a2);
  }

  v5 = (a1 + 2);
  if (a1[2] == a2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101928C90();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v5;
      *v10 = 134349056;
      *&v10[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateDetector,workout type didn't change,%{public}ld", v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101929164(v5);
    }

    return;
  }

  *v5 = a2;
  if ((a2 - 25) < 0x47)
  {
    goto LABEL_15;
  }

  if (a2 > 14)
  {
    if (a2 > 18)
    {
      if ((a2 - 19) < 5)
      {
        goto LABEL_15;
      }

      if (a2 != 24)
      {
        if (a2 != 96)
        {
          return;
        }

        goto LABEL_28;
      }

LABEL_36:
      sub_1007470E8();
    }

    if (a2 > 16)
    {
      if (a2 == 17)
      {
        sub_100747080();
      }
    }

    else if (a2 == 15)
    {
      goto LABEL_36;
    }

    sub_100747150();
  }

  if (a2 > 4 || (a2 - 1) < 3)
  {
LABEL_15:
    v8 = *a1;
    *a1 = 0;
    if (v8)
    {
      (*(*v8 + 48))(v8);
    }

    return;
  }

  if (a2)
  {
    if (a2 == 4)
    {
      sub_1007471B8();
    }

    return;
  }

LABEL_28:
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 48))(v9);
  }

  *v5 = 0;
}

uint64_t sub_100747250(uint64_t a1, uint64_t a2)
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

void sub_100747330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10246E9D0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000EE3E8();
}

void sub_100747A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v20 = v17[9];
  v17[9] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v17[8];
  v17[8] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v17[7];
  v17[7] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = v17[6];
  v17[6] = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = v17[5];
  v17[5] = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = v17[4];
  v17[4] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = v17[3];
  v17[3] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v17[2];
  v17[2] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *v18;
  *v18 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_100747C74(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onClientNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onClientNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067CCA8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100747E50(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onNetworkLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onNetworkLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067D1EC(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10074802C(uint64_t a1, _DWORD *a2, uint8_t *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067D420(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100748208(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067C9B8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007483E4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onSignalEnvironmentNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onSignalEnvironmentNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067CB98(a4, a1, a2, a3);
}

uint64_t sub_1007485C0(uint64_t a1)
{
  *a1 = off_10246E9D0;

  *(a1 + 104) = 0;
  [*(a1 + 96) stopMonitoringEmergencyState:CLISP_ME_TOKEN];

  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

void sub_1007487E0(uint64_t a1)
{
  sub_1007485C0(a1);

  operator delete();
}

uint64_t sub_100748818(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
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

  v6 = a1[5];
  a1[5] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  result = a1[9];
  a1[9] = 0;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

id sub_100748970(uint64_t a1, uint64_t a2)
{
  if (a2 == 12)
  {
    sub_1005F3624();
  }

  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);

  return [v4 register:v5 forNotification:a2 registrationInfo:0];
}

void sub_100748A6C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v8 = qword_102637AD0;
    if (byte_102637AD8[23] < 0)
    {
      sub_100007244(__p, *byte_102637AD8, *&byte_102637AD8[8]);
    }

    else
    {
      *__p = *byte_102637AD8;
      v10 = *&byte_102637AD8[16];
    }

    v11 = xmmword_102637AF0;
    v12 = xmmword_102637B00;
    v13 = xmmword_102637B10;
    v14 = qword_102637B20;
    if ([*(a1 + 104) syncgetAssociatedNetwork:&v8])
    {
      *a3 = v8;
      v6 = (a3 + 8);
      if (SHIBYTE(v10) < 0)
      {
        sub_100007244(v6, __p[0], __p[1]);
      }

      else
      {
        *v6 = *__p;
        *(a3 + 24) = v10;
      }

      v7 = v12;
      *(a3 + 32) = v11;
      *(a3 + 48) = v7;
      *(a3 + 64) = v13;
      *(a3 + 80) = v14;
      *(a3 + 88) = 1;
    }

    else
    {
      sub_1000FB724(a3, &byte_102637A70);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019292A8();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "WIFI_LOC: failed to get power state", &v8, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019292BC();
    }

    sub_1000FB724(a3, &byte_102637A70);
  }
}

void sub_100748C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100748C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_msgSend(*(a1 + 88) "vendor")];

  return [v9 syncgetQueryLocationsForWifis:a2 useCache:a3 piggyback:a4 config:a5];
}

__n128 sub_100748CE0@<Q0>(uint64_t a1@<X8>)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0xB812000000;
  v12 = sub_1000474A0;
  v13 = nullsub_43;
  v14 = &unk_10238AE8B;
  CLMotionActivity::init(&v15);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100748DFC;
  v8[3] = &unk_10244F938;
  v8[4] = &v9;
  sub_1005C3C9C(v8);
  v2 = v10;
  v3 = *(v10 + 10);
  *(a1 + 96) = *(v10 + 9);
  *(a1 + 112) = v3;
  *(a1 + 128) = v2[22];
  v4 = *(v2 + 6);
  *(a1 + 32) = *(v2 + 5);
  *(a1 + 48) = v4;
  v5 = *(v2 + 8);
  *(a1 + 64) = *(v2 + 7);
  *(a1 + 80) = v5;
  v6 = *(v2 + 4);
  *a1 = *(v2 + 3);
  *(a1 + 16) = v6;
  _Block_object_dispose(&v9, 8);
  return result;
}

void sub_100748DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100748E34(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = [objc_msgSend(*(a1 + 88) "vendor")];
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = *(a2 + 32);
  return [v7 requestTileDownloadForLat:v10 lon:a3 details:a4];
}

void sub_100748F74(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10246EB58;
  sub_100747330((a1 + 3), *a2, *a3);
}

void sub_100748FF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246EB58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100749074()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100749138()
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

uint64_t sub_10074B858(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v97) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v97 & 0x7F) << v5;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            LOBYTE(v97) = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v97 & 0x7F) << v12;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_174:
              v93 = 16;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_174;
        case 2u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 104) |= 0x100u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v97 & 0x7F) << v50;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v52;
          }

LABEL_178:
          v93 = 48;
          goto LABEL_199;
        case 3u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 104) |= 0x10000u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v97 & 0x7F) << v33;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_162:
          v93 = 80;
          goto LABEL_199;
        case 4u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 104) |= 0x2000u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v97 & 0x7F) << v40;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_166;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v42;
          }

LABEL_166:
          v93 = 68;
          goto LABEL_199;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 104) |= 0x800u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v97 & 0x7F) << v24;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v26;
          }

LABEL_158:
          v93 = 60;
          goto LABEL_199;
        case 6u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 104) |= 0x8000u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v97 & 0x7F) << v62;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v10 = v63++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v64;
          }

LABEL_186:
          v93 = 76;
          goto LABEL_199;
        case 7u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 104) |= 0x400u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v97 & 0x7F) << v71;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v73;
          }

LABEL_190:
          v93 = 56;
          goto LABEL_199;
        case 8u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 104) |= 0x1000u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v97 & 0x7F) << v45;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v47;
          }

LABEL_170:
          v93 = 64;
          goto LABEL_199;
        case 9u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 104) |= 0x4000u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v97 & 0x7F) << v80;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v82;
          }

LABEL_194:
          v93 = 72;
          goto LABEL_199;
        case 0xAu:
          *(a1 + 104) |= 0x80u;
          LODWORD(v97) = 0;
          v31 = [a2 position] + 4;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 44;
          goto LABEL_224;
        case 0xBu:
          *(a1 + 104) |= 0x10u;
          LODWORD(v97) = 0;
          v78 = [a2 position] + 4;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 4, v79 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 32;
          goto LABEL_224;
        case 0xCu:
          *(a1 + 104) |= 0x20u;
          LODWORD(v97) = 0;
          v22 = [a2 position] + 4;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 36;
          goto LABEL_224;
        case 0xDu:
          *(a1 + 104) |= 0x40u;
          LODWORD(v97) = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 40;
          goto LABEL_224;
        case 0xEu:
          *(a1 + 104) |= 2u;
          LODWORD(v97) = 0;
          v69 = [a2 position] + 4;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 4, v70 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 20;
          goto LABEL_224;
        case 0xFu:
          *(a1 + 104) |= 4u;
          LODWORD(v97) = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 24;
          goto LABEL_224;
        case 0x10u:
          *(a1 + 104) |= 8u;
          LODWORD(v97) = 0;
          v38 = [a2 position] + 4;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 28;
          goto LABEL_224;
        case 0x11u:
          *(a1 + 104) |= 0x100000u;
          LODWORD(v97) = 0;
          v18 = [a2 position] + 4;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 96;
          goto LABEL_224;
        case 0x12u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 104) |= 0x200u;
          while (1)
          {
            LOBYTE(v97) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v97 & 0x7F) << v55;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v10 = v56++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_182;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v57;
          }

LABEL_182:
          v93 = 52;
          goto LABEL_199;
        case 0x13u:
          *(a1 + 104) |= 1u;
          v97 = 0;
          v76 = [a2 position] + 8;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 8, v77 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v97;
          goto LABEL_225;
        case 0x14u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 104) |= 0x40000u;
          break;
        case 0x15u:
          *(a1 + 104) |= 0x20000u;
          LODWORD(v97) = 0;
          v60 = [a2 position] + 4;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 84;
          goto LABEL_224;
        case 0x16u:
          *(a1 + 104) |= 0x200000u;
          LODWORD(v97) = 0;
          v67 = [a2 position] + 4;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 4, v68 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 100;
          goto LABEL_224;
        case 0x17u:
          *(a1 + 104) |= 0x80000u;
          LODWORD(v97) = 0;
          v85 = [a2 position] + 4;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 4, v86 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v94 = v97;
          v95 = 92;
LABEL_224:
          *(a1 + v95) = v94;
          goto LABEL_225;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_225;
      }

      while (1)
      {
        LOBYTE(v97) = 0;
        v90 = [a2 position] + 1;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v89 |= (v97 & 0x7F) << v87;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v87 += 7;
        v10 = v88++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_198;
        }
      }

      v17 = [a2 hasError] ? 0 : v89;
LABEL_198:
      v93 = 88;
LABEL_199:
      *(a1 + v93) = v17;
LABEL_225:
      v96 = [a2 position];
    }

    while (v96 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10074E7AC(uint64_t a1, void *a2)
{
  v2 = sub_101171B9C(a1, a2);
  *v2 = off_10246EBD0;
  *(v2 + 7) = 0u;
  v2[21] = 0;
  v2[20] = v2 + 21;
  v2[22] = 0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 46) = -1;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 148) = 0;
  *(v2 + 298) = 0;
  v2[38] = v2 + 39;
  v2[39] = 0;
  v2[40] = 0;
  v2[41] = 0;
  v2[43] = off_10245B020;
  operator new();
}

void sub_10074F028(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10075330C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10074F1F4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007530A8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10074F3C8(uint64_t a1)
{
  if ((*(a1 + 296) & 1) == 0)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1019294B8();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 297);
      v5 = *(a1 + 328) == 0;
      v6 = 68289538;
      v7 = 2082;
      v8 = "";
      v9 = 1026;
      v10 = v4;
      v11 = 1026;
      v12 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:iB: Initializing, unlocked:%{public}d, awaiting:%{public}d}", &v6, 0x1Eu);
    }

    sub_1011E41AC();
  }

  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v1 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "iB: Already initialized", &v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019294CC();
  }
}

void sub_10074F720(void *a1)
{
  *a1 = off_10246EBD0;
  sub_10074FCD8(a1);
  sub_100754500(a1 + 43);
}

void sub_10074F940(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onAuthorizationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onAuthorizationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100751EC8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10074FB0C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onBeaconNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onBeaconNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100751610(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10074FCD8(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 336) = 0;
}

uint64_t sub_10074FDC4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v4 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 16))(__p, a2);
    v5 = v11 >= 0 ? __p : __p[0];
    v6 = *(a1 + 176);
    *buf = 68289539;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2081;
    *&v13[12] = v5;
    *&v13[20] = 2050;
    *&v13[22] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Adding monitored region, region:%{private, location:escape_only}s, totalRegions:%{public}lu}", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  memset(v13, 0, sizeof(v13));
  *buf = off_1024576F0;
  memset(v14, 0, sizeof(v14));
  memset(&v15, 0, sizeof(v15));
  v17 = 0;
  v18 = off_102457740;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  std::string::operator=(v13, (a2 + 8));
  *&v13[24] = *(a2 + 32);
  std::string::operator=(v14, (a2 + 40));
  std::string::operator=(&v14[1], (a2 + 64));
  std::string::operator=(&v15, (a2 + 88));
  v16 = *(a2 + 112);
  if (v7)
  {
    if (sub_100071CA0())
    {
      sub_10004FD18(v9);
      (*(*a2 + 16))(__p, a2);
      sub_1004FE93C(v9, "btle_fence_installed", __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100071CAC(v9, "locationd");
      sub_100005DA4(v9);
    }

    sub_100BC007C(a2, (a1 + 192), *(a1 + 32));
  }

  else
  {
    v17 = 3;
  }

  LODWORD(__p[0]) = 0;
  (*(*a1 + 152))(a1, __p, buf, 0, 0xFFFFFFFFLL, 0);
  v18 = off_102457740;
  if (SBYTE7(v20) < 0)
  {
    operator delete(v19);
  }

  return sub_10005DB2C(buf);
}

void sub_100750104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100005DA4(&a10);
  sub_100754570(&a18);
  _Unwind_Resume(a1);
}

void sub_100750154(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 32) "vendor")];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  [v5 syncgetFences:a3 forBundle:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6)}];
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v7 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
  {
    v8 = *(a3 + 16);
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10[0] = 68289538;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v8;
    v15 = 2082;
    v16 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Retrieved monitored regions, numRegions:%{public}lu, bundle:%{public, location:escape_only}s}", v10, 0x26u);
  }
}

BOOL sub_100750298(uint64_t a1, uint64_t a2)
{
  v4[0] = v4;
  v4[1] = v4;
  v5 = 0;
  (*(*a1 + 224))(a1, a2, v4);
  v2 = v5 != 0;
  sub_10003DD44(v4);
  return v2;
}

void sub_100750308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003DD44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10075031C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v4 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 16))(__p, a2);
    v5 = v11 >= 0 ? __p : __p[0];
    v6 = *(a1 + 176);
    *buf = 68289539;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2081;
    *&v13[12] = v5;
    *&v13[20] = 2050;
    *&v13[22] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Removing monitored region, region:%{private, location:escape_only}s, totalRegions:%{public}lu}", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  memset(v13, 0, sizeof(v13));
  *buf = off_1024576F0;
  memset(v14, 0, sizeof(v14));
  memset(&v15, 0, sizeof(v15));
  v17 = 0;
  v18 = off_102457740;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  std::string::operator=(v13, (a2 + 8));
  *&v13[24] = *(a2 + 32);
  std::string::operator=(v14, (a2 + 40));
  std::string::operator=(&v14[1], (a2 + 64));
  std::string::operator=(&v15, (a2 + 88));
  v16 = *(a2 + 112);
  if (v7)
  {
    if (sub_100071CA0())
    {
      sub_10004FD18(v9);
      (*(*a2 + 16))(__p, a2);
      sub_1004FE93C(v9, "btle_fence_uninstalled", __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100071CAC(v9, "locationd");
      sub_100005DA4(v9);
    }

    sub_100BC0390(a2, *(a1 + 32));
  }

  else
  {
    v17 = 3;
  }

  LODWORD(__p[0]) = 1;
  (*(*a1 + 152))(a1, __p, buf, 0, 0xFFFFFFFFLL, 0);
  v18 = off_102457740;
  if (SBYTE7(v20) < 0)
  {
    operator delete(v19);
  }

  return sub_10005DB2C(buf);
}

void sub_10075063C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100005DA4(&a10);
  sub_100754570(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10075068C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "vendor")];
  if (*(a2 + 63) >= 0)
  {
    v5 = a2 + 40;
  }

  else
  {
    v5 = *(a2 + 40);
  }

  v6 = [NSString stringWithUTF8String:v5];
  if (*(a2 + 87) >= 0)
  {
    v7 = a2 + 64;
  }

  else
  {
    v7 = *(a2 + 64);
  }

  v8 = [v4 syncgetCanBundle:v6 performFenceOperationFor:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7)}];
  if (v8)
  {
    v9 = v8;
    if (qword_1025D4610 != -1)
    {
      sub_1019294B8();
    }

    v10 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
    {
      (*(*a2 + 16))(&__p, a2);
      v11 = SHIBYTE(v37[1]) >= 0 ? &__p : __p;
      *buf = 67240451;
      *&buf[4] = v9;
      LOWORD(v48) = 2081;
      *(&v48 + 2) = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#Warning Authorization error,%{public}d, while requesting state for region,%{private}s", buf, 0x12u);
      if (SHIBYTE(v37[1]) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4610 != -1)
      {
        sub_101929410();
      }

      (*(*a2 + 16))(buf, a2);
      if (v48 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      *v30 = 67240451;
      *&v30[4] = v9;
      *&v30[8] = 2081;
      *&v30[10] = v23;
      v24 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v48) < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLBTLEFenceManagerConcrete::requestRegionState(const CLBTLEBeaconRegion_Type::MonitoredRegion &)", "%s\n", v24);
      if (v24 != &__p)
      {
        free(v24);
      }
    }

    v38 = 0u;
    *v37 = 0u;
    __p = off_1024576F0;
    memset(v39, 0, sizeof(v39));
    memset(&v40, 0, sizeof(v40));
    v42 = 0;
    v43 = off_102457740;
    v44 = 0u;
    v45 = 0u;
    v46 = 1;
    std::string::operator=(v37, (a2 + 8));
    *(&v38 + 1) = *(a2 + 32);
    std::string::operator=(v39, (a2 + 40));
    std::string::operator=(&v39[1], (a2 + 64));
    std::string::operator=(&v40, (a2 + 88));
    v12 = *(a2 + 112);
    v46 = 1;
    if (v9 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if (v9 == 1)
    {
      v13 = 1;
    }

    v41 = v12;
    v42 = v13;
    *buf = 3;
    (*(*a1 + 152))(a1, buf, &__p, 0, 0xFFFFFFFFLL, 0);
    v43 = off_102457740;
    if (SBYTE7(v45) < 0)
    {
      operator delete(v44);
    }

    p_p = &__p;
  }

  else
  {
    v49 = 0u;
    v48 = 0u;
    memset(v50, 0, sizeof(v50));
    memset(&v51, 0, sizeof(v51));
    *buf = off_1024576F0;
    v53 = 0;
    v54 = off_102457740;
    v55 = 0u;
    v56 = 0u;
    v57 = 1;
    std::string::operator=(&v48, (a2 + 8));
    *(&v49 + 1) = *(a2 + 32);
    std::string::operator=(v50, (a2 + 40));
    std::string::operator=(&v50[1], (a2 + 64));
    std::string::operator=(&v51, (a2 + 88));
    v52 = *(a2 + 112);
    __p = off_102457740;
    if (*(a2 + 31) < 0)
    {
      sub_100007244(v37, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v37 = *(a2 + 8);
      *&v38 = *(a2 + 24);
    }

    *(&v38 + 1) = *(a2 + 32);
    v15 = sub_100755CBC(a1 + 160, &__p);
    __p = off_102457740;
    if (SBYTE7(v38) < 0)
    {
      operator delete(v37[0]);
    }

    if (a1 + 168 == v15)
    {
      v19 = *(a1 + 328);
      if (v19)
      {
        v57 = sub_10073CA1C(v19, a2);
      }

      else
      {
        if (qword_1025D4610 != -1)
        {
          sub_101929410();
        }

        v20 = qword_1025D4618;
        if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a2 + 16))(&__p, a2);
          v21 = SHIBYTE(v37[1]) >= 0 ? &__p : __p;
          *v30 = 136380675;
          *&v30[4] = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Unable to find region,%{private}s, in the cache", v30, 0xCu);
          if (SHIBYTE(v37[1]) < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101929438(&__p);
          (*(*a2 + 16))(v30, a2);
          if (v31 >= 0)
          {
            v28 = v30;
          }

          else
          {
            v28 = *v30;
          }

          v32 = 136380675;
          v33 = v28;
          v29 = _os_log_send_and_compose_impl();
          if (v31 < 0)
          {
            operator delete(*v30);
          }

          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLBTLEFenceManagerConcrete::requestRegionState(const CLBTLEBeaconRegion_Type::MonitoredRegion &)", "%s\n", v29);
          if (v29 != &__p)
          {
            free(v29);
          }
        }

        v57 = 1;
        v53 = 3;
      }
    }

    else
    {
      if (qword_1025D4610 != -1)
      {
        sub_101929410();
      }

      v16 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(&__p, a2);
        v17 = SHIBYTE(v37[1]) >= 0 ? &__p : __p;
        v18 = *(v15 + 96);
        *v30 = 136380931;
        *&v30[4] = v17;
        *&v30[12] = 1025;
        *&v30[14] = v18;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "iB: Region,%{private}s, has state,%{private}d", v30, 0x12u);
        if (SHIBYTE(v37[1]) < 0)
        {
          operator delete(__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101929438(&__p);
        (*(*a2 + 16))(v30, a2);
        if (v31 >= 0)
        {
          v25 = v30;
        }

        else
        {
          v25 = *v30;
        }

        v26 = *(v15 + 96);
        v32 = 136380931;
        v33 = v25;
        v34 = 1025;
        v35 = v26;
        v27 = _os_log_send_and_compose_impl();
        if (v31 < 0)
        {
          operator delete(*v30);
        }

        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLBTLEFenceManagerConcrete::requestRegionState(const CLBTLEBeaconRegion_Type::MonitoredRegion &)", "%s\n", v27);
        if (v27 != &__p)
        {
          free(v27);
        }
      }

      v57 = *(v15 + 96);
    }

    LODWORD(__p) = 3;
    (*(*a1 + 152))(a1, &__p, buf, 0, 0xFFFFFFFFLL, 0);
    v54 = off_102457740;
    if (SBYTE7(v56) < 0)
    {
      operator delete(v55);
    }

    p_p = buf;
  }

  return sub_10005DB2C(p_p);
}

uint64_t sub_100751060(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableSet set];
  v5 = *(a1 + 160);
  v6 = (a1 + 168);
  if (v5 != v6)
  {
    do
    {
      if (*(v5 + 24) == 2)
      {
        v7 = v5[9];
        if (v7 != v5 + 10)
        {
          do
          {
            if ((v7[18] & 5) != 0)
            {
              v8 = v7 + 9;
              if (*(v7 + 95) < 0)
              {
                v8 = *v8;
              }

              [v4 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v8)}];
            }

            v9 = v7[1];
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
                v10 = v7[2];
                v11 = *v10 == v7;
                v7 = v10;
              }

              while (!v11);
            }

            v7 = v10;
          }

          while (v10 != v5 + 10);
        }
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v11 = *v13 == v5;
          v5 = v13;
        }

        while (!v11);
      }

      v5 = v13;
    }

    while (v13 != v6);
  }

  v14 = *(a2 + 16);

  return v14(a2, v4);
}

void sub_1007511A8(uint64_t a1, const std::string *a2, int a3, int a4, int a5)
{
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v10 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    v31 = v11;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = a4;
    v36 = 1024;
    v37 = a5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@iB: Simulating Beacon : %s.%d.%d  RegionState : %d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4610 != -1)
    {
      sub_101929410();
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = a2->__r_.__value_.__r.__words[0];
    }

    *v21 = 136315906;
    *&v21[4] = v15;
    *&v21[12] = 1024;
    *&v21[14] = a3;
    *&v21[18] = 1024;
    *&v21[20] = a4;
    LOWORD(v22) = 1024;
    *(&v22 + 2) = a5;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLBTLEFenceManagerConcrete::simulateBeaconEvent(const std::string &, int, int, CLBTLEBeaconRegion_Type::RegionStates)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v20 = 1;
  *v21 = v21;
  *&v21[8] = v21;
  *&v21[16] = 0;
  v22 = off_102457740;
  *v23 = 0u;
  v24 = 0u;
  v25 = off_102457740;
  v26 = 0u;
  v27 = 0u;
  v29 = 1;
  if (a5 == 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  if (a5 == 2)
  {
    v12 = 2;
  }

  v28 = v12;
  *__p = 0uLL;
  v19 = 0uLL;
  std::string::operator=(__p, a2);
  WORD4(v19) = a3;
  WORD5(v19) = a4;
  HIDWORD(v19) = 7;
  std::string::operator=(v23, __p);
  *(&v24 + 1) = *(&v19 + 1);
  sub_100751610(a1, v13, &v20, v21);
  if (qword_1025D4610 != -1)
  {
    sub_101929410();
  }

  v14 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "@iB: Simulating Beacon : beacon notification sent", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101929438(buf);
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLBTLEFenceManagerConcrete::simulateBeaconEvent(const std::string &, int, int, CLBTLEBeaconRegion_Type::RegionStates)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v25 = off_102457740;
  if (SBYTE7(v27) < 0)
  {
    operator delete(v26);
  }

  v22 = off_102457740;
  if (SBYTE7(v24) < 0)
  {
    operator delete(v23[0]);
  }

  sub_1007545D4(v21);
}

void sub_1007515DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100754680(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100751610(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 != 1)
  {
    return result;
  }

  v5 = result;
  v38 = 0u;
  v37 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(&v42, 0, sizeof(v42));
  v36 = off_1024576F0;
  v44 = 0;
  v45 = off_102457740;
  v46 = 0u;
  v47 = 0u;
  v6 = *(a4 + 104);
  if (v6 == 4)
  {
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    v6 = 1;
LABEL_6:
    v48 = v6;
    goto LABEL_7;
  }

  v48 = 2;
  std::string::operator=(&v46, (a4 + 72));
  *(&v47 + 1) = *(a4 + 96);
LABEL_7:
  if (qword_1025D4610 != -1)
  {
    sub_101929410();
  }

  v7 = a4 + 24;
  v8 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v7 + 16))(__p, a4 + 24);
    v9 = v35;
    v10 = __p[0];
    v51 = a4 + 24;
    v11 = *(sub_100755FE0(v5 + 160, a4 + 24) + 96);
    v12 = __p;
    if (v9 < 0)
    {
      v12 = v10;
    }

    v13 = *(v5 + 176);
    *buf = 68290051;
    *&buf[4] = 0;
    *v53 = 2082;
    *&v53[2] = "";
    *&v53[10] = 2081;
    *&v53[12] = v12;
    v54 = 1025;
    v55 = v11;
    v56 = 1025;
    v57 = v48;
    v58 = 2050;
    v59 = v13;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Zone state transition, region:%{private, location:escape_only}s, fromState:%{private}d, toState:%{private}d, totalRegions:%{public}lu}", buf, 0x32u);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = a4 + 24;
  v14 = *(sub_100755FE0(v5 + 160, a4 + 24) + 96);
  v15 = v48;
  v16 = v14 == 1 || v48 == 1;
  if (v16)
  {
    v33 = 0;
    v18 = v48;
  }

  else
  {
    *buf = a4 + 24;
    v17 = sub_100755FE0(v5 + 160, a4 + 24);
    v18 = v48;
    v33 = *(v17 + 96) != v48;
  }

  *buf = a4 + 24;
  *(sub_100755FE0(v5 + 160, a4 + 24) + 96) = v18;
  v50 = *(a4 + 108);
  *buf = a4 + 24;
  v19 = *(sub_100755FE0(v5 + 160, a4 + 24) + 72);
  v21 = v14 != 1 || v15 == 1;
  v32 = v21;
  while (1)
  {
    v22 = v19;
    *buf = v7;
    if (v19 == (sub_100755FE0(v5 + 160, v7) + 80))
    {
      break;
    }

    std::string::operator=(&v37, (v22 + 5));
    *(&v38 + 1) = v22[8];
    std::string::operator=(&v39, v22 + 3);
    std::string::operator=((&v40 + 8), v22 + 4);
    std::string::operator=(&v42, v22 + 5);
    v43 = *(v22 + 36);
    sub_100BC0700(&v36, (v5 + 192));
    if (v33)
    {
      if (v23 = *(v22 + 36), (v23) && v48 == 2 || (v23 & 2) != 0 && v48 == 4)
      {
        *buf = buf;
        *v53 = buf;
        *&v53[8] = 0;
        v24 = [objc_msgSend(*(v5 + 32) "vendor")];
        if ((SBYTE7(v40) & 0x80u) == 0)
        {
          v25 = &v39;
        }

        else
        {
          v25 = v39;
        }

        v26 = [NSString stringWithUTF8String:v25];
        if (v41 >= 0)
        {
          v27 = &v40 + 8;
        }

        else
        {
          v27 = *(&v40 + 1);
        }

        [v24 syncgetFences:buf forBundle:v26 onBehalfOf:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v27)}];
        v49 = *&v53[8];
        sub_10003DD44(buf);
        *buf = v22 + 4;
        sub_10075661C(v5 + 304, (v22 + 4));
        *buf = CFAbsoluteTimeGetCurrent();
        LODWORD(__p[0]) = 0;
        sub_1007567B4();
      }
    }

    if (v32)
    {
      if (v15 == 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *buf = 3;
      (*(*v5 + 152))(v5, buf, &v36, 0, 0xFFFFFFFFLL, 0);
    }

    v28 = *(v5 + 328);
    if (v28)
    {
      sub_10073B10C(v28, (v22 + 4), v48);
    }

    else
    {
      if (qword_1025D4610 != -1)
      {
        sub_101929410();
      }

      v29 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#Warning iB: state changed before first unlock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101929438(buf);
        LOWORD(__p[0]) = 0;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBTLEFenceManagerConcrete::onBeaconNotification(int, const CLBTLEBeaconProvider_Type::Notification &, const CLBTLEBeaconProvider_Type::NotificationData &)", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

LABEL_50:
    v30 = v22[1];
    if (v30)
    {
      do
      {
        v19 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v19 = v22[2];
        v16 = *v19 == v22;
        v22 = v19;
      }

      while (!v16);
    }
  }

  v45 = off_102457740;
  if (SBYTE7(v47) < 0)
  {
    operator delete(v46);
  }

  return sub_10005DB2C(&v36);
}

uint64_t sub_100751EC8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  if (v6 != a4)
  {
    v8 = a1 + 168;
    v41 = a1 + 168;
    while (1)
    {
      v42 = off_102457740;
      if (*(v6 + 47) < 0)
      {
        sub_100007244(&v43, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v43 = *(v6 + 24);
      }

      v9 = v6 + 16;
      v44 = *(v6 + 48);
      if (*a3 == 1)
      {
        break;
      }

      if (!*a3)
      {
        v10 = sub_100755CBC(a1 + 160, &v42);
        if (v8 == v10 || !sub_100755E2C(v10 + 72, v6 + 16))
        {
          if (qword_1025D4610 != -1)
          {
            sub_101929410();
          }

          v22 = qword_1025D4618;
          if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
          {
            (*(*v9 + 16))(buf, v6 + 16);
            v23 = buf[23] >= 0 ? buf : *buf;
            __p = 68289283;
            v50 = 2082;
            v51 = "";
            v52 = 2081;
            v53 = v23;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Resuming monitoring for fence, region:%{private, location:escape_only}s}", &__p, 0x1Cu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          *buf = off_102457740;
          *&buf[8] = 0u;
          v55 = 0u;
          std::string::operator=(&buf[8], &v43);
          *(&v55 + 1) = v44;
          if (([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] & 1) == 0)
          {
            if (qword_1025D4610 != -1)
            {
              sub_101929410();
            }

            v24 = qword_1025D4618;
            if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
            {
              (*(*v9 + 16))(&__p, v6 + 16);
              p_p = &__p;
              if (SBYTE3(v53) < 0)
              {
                p_p = __p;
              }

              *v45 = 136380675;
              *&v45[4] = p_p;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "Unable to monitor the zone for region,%{private}s", v45, 0xCu);
              if (SBYTE3(v53) < 0)
              {
                operator delete(__p);
              }
            }

            v8 = v41;
            if (sub_10000A100(121, 0))
            {
              sub_101929438(&__p);
              (*(*v9 + 16))(v45, v6 + 16);
              v35 = v45;
              if (v46 < 0)
              {
                v35 = *v45;
              }

              v47 = 136380675;
              v48 = v35;
              v36 = _os_log_send_and_compose_impl();
              if (v46 < 0)
              {
                operator delete(*v45);
              }

              sub_100152C7C("Generic", 1, 0, 0, "void CLBTLEFenceManagerConcrete::onAuthorizationNotification(int, const CLBeaconFenceAuthorizationManager_Type::Notification &, const CLBeaconFenceAuthorizationManager_Type::NotificationData &)", "%s\n", v36);
              if (v36 != &__p)
              {
                free(v36);
              }

              v8 = v41;
            }
          }

          __p = &v42;
          v26 = sub_100755FE0(a1 + 160, &v42);
          sub_10075628C(v26 + 72, v6 + 16);
          __p = &v42;
          if (*(sub_100755FE0(a1 + 160, &v42) + 96) != 1)
          {
            goto LABEL_94;
          }

          v27 = *(a1 + 328);
          if (v27)
          {
            v28 = sub_10073CA1C(v27, v6 + 16);
            __p = &v42;
            *(sub_100755FE0(a1 + 160, &v42) + 96) = v28;
LABEL_94:
            *buf = off_102457740;
            if (SBYTE7(v55) < 0)
            {
              operator delete(*&buf[8]);
            }

            goto LABEL_96;
          }

          if (qword_1025D4610 != -1)
          {
            sub_101929410();
          }

          v32 = qword_1025D4618;
          if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p) = 0;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#Warning iB: state kNotificationFenceResume, before first unlock", &__p, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_94;
          }

          sub_101929438(&__p);
          *v45 = 0;
          v33 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLBTLEFenceManagerConcrete::onAuthorizationNotification(int, const CLBeaconFenceAuthorizationManager_Type::Notification &, const CLBeaconFenceAuthorizationManager_Type::NotificationData &)", "%s\n", v33);
          goto LABEL_115;
        }

        if (qword_1025D4610 != -1)
        {
          sub_101929410();
        }

        v11 = qword_1025D4618;
        if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
        {
          (*(*v9 + 16))(&__p, v6 + 16);
          v12 = &__p;
          if (SBYTE3(v53) < 0)
          {
            v12 = __p;
          }

          *buf = 136380675;
          *&buf[4] = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "iB: Already resumed monitoring for fence,%{private}s", buf, 0xCu);
          if (SBYTE3(v53) < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101929438(&__p);
          (*(*v9 + 16))(buf, v6 + 16);
          if (buf[23] >= 0)
          {
            v13 = buf;
          }

          else
          {
            v13 = *buf;
          }

          *v45 = 136380675;
          *&v45[4] = v13;
          v14 = _os_log_send_and_compose_impl();
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

LABEL_81:
          sub_100152C7C("Generic", 1, 0, 2, "void CLBTLEFenceManagerConcrete::onAuthorizationNotification(int, const CLBeaconFenceAuthorizationManager_Type::Notification &, const CLBeaconFenceAuthorizationManager_Type::NotificationData &)", "%s\n", v14);
          if (v14 != &__p)
          {
            free(v14);
          }
        }
      }

LABEL_96:
      v42 = off_102457740;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      v6 = *(v6 + 8);
      if (v6 == a4)
      {
        goto LABEL_117;
      }
    }

    v15 = sub_100755CBC(a1 + 160, &v42);
    if (v8 != v15 && sub_100755E2C(v15 + 72, v6 + 16))
    {
      if (qword_1025D4610 != -1)
      {
        sub_101929410();
      }

      v16 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
      {
        (*(*v9 + 16))(buf, v6 + 16);
        v17 = buf[23] >= 0 ? buf : *buf;
        __p = 68289283;
        v50 = 2082;
        v51 = "";
        v52 = 2081;
        v53 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Suspending monitoring for fence, region:%{private, location:escape_only}s}", &__p, 0x1Cu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      *buf = off_102457740;
      *&buf[8] = 0u;
      v55 = 0u;
      std::string::operator=(&buf[8], &v43);
      *(&v55 + 1) = v44;
      if (([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] & 1) == 0)
      {
        if (qword_1025D4610 != -1)
        {
          sub_101929410();
        }

        v18 = qword_1025D4618;
        if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
        {
          (*(*v9 + 16))(&__p, v6 + 16);
          v19 = &__p;
          if (SBYTE3(v53) < 0)
          {
            v19 = __p;
          }

          *v45 = 136380675;
          *&v45[4] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Unable to unmonitor the zone for fence,%{private}s", v45, 0xCu);
          if (SBYTE3(v53) < 0)
          {
            operator delete(__p);
          }
        }

        v8 = v41;
        if (sub_10000A100(121, 0))
        {
          sub_101929438(&__p);
          (*(*v9 + 16))(v45, v6 + 16);
          v37 = v45;
          if (v46 < 0)
          {
            v37 = *v45;
          }

          v47 = 136380675;
          v48 = v37;
          v38 = _os_log_send_and_compose_impl();
          if (v46 < 0)
          {
            operator delete(*v45);
          }

          sub_100152C7C("Generic", 1, 0, 0, "void CLBTLEFenceManagerConcrete::onAuthorizationNotification(int, const CLBeaconFenceAuthorizationManager_Type::Notification &, const CLBeaconFenceAuthorizationManager_Type::NotificationData &)", "%s\n", v38);
          if (v38 != &__p)
          {
            free(v38);
          }

          v8 = v41;
        }
      }

      __p = &v42;
      v20 = sub_100755FE0(a1 + 160, &v42);
      sub_100756488((v20 + 72), v6 + 16);
      __p = &v42;
      if (!*(sub_100755FE0(a1 + 160, &v42) + 88))
      {
        sub_100756588((a1 + 160), &v42);
      }

      if (*(a4 + 28) != 1)
      {
        goto LABEL_94;
      }

      v21 = *(a1 + 328);
      if (v21)
      {
        sub_10073BB68(v21, v6 + 16);
        goto LABEL_94;
      }

      if (qword_1025D4610 != -1)
      {
        sub_101929410();
      }

      v34 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "iB: state kNotificationFenceSuspend, before first unlock", &__p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_94;
      }

      sub_101929438(&__p);
      *v45 = 0;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLBTLEFenceManagerConcrete::onAuthorizationNotification(int, const CLBeaconFenceAuthorizationManager_Type::Notification &, const CLBeaconFenceAuthorizationManager_Type::NotificationData &)", "%s\n", v33);
LABEL_115:
      if (v33 != &__p)
      {
        free(v33);
      }

      goto LABEL_94;
    }

    if (qword_1025D4610 != -1)
    {
      sub_101929410();
    }

    v29 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      (*(*v9 + 16))(&__p, v6 + 16);
      v30 = &__p;
      if (SBYTE3(v53) < 0)
      {
        v30 = __p;
      }

      *buf = 136380675;
      *&buf[4] = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "iB: Fence,%{private}s, is not being monitored, the suspension request will be ignored", buf, 0xCu);
      if (SBYTE3(v53) < 0)
      {
        operator delete(__p);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_96;
    }

    sub_101929438(&__p);
    (*(*v9 + 16))(buf, v6 + 16);
    if (buf[23] >= 0)
    {
      v31 = buf;
    }

    else
    {
      v31 = *buf;
    }

    *v45 = 136380675;
    *&v45[4] = v31;
    v14 = _os_log_send_and_compose_impl();
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_81;
  }

LABEL_117:
  result = sub_100071CA0();
  if (result)
  {
    sub_10004FD18(&v42);
    v40 = *(a4 + 8);
    if (v40 != a4)
    {
      while (*a3 != 1)
      {
        if (!*a3)
        {
          (*(*(v40 + 16) + 16))(&__p);
          sub_1004FE93C(&v42, "btle_fence_resume", &__p);
          goto LABEL_123;
        }

LABEL_125:
        v40 = *(v40 + 8);
        if (v40 == a4)
        {
          goto LABEL_126;
        }
      }

      (*(*(v40 + 16) + 16))(&__p);
      sub_1004FE93C(&v42, "btle_fence_suspend", &__p);
LABEL_123:
      if (SBYTE3(v53) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_125;
    }

LABEL_126:
    sub_100071CAC(&v42, "locationd");
    return sub_100005DA4(&v42);
  }

  return result;
}

void sub_100752D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v38 - 144) = v37;
  if (*(v38 - 113) < 0)
  {
    operator delete(*(v38 - 136));
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id **sub_100752E18(id **result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v8[0] = 2;
    (*(*v3 + 19))(v3, v8, result + 5, 0, 0xFFFFFFFFLL, 0);
    if (qword_1025D4610 != -1)
    {
      sub_101929410();
    }

    v4 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2 + 10;
      if (*(v2 + 103) < 0)
      {
        v5 = *v5;
      }

      v8[0] = 68289283;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2081;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Launching application for notification (if necessary), bundle:%{private, location:escape_only}s}", v8, 0x1Cu);
    }

    v6 = [objc_msgSend(v3[4] "vendor")];
    v7 = v2 + 10;
    if (*(v2 + 103) < 0)
    {
      v7 = *v7;
    }

    return [v6 launchApplication:+[NSString stringWithUTF8String:](NSString requiringAuthForServiceMask:{"stringWithUTF8String:", v7), 1}];
  }

  return result;
}

uint64_t sub_100752F98(uint64_t a1, uint64_t a2)
{
  result = sub_1004C04F8(a1 + 40, a2 + 40);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = off_102457740;
  if (*(a2 + 199) < 0)
  {
    result = sub_100007244((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v5 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v5;
  }

  *(a1 + 200) = *(a2 + 200);
  v6 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v6;
  return result;
}

uint64_t sub_100753044(uint64_t a1)
{
  *(a1 + 168) = off_102457740;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  return sub_10005DB2C(a1 + 40);
}

void sub_1007530A8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4 && *(a4 + 188) == 0)
  {
    v6 = *(a1 + 328);
    if (v6)
    {

      sub_10073AE10(v6);
    }

    else
    {
      if (qword_1025D4610 != -1)
      {
        sub_1019294B8();
      }

      v7 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "iB: Warning data can't be cleared yet", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019295BC();
      }

      *(a1 + 298) = 1;
    }
  }
}

size_t sub_10075318C@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  snprintf(__str, 0x20uLL, "%d", a1);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

BOOL sub_10075327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v6 = *(a6 + 23);
  if (v6 >= 0)
  {
    v7 = *(a6 + 23);
  }

  else
  {
    v7 = a6[1];
  }

  v8 = *(a4 + 63);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 48);
  }

  if (v7 == v8 && (v6 >= 0 ? (v10 = a6) : (v10 = *a6), (v13 = *(a4 + 40), v11 = (a4 + 40), v12 = v13, v9 >= 0) ? (v14 = v11) : (v14 = v12), !memcmp(v10, v14, v7)))
  {
    return 1;
  }

  else
  {
    return v7 == 0;
  }
}

void sub_10075330C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int8 *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1019294B8();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 297);
      v8 = a4[4];
      v9 = *(a1 + 328) == 0;
      *buf = 67240704;
      *&buf[4] = v7;
      LOWORD(v21) = 1026;
      *(&v21 + 2) = v8;
      HIWORD(v21) = 1026;
      LODWORD(v22) = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "iB: state kNotificationDeviceUnlockedSinceBoot, from, %{public}d, to, %{public}d, start, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019297BC(a1, a4);
    }

    v10 = a4[4];
    *(a1 + 297) = v10;
    if (v10 == 1)
    {
      [*(*(a1 + 136) + 16) unregister:*(*(a1 + 136) + 8) forNotification:1];
      sub_100753584(a1, "kNotificationDeviceUnlockedSinceBoot");
      if (*(a1 + 176))
      {
        *buf = 0;
        v21 = 0;
        v22 = 0;
        v11 = *(a1 + 160);
        if (v11 != (a1 + 168))
        {
          v12 = 0;
          do
          {
            v13 = v11[9];
            if (v13 != v11 + 10)
            {
              do
              {
                if (v12 >= v22)
                {
                  v12 = sub_10075470C(buf, (v13 + 4));
                }

                else
                {
                  sub_1004C04F8(v12, (v13 + 4));
                  v12 += 120;
                }

                v21 = v12;
                v14 = v13[1];
                if (v14)
                {
                  do
                  {
                    v15 = v14;
                    v14 = *v14;
                  }

                  while (v14);
                }

                else
                {
                  do
                  {
                    v15 = v13[2];
                    v16 = *v15 == v13;
                    v13 = v15;
                  }

                  while (!v16);
                }

                v13 = v15;
              }

              while (v15 != v11 + 10);
            }

            v17 = v11[1];
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
                v18 = v11[2];
                v16 = *v18 == v11;
                v11 = v18;
              }

              while (!v16);
            }

            v11 = v18;
          }

          while (v18 != (a1 + 168));
        }

        sub_10073C4E0(*(a1 + 328), buf);
        v19 = buf;
        sub_1007549C8(&v19);
      }
    }
  }
}

void sub_100753550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  sub_1007549C8(&a10);
  _Unwind_Resume(a1);
}

void sub_100753584(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4610 != -1)
  {
    sub_1019294B8();
  }

  v4 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 328);
    v6 = *(a1 + 297);
    v7 = 134284035;
    v8 = v5;
    v9 = 1026;
    v10 = v6;
    v11 = 2082;
    v12 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "iB: createStateDatabase, fStateDatabase, %{private}p, fDeviceUnlockedSinceBoot, %{public}d, reason, %{public}s", &v7, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019298F4(a1);
  }

  if (!*(a1 + 328) && *(a1 + 297) == 1)
  {
    operator new();
  }
}

uint64_t sub_1007537DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1025D8320, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_101929B2C();
    a1 = v3;
  }

  v1 = *(*a1 + 96);

  return v1();
}

BOOL sub_100753860(uint64_t a1, void *a2, int *a3)
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
      sub_10192947C();
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
      sub_101929B94(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_100753A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100753AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0u;
  v7 = 0u;
  v5 = off_1024576F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = off_102457740;
  v16 = 0u;
  __p = 0u;
  v17 = 1;
  (*(*a1 + 152))(a1, a2, &v5, a3, a4, 0);
  v14 = off_102457740;
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p);
  }

  return sub_10005DB2C(&v5);
}

void sub_100753B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100754570(va);
  _Unwind_Resume(a1);
}

void sub_100753B94(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_1007554EC(buf, a2, &v9);
      sub_100755374();
    }

    if (a4)
    {
      sub_100755818();
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
      sub_100754D7C();
    }
  }
}

void sub_100754040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007557A0(va);
  sub_1007557DC(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_10075406C(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10192947C();
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
      sub_101929DC0(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10192947C();
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
      sub_101929C9C(a1);
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
              sub_101929490();
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
                sub_101929490();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::listClients() [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v16);
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

uint64_t sub_100754570(uint64_t a1)
{
  *(a1 + 128) = off_102457740;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  return sub_10005DB2C(a1);
}

void sub_1007545D4(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        *(v2 + 6) = off_102457740;
        if (v2[79] < 0)
        {
          operator delete(*(v2 + 7));
        }

        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_100754680(uint64_t a1)
{
  *(a1 + 64) = off_102457740;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 24) = off_102457740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_1007545D4(a1);
  return a1;
}

uint64_t sub_10075470C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_10028C64C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10075483C(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  sub_1004C04F8(120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  sub_100754894(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10075495C(&v13);
  return v12;
}

void sub_100754828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10075495C(va);
  _Unwind_Resume(a1);
}

void sub_10075483C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100754894(uint64_t a1, uint64_t a2, uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_1004C04F8(a4 + v7, v8);
      v8 += 120;
      v7 += 120;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 15;
        result = (*v12)(v6);
        v10 += 15;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_100754940(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_101929ED4(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075495C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 120);
    *(a1 + 16) = i - 120;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007549C8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 120;
      v7 = v4 - 120;
      v8 = v4 - 120;
      do
      {
        v9 = *v8;
        v8 -= 120;
        (*v9)(v7);
        v6 -= 120;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100754A88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754A88(a1, *a2);
    sub_100754A88(a1, a2[1]);
    sub_100754AF4(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_100754AF4(uint64_t a1, uint64_t a2)
{
  sub_100754B64(a2 + 40, *(a2 + 48));
  *a2 = off_102457740;
  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_100754B64(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754B64(a1, *a2);
    sub_100754B64(a1, a2[1]);
    (*a2[4])();

    operator delete(a2);
  }
}

void sub_100754BF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100754BF4(a1, *a2);
    sub_100754BF4(a1, a2[1]);
    sub_100754C58(a2 + 19);
    sub_10005DB2C((a2 + 4));

    operator delete(a2);
  }
}

void sub_100754C58(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_100754CCC((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_100754CCC(uint64_t a1)
{
  *(a1 + 72) = 0;
  *(a1 + 8) = off_102457740;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_100754D30(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006241D0(result);

    operator delete();
  }

  return result;
}

void sub_100754EC0(void *a1, int *a2, void *a3)
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
        v10 = sub_100755A64(a3);
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

            v15 = *(v11 + 8);
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
              sub_10075527C(a1, &v36, &v37, a3);
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
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
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
                sub_101929490();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
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
                  sub_101929490();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v35);
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

_BYTE *sub_10075527C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100755A64(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100036120(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10075545C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007554A8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1007554A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 16);

  sub_10075573C(a1 + 8, v3);
}

uint64_t sub_1007554EC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_100755544((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_100755544(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002E96E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10075559C(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_1005A4918(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100755620();
  }

  return result;
}

void sub_1007556BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007556D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007556D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10075573C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10075573C(a1, *a2);
    sub_10075573C(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1007557A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_10075573C(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_1007557DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_10075573C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_100755884(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10246EDB8;
  sub_1004C04F8(a1 + 24, a2);
  *(a1 + 144) = *(a2 + 120);
  *(a1 + 152) = off_102457740;
  if (*(a2 + 159) < 0)
  {
    sub_100007244((a1 + 160), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v4 = *(a2 + 136);
    *(a1 + 176) = *(a2 + 152);
    *(a1 + 160) = v4;
  }

  *(a1 + 184) = *(a2 + 160);
  v5 = *(a2 + 168);
  *(a1 + 200) = *(a2 + 176);
  *(a1 + 192) = v5;
  return a1;
}

void sub_100755938(_Unwind_Exception *a1)
{
  sub_10005DB2C(&v1[1]);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void sub_10075597C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246EDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007559DC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 128) = off_102457740;
    if (*(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    sub_10005DB2C(v1);

    operator delete();
  }

  return result;
}

id sub_100755A64(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100755AC4(a1);
}

id sub_100755AC4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
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
      v13 = 0x8000000101C8C88ALL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
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
      v13 = 0x8000000101C8C88ALL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_100755CBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100755D40(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100755D40(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL sub_100755D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a2 + 36);
  v4 = v2 < v3;
  if (v2 != v3)
  {
    return v4;
  }

  if (v2)
  {
    v11 = *(a1 + 31);
    if (v11 >= 0)
    {
      v12 = *(a1 + 31);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    v13 = *(a2 + 31);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 16);
    }

    if (v12 != v13)
    {
      return (sub_100019438((a1 + 8), (a2 + 8)) & 0x80u) != 0;
    }

    v15 = v11 >= 0 ? (a1 + 8) : *(a1 + 8);
    v16 = v14 >= 0 ? (a2 + 8) : *(a2 + 8);
    if (memcmp(v15, v16, v12))
    {
      return (sub_100019438((a1 + 8), (a2 + 8)) & 0x80u) != 0;
    }
  }

  if ((v2 & 2) == 0 || (v7 = *(a1 + 32), v8 = *(a2 + 32), v9 = v7 >= v8, v7 == v8))
  {
    if ((v2 & 4) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 34) >= *(a2 + 34);
  }

  return !v9;
}

uint64_t sub_100755E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_100755E94(a2, (v2 + 4)) & 1) == 0)
      {
        if (!sub_100755E94((v2 + 4), a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_100755E94(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 64);
  v3 = (a2 + 64);
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = *(a1 + 87);
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = *(a2 + 87);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 72);
  }

  if (v5 != v6)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v10 = (v4 >= 0 ? a1 + 64 : *v2);
  v11 = v7 >= 0 ? (a2 + 64) : *v3;
  if (memcmp(v10, v11, v5))
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v2 = (a1 + 40);
  v3 = (a2 + 40);
  v12 = *(a1 + 63);
  if (v12 >= 0)
  {
    v13 = *(a1 + 63);
  }

  else
  {
    v13 = *(a1 + 48);
  }

  v14 = *(a2 + 63);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 48);
  }

  if (v13 != v14)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v16 = (v12 >= 0 ? a1 + 40 : *v2);
  v17 = v15 >= 0 ? (a2 + 40) : *v3;
  if (memcmp(v16, v17, v13))
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v2 = (a1 + 88);
  v3 = (a2 + 88);
  v18 = *(a1 + 111);
  if (v18 >= 0)
  {
    v19 = *(a1 + 111);
  }

  else
  {
    v19 = *(a1 + 96);
  }

  v20 = *(a2 + 111);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 96);
  }

  if (v19 != v20)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  v22 = (v18 >= 0 ? a1 + 88 : *v2);
  v23 = v21 >= 0 ? (a2 + 88) : *v3;
  result = memcmp(v22, v23, v19);
  if (result)
  {
    return (sub_100019438(v2, v3) & 0x80u) != 0;
  }

  return result;
}

uint64_t sub_100755FE0(uint64_t a1, uint64_t a2)
{
  result = *sub_100756078(a1, &v3, a2);
  if (!result)
  {
    sub_100756100();
  }

  return result;
}

void *sub_100756078(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100755D40(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100755D40((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_10075618C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10075622C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007561A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = off_102457740;
  v4 = a1 + 8;
  if (*(v3 + 31) < 0)
  {
    sub_100007244(v4, *(v3 + 8), *(v3 + 16));
  }

  else
  {
    v5 = *(v3 + 8);
    *(v4 + 16) = *(v3 + 24);
    *v4 = v5;
  }

  v6 = *(v3 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = a1 + 48;
  *(a1 + 64) = 1;
  return a1;
}

void sub_10075622C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100754AF4(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_10075628C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_10075631C(a1, &v4, a2);
  if (!v2)
  {
    sub_1007563A4();
  }

  return v2;
}

void *sub_10075631C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100755E94(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100755E94((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_10075641C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[4])();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100756488(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100756504(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  (*v4[4])();
  operator delete(v4);
  return 1;
}

uint64_t sub_100756504(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100755E94(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100755E94(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_100756588(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100755CBC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007565D0(a1, v3);
  return 1;
}

uint64_t *sub_1007565D0(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10045E8A0(a1, a2);
  sub_100754AF4(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_10075661C(uint64_t a1, uint64_t a2)
{
  result = *sub_10075631C(a1, &v3, a2);
  if (!result)
  {
    sub_1007566B4();
  }

  return result;
}

void sub_100756738(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100756754(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100756754(uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100754C58(__p + 19);
    sub_10005DB2C((__p + 4));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_100756864(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  *a1 = a2;
  *(a1 + 8) = off_102457740;
  if (*(a3 + 31) < 0)
  {
    sub_100007244((a1 + 16), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v13 = *(a3 + 8);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 16) = v13;
  }

  *(a1 + 40) = *(a3 + 32);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a7;
  *(a1 + 64) = a6;
  *(a1 + 72) = [[CLOSTransaction alloc] initWithDescription:"Pending iBeacon notification"];
  return a1;
}

void sub_100756934(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756A98(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 128) = off_102457740;
    if (*(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    sub_10005DB2C(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100756B20(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  sub_100754C58(a2 + 19);
  sub_10005DB2C((a2 + 4));
  operator delete(a2);
  return v3;
}

void sub_100756BBC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D45B0 != -1)
  {
    sub_101929F54();
  }

  v4 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_DEFAULT))
  {
    CLConnection::getName(__p, *(a1 + 8));
    v5 = SHIBYTE(v21);
    v6 = *__p;
    RemotePid = CLConnection::getRemotePid(*(a1 + 8));
    v8 = __p;
    buf[0] = 134349826;
    if (v5 < 0)
    {
      v8 = v6;
    }

    *&buf[1] = a1;
    v26 = 2114;
    v27 = a2;
    v28 = 2082;
    v29 = v8;
    v30 = 1026;
    v31 = RemotePid;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLDeviceImpactClient:%{public}p] onDeviceImpactUpdate: %{public}@, %{public}s (%{public}d)", buf, 0x26u);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101929F68(buf);
    CLConnection::getName(v14, *(a1 + 8));
    v9 = v15;
    v10 = v14[0];
    v11 = CLConnection::getRemotePid(*(a1 + 8));
    v12 = v14;
    *__p = 134349826;
    if (v9 < 0)
    {
      v12 = v10;
    }

    *&__p[4] = a1;
    v19 = 2114;
    v20 = a2;
    v21 = 2082;
    v22 = v12;
    v23 = 1026;
    v24 = v11;
    v13 = _os_log_send_and_compose_impl();
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceImpactClient::onDeviceImpactUpdate(CMDeviceImpact *)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v16 = CMDeviceImpactData;
  v17 = a2;
  *__p = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  sub_100757DC8();
}

void sub_100756E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756EF8(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_10246EE28;
  v5 = [[CLDeviceImpactClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = v5;
  [(CLDeviceImpactClientAdapter *)v5 setValid:1];
  v6 = [objc_msgSend(a3 "vendor")];
  *(a1 + 32) = v6;
  [v6 registerDelegate:*(a1 + 24) inSilo:{objc_msgSend(a3, "silo")}];
  [*(a1 + 32) setDelegateEntityName:"CLDeviceImpactClient"];
  CLConnection::setDefaultMessageHandler();
  return a1;
}

void sub_100757024(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_100757098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007570B4(uint64_t a1)
{
  *a1 = off_10246EE28;

  [*(a1 + 24) setValid:0];

  return sub_100143A80(a1);
}

void sub_100757128(uint64_t a1)
{
  sub_1007570B4(a1);

  operator delete();
}

void sub_1007573FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100757448(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 38 && !memcmp(*v4, "DeviceImpact/kCLConnectionMessageQuery", 0x26uLL))
  {
    sub_100757160();
  }

  v5 = CLConnectionMessage::name(*a2);
  if (*(v5 + 23) < 0 && *(v5 + 8) == 39 && !memcmp(*v5, "DeviceImpact/kCLConnectionMessageUpdate", 0x27uLL))
  {
    sub_100757160();
  }

  v6 = CLConnectionMessage::name(*a2);
  if (*(v6 + 23) < 0 && *(v6 + 8) == 43 && !memcmp(*v6, "DeviceImpact/kCLConnectionMessageClearCache", 0x2BuLL))
  {
    sub_100757160();
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 41 && !memcmp(*v7, "DeviceImpact/kCLConnectionMessageSimulate", 0x29uLL))
  {
    sub_100757160();
  }

  if (qword_1025D45B0 != -1)
  {
    sub_101929F54();
  }

  v8 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_FAULT))
  {
    v9 = CLConnectionMessage::name(*a2);
    v10 = *(v9 + 23);
    v11 = *v9;
    CLConnection::getName(__p, *(a1 + 8));
    v12 = SHIBYTE(v31);
    v13 = *__p;
    RemotePid = CLConnection::getRemotePid(*(a1 + 8));
    v15 = __p;
    *buf = 134349826;
    if (v12 < 0)
    {
      v15 = v13;
    }

    v36 = a1;
    if (v10 >= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    v37 = 2082;
    v38 = v16;
    v39 = 2082;
    v40 = v15;
    v41 = 1026;
    v42 = RemotePid;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "[CLDeviceImpactClient:%{public}p] Got unhandled mesage of type %{public}s, %{public}s (%{public}d)", buf, 0x26u);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101929F68(buf);
    v17 = CLConnectionMessage::name(*a2);
    v18 = *(v17 + 23);
    v19 = *v17;
    CLConnection::getName(v26, *(a1 + 8));
    v20 = v27;
    v21 = v26[0];
    v22 = CLConnection::getRemotePid(*(a1 + 8));
    v23 = v26;
    *__p = 134349826;
    if (v20 < 0)
    {
      v23 = v21;
    }

    *&__p[4] = a1;
    if (v18 >= 0)
    {
      v24 = v17;
    }

    else
    {
      v24 = v19;
    }

    v29 = 2082;
    v30 = v24;
    v31 = 2082;
    v32 = v23;
    v33 = 1026;
    v34 = v22;
    v25 = _os_log_send_and_compose_impl();
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual void CLDeviceImpactClient::handleMessage(std::shared_ptr<CLConnectionMessage>)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }
}

void sub_100757C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100757CC4(uint64_t a1, uint64_t a2)
{
  v3 = CMDeviceImpactArray;
  v4 = a2;
  [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_100757D4C(uint64_t result, uint64_t a2)
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

void sub_100757D68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void *sub_100757E3C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100757E98((a1 + 3), a2);
  return a1;
}

uint64_t sub_100757E98(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100757F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100757F98(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (sub_10001CB4C(a2, "EnableLCFusionForCarPlayV2", &v10))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_101929FD4();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      *buf = 67240448;
      *&buf[4] = v4;
      LOWORD(v12) = 1026;
      *(&v12 + 2) = v10;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "LCFusionCarPlay mobile assets read,EnableLCFusionForCarPlay,prev,%{public}d,read,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101929FFC(a1);
    }

    v5 = v10;
    *a1 = v10;
  }

  else
  {
    v5 = *a1;
  }

  v9 = v5;
  sub_10001CAF4(buf);
  v6 = sub_10001CB4C(*buf, "EnableLCFusionForCarPlayV2", &v9);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v6)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_101929FD4();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a1;
      *buf = 67240448;
      *&buf[4] = v8;
      LOWORD(v12) = 1026;
      *(&v12 + 2) = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "LCFusionCarPlay defaults write read,EnableLCFusionForCarPlay,prev,%{public}d,read,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A10C(a1);
    }

    *a1 = v9;
  }
}

void sub_100758194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007581B4(_DWORD *a1, uint64_t a2)
{
  sub_10004FD18(v14);
  if (sub_100185ADC(a2, "LCFusionCarPlayConfig", v14))
  {
    if (!off_1025D53B8)
    {
      operator new();
    }

    sub_100757F98(off_1025D53B8, v14);
    v13 = a1[10];
    if (sub_10005BBE4(v14, "LCFusionForCarPlayToggleHysteresis", &v13))
    {
      a1[10] = v13;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v4 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v18 = v13;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, ConditionSwitchHysteresisTime,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v15 = 67240192;
        v16 = v13;
        v8 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }

    v12 = a1[11];
    if (sub_10005BBE4(v14, "LowBatteryThreshold", &v12))
    {
      a1[11] = v12;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v18 = v12;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, LowBatteryThreshold,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v15 = 67240192;
        v16 = v12;
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    v11 = a1[12];
    if (sub_10005BBE4(v14, "ProactiveMinSessionIntervalRecoveryMode", &v11))
    {
      a1[12] = v11;
      if (qword_1025D45E0 != -1)
      {
        sub_101929FD4();
      }

      v6 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v18 = v11;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LCFusionCarPlay mobile assets read, ProactiveMinSessionIntervalRecoveryMode,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192A21C(buf);
        v15 = 67240192;
        v16 = v11;
        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLCFusionCarPlayConditions::readMobileAssetConfiguration(const CLNameValuePair &)", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }
  }

  return sub_100005DA4(v14);
}

void sub_100758660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

double sub_100758698(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  return result;
}

void sub_100758710(uint64_t a1, int a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  v4 = v3 * 0.75 + 0.2;
  v5 = v3 * 0.75 + 0.125;
  if (a2 == 2)
  {
    v5 = v4;
  }

  *v2 = v5;
  if (qword_1025D4600 != -1)
  {
    sub_10192A260();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v2;
    v15 = 134349056;
    v16 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "DeviceProximityProcessor,fGnssLowAvailableProb,%{public}0.2f", &v15, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192A488(v2, v8, v9, v10, v11, v12, v13, v14);
  }
}

void sub_100758810(uint64_t a1, int a2, double a3)
{
  v6 = (a1 + 16);
  if (vabdd_f64(a3, *(a1 + 16)) > 6.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10192A260();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = *v6;
      v16 = 134349312;
      v17 = a3;
      v18 = 2050;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "DeviceProximityProcessor,FilterReset,timestamp,%{public}.2f,lastTimestamp,%{public}.2f", &v16, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A584(v6, v9, v10, v11, v12, v13, v14, v15);
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  *(a1 + 16) = a3;
  sub_100758710(a1, a2);
}

_OWORD *sub_100758940(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100758D3C((a1 + 2), a3);
  sub_10001A3E8();
  if (sub_10001CF04())
  {
    operator new();
  }

  sub_10001A3E8();
  if (sub_10071CC78())
  {
    operator new();
  }

  return a1;
}

void sub_100758B14(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_100759110(va);
  operator delete();
}

uint64_t *sub_100758BDC(uint64_t *a1)
{
  sub_100759190((a1 + 4));
  sub_10067A09C((a1 + 4));
  sub_100758E20(a1 + 3, 0);
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    operator delete();
  }

  sub_100758DD4(a1 + 1, 0);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete();
  }

  return a1;
}

double sub_100758C70(uint64_t *a1, _DWORD *a2, double *a3)
{
  v3 = *a1;
  if (*a1)
  {
    *a2 = *(v3 + 24);
    result = *(v3 + 16);
    *a3 = result;
  }

  return result;
}

void *sub_100758CBC(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1005F7838(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100758D3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100758DD4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100BB430C();

    operator delete();
  }

  return result;
}

uint64_t sub_100758E20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100920A10();

    operator delete();
  }

  return result;
}

uint64_t sub_100758EDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246EF48;
  a2[1] = v2;
  return result;
}

uint64_t sub_100758F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100758F54(uint64_t a1)
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

uint64_t sub_100759044(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246EFD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100759070(uint64_t a1, int *a2, double *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  sub_100758810(v4[2], *a2, *a3);

  return sub_10001123C(v4, v3);
}

uint64_t sub_1007590C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100759110(uint64_t a1)
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

uint64_t sub_100759190(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100759214()
{
  v1[4] = xmmword_101C8C930;
  v1[5] = unk_101C8C940;
  v1[6] = xmmword_101C8C950;
  v1[0] = xmmword_101C8C8F0;
  v1[1] = unk_101C8C900;
  v1[2] = xmmword_101C8C910;
  v1[3] = unk_101C8C920;
  sub_100758CBC(qword_102637288, v1, 7);
  return __cxa_atexit(sub_1007586E4, qword_102637288, dword_100000000);
}

void sub_1007592C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100196D1C())
  {
    if (sub_10019C22C(a2) && sub_100027FB4(a3) && sub_10019A2D4(a1) && (*(a1 + 88) & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (v8 >= *(sub_1000F7F38() + 34))
      {
        v9 = *(a1 + 64);
        if (v9 <= a4)
        {
          v14 = a4 - v9;
          if (a4 - v9 < sub_100759B38())
          {
            return;
          }

          v15 = sub_100759B80(a3, a1);
          v16 = sub_100759C20();
          if (v15 <= v16)
          {
            *__p = *a1;
            if (sub_100CE194C(a2))
            {
              if (qword_1025D4620 != -1)
              {
                sub_10192A6A4();
              }

              v23 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
              {
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, buf);
                v24 = v35 >= 0 ? buf : *buf;
                *__p = 134349571;
                *&__p[4] = v14;
                v44 = 2050;
                v45 = a4;
                v46 = 2085;
                v47 = v24;
                _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "@AlsDB, successfully increased cache age by %{public}.1fs via updating timestamp to %{public}.1f for centroid %{sensitive}s", __p, 0x20u);
                if (SHIBYTE(v35) < 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_10192A6A4();
                }

                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, v39);
                if (v42 >= 0)
                {
                  v27 = v39;
                }

                else
                {
                  v27 = *v39;
                }

                *buf = 134349571;
                *&buf[4] = v14;
                v33 = 2050;
                v34 = a4;
                v35 = 2085;
                v36 = v27;
                v28 = _os_log_send_and_compose_impl();
                if (v42 < 0)
                {
                  operator delete(*v39);
                }

                sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v28);
                if (v28 != __p)
                {
                  free(v28);
                }
              }

              sub_100759C68();
            }

            else
            {
              if (qword_1025D4620 != -1)
              {
                sub_10192A6A4();
              }

              v25 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
              {
                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, __p);
                v26 = v46 >= 0 ? COERCE_DOUBLE(__p) : *__p;
                *buf = 134349315;
                *&buf[4] = a4;
                v33 = 2085;
                v34 = v26;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "@AlsDB, could not update timestamp to %{public}.1f for centroid %{sensitive}s", buf, 0x16u);
                if (SHIBYTE(v46) < 0)
                {
                  operator delete(*__p);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_10192A6A4();
                }

                CFAbsoluteTimeGetCurrent();
                sub_100EFF768(a1, buf);
                if (v35 >= 0)
                {
                  v29 = buf;
                }

                else
                {
                  v29 = *buf;
                }

                *v39 = 134349315;
                *&v39[4] = a4;
                v40 = 2085;
                v41 = v29;
                v13 = _os_log_send_and_compose_impl();
                if (SHIBYTE(v35) < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v13);
                goto LABEL_25;
              }
            }
          }

          else
          {
            v17 = v16;
            if (qword_1025D4620 != -1)
            {
              sub_10192A6CC();
            }

            v18 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              v19 = buf;
              sub_100B1AA60(buf);
              if (v35 < 0)
              {
                v19 = *buf;
              }

              CFAbsoluteTimeGetCurrent();
              sub_100EFF768(a1, v39);
              if (v42 >= 0)
              {
                v20 = v39;
              }

              else
              {
                v20 = *v39;
              }

              *__p = 134349827;
              *&__p[4] = v15;
              v44 = 2050;
              v45 = v17;
              v46 = 2085;
              v47 = v19;
              v48 = 2085;
              v49 = v20;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "@AlsDB, skip cache age update as distance %{public}.1f greater than %{public}.0f, GPS %{sensitive}s, centroid %{sensitive}s", __p, 0x2Au);
              if (v42 < 0)
              {
                operator delete(*v39);
              }

              if (SHIBYTE(v35) < 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_10192A6E0(__p);
              sub_100B1AA60(v39);
              if (v42 >= 0)
              {
                v21 = v39;
              }

              else
              {
                v21 = *v39;
              }

              CFAbsoluteTimeGetCurrent();
              sub_100EFF768(a1, v30);
              if (v31 >= 0)
              {
                v22 = v30;
              }

              else
              {
                v22 = v30[0];
              }

              *buf = 134349827;
              *&buf[4] = v15;
              v33 = 2050;
              v34 = v17;
              v35 = 2085;
              v36 = v21;
              v37 = 2085;
              v38 = v22;
              v13 = _os_log_send_and_compose_impl();
              if (v31 < 0)
              {
                operator delete(v30[0]);
              }

              if (v42 < 0)
              {
                operator delete(*v39);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v13);
              goto LABEL_25;
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_10192A6CC();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            CFAbsoluteTimeGetCurrent();
            sub_100EFF768(a1, __p);
            v11 = v46 >= 0 ? COERCE_DOUBLE(__p) : *__p;
            *buf = 134349315;
            *&buf[4] = a4;
            v33 = 2085;
            v34 = v11;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@AlsDB, warning, current timestamp %{public}.1f less than query timestamp of centroid %{sensitive}s", buf, 0x16u);
            if (SHIBYTE(v46) < 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_10192A6A4();
            }

            CFAbsoluteTimeGetCurrent();
            sub_100EFF768(a1, buf);
            if (v35 >= 0)
            {
              v12 = buf;
            }

            else
            {
              v12 = *buf;
            }

            *v39 = 134349315;
            *&v39[4] = a4;
            v40 = 2085;
            v41 = v12;
            v13 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v35) < 0)
            {
              operator delete(*buf);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static void CLAlsDatabaseCacheAgeManager::incrementQueryTimestampIfNecessary(const CLWifiAPLocation &, CLWifiAccessPointLocationRepository &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v13);
LABEL_25:
            if (v13 != __p)
            {
              free(v13);
            }
          }
        }
      }
    }
  }
}

void sub_100759B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100759B38()
{
  if (qword_102659A20 != -1)
  {
    sub_10192A724();
  }

  v0 = &qword_102659A10;
  if ((dword_102659A18 & 1) == 0)
  {
    v0 = sub_1001CCA30() + 48;
  }

  return *v0;
}

long double sub_100759B80(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_102659A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659A50))
  {
    sub_10018D404(xmmword_102659A28);
    __cxa_guard_release(&qword_102659A50);
  }

  v4 = *(a1 + 4);
  v5 = *(a1 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);

  return sub_100109D18(xmmword_102659A28, v4, v5, v6, v7, 0.0);
}

double sub_100759C20()
{
  if (qword_102659A68 != -1)
  {
    sub_10192A738();
  }

  v0 = &qword_102659A58;
  if ((dword_102659A60 & 1) == 0)
  {
    v0 = sub_1001CCA30() + 56;
  }

  return *v0;
}

void sub_100759CE8(id a1)
{
  v4 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_10001CB4C(buf, "isAlsDatabaseCacheAgeManagerEnabled", &v4);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v3 = "true";
      }

      else
      {
        v3 = "false";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write isAlsDatabaseCacheAgeManagerEnabled to %{public}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A74C();
    }

    word_1026599E8 = v4 | 0x100;
  }
}

void sub_100759E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100759E3C(id a1)
{
  v3 = 0;
  sub_10001CAF4(&buf);
  v1 = sub_1000B9370(buf, "maxAllowedRefLocationAgeToIncrementAlsDatabaseCacheAge", &v3);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10192A6A4();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning defaults write maxAllowedRefLocationAgeToIncrementAlsDatabaseCacheAge to %{public}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A850();
    }

    qword_1026599F8 = v3;
    LOBYTE(dword_102659A00) = 1;
  }
}