void sub_10083119C(uint64_t a1, void *a2)
{
  if (*(a1 + 65) != a2)
  {
    *(a1 + 65) = a2;
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67240192;
      v5[1] = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LCOutputBuffer,setting simulation mode,enabled,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F7EC(a2);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    sub_1006A97E8(*(a1 + 40));
  }
}

void *sub_10083129C(void *a1)
{
  *a1 = off_102475C90;
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100831300(void *a1)
{
  *a1 = off_102475C90;
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

uint64_t sub_1008313B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_10028C64C();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1001EBF28(a1, v6);
  }

  v7 = 144 * v2;
  __p = 0;
  v17 = v7;
  v19 = 0;
  *v7 = off_1024DE5F8;
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 104) = v10;
  *(v7 + 88) = v9;
  *(v7 + 72) = v8;
  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v13;
  *(v7 + 24) = v12;
  *(v7 + 8) = v11;
  *(v7 + 128) = *(a2 + 128);
  v18 = 144 * v2 + 144;
  sub_1001EBF84(a1, &__p);
  v14 = a1[1];
  if (v18 != v17)
  {
    v18 = (v18 - v17 - 144) % 0x90uLL + v17;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_100831554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008315CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1008316AC(void *a1, double *a2, double *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475D78;
  sub_100831788((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100831728(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100831788(uint64_t a1, double *a2, double *a3, char *__s)
{
  v6 = *a2;
  v7 = *a3;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v12 = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  *(&__dst + v9) = 0;
  sub_1006A997C(a1, &__dst, v6, v7);
  if (v12 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_10083187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100831898(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

uint64_t sub_100831DF0(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194F920();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = [objc_msgSend(a2 "coarseMetadata")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#compensation GeoLocation coarseMetaData: %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194F934(a2);
  }

  v38 = 0;
  v7 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", [a2 coarseMetadata], 1, &v38);
  if (v38)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10194F8F8();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#compensation GeoLocation coarseMetaData encoding failed, error, %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194FA60(&v38);
    }
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *&buf[44] = _Q0;
  *&buf[60] = _Q0;
  *buf = 0xFFFF;
  *&buf[84] = 0;
  *&buf[88] = 0xBFF0000000000000;
  *&v47[20] = 0xBFF0000000000000;
  *v47 = 0;
  *&v47[28] = 0x7FFFFFFF;
  memset(v48, 0, 25);
  [objc_msgSend(a2 "latLng")];
  *&buf[4] = v14;
  [objc_msgSend(a2 "latLng")];
  *&buf[12] = v15;
  [objc_msgSend(a2 "latLng")];
  *&v47[4] = v16;
  [objc_msgSend(a2 "latLng")];
  *&v47[12] = v17;
  [a2 timestamp];
  *&buf[76] = v18;
  *&buf[28] = [a2 altitude];
  [a2 horizontalAccuracy];
  *&buf[20] = v19;
  [a2 verticalAccuracy];
  *&buf[36] = v20;
  v21 = [a2 referenceFrame];
  if (v21 <= 2)
  {
    *&v48[4] = v21;
  }

  [a2 speed];
  *&buf[44] = v22;
  [a2 course];
  if (v23 < 360.0)
  {
    [a2 course];
    if (v24 >= 0.0)
    {
      [a2 course];
      *&buf[60] = v25;
    }
  }

  sub_10018D404(v37);
  sub_1001097CC(v37, a1 + 48, buf);
  v27 = v26;
  if ([objc_msgSend(*(a1 + 32) "sourceInformation")])
  {
    v48[24] = 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10194F8F8();
  }

  v28 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v29 = LocationLogEncryptionDataSize();
    v30 = LocationLogEncryptionEncryptData();
    v31 = LocationLogEncryptionDataSize();
    v32 = LocationLogEncryptionEncryptData();
    *v39 = 68290562;
    *&v39[4] = 0;
    *&v39[8] = 2082;
    *&v39[10] = "";
    *&v39[18] = 1040;
    *&v39[20] = v29;
    *&v39[24] = 2098;
    *&v39[26] = v30;
    *&v39[34] = 1040;
    *&v39[36] = v31;
    *&v39[40] = 2098;
    *&v39[42] = v32;
    *&v39[50] = 2050;
    *&v39[52] = v27;
    *&v39[60] = 2050;
    *&v39[62] = a3;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location #compensation Snapping, Input:%{public, location:Encrypted_CLClientLocation}.*P, Output:%{public, location:Encrypted_CLClientLocation}.*P, distance:%{public}f, GeoResultCode:%{public}ld}", v39, 0x46u);
  }

  v44[0] = @"Distance";
  v33 = [NSNumber numberWithDouble:v27];
  v44[1] = @"GeoResultCode";
  v45[0] = v33;
  v45[1] = [NSNumber numberWithInteger:a3];
  [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  AnalyticsSendEvent();
  v34 = *(a1 + 40);
  v35 = [CLLocation alloc];
  v41 = *v47;
  v42 = *&v47[16];
  v43[0] = *v48;
  *(v43 + 12) = *&v48[12];
  *&v39[32] = *&buf[32];
  *&v39[48] = *&buf[48];
  *&v39[64] = *&buf[64];
  v40 = *&buf[80];
  *v39 = *buf;
  *&v39[16] = *&buf[16];
  return (*(v34 + 16))(v34, [v35 initWithClientLocation:v39], ((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0, v7);
}

uint64_t sub_1008327D8(_BYTE *a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
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

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          a1[48] |= 1u;
          v26[0] = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v26[0];
          v24 = 8;
          goto LABEL_48;
        }

        if (v12 == 2)
        {
          a1[48] |= 2u;
          v26[0] = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v26[0];
          v24 = 16;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            a1[48] |= 4u;
            v26[0] = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v26[0];
            v24 = 24;
            goto LABEL_48;
          case 4u:
            a1[48] |= 8u;
            v26[0] = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v26[0];
            v24 = 32;
LABEL_48:
            *&a1[v24] = v23;
            goto LABEL_49;
          case 5u:
            v13 = objc_alloc_init(TRANSITPbRegionPreloadTile);
            [a1 addTiles:v13];

            v26[0] = 0;
            v26[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004E5198(v13, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_OWORD *sub_1008336C4(_OWORD *a1, uint64_t a2)
{
  a1[1] = 0u;
  *a1 = 0u;
  sub_100833BFC((a1 + 2), a2);
  return a1;
}

void sub_100833704(_Unwind_Exception *a1)
{
  v4 = v1[3];
  v1[3] = 0;
  if (v4)
  {
    operator delete();
  }

  sub_10194FB80(v2, v1 + 1, v1);
  _Unwind_Resume(a1);
}

BOOL sub_100833744(void *a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      if (!a1[3])
      {
        operator new();
      }
    }

    else if (a2 == 2 && !a1[2])
    {
      operator new();
    }

    return *a1 || a1[1] || a1[2] || a1[3] != 0;
  }

  if (a2)
  {
    if (a2 == 1 && !a1[1])
    {
      operator new();
    }

    return *a1 || a1[1] || a1[2] || a1[3] != 0;
  }

  v2 = 1;
  if (!*a1)
  {
    operator new();
  }

  return v2;
}

BOOL sub_1008339A0(uint64_t *a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v6 = a1[3];
      a1[3] = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    else if (a2 == 2)
    {
      v4 = a1[2];
      a1[2] = 0;
      if (v4)
      {
LABEL_13:
        operator delete();
      }
    }
  }

  else
  {
    if (!a2)
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      v3 = a1[1];
      a1[1] = 0;
      if (v3)
      {
        goto LABEL_13;
      }
    }
  }

  if (*a1)
  {
    return 1;
  }

LABEL_15:
  if (a1[1] || a1[2])
  {
    return 1;
  }

  return a1[3] != 0;
}

uint64_t sub_100833A88(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (i <= 1)
    {
      if (i)
      {
        v8 = *(a1 + 8);
        if (v8 && sub_10050B0B0(v8, a2, (a1 + 64), a1 + 72, &v10))
        {
          v5 = a1 + 32;
          v6 = 1;
          goto LABEL_14;
        }
      }

      else if (*a1 && sub_100E0B5F8(*a1, a2, &v10))
      {
        v5 = a1 + 32;
        v6 = 0;
LABEL_14:
        sub_100833BA8(v5, v6);
        continue;
      }

      continue;
    }

    if (i != 2)
    {
      break;
    }

    v7 = *(a1 + 16);
    if (v7 && sub_1007EFE24(v7, a2, (a1 + 64), &v10))
    {
      v5 = a1 + 32;
      v6 = 2;
      goto LABEL_14;
    }
  }

  result = *(a1 + 24);
  if (result)
  {
    result = sub_1007340BC(result, a2, &v10);
    if (result)
    {
      return sub_100833BA8(a1 + 32, 3);
    }
  }

  return result;
}

uint64_t sub_100833BA8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100833BFC(uint64_t a1, uint64_t a2)
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

void *sub_100833C94(void *a1)
{
  v1 = [a1 path];

  return sub_10023F024(v1);
}

id sub_100833CBC(void *a1)
{
  v2 = objc_alloc_init(NSMutableData);
  [v2 setLength:20];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

uint64_t sub_100833D40(void *a1)
{
  v2 = open_dprotected_np([a1 UTF8String], 521, 2, 0, 416);
  if (v2 == -1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = v5;
      v13 = 2113;
      v14 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning open failed, errno:%{public, location:escape_only}s, path:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  return v2;
}

uint64_t sub_100833E60(void *a1)
{
  v2 = open([a1 UTF8String], 0);
  if (v2 == -1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      v7[0] = 68289539;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = v5;
      v12 = 2113;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning open failed, errno:%{public, location:escape_only}s, path:%{private, location:escape_only}@}", v7, 0x26u);
    }
  }

  return v2;
}

BOOL sub_100833F70(void *a1, void *a2, int a3)
{
  v6 = sub_100833D40(a1);
  v7 = sub_100833E60(a2);
  if (v6 == -1 || (v8 = v7, v7 == -1))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10194FC20();
    }

    v14 = qword_1025D47D8;
    v10 = 0;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2113;
      v23 = a1;
      v24 = 2113;
      v25 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning failed to concatenate files, leading:%{private, location:escape_only}@, trailing:%{private, location:escape_only}@}", buf, 0x26u);
      return 0;
    }
  }

  else
  {
    v9 = [[NSData alloc] _cl_initWithFileDescriptor:v7];
    v10 = 1;
    v11 = [[NSFileHandle alloc] initWithFileDescriptor:v6 closeOnDealloc:1];
    [v11 writeData:v9];

    close(v8);
    if (a3 && [+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v17 = 0;
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:a2, &v17];
      if (v17)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10194FC34();
        }

        v12 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          v24 = 2113;
          v25 = v17;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to remove fs item, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
          if (qword_1025D47D0 != -1)
          {
            sub_10194FC34();
          }
        }

        v13 = qword_1025D47D8;
        if (os_signpost_enabled(qword_1025D47D8))
        {
          *buf = 68289539;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          v24 = 2113;
          v25 = v17;
          _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to remove fs item", "{msg%{public}.0s:failed to remove fs item, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
        }
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_10194FC34();
        }

        v15 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2113;
          v23 = a2;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:removed fs item, path:%{private, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      return v17 == 0;
    }
  }

  return v10;
}

uint64_t sub_100834300(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_10194FC5C();
  }

  v3 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Updating settings via OTA.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194FC70();
  }

  sub_100FBEBE8();
  sub_10004FD18(v21);
  if (sub_100185ADC(a2, "Geofence", v21))
  {
    sub_10004FD18(v20);
    if (sub_100185ADC(v21, "GeofenceClassifier", v20))
    {
      v18[0] = 0;
      if (sub_10001CB4C(v20, "usePreciseFencesForAll", v18))
      {
        byte_102630FA8 = v18[0];
      }

      if (sub_10001CB4C(v20, "usePreciseFencesForHelperFence", v18))
      {
        byte_102630FA9 = v18[0];
      }

      if (sub_10001CB4C(v20, "useVisitEventsForSignificationMonitoring", v18))
      {
        byte_102630FAA = v18[0];
      }

      *buf = 0;
      if (sub_1000B9370(v20, "fenceEffectiveMinimumRadiusHighAccuracy", buf))
      {
        qword_102630FB0 = *buf;
      }

      if (sub_1000B9370(v20, "fenceEffectiveMinimumRadiusHighAccuracyUrban", buf))
      {
        qword_102630FB8 = *buf;
      }

      if (sub_1000B9370(v20, "fenceEffectiveMinimumRadiusNormalAccuracy", buf))
      {
        qword_102630FC0 = *buf;
      }

      if (sub_1000B9370(v20, "helperFenceRadiusScaleFactor", buf))
      {
        qword_102630FC8 = *buf;
      }

      if (sub_1000B9370(v20, "maxRadiusForLocationType", buf))
      {
        qword_102630FD0 = *buf;
      }

      if (sub_1000B9370(v20, "maxRadiusForEnvironmentType", buf))
      {
        qword_102630FD8 = *buf;
      }

      if (sub_1000B9370(v20, "largeFenceExitRadiusOffset", buf))
      {
        qword_102630FE0 = *buf;
      }

      if (sub_1000B9370(v20, "largeFenceEntryRadiusOffset", buf))
      {
        qword_102630FE8 = *buf;
      }

      if (sub_1000B9370(v20, "unknownFineMediumFenceExitRadiusOffset", buf))
      {
        qword_102630FF0 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetForCellWifiOn", buf))
      {
        qword_102630FF8 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetForCellWifiOff", buf))
      {
        qword_102631000 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetForLacWifiOn", buf))
      {
        qword_102631008 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetForLacWifiOff", buf))
      {
        qword_102631010 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetOnCoarse", buf))
      {
        qword_102631018 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceEntryRadiusScaleFactorOnCoarse", buf))
      {
        qword_102631020 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitRadiusOffsetWifi", buf))
      {
        qword_102631028 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceGpsExitRadiusOffsetWifiOn", buf))
      {
        qword_102631030 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceGpsExitRadiusOffsetWifiOff", buf))
      {
        qword_102631038 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumPreciseFenceGpsExitRadiusOffsetWifiOn", buf))
      {
        qword_102631040 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumPreciseFenceGpsExitRadiusOffsetWifiOff", buf))
      {
        qword_102631048 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitAccurateLocationUncFactor", buf))
      {
        qword_102631050 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceEntryAccurateLocationUncFactor", buf))
      {
        qword_102631058 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceExitInaccurateLocationUncFactor", buf))
      {
        qword_102631060 = *buf;
      }

      if (sub_1000B9370(v20, "fineMediumFenceEntryInaccurateLocationUncFactor", buf))
      {
        qword_102631068 = *buf;
      }

      if (sub_1000B9370(v20, "loiFenceRadiusChangeThreshold", buf))
      {
        qword_102631070 = *buf;
      }

      if (sub_1000B9370(v20, "loiFenceDistanceChangeThreshold", buf))
      {
        qword_102631078 = *buf;
      }

      if (sub_1000B9370(v20, "locationSignificantChangeMinInterval", buf))
      {
        qword_102631080 = *buf;
      }

      if (sub_1000B9370(v20, "locationSignificantChangeMinDistance", buf))
      {
        qword_102631088 = *buf;
      }

      if (sub_1000B9370(v20, "locationSignificantChangeLowAccuracyThreshold", buf))
      {
        qword_102631090 = *buf;
      }

      if (sub_1000B9370(v20, "accurateLocationThreshold", buf))
      {
        qword_102631098 = *buf;
      }

      if (sub_1000B9370(v20, "accurateGpsLocationPaddingThreshold", buf))
      {
        qword_1026310A0 = *buf;
      }

      if (sub_1000B9370(v20, "gpsHAccMultiplicationFactor", buf))
      {
        qword_1026310A8 = *buf;
      }

      if (sub_1000B9370(v20, "pipelineHAccMultiplicationFactor", buf))
      {
        qword_1026310B0 = *buf;
      }

      if (sub_1000B9370(v20, "cellHAccMultiplicationFactor", buf))
      {
        qword_1026310B8 = *buf;
      }

      if (sub_1000B9370(v20, "locationSessionStartWindowSec", buf))
      {
        qword_1026310C0 = *buf;
      }

      if (sub_1000B9370(v20, "locationSessionIntervalFromLastLocationSec", buf))
      {
        qword_1026310C8 = *buf;
      }

      if (sub_1000B9370(v20, "minWifiUnc", buf))
      {
        qword_1026310D0 = *buf;
      }

      if (sub_1000B9370(v20, "minGpsUnc", buf))
      {
        qword_1026310D8 = *buf;
      }

      if (sub_1000B9370(v20, "maxHorizontalAccuracy", buf))
      {
        qword_1026310E0 = *buf;
      }

      if (sub_1000B9370(v20, "cellTypeMinimumHorizontalAccuracy", buf))
      {
        qword_1026310E8 = *buf;
      }

      if (sub_1000B9370(v20, "circularEmergencyFenceOffset", buf))
      {
        qword_1026310F0 = *buf;
      }

      if (sub_1000B9370(v20, "polygonalEntryLocationAccuracyThreshold", buf))
      {
        qword_102631100 = *buf;
      }

      if (sub_1000B9370(v20, "polygonalEntryLocationAccuracyScaleFactor", buf))
      {
        qword_102631108 = *buf;
      }

      if (sub_1000B9370(v20, "polygonalExitLocationAccuracyScaleFactor", buf))
      {
        qword_102631110 = *buf;
      }

      if (sub_1000B9370(v20, "polygonalExitHysteresisBuffer", buf))
      {
        qword_102631118 = *buf;
      }

      if (sub_10001CB4C(v20, "useMiLo", v18))
      {
        byte_102631120 = v18[0];
      }

      if (sub_10001CB4C(v20, "collectMiLoHomeLoiMetricsForInternalUsers", v18))
      {
        byte_102631121 = v18[0];
      }

      if (sub_10001CB4C(v20, "collectMiLoHomeLoiMetricsForAllUsers", v18))
      {
        byte_102631122 = v18[0];
      }

      if (sub_1000B9370(v20, "maxMiLoAge", buf))
      {
        qword_102631128 = *buf;
      }

      if (sub_1000B9370(v20, "homeLoiProbabilityThreshold", buf))
      {
        qword_102631130 = *buf;
      }

      if (sub_1000B9370(v20, "maxWaitTimeToReceiveMiLoEventUpdate", buf))
      {
        qword_102631138 = *buf;
      }

      if (sub_1000B9370(v20, "maxGpsHomeLoiExitTimeDiff", buf))
      {
        qword_102631140 = *buf;
      }

      if (sub_10001CB4C(v20, "collectGpsOpportunisticallyForMiLoMetrics", v18))
      {
        byte_102631148 = v18[0];
      }

      if (sub_10001CB4C(v20, "inflateGpsUncertaintyOnExitForSignalStrength", v18))
      {
        byte_102631149 = v18[0];
      }

      LODWORD(v19[0]) = 0;
      if (sub_10005BBE4(v20, "gnssConvergenceShortCount", v19))
      {
        dword_10263114C = v19[0];
      }

      if (sub_10005BBE4(v20, "gnssConvergenceLongCount", v19))
      {
        dword_102631150 = v19[0];
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v6 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceClassifier not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        LOWORD(v19[0]) = 0;
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    sub_10004FD18(v19);
    if (sub_100185ADC(v21, "GeofenceEPNO", v19))
    {
      *v18 = 0;
      *buf = 0;
      v17[0] = 0;
      if (sub_1004FB7DC(v19, "numTiles", v18))
      {
        dword_102631158 = *v18;
      }

      if (sub_1000B9370(v19, "radiusFactorEntryThreshold", buf))
      {
        qword_102631160 = *buf;
      }

      if (sub_1000B9370(v19, "radiusFactor", buf))
      {
        qword_102631168 = *buf;
      }

      if (sub_1000B9370(v19, "maxRadius", buf))
      {
        qword_102631170 = *buf;
      }

      if (sub_1000B9370(v19, "minRadius", buf))
      {
        qword_102631178 = *buf;
      }

      if (sub_1000B9370(v19, "currentlySeenReachThreshold", buf))
      {
        qword_102631180 = *buf;
      }

      if (sub_10001CB4C(v19, "throttleEpnoWakes", v17))
      {
        byte_102631188 = v17[0];
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v7 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceEPNO not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v18 = 0;
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    sub_10004FD18(v18);
    if (sub_100185ADC(v21, "GeofenceGpsUncertaintyInflation", v18))
    {
      v15[0] = 0;
      if (sub_10001CB4C(v18, "inflateGpsLocationsIfSignalStrengthNotReported", v15))
      {
        byte_102631190 = v15[0];
      }

      *v17 = 0;
      if (sub_10005BBE4(v18, "minimumNumberOfTrackedSignalsStrong", v17))
      {
        dword_102631198 = *v17;
      }

      if (sub_10005BBE4(v18, "minimumNumberOfTrackedSignals", v17))
      {
        dword_102631194 = *v17;
      }

      *buf = 0;
      if (sub_1000B9370(v18, "signalStrengthStrong", buf))
      {
        qword_1026311A0 = *buf;
      }

      if (sub_1000B9370(v18, "horizontalAccuracyForWeakSignals", buf))
      {
        qword_1026311A8 = *buf;
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v8 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceGpsUncertaintyInflation not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v17 = 0;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    sub_10004FD18(v17);
    if (sub_100185ADC(v21, "GeofenceFastEntry", v17))
    {
      v16 = 0;
      *buf = 0;
      *v15 = 0;
      if (sub_10001CB4C(v17, "enabled", &v16))
      {
        byte_1026311B0 = v16;
      }

      if (sub_1000B9370(v17, "convergenceTimerIntervalNearMax", buf))
      {
        qword_1026311B8 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceTimerIntervalNearMin", buf))
      {
        qword_1026311C0 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceTimerIntervalAdjacent", buf))
      {
        qword_1026311C8 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceStateDistanceThresholdNear", buf))
      {
        qword_1026311D0 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceStateDistanceThresholdAdjacent", buf))
      {
        qword_1026311D8 = *buf;
      }

      if (sub_10005BBE4(v17, "maximumLocationBufferSize", v15))
      {
        dword_1026311E0 = *v15;
      }

      if (sub_10005BBE4(v17, "converganceAttemptsPerWindow", v15))
      {
        dword_1026311E4 = *v15;
      }

      if (sub_1000B9370(v17, "convergenceBudgetWindow", buf))
      {
        qword_1026311E8 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceAttemptMaxDuration", buf))
      {
        qword_1026311F0 = *buf;
      }

      if (sub_1000B9370(v17, "convergenceAttemptMaxGNSSDuration", buf))
      {
        qword_1026311F8 = *buf;
      }
    }

    else
    {
      if (qword_1025D4640 != -1)
      {
        sub_10194FD88();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence::GeofenceFastEntry not available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194FDB0(buf);
        *v15 = 0;
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    sub_100005DA4(v17);
    sub_100005DA4(v18);
    sub_100005DA4(v19);
    sub_100005DA4(v20);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_10194FD88();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: CLFenceSettingsOta - Geofence not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194FDB0(buf);
      LOWORD(v20[0]) = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSettingsOta::updateSettings(const CLNameValuePair &)", "%s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return sub_100005DA4(v21);
}

void sub_1008357C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  va_copy(va4, va3);
  v15 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  sub_100005DA4(va);
  sub_100005DA4(va1);
  sub_100005DA4(va2);
  sub_100005DA4(va3);
  sub_100005DA4(va4);
  _Unwind_Resume(a1);
}

void sub_100835A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100835A90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) hasChanges];
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(*(a1 + 40) + 8) + 40;

    return [v3 save:v4];
  }

  return result;
}

void sub_100835BF4(void *a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:a1[4]];
  [v2 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", a1[5])}];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [*(a1[6] + 8) executeRequest:v3 error:*(a1[7] + 8) + 40];
}

void sub_100835E2C(uint64_t a1)
{
  v2 = objc_alloc_init(NSFetchRequest);
  [v2 setEntity:{+[NSEntityDescription entityForName:inManagedObjectContext:](NSEntityDescription, "entityForName:inManagedObjectContext:", *(a1 + 32), *(*(a1 + 40) + 8))}];
  [v2 setPredicate:{+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", *(a1 + 48))}];
  v3 = [*(*(a1 + 40) + 8) executeFetchRequest:v2 error:*(*(a1 + 56) + 8) + 40];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100835F18;
  v5[3] = &unk_102475EB8;
  v4 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

id sub_100835F18(uint64_t a1, void *a2)
{
  v4 = [NSString stringWithFormat:@"managedObject of class %@ must respond to convert selector", NSClassFromString(*(a1 + 32))];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_10194FE58(a1, v4);
  }

  result = [a2 performSelector:"convert"];
  if (result)
  {
    v6 = result;
    v7 = *(*(*(a1 + 48) + 8) + 40);

    return [v7 addObject:v6];
  }

  return result;
}

void sub_1008360F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_10083611C(void *a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:a1[4]];
  [(NSFetchRequest *)v2 setPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:a1[5]]];
  result = [*(a1[6] + 8) countForFetchRequest:v2 error:*(a1[8] + 8) + 40];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_1008362B4(id a1)
{
  if (objc_opt_class())
  {
    sub_10001A3E8();
    if (sub_10071BCEC())
    {
      v1 = sub_10001A3E8();
      if ((**v1)(v1))
      {
        byte_10265A600 = 1;
      }
    }
  }
}

void sub_1008369D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_100836A08(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stop timer fired}", v4, 0x12u);
  }

  return [*(a1 + 32) stopLocation];
}

void sub_100836C04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_100836C34(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Motion alarm stop timer fired}", v4, 0x12u);
  }

  return [*(a1 + 32) stopMotionAlarm];
}

id sub_100836D18(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Repeating motion state}", v4, 0x12u);
  }

  return [*(a1 + 32) sendMotionState];
}

id sub_100836DEC(uint64_t a1)
{
  [*(a1 + 32) sendAliveAgainMessage];
  [objc_msgSend(*(a1 + 32) "aliveAgainThrottleTimer")];
  v2 = *(a1 + 32);

  return [v2 setAliveAgainThrottleTimer:0];
}

uint64_t *sub_100836F40(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100838FA4(result);

    operator delete();
  }

  return result;
}

void sub_1008384FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100838EC8(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, double a5)
{
  *a1 = 0;
  v9 = [a3 newTimer];
  *(a1 + 8) = v9;
  *(a1 + 16) = a5;
  if (*(a2 + 23) < 0)
  {
    sub_100007244((a1 + 24), *a2, *(a2 + 1));
    v9 = *(a1 + 8);
  }

  else
  {
    v10 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v10;
  }

  [v9 setHandler:a4];
  return a1;
}

void sub_100838F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(v1[3]);
  }

  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100838FA4(uint64_t *a1)
{
  [a1[1] invalidate];

  if (*(a1 + 47) < 0)
  {
    operator delete(a1[3]);
  }

  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

double sub_10083901C()
{
  result = 30.0;
  qword_10265A610 = 0x403E000000000000;
  return result;
}

NSDictionary *sub_1008390A8(uint64_t a1)
{
  v5[0] = @"boutType";
  v6[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 1)];
  v5[1] = @"duration";
  *&v2 = *(*(a1 + 32) + 2);
  v6[1] = [NSNumber numberWithFloat:v2];
  v5[2] = @"timeSinceLastBout";
  *&v3 = *(*(a1 + 32) + 10);
  v6[2] = [NSNumber numberWithFloat:v3];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
}

uint64_t sub_100839180(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100839318(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008398E8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A628 != -1)
  {
    dispatch_once(&qword_10265A628, block);
  }

  return qword_1026372E8;
}

id sub_1008395B4(id *a1, uint64_t a2)
{
  *v16 = 0xFFFF;
  *&v16[4] = 0uLL;
  *&v16[20] = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v16[36] = _Q0;
  *&v16[52] = _Q0;
  *&v16[68] = _Q0;
  v17 = 0uLL;
  *&v16[88] = 0xBFF0000000000000;
  *&v16[84] = 0;
  LODWORD(v18) = 0;
  *(&v18 + 4) = 0xBFF0000000000000;
  HIDWORD(v18) = 0x7FFFFFFF;
  memset(v19, 0, 25);
  if ((*(*a1 + 29))(a1, v16) && sub_100072814(v16) && (v9 = *&v16[20], *&v16[20] > 0.0))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v11 = LocationLogEncryptionDataSize();
      v12 = LocationLogEncryptionEncryptData();
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v11;
      *&buf[24] = 2098;
      *&buf[26] = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp passing cached location to reply, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
    }

    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = *&v16[32];
    v21 = *&v16[48];
    v22 = *&v16[64];
    v23 = *&v16[80];
    *buf = *v16;
    *&buf[16] = *&v16[16];
    return (*(a2 + 16))(a2, 1, buf);
  }

  else
  {
    v14 = [objc_msgSend(a1[4] vendor];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10083AC28;
    v15[3] = &unk_102476120;
    v15[4] = a2;
    v15[5] = a1;
    return [v14 fetchLocationWithReply:v15];
  }
}

uint64_t sub_100839824(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 32);
  v4 = a3[7];
  v16 = a3[6];
  v17 = v4;
  v18[0] = a3[8];
  *(v18 + 12) = *(a3 + 140);
  v5 = a3[3];
  v12 = a3[2];
  v13 = v5;
  v6 = a3[5];
  v14 = a3[4];
  v15 = v6;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10083BE04;
  v9[3] = &unk_10246A7A0;
  return (*(v3 + 16))(v3, a2, [v9 copy]);
}

void sub_100839958(uint64_t a1, void *a2)
{
  *sub_1006A597C(a1, "correctiveCompensated", a2) = off_102475FE0;
  v3 = [[CLSettingsMirror alloc] initInUniverse:*(a1 + 32)];
  *(a1 + 128) = 0;
  *(a1 + 120) = v3;
  *(a1 + 136) = 0;
  *(a1 + 144) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 152) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 160) = [objc_msgSend(*(a1 + 32) "silo")];
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = off_10245B020;
  operator new();
}

void sub_100839E4C(uint64_t a1)
{
  v2 = *(a1 + 168);
  [*(a1 + 120) doubleForKey:@"CCLP.CorrectiveCompensationInterval" defaultValue:900.0];
  *(a1 + 168) = v3;
  v4 = *(a1 + 176);
  [*(a1 + 120) doubleForKey:@"CCLP.ApparentCorrectiveCompensationInterval" defaultValue:1.79769313e308];
  *(a1 + 176) = v5;
  *(a1 + 184) = [*(a1 + 120) BOOLForKey:@"CCLP.CorrectiveCompensationClaimsOriginalAccuracy" defaultValue:0];
  *(a1 + 201) = [*(a1 + 120) BOOLForKey:@"CCLP.ClockAlignmentTestModeEnabled" defaultValue:0];
  *(a1 + 204) = [*(a1 + 120) BOOLForKey:@"CCLP.EnableClockAlignment" defaultValue:0];
  if (*(a1 + 201) == 1)
  {
    *(a1 + 168) = 0x405E000000000000;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 168);
    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    v10 = *(a1 + 201);
    v11 = *(a1 + 204);
    v12 = 0x4088600000000000;
    if (*(a1 + 201))
    {
      v12 = 0x4059000000000000;
    }

    v13 = 0x4092C00000000000;
    if (*(a1 + 201))
    {
      v13 = 0x4064000000000000;
    }

    v20[0] = 68290818;
    v21 = 2082;
    v20[1] = 0;
    v22 = "";
    v23 = 2050;
    v24 = v7;
    v25 = 2050;
    v26 = v8;
    v27 = 1026;
    v28 = v9;
    v29 = 1026;
    v30 = v10;
    v31 = 1026;
    v32 = v11;
    v33 = 2050;
    v34 = v12;
    v35 = 2050;
    v36 = v13;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Update #compensation #settings for CCLP, CorrectiveCompensationInterval:%{public}f, ApparentCorrectiveCompensationInterval:%{public}f, CorrectiveCompensationClaimsOriginalAccuracy:%{public}hhd, ClockAlignmentTestModeEnabled:%{public}hhd, EnableClockAlignment:%{public}hhd, CorrectiveCompensationIntervalLowerBound:%{public}f, CorrectiveCompensationIntervalUpperBound:%{public}f}", v20, 0x4Cu);
  }

  if (*(a1 + 168) != v2)
  {
    [*(a1 + 144) nextFireDelay];
    if (v14 != 1.79769313e308)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#cclp CorrectiveCompensationInterval changed. Reset CompensationTimer.", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019500F8();
      }

      [*(a1 + 144) setNextFireDelay:0.0];
    }
  }

  v16 = *(a1 + 176);
  if (v16 != v4)
  {
    if (v16 > *(a1 + 168))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#warning #cclp ApparentCorrectiveCompensationInterval greater than CorrectiveCompensationInterval", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019501DC();
      }

      *(a1 + 176) = 0x7FEFFFFFFFFFFFFFLL;
    }

    [*(a1 + 144) nextFireDelay];
    if (v18 != 1.79769313e308)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#cclp ApparentCorrectiveCompensationInterval changed. Reset ApparentCompensationTimer.", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019502C0();
      }

      [*(a1 + 152) setNextFireDelay:0.0];
    }
  }
}

void sub_10083A1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019503A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCorrectiveCompensatedLocationProvider::onSimulationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019503B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCorrectiveCompensatedLocationProvider::onSimulationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10083B210(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10083A3B8(uint64_t a1)
{
  sub_100021AFC(v5);
  LODWORD(buf) = 0;
  if ((*(*a1 + 128))(a1, &buf, v5))
  {
    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v6 = v2;
    v7 = *(a1 + 168) * 1.33333333;
    LODWORD(buf) = 0;
    sub_10001D7D0(a1, &buf, v5, 1, 0xFFFFFFFFLL, 0);
    v3 = *(a1 + 176);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp ceasing apparent #compensation rate increase monitoring due to no cached message}", &buf, 0x12u);
    }

    v3 = 1.79769313e308;
  }

  [*(a1 + 152) setNextFireDelay:v3];

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10083A59C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1040;
    *&buf[20] = LocationLogEncryptionDataSize();
    *&buf[24] = 2098;
    *&buf[26] = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cclp UpdateLastReceivedLocationTimer fired. Using location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
  }

  [*(a1 + 160) setNextFireDelay:1.79769313e308];
  if (sub_100072814(a1 + 240))
  {
    sub_100021AFC(buf);
    v3 = *(a1 + 352);
    v19 = *(a1 + 336);
    v20 = v3;
    v21[0] = *(a1 + 368);
    *(v21 + 12) = *(a1 + 380);
    v4 = *(a1 + 288);
    *&buf[32] = *(a1 + 272);
    v16 = v4;
    v5 = *(a1 + 320);
    v17 = *(a1 + 304);
    v18 = v5;
    v6 = *(a1 + 256);
    *buf = *(a1 + 240);
    *&buf[16] = v6;
    *(a1 + 240) = 0xFFFF;
    *(a1 + 244) = 0;
    *(a1 + 252) = 0;
    __asm { FMOV            V1.2D, #-1.0 }

    *(a1 + 260) = xmmword_101C75BF0;
    *(a1 + 276) = _Q1;
    *(a1 + 292) = _Q1;
    *(a1 + 308) = _Q1;
    *(a1 + 324) = 0;
    *(a1 + 352) = 0;
    *(a1 + 328) = 0xBFF0000000000000;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 356) = 0xBFF0000000000000;
    *(a1 + 364) = 0x7FFFFFFF;
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
    *(a1 + 368) = 0;
    *(a1 + 392) = 0;
    v14 = 0;
    sub_100310748(a1, v12, &v14);

    if (v26)
    {
      sub_100008080(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23)
    {
      sub_100008080(v23);
    }

    if (v22)
    {
      sub_100008080(v22);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#cclp #warning UpdateLastReceivedLocationTimer handler early return. LastReceivedLocation is invalid.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019504F8();
    }
  }
}

void sub_10083A814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10083A840(uint64_t a1)
{
  [*(*(a1 + 136) + 16) unregister:*(*(a1 + 136) + 8) forNotification:12];
  [*(a1 + 160) invalidate];

  *(a1 + 160) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 120) invalidate];

  *(a1 + 120) = 0;
}

uint64_t sub_10083A8C0(uint64_t a1, unsigned int *a2)
{
  sub_1000F4588();
  [*(a1 + 144) nextFireDelay];
  if (v4 == 1.79769313e308)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp registering to FLC, notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }

    [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:*a2 registrationInfo:0];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp skip registering to FLC - timer locked(no need to source location from FLC), notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }

  return 1;
}

uint64_t sub_10083AA60(uint64_t a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  [*(a1 + 144) nextFireDelay];
  if (v4 == 1.79769313e308)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp unregistering from FLC, notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }

    (*(*a1 + 120))(a1, a2);
    [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:*a2];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp skip unregistering from FLC - timer locked(will get unsubcribed after receiving snapped result), notification:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }

  return 1;
}

void sub_10083AC28(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  (*(a3 + 16))(&v11, a3);
  if (a2 && sub_100072814(&v11) && *(&v12 + 4) >= 0.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v7 = LocationLogEncryptionDataSize();
      v8 = LocationLogEncryptionEncryptData();
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v7;
      *&buf[24] = 2098;
      *&buf[26] = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#cclp perform snapping on location by LC, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
    }

    sub_100021AFC(buf);
    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *buf = v11;
    *&buf[16] = v12;
    sub_100310884(v5);

    if (v31)
    {
      sub_100008080(v31);
    }

    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (v28)
    {
      sub_100008080(v28);
    }

    if (v27)
    {
      sub_100008080(v27);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#warning #cclp LocationController has no location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019506E8();
    }

    v10 = *(a1 + 32);
    v24 = v17;
    v25 = v18;
    v26[0] = *v19;
    *(v26 + 12) = *&v19[12];
    *&buf[32] = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *buf = v11;
    *&buf[16] = v12;
    (*(v10 + 16))();
  }
}

void sub_10083AEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_10083AF10(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (*(a1 + 204))
  {
    v3 = *(a1 + 201);
    if (v1 == 900.0 || (*(a1 + 201) & 1) != 0)
    {
      v6 = (v1 != 900.0) | v3;
      if ((v1 != 900.0) | v3 & 1)
      {
        v7 = 100.0;
      }

      else
      {
        v7 = 780.0;
      }

      [*(a1 + 40) currentLatchedAbsoluteTimestamp];
      v9 = v8;
      v10 = *(a1 + 168);
      v11 = v9 % v10;
      if (v11 <= (v1 - v7))
      {
        v14 = v10 - v11;
        if (v7 >= v14)
        {
          v1 = v7;
        }

        else
        {
          v1 = v14;
        }
      }

      else
      {
        v12 = 1200.0;
        if (v6)
        {
          v12 = 160.0;
        }

        v13 = -(v11 - v10 * 2.0);
        if (v13 >= v12)
        {
          v1 = v12;
        }

        else
        {
          v1 = v13;
        }
      }

      if (qword_1025D47A0 != -1)
      {
        sub_1019500E4();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = v1;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#cclp: next fire delay: %f", &v17, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950FC8(v1);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500E4();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#cclp: Clock Alignment disabled. Either TestMode should be enabled or CompensationInterval should be 15m. Check #compensation #settings", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950EE4();
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#cclp: Clock Alignment disabled by default settings. Using default CC interval", &v17, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101950E00();
    }
  }

  return v1;
}

void sub_10083B188(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  [*(a1 + 144) nextFireDelay];
  if (v12 != 1.79769313e308)
  {
    sub_1019510E0();
  }

  sub_10001D7D0(a1, a2, a3, a4, a5, a6);
}

void sub_10083B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a4 + 832))
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v12 = 136315138;
    v13 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#cclp Simulation %s", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951274(a4);
  }

  [*(a1 + 144) nextFireDelay];
  if (v8 == 1.79769313e308 && (*(a1 + 203) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#cclp CompensationTimer not scheduled and not subscribed to FLC", &v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195138C();
    }
  }

  else
  {
    v9 = 4.0;
    if (*(a4 + 832))
    {
      v9 = 3.0;
    }

    [*(a1 + 160) setNextFireDelay:v9];
    [*(a1 + 144) nextFireDelay];
    if (v10 != 1.79769313e308)
    {
      *(a1 + 202) = *(a4 + 832);
      [*(a1 + 144) setNextFireDelay:0.0];
    }
  }
}

void sub_10083B3E8(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = *(a1 + 40);
  if (a2)
  {
    [a2 clientLocation];
  }

  else
  {
    memset(v55, 0, 28);
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  v44 = v53;
  v45 = v54;
  v46[0] = v55[0];
  *(v46 + 12) = *(v55 + 12);
  v41 = *&buf[32];
  v42 = v50;
  *v43 = v51;
  *&v43[16] = v52;
  v39 = *buf;
  v40 = *&buf[16];
  *(v7 + 200) = 0;
  [*(v7 + 40) currentLatchedAbsoluteTimestamp];
  v9 = v8;
  v10 = *(a1 + 124);
  v11 = *(v7 + 168);
  if (qword_1025D47A0 != -1)
  {
    sub_1019500BC();
  }

  v12 = vabdd_f64(v9, v10);
  v13 = v11 * 1.33333333;
  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 1616);
    v16 = LocationLogEncryptionDataSize();
    v17 = LocationLogEncryptionEncryptData();
    *buf = 68290562;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a3;
    *&buf[24] = 2050;
    *&buf[26] = v12;
    *&buf[34] = 1026;
    *&buf[36] = v12 < v13;
    *&buf[40] = 1026;
    *&buf[42] = v15;
    *&buf[46] = 1040;
    LODWORD(v50) = v16;
    WORD2(v50) = 2098;
    *(&v50 + 6) = v17;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp snapLocation reply, permanent:%{public}hhd, cacheAge:%{public}f, cacheAgeLessThanExtendedInterval:%{public}hhd, hasCachedLocation:%{public}hhd, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x3Eu);
  }

  if ((a3 & 1) != 0 || *(a1 + 1616) != 1 || v12 >= v13)
  {
    LODWORD(v44) = 12;
    *&v43[24] = vabdd_f64(v9, *&v43[12]) + *(v7 + 168) * 1.33333333;
    if (*(v7 + 184) == 1)
    {
      *(&v40 + 4) = *(a1 + 1608);
    }

    sub_100021AFC(v31);
    v31[6] = v44;
    v31[7] = v45;
    v32[0] = v46[0];
    *(v32 + 12) = *(v46 + 12);
    v31[2] = v41;
    v31[3] = v42;
    v31[4] = *v43;
    v31[5] = *&v43[16];
    v31[0] = v39;
    v31[1] = v40;
    if (a4)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#cclp Encoded coarse meta data available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        LOWORD(v47) = 0;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      sub_10083BBE4(&v38, a4);
    }

    if (*(a1 + 32))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#cclp delivering compensated location to reply block", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        LOWORD(v47) = 0;
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v20 = *(a1 + 32);
      v53 = v44;
      v54 = v45;
      v55[0] = v46[0];
      *(v55 + 12) = *(v46 + 12);
      *&buf[32] = v41;
      v50 = v42;
      v51 = *v43;
      v52 = *&v43[16];
      *&buf[16] = v40;
      *buf = v39;
      (*(v20 + 16))();
    }

    *buf = 0;
    (*(*v7 + 152))(v7, buf, v31, 1, 0xFFFFFFFFLL, 0);
    [*(v7 + 152) setNextFireDelay:*(v7 + 176)];
    v21 = qword_1026372D0;
    v22 = qword_1026372D8;
    while (v21 != v22)
    {
      [*(*(v7 + 128) + 16) unregister:*(*(v7 + 128) + 8) forNotification:*v21++];
    }

    *(v7 + 203) = 0;
    if (*(v7 + 202))
    {
      *(v7 + 202) = 0;
      v23 = rand();
      v24 = *(v7 + 168);
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v25 = vcvts_n_f32_s32(v23, 0x1FuLL) * v24 + 1.0;
      v26 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v25;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#cclp Simulation started. Random next fire delay: %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019509C4(buf);
        v47 = 134217984;
        v48 = v25;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))_block_invoke", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }
    }

    else
    {
      v25 = sub_10083AF10(v7);
    }

    [*(v7 + 144) setNextFireDelay:v25];

    if (v37)
    {
      sub_100008080(v37);
    }

    if (v36 < 0)
    {
      operator delete(__p);
    }

    if (v34)
    {
      sub_100008080(v34);
    }

    if (v33)
    {
      sub_100008080(v33);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v28 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "#cclp snapLocation expecting a improved location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101951470();
    }
  }
}

void sub_10083BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10083BBE4(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  *a1 = v3;
}

__n128 sub_10083BE04@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 140) = *(a1 + 172);
  v3 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v3;
  v4 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_10083BE38()
{
  v1[0] = xmmword_101CB0DA8;
  v1[1] = unk_101CB0DB8;
  qword_1026372D8 = 0;
  unk_1026372E0 = 0;
  qword_1026372D0 = 0;
  sub_1004579D4(&qword_1026372D0, v1, &v2, 8uLL);
  return __cxa_atexit(sub_100839180, &qword_1026372D0, dword_100000000);
}

void sub_10083BF20(id a1)
{
  sub_10001A3E8();
  v1 = 1;
  if ((sub_10001CF3C() & 1) == 0)
  {
    sub_10001A3E8();
    if ((sub_1007194F0() & 1) == 0)
    {
      sub_10001A3E8();
      if ((sub_10003A088() & 2) != 0)
      {
        v1 = 0;
      }
    }
  }

  byte_10265A648 = v1;
}

uint64_t sub_10083C0D8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10083C4CC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A668 != -1)
  {
    dispatch_once(&qword_10265A668, block);
  }

  return qword_1026372F0;
}

void sub_10083C3B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10083C3E8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_1024764C8;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_10083C53C(uint64_t a1, void *a2)
{
  *a1 = off_102476470;
  sub_10083CB04(a1 + 8, "CachedLocationController", a2);
  *a1 = off_102476288;
  *(a1 + 8) = off_1024762E0;
  sub_100D9D2B4(a1 + 120, "Traffic", *(a1 + 40));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0x4072C00000000000;
  *(a1 + 360) = 0;
  sub_100A2E128(a1 + 368, *(a1 + 40));
  sub_101332BB4((a1 + 552), *(a1 + 40));
  sub_100ED3918(a1 + 568, a1 + 552);
  *(a1 + 792) = [objc_msgSend(*(a1 + 40) "vendor")];
  v4 = [*(a1 + 48) newTimer];
  *(a1 + 336) = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10083CBB0;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  [v4 setHandler:v6];
  v5 = [[CLRouteListener alloc] initInUniverse:a2 withDelegate:a1];
  *(a1 + 544) = v5;
  [v5 enable];
  sub_1007A98FC();
}

void sub_10083CA08(_Unwind_Exception *a1)
{
  sub_100A2E174(v1 + 46);
  v4 = v1[41];
  v1[41] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[40];
  v1[40] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v1[39];
  v1[39] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_100B55830((v1 + 15));
  sub_10083CC64(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10083CB04(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024764F0;
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

void sub_10083CB94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10083CBB8(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLC: Debounce timer fired, stopping", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951798();
  }

  sub_1000DFEFC(a1, 0, 1.79769313e308);
}

uint64_t sub_10083CC64(uint64_t a1)
{
  *a1 = off_1024764F0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_10083CCE8(void *a1)
{
  *a1 = off_102476288;
  v2 = (a1 + 1);
  a1[1] = off_1024762E0;
  sub_10083CE78(a1);
  sub_100A2E174(a1 + 46);
  v3 = a1[41];
  a1[41] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[40];
  a1[40] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[39];
  a1[39] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100B55830((a1 + 15));
  sub_10083CC64(v2);
  return a1;
}

void sub_10083CE04(void *a1)
{
  sub_10083CCE8(a1);

  operator delete();
}

void sub_10083CE3C(uint64_t a1)
{
  sub_10083CCE8((a1 - 8));

  operator delete();
}

void sub_10083CE78(uint64_t a1)
{
  sub_1000DFEFC(a1, 0, 1.79769313e308);
  [*(a1 + 336) invalidate];

  *(a1 + 336) = 0;
  *(a1 + 352) = 0x4072C00000000000;
  [*(*(a1 + 312) + 16) unregister:*(*(a1 + 312) + 8) forNotification:4];
  [*(*(a1 + 312) + 16) unregister:*(*(a1 + 312) + 8) forNotification:13];
  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:4];
  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:2];
  [*(*(a1 + 328) + 16) unregister:*(*(a1 + 328) + 8) forNotification:4];
  [*(*(a1 + 328) + 16) unregister:*(*(a1 + 328) + 8) forNotification:1];
  [*(a1 + 544) disable];

  *(a1 + 544) = 0;
  *(a1 + 792) = 0;
}

_BYTE *sub_10083D068@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951784();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "false";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          goto LABEL_18;
        }
      }

      while (1)
      {
        v5 = qword_1025D4608;
        if (os_signpost_enabled(qword_1025D4608))
        {
          *buf = 68289539;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "assert";
          v13 = 2081;
          v14 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLC: Unknown CLCachedLocationController::CachedLocationState value", "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D4600 != -1)
          {
            sub_101951718();
          }
        }

        v6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v8 = 0;
          v9 = 2082;
          v10 = "";
          v11 = 2082;
          v12 = "assert";
          v13 = 2081;
          v14 = "false";
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLC: Unknown CLCachedLocationController::CachedLocationState value, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
LABEL_18:
        sub_101951718();
      }
    }

    v2 = "Active";
  }

  else
  {
    v2 = "Off";
  }

  return sub_10000EC00(a2, v2);
}

void sub_10083D2C8(uint64_t a1, double a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLC: Received start route", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019519F4();
  }

  v5 = a2 * 1.5;
  if (a2 * 1.5 < a2 + 600.0)
  {
    v5 = a2 + 600.0;
  }

  sub_1000DFEFC(a1, 1, v5);
  sub_1000E04E8(a1, 1);
  *buf = 0xFFFF;
  v14 = 0;
  v13 = 0;
  v15 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v16 = _Q0;
  v17 = _Q0;
  v18 = _Q0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0xBFF0000000000000;
  v23 = 0;
  v24 = 0xBFF0000000000000;
  v25 = 0x7FFFFFFF;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  sub_100ED391C((a1 + 568), buf, &Current);
}

id sub_10083D410(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 40) "vendor")];

  return [v3 syncSetNavigationStateChange:a2];
}

void sub_10083D458(uint64_t a1, int a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 360);
    v8[0] = 67240448;
    v8[1] = a2;
    v9 = 1026;
    v10 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLC: Suspend for exception, %{public}#x, oldExceptions %{public}#x", v8, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951FBC();
  }

  v6 = *(a1 + 360);
  if (v6)
  {
    *(a1 + 360) = v6 | a2;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLC: Suspend", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019520CC();
    }

    *(a1 + 360) |= a2;
    sub_1000DFEFC(a1, 0, 1.79769313e308);
    [*(a1 + 544) disable];
  }
}

void sub_10083D5F8(uint64_t a1, uint64_t a2)
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
        sub_101951884();
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
        sub_1019525AC();
      }
    }
  }
}

uint64_t sub_10083D79C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10083D954(uint64_t a1, int a2, int *a3, char *a4)
{
  v32 = a2;
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
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0(v20 + 40, &v32) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10083F8B4();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1025D8E91;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014(a1 + 56, &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014(a1 + 56, &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(v31 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
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
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1019526B0();
    return 0;
  }

  return result;
}

BOOL sub_10083DD0C(uint64_t a1, int a2, int *a3)
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
      sub_101951884();
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
      sub_1019527B4();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10083DEA0(char *a1, int a2, int *a3)
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
                sub_101951898();
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
                  sub_101951898();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

void sub_10083E370(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      operator new();
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
      sub_10083ED88();
    }
  }
}

void sub_10083E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_10083E86C(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101951884();
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
      sub_1019529D8(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101951884();
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
      sub_1019528B8(a1);
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
              sub_101951898();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
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
                sub_101951898();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::listClients() [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_10083EC30(uint64_t a1)
{
  sub_10083ED18(a1);

  operator delete();
}

id sub_10083EC68(uint64_t a1, int a2, void *a3)
{
  result = sub_10083F384(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10083ED18(uint64_t a1)
{
  *a1 = off_1024764C8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10083EE34(void *a1, int *a2, void *a3)
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
        v10 = sub_10083F384(a3);
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
              sub_10083F1F0(a1, &v36, &v37, a3);
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
                sub_101951898();
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
                  sub_101951898();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLCachedLocationController_Type::Notification, CLCachedLocationController_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLCachedLocationController_Type::Notification, NotificationData_T = CLCachedLocationController_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

_BYTE *sub_10083F1F0(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10083F384(a4);
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

void sub_10083F308(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024765D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10083F364(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10083F384(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10083F420(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10083F5F8(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10083F420(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10083F7FC(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101952AE8();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101952AFC();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101952AE8();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101952C04();
    }
  }

  return 0;
}

id sub_10083F5F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101952AE8();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101952D0C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101952AE8();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB0FB3 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101952E14();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10083F7FC(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254F008))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_101952F1C();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_10083F960(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_10083F980()
{
  sub_10000EC00(&qword_10265A630, "com.apple.locationd.bundle-/System/Library/LocationBundles/Traffic.bundle");

  return __cxa_atexit(&std::string::~string, &qword_10265A630, dword_100000000);
}

void sub_10083F9E0(uint64_t a1, uint64_t a2, char a3, float a4, float a5, double a6)
{
  v12 = CFAbsoluteTimeGetCurrent() - a6;
  if (v12 > *a1 + 3600.0)
  {
    v13 = 0;
    *a1 = v12;
    *(a1 + 8) = 0;
LABEL_10:
    *(a1 + 8) = v13 + 1;
    v15 = *(a2 + 1);
    LOBYTE(__p[0]) = 0;
    BYTE8(v38) = 0;
    sub_10083FF84(v15, __p, buf);
    memset(v49, 0, sizeof(v49));
    v16 = v48;
    v17 = v49;
    if (v48)
    {
      v17 = buf;
    }

    v18 = *v17;
    v19 = *&buf[8];
    if (!v48)
    {
      v19 = 0;
    }

    v20 = v17[2];
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    __src = v18;
    v45 = v19;
    v46 = v20;
    if (v49[0])
    {
      operator delete(v49[0]);
    }

    if (v16 && *buf)
    {
      operator delete(*buf);
    }

    if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1008403E4(&__src, *(a2 + 66) == 0, v12);
    LODWORD(__p[0]) = 3;
    *(__p + 4) = *(a2 + 2);
    HIDWORD(__p[1]) = *(a2 + 10);
    v21 = *(a2 + 30);
    v38 = *(a2 + 14);
    v39 = v21;
    v40 = *(a2 + 46);
    *&v41 = v12;
    DWORD2(v41) = *(a2 + 62);
    v42 = *(a2 + 66);
    LOBYTE(v43) = a3;
    *(&v43 + 4) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    if (qword_1025D45D0 != -1)
    {
      sub_1019531C8();
    }

    v22 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v15 > 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(&off_102476670 + v15);
      }

      v24 = sub_100840544(__p);
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "[IMUCal] Inserting %{public}@ entry:%{public}@", buf, 0x16u);
    }

    v25 = sub_10000A100(121, 2);
    if (v25)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      if (v15 > 2)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(&off_102476670 + v15);
      }

      v35 = sub_100840544(__p);
      LODWORD(v49[0]) = 138543618;
      *(v49 + 4) = v34;
      WORD2(v49[1]) = 2114;
      *(&v49[1] + 6) = v35;
      v36 = _os_log_send_and_compose_impl();
      v25 = sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::insertEstimate(const CMMotionCoprocessorReply::SensorParameterEstimate &, BOOL, float, float, CFAbsoluteTime)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v26 = v45;
    if (v45 >= v46)
    {
      v28 = __src;
      v29 = v45 - __src;
      v30 = 0x6DB6DB6DB6DB6DB7 * ((v45 - __src) >> 4);
      v31 = v30 + 1;
      if ((v30 + 1) > 0x249249249249249)
      {
        sub_10028C64C();
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((v46 - __src) >> 4) > v31)
      {
        v31 = 0xDB6DB6DB6DB6DB6ELL * ((v46 - __src) >> 4);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v46 - __src) >> 4)) >= 0x124924924924924)
      {
        v31 = 0x249249249249249;
      }

      if (v31)
      {
        sub_100841A94(&__src, v31);
      }

      v32 = (16 * ((v45 - __src) >> 4));
      v32[3] = v40;
      v32[4] = v41;
      v32[5] = v42;
      v32[6] = v43;
      *v32 = *__p;
      v32[1] = v38;
      v32[2] = v39;
      v27 = 112 * v30 + 112;
      v33 = (112 * v30 - v29);
      memcpy(v32 - v29, v28, v29);
      v25 = __src;
      __src = v33;
      v45 = v27;
      v46 = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      v45[3] = v40;
      v26[4] = v41;
      v26[5] = v42;
      v26[6] = v43;
      *v26 = *__p;
      v26[1] = v38;
      v26[2] = v39;
      v27 = (v26 + 7);
    }

    v45 = v27;
    sub_100840614(v25, v15, &__src);
    sub_100840A20(a1, v15, &__src, a6 != 0.0);
    if (__src)
    {
      v45 = __src;
      operator delete(__src);
    }

    return;
  }

  v13 = *(a1 + 8);
  if (v13 < 0x3C)
  {
    goto LABEL_10;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_1019530A0();
  }

  v14 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[IMUCal] Excessive writes, skipping this estimate", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019530B4();
  }
}

void sub_10083FF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10083FF84@<D0>(unsigned int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:v5]];
  }

  else
  {
    v6 = sub_1008412F4(a1);
  }

  v8 = v6;
  if (!v6)
  {
LABEL_22:
    *a3 = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v9 = [NSData dataWithContentsOfURL:v6];
  if (!v9)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v12 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = [(NSURL *)v8 path];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "[IMUCal] %{public}@ not available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195331C(v8);
    }

    goto LABEL_22;
  }

  v10 = v9;
  if (__ROR8__(0x6DB6DB6DB6DB6DB7 * [(NSData *)v9 length], 4) >= 0x24924924924924AuLL)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v11 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      v24 = 112;
      v25 = 2050;
      v26 = [(NSData *)v10 length];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[IMUCal] Expected multiple of %{public}zu bytes but got %{public}zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019531F0(v10);
    }

    goto LABEL_22;
  }

  sub_100841AF0(&v17, (([(NSData *)v10 length]>> 4) * 0x2492492492492493uLL) >> 64);
  memcpy(v17, [(NSData *)v10 bytes], [(NSData *)v10 length]);
  if (qword_1025D45D0 != -1)
  {
    sub_1019531C8();
  }

  v13 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    if (a1 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(&off_102476670 + a1);
    }

    *buf = 134349314;
    v24 = 0x6DB6DB6DB6DB6DB7 * ((*(&v17 + 1) - v17) >> 4);
    v25 = 2114;
    v26 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[IMUCal] Read %{public}zu %{public}@ entries", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45D0 != -1)
    {
      sub_1019531C8();
    }

    if (a1 > 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&off_102476670 + a1);
    }

    v19 = 134349314;
    v20 = 0x6DB6DB6DB6DB6DB7 * ((*(&v17 + 1) - v17) >> 4);
    v21 = 2114;
    v22 = v15;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<std::vector<CLIMUCalDataStore::Entry>> CLIMUCalDataStore::read(const CMIMUCal::Parameter, const std::optional<std::string> &)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  result = *&v17;
  *a3 = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = 1;
  return result;
}

void sub_1008403BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008403E4(void *result, int a2, double a3)
{
  v3 = result;
  v4 = *result;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  if (v5 < 1)
  {
    v10 = -1;
    v9 = -1;
    v8 = -1;
    goto LABEL_23;
  }

  v6 = v5 & 0x7FFFFFFF;
  v7 = &v4[112 * v6 - 48];
  v8 = -1;
  v9 = -1;
  v10 = -1;
  do
  {
    --v6;
    if (v8 < 0 && *v7 + 604800.0 < a3)
    {
      v8 = v6;
    }

    if (a2)
    {
      if (v9 < 0 && *(v7 + 16) != 0)
      {
        v9 = v6;
      }
    }

    if (v10 < 0 && *(v7 - 64) != 3)
    {
      v10 = v6;
    }

    v7 -= 112;
  }

  while ((v6 + 1) > 1);
  if (v8 < 0)
  {
LABEL_23:
    if (v10 < 0)
    {
      return result;
    }
  }

  v14 = v8 + 1;
  if ((v9 & 0x80000000) == 0 && v9 <= v8)
  {
    v15 = &v4[112 * v9];
    v16 = &v4[112 * v8];
    v17 = *v15;
    v18 = *(v15 + 2);
    *(v16 + 1) = *(v15 + 1);
    *(v16 + 2) = v18;
    *v16 = v17;
    v19 = *(v15 + 3);
    v20 = *(v15 + 4);
    v21 = *(v15 + 5);
    *(v16 + 92) = *(v15 + 92);
    *(v16 + 4) = v20;
    *(v16 + 5) = v21;
    *(v16 + 3) = v19;
    v14 = v8;
  }

  if (v10 + 1 > v14)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v14;
  }

  if ((v22 & 0x80000000) == 0 && v22)
  {
    v24 = *result;
    v23 = result[1];
    v25 = (*result + 112 * v22);
    v26 = v23 - v25;
    if (v23 != v25)
    {
      result = memmove(*result, v25, v26 - 4);
    }

    v3[1] = v24 + v26;
  }

  return result;
}

void sub_100840614(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = sub_1008412F4(a2);
  if (v5)
  {
    v6 = v5;
    v7 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v19 = 0;
    if ([(NSData *)v7 writeToURL:v6 options:1 error:&v19])
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v8 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (a2 > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(&off_102476670 + a2);
        }

        *buf = 134349314;
        v27 = v9;
        v28 = 2114;
        v29 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[IMUCal] Wrote %{public}zu %{public}@ entries", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (a2 > 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(&off_102476670 + a2);
        }

        v20 = 134349314;
        v21 = v14;
        v22 = 2114;
        v23 = v15;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::write(const CMIMUCal::Parameter, const std::vector<CLIMUCalDataStore::Entry> &)", "%s\n");
LABEL_32:
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    else
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v11 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
      {
        v12 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (a2 > 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(&off_102476670 + a2);
        }

        *buf = 134349570;
        v27 = v12;
        v28 = 2114;
        v29 = v13;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[IMUCal] Failed to write %{public}zu %{public}@ entries, error=%{public}@", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v16 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
        if (a2 > 2)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(&off_102476670 + a2);
        }

        v20 = 134349570;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        v24 = 2114;
        v25 = v19;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLIMUCalDataStore::write(const CMIMUCal::Parameter, const std::vector<CLIMUCalDataStore::Entry> &)", "%s\n");
        goto LABEL_32;
      }
    }
  }
}

void sub_100840A20(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  if (*a3 != a3[1] && (!a2 || a2 == 2))
  {
    v7 = a1 + 16;
    if (*(a1 + 16 + 8 * a2) < 1.0)
    {
      *(v7 + 8 * a2) = *(*a3 + 64);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (a4)
    {
      v9 = *(a3[1] - 48);
    }

    else
    {
      v9 = Current;
    }

    if (v9 >= *(v7 + 8 * a2) + 86400.0)
    {
      v11 = *a3;
      v10 = a3[1];
      if (v10 != *a3)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          if (!*(v11 + v12 + 80))
          {
            AnalyticsSendEventLazy();
            ++v14;
            v11 = *a3;
            v10 = a3[1];
          }

          ++v13;
          v12 += 112;
        }

        while (v13 < 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4));
      }

      *(v7 + 8 * a2) = v9;
    }
  }
}

void sub_100840BEC()
{
  for (i = 0; i != 3; ++i)
  {
    v27[0] = 0;
    v31 = 0;
    sub_10083FF84(i, v27, buf);
    memset(__p, 0, sizeof(__p));
    v1 = v26;
    v2 = buf;
    if (!v26)
    {
      v2 = __p;
    }

    v3 = *v2;
    if (v26)
    {
      v4 = *&buf[8];
    }

    else
    {
      v4 = 0;
    }

    v5 = v2[2];
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    v24[0] = v3;
    v24[1] = v4;
    v24[2] = v5;
    v6 = __p[0];
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v1)
    {
      v6 = *buf;
      if (*buf)
      {
        operator delete(*buf);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(*v27);
    }

    v7 = 0;
    v8 = -1227133513 * ((v4 - v3) >> 4);
    v9 = v8 + 1;
    v10 = &v3[112 * v8];
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v10;
      v14 = v9;
      while (--v14 >= 1)
      {
        v15 = v13 - 112;
        v16 = *(v13 - 4) != 0;
        v13 -= 112;
        if (v7 == v16)
        {
          ++*(v15 + 11);
          if (qword_1025D45D0 != -1)
          {
            sub_1019531C8();
          }

          v17 = qword_1025D45D8;
          if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
          {
            if (i > 2)
            {
              v18 = 0;
            }

            else
            {
              v18 = *(&off_102476670 + i);
            }

            v19 = sub_100840544(v15);
            *buf = 138543618;
            *&buf[4] = v18;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "[IMUCal] Inserting impact to %{public}@ entry:%{public}@", buf, 0x16u);
          }

          v6 = sub_10000A100(121, 2);
          if (v6)
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D45D0 != -1)
            {
              sub_1019531C8();
            }

            if (i > 2)
            {
              v20 = 0;
            }

            else
            {
              v20 = *(&off_102476670 + i);
            }

            v21 = sub_100840544(v15);
            *v27 = 138543618;
            *&v27[4] = v20;
            v28 = 2114;
            v29 = v21;
            v22 = _os_log_send_and_compose_impl();
            v6 = sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::insertImpact()", "%s\n", v22);
            if (v22 != buf)
            {
              free(v22);
            }
          }

          break;
        }
      }

      v11 = 0;
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    sub_100840614(v6, i, v24);
    if (v3)
    {
      operator delete(v3);
    }
  }
}

void sub_100840F78(unsigned int a1@<W1>, char **a2@<X8>, double a3@<D0>)
{
  LOBYTE(v13) = 0;
  v15 = 0;
  sub_10083FF84(a1, &v13, v16);
  memset(__p, 0, sizeof(__p));
  v6 = v17;
  v7 = __p;
  if (v17)
  {
    v7 = v16;
  }

  v8 = *v7;
  if (v17)
  {
    v9 = v16[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = v7[2];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v6 && v16[0])
  {
    operator delete(v16[0]);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v8 != v9)
  {
    v11 = sub_1008403E4(a2, 1, a3);
    if (v9 - v8 != a2[1] - *a2)
    {
      sub_100840614(v11, a1, a2);
    }
  }
}

void sub_100841084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (v20)
  {
    *(v19 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008410C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = -1227133513 * ((result[1] - *result) >> 4);
  v3 = v2 + 1;
  v4 = *result + 112 * v2;
  while (--v3 >= 1)
  {
    v5 = (v4 - 112);
    v6 = *(v4 - 32);
    v4 -= 112;
    if (v6)
    {
      v7 = v5[5];
      *(a2 + 64) = v5[4];
      *(a2 + 80) = v7;
      *(a2 + 96) = v5[6];
      v8 = v5[1];
      *a2 = *v5;
      *(a2 + 16) = v8;
      v9 = v5[3];
      v10 = 1;
      *(a2 + 32) = v5[2];
      *(a2 + 48) = v9;
      goto LABEL_6;
    }
  }

  v10 = 0;
  *a2 = 0;
LABEL_6:
  *(a2 + 112) = v10;
  return result;
}

void sub_100841144(uint64_t a1, unsigned int a2)
{
  v2 = sub_1008412F4(a2);
  if (v2)
  {
    v3 = v2;
    v4 = +[NSFileManager defaultManager];
    v9 = 0;
    if ([(NSFileManager *)v4 fileExistsAtPath:[(NSURL *)v3 path]]&& [(NSFileManager *)v4 removeItemAtURL:v3 error:&v9])
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v5 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSURL *)v3 path];
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] Deleting %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195353C(v3);
      }
    }

    else
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v7 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
      {
        v8 = [(NSURL *)v3 path];
        *buf = 138543362;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[IMUCal] Failed to delete %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101953430(v3);
      }
    }
  }
}

NSURL *sub_1008412F4(unsigned int a1)
{
  if (a1 >= 3)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v3 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "[IMUCal] Parameter %{public}@ not supported", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101953648();
    }

    return 0;
  }

  else
  {
    v1 = *(&off_102476688 + a1);

    return [NSURL fileURLWithPath:v1];
  }
}

void sub_100841418(uint64_t a1, unsigned int a2)
{
  __p[0] = 0;
  v16 = 0;
  sub_10083FF84(a2, __p, &v9);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(*__p);
  }

  if (v11)
  {
    v2 = v9;
    v3 = v10;
    if (v9 != v10)
    {
      v4 = v9;
      do
      {
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v5 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          v6 = sub_100840544(v4);
          *__p = 138543362;
          *&__p[4] = v6;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] %{public}@", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101953744(__p);
          v7 = sub_100840544(v4);
          v12 = 138543362;
          v13 = v7;
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::readAndLog(const CMIMUCal::Parameter) const", "%s\n", v8);
          if (v8 != __p)
          {
            free(v8);
          }
        }

        v4 += 28;
      }

      while (v4 != v3);
    }

    if (v2)
    {
      operator delete(v2);
    }
  }
}

void sub_100841624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

id sub_100841670(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14[0] = @"EstimateCovarianceXX";
  v15[0] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 16)];
  v14[1] = @"EstimateCovarianceXY";
  v15[1] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 24)];
  v14[2] = @"EstimateCovarianceXZ";
  v15[2] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 32)];
  v14[3] = @"EstimateCovarianceYY";
  v15[3] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 40)];
  v14[4] = @"EstimateCovarianceYZ";
  v15[4] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 48)];
  v14[5] = @"EstimateCovarianceZZ";
  v15[5] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 56)];
  v14[6] = @"EstimateX";
  LODWORD(v3) = *(**(a1 + 32) + 112 * *(a1 + 40) + 4);
  v15[6] = [NSNumber numberWithFloat:v3];
  v14[7] = @"EstimateY";
  LODWORD(v4) = *(**(a1 + 32) + 112 * *(a1 + 40) + 8);
  v15[7] = [NSNumber numberWithFloat:v4];
  v14[8] = @"EstimateZ";
  LODWORD(v5) = *(**(a1 + 32) + 112 * *(a1 + 40) + 12);
  v15[8] = [NSNumber numberWithFloat:v5];
  v14[9] = @"NumberOfImpacts";
  v15[9] = [NSNumber numberWithUnsignedLong:*(**(a1 + 32) + 112 * *(a1 + 40) + 88)];
  v14[10] = @"TableIndex";
  v15[10] = [NSNumber numberWithUnsignedLong:*(a1 + 48)];
  v14[11] = @"TemperatureIMU";
  LODWORD(v6) = *(**(a1 + 32) + 112 * *(a1 + 40) + 72);
  v15[11] = [NSNumber numberWithFloat:v6];
  v14[12] = @"TimeSincePrevious";
  v15[12] = [NSString stringWithFormat:@"%.0f", *(a1 + 56) / 60.0];
  v15[13] = &off_10254F020;
  v14[13] = @"NumberOfEstimates";
  v14[14] = @"NumberOfEstimatesIndoors";
  if (*(**(a1 + 32) + 112 * *(a1 + 40) + 96))
  {
    v7 = &off_10254F038;
  }

  else
  {
    v7 = &off_10254F020;
  }

  v15[14] = v7;
  [v2 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v14, 15)}];
  LODWORD(v8) = *(**(a1 + 32) + 112 * *(a1 + 40) + 100);
  [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v8), @"RelativeHumidityOutside"}];
  LODWORD(v9) = *(**(a1 + 32) + 112 * *(a1 + 40) + 104);
  [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v9), @"TemperatureOutside"}];
  if (qword_1025D45D0 != -1)
  {
    sub_1019531C8();
  }

  v10 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v13 = v2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Sending analytics: \n%{private}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953788(v2);
  }

  return v2;
}

void sub_100841A94(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_100841AF0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100841B80(result, a2);
  }

  return result;
}

void sub_100841B64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100841B80(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_100841A94(a1, a2);
  }

  sub_10028C64C();
}

id sub_1008421A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v5[2] = *(a1 + 40);
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 66);
  v5[0] = *(a1 + 8);
  v5[1] = v2;
  return [a2 onSensorParameterEstimate:v5];
}

void sub_100842BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10084349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_100843644()
{
  v10[0] = @"/System/Library/PrivateFrameworks/BulletinBoard.framework";
  v9[0] = @"/System/Library/LocationBundles/AppSuggestions.bundle";
  v9[1] = @"/System/Library/LocationBundles/CalendarLocation.bundle";
  v9[2] = @"/System/Library/LocationBundles/DestinationdLocationBundleiOS.bundle";
  v9[3] = @"/System/Library/LocationBundles/DoNotDisturb.bundle";
  v9[4] = @"/System/Library/LocationBundles/ExposureNotificationBundle.bundle";
  v9[5] = @"/System/Library/LocationBundles/MapsAnnouncements.bundle";
  v9[6] = @"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle";
  v9[7] = @"/System/Library/LocationBundles/Oos.bundle";
  v9[8] = @"/System/Library/LocationBundles/PassbookRelevancy.bundle";
  v9[9] = @"/System/Library/LocationBundles/RemindersAlerts.bundle";
  v9[10] = @"/System/Library/LocationBundles/SafetyAlerts.bundle";
  v9[11] = @"/System/Library/LocationBundles/ShortcutsLocation.bundle";
  v9[12] = @"/System/Library/LocationBundles/Wea.bundle";
  v11[0] = [NSArray arrayWithObjects:v9 count:13];
  v10[1] = @"/System/Library/LocationBundles/Traffic.bundle";
  v8[0] = @"/System/Library/LocationBundles/IonosphereHarvest.bundle";
  v8[1] = @"/System/Library/LocationBundles/AltimeterHarvest.bundle";
  v8[2] = @"/System/Library/LocationBundles/GeocorrectionDLocationBundle.bundle";
  v8[3] = @"/System/Library/LocationBundles/TraceHarvest.bundle";
  v11[1] = [NSArray arrayWithObjects:v8 count:4];
  v10[2] = @"/System/Library/PrivateFrameworks/MobileWiFi.framework";
  v7[0] = @"/System/Library/LocationBundles/UWBRegulatory.bundle";
  v7[1] = @"/System/Library/LocationBundles/WRMLinkSelection.bundle";
  v7[2] = @"/System/Library/PrivateFrameworks/NetworkServiceProxy.framework";
  v11[2] = [NSArray arrayWithObjects:v7 count:3];
  v10[3] = @"/System/Library/LocationBundles/SystemCustomization.bundle";
  v6[0] = @"/System/Library/PrivateFrameworks/ChronoCore.framework";
  v6[1] = @"/System/Library/LocationBundles/CountryTracker.bundle";
  v6[2] = @"/System/Library/PrivateFrameworks/ClockPoster.framework";
  v6[3] = @"/System/Library/ExtensionKit/Extensions/MercuryPosterExtension.appex";
  v6[4] = @"/System/Library/LocationBundles/WebContentFilterEligibility.bundle";
  v11[3] = [NSArray arrayWithObjects:v6 count:5];
  v10[4] = @"/System/Library/PrivateFrameworks/CoreParsec.framework";
  v5 = @"/System/Library/LocationBundles/eSIMTravelBuddy.bundle";
  v11[4] = [NSArray arrayWithObjects:&v5 count:1];
  v10[5] = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
  v4[0] = @"/System/Library/LocationBundles/CarPlayHomeLocation.bundle";
  v4[1] = @"/System/Library/PrivateFrameworks/HomeEnergyDaemon.framework";
  v11[5] = [NSArray arrayWithObjects:v4 count:2];
  v10[6] = @"/System/Library/PrivateFrameworks/DeviceManagement.framework";
  v3 = @"/System/Library/PrivateFrameworks/MDM.framework";
  v11[6] = [NSArray arrayWithObjects:&v3 count:1];
  v10[7] = @"/System/Library/PrivateFrameworks/FMF.framework";
  v2 = @"/System/Library/LocationBundles/SafetyMonitorLocationBundle.bundle";
  v11[7] = [NSArray arrayWithObjects:&v2 count:1];
  v10[8] = @"/System/Library/LocationBundles/Routine.bundle";
  v1[0] = @"/System/Library/LocationBundles/Milod.bundle";
  v1[1] = @"/System/Library/LocationBundles/FedMobility.bundle";
  v11[8] = [NSArray arrayWithObjects:v1 count:2];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:9];
}

NSArray *sub_1008439C0()
{
  v1[0] = @"/System/Library/LocationBundles/PassbookMerchantLookup.bundle";
  v1[1] = @"/System/Library/Frameworks/CoreTelephony.framework";
  v1[2] = @"/System/Library/LocationBundles/CompassCalibration.bundle";
  v1[3] = @"/System/Library/LocationBundles/Emergency SOS.bundle";
  v1[4] = @"/System/Library/PrivateFrameworks/WirelessDiagnostics.framework";
  v1[5] = @"/System/Library/LocationBundles/MotionCalibration.bundle";
  v1[6] = @"/System/Library/LocationBundles/TimeZone.bundle";
  v1[7] = @"/System/Library/PrivateFrameworks/FindMyDevice.framework";
  v1[8] = @"/System/Library/LocationBundles/WifiCalling.bundle";
  v1[9] = @"/System/Library/LocationBundles/Bifrost.bundle";
  v1[10] = @"/System/Library/LocationBundles/ClipServicesLocation.bundle";
  v1[11] = @"/System/Library/LocationBundles/AppGenius.bundle";
  v1[12] = @"/System/Library/LocationBundles/LocationHarvest.bundle";
  return [NSArray arrayWithObjects:v1 count:13];
}

NSArray *sub_100843AD4()
{
  v1[0] = @"/System/Library/Frameworks/CoreWLAN.framework";
  v1[1] = @"/System/Library/LocationBundles/CarbonAnalytics.bundle";
  v1[2] = @"/System/Library/LocationBundles/NanoCompassAlerts.bundle";
  v1[3] = @"/System/Library/LocationBundles/NanoSmartStack.bundle";
  return [NSArray arrayWithObjects:v1 count:4];
}

void sub_100844084(void *a1, uint64_t a2)
{
  xpc_dictionary_set_string(a1, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP, 1);
  v4 = a2 == 2;
  if (a2 == 2)
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, v4);
  xpc_dictionary_set_string(a1, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD);
  xpc_dictionary_set_uint64(a1, XPC_ACTIVITY_GRACE_PERIOD, v5);
  v6 = XPC_ACTIVITY_REQUIRES_CLASS_C;

  xpc_dictionary_set_BOOL(a1, v6, 1);
}

void sub_100844184(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    LODWORD(v11) = state;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, callback, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953E6C(state);
  }

  if (state == 2)
  {
    v6 = [objc_msgSend(*(a1 + 32) "universe")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100844370;
    v9[3] = &unk_102447418;
    v9[4] = *(a1 + 32);
    [v6 async:v9];
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101953F58();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v8 = xpc_activity_get_state(activity);
        *buf = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "#tiledownloadscheduler, failed to mark activity as done. current state, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101953F80();
      }
    }
  }
}

id sub_100844370(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = [objc_msgSend(*(a1 + 32) "clients")];
    *buf = 134349056;
    v15 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, run, wifi connectivity, client count, %{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195407C();
  }

  [*(a1 + 32) setHasRegisteredForWifiConnectivity:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 32) clients];
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) onScheduledTileDownloadWithReachabilityRequirement:2];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1008445B4(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    LODWORD(v11) = state;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, callback, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954170(state);
  }

  if (state == 2)
  {
    v6 = [objc_msgSend(*(a1 + 32) "universe")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008447A0;
    v9[3] = &unk_102447418;
    v9[4] = *(a1 + 32);
    [v6 async:v9];
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101953F58();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v8 = xpc_activity_get_state(activity);
        *buf = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "#tiledownloadscheduler, failed to mark activity as done. current state, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195425C();
      }
    }
  }
}

id sub_1008447A0(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = [objc_msgSend(*(a1 + 32) "clients")];
    *buf = 134349056;
    v15 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, run, cellular connectivity, client count, %{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954358();
  }

  [*(a1 + 32) setHasRegisteredForCellularConnectivity:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 32) clients];
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) onScheduledTileDownloadWithReachabilityRequirement:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

BOOL sub_100844A28(uint64_t a1)
{
  v2 = *(a1 + 22);
  if (v2 <= 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = *(a1 + 22);
  }

  if (v3 - 3 >= v2)
  {
    v4 = 0;
    if ((*(a1 + 92) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      if (*sub_100457AE8((a1 + 20), v5 - 2) <= 18.0)
      {
        ++v4;
      }

      v6 = *(a1 + 22);
      if (v6 <= 3)
      {
        v6 = 3;
      }

      --v5;
    }

    while (v5 > v6 - 2);
    if ((*(a1 + 92) & 1) == 0)
    {
      if (v4 >= 3)
      {
        v7 = *(a1 + 72) ^ 1;
        return v7 & 1;
      }

LABEL_18:
      v7 = 0;
      return v7 & 1;
    }
  }

  return sub_100844B10(a1, v4);
}

BOOL sub_100844B10(uint64_t a1, unsigned int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 22) && *sub_100457AE8((a1 + 20), *(a1 + 22) - 1) > *(a1 + 88))
  {
    *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  if (a2 >= 3 && (*(a1 + 72) & 1) == 0)
  {
    v7 = *(a1 + 80);
    v6 = (a1 + 80);
    v8 = v7;
    v5 = Current > v7;
    if (Current > v7)
    {
      if (Current - v8 <= 180.0)
      {
        return 0;
      }

      if (qword_1025D4310 != -1)
      {
        sub_10195444C();
      }

      v9 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v6;
        v12 = 134218240;
        v13 = Current;
        v14 = 2048;
        v15 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "pressure quality check for good wet barometer mitigation should be applied,now,%f,lastUnknownToGoodSatifiedTimestamp,%f", &v12, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101954460();
      }

      Current = 1.79769313e308;
    }

    *v6 = Current;
  }

  return v5;
}

BOOL sub_100844C90(uint64_t a1)
{
  if (!*(a1 + 22))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 22) + 1;
  do
  {
    if (*sub_100457AE8((a1 + 20), v3 - 2) >= 275.0)
    {
      ++v2;
    }

    v4 = *(a1 + 22);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    --v3;
  }

  while (v3 > v4);
  return v2 != 0;
}

BOOL sub_100844D1C(uint64_t a1)
{
  v1 = *(a1 + 22);
  if (v1 <= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *(a1 + 22);
  }

  if (v2 - 5 >= v1)
  {
    return 0;
  }

  v4 = 0;
  v5 = v1 + 1;
  do
  {
    if (*sub_100457AE8((a1 + 20), v5 - 2) < 275.0)
    {
      ++v4;
    }

    v6 = *(a1 + 22);
    if (v6 <= 5)
    {
      v6 = 5;
    }

    --v5;
  }

  while (v5 > v6 - 4);
  return v4 > 2;
}

BOOL sub_100844DBC(uint64_t a1)
{
  v1 = *(a1 + 22);
  if (v1 <= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *(a1 + 22);
  }

  if (v2 - 5 >= v1)
  {
    return 0;
  }

  v4 = 0;
  v5 = v1 + 1;
  do
  {
    v6 = *sub_100457AE8((a1 + 20), v5 - 2) > *(a1 + 88) && *sub_100457AE8((a1 + 20), v5 - 2) < 275.0;
    v4 += v6;
    v7 = *(a1 + 22);
    if (v7 <= 5)
    {
      v7 = 5;
    }

    --v5;
  }

  while (v5 > v7 - 4);
  return v4 > 2;
}

void sub_100844E90(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = -1082130432;
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state reset,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954570();
  }

  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
}

uint64_t sub_100844FB0(uint64_t a1)
{
  *a1 = &unk_102476740;
  *(a1 + 8) = 10;
  *(a1 + 16) = 512;
  *(a1 + 20) = 0x500000000;
  *(a1 + 48) = -1082130432;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1082130432;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
  v2 = sub_10071C8A8();
  v3 = 54.0;
  if (v2)
  {
    v3 = 35.0;
  }

  *(a1 + 88) = v3;
  *(a1 + 92) = v2;
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v4 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 92);
    v6 = *(a1 + 88);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "init pressure quality controller,deviceModelRequiresWetBarometerMitigation,%d,unknownFromGoodThreshold,%f", v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954668((a1 + 92), (a1 + 88));
  }

  return a1;
}

uint64_t sub_100845124(uint64_t result, int a2, uint64_t a3, float a4)
{
  if (a4 != -1.0 && a3 != 0)
  {
    v5 = a4 <= 18.0 && a2 <= 0;
    if (!v5 || a3 == 4)
    {
      v7 = *(result + 22);
      v8 = *(result + 24);
      v9 = *(result + 20);
      if (v9 + v7 >= v8)
      {
        v10 = *(result + 24);
      }

      else
      {
        v10 = 0;
      }

      *(result + 4 * (v9 + v7 - v10) + 28) = a4;
      if (v8 <= v7)
      {
        if (v9 + 1 < v8)
        {
          LOWORD(v8) = 0;
        }

        *(result + 20) = v9 + 1 - v8;
      }

      else
      {
        *(result + 22) = v7 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_100845198(uint64_t a1, int a2, uint64_t a3, __int16 a4, float a5)
{
  *(a1 + 56) = a3;
  *(a1 + 48) = a5;
  result = sub_1000CE87C(a1, 1, &v12);
  if (a3)
  {
    result = sub_100845124(a1, a2, a3, a5);
    *(a1 + 72) |= (a4 & 0x1000) != 0;
    if (*(a1 + 22))
    {
      return sub_1000CE87C(a1, 0, &v11);
    }
  }

  return result;
}

void sub_100845264(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = *(a1 + 48);
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state transition,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954794();
  }

  *(a1 + 68) = *(a1 + 16);
}

void sub_10084537C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = *(a1 + 48);
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state transition,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195488C();
  }

  *(a1 + 68) = *(a1 + 16);
}

void sub_100845894(id a1)
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v1 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "xpc interruption handler", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954AA8();
  }
}

void sub_100845928(id a1)
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v1 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "xpc invalidation handler", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954B84();
  }
}

uint64_t sub_100845AB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) fetchBleAdvertisementsWithIdentityFilter:0];
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v3 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v2 count];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "fetch'd %zu advertisements from volatile store", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954D3C(v2);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100845CBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) fetchBleAdvertisementsWithIdentityFilter:0];
  v10 = 0.0;
  v11 = 0;
  [*(*(a1 + 32) + 32) fetchFromStatisticsNumberOfAdvs:&v11 accumulatedTime:&v10];
  if (qword_1025D4720 != -1)
  {
    sub_101954A80();
  }

  v3 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 count];
    *buf = 134218496;
    v21 = v4;
    v22 = 2048;
    v23 = v11;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "fetch'd %zu advertisements from volatile store, N %zu, T %.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4720 != -1)
    {
      sub_101954A80();
    }

    v8 = [v2 count];
    v14 = 134218496;
    v15 = v8;
    v16 = 2048;
    v17 = v11;
    v18 = 2048;
    v19 = v10;
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLGatheringXPCServer fetchAdvertisementsDetailedWithCompletion:]_block_invoke", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v5.n128_f64[0] = v10;
  if (v10 == 0.0 && v11 != 0)
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"received advertisements without scanning?";
    [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:[NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1, v10]];
    v5.n128_f64[0] = v10;
  }

  return (*(*(a1 + 40) + 16))(v5);
}

uint64_t sub_1008460B8(void *a1)
{
  if ([*(a1[4] + 24) getEnablementStatus])
  {
    [*(a1[4] + 24) stop];
    [*(a1[4] + 40) overrideWithConfiguration:a1[6]];
    [*(a1[4] + 24) run];
    v2 = *(a1[5] + 16);

    return v2();
  }

  else
  {
    v4 = NSLocalizedDescriptionKey;
    v5 = @"CLGatheringBluetoothClient disabled";
    [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:[NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]];
    return (*(a1[5] + 16))();
  }
}

long double sub_1008462A8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D41B0 != -1)
  {
    sub_10195504C();
  }

  v3 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v11 = 134284289;
    v12 = v4;
    v13 = 2049;
    v14 = v5;
    v15 = 2049;
    v16 = v6;
    v17 = 2049;
    v18 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelBalance::Features,intermediateBoutsAsymmetryPercentageMedian,%{private}.3f,intermediateBoutsAsymmetryPercentageCv,%{private}.3f,intermediateBoutsDoubleSupportPercentageMedian,%{private}.3f,intermediateBoutsDoubleSupportPercentageStd,%{private}.3f", &v11, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955060(a2);
  }

  v8 = vdupq_n_s64(0xFFF0000000000000);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v8), vceqq_f64(*(a2 + 16), v8)))) & 1) == 0)
  {
    return sub_1009A32C0(a2);
  }

  if (qword_1025D41B0 != -1)
  {
    sub_1019551AC();
  }

  v9 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Rejection: CLMobilitySteadinessModelBalance missing required feature inputs", &v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019551D4();
  }

  return -INFINITY;
}

double sub_10084644C(double a1, uint64_t a2, uint64_t *a3)
{
  __src = 0;
  v73 = 0;
  v74 = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    __p = 0;
    v70 = 0;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1 + -2419200.0;
    do
    {
      v8 = *(v4 + 8);
      if (v8 < a1 && v8 >= v7)
      {
        if (v6 >= v74)
        {
          v20 = __src;
          v21 = v6 - __src;
          v22 = 0x6DB6DB6DB6DB6DB7 * ((v6 - __src) >> 5);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x124924924924924)
          {
            sub_10028C64C();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v74 - __src) >> 5) > v23)
          {
            v23 = 0xDB6DB6DB6DB6DB6ELL * ((v74 - __src) >> 5);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v74 - __src) >> 5)) >= 0x92492492492492)
          {
            v24 = 0x124924924924924;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            sub_1006EB5FC(&__src, v24);
          }

          v25 = (32 * ((v6 - __src) >> 5));
          v26 = *(v4 + 16);
          *v25 = *v4;
          v25[1] = v26;
          v27 = *(v4 + 32);
          v28 = *(v4 + 48);
          v29 = *(v4 + 80);
          v25[4] = *(v4 + 64);
          v25[5] = v29;
          v25[2] = v27;
          v25[3] = v28;
          v30 = *(v4 + 96);
          v31 = *(v4 + 112);
          v32 = *(v4 + 144);
          v25[8] = *(v4 + 128);
          v25[9] = v32;
          v25[6] = v30;
          v25[7] = v31;
          v33 = *(v4 + 160);
          v34 = *(v4 + 176);
          v35 = *(v4 + 208);
          v25[12] = *(v4 + 192);
          v25[13] = v35;
          v25[10] = v33;
          v25[11] = v34;
          v6 = (224 * v22 + 224);
          v36 = (224 * v22 - v21);
          memcpy(v25 - v21, v20, v21);
          v37 = __src;
          __src = v36;
          v73 = v6;
          v74 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          v10 = *(v4 + 16);
          *v6 = *v4;
          *(v6 + 1) = v10;
          v11 = *(v4 + 32);
          v12 = *(v4 + 48);
          v13 = *(v4 + 80);
          *(v6 + 4) = *(v4 + 64);
          *(v6 + 5) = v13;
          *(v6 + 2) = v11;
          *(v6 + 3) = v12;
          v14 = *(v4 + 96);
          v15 = *(v4 + 112);
          v16 = *(v4 + 144);
          *(v6 + 8) = *(v4 + 128);
          *(v6 + 9) = v16;
          *(v6 + 6) = v14;
          *(v6 + 7) = v15;
          v17 = *(v4 + 160);
          v18 = *(v4 + 176);
          v19 = *(v4 + 208);
          *(v6 + 12) = *(v4 + 192);
          *(v6 + 13) = v19;
          *(v6 + 10) = v17;
          *(v6 + 11) = v18;
          v6 += 224;
        }

        v73 = v6;
      }

      v4 += 224;
    }

    while (v4 != v5);
    v38 = __src;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if (__src != v6)
    {
      do
      {
        v39 = v38[2] - v38[1];
        if (v39 <= 600.0 && v39 > 60.0)
        {
          v41 = *(v38 + 13);
          if (v41)
          {
            v42 = 42;
          }

          else
          {
            v42 = -1;
          }

          if ((v42 & *(v38 + 49)) == 0)
          {
            v43 = v70;
            if (v70 >= v71)
            {
              v45 = __p;
              v46 = v70 - __p;
              v47 = (v70 - __p) >> 3;
              v48 = v47 + 1;
              if ((v47 + 1) >> 61)
              {
                goto LABEL_78;
              }

              v49 = v71 - __p;
              if ((v71 - __p) >> 2 > v48)
              {
                v48 = v49 >> 2;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFF8)
              {
                v50 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                sub_1000B9708(&__p, v50);
              }

              *(8 * v47) = v38[15];
              v44 = 8 * v47 + 8;
              memcpy(0, v45, v46);
              v51 = __p;
              __p = 0;
              v70 = v44;
              v71 = 0;
              if (v51)
              {
                operator delete(v51);
              }
            }

            else
            {
              *v70 = v38[15];
              v44 = (v43 + 8);
            }

            v70 = v44;
            v41 = *(v38 + 13);
          }

          if (v41)
          {
            v52 = 42;
          }

          else
          {
            v52 = -1;
          }

          if ((v52 & *(v38 + 51)) == 0)
          {
            v53 = v67;
            if (v67 >= v68)
            {
              v55 = v66;
              v56 = v67 - v66;
              v57 = (v67 - v66) >> 3;
              v58 = v57 + 1;
              if ((v57 + 1) >> 61)
              {
LABEL_78:
                sub_10028C64C();
              }

              v59 = v68 - v66;
              if ((v68 - v66) >> 2 > v58)
              {
                v58 = v59 >> 2;
              }

              if (v59 >= 0x7FFFFFFFFFFFFFF8)
              {
                v60 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                sub_1000B9708(&v66, v60);
              }

              *(8 * v57) = v38[17];
              v54 = 8 * v57 + 8;
              memcpy(0, v55, v56);
              v61 = v66;
              v66 = 0;
              v67 = v54;
              v68 = 0;
              if (v61)
              {
                operator delete(v61);
              }
            }

            else
            {
              *v67 = v38[17];
              v54 = (v53 + 8);
            }

            v67 = v54;
          }
        }

        v38 += 28;
      }

      while (v38 != v6);
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_1019551AC();
  }

  v62 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349824;
    v84 = a1;
    v85 = 2050;
    v86 = 0x6DB6DB6DB6DB6DB7 * ((v73 - __src) >> 5);
    v87 = 2050;
    v88 = (v70 - __p) >> 3;
    v89 = 2050;
    v90 = (v67 - v66) >> 3;
    _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "SteadinessModelBalance::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,doubleSupportPercentages,%{public}lu,asymmetryPercentages,%{public}lu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019552E8(buf);
    v75 = 134349824;
    v76 = a1;
    v77 = 2050;
    v78 = 0x6DB6DB6DB6DB6DB7 * ((v73 - __src) >> 5);
    v79 = 2050;
    v80 = (v70 - __p) >> 3;
    v81 = 2050;
    v82 = (v67 - v66) >> 3;
    v65 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "Features CLMobility::SteadinessModelBalance::extractFeatures(CFAbsoluteTime, const std::vector<BoutMetrics> &) const", "%s\n", v65);
    if (v65 != buf)
    {
      free(v65);
    }
  }

  sub_100FB15E4(&v66);
  v63 = sub_100FB14B0(&v66);
  sub_100FB15E4(&__p);
  sub_100FB13FC(&__p);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v73 = __src;
    operator delete(__src);
  }

  return v63;
}

void sub_100846A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100846AEC()
{
  result = qword_1026372F8;
  if (qword_1026372F8)
  {
    return (*(*qword_1026372F8 + 8))();
  }

  return result;
}

void sub_100846B20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10265A690 & 1) == 0)
  {
    byte_10265A690 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPPrivateDataCapture.pb.cc", a4);
    sub_10041B8E4(v4, v5, v6, v7);
    sub_100D0BBD0(v8, v9, v10, v11);
    sub_10099907C(v12, v13, v14, v15);
    sub_101234534(v16, v17, v18, v19);
    sub_10063BFB8(v20, v21, v22, v23);
    sub_1015F481C(v24, v25, v26, v27);
    sub_100B7D4D0(v28, v29, v30, v31);
    sub_100E72208(v32, v33, v34, v35);
    sub_100A5714C(v36, v37, v38, v39);
    sub_1012A34B4(v40, v41, v42, v43);
    sub_10110985C(v44, v45, v46, v47);
    sub_1009464B0(v48, v49, v50, v51);
    sub_100DE4A28(v52, v53, v54, v55);
    operator new();
  }
}

uint64_t sub_100846C64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = sub_10041F7B4(a1, a2, a3, a4);
  a1[1] = v5;
  v9 = sub_10042031C(v5, v6, v7, v8);
  a1[2] = v9;
  v13 = sub_100420DF8(v9, v10, v11, v12);
  a1[3] = v13;
  v17 = sub_100428B50(v13, v14, v15, v16);
  a1[4] = v17;
  v21 = sub_10042C350(v17, v18, v19, v20);
  a1[5] = v21;
  v25 = sub_10042D5CC(v21, v22, v23, v24);
  a1[6] = v25;
  v29 = sub_10043127C(v25, v26, v27, v28);
  a1[7] = v29;
  v33 = sub_100431A54(v29, v30, v31, v32);
  a1[8] = v33;
  v37 = sub_100431FF8(v33, v34, v35, v36);
  a1[9] = v37;
  v41 = sub_100433924(v37, v38, v39, v40);
  a1[10] = v41;
  v45 = sub_10043A360(v41, v42, v43, v44);
  a1[11] = v45;
  v49 = sub_10043B48C(v45, v46, v47, v48);
  a1[12] = v49;
  v53 = sub_100D18D38(v49, v50, v51, v52);
  a1[13] = v53;
  v57 = sub_10043CA04(v53, v54, v55, v56);
  a1[14] = v57;
  v61 = sub_10043D200(v57, v58, v59, v60);
  a1[15] = v61;
  v65 = sub_10044115C(v61, v62, v63, v64);
  a1[16] = v65;
  v69 = sub_100443720(v65, v66, v67, v68);
  a1[17] = v69;
  v73 = sub_100428B50(v69, v70, v71, v72);
  a1[18] = v73;
  v77 = sub_100445F84(v73, v74, v75, v76);
  a1[19] = v77;
  v81 = sub_100447F34(v77, v78, v79, v80);
  a1[20] = v81;
  v85 = sub_100434DD0(v81, v82, v83, v84);
  a1[21] = v85;
  v89 = sub_100449C1C(v85, v86, v87, v88);
  a1[22] = v89;
  v93 = sub_1004366EC(v89, v90, v91, v92);
  a1[23] = v93;
  v97 = sub_100438190(v93, v94, v95, v96);
  a1[24] = v97;
  v101 = sub_10043763C(v97, v98, v99, v100);
  a1[25] = v101;
  v105 = sub_100443FD0(v101, v102, v103, v104);
  a1[26] = v105;
  v109 = sub_100446CC8(v105, v106, v107, v108);
  a1[27] = v109;
  v113 = sub_10044A798(v109, v110, v111, v112);
  a1[28] = v113;
  v117 = sub_10044C644(v113, v114, v115, v116);
  a1[29] = v117;
  v121 = sub_10044F770(v117, v118, v119, v120);
  a1[30] = v121;
  v125 = sub_10045125C(v121, v122, v123, v124);
  a1[31] = v125;
  v129 = sub_10042F810(v125, v126, v127, v128);
  a1[32] = v129;
  v133 = sub_1004529DC(v129, v130, v131, v132);
  a1[33] = v133;
  v137 = sub_1012A8B5C(v133, v134, v135, v136);
  a1[34] = v137;
  v141 = sub_100453940(v137, v138, v139, v140);
  a1[35] = v141;
  v145 = sub_100E892C0(v141, v142, v143, v144);
  a1[36] = v145;
  v149 = sub_100999584(v145, v146, v147, v148);
  a1[37] = v149;
  v153 = sub_100B7D960(v149, v150, v151, v152);
  a1[38] = v153;
  v157 = sub_1015F4C58(v153, v154, v155, v156);
  a1[39] = v157;
  v161 = sub_100A57514(v157, v158, v159, v160);
  a1[40] = v161;
  v165 = sub_10110A3F4(v161, v162, v163, v164);
  a1[41] = v165;
  v169 = sub_10063C4E4(v165, v166, v167, v168);
  a1[42] = v169;
  v173 = sub_101234C38(v169, v170, v171, v172);
  a1[43] = v173;
  v177 = sub_100E004C4(v173, v174, v175, v176);
  a1[44] = v177;
  v181 = sub_100948B58(v177, v178, v179, v180);
  a1[45] = v181;
  v185 = sub_100949290(v181, v182, v183, v184);
  a1[46] = v185;
  v189 = sub_100949B20(v185, v186, v187, v188);
  a1[47] = v189;
  v193 = sub_10094A3A8(v189, v190, v191, v192);
  a1[48] = v193;
  v197 = sub_10094AAC8(v193, v194, v195, v196);
  a1[49] = v197;
  v201 = sub_10094B9D4(v197, v198, v199, v200);
  a1[50] = v201;
  v205 = sub_10094C200(v201, v202, v203, v204);
  a1[51] = v205;
  v209 = sub_10094CA80(v205, v206, v207, v208);
  a1[52] = v209;
  v213 = sub_10094D6D4(v209, v210, v211, v212);
  a1[53] = v213;
  v217 = sub_10094DDC4(v213, v214, v215, v216);
  a1[54] = v217;
  v221 = sub_10094E6B8(v217, v218, v219, v220);
  a1[55] = v221;
  v225 = sub_10094ECD8(v221, v222, v223, v224);
  a1[56] = v225;
  v229 = sub_10094F3AC(v225, v226, v227, v228);
  a1[57] = v229;
  v233 = sub_10094FB08(v229, v230, v231, v232);
  a1[58] = v233;
  result = sub_100950174(v233, v234, v235, v236);
  a1[59] = result;
  return result;
}

void sub_100846E5C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v125);
  }

  v4 = *(a2 + 488);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 488) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_1026372F8 + 8);
      }

      sub_10041F6A4(v5, v6);
      v4 = *(a2 + 488);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 488) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = *(qword_1026372F8 + 16);
      }

      sub_10042020C(v7, v8);
      v4 = *(a2 + 488);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 488) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        v10 = *(qword_1026372F8 + 24);
      }

      sub_100420CE8(v9, v10);
      v4 = *(a2 + 488);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 488) |= 8u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 32);
      if (!v12)
      {
        v12 = *(qword_1026372F8 + 32);
      }

      sub_100428520(v11, v12);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 488) |= 0x10u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 40);
      if (!v14)
      {
        v14 = *(qword_1026372F8 + 40);
      }

      sub_10042C048(v13, v14);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 488) |= 0x20u;
      v15 = *(a1 + 48);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 48);
      if (!v16)
      {
        v16 = *(qword_1026372F8 + 48);
      }

      sub_10042D2CC(v15, v16);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 488) |= 0x40u;
      v17 = *(a1 + 56);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 56);
      if (!v18)
      {
        v18 = *(qword_1026372F8 + 56);
      }

      sub_100430F74(v17, v18);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 488) |= 0x80u;
      v19 = *(a1 + 64);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 64);
      if (!v20)
      {
        v20 = *(qword_1026372F8 + 64);
      }

      sub_100431950(v19, v20);
      v4 = *(a2 + 488);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 488) |= 0x100u;
      v21 = *(a1 + 72);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 72);
      if (!v22)
      {
        v22 = *(qword_1026372F8 + 72);
      }

      sub_100431D68(v21, v22);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 488) |= 0x200u;
      v23 = *(a1 + 80);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 80);
      if (!v24)
      {
        v24 = *(qword_1026372F8 + 80);
      }

      sub_100433614(v23, v24);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 488) |= 0x400u;
      v25 = *(a1 + 88);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 88);
      if (!v26)
      {
        v26 = *(qword_1026372F8 + 88);
      }

      sub_100439E7C(v25, v26);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 488) |= 0x800u;
      v27 = *(a1 + 96);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 96);
      if (!v28)
      {
        v28 = *(qword_1026372F8 + 96);
      }

      sub_10043B24C(v27, v28);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x1000) != 0)
    {
      *(a1 + 488) |= 0x1000u;
      v29 = *(a1 + 104);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 104);
      if (!v30)
      {
        v30 = *(qword_1026372F8 + 104);
      }

      sub_100D18A4C(v29, v30);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x2000) != 0)
    {
      *(a1 + 488) |= 0x2000u;
      v31 = *(a1 + 112);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 112);
      if (!v32)
      {
        v32 = *(qword_1026372F8 + 112);
      }

      sub_10043C824(v31, v32);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x4000) != 0)
    {
      *(a1 + 488) |= 0x4000u;
      v33 = *(a1 + 120);
      if (!v33)
      {
        operator new();
      }

      v34 = *(a2 + 120);
      if (!v34)
      {
        v34 = *(qword_1026372F8 + 120);
      }

      sub_10043D038(v33, v34);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x8000) != 0)
    {
      *(a1 + 488) |= 0x8000u;
      v35 = *(a1 + 128);
      if (!v35)
      {
        operator new();
      }

      v36 = *(a2 + 128);
      if (!v36)
      {
        v36 = *(qword_1026372F8 + 128);
      }

      sub_100440E30(v35, v36);
      v4 = *(a2 + 488);
    }
  }

  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      *(a1 + 488) |= 0x10000u;
      v37 = *(a1 + 136);
      if (!v37)
      {
        operator new();
      }

      v38 = *(a2 + 136);
      if (!v38)
      {
        v38 = *(qword_1026372F8 + 136);
      }

      sub_1004433CC(v37, v38);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20000) != 0)
    {
      *(a1 + 488) |= 0x20000u;
      v39 = *(a1 + 144);
      if (!v39)
      {
        operator new();
      }

      v40 = *(a2 + 144);
      if (!v40)
      {
        v40 = *(qword_1026372F8 + 144);
      }

      sub_100428520(v39, v40);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40000) != 0)
    {
      *(a1 + 488) |= 0x40000u;
      v41 = *(a1 + 152);
      if (!v41)
      {
        operator new();
      }

      v42 = *(a2 + 152);
      if (!v42)
      {
        v42 = *(qword_1026372F8 + 152);
      }

      sub_100445B40(v41, v42);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80000) != 0)
    {
      *(a1 + 488) |= 0x80000u;
      v43 = *(a1 + 160);
      if (!v43)
      {
        operator new();
      }

      v44 = *(a2 + 160);
      if (!v44)
      {
        v44 = *(qword_1026372F8 + 160);
      }

      sub_100447D60(v43, v44);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x100000) != 0)
    {
      *(a1 + 488) |= 0x100000u;
      v45 = *(a1 + 168);
      if (!v45)
      {
        operator new();
      }

      v46 = *(a2 + 168);
      if (!v46)
      {
        v46 = *(qword_1026372F8 + 168);
      }

      sub_100434ACC(v45, v46);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x200000) != 0)
    {
      *(a1 + 488) |= 0x200000u;
      v47 = *(a1 + 176);
      if (!v47)
      {
        operator new();
      }

      v48 = *(a2 + 176);
      if (!v48)
      {
        v48 = *(qword_1026372F8 + 176);
      }

      sub_1004498A8(v47, v48);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x400000) != 0)
    {
      *(a1 + 488) |= 0x400000u;
      v49 = *(a1 + 184);
      if (!v49)
      {
        operator new();
      }

      v50 = *(a2 + 184);
      if (!v50)
      {
        v50 = *(qword_1026372F8 + 184);
      }

      sub_1004363D8(v49, v50);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x800000) != 0)
    {
      *(a1 + 488) |= 0x800000u;
      v51 = *(a1 + 192);
      if (!v51)
      {
        operator new();
      }

      v52 = *(a2 + 192);
      if (!v52)
      {
        v52 = *(qword_1026372F8 + 192);
      }

      sub_100437D70(v51, v52);
      v4 = *(a2 + 488);
    }
  }

  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 488) |= 0x1000000u;
      v53 = *(a1 + 200);
      if (!v53)
      {
        operator new();
      }

      v54 = *(a2 + 200);
      if (!v54)
      {
        v54 = *(qword_1026372F8 + 200);
      }

      sub_100437450(v53, v54);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 488) |= 0x2000000u;
      v55 = *(a1 + 208);
      if (!v55)
      {
        operator new();
      }

      v56 = *(a2 + 208);
      if (!v56)
      {
        v56 = *(qword_1026372F8 + 208);
      }

      sub_100443DF0(v55, v56);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 488) |= 0x4000000u;
      v57 = *(a1 + 216);
      if (!v57)
      {
        operator new();
      }

      v58 = *(a2 + 216);
      if (!v58)
      {
        v58 = *(qword_1026372F8 + 216);
      }

      sub_100446AE8(v57, v58);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 488) |= 0x8000000u;
      v59 = *(a1 + 224);
      if (!v59)
      {
        operator new();
      }

      v60 = *(a2 + 224);
      if (!v60)
      {
        v60 = *(qword_1026372F8 + 224);
      }

      sub_10044A624(v59, v60);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 488) |= 0x10000000u;
      v61 = *(a1 + 232);
      if (!v61)
      {
        operator new();
      }

      v62 = *(a2 + 232);
      if (!v62)
      {
        v62 = *(qword_1026372F8 + 232);
      }

      sub_10044C328(v61, v62);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 488) |= 0x20000000u;
      v63 = *(a1 + 240);
      if (!v63)
      {
        operator new();
      }

      v64 = *(a2 + 240);
      if (!v64)
      {
        v64 = *(qword_1026372F8 + 240);
      }

      sub_10044F570(v63, v64);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 488) |= 0x40000000u;
      v65 = *(a1 + 248);
      if (!v65)
      {
        operator new();
      }

      v66 = *(a2 + 248);
      if (!v66)
      {
        v66 = *(qword_1026372F8 + 248);
      }

      sub_100450EBC(v65, v66);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80000000) != 0)
    {
      *(a1 + 488) |= 0x80000000;
      v67 = *(a1 + 256);
      if (!v67)
      {
        operator new();
      }

      v68 = *(a2 + 256);
      if (!v68)
      {
        v68 = *(qword_1026372F8 + 256);
      }

      sub_10042F50C(v67, v68);
    }
  }

  v69 = *(a2 + 492);
  if (v69)
  {
    if (v69)
    {
      *(a1 + 492) |= 1u;
      v70 = *(a1 + 264);
      if (!v70)
      {
        operator new();
      }

      v71 = *(a2 + 264);
      if (!v71)
      {
        v71 = *(qword_1026372F8 + 264);
      }

      sub_100452438(v70, v71);
      v69 = *(a2 + 492);
    }

    if ((v69 & 2) != 0)
    {
      *(a1 + 492) |= 2u;
      v72 = *(a1 + 272);
      if (!v72)
      {
        operator new();
      }

      v73 = *(a2 + 272);
      if (!v73)
      {
        v73 = *(qword_1026372F8 + 272);
      }

      sub_1012A8884(v72, v73);
      v69 = *(a2 + 492);
    }

    if ((v69 & 4) != 0)
    {
      *(a1 + 492) |= 4u;
      v74 = *(a1 + 280);
      if (!v74)
      {
        operator new();
      }

      v75 = *(a2 + 280);
      if (!v75)
      {
        v75 = *(qword_1026372F8 + 280);
      }

      sub_10045377C(v74, v75);
      v69 = *(a2 + 492);
    }

    if ((v69 & 8) != 0)
    {
      *(a1 + 492) |= 8u;
      v76 = *(a1 + 288);
      if (!v76)
      {
        operator new();
      }

      v77 = *(a2 + 288);
      if (!v77)
      {
        v77 = *(qword_1026372F8 + 288);
      }

      sub_100E88DC8(v76, v77);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x10) != 0)
    {
      *(a1 + 492) |= 0x10u;
      v78 = *(a1 + 296);
      if (!v78)
      {
        operator new();
      }

      v79 = *(a2 + 296);
      if (!v79)
      {
        v79 = *(qword_1026372F8 + 296);
      }

      sub_100999298(v78, v79);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x20) != 0)
    {
      *(a1 + 492) |= 0x20u;
      v80 = *(a1 + 304);
      if (!v80)
      {
        operator new();
      }

      v81 = *(a2 + 304);
      if (!v81)
      {
        v81 = *(qword_1026372F8 + 304);
      }

      sub_100B7D5DC(v80, v81);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x40) != 0)
    {
      *(a1 + 492) |= 0x40u;
      v82 = *(a1 + 312);
      if (!v82)
      {
        operator new();
      }

      v83 = *(a2 + 312);
      if (!v83)
      {
        v83 = *(qword_1026372F8 + 312);
      }

      sub_1015F4A80(v82, v83);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x80) != 0)
    {
      *(a1 + 492) |= 0x80u;
      v84 = *(a1 + 320);
      if (!v84)
      {
        operator new();
      }

      v85 = *(a2 + 320);
      if (!v85)
      {
        v85 = *(qword_1026372F8 + 320);
      }

      sub_100A5734C(v84, v85);
      v69 = *(a2 + 492);
    }
  }

  if ((v69 & 0xFF00) != 0)
  {
    if ((v69 & 0x100) != 0)
    {
      *(a1 + 492) |= 0x100u;
      v86 = *(a1 + 328);
      if (!v86)
      {
        operator new();
      }

      v87 = *(a2 + 328);
      if (!v87)
      {
        v87 = *(qword_1026372F8 + 328);
      }

      sub_101109E9C(v86, v87);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x200) != 0)
    {
      *(a1 + 492) |= 0x200u;
      v88 = *(a1 + 336);
      if (!v88)
      {
        operator new();
      }

      v89 = *(a2 + 336);
      if (!v89)
      {
        v89 = *(qword_1026372F8 + 336);
      }

      sub_10063C314(v88, v89);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x400) != 0)
    {
      *(a1 + 492) |= 0x400u;
      v90 = *(a1 + 344);
      if (!v90)
      {
        operator new();
      }

      v91 = *(a2 + 344);
      if (!v91)
      {
        v91 = *(qword_1026372F8 + 344);
      }

      sub_10123488C(v90, v91);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x800) != 0)
    {
      *(a1 + 492) |= 0x800u;
      v92 = *(a1 + 352);
      if (!v92)
      {
        operator new();
      }

      v93 = *(a2 + 352);
      if (!v93)
      {
        v93 = *(qword_1026372F8 + 352);
      }

      sub_100DFF9EC(v92, v93);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x1000) != 0)
    {
      *(a1 + 492) |= 0x1000u;
      v94 = *(a1 + 360);
      if (!v94)
      {
        operator new();
      }

      v95 = *(a2 + 360);
      if (!v95)
      {
        v95 = *(qword_1026372F8 + 360);
      }

      sub_100948958(v94, v95);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x2000) != 0)
    {
      *(a1 + 492) |= 0x2000u;
      v96 = *(a1 + 368);
      if (!v96)
      {
        operator new();
      }

      v97 = *(a2 + 368);
      if (!v97)
      {
        v97 = *(qword_1026372F8 + 368);
      }

      sub_100949034(v96, v97);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x4000) != 0)
    {
      *(a1 + 492) |= 0x4000u;
      v98 = *(a1 + 376);
      if (!v98)
      {
        operator new();
      }

      v99 = *(a2 + 376);
      if (!v99)
      {
        v99 = *(qword_1026372F8 + 376);
      }

      sub_100949960(v98, v99);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x8000) != 0)
    {
      v100 = *(a2 + 480);
      if (!sub_10041ECEC(v100))
      {
        sub_10195532C();
      }

      *(a1 + 492) |= 0x8000u;
      *(a1 + 480) = v100;
      v69 = *(a2 + 492);
    }
  }

  if ((v69 & 0xFF0000) != 0)
  {
    if ((v69 & 0x10000) != 0)
    {
      *(a1 + 492) |= 0x10000u;
      v101 = *(a1 + 384);
      if (!v101)
      {
        operator new();
      }

      v102 = *(a2 + 384);
      if (!v102)
      {
        v102 = *(qword_1026372F8 + 384);
      }

      sub_10094A19C(v101, v102);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x20000) != 0)
    {
      *(a1 + 492) |= 0x20000u;
      v103 = *(a1 + 392);
      if (!v103)
      {
        operator new();
      }

      v104 = *(a2 + 392);
      if (!v104)
      {
        v104 = *(qword_1026372F8 + 392);
      }

      sub_10094A8BC(v103, v104);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x40000) != 0)
    {
      *(a1 + 492) |= 0x40000u;
      v105 = *(a1 + 400);
      if (!v105)
      {
        operator new();
      }

      v106 = *(a2 + 400);
      if (!v106)
      {
        v106 = *(qword_1026372F8 + 400);
      }

      sub_10094B6E0(v105, v106);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x80000) != 0)
    {
      *(a1 + 492) |= 0x80000u;
      v107 = *(a1 + 408);
      if (!v107)
      {
        operator new();
      }

      v108 = *(a2 + 408);
      if (!v108)
      {
        v108 = *(qword_1026372F8 + 408);
      }

      sub_10094BFBC(v107, v108);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x100000) != 0)
    {
      *(a1 + 492) |= 0x100000u;
      v109 = *(a1 + 416);
      if (!v109)
      {
        operator new();
      }

      v110 = *(a2 + 416);
      if (!v110)
      {
        v110 = *(qword_1026372F8 + 416);
      }

      sub_10094C86C(v109, v110);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x200000) != 0)
    {
      *(a1 + 492) |= 0x200000u;
      v111 = *(a1 + 424);
      if (!v111)
      {
        operator new();
      }

      v112 = *(a2 + 424);
      if (!v112)
      {
        v112 = *(qword_1026372F8 + 424);
      }

      sub_10094D4BC(v111, v112);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x400000) != 0)
    {
      *(a1 + 492) |= 0x400000u;
      v113 = *(a1 + 432);
      if (!v113)
      {
        operator new();
      }

      v114 = *(a2 + 432);
      if (!v114)
      {
        v114 = *(qword_1026372F8 + 432);
      }

      sub_10094DC84(v113, v114);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x800000) != 0)
    {
      *(a1 + 492) |= 0x800000u;
      v115 = *(a1 + 440);
      if (!v115)
      {
        operator new();
      }

      v116 = *(a2 + 440);
      if (!v116)
      {
        v116 = *(qword_1026372F8 + 440);
      }

      sub_10094E4FC(v115, v116);
      v69 = *(a2 + 492);
    }
  }

  if (HIBYTE(v69))
  {
    if ((v69 & 0x1000000) != 0)
    {
      *(a1 + 492) |= 0x1000000u;
      v117 = *(a1 + 448);
      if (!v117)
      {
        operator new();
      }

      v118 = *(a2 + 448);
      if (!v118)
      {
        v118 = *(qword_1026372F8 + 448);
      }

      sub_10094EAEC(v117, v118);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x2000000) != 0)
    {
      *(a1 + 492) |= 0x2000000u;
      v119 = *(a1 + 456);
      if (!v119)
      {
        operator new();
      }

      v120 = *(a2 + 456);
      if (!v120)
      {
        v120 = *(qword_1026372F8 + 456);
      }

      sub_10094F1A0(v119, v120);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x4000000) != 0)
    {
      *(a1 + 492) |= 0x4000000u;
      v121 = *(a1 + 464);
      if (!v121)
      {
        operator new();
      }

      v122 = *(a2 + 464);
      if (!v122)
      {
        v122 = *(qword_1026372F8 + 464);
      }

      sub_10094F928(v121, v122);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x8000000) != 0)
    {
      *(a1 + 492) |= 0x8000000u;
      v123 = *(a1 + 472);
      if (!v123)
      {
        operator new();
      }

      v124 = *(a2 + 472);
      if (!v124)
      {
        v124 = *(qword_1026372F8 + 472);
      }

      sub_10094FF40(v123, v124);
    }
  }
}

void sub_100848660(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  JUMPOUT(0x100848658);
}

void sub_100848674(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102476928;
  sub_1000150A4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_1008486C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1026372F8;
  if (!qword_1026372F8)
  {
    sub_100846B20(0, a2, a3, a4);
    return qword_1026372F8;
  }

  return result;
}

uint64_t sub_1008487A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 488);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_10041F838(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_1004203A0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_100420E7C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100428BF0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_10042C3D0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_10042D64C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_1004312FC(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_100431AD0(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 72);
      if (result)
      {
        result = sub_100432080(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_1004339A4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 88);
      if (result)
      {
        result = sub_10043A3F0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      result = *(v1 + 96);
      if (result)
      {
        result = sub_10043B514(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      result = *(v1 + 104);
      if (result)
      {
        result = sub_100D18DDC(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x2000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_10043CA88(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x4000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_10043D27C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 128);
      if (result)
      {
        result = sub_1004411DC(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_1004437A4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_100428BF0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_100446010(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 160);
      if (result)
      {
        result = sub_100447FB0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_100434E50(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_100449CA8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_10043676C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 192);
      if (result)
      {
        result = sub_100438224(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 200);
      if (result)
      {
        result = sub_1004376C8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x2000000) != 0)
    {
      result = *(v1 + 208);
      if (result)
      {
        result = sub_100444054(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x4000000) != 0)
    {
      result = *(v1 + 216);
      if (result)
      {
        result = sub_100446D4C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x8000000) != 0)
    {
      result = *(v1 + 224);
      if (result)
      {
        result = sub_10044A81C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x10000000) != 0)
    {
      result = *(v1 + 232);
      if (result)
      {
        result = sub_10044C6D0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20000000) != 0)
    {
      result = *(v1 + 240);
      if (result)
      {
        result = sub_10044F7F8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40000000) != 0)
    {
      result = *(v1 + 248);
      if (result)
      {
        result = sub_1004512E4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80000000) != 0)
    {
      result = *(v1 + 256);
      if (result)
      {
        result = sub_10042F890(result);
      }
    }
  }

  v3 = *(v1 + 492);
  if (v3)
  {
    if (v3)
    {
      result = *(v1 + 264);
      if (result)
      {
        result = sub_100452A68(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 2) != 0)
    {
      result = *(v1 + 272);
      if (result)
      {
        result = sub_1012A8BF0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 4) != 0)
    {
      result = *(v1 + 280);
      if (result)
      {
        result = sub_1004539D0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 8) != 0)
    {
      result = *(v1 + 288);
      if (result)
      {
        result = sub_100E8934C(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x10) != 0)
    {
      result = *(v1 + 296);
      if (result)
      {
        result = sub_100999600(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x20) != 0)
    {
      result = *(v1 + 304);
      if (result)
      {
        result = sub_100B7D9E8(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x40) != 0)
    {
      result = *(v1 + 312);
      if (result)
      {
        result = sub_1015F4CD4(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      result = *(v1 + 320);
      if (result)
      {
        result = sub_100A57590(result);
        v3 = *(v1 + 492);
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      result = *(v1 + 328);
      if (result)
      {
        result = sub_10110A484(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = *(v1 + 336);
      if (result)
      {
        result = sub_10063C560(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x400) != 0)
    {
      result = *(v1 + 344);
      if (result)
      {
        result = sub_101234CC0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x800) != 0)
    {
      result = *(v1 + 352);
      if (result)
      {
        result = sub_100E00574(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      result = *(v1 + 360);
      if (result)
      {
        result = sub_100948BD8(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      result = *(v1 + 368);
      if (result)
      {
        result = sub_100949310(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      result = *(v1 + 376);
      if (result)
      {
        result = sub_100949BAC(result);
        v3 = *(v1 + 492);
      }
    }

    *(v1 + 480) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      result = *(v1 + 384);
      if (result)
      {
        result = sub_10094A428(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        result = sub_10094AB48(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      result = *(v1 + 400);
      if (result)
      {
        result = sub_10094BA50(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      result = *(v1 + 408);
      if (result)
      {
        result = sub_10094C280(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      result = *(v1 + 416);
      if (result)
      {
        result = sub_10094CB0C(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      result = *(v1 + 424);
      if (result)
      {
        result = sub_10094D750(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      result = *(v1 + 432);
      if (result)
      {
        result = sub_10094DE50(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      result = *(v1 + 440);
      if (result)
      {
        result = sub_10094E740(result);
        v3 = *(v1 + 492);
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      result = *(v1 + 448);
      if (result)
      {
        result = sub_10094ED64(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = *(v1 + 456);
      if (result)
      {
        result = sub_10094F438(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = *(v1 + 464);
      if (result)
      {
        result = sub_10094FB90(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = *(v1 + 472);
      if (result)
      {
        result = sub_1009501F0(result);
      }
    }
  }

  *(v1 + 488) = 0;
  return result;
}

uint64_t sub_100848CAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 0x3ED)
        {
          switch(v7)
          {
            case 1u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              *(a1 + 488) |= 1u;
              v9 = *(a1 + 8);
              if (!v9)
              {
                operator new();
              }

              v545 = 0;
              v10 = *(this + 1);
              if (v10 >= *(this + 2) || *v10 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v10;
                *(this + 1) = v10 + 1;
              }

              v223 = *(this + 14);
              v224 = *(this + 15);
              *(this + 14) = v223 + 1;
              if (v223 >= v224)
              {
                return 0;
              }

              v225 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10041F888(v9, this, v226) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v225);
              v227 = *(this + 14);
              v20 = __OFSUB__(v227, 1);
              v228 = v227 - 1;
              if (v228 < 0 == v20)
              {
                *(this + 14) = v228;
              }

              v229 = *(this + 1);
              if (v229 >= *(this + 2) || *v229 != 18)
              {
                continue;
              }

              *(this + 1) = v229 + 1;
              goto LABEL_511;
            case 2u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

LABEL_511:
              *(a1 + 488) |= 2u;
              v230 = *(a1 + 16);
              if (!v230)
              {
                operator new();
              }

              v545 = 0;
              v231 = *(this + 1);
              if (v231 >= *(this + 2) || *v231 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v231;
                *(this + 1) = v231 + 1;
              }

              v232 = *(this + 14);
              v233 = *(this + 15);
              *(this + 14) = v232 + 1;
              if (v232 >= v233)
              {
                return 0;
              }

              v234 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004203F0(v230, this, v235) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v234);
              v236 = *(this + 14);
              v20 = __OFSUB__(v236, 1);
              v237 = v236 - 1;
              if (v237 < 0 == v20)
              {
                *(this + 14) = v237;
              }

              v238 = *(this + 1);
              if (v238 >= *(this + 2) || *v238 != 26)
              {
                continue;
              }

              *(this + 1) = v238 + 1;
LABEL_525:
              *(a1 + 488) |= 4u;
              v239 = *(a1 + 24);
              if (!v239)
              {
                operator new();
              }

              v545 = 0;
              v240 = *(this + 1);
              if (v240 >= *(this + 2) || *v240 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v240;
                *(this + 1) = v240 + 1;
              }

              v241 = *(this + 14);
              v242 = *(this + 15);
              *(this + 14) = v241 + 1;
              if (v241 >= v242)
              {
                return 0;
              }

              v243 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100420ECC(v239, this, v244) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v243);
              v245 = *(this + 14);
              v20 = __OFSUB__(v245, 1);
              v246 = v245 - 1;
              if (v246 < 0 == v20)
              {
                *(this + 14) = v246;
              }

              v247 = *(this + 1);
              if (v247 >= *(this + 2) || *v247 != 34)
              {
                continue;
              }

              *(this + 1) = v247 + 1;
LABEL_539:
              *(a1 + 488) |= 8u;
              v248 = *(a1 + 32);
              if (!v248)
              {
                operator new();
              }

              v545 = 0;
              v249 = *(this + 1);
              if (v249 >= *(this + 2) || *v249 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v249;
                *(this + 1) = v249 + 1;
              }

              v250 = *(this + 14);
              v251 = *(this + 15);
              *(this + 14) = v250 + 1;
              if (v250 >= v251)
              {
                return 0;
              }

              v252 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100428D2C(v248, this, v253) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v252);
              v254 = *(this + 14);
              v20 = __OFSUB__(v254, 1);
              v255 = v254 - 1;
              if (v255 < 0 == v20)
              {
                *(this + 14) = v255;
              }

              v256 = *(this + 1);
              if (v256 >= *(this + 2) || *v256 != 42)
              {
                continue;
              }

              *(this + 1) = v256 + 1;
LABEL_553:
              *(a1 + 488) |= 0x10u;
              v257 = *(a1 + 40);
              if (!v257)
              {
                operator new();
              }

              v545 = 0;
              v258 = *(this + 1);
              if (v258 >= *(this + 2) || *v258 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v258;
                *(this + 1) = v258 + 1;
              }

              v259 = *(this + 14);
              v260 = *(this + 15);
              *(this + 14) = v259 + 1;
              if (v259 >= v260)
              {
                return 0;
              }

              v261 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042C434(v257, this, v262) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v261);
              v263 = *(this + 14);
              v20 = __OFSUB__(v263, 1);
              v264 = v263 - 1;
              if (v264 < 0 == v20)
              {
                *(this + 14) = v264;
              }

              v265 = *(this + 1);
              if (v265 >= *(this + 2) || *v265 != 50)
              {
                continue;
              }

              *(this + 1) = v265 + 1;
LABEL_567:
              *(a1 + 488) |= 0x20u;
              v266 = *(a1 + 48);
              if (!v266)
              {
                operator new();
              }

              v545 = 0;
              v267 = *(this + 1);
              if (v267 >= *(this + 2) || *v267 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v267;
                *(this + 1) = v267 + 1;
              }

              v268 = *(this + 14);
              v269 = *(this + 15);
              *(this + 14) = v268 + 1;
              if (v268 >= v269)
              {
                return 0;
              }

              v270 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042D6B0(v266, this, v271) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v270);
              v272 = *(this + 14);
              v20 = __OFSUB__(v272, 1);
              v273 = v272 - 1;
              if (v273 < 0 == v20)
              {
                *(this + 14) = v273;
              }

              v274 = *(this + 1);
              if (v274 >= *(this + 2) || *v274 != 58)
              {
                continue;
              }

              *(this + 1) = v274 + 1;
LABEL_581:
              *(a1 + 488) |= 0x40u;
              v275 = *(a1 + 56);
              if (!v275)
              {
                operator new();
              }

              v545 = 0;
              v276 = *(this + 1);
              if (v276 >= *(this + 2) || *v276 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v276;
                *(this + 1) = v276 + 1;
              }

              v277 = *(this + 14);
              v278 = *(this + 15);
              *(this + 14) = v277 + 1;
              if (v277 >= v278)
              {
                return 0;
              }

              v279 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043136C(v275, this, v280) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v279);
              v281 = *(this + 14);
              v20 = __OFSUB__(v281, 1);
              v282 = v281 - 1;
              if (v282 < 0 == v20)
              {
                *(this + 14) = v282;
              }

              v283 = *(this + 1);
              if (v283 >= *(this + 2) || *v283 != 66)
              {
                continue;
              }

              *(this + 1) = v283 + 1;
LABEL_595:
              *(a1 + 488) |= 0x80u;
              v284 = *(a1 + 64);
              if (!v284)
              {
                operator new();
              }

              v545 = 0;
              v285 = *(this + 1);
              if (v285 >= *(this + 2) || *v285 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v285;
                *(this + 1) = v285 + 1;
              }

              v286 = *(this + 14);
              v287 = *(this + 15);
              *(this + 14) = v286 + 1;
              if (v286 >= v287)
              {
                return 0;
              }

              v288 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100431AFC(v284, this, v289) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v288);
              v290 = *(this + 14);
              v20 = __OFSUB__(v290, 1);
              v291 = v290 - 1;
              if (v291 < 0 == v20)
              {
                *(this + 14) = v291;
              }

              v292 = *(this + 1);
              if (v292 >= *(this + 2) || *v292 != 74)
              {
                continue;
              }

              *(this + 1) = v292 + 1;
LABEL_609:
              *(a1 + 488) |= 0x100u;
              v293 = *(a1 + 72);
              if (!v293)
              {
                operator new();
              }

              v545 = 0;
              v294 = *(this + 1);
              if (v294 >= *(this + 2) || *v294 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v294;
                *(this + 1) = v294 + 1;
              }

              v295 = *(this + 14);
              v296 = *(this + 15);
              *(this + 14) = v295 + 1;
              if (v295 >= v296)
              {
                return 0;
              }

              v297 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004320B8(v293, this, v298) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v297);
              v299 = *(this + 14);
              v20 = __OFSUB__(v299, 1);
              v300 = v299 - 1;
              if (v300 < 0 == v20)
              {
                *(this + 14) = v300;
              }

              v301 = *(this + 1);
              if (v301 >= *(this + 2) || *v301 != 82)
              {
                continue;
              }

              *(this + 1) = v301 + 1;
LABEL_623:
              *(a1 + 488) |= 0x200u;
              v302 = *(a1 + 80);
              if (!v302)
              {
                operator new();
              }

              v545 = 0;
              v303 = *(this + 1);
              if (v303 >= *(this + 2) || *v303 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v303;
                *(this + 1) = v303 + 1;
              }

              v304 = *(this + 14);
              v305 = *(this + 15);
              *(this + 14) = v304 + 1;
              if (v304 >= v305)
              {
                return 0;
              }

              v306 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100433A08(v302, this, v307) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v306);
              v308 = *(this + 14);
              v20 = __OFSUB__(v308, 1);
              v309 = v308 - 1;
              if (v309 < 0 == v20)
              {
                *(this + 14) = v309;
              }

              v310 = *(this + 1);
              if (v310 >= *(this + 2) || *v310 != 90)
              {
                continue;
              }

              *(this + 1) = v310 + 1;
LABEL_637:
              *(a1 + 488) |= 0x400u;
              v311 = *(a1 + 88);
              if (!v311)
              {
                operator new();
              }

              v545 = 0;
              v312 = *(this + 1);
              if (v312 >= *(this + 2) || *v312 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v312;
                *(this + 1) = v312 + 1;
              }

              v313 = *(this + 14);
              v314 = *(this + 15);
              *(this + 14) = v313 + 1;
              if (v313 >= v314)
              {
                return 0;
              }

              v315 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043A49C(v311, this, v316) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v315);
              v317 = *(this + 14);
              v20 = __OFSUB__(v317, 1);
              v318 = v317 - 1;
              if (v318 < 0 == v20)
              {
                *(this + 14) = v318;
              }

              v319 = *(this + 1);
              if (v319 >= *(this + 2) || *v319 != 98)
              {
                continue;
              }

              *(this + 1) = v319 + 1;
LABEL_651:
              *(a1 + 488) |= 0x800u;
              v320 = *(a1 + 96);
              if (!v320)
              {
                operator new();
              }

              v545 = 0;
              v321 = *(this + 1);
              if (v321 >= *(this + 2) || *v321 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v321;
                *(this + 1) = v321 + 1;
              }

              v322 = *(this + 14);
              v323 = *(this + 15);
              *(this + 14) = v322 + 1;
              if (v322 >= v323)
              {
                return 0;
              }

              v324 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043B550(v320, this, v325) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v324);
              v326 = *(this + 14);
              v20 = __OFSUB__(v326, 1);
              v327 = v326 - 1;
              if (v327 < 0 == v20)
              {
                *(this + 14) = v327;
              }

              v328 = *(this + 1);
              if (v328 >= *(this + 2) || *v328 != 106)
              {
                continue;
              }

              *(this + 1) = v328 + 1;
LABEL_665:
              *(a1 + 488) |= 0x1000u;
              v329 = *(a1 + 104);
              if (!v329)
              {
                operator new();
              }

              v545 = 0;
              v330 = *(this + 1);
              if (v330 >= *(this + 2) || *v330 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v330;
                *(this + 1) = v330 + 1;
              }

              v331 = *(this + 14);
              v332 = *(this + 15);
              *(this + 14) = v331 + 1;
              if (v331 >= v332)
              {
                return 0;
              }

              v333 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10013B658(v329, this, v334) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v333);
              v335 = *(this + 14);
              v20 = __OFSUB__(v335, 1);
              v336 = v335 - 1;
              if (v336 < 0 == v20)
              {
                *(this + 14) = v336;
              }

              v337 = *(this + 1);
              if (v337 >= *(this + 2) || *v337 != 114)
              {
                continue;
              }

              *(this + 1) = v337 + 1;
LABEL_679:
              *(a1 + 488) |= 0x2000u;
              v338 = *(a1 + 112);
              if (!v338)
              {
                operator new();
              }

              v545 = 0;
              v339 = *(this + 1);
              if (v339 >= *(this + 2) || *v339 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v339;
                *(this + 1) = v339 + 1;
              }

              v340 = *(this + 14);
              v341 = *(this + 15);
              *(this + 14) = v340 + 1;
              if (v340 >= v341)
              {
                return 0;
              }

              v342 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043CAD8(v338, this, v343) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v342);
              v344 = *(this + 14);
              v20 = __OFSUB__(v344, 1);
              v345 = v344 - 1;
              if (v345 < 0 == v20)
              {
                *(this + 14) = v345;
              }

              v346 = *(this + 1);
              if (v346 >= *(this + 2) || *v346 != 122)
              {
                continue;
              }

              *(this + 1) = v346 + 1;
LABEL_693:
              *(a1 + 488) |= 0x4000u;
              v347 = *(a1 + 120);
              if (!v347)
              {
                operator new();
              }

              v545 = 0;
              v348 = *(this + 1);
              if (v348 >= *(this + 2) || *v348 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v348;
                *(this + 1) = v348 + 1;
              }

              v349 = *(this + 14);
              v350 = *(this + 15);
              *(this + 14) = v349 + 1;
              if (v349 >= v350)
              {
                return 0;
              }

              v351 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043D2A8(v347, this, v352) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v351);
              v353 = *(this + 14);
              v20 = __OFSUB__(v353, 1);
              v354 = v353 - 1;
              if (v354 < 0 == v20)
              {
                *(this + 14) = v354;
              }

              v355 = *(this + 1);
              if (*(this + 4) - v355 <= 1 || *v355 != 130 || v355[1] != 1)
              {
                continue;
              }

              *(this + 1) = v355 + 2;
LABEL_708:
              *(a1 + 488) |= 0x8000u;
              v356 = *(a1 + 128);
              if (!v356)
              {
                operator new();
              }

              v545 = 0;
              v357 = *(this + 1);
              if (v357 >= *(this + 2) || *v357 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v357;
                *(this + 1) = v357 + 1;
              }

              v358 = *(this + 14);
              v359 = *(this + 15);
              *(this + 14) = v358 + 1;
              if (v358 >= v359)
              {
                return 0;
              }

              v360 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100441240(v356, this, v361) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v360);
              v362 = *(this + 14);
              v20 = __OFSUB__(v362, 1);
              v363 = v362 - 1;
              if (v363 < 0 == v20)
              {
                *(this + 14) = v363;
              }

              v364 = *(this + 1);
              if (*(this + 4) - v364 <= 1 || *v364 != 138 || v364[1] != 1)
              {
                continue;
              }

              *(this + 1) = v364 + 2;
LABEL_723:
              *(a1 + 488) |= 0x10000u;
              v365 = *(a1 + 136);
              if (!v365)
              {
                operator new();
              }

              v545 = 0;
              v366 = *(this + 1);
              if (v366 >= *(this + 2) || *v366 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v366;
                *(this + 1) = v366 + 1;
              }

              v367 = *(this + 14);
              v368 = *(this + 15);
              *(this + 14) = v367 + 1;
              if (v367 >= v368)
              {
                return 0;
              }

              v369 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044380C(v365, this, v370) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v369);
              v371 = *(this + 14);
              v20 = __OFSUB__(v371, 1);
              v372 = v371 - 1;
              if (v372 < 0 == v20)
              {
                *(this + 14) = v372;
              }

              v373 = *(this + 1);
              if (*(this + 4) - v373 <= 1 || *v373 != 146 || v373[1] != 1)
              {
                continue;
              }

              *(this + 1) = v373 + 2;
LABEL_738:
              *(a1 + 488) |= 0x20000u;
              v374 = *(a1 + 144);
              if (!v374)
              {
                operator new();
              }

              v545 = 0;
              v375 = *(this + 1);
              if (v375 >= *(this + 2) || *v375 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v375;
                *(this + 1) = v375 + 1;
              }

              v376 = *(this + 14);
              v377 = *(this + 15);
              *(this + 14) = v376 + 1;
              if (v376 >= v377)
              {
                return 0;
              }

              v378 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100428D2C(v374, this, v379) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v378);
              v380 = *(this + 14);
              v20 = __OFSUB__(v380, 1);
              v381 = v380 - 1;
              if (v381 < 0 == v20)
              {
                *(this + 14) = v381;
              }

              v382 = *(this + 1);
              if (*(this + 4) - v382 <= 1 || *v382 != 154 || v382[1] != 1)
              {
                continue;
              }

              *(this + 1) = v382 + 2;
LABEL_753:
              *(a1 + 488) |= 0x40000u;
              v383 = *(a1 + 152);
              if (!v383)
              {
                operator new();
              }

              v545 = 0;
              v384 = *(this + 1);
              if (v384 >= *(this + 2) || *v384 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v384;
                *(this + 1) = v384 + 1;
              }

              v385 = *(this + 14);
              v386 = *(this + 15);
              *(this + 14) = v385 + 1;
              if (v385 >= v386)
              {
                return 0;
              }

              v387 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004460A0(v383, this, v388) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v387);
              v389 = *(this + 14);
              v20 = __OFSUB__(v389, 1);
              v390 = v389 - 1;
              if (v390 < 0 == v20)
              {
                *(this + 14) = v390;
              }

              v391 = *(this + 1);
              if (*(this + 4) - v391 <= 1 || *v391 != 162 || v391[1] != 1)
              {
                continue;
              }

              *(this + 1) = v391 + 2;
LABEL_768:
              *(a1 + 488) |= 0x80000u;
              v392 = *(a1 + 160);
              if (!v392)
              {
                operator new();
              }

              v545 = 0;
              v393 = *(this + 1);
              if (v393 >= *(this + 2) || *v393 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v393;
                *(this + 1) = v393 + 1;
              }

              v394 = *(this + 14);
              v395 = *(this + 15);
              *(this + 14) = v394 + 1;
              if (v394 >= v395)
              {
                return 0;
              }

              v396 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100447FE8(v392, this, v397) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v396);
              v398 = *(this + 14);
              v20 = __OFSUB__(v398, 1);
              v399 = v398 - 1;
              if (v399 < 0 == v20)
              {
                *(this + 14) = v399;
              }

              v400 = *(this + 1);
              if (*(this + 4) - v400 <= 1 || *v400 != 170 || v400[1] != 1)
              {
                continue;
              }

              *(this + 1) = v400 + 2;
LABEL_783:
              *(a1 + 488) |= 0x100000u;
              v401 = *(a1 + 168);
              if (!v401)
              {
                operator new();
              }

              v545 = 0;
              v402 = *(this + 1);
              if (v402 >= *(this + 2) || *v402 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v402;
                *(this + 1) = v402 + 1;
              }

              v403 = *(this + 14);
              v404 = *(this + 15);
              *(this + 14) = v403 + 1;
              if (v403 >= v404)
              {
                return 0;
              }

              v405 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100434EB4(v401, this, v406) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v405);
              v407 = *(this + 14);
              v20 = __OFSUB__(v407, 1);
              v408 = v407 - 1;
              if (v408 < 0 == v20)
              {
                *(this + 14) = v408;
              }

              v409 = *(this + 1);
              if (*(this + 4) - v409 <= 1 || *v409 != 178 || v409[1] != 1)
              {
                continue;
              }

              *(this + 1) = v409 + 2;
LABEL_798:
              *(a1 + 488) |= 0x200000u;
              v410 = *(a1 + 176);
              if (!v410)
              {
                operator new();
              }

              v545 = 0;
              v411 = *(this + 1);
              if (v411 >= *(this + 2) || *v411 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v411;
                *(this + 1) = v411 + 1;
              }

              v412 = *(this + 14);
              v413 = *(this + 15);
              *(this + 14) = v412 + 1;
              if (v412 >= v413)
              {
                return 0;
              }

              v414 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100449D44(v410, this, v415) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v414);
              v416 = *(this + 14);
              v20 = __OFSUB__(v416, 1);
              v417 = v416 - 1;
              if (v417 < 0 == v20)
              {
                *(this + 14) = v417;
              }

              v418 = *(this + 1);
              if (*(this + 4) - v418 <= 1 || *v418 != 186 || v418[1] != 1)
              {
                continue;
              }

              *(this + 1) = v418 + 2;
LABEL_813:
              *(a1 + 488) |= 0x400000u;
              v419 = *(a1 + 184);
              if (!v419)
              {
                operator new();
              }

              v545 = 0;
              v420 = *(this + 1);
              if (v420 >= *(this + 2) || *v420 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v420;
                *(this + 1) = v420 + 1;
              }

              v421 = *(this + 14);
              v422 = *(this + 15);
              *(this + 14) = v421 + 1;
              if (v421 >= v422)
              {
                return 0;
              }

              v423 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004367D0(v419, this, v424) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v423);
              v425 = *(this + 14);
              v20 = __OFSUB__(v425, 1);
              v426 = v425 - 1;
              if (v426 < 0 == v20)
              {
                *(this + 14) = v426;
              }

              v427 = *(this + 1);
              if (*(this + 4) - v427 <= 1 || *v427 != 194 || v427[1] != 1)
              {
                continue;
              }

              *(this + 1) = v427 + 2;
LABEL_828:
              *(a1 + 488) |= 0x800000u;
              v428 = *(a1 + 192);
              if (!v428)
              {
                operator new();
              }

              v545 = 0;
              v429 = *(this + 1);
              if (v429 >= *(this + 2) || *v429 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v429;
                *(this + 1) = v429 + 1;
              }

              v430 = *(this + 14);
              v431 = *(this + 15);
              *(this + 14) = v430 + 1;
              if (v430 >= v431)
              {
                return 0;
              }

              v432 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004382A0(v428, this, v433) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v432);
              v434 = *(this + 14);
              v20 = __OFSUB__(v434, 1);
              v435 = v434 - 1;
              if (v435 < 0 == v20)
              {
                *(this + 14) = v435;
              }

              v436 = *(this + 1);
              if (*(this + 4) - v436 <= 1 || *v436 != 202 || v436[1] != 1)
              {
                continue;
              }

              *(this + 1) = v436 + 2;
LABEL_843:
              *(a1 + 488) |= 0x1000000u;
              v437 = *(a1 + 200);
              if (!v437)
              {
                operator new();
              }

              v545 = 0;
              v438 = *(this + 1);
              if (v438 >= *(this + 2) || *v438 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v438;
                *(this + 1) = v438 + 1;
              }

              v439 = *(this + 14);
              v440 = *(this + 15);
              *(this + 14) = v439 + 1;
              if (v439 >= v440)
              {
                return 0;
              }

              v441 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100437744(v437, this, v442) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v441);
              v443 = *(this + 14);
              v20 = __OFSUB__(v443, 1);
              v444 = v443 - 1;
              if (v444 < 0 == v20)
              {
                *(this + 14) = v444;
              }

              v445 = *(this + 1);
              if (*(this + 4) - v445 <= 1 || *v445 != 210 || v445[1] != 1)
              {
                continue;
              }

              *(this + 1) = v445 + 2;
LABEL_858:
              *(a1 + 488) |= 0x2000000u;
              v446 = *(a1 + 208);
              if (!v446)
              {
                operator new();
              }

              v545 = 0;
              v447 = *(this + 1);
              if (v447 >= *(this + 2) || *v447 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v447;
                *(this + 1) = v447 + 1;
              }

              v448 = *(this + 14);
              v449 = *(this + 15);
              *(this + 14) = v448 + 1;
              if (v448 >= v449)
              {
                return 0;
              }

              v450 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004440A4(v446, this, v451) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v450);
              v452 = *(this + 14);
              v20 = __OFSUB__(v452, 1);
              v453 = v452 - 1;
              if (v453 < 0 == v20)
              {
                *(this + 14) = v453;
              }

              v454 = *(this + 1);
              if (*(this + 4) - v454 <= 1 || *v454 != 218 || v454[1] != 1)
              {
                continue;
              }

              *(this + 1) = v454 + 2;
LABEL_873:
              *(a1 + 488) |= 0x4000000u;
              v455 = *(a1 + 216);
              if (!v455)
              {
                operator new();
              }

              v545 = 0;
              v456 = *(this + 1);
              if (v456 >= *(this + 2) || *v456 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v456;
                *(this + 1) = v456 + 1;
              }

              v457 = *(this + 14);
              v458 = *(this + 15);
              *(this + 14) = v457 + 1;
              if (v457 >= v458)
              {
                return 0;
              }

              v459 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100446D9C(v455, this, v460) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v459);
              v461 = *(this + 14);
              v20 = __OFSUB__(v461, 1);
              v462 = v461 - 1;
              if (v462 < 0 == v20)
              {
                *(this + 14) = v462;
              }

              v463 = *(this + 1);
              if (*(this + 4) - v463 <= 1 || *v463 != 226 || v463[1] != 1)
              {
                continue;
              }

              *(this + 1) = v463 + 2;
LABEL_888:
              *(a1 + 488) |= 0x8000000u;
              v464 = *(a1 + 224);
              if (!v464)
              {
                operator new();
              }

              v545 = 0;
              v465 = *(this + 1);
              if (v465 >= *(this + 2) || *v465 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v465;
                *(this + 1) = v465 + 1;
              }

              v466 = *(this + 14);
              v467 = *(this + 15);
              *(this + 14) = v466 + 1;
              if (v466 >= v467)
              {
                return 0;
              }

              v468 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044A850(v464, this, v469) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v468);
              v470 = *(this + 14);
              v20 = __OFSUB__(v470, 1);
              v471 = v470 - 1;
              if (v471 < 0 == v20)
              {
                *(this + 14) = v471;
              }

              v472 = *(this + 1);
              if (*(this + 4) - v472 <= 1 || *v472 != 234 || v472[1] != 1)
              {
                continue;
              }

              *(this + 1) = v472 + 2;
LABEL_903:
              *(a1 + 488) |= 0x10000000u;
              v473 = *(a1 + 232);
              if (!v473)
              {
                operator new();
              }

              v545 = 0;
              v474 = *(this + 1);
              if (v474 >= *(this + 2) || *v474 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v474;
                *(this + 1) = v474 + 1;
              }

              v475 = *(this + 14);
              v476 = *(this + 15);
              *(this + 14) = v475 + 1;
              if (v475 >= v476)
              {
                return 0;
              }

              v477 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044C748(v473, this, v478) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v477);
              v479 = *(this + 14);
              v20 = __OFSUB__(v479, 1);
              v480 = v479 - 1;
              if (v480 < 0 == v20)
              {
                *(this + 14) = v480;
              }

              v481 = *(this + 1);
              if (*(this + 4) - v481 <= 1 || *v481 != 242 || v481[1] != 1)
              {
                continue;
              }

              *(this + 1) = v481 + 2;
LABEL_918:
              *(a1 + 488) |= 0x20000000u;
              v482 = *(a1 + 240);
              if (!v482)
              {
                operator new();
              }

              v545 = 0;
              v483 = *(this + 1);
              if (v483 >= *(this + 2) || *v483 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v483;
                *(this + 1) = v483 + 1;
              }

              v484 = *(this + 14);
              v485 = *(this + 15);
              *(this + 14) = v484 + 1;
              if (v484 >= v485)
              {
                return 0;
              }

              v486 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044F850(v482, this, v487) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v486);
              v488 = *(this + 14);
              v20 = __OFSUB__(v488, 1);
              v489 = v488 - 1;
              if (v489 < 0 == v20)
              {
                *(this + 14) = v489;
              }

              v490 = *(this + 1);
              if (*(this + 4) - v490 <= 1 || *v490 != 250 || v490[1] != 1)
              {
                continue;
              }

              *(this + 1) = v490 + 2;
LABEL_933:
              *(a1 + 488) |= 0x40000000u;
              v491 = *(a1 + 248);
              if (!v491)
              {
                operator new();
              }

              v545 = 0;
              v492 = *(this + 1);
              if (v492 >= *(this + 2) || *v492 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v492;
                *(this + 1) = v492 + 1;
              }

              v493 = *(this + 14);
              v494 = *(this + 15);
              *(this + 14) = v493 + 1;
              if (v493 >= v494)
              {
                return 0;
              }

              v495 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100451368(v491, this, v496) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v495);
              v497 = *(this + 14);
              v20 = __OFSUB__(v497, 1);
              v498 = v497 - 1;
              if (v498 < 0 == v20)
              {
                *(this + 14) = v498;
              }

              v499 = *(this + 1);
              if (*(this + 4) - v499 <= 1 || *v499 != 130 || v499[1] != 2)
              {
                continue;
              }

              *(this + 1) = v499 + 2;
LABEL_948:
              *(a1 + 488) |= 0x80000000;
              v500 = *(a1 + 256);
              if (!v500)
              {
                operator new();
              }

              v545 = 0;
              v501 = *(this + 1);
              if (v501 >= *(this + 2) || *v501 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v501;
                *(this + 1) = v501 + 1;
              }

              v502 = *(this + 14);
              v503 = *(this + 15);
              *(this + 14) = v502 + 1;
              if (v502 >= v503)
              {
                return 0;
              }

              v504 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042F8F4(v500, this, v505) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v504);
              v506 = *(this + 14);
              v20 = __OFSUB__(v506, 1);
              v507 = v506 - 1;
              if (v507 < 0 == v20)
              {
                *(this + 14) = v507;
              }

              v508 = *(this + 1);
              if (*(this + 4) - v508 <= 1 || *v508 != 138 || v508[1] != 2)
              {
                continue;
              }

              *(this + 1) = v508 + 2;
LABEL_963:
              *(a1 + 492) |= 1u;
              v509 = *(a1 + 264);
              if (!v509)
              {
                operator new();
              }

              v545 = 0;
              v510 = *(this + 1);
              if (v510 >= *(this + 2) || *v510 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v510;
                *(this + 1) = v510 + 1;
              }

              v511 = *(this + 14);
              v512 = *(this + 15);
              *(this + 14) = v511 + 1;
              if (v511 >= v512)
              {
                return 0;
              }

              v513 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100452B58(v509, this, v514) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v513);
              v515 = *(this + 14);
              v20 = __OFSUB__(v515, 1);
              v516 = v515 - 1;
              if (v516 < 0 == v20)
              {
                *(this + 14) = v516;
              }

              v517 = *(this + 1);
              if (*(this + 4) - v517 <= 1 || *v517 != 146 || v517[1] != 2)
              {
                continue;
              }

              *(this + 1) = v517 + 2;
LABEL_978:
              *(a1 + 492) |= 2u;
              v518 = *(a1 + 272);
              if (!v518)
              {
                operator new();
              }

              v545 = 0;
              v519 = *(this + 1);
              if (v519 >= *(this + 2) || *v519 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v519;
                *(this + 1) = v519 + 1;
              }

              v520 = *(this + 14);
              v521 = *(this + 15);
              *(this + 14) = v520 + 1;
              if (v520 >= v521)
              {
                return 0;
              }

              v522 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1012A8C5C(v518, this, v523) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v522);
              v524 = *(this + 14);
              v20 = __OFSUB__(v524, 1);
              v525 = v524 - 1;
              if (v525 < 0 == v20)
              {
                *(this + 14) = v525;
              }

              v526 = *(this + 1);
              if (*(this + 4) - v526 <= 1 || *v526 != 154 || v526[1] != 2)
              {
                continue;
              }

              *(this + 1) = v526 + 2;
LABEL_993:
              *(a1 + 492) |= 4u;
              v527 = *(a1 + 280);
              if (!v527)
              {
                operator new();
              }

              v545 = 0;
              v528 = *(this + 1);
              if (v528 >= *(this + 2) || *v528 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v528;
                *(this + 1) = v528 + 1;
              }

              v529 = *(this + 14);
              v530 = *(this + 15);
              *(this + 14) = v529 + 1;
              if (v529 >= v530)
              {
                return 0;
              }

              v531 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004539F4(v527, this, v532) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v531);
              v533 = *(this + 14);
              v20 = __OFSUB__(v533, 1);
              v534 = v533 - 1;
              if (v534 < 0 == v20)
              {
                *(this + 14) = v534;
              }

              v535 = *(this + 1);
              if (*(this + 4) - v535 <= 1 || *v535 != 226 || v535[1] != 62)
              {
                continue;
              }

              *(this + 1) = v535 + 2;
LABEL_1008:
              *(a1 + 492) |= 8u;
              v536 = *(a1 + 288);
              if (!v536)
              {
                operator new();
              }

              v545 = 0;
              v537 = *(this + 1);
              if (v537 >= *(this + 2) || *v537 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v537;
                *(this + 1) = v537 + 1;
              }

              v538 = *(this + 14);
              v539 = *(this + 15);
              *(this + 14) = v538 + 1;
              if (v538 >= v539)
              {
                return 0;
              }

              v540 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100E893FC(v536, this, v541) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v540);
              v542 = *(this + 14);
              v20 = __OFSUB__(v542, 1);
              v543 = v542 - 1;
              if (v543 < 0 == v20)
              {
                *(this + 14) = v543;
              }

              v544 = *(this + 1);
              if (*(this + 4) - v544 <= 1 || *v544 != 242 || v544[1] != 62)
              {
                continue;
              }

              *(this + 1) = v544 + 2;
              break;
            case 3u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_525;
            case 4u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_539;
            case 5u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_553;
            case 6u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_567;
            case 7u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_581;
            case 8u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_595;
            case 9u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_609;
            case 0xAu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_623;
            case 0xBu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_637;
            case 0xCu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_651;
            case 0xDu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_665;
            case 0xEu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_679;
            case 0xFu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_693;
            case 0x10u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_708;
            case 0x11u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_723;
            case 0x12u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_738;
            case 0x13u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_753;
            case 0x14u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_768;
            case 0x15u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_783;
            case 0x16u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_798;
            case 0x17u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_813;
            case 0x18u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_828;
            case 0x19u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_843;
            case 0x1Au:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_858;
            case 0x1Bu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_873;
            case 0x1Cu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_888;
            case 0x1Du:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_903;
            case 0x1Eu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_918;
            case 0x1Fu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_933;
            case 0x20u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_948;
            case 0x21u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_963;
            case 0x22u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_978;
            case 0x23u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_993;
            default:
              if (v7 != 1004 || v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_1008;
          }

          goto LABEL_41;
        }

        if (TagFallback >> 3 <= 0x3F7)
        {
          break;
        }

        switch(v7)
        {
          case 0x7D0u:
            if (v8 == 2)
            {
              goto LABEL_265;
            }

            goto LABEL_147;
          case 0x7D1u:
            if (v8 == 2)
            {
              goto LABEL_280;
            }

            goto LABEL_147;
          case 0x7D2u:
            if (v8 == 2)
            {
              goto LABEL_295;
            }

            goto LABEL_147;
          case 0x7D3u:
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_147;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            goto LABEL_310;
          case 0x7D4u:
            if (v8 == 2)
            {
              goto LABEL_322;
            }

            goto LABEL_147;
          case 0x7D5u:
            if (v8 == 2)
            {
              goto LABEL_337;
            }

            goto LABEL_147;
          case 0x7D6u:
            if (v8 == 2)
            {
              goto LABEL_352;
            }

            goto LABEL_147;
          case 0x7D7u:
            if (v8 == 2)
            {
              goto LABEL_367;
            }

            goto LABEL_147;
          case 0x7D8u:
            if (v8 != 2)
            {
              goto LABEL_147;
            }

            goto LABEL_382;
          case 0x7D9u:
            if (v8 == 2)
            {
              goto LABEL_397;
            }

            goto LABEL_147;
          case 0x7DAu:
            if (v8 == 2)
            {
              goto LABEL_412;
            }

            goto LABEL_147;
          case 0x7DBu:
            if (v8 == 2)
            {
              goto LABEL_427;
            }

            goto LABEL_147;
          case 0x7DCu:
            if (v8 == 2)
            {
              goto LABEL_442;
            }

            goto LABEL_147;
          case 0x7DDu:
            if (v8 == 2)
            {
              goto LABEL_457;
            }

            goto LABEL_147;
          case 0x7DEu:
            if (v8 == 2)
            {
              goto LABEL_472;
            }

            goto LABEL_147;
          case 0x7DFu:
            if (v8 == 2)
            {
              goto LABEL_487;
            }

            goto LABEL_147;
          default:
            if (v7 == 1016)
            {
              if (v8 == 2)
              {
                goto LABEL_235;
              }

              goto LABEL_147;
            }

            if (v7 != 1017 || v8 != 2)
            {
              goto LABEL_147;
            }

LABEL_250:
            *(a1 + 492) |= 0x800u;
            v77 = *(a1 + 352);
            if (!v77)
            {
              operator new();
            }

            v545 = 0;
            v78 = *(this + 1);
            if (v78 >= *(this + 2) || *v78 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
              {
                return 0;
              }
            }

            else
            {
              v545 = *v78;
              *(this + 1) = v78 + 1;
            }

            v79 = *(this + 14);
            v80 = *(this + 15);
            *(this + 14) = v79 + 1;
            if (v79 >= v80)
            {
              return 0;
            }

            v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
            if (!sub_100E007A4(v77, this, v82) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v81);
            v83 = *(this + 14);
            v20 = __OFSUB__(v83, 1);
            v84 = v83 - 1;
            if (v84 < 0 == v20)
            {
              *(this + 14) = v84;
            }

            v85 = *(this + 1);
            if (*(this + 4) - v85 > 1 && *v85 == 130 && v85[1] == 125)
            {
              *(this + 1) = v85 + 2;
LABEL_265:
              *(a1 + 492) |= 0x1000u;
              v86 = *(a1 + 360);
              if (!v86)
              {
                operator new();
              }

              v545 = 0;
              v87 = *(this + 1);
              if (v87 >= *(this + 2) || *v87 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v87;
                *(this + 1) = v87 + 1;
              }

              v88 = *(this + 14);
              v89 = *(this + 15);
              *(this + 14) = v88 + 1;
              if (v88 >= v89)
              {
                return 0;
              }

              v90 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100948C18(v86, this, v91) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v90);
              v92 = *(this + 14);
              v20 = __OFSUB__(v92, 1);
              v93 = v92 - 1;
              if (v93 < 0 == v20)
              {
                *(this + 14) = v93;
              }

              v94 = *(this + 1);
              if (*(this + 4) - v94 > 1 && *v94 == 138 && v94[1] == 125)
              {
                *(this + 1) = v94 + 2;
LABEL_280:
                *(a1 + 492) |= 0x2000u;
                v95 = *(a1 + 368);
                if (!v95)
                {
                  operator new();
                }

                v545 = 0;
                v96 = *(this + 1);
                if (v96 >= *(this + 2) || *v96 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                  {
                    return 0;
                  }
                }

                else
                {
                  v545 = *v96;
                  *(this + 1) = v96 + 1;
                }

                v97 = *(this + 14);
                v98 = *(this + 15);
                *(this + 14) = v97 + 1;
                if (v97 >= v98)
                {
                  return 0;
                }

                v99 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                if (!sub_100949354(v95, this, v100) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v99);
                v101 = *(this + 14);
                v20 = __OFSUB__(v101, 1);
                v102 = v101 - 1;
                if (v102 < 0 == v20)
                {
                  *(this + 14) = v102;
                }

                v103 = *(this + 1);
                if (*(this + 4) - v103 > 1 && *v103 == 146 && v103[1] == 125)
                {
                  *(this + 1) = v103 + 2;
LABEL_295:
                  *(a1 + 492) |= 0x4000u;
                  v104 = *(a1 + 376);
                  if (!v104)
                  {
                    operator new();
                  }

                  v545 = 0;
                  v105 = *(this + 1);
                  if (v105 >= *(this + 2) || *v105 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v545 = *v105;
                    *(this + 1) = v105 + 1;
                  }

                  v106 = *(this + 14);
                  v107 = *(this + 15);
                  *(this + 14) = v106 + 1;
                  if (v106 >= v107)
                  {
                    return 0;
                  }

                  v108 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                  if (!sub_100949BCC(v104, this, v109) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v108);
                  v110 = *(this + 14);
                  v20 = __OFSUB__(v110, 1);
                  v111 = v110 - 1;
                  if (v111 < 0 == v20)
                  {
                    *(this + 14) = v111;
                  }

                  v112 = *(this + 1);
                  v13 = *(this + 2);
                  if (v13 - v112 > 1 && *v112 == 152 && v112[1] == 125)
                  {
                    v14 = (v112 + 2);
                    *(this + 1) = v14;
LABEL_310:
                    v545 = 0;
                    if (v14 >= v13 || (v113 = *v14, (v113 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545);
                      if (!result)
                      {
                        return result;
                      }

                      v113 = v545;
                    }

                    else
                    {
                      *(this + 1) = v14 + 1;
                    }

                    if (sub_10041ECEC(v113))
                    {
                      if (!sub_10041ECEC(v113))
                      {
                        sub_10195532C();
                      }

                      *(a1 + 492) |= 0x8000u;
                      *(a1 + 480) = v113;
                    }

                    v115 = *(this + 1);
                    if (*(this + 4) - v115 >= 2 && *v115 == 162 && v115[1] == 125)
                    {
                      *(this + 1) = v115 + 2;
LABEL_322:
                      *(a1 + 492) |= 0x10000u;
                      v116 = *(a1 + 384);
                      if (!v116)
                      {
                        operator new();
                      }

                      v545 = 0;
                      v117 = *(this + 1);
                      if (v117 >= *(this + 2) || *v117 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v545 = *v117;
                        *(this + 1) = v117 + 1;
                      }

                      v118 = *(this + 14);
                      v119 = *(this + 15);
                      *(this + 14) = v118 + 1;
                      if (v118 >= v119)
                      {
                        return 0;
                      }

                      v120 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                      if (!sub_10094A468(v116, this, v121) || *(this + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v120);
                      v122 = *(this + 14);
                      v20 = __OFSUB__(v122, 1);
                      v123 = v122 - 1;
                      if (v123 < 0 == v20)
                      {
                        *(this + 14) = v123;
                      }

                      v124 = *(this + 1);
                      if (*(this + 4) - v124 > 1 && *v124 == 170 && v124[1] == 125)
                      {
                        *(this + 1) = v124 + 2;
LABEL_337:
                        *(a1 + 492) |= 0x20000u;
                        v125 = *(a1 + 392);
                        if (!v125)
                        {
                          operator new();
                        }

                        v545 = 0;
                        v126 = *(this + 1);
                        if (v126 >= *(this + 2) || *v126 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v545 = *v126;
                          *(this + 1) = v126 + 1;
                        }

                        v127 = *(this + 14);
                        v128 = *(this + 15);
                        *(this + 14) = v127 + 1;
                        if (v127 >= v128)
                        {
                          return 0;
                        }

                        v129 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                        if (!sub_10094AB88(v125, this, v130) || *(this + 36) != 1)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v129);
                        v131 = *(this + 14);
                        v20 = __OFSUB__(v131, 1);
                        v132 = v131 - 1;
                        if (v132 < 0 == v20)
                        {
                          *(this + 14) = v132;
                        }

                        v133 = *(this + 1);
                        if (*(this + 4) - v133 > 1 && *v133 == 178 && v133[1] == 125)
                        {
                          *(this + 1) = v133 + 2;
LABEL_352:
                          *(a1 + 492) |= 0x40000u;
                          v134 = *(a1 + 400);
                          if (!v134)
                          {
                            operator new();
                          }

                          v545 = 0;
                          v135 = *(this + 1);
                          if (v135 >= *(this + 2) || *v135 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v545 = *v135;
                            *(this + 1) = v135 + 1;
                          }

                          v136 = *(this + 14);
                          v137 = *(this + 15);
                          *(this + 14) = v136 + 1;
                          if (v136 >= v137)
                          {
                            return 0;
                          }

                          v138 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                          if (!sub_10094BAA0(v134, this, v139) || *(this + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v138);
                          v140 = *(this + 14);
                          v20 = __OFSUB__(v140, 1);
                          v141 = v140 - 1;
                          if (v141 < 0 == v20)
                          {
                            *(this + 14) = v141;
                          }

                          v142 = *(this + 1);
                          if (*(this + 4) - v142 > 1 && *v142 == 186 && v142[1] == 125)
                          {
                            *(this + 1) = v142 + 2;
LABEL_367:
                            *(a1 + 492) |= 0x80000u;
                            v143 = *(a1 + 408);
                            if (!v143)
                            {
                              operator new();
                            }

                            v545 = 0;
                            v144 = *(this + 1);
                            if (v144 >= *(this + 2) || *v144 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v545 = *v144;
                              *(this + 1) = v144 + 1;
                            }

                            v145 = *(this + 14);
                            v146 = *(this + 15);
                            *(this + 14) = v145 + 1;
                            if (v145 >= v146)
                            {
                              return 0;
                            }

                            v147 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                            if (!sub_10094C2C4(v143, this, v148) || *(this + 36) != 1)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v147);
                            v149 = *(this + 14);
                            v20 = __OFSUB__(v149, 1);
                            v150 = v149 - 1;
                            if (v150 < 0 == v20)
                            {
                              *(this + 14) = v150;
                            }

                            v151 = *(this + 1);
                            if (*(this + 4) - v151 > 1 && *v151 == 194 && v151[1] == 125)
                            {
                              *(this + 1) = v151 + 2;
LABEL_382:
                              *(a1 + 492) |= 0x100000u;
                              v152 = *(a1 + 416);
                              if (!v152)
                              {
                                operator new();
                              }

                              v545 = 0;
                              v153 = *(this + 1);
                              if (v153 >= *(this + 2) || *v153 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v545 = *v153;
                                *(this + 1) = v153 + 1;
                              }

                              v154 = *(this + 14);
                              v155 = *(this + 15);
                              *(this + 14) = v154 + 1;
                              if (v154 >= v155)
                              {
                                return 0;
                              }

                              v156 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                              if (!sub_10094CB60(v152, this, v157) || *(this + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v156);
                              v158 = *(this + 14);
                              v20 = __OFSUB__(v158, 1);
                              v159 = v158 - 1;
                              if (v159 < 0 == v20)
                              {
                                *(this + 14) = v159;
                              }

                              v160 = *(this + 1);
                              if (*(this + 4) - v160 > 1 && *v160 == 202 && v160[1] == 125)
                              {
                                *(this + 1) = v160 + 2;
LABEL_397:
                                *(a1 + 492) |= 0x200000u;
                                v161 = *(a1 + 424);
                                if (!v161)
                                {
                                  operator new();
                                }

                                v545 = 0;
                                v162 = *(this + 1);
                                if (v162 >= *(this + 2) || *v162 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v545 = *v162;
                                  *(this + 1) = v162 + 1;
                                }

                                v163 = *(this + 14);
                                v164 = *(this + 15);
                                *(this + 14) = v163 + 1;
                                if (v163 >= v164)
                                {
                                  return 0;
                                }

                                v165 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                if (!sub_10094D784(v161, this, v166) || *(this + 36) != 1)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v165);
                                v167 = *(this + 14);
                                v20 = __OFSUB__(v167, 1);
                                v168 = v167 - 1;
                                if (v168 < 0 == v20)
                                {
                                  *(this + 14) = v168;
                                }

                                v169 = *(this + 1);
                                if (*(this + 4) - v169 > 1 && *v169 == 210 && v169[1] == 125)
                                {
                                  *(this + 1) = v169 + 2;
LABEL_412:
                                  *(a1 + 492) |= 0x400000u;
                                  v170 = *(a1 + 432);
                                  if (!v170)
                                  {
                                    operator new();
                                  }

                                  v545 = 0;
                                  v171 = *(this + 1);
                                  if (v171 >= *(this + 2) || *v171 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v545 = *v171;
                                    *(this + 1) = v171 + 1;
                                  }

                                  v172 = *(this + 14);
                                  v173 = *(this + 15);
                                  *(this + 14) = v172 + 1;
                                  if (v172 >= v173)
                                  {
                                    return 0;
                                  }

                                  v174 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                  if (!sub_10094DE84(v170, this, v175) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v174);
                                  v176 = *(this + 14);
                                  v20 = __OFSUB__(v176, 1);
                                  v177 = v176 - 1;
                                  if (v177 < 0 == v20)
                                  {
                                    *(this + 14) = v177;
                                  }

                                  v178 = *(this + 1);
                                  if (*(this + 4) - v178 > 1 && *v178 == 218 && v178[1] == 125)
                                  {
                                    *(this + 1) = v178 + 2;
LABEL_427:
                                    *(a1 + 492) |= 0x800000u;
                                    v179 = *(a1 + 440);
                                    if (!v179)
                                    {
                                      operator new();
                                    }

                                    v545 = 0;
                                    v180 = *(this + 1);
                                    if (v180 >= *(this + 2) || *v180 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v545 = *v180;
                                      *(this + 1) = v180 + 1;
                                    }

                                    v181 = *(this + 14);
                                    v182 = *(this + 15);
                                    *(this + 14) = v181 + 1;
                                    if (v181 >= v182)
                                    {
                                      return 0;
                                    }

                                    v183 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                    if (!sub_10094E78C(v179, this, v184) || *(this + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v183);
                                    v185 = *(this + 14);
                                    v20 = __OFSUB__(v185, 1);
                                    v186 = v185 - 1;
                                    if (v186 < 0 == v20)
                                    {
                                      *(this + 14) = v186;
                                    }

                                    v187 = *(this + 1);
                                    if (*(this + 4) - v187 > 1 && *v187 == 226 && v187[1] == 125)
                                    {
                                      *(this + 1) = v187 + 2;
LABEL_442:
                                      *(a1 + 492) |= 0x1000000u;
                                      v188 = *(a1 + 448);
                                      if (!v188)
                                      {
                                        operator new();
                                      }

                                      v545 = 0;
                                      v189 = *(this + 1);
                                      if (v189 >= *(this + 2) || *v189 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v545 = *v189;
                                        *(this + 1) = v189 + 1;
                                      }

                                      v190 = *(this + 14);
                                      v191 = *(this + 15);
                                      *(this + 14) = v190 + 1;
                                      if (v190 >= v191)
                                      {
                                        return 0;
                                      }

                                      v192 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                      if (!sub_10094EDB4(v188, this, v193) || *(this + 36) != 1)
                                      {
                                        return 0;
                                      }

                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v192);
                                      v194 = *(this + 14);
                                      v20 = __OFSUB__(v194, 1);
                                      v195 = v194 - 1;
                                      if (v195 < 0 == v20)
                                      {
                                        *(this + 14) = v195;
                                      }

                                      v196 = *(this + 1);
                                      if (*(this + 4) - v196 > 1 && *v196 == 234 && v196[1] == 125)
                                      {
                                        *(this + 1) = v196 + 2;
LABEL_457:
                                        *(a1 + 492) |= 0x2000000u;
                                        v197 = *(a1 + 456);
                                        if (!v197)
                                        {
                                          operator new();
                                        }

                                        v545 = 0;
                                        v198 = *(this + 1);
                                        if (v198 >= *(this + 2) || *v198 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v545 = *v198;
                                          *(this + 1) = v198 + 1;
                                        }

                                        v199 = *(this + 14);
                                        v200 = *(this + 15);
                                        *(this + 14) = v199 + 1;
                                        if (v199 >= v200)
                                        {
                                          return 0;
                                        }

                                        v201 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                        if (!sub_10094F488(v197, this, v202) || *(this + 36) != 1)
                                        {
                                          return 0;
                                        }

                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v201);
                                        v203 = *(this + 14);
                                        v20 = __OFSUB__(v203, 1);
                                        v204 = v203 - 1;
                                        if (v204 < 0 == v20)
                                        {
                                          *(this + 14) = v204;
                                        }

                                        v205 = *(this + 1);
                                        if (*(this + 4) - v205 > 1 && *v205 == 242 && v205[1] == 125)
                                        {
                                          *(this + 1) = v205 + 2;
LABEL_472:
                                          *(a1 + 492) |= 0x4000000u;
                                          v206 = *(a1 + 464);
                                          if (!v206)
                                          {
                                            operator new();
                                          }

                                          v545 = 0;
                                          v207 = *(this + 1);
                                          if (v207 >= *(this + 2) || *v207 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v545 = *v207;
                                            *(this + 1) = v207 + 1;
                                          }

                                          v208 = *(this + 14);
                                          v209 = *(this + 15);
                                          *(this + 14) = v208 + 1;
                                          if (v208 >= v209)
                                          {
                                            return 0;
                                          }

                                          v210 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                          if (!sub_10094FC14(v206, this, v211) || *(this + 36) != 1)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v210);
                                          v212 = *(this + 14);
                                          v20 = __OFSUB__(v212, 1);
                                          v213 = v212 - 1;
                                          if (v213 < 0 == v20)
                                          {
                                            *(this + 14) = v213;
                                          }

                                          v214 = *(this + 1);
                                          if (*(this + 4) - v214 > 1 && *v214 == 250 && v214[1] == 125)
                                          {
                                            *(this + 1) = v214 + 2;
LABEL_487:
                                            *(a1 + 492) |= 0x8000000u;
                                            v215 = *(a1 + 472);
                                            if (!v215)
                                            {
                                              operator new();
                                            }

                                            v545 = 0;
                                            v216 = *(this + 1);
                                            if (v216 >= *(this + 2) || *v216 < 0)
                                            {
                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              v545 = *v216;
                                              *(this + 1) = v216 + 1;
                                            }

                                            v217 = *(this + 14);
                                            v218 = *(this + 15);
                                            *(this + 14) = v217 + 1;
                                            if (v217 >= v218)
                                            {
                                              return 0;
                                            }

                                            v219 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                            if (!sub_100950230(v215, this, v220) || *(this + 36) != 1)
                                            {
                                              return 0;
                                            }

                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v219);
                                            v221 = *(this + 14);
                                            v20 = __OFSUB__(v221, 1);
                                            v222 = v221 - 1;
                                            if (v222 < 0 == v20)
                                            {
                                              *(this + 14) = v222;
                                            }

                                            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                                            {
                                              *(this + 8) = 0;
                                              result = 1;
                                              *(this + 36) = 1;
                                              return result;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            break;
        }
      }

      if (TagFallback >> 3 > 0x3F1)
      {
        if (v7 == 1010)
        {
          if (v8 == 2)
          {
            goto LABEL_190;
          }
        }

        else if (v7 == 1012)
        {
          if (v8 == 2)
          {
            goto LABEL_205;
          }
        }

        else if (v7 == 1014 && v8 == 2)
        {
          goto LABEL_220;
        }

        goto LABEL_147;
      }

      if (v7 != 1006)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_147;
      }

LABEL_41:
      *(a1 + 492) |= 0x10u;
      v11 = *(a1 + 296);
      if (!v11)
      {
        operator new();
      }

      v545 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
        {
          return 0;
        }
      }

      else
      {
        v545 = *v12;
        *(this + 1) = v12 + 1;
      }

      v15 = *(this + 14);
      v16 = *(this + 15);
      *(this + 14) = v15 + 1;
      if (v15 >= v16)
      {
        return 0;
      }

      v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
      if (!sub_1009996FC(v11, this, v18) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
      v19 = *(this + 14);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 == v20)
      {
        *(this + 14) = v21;
      }

      v22 = *(this + 1);
      if (*(this + 4) - v22 > 1 && *v22 == 250 && v22[1] == 62)
      {
        *(this + 1) = v22 + 2;
LABEL_160:
        *(a1 + 492) |= 0x20u;
        v23 = *(a1 + 304);
        if (!v23)
        {
          operator new();
        }

        v545 = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
          {
            return 0;
          }
        }

        else
        {
          v545 = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
        if (!sub_100B7DA54(v23, this, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
        v29 = *(this + 14);
        v20 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v20)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (*(this + 4) - v31 > 1 && *v31 == 130 && v31[1] == 63)
        {
          *(this + 1) = v31 + 2;
LABEL_175:
          *(a1 + 492) |= 0x40u;
          v32 = *(a1 + 312);
          if (!v32)
          {
            operator new();
          }

          v545 = 0;
          v33 = *(this + 1);
          if (v33 >= *(this + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
            {
              return 0;
            }
          }

          else
          {
            v545 = *v33;
            *(this + 1) = v33 + 1;
          }

          v34 = *(this + 14);
          v35 = *(this + 15);
          *(this + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
          if (!sub_1015F4D84(v32, this, v37) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
          v38 = *(this + 14);
          v20 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v20)
          {
            *(this + 14) = v39;
          }

          v40 = *(this + 1);
          if (*(this + 4) - v40 > 1 && *v40 == 146 && v40[1] == 63)
          {
            *(this + 1) = v40 + 2;
LABEL_190:
            *(a1 + 492) |= 0x80u;
            v41 = *(a1 + 320);
            if (!v41)
            {
              operator new();
            }

            v545 = 0;
            v42 = *(this + 1);
            if (v42 >= *(this + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
              {
                return 0;
              }
            }

            else
            {
              v545 = *v42;
              *(this + 1) = v42 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
            if (!sub_100A57620(v41, this, v46) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v47 = *(this + 14);
            v20 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v20)
            {
              *(this + 14) = v48;
            }

            v49 = *(this + 1);
            if (*(this + 4) - v49 > 1 && *v49 == 162 && v49[1] == 63)
            {
              *(this + 1) = v49 + 2;
LABEL_205:
              *(a1 + 492) |= 0x100u;
              v50 = *(a1 + 328);
              if (!v50)
              {
                operator new();
              }

              v545 = 0;
              v51 = *(this + 1);
              if (v51 >= *(this + 2) || *v51 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v51;
                *(this + 1) = v51 + 1;
              }

              v52 = *(this + 14);
              v53 = *(this + 15);
              *(this + 14) = v52 + 1;
              if (v52 >= v53)
              {
                return 0;
              }

              v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10110A7B4(v50, this, v55) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
              v56 = *(this + 14);
              v20 = __OFSUB__(v56, 1);
              v57 = v56 - 1;
              if (v57 < 0 == v20)
              {
                *(this + 14) = v57;
              }

              v58 = *(this + 1);
              if (*(this + 4) - v58 > 1 && *v58 == 178 && v58[1] == 63)
              {
                *(this + 1) = v58 + 2;
LABEL_220:
                *(a1 + 492) |= 0x200u;
                v59 = *(a1 + 336);
                if (!v59)
                {
                  operator new();
                }

                v545 = 0;
                v60 = *(this + 1);
                if (v60 >= *(this + 2) || *v60 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                  {
                    return 0;
                  }
                }

                else
                {
                  v545 = *v60;
                  *(this + 1) = v60 + 1;
                }

                v61 = *(this + 14);
                v62 = *(this + 15);
                *(this + 14) = v61 + 1;
                if (v61 >= v62)
                {
                  return 0;
                }

                v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                if (!sub_10063C5FC(v59, this, v64) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
                v65 = *(this + 14);
                v20 = __OFSUB__(v65, 1);
                v66 = v65 - 1;
                if (v66 < 0 == v20)
                {
                  *(this + 14) = v66;
                }

                v67 = *(this + 1);
                if (*(this + 4) - v67 > 1 && *v67 == 194 && v67[1] == 63)
                {
                  *(this + 1) = v67 + 2;
LABEL_235:
                  *(a1 + 492) |= 0x400u;
                  v68 = *(a1 + 344);
                  if (!v68)
                  {
                    operator new();
                  }

                  v545 = 0;
                  v69 = *(this + 1);
                  if (v69 >= *(this + 2) || *v69 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v545 = *v69;
                    *(this + 1) = v69 + 1;
                  }

                  v70 = *(this + 14);
                  v71 = *(this + 15);
                  *(this + 14) = v70 + 1;
                  if (v70 >= v71)
                  {
                    return 0;
                  }

                  v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                  if (!sub_101234E24(v68, this, v73) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v72);
                  v74 = *(this + 14);
                  v20 = __OFSUB__(v74, 1);
                  v75 = v74 - 1;
                  if (v75 < 0 == v20)
                  {
                    *(this + 14) = v75;
                  }

                  v76 = *(this + 1);
                  if (*(this + 4) - v76 > 1 && *v76 == 202 && v76[1] == 63)
                  {
                    *(this + 1) = v76 + 2;
                    goto LABEL_250;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 1007)
    {
      if (v8 == 2)
      {
        goto LABEL_160;
      }
    }

    else if (v7 == 1008 && v8 == 2)
    {
      goto LABEL_175;
    }

LABEL_147:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}