void sub_1000AAA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  sub_100017590(va1);
  sub_100017590(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAACC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100036D0C(result);

    operator delete();
  }

  return result;
}

void sub_1000AAB18(unsigned __int8 *a1)
{
  v2 = sub_100002DB0();
  v3 = sub_10007A4E8(v2);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[3];
    v6[0] = 68289539;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v3;
    v11 = 1025;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onUserSettingsChanged, discoveryAllowed:%{private}d, fIsBleDiscoveryEnabled:%{private}d}", v6, 0x1Eu);
  }

  if (a1[3] != v3)
  {
    a1[3] = v3;
    sub_1000A8FF0(a1);
  }
}

void sub_1000AACA0()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_1000AAD54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000AADCC(uint64_t a1)
{

  operator delete();
}

id sub_1000AAE20(uint64_t a1, void *a2)
{
  *a2 = off_10013F170;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000AAE68(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_1000AAE8C(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013F1E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AAED8(uint64_t a1)
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

uint64_t sub_1000AAFC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F200;
  a2[1] = v2;
  return result;
}

__int128 *sub_1000AAFF4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,getBleEnablementStatus,cb, isBleEnabled:%{private}hhd}", v6, 0x18u);
  }

  v3[1] = v2;
  return sub_1000A8FF0(v3);
}

uint64_t sub_1000AB0D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AB18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F280;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000AB1B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,stop adv cb}", &v17, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    v6 = a2 + 152;
    v5 = v7;
    if (*(v6 + 23) >= 0)
    {
      v5 = v6;
    }

    v8 = *(v6 + 200);
    v9 = *(v6 + 232);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    v12 = *(v6 + 48);
    v13 = *(v6 + 56);
    v14 = *(v6 + 64);
    v15 = *(v6 + 168);
    v17 = 68292355;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2081;
    v22 = "info";
    v23 = 2081;
    v24 = "igAlertFlow";
    v25 = 2081;
    v26 = "bleCore";
    v27 = 2081;
    v28 = "stopAdvertisingCb";
    v29 = 2081;
    v30 = v5;
    v31 = 1025;
    v32 = v8;
    v33 = 1025;
    v34 = v9;
    v35 = 2049;
    v36 = v10;
    v37 = 2049;
    v38 = v11;
    v39 = 2049;
    v40 = v12;
    v41 = 2049;
    v42 = v13;
    v43 = 2049;
    v44 = v14;
    v45 = 2049;
    v46 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop advertising, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v17, 0x8Cu);
  }

  return sub_10008DAEC(*(v3 + 32));
}

uint64_t sub_1000AB39C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000AB3E8(void *result, void *a2)
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

void sub_1000AB640(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_1000AB6BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F310;
  a2[1] = v2;
  return result;
}

void sub_1000AB6E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 68289026;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,start adv cb}", &v14, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    v14 = 68292355;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    v16 = 2081;
    v17 = "info";
    v18 = 2081;
    v19 = "igAlertFlow";
    v20 = 2081;
    v21 = "bleCore";
    v22 = 2081;
    v23 = "startAdvertisingCb";
    v24 = 2081;
    v25 = v5;
    v26 = 1025;
    v27 = v6;
    v28 = 1025;
    v29 = v7;
    v30 = 2049;
    v31 = v8;
    v32 = 2049;
    v33 = v9;
    v34 = 2049;
    v35 = v10;
    v36 = 2049;
    v37 = v11;
    v38 = 2049;
    v39 = v12;
    v40 = 2049;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start advertising, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v14, 0x8Cu);
  }

  sub_10008D160(*(v3 + 32), a2);
  BYTE1(v14) = 0;
  *v15 = 0;
  LOBYTE(v14) = *v3;
  sub_10003DDD4(*(v3 + 16), a2, &v14);
}

uint64_t sub_1000AB8F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AB9B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F390;
  a2[1] = v2;
  return result;
}

void sub_1000AB9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    *v18 = 2082;
    *&v18[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,state machine exit cb}", &v17, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    v6 = a2 + 152;
    v5 = v7;
    if (*(v6 + 23) >= 0)
    {
      v5 = v6;
    }

    v8 = *(v6 + 200);
    v9 = *(v6 + 232);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    v12 = *(v6 + 48);
    v13 = *(v6 + 56);
    v14 = *(v6 + 64);
    v15 = *(v6 + 168);
    v17 = 68292355;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2081;
    *&v18[12] = "info";
    *&v18[20] = 2081;
    *&v18[22] = "igAlertFlow";
    *&v18[30] = 2081;
    v19 = "bleCore";
    v20 = 2081;
    v21 = "stateMachineExitCb";
    v22 = 2081;
    v23 = v5;
    v24 = 1025;
    v25 = v8;
    v26 = 1025;
    v27 = v9;
    v28 = 2049;
    v29 = v10;
    v30 = 2049;
    v31 = v11;
    v32 = 2049;
    v33 = v12;
    v34 = 2049;
    v35 = v13;
    v36 = 2049;
    v37 = v14;
    v38 = 2049;
    v39 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:state machine exit cb, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v17, 0x8Cu);
  }

  sub_10008DAEC(*(v3 + 32));
  v16 = *(v3 + 8);
  v17 = _NSConcreteStackBlock;
  *v18 = 3221225472;
  *&v18[8] = sub_1000ABC60;
  *&v18[16] = &unk_1001390D0;
  *&v18[24] = v3;
  dispatch_async(v16, &v17);
}

uint64_t sub_1000ABC14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000ABC70(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 240) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000ABD6C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_100035480(va);
  operator delete();
}

uint64_t sub_1000ABDE4(uint64_t a1, char *a2, const std::string *a3)
{
  *a1 = &off_10013F410;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (a2)
  {
    sub_10001D128((a1 + 16), a2);
    std::string::operator=(v4, a3);
  }

  return a1;
}

void sub_1000ABE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000ABE8C(const std::__fs::filesystem::path *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fi,removing, filePath:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  return remove(a1, v3);
}

uint64_t sub_1000ABF60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000ABDE4(a1, a2, a4);
  *v8 = &off_10013F428;
  *(v8 + 64) = 0u;
  v9 = (v8 + 64);
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  if (!a2)
  {
    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    __ptr = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v14 = "{msg%{public}.0s:#fi,#warning,read,invalidFileArgs}";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &__ptr, 0x12u);
    return a1;
  }

  v10 = *(a4 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (!v10)
  {
    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    __ptr = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v14 = "{msg%{public}.0s:#fi,#warning,read,invalidFileFormatVersion}";
    goto LABEL_13;
  }

  *(a1 + 104) = a3;
  v11 = fopen(a2, "r");
  *v9 = v11;
  if (v11)
  {
    v12 = *(a1 + 104);
    operator new[]();
  }

  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    __ptr = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v14 = "{msg%{public}.0s:#fi,#warning,read,cannotOpenFile}";
    goto LABEL_13;
  }

  return a1;
}

void sub_1000AC370(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    operator delete[]();
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_1000AC3D4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC3D4(uint64_t a1)
{
  *a1 = &off_10013F410;
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

FILE *sub_1000AC434(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    fclose(result);
    result = *(a1 + 96);
    *(a1 + 96) = 0;
    if (result)
    {
      operator delete[]();
    }

    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1000AC484(uint64_t a1)
{
  *a1 = &off_10013F428;
  sub_1000AC434(a1);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    operator delete[]();
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_1000AC3D4(a1);
}

uint64_t sub_1000AC508()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v12 = "{msg%{public}.0s:#fi,#warning,isValid,invalidArgs}";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
    return 0;
  }

  v2 = v1;
  v3 = v0;
  v4 = fopen(v0, "r");
  if (!v4)
  {
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v12 = "{msg%{public}.0s:#fi,#warning,isValid,cannotOpenFile}";
    goto LABEL_10;
  }

  v5 = v4;
  v6 = fread(__ptr, 1uLL, 0x41uLL, v4);
  if (!ferror(v5))
  {
    if (v6 == 65)
    {
      __ptr[64] = 0;
      if (*(v2 + 23) >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      strlen(v13);
      operator new[]();
    }

    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v8 = "{msg%{public}.0s:#fi,#warning,isValid,cannotReadHash}";
    v9 = v14;
    v10 = 18;
    goto LABEL_19;
  }

  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2081;
    v22 = v3;
    v8 = "{msg%{public}.0s:#fi,isContentValid,read hash error, filename:%{private, location:escape_only}s}";
    v9 = v7;
    v10 = 28;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }

LABEL_20:
  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cu,Closing fp}", buf, 0x12u);
  }

  fclose(v5);
  return 0;
}

char *sub_1000ACB1C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2 || feof(v2))
  {
    return 0;
  }

  v3 = fgets(*(a1 + 96), *(a1 + 104), *(a1 + 64));
  if (!v3)
  {
    return v3;
  }

  if (feof(*(a1 + 64)))
  {
    return 0;
  }

  v5 = strlen(v3);
  if (v5 == *(a1 + 104) - 1)
  {
    for (__ptr = 0; __ptr != 10; fread(&__ptr, 1uLL, 1uLL, *(a1 + 64)))
    {
      if (feof(*(a1 + 64)))
      {
        break;
      }
    }

    return 0;
  }

  v6 = v5;
  if (feof(*(a1 + 64)))
  {
    return 0;
  }

  if (v3[v6 - 1] == 10)
  {
    v3[v6 - 1] = 0;
  }

  return v3;
}

uint64_t sub_1000ACC04(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1000ABDE4(a1, a2, a3);
  *v6 = &off_10013F440;
  *(v6 + 64) = 0u;
  v7 = (v6 + 64);
  *(v6 + 80) = 0u;
  if (!a2)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = "{msg%{public}.0s:#fi,#warning,write,invalidFileArgs}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x12u);
    return a1;
  }

  v8 = fopen(a2, "w");
  *v7 = v8;
  if (!v8)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = "{msg%{public}.0s:#fi,#warning,write,cannotOpenFile}";
    goto LABEL_20;
  }

  *&v9 = 0x6161616161616161;
  *(&v9 + 1) = 0x6161616161616161;
  v23 = v9;
  v24 = v9;
  *buf = v9;
  *&buf[16] = v9;
  v25 = 10;
  fputs(buf, v8);
  *(&v19.__r_.__value_.__s + 23) = 1;
  LOWORD(v19.__r_.__value_.__l.__data_) = 10;
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v19, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  fputs(v15, *v7);
  CC_SHA256_Init((a1 + 96));
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000ACE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  sub_1000AC3D4(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACE70(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = result;
    CC_SHA256_Final(md, (result + 96));
    v2 = 0;
    v7 = 0u;
    v8 = 0u;
    *__str = 0u;
    v6 = 0u;
    v3 = __str;
    do
    {
      v3 += snprintf(v3, 3uLL, "%02x", md[v2++]);
    }

    while (v2 != 32);
    v9 = 10;
    v4 = fseek(*(v1 + 64), 0, 2);
    fseek(*(v1 + 64), 0, 0);
    fputs(__str, *(v1 + 64));
    fseek(*(v1 + 64), v4, 0);
    result = *(v1 + 64);
    if (result)
    {
      result = fclose(result);
    }

    *(v1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1000ACF88(uint64_t a1)
{
  *a1 = &off_10013F440;
  if (*(a1 + 64))
  {
    sub_1000ACE70(a1);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_1000AC3D4(a1);
}

const char *sub_1000ACFFC(const char *result, const char *a2)
{
  v2 = a2;
  v3 = result;
  if (a2[23] < 0)
  {
    if (!*(a2 + 1))
    {
      return result;
    }

    result = *a2;
  }

  else
  {
    result = a2;
    if (!a2[23])
    {
      return result;
    }
  }

  fputs(result, *(v3 + 8));
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  v4 = strlen(v2);
  CC_SHA256_Update((v3 + 96), v2, v4);
  data = 10;
  fputc(10, *(v3 + 8));
  return CC_SHA256_Update((v3 + 96), &data, 1u);
}

void sub_1000AD09C(void *a1)
{
  a1;
  if (*(sub_100042820() + 412) == 1)
  {
    operator new();
  }

  sub_1000AD21C();
}

void sub_1000AD1A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013F4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000AD288(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013F508;
  sub_100044574((a1 + 3), *a2);
  return a1;
}

void sub_1000AD308(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013F508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000AD384(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display}", buf, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v5;
    *&v286[20] = 1025;
    *&v286[22] = v6;
    *&v286[26] = 1025;
    *&v286[28] = v7;
    *v287 = 2049;
    *&v287[2] = v8;
    *&v287[10] = 2049;
    *&v287[12] = v9;
    *&v287[20] = 2049;
    *&v287[22] = v10;
    v288 = 2049;
    v289 = v11;
    v290 = 2049;
    v291 = v12;
    v292 = 2049;
    v293 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:entering display alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  if (*a2 == 1)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,duplicate alert}", buf, 0x12u);
      v14 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 152);
      v16 = a2 + 152;
      v15 = v17;
      if (*(v16 + 23) >= 0)
      {
        v15 = v16;
      }

      v18 = *(v16 + 200);
      v19 = *(v16 + 232);
      v20 = *(v16 + 32);
      v21 = *(v16 + 40);
      v22 = *(v16 + 48);
      v23 = *(v16 + 56);
      v24 = *(v16 + 64);
      v25 = *(v16 + 168);
      *buf = 68292355;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 2081;
      *&v284[12] = "warning";
      *&v284[20] = 2081;
      *&v284[22] = "igAlertFlow";
      *&v284[30] = 2081;
      v285 = "igdisp";
      *v286 = 2081;
      *&v286[2] = "display";
      *&v286[10] = 2081;
      *&v286[12] = v15;
      *&v286[20] = 1025;
      *&v286[22] = v18;
      *&v286[26] = 1025;
      *&v286[28] = v19;
      *v287 = 2049;
      *&v287[2] = v20;
      *&v287[10] = 2049;
      *&v287[12] = v21;
      *&v287[20] = 2049;
      *&v287[22] = v22;
      v288 = 2049;
      v289 = v23;
      v290 = 2049;
      v291 = v24;
      v292 = 2049;
      v293 = v25;
      v26 = "{msg%{public}.0s:duplicate alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_177:
      v72 = v14;
      v73 = 140;
LABEL_178:
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, v26, buf, v73);
      return;
    }

    return;
  }

  v27 = sub_10008BCD8(*(a2 + 180));
  v28 = v27;
  if (v27 != 1)
  {
    v60 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 1025;
      *&v284[12] = v28;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,invalid purpose, purpose:%{private}d}", buf, 0x18u);
      v60 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v63 = *(a2 + 152);
      v62 = a2 + 152;
      v61 = v63;
      if (*(v62 + 23) >= 0)
      {
        v61 = v62;
      }

      v64 = *(v62 + 200);
      v65 = *(v62 + 232);
      v66 = *(v62 + 32);
      v67 = *(v62 + 40);
      v68 = *(v62 + 48);
      v69 = *(v62 + 56);
      v70 = *(v62 + 64);
      v71 = *(v62 + 168);
      *buf = 68292611;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 2081;
      *&v284[12] = "warning";
      *&v284[20] = 2081;
      *&v284[22] = "igAlertFlow";
      *&v284[30] = 2081;
      v285 = "igdisp";
      *v286 = 2081;
      *&v286[2] = "display";
      *&v286[10] = 2081;
      *&v286[12] = v61;
      *&v286[20] = 1025;
      *&v286[22] = v64;
      *&v286[26] = 1025;
      *&v286[28] = v65;
      *v287 = 2049;
      *&v287[2] = v66;
      *&v287[10] = 2049;
      *&v287[12] = v67;
      *&v287[20] = 2049;
      *&v287[22] = v68;
      v288 = 2049;
      v289 = v69;
      v290 = 2049;
      v291 = v70;
      v292 = 2049;
      v293 = v71;
      v294 = 1025;
      LODWORD(v295) = v28;
      v26 = "{msg%{public}.0s:invalid purpose, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, purpose:%{private}d}";
      v72 = v60;
      v73 = 146;
      goto LABEL_178;
    }

    return;
  }

  if (*(a2 + 312) == -1024 && (SACommonUtils::isLivabiltyEnabled(v27) & 1) == 0)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v92 = *(a2 + 152);
    v91 = a2 + 152;
    v90 = v92;
    if (*(v91 + 23) >= 0)
    {
      v90 = v91;
    }

    v93 = *(v91 + 200);
    v94 = *(v91 + 232);
    v95 = *(v91 + 32);
    v96 = *(v91 + 40);
    v97 = *(v91 + 48);
    v98 = *(v91 + 56);
    v99 = *(v91 + 64);
    v100 = *(v91 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "warning";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v90;
    *&v286[20] = 1025;
    *&v286[22] = v93;
    *&v286[26] = 1025;
    *&v286[28] = v94;
    *v287 = 2049;
    *&v287[2] = v95;
    *&v287[10] = 2049;
    *&v287[12] = v96;
    *&v287[20] = 2049;
    *&v287[22] = v97;
    v288 = 2049;
    v289 = v98;
    v290 = 2049;
    v291 = v99;
    v292 = 2049;
    v293 = v100;
    v26 = "{msg%{public}.0s:livability not enabled, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_177;
  }

  *v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  *v251 = 0u;
  *v248 = 0u;
  *v249 = 0u;
  sub_100077350(a2, v248);
  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v30 = &v249[1];
    if (v250 < 0)
    {
      v30 = v249[1];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post, text:%{private, location:escape_only}s}", buf, 0x1Cu);
    v29 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v31 = a2 + 152;
    }

    v32 = *(a2 + 352);
    v33 = *(a2 + 384);
    v34 = *(a2 + 184);
    v35 = *(a2 + 192);
    v36 = *(a2 + 200);
    v37 = *(a2 + 208);
    v38 = *(a2 + 216);
    v39 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "post";
    *&v286[10] = 2081;
    *&v286[12] = v31;
    *&v286[20] = 1025;
    *&v286[22] = v32;
    *&v286[26] = 1025;
    *&v286[28] = v33;
    *v287 = 2049;
    *&v287[2] = v34;
    *&v287[10] = 2049;
    *&v287[12] = v35;
    *&v287[20] = 2049;
    *&v287[22] = v36;
    v288 = 2049;
    v289 = v37;
    v290 = 2049;
    v291 = v38;
    v292 = 2049;
    v293 = v39;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:posting alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  v40 = HIBYTE(v250);
  v41 = SHIBYTE(v250);
  if (v250 < 0)
  {
    v40 = v250;
  }

  if (v40)
  {
    v42 = HIBYTE(v252[0]);
    if (SHIBYTE(v252[0]) < 0)
    {
      v42 = v251[1];
    }

    v43 = SALogObjectGeneral;
    if (v42)
    {
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification}", buf, 0x12u);
        v43 = SALogObjectGeneral;
      }

      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v44)
      {
        v45 = *(a2 + 152);
        if (*(a2 + 175) >= 0)
        {
          v45 = a2 + 152;
        }

        v46 = *(a2 + 352);
        v47 = *(a2 + 384);
        v48 = *(a2 + 184);
        v49 = *(a2 + 192);
        v50 = *(a2 + 200);
        v51 = *(a2 + 208);
        v52 = *(a2 + 216);
        v53 = *(a2 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        *&v284[10] = 2081;
        *&v284[12] = "info";
        *&v284[20] = 2081;
        *&v284[22] = "igAlertFlow";
        *&v284[30] = 2081;
        v285 = "igdisp";
        *v286 = 2081;
        *&v286[2] = "post";
        *&v286[10] = 2081;
        *&v286[12] = v45;
        *&v286[20] = 1025;
        *&v286[22] = v46;
        *&v286[26] = 1025;
        *&v286[28] = v47;
        *v287 = 2049;
        *&v287[2] = v48;
        *&v287[10] = 2049;
        *&v287[12] = v49;
        *&v287[20] = 2049;
        *&v287[22] = v50;
        v288 = 2049;
        v289 = v51;
        v290 = 2049;
        v291 = v52;
        v292 = 2049;
        v293 = v53;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:platform supports unnotification, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
      }

      v54 = [*SAPlatformInfo::instance(v44) isEqualToString:@"iPhone"];
      if (v54)
      {
        v55 = "rich";
      }

      else
      {
        v101 = SAPlatformInfo::instance(v54);
        if (![*v101 isEqualToString:@"Watch"] || *(v101 + 8) != 1)
        {
          goto LABEL_72;
        }

        v55 = "text";
      }

      v56 = [NSString stringWithUTF8String:v55];
      if (v56)
      {
        v57 = sub_100002DB0();
        v58 = -1000.0;
        if (*(v57 + 107) == 1)
        {
          v59 = -1000.0;
          if (*(v57 + 106) == 1)
          {
            v57 = sub_100002DB0();
            v59 = *v57;
            v58 = *(v57 + 1);
          }
        }

        else
        {
          v59 = -1000.0;
        }

        v245 = 0;
        v246 = 0;
        v247 = 0;
        v112 = SASettings::instance(v57);
        (*(*v112 + 112))(v243);
        if (v244 < 0)
        {
          if (v243[1] != 5)
          {
            goto LABEL_89;
          }

          v113 = v243[0];
        }

        else
        {
          if (v244 != 5)
          {
            goto LABEL_89;
          }

          v113 = v243;
        }

        v114 = *v113;
        v115 = *(v113 + 4);
        v116 = v114 == 1429042021 && v115 == 83;
        if (v116)
        {
          if (SHIBYTE(v247) < 0)
          {
            v246 = 15;
            v190 = v245;
          }

          else
          {
            HIBYTE(v247) = 15;
            v190 = &v245;
          }

          strcpy(v190, "Alerta sísmica");
          v118 = v190 + 15;
LABEL_93:
          *v118 = 0;
          if (SHIBYTE(v249[0]) < 0)
          {
            if (v248[1])
            {
              v119 = v248[0];
              goto LABEL_100;
            }
          }

          else if (HIBYTE(v249[0]))
          {
            v119 = v248;
LABEL_100:
            v239 = v119;
            v120 = *(a2 + 175);
            if ((v120 & 0x80u) != 0)
            {
              v120 = *(a2 + 160);
            }

            v116 = v120 == 0;
            v121 = 152;
            if (v116)
            {
              v121 = 8;
            }

            v122 = a2 + v121;
            if (*(v122 + 23) < 0)
            {
              sub_100004CEC(__p, *v122, *(v122 + 8));
            }

            else
            {
              *__p = *v122;
              v242 = *(v122 + 16);
            }

            v123 = HIBYTE(v242);
            if (v242 < 0)
            {
              v123 = __p[1];
            }

            if (v123)
            {
              v236 = v56;
              v237 = [NSMutableDictionary alloc];
              v268[0] = [NSString stringWithUTF8String:"type"];
              v235 = v268[0];
              v269[0] = [NSString stringWithUTF8String:"igneous"];
              v233 = v269[0];
              v231 = [NSString stringWithUTF8String:"subType"];
              v268[1] = v231;
              v269[1] = v56;
              v229 = [NSString stringWithUTF8String:"title"];
              v268[2] = v229;
              v227 = [NSString stringWithUTF8String:v239];
              v269[2] = v227;
              v225 = [NSString stringWithUTF8String:"body"];
              v268[3] = v225;
              if (v250 >= 0)
              {
                v124 = &v249[1];
              }

              else
              {
                v124 = v249[1];
              }

              v223 = [NSString stringWithUTF8String:v124];
              v269[3] = v223;
              v221 = [NSString stringWithUTF8String:"attribution"];
              v268[4] = v221;
              if (SHIBYTE(v252[0]) >= 0)
              {
                v125 = v251;
              }

              else
              {
                v125 = v251[0];
              }

              v270 = [NSString stringWithUTF8String:v125];
              v219 = v270;
              v217 = [NSString stringWithUTF8String:"tone"];
              v268[5] = v217;
              if (v253 >= 0)
              {
                v126 = &v252[1];
              }

              else
              {
                v126 = v252[1];
              }

              v215 = [NSString stringWithUTF8String:v126, &v252[1]];
              v271 = v215;
              v213 = [NSString stringWithUTF8String:"epiLat"];
              v268[6] = v213;
              v211 = [NSNumber numberWithDouble:*(a2 + 240)];
              v272 = v211;
              v209 = [NSString stringWithUTF8String:"epiLon"];
              v268[7] = v209;
              v207 = [NSNumber numberWithDouble:*(a2 + 248)];
              v273 = v207;
              v205 = [NSString stringWithUTF8String:"userLat"];
              v268[8] = v205;
              v203 = [NSNumber numberWithDouble:v59];
              v274 = v203;
              v201 = [NSString stringWithUTF8String:"userLon"];
              v268[9] = v201;
              v199 = [NSNumber numberWithDouble:v58];
              v275 = v199;
              v198 = [NSString stringWithUTF8String:"radius"];
              v268[10] = v198;
              v197 = [NSNumber numberWithDouble:*(a2 + 296)];
              v276 = v197;
              v196 = [NSString stringWithUTF8String:"isSilent"];
              v268[11] = v196;
              v277 = &__kCFBooleanFalse;
              v195 = [NSString stringWithUTF8String:"interface"];
              v268[12] = v195;
              v194 = [NSNumber numberWithInt:*(a2 + 352)];
              v278 = v194;
              v193 = [NSString stringWithUTF8String:"level"];
              v268[13] = v193;
              v192 = [NSNumber numberWithInt:v254];
              v279 = v192;
              v127 = [NSString stringWithUTF8String:"uid"];
              v268[14] = v127;
              if (v242 >= 0)
              {
                v128 = __p;
              }

              else
              {
                v128 = __p[0];
              }

              v129 = [NSString stringWithUTF8String:v128];
              v280 = v129;
              v130 = [NSString stringWithUTF8String:"serverTs"];
              v268[15] = v130;
              v131 = [NSNumber numberWithDouble:*(a2 + 192)];
              v281 = v131;
              v132 = [NSString stringWithUTF8String:"isRelayed"];
              v268[16] = v132;
              v282 = &__kCFBooleanFalse;
              v133 = [NSDictionary dictionaryWithObjects:v269 forKeys:v268 count:17];
              v238 = [v237 initWithDictionary:v133];

              v135 = *(a1 + 32);
              v136 = v238;
              if (v135)
              {
                v137 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  v138 = *(a2 + 152);
                  if (*(a2 + 175) >= 0)
                  {
                    v138 = a2 + 152;
                  }

                  v139 = *(a2 + 352);
                  v140 = *(a2 + 384);
                  v141 = *(a2 + 184);
                  v142 = *(a2 + 192);
                  v143 = *(a2 + 200);
                  v144 = *(a2 + 208);
                  v145 = *(a2 + 216);
                  v146 = *(a2 + 320);
                  *buf = 68292355;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  *&v284[10] = 2081;
                  *&v284[12] = "info";
                  *&v284[20] = 2081;
                  *&v284[22] = "igAlertFlow";
                  *&v284[30] = 2081;
                  v285 = "igdisp";
                  *v286 = 2081;
                  *&v286[2] = "post";
                  *&v286[10] = 2081;
                  *&v286[12] = v138;
                  *&v286[20] = 1025;
                  *&v286[22] = v139;
                  *&v286[26] = 1025;
                  *&v286[28] = v140;
                  *v287 = 2049;
                  *&v287[2] = v141;
                  *&v287[10] = 2049;
                  *&v287[12] = v142;
                  *&v287[20] = 2049;
                  *&v287[22] = v143;
                  v288 = 2049;
                  v289 = v144;
                  v290 = 2049;
                  v291 = v145;
                  v292 = 2049;
                  v293 = v146;
                  _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending to userNotification, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                  v135 = *(a1 + 32);
                }

                v134 = (*(*v135 + 16))(v135, v238);
              }

              if ([*SAPlatformInfo::instance(v134) isEqualToString:@"iPhone"] && (v147 = *(a1 + 48)) != 0 && ((*(*v147 + 32))(v147) & 1) != 0)
              {
                if (v254 == 2)
                {
                  v148 = [NSMutableDictionary alloc];
                  v234 = [NSString stringWithUTF8String:"type"];
                  v255 = v234;
                  *buf = [NSString stringWithUTF8String:"igneous"];
                  v232 = *buf;
                  v256 = [NSString stringWithUTF8String:"subType"];
                  v230 = v256;
                  v228 = [NSString stringWithUTF8String:"text"];
                  *v284 = v228;
                  v226 = [NSString stringWithUTF8String:"title"];
                  v257 = v226;
                  v240 = [NSString stringWithUTF8String:v239];
                  *&v284[8] = v240;
                  v224 = [NSString stringWithUTF8String:"body"];
                  v258 = v224;
                  if (v250 >= 0)
                  {
                    v149 = &v249[1];
                  }

                  else
                  {
                    v149 = v249[1];
                  }

                  *&v284[16] = [NSString stringWithUTF8String:v149];
                  v222 = *&v284[16];
                  v220 = [NSString stringWithUTF8String:"attribution"];
                  v259 = v220;
                  if (SHIBYTE(v252[0]) >= 0)
                  {
                    v150 = v251;
                  }

                  else
                  {
                    v150 = v251[0];
                  }

                  v218 = [NSString stringWithUTF8String:v150];
                  *&v284[24] = v218;
                  v216 = [NSString stringWithUTF8String:"isSilent"];
                  v260 = v216;
                  v285 = &__kCFBooleanFalse;
                  v214 = [NSString stringWithUTF8String:"level"];
                  v261 = v214;
                  v212 = [NSNumber numberWithInt:v254];
                  *v286 = v212;
                  v210 = [NSString stringWithUTF8String:"uid"];
                  v262 = v210;
                  if (v242 >= 0)
                  {
                    v151 = __p;
                  }

                  else
                  {
                    v151 = __p[0];
                  }

                  v208 = [NSString stringWithUTF8String:v151];
                  *&v286[8] = v208;
                  v206 = [NSString stringWithUTF8String:"tone"];
                  v263 = v206;
                  if (v253 >= 0)
                  {
                    v152 = v191;
                  }

                  else
                  {
                    v152 = v252[1];
                  }

                  v204 = [NSString stringWithUTF8String:v152];
                  *&v286[16] = v204;
                  v202 = [NSString stringWithUTF8String:"isSilent"];
                  v264 = v202;
                  *&v286[24] = &__kCFBooleanFalse;
                  v200 = [NSString stringWithUTF8String:"interface"];
                  v265 = v200;
                  v153 = [NSNumber numberWithInt:*(a2 + 352)];
                  *v287 = v153;
                  v154 = [NSString stringWithUTF8String:"serverTs"];
                  v266 = v154;
                  v155 = [NSNumber numberWithDouble:*(a2 + 192)];
                  *&v287[8] = v155;
                  v156 = [NSString stringWithUTF8String:"isRelayed"];
                  v267 = v156;
                  *&v287[16] = &__kCFBooleanTrue;
                  v157 = [NSDictionary dictionaryWithObjects:buf forKeys:&v255 count:13];
                  v158 = [v148 initWithDictionary:v157];

                  (*(**(a1 + 48) + 16))(*(a1 + 48), v158);
                  v136 = v238;
                }
              }

              else
              {
                v159 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification,skipForwarding}", buf, 0x12u);
                  v159 = SALogObjectGeneral;
                }

                if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                {
                  v160 = *(a2 + 152);
                  if (*(a2 + 175) >= 0)
                  {
                    v160 = a2 + 152;
                  }

                  v161 = *(a2 + 352);
                  v162 = *(a2 + 384);
                  v163 = *(a2 + 184);
                  v164 = *(a2 + 192);
                  v165 = *(a2 + 200);
                  v166 = *(a2 + 208);
                  v167 = *(a2 + 216);
                  v168 = *(a2 + 320);
                  *buf = 68292355;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  *&v284[10] = 2081;
                  *&v284[12] = "warning";
                  *&v284[20] = 2081;
                  *&v284[22] = "igAlertFlow";
                  *&v284[30] = 2081;
                  v285 = "igdisp";
                  *v286 = 2081;
                  *&v286[2] = "post";
                  *&v286[10] = 2081;
                  *&v286[12] = v160;
                  *&v286[20] = 1025;
                  *&v286[22] = v161;
                  *&v286[26] = 1025;
                  *&v286[28] = v162;
                  *v287 = 2049;
                  *&v287[2] = v163;
                  *&v287[10] = 2049;
                  *&v287[12] = v164;
                  *&v287[20] = 2049;
                  *&v287[22] = v165;
                  v288 = 2049;
                  v289 = v166;
                  v290 = 2049;
                  v291 = v167;
                  v292 = 2049;
                  v293 = v168;
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip forwarding to watch, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                }
              }

              v56 = v236;
            }

            else
            {
              v169 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                v170 = *(a2 + 152);
                if (*(a2 + 175) >= 0)
                {
                  v170 = a2 + 152;
                }

                v171 = *(a2 + 352);
                v172 = *(a2 + 384);
                v173 = *(a2 + 184);
                v174 = *(a2 + 192);
                v175 = *(a2 + 200);
                v176 = *(a2 + 208);
                v177 = *(a2 + 216);
                v178 = *(a2 + 320);
                *buf = 68292355;
                *&buf[4] = 0;
                *v284 = 2082;
                *&v284[2] = "";
                *&v284[10] = 2081;
                *&v284[12] = "warning";
                *&v284[20] = 2081;
                *&v284[22] = "igAlertFlow";
                *&v284[30] = 2081;
                v285 = "igdisp";
                *v286 = 2081;
                *&v286[2] = "post";
                *&v286[10] = 2081;
                *&v286[12] = v170;
                *&v286[20] = 1025;
                *&v286[22] = v171;
                *&v286[26] = 1025;
                *&v286[28] = v172;
                *v287 = 2049;
                *&v287[2] = v173;
                *&v287[10] = 2049;
                *&v287[12] = v174;
                *&v287[20] = 2049;
                *&v287[22] = v175;
                v288 = 2049;
                v289 = v176;
                v290 = 2049;
                v291 = v177;
                v292 = 2049;
                v293 = v178;
                _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid uid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
              }
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(__p[0]);
            }

            if (v244 < 0)
            {
              operator delete(v243[0]);
            }

            if (SHIBYTE(v247) < 0)
            {
              operator delete(v245);
            }

            goto LABEL_163;
          }

          v119 = &v245;
          if (v247 < 0)
          {
            v119 = v245;
          }

          goto LABEL_100;
        }

LABEL_89:
        if (SHIBYTE(v247) < 0)
        {
          v246 = 16;
          v117 = v245;
        }

        else
        {
          HIBYTE(v247) = 16;
          v117 = &v245;
        }

        *v117 = *"Earthquake Alert";
        v118 = v117 + 1;
        goto LABEL_93;
      }

LABEL_72:
      v102 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification,not supported platform}", buf, 0x12u);
        v102 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = *(a2 + 152);
        if (*(a2 + 175) >= 0)
        {
          v103 = a2 + 152;
        }

        v104 = *(a2 + 352);
        v105 = *(a2 + 384);
        v106 = *(a2 + 184);
        v107 = *(a2 + 192);
        v108 = *(a2 + 200);
        v109 = *(a2 + 208);
        v110 = *(a2 + 216);
        v111 = *(a2 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        *&v284[10] = 2081;
        *&v284[12] = "warning";
        *&v284[20] = 2081;
        *&v284[22] = "igAlertFlow";
        *&v284[30] = 2081;
        v285 = "igdisp";
        *v286 = 2081;
        *&v286[2] = "post";
        *&v286[10] = 2081;
        *&v286[12] = v103;
        *&v286[20] = 1025;
        *&v286[22] = v104;
        *&v286[26] = 1025;
        *&v286[28] = v105;
        *v287 = 2049;
        *&v287[2] = v106;
        *&v287[10] = 2049;
        *&v287[12] = v107;
        *&v287[20] = 2049;
        *&v287[22] = v108;
        v288 = 2049;
        v289 = v109;
        v290 = 2049;
        v291 = v110;
        v292 = 2049;
        v293 = v111;
        v87 = "{msg%{public}.0s:not supported platform, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        v88 = v102;
        v89 = 140;
LABEL_78:
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, v87, buf, v89);
        goto LABEL_163;
      }

      goto LABEL_163;
    }
  }

  else
  {
    v43 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v74 = v249[1];
    v75 = v251[0];
    if (v41 >= 0)
    {
      v74 = &v249[1];
    }

    if (SHIBYTE(v252[0]) >= 0)
    {
      v75 = v251;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = v74;
    *&v284[20] = 2081;
    *&v284[22] = v75;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,invalid alert, alert:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s}", buf, 0x26u);
    v43 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v76 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v76 = a2 + 152;
    }

    v77 = *(a2 + 352);
    v78 = *(a2 + 384);
    v79 = *(a2 + 184);
    v80 = *(a2 + 192);
    v81 = *(a2 + 200);
    v82 = *(a2 + 208);
    v83 = *(a2 + 216);
    v84 = *(a2 + 320);
    if (v250 >= 0)
    {
      v85 = &v249[1];
    }

    else
    {
      v85 = v249[1];
    }

    v86 = v251;
    if (SHIBYTE(v252[0]) < 0)
    {
      v86 = v251[0];
    }

    *buf = 68292867;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "warning";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "post";
    *&v286[10] = 2081;
    *&v286[12] = v76;
    *&v286[20] = 1025;
    *&v286[22] = v77;
    *&v286[26] = 1025;
    *&v286[28] = v78;
    *v287 = 2049;
    *&v287[2] = v79;
    *&v287[10] = 2049;
    *&v287[12] = v80;
    *&v287[20] = 2049;
    *&v287[22] = v81;
    v288 = 2049;
    v289 = v82;
    v290 = 2049;
    v291 = v83;
    v292 = 2049;
    v293 = v84;
    v294 = 2081;
    v295 = v85;
    v296 = 2081;
    v297 = v86;
    v87 = "{msg%{public}.0s:invalid alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, alert:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s}";
    v88 = v43;
    v89 = 160;
    goto LABEL_78;
  }

LABEL_163:
  if (SHIBYTE(v253) < 0)
  {
    operator delete(v252[1]);
  }

  if (SHIBYTE(v252[0]) < 0)
  {
    operator delete(v251[0]);
  }

  if (SHIBYTE(v250) < 0)
  {
    operator delete(v249[1]);
  }

  if (SHIBYTE(v249[0]) < 0)
  {
    operator delete(v248[0]);
  }

  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,done}", buf, 0x12u);
    v14 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v181 = *(a2 + 152);
    v180 = a2 + 152;
    v179 = v181;
    if (*(v180 + 23) >= 0)
    {
      v179 = v180;
    }

    v182 = *(v180 + 200);
    v183 = *(v180 + 232);
    v184 = *(v180 + 32);
    v185 = *(v180 + 40);
    v186 = *(v180 + 48);
    v187 = *(v180 + 56);
    v188 = *(v180 + 64);
    v189 = *(v180 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v179;
    *&v286[20] = 1025;
    *&v286[22] = v182;
    *&v286[26] = 1025;
    *&v286[28] = v183;
    *v287 = 2049;
    *&v287[2] = v184;
    *&v287[10] = 2049;
    *&v287[12] = v185;
    *&v287[20] = 2049;
    *&v287[22] = v186;
    v288 = 2049;
    v289 = v187;
    v290 = 2049;
    v291 = v188;
    v292 = 2049;
    v293 = v189;
    v26 = "{msg%{public}.0s:display done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_177;
  }
}

void sub_1000AF1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_100078598(&a60);
  _Unwind_Resume(a1);
}

void SACompanionDetector::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 160) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000AF6BC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10001E0C0(va);
  operator delete();
}

void *sub_1000AF714(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10001EF44(v7, a3);
  sub_1000AF7EC(a1, v5, v7);
  sub_10001E0C0(v7);
  *a1 = off_10013F558;

  return a1;
}

void sub_1000AF7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001E0C0(va);

  _Unwind_Resume(a1);
}

void *sub_1000AF7EC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_10013F5A8;
  v6 = v5;
  a1[1] = v6;
  sub_10001EF44((a1 + 2), a3);

  return a1;
}

uint64_t sub_1000AF870(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  return a1;
}

void sub_1000AF8BC(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  operator delete();
}

void SACoreLocation::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 8) == 1)
  {
    sub_1000AF9D4();
  }

  sub_1000AFAE0();
}

void sub_1000AFAA8(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10008B31C(va1);
  operator delete();
}

void sub_1000AFBB4(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10008B31C(va1);
  operator delete();
}

void SANetworkReachability::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 74) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000AFDEC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A2500(va);
  operator delete();
}

uint64_t sub_1000AFE5C(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1000AFEB8(uint64_t a1, uint64_t a2)
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

void SALogInit(void)
{
  if (!SALogObjectGeneral)
  {
    v0 = os_log_create("com.apple.safetyalertsd", "general");
    v1 = SALogObjectGeneral;
    SALogObjectGeneral = v0;
  }

  if (!SALogObjectWarning)
  {
    SALogObjectWarning = os_log_create("com.apple.safetyalertsd", "warning");

    _objc_release_x1();
  }
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterfaceProd::SafetyAlertsDaemonInterfaceProd(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1E08(v7, a3);
  SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(a1, v5, v7);
  sub_1000A242C(&v16);
  sub_1000A222C(&v15);
  sub_1000A22AC(&v14);
  sub_10000F274(&v13);
  sub_10001E0C0(&v12);
  sub_10000F274(&v11);
  sub_1000A232C(&v10);
  sub_1000A23AC(&v9);
  sub_10000F274(&v8);
  sub_1000A1D88(v7);
  *a1 = off_10013F620;

  return a1;
}

void sub_1000B00D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10009D160(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000B0100(uint64_t a1)
{
  *a1 = off_10013F668;

  sub_1000A242C(a1 + 296);
  sub_1000A222C(a1 + 264);
  sub_1000A22AC(a1 + 232);
  sub_10000F274(a1 + 200);
  sub_10001E0C0(a1 + 168);
  sub_10000F274(a1 + 136);
  sub_1000A232C(a1 + 104);
  sub_1000A23AC(a1 + 72);
  sub_10000F274(a1 + 40);
  sub_1000A1D88(a1 + 8);
  return a1;
}

void sub_1000B01A4(uint64_t a1)
{
  sub_1000B0100(a1);

  operator delete();
}

void sub_1000B01DC(void *a1, void *a2)
{
  original = a2;
  string = xpc_dictionary_get_string(original, "message");
  if ([*SAPlatformInfo::instance(string) isEqualToString:@"iPhone"] && !strncmp(string, "userTapped", 0xAuLL))
  {
    v18 = xpc_dictionary_get_string(original, "WeaMessage");
    if (a1[4])
    {
      sub_1000B6218((a1 + 1), v18);
    }

    goto LABEL_41;
  }

  if (!strncmp(string, "networkChanged", 0xEuLL))
  {
    v8 = a1[8];
    if (!v8)
    {
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (!strncmp(string, "testMessage", 0xBuLL))
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].__r_.__value_.__r.__words[0] = 68289283;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "testMessage";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v16 = sub_1000175DC();
    sub_1000176C8(v16, original);
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    goto LABEL_41;
  }

  if (!strncmp(string, "isEnabledSync", 0xDuLL) || !strncmp(string, "isEnabled", 9uLL))
  {
    v9 = xpc_dictionary_create_reply(original);
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].__r_.__value_.__r.__words[0] = 68289283;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    if (v9)
    {
      v11 = a1[12];
      if (v11)
      {
        v12 = (*(*v11 + 48))(v11);
        v13 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289282;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1026;
          HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,isSafetyAlertsEnabled(), isEnabled:%{public}hhd}", buf, 0x18u);
        }

        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      xpc_dictionary_set_uint64(v9, "isEnabledResult", v14);
      xpc_dictionary_send_reply();
    }

    goto LABEL_40;
  }

  if (strncmp(string, "significantEvent", 0x10uLL))
  {
    if (!strncmp(string, "fetchAvailableAlertTypes", 0x18uLL))
    {
      xdict = xpc_dictionary_create_reply(original);
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v22 = xdict;
      if (xdict)
      {
        if (a1[16])
        {
          value[0] = 0;
          v68 = objc_alloc_init(NSMutableDictionary);
          sub_1000B1344((a1 + 13), v68, value);
          v23 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289539;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2113;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v68;
            WORD2(buf[1].__r_.__value_.__r.__words[0]) = 1025;
            *(buf[1].__r_.__value_.__r.__words + 6) = value[0];
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,onAvailableAlertSettingsRequest(), availableAlerts:%{private, location:escape_only}@, initialized:%{private}hhd}", buf, 0x22u);
          }

          xpc_dictionary_set_BOOL(xdict, "isInitialized", value[0]);
          if (value[0])
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v24 = v68;
            v25 = [v24 countByEnumeratingWithState:&v71 objects:v95 count:16];
            if (v25)
            {
              v26 = *v72;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v72 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v71 + 1) + 8 * i);
                  v29 = xpc_dictionary_create(0, 0, 0);
                  v30 = [v24 objectForKeyedSubscript:v28];
                  v31 = [v30 objectForKeyedSubscript:@"defaultValue"];

                  xpc_dictionary_set_BOOL(v29, "defaultValue", [v31 BOOLValue]);
                  v32 = [v24 objectForKeyedSubscript:v28];
                  v33 = [v32 objectForKeyedSubscript:@"preferencesKey"];

                  v34 = v33;
                  xpc_dictionary_set_string(v29, "preferencesKey", [v33 UTF8String]);
                  v35 = v28;
                  xpc_dictionary_set_value(xdict, [v28 UTF8String], v29);
                }

                v25 = [v24 countByEnumeratingWithState:&v71 objects:v95 count:16];
              }

              while (v25);
            }
          }
        }

        v22 = xdict;
        xpc_dictionary_send_reply();
      }

      goto LABEL_41;
    }

    if (!strncmp(string, "settingsChanged", 0xFuLL))
    {
      v36 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,processMessage, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v37 = 17;
    }

    else
    {
      if (!strncmp(string, "saDelivery", 0xAuLL))
      {
        v38 = xpc_dictionary_get_BOOL(original, "Enabled");
        v39 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289539;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "saDelivery";
          WORD2(buf[1].__r_.__value_.__r.__words[0]) = 1026;
          *(buf[1].__r_.__value_.__r.__words + 6) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enhancedDelivery, message:%{private, location:escape_only}s, isEnabled:%{public}hhd}", buf, 0x22u);
        }

        v40 = a1[24];
        if (v40)
        {
          buf[0].__r_.__value_.__s.__data_[0] = v38;
          (*(*v40 + 48))(v40, buf);
        }

        goto LABEL_41;
      }

      if (strncmp(string, "enhancedDeliveryPageVisited", 0x1BuLL))
      {
        if (!strncmp(string, "saIgneousTestState", 0x12uLL))
        {
          v42 = xpc_dictionary_create_reply(original);
          v43 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289283;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
            *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,Igneous test, message:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          if (v42)
          {
            v89 = 0;
            v88 = 0u;
            memset(buf, 0, sizeof(buf));
            v44 = a1[32];
            if (v44)
            {
              (*(*v44 + 48))(value);
              sub_1000B13D0(buf, value);
              sub_10002F7E4(value);
              v45 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                data = &buf[1];
                if ((buf[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  data = buf[1].__r_.__value_.__l.__data_;
                }

                *value = 68290050;
                *&value[4] = 0;
                v77 = 2082;
                v78 = "";
                v79 = 2082;
                v80 = data;
                v81 = 1026;
                v82 = v94;
                v83 = 2050;
                v84 = v90;
                v85 = 2050;
                v86 = v91;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousStatusInfoForTestAlert, Uid:%{public, location:escape_only}s, ErrorCode:%{public}d, originatedLatency:%{public}0.3f, ingressLatency:%{public}0.3f}", value, 0x36u);
              }

              if ((buf[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &buf[1];
              }

              else
              {
                v47 = buf[1].__r_.__value_.__l.__data_;
              }
            }

            else
            {
              v47 = &buf[1];
            }

            xpc_dictionary_set_string(v42, "igneousStateInfoUID", v47);
            if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = buf;
            }

            else
            {
              v65 = buf[0].__r_.__value_.__r.__words[0];
            }

            xpc_dictionary_set_string(v42, "igneousStateInfoChannel", v65);
            if (v89 >= 0)
            {
              v66 = &v88;
            }

            else
            {
              v66 = v88;
            }

            xpc_dictionary_set_string(v42, "weaText", v66);
            xpc_dictionary_set_int64(v42, "igneousStateInfoError", v94);
            xpc_dictionary_set_double(v42, "igneousStateInfoOriginiatedLatency", v90);
            xpc_dictionary_set_double(v42, "weaAlertReceivedTs", v92);
            xpc_dictionary_set_double(v42, "igneousAlertReceivedTs", v93);
            xpc_dictionary_set_double(v42, "igneousStateInfoIngressLatency", v91);
            xpc_dictionary_send_reply();
            sub_10002F7E4(buf);
          }

          goto LABEL_41;
        }

        if (strncmp(string, "saIgneousEnableState", 0x14uLL))
        {
          if (!strncmp(string, "saUiUserTap", 0xBuLL))
          {
            v58 = xpc_dictionary_get_string(original, "userTappedUid");
            v59 = xpc_dictionary_get_double(original, "userTappedTsSeconds");
            v60 = xpc_dictionary_get_double(original, "userSnapshotCompleteTsSeconds");
            if (v58)
            {
              v61 = *&v60;
              v62 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                buf[0].__r_.__value_.__r.__words[0] = 68289795;
                LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
                *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
                *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v58;
                WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2049;
                *(buf[1].__r_.__value_.__r.__words + 6) = v59;
                HIWORD(buf[1].__r_.__value_.__r.__words[1]) = 2049;
                buf[1].__r_.__value_.__r.__words[2] = v61;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,userTappedOnUI, uid:%{private, location:escape_only}s, userTappedTs:%{private}.1f, snapshotCompleteTsSeconds:%{private}.1f}", buf, 0x30u);
              }

              v63 = strlen(v58);
              std::string::__init(buf, v58, v63);
              v75 = v61;
              *value = v59;
              v64 = a1[40];
              if (!v64)
              {
                sub_1000053C4();
              }

              (*(*v64 + 48))(v64, buf, value, &v75);
              if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            v4 = SALogObjectGeneral;
            v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            if (!string)
            {
              if (!v5)
              {
                goto LABEL_41;
              }

              buf[0].__r_.__value_.__r.__words[0] = 68289026;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              v6 = "{msg%{public}.0s:#daemonInterfaceProd,unknownMessage,nil}";
              v7 = v4;
              v20 = 18;
              goto LABEL_37;
            }

            if (v5)
            {
              buf[0].__r_.__value_.__r.__words[0] = 68289283;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
              *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
              v6 = "{msg%{public}.0s:#daemonInterfaceProd,unknownMessage, message:%{private, location:escape_only}s}";
              v7 = v4;
LABEL_36:
              v20 = 28;
LABEL_37:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v20);
              goto LABEL_41;
            }
          }

          goto LABEL_41;
        }

        v9 = xpc_dictionary_create_reply(original);
        v48 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].__r_.__value_.__r.__words[0] = 68289283;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
          WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
          *(&buf[0].__r_.__value_.__r.__words[2] + 4) = string;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enablement, message:%{private, location:escape_only}s}", buf, 0x1Cu);
        }

        if (v9)
        {
          v49 = a1[36];
          if (v49)
          {
            v50 = (*(*v49 + 48))(v49);
            v51 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].__r_.__value_.__r.__words[0] = 68290819;
              LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
              *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
              WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v50 & 1;
              LOWORD(buf[1].__r_.__value_.__l.__data_) = 1025;
              *&buf[1].__r_.__value_.__s.__data_[2] = (v50 >> 8) & 1;
              HIWORD(buf[1].__r_.__value_.__r.__words[0]) = 1025;
              LODWORD(buf[1].__r_.__value_.__r.__words[1]) = BYTE3(v50) & 1;
              WORD2(buf[1].__r_.__value_.__r.__words[1]) = 1025;
              *(&buf[1].__r_.__value_.__r.__words[1] + 6) = WORD1(v50) & 1;
              WORD1(buf[1].__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(buf[1].__r_.__value_.__r.__words[2]) = BYTE4(v50) & 1;
              LOWORD(v88) = 1025;
              *(&v88 + 2) = (v50 >> 40) & 1;
              WORD3(v88) = 1025;
              DWORD2(v88) = HIWORD(v50) & 1;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousEnablementStateInfo, inCoverageRegion:%{private}hhd, inSupportedCountry:%{private}hhd, isInMagnetMode:%{private}hhd, isUserOptedIn:%{private}hhd, isEnabled:%{private}hhd, isEmergencyAlertEnabled:%{private}hhd, isMotionHarvestAllowed:%{private}hhd}", buf, 0x3Cu);
            }

            v52 = BYTE6(v50);
            v53 = BYTE5(v50);
            v54 = HIDWORD(v50) & 0xFFFFFF;
            v55 = v50 >> 24;
            v56 = v50 >> 16;
            v57 = v50 >> 8;
          }

          else
          {
            v52 = 0;
            v53 = 0;
            LOBYTE(v54) = 0;
            LOBYTE(v55) = 0;
            LOBYTE(v56) = 0;
            LOBYTE(v57) = 0;
            LOBYTE(v50) = 0;
          }

          xpc_dictionary_set_BOOL(v9, "saEnablementStateInCountry", v57 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateInCoverageArea", v50 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateInMagnetMode", v55 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateOptedIn", v56 & 1);
          xpc_dictionary_set_BOOL(v9, "saEnablementStateEnabled", v54 & 1);
          xpc_dictionary_set_BOOL(v9, "saEmergencyAlertSwitchEnabled", v53 & 1);
          xpc_dictionary_set_BOOL(v9, "saMotionHarvestAllowed", v52 & 1);
          xpc_dictionary_send_reply();
          v67 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].__r_.__value_.__r.__words[0] = 68289026;
            LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
            *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,igneousEnablementStateInfo}", buf, 0x12u);
          }
        }

LABEL_40:

        goto LABEL_41;
      }

      v41 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].__r_.__value_.__r.__words[0] = 68289283;
        LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
        *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
        *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "saDelivery";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceProd,enhancedDeliveryPageVisited, message:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      if (!a1[28])
      {
        goto LABEL_41;
      }

      v37 = 25;
    }

    v8 = a1[v37 + 3];
    if (!v8)
    {
      sub_1000053C4();
    }

LABEL_19:
    (*(*v8 + 48))();
    goto LABEL_41;
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].__r_.__value_.__r.__words[0] = 68289283;
    LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = "testMessage";
    v6 = "{msg%{public}.0s:#daemonInterfaceProd,significantEvent, message:%{private, location:escape_only}s}";
    v7 = v19;
    goto LABEL_36;
  }

LABEL_41:
}

void sub_1000B1344(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, &v6, &v5);
}

uint64_t sub_1000B13D0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 26);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  return a1;
}

void sub_1000B1488(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000B14D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void *SAPlatformInfo::instance(SAPlatformInfo *this)
{
  if ((atomic_load_explicit(&qword_10014AE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014AE38))
  {
    SAPlatformInfo::SAPlatformInfo(&unk_10014AE28);
    __cxa_guard_release(&qword_10014AE38);
  }

  return &unk_10014AE28;
}

void SAPlatformInfo::SAPlatformInfo(SAPlatformInfo *this)
{
  *this = 0;
  *(this + 12) = 0;
  v2 = MGCopyAnswer();
  v3 = *this;
  *this = v2;

  *(this + 8) = MGGetBoolAnswer();
  *(this + 9) = os_variant_has_internal_content();
  v4 = [*this isEqualToString:@"iPhone"];
  if (v4)
  {
    LOBYTE(v4) = MGGetBoolAnswer();
  }

  *(this + 10) = v4;
  *(this + 11) = 0;
  v5 = MGCopyAnswer();
  v6 = v5;
  if (v5)
  {
    *(this + 12) = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }
}

void *SALockMonitorTest::SALockMonitorTest(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10000F1DC(v10, a3);
  sub_10001EF44(v9, a4);
  sub_1000B1748(a1, v7, v10, v9);
  sub_10001E0C0(v9);
  sub_10000F274(v10);
  *a1 = off_10013F6A8;

  return a1;
}

void sub_1000B1710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

void *sub_1000B1748(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = off_10013F6F8;
  sub_10000F1DC((a1 + 1), a3);
  sub_10001EF44((a1 + 5), a4);
  a1[9] = v7;
  return a1;
}

void sub_1000B17C8(_Unwind_Exception *a1)
{
  sub_10000F274(v2);

  _Unwind_Resume(a1);
}

void sub_1000B17EC(uint64_t a1)
{
  sub_1000B1828(a1);

  operator delete();
}

uint64_t sub_1000B1828(uint64_t a1)
{
  *a1 = off_10013F6F8;

  sub_10001E0C0(a1 + 40);
  sub_10000F274(a1 + 8);
  return a1;
}

double sub_1000B1880(unint64_t a1)
{
  v2 = *&qword_10014AE40;
  if (*&qword_10014AE40 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_10014AE40 = v2;
  }

  return v2 * a1;
}

uint64_t SATime::getTimeUncertaintyBucket(SATime *this)
{
  v1 = *(this + 1);
  if (v1 <= 0.0)
  {
    return 0;
  }

  if (v1 < 1.0)
  {
    return 1;
  }

  if (v1 < 2.0)
  {
    return 2;
  }

  if (v1 < 5.0)
  {
    return 3;
  }

  if (v1 < 10.0)
  {
    return 4;
  }

  if (v1 < 20.0)
  {
    return 5;
  }

  if (v1 < 35.0)
  {
    return 6;
  }

  if (v1 < 50.0)
  {
    return 7;
  }

  if (v1 < 75.0)
  {
    return 8;
  }

  if (v1 < 100.0)
  {
    return 9;
  }

  if (v1 < 200.0)
  {
    return 10;
  }

  if (v1 >= 300.0)
  {
    return 12;
  }

  return 11;
}

uint64_t SAGridMetrics::SAGridMetrics(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = 0;
  *a1 = off_10013F720;
  *(a1 + 8) = v3;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,gridMetric object created}", v6, 0x12u);
  }

  return a1;
}

uint64_t sub_1000B1B64(uint64_t a1)
{
  *a1 = off_10013F720;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,gridMetric release}", v5, 0x12u);
  }

  sub_100015A38(a1 + 56, *(a1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000B1C68(uint64_t a1)
{
  sub_1000B1B64(a1);

  operator delete();
}

void SAGridMetrics::onHistoricalLocationReceivedCb(void *a1, const void **a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a2[1] - *a2) >> 5;
    v20[0] = 68289283;
    v20[1] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2049;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,OnHistoricalLocationReceivedCb, HistoricalLocationCount:%{private}lu}", v20, 0x1Cu);
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = (a1 + 4);
  if (*a2 != v7 && v8 != a2)
  {
    v10 = v7 - v6;
    v11 = a1[6];
    v12 = a1[4];
    if (v11 - v12 < (v7 - v6))
    {
      v13 = v10 >> 5;
      if (v12)
      {
        a1[5] = v12;
        operator delete(v12);
        v11 = 0;
        *v8 = 0;
        a1[5] = 0;
        a1[6] = 0;
      }

      if (!(v13 >> 59))
      {
        v14 = v11 >> 4;
        if (v11 >> 4 <= v13)
        {
          v14 = v10 >> 5;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_100067018((a1 + 4), v15);
      }

      sub_10000509C();
    }

    v16 = a1[5];
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      memmove(a1[4], v6, v7 - v6);
      v19 = &v12[v10];
    }

    else
    {
      v18 = &v6[v17];
      if (v16 != v12)
      {
        memmove(a1[4], v6, v17);
        v16 = a1[5];
      }

      if (v7 != v18)
      {
        memmove(v16, v18, v7 - v18);
      }

      v19 = &v16[v7 - v18];
    }

    a1[5] = v19;
  }
}

void SAGridMetrics::onSlcHistoryCb(void *a1, void *a2)
{
  v3 = (a1 + 7);
  if (a1 + 7 != a2)
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (a1[9])
    {
      v7 = (a1 + 8);
      v6 = a1[8];
      v8 = a1[7];
      a1[7] = a1 + 8;
      *(v6 + 16) = 0;
      a1[8] = 0;
      a1[9] = 0;
      if (*(v8 + 8))
      {
        v9 = *(v8 + 8);
      }

      else
      {
        v9 = v8;
      }

      v21 = (a1 + 7);
      *v22 = v9;
      *&v22[8] = v9;
      if (!v9 || (v10 = sub_100033560(v9), *v22 = v10, v5 == v4))
      {
        v17 = v5;
      }

      else
      {
        do
        {
          v11 = v10;
          v12 = v5[4];
          v9[4] = v12;
          v13 = *v7;
          v14 = (a1 + 8);
          v15 = (a1 + 8);
          if (*v7)
          {
            do
            {
              while (1)
              {
                v14 = v13;
                if (v12 >= v13[4])
                {
                  break;
                }

                v13 = *v13;
                v15 = v14;
                if (!*v14)
                {
                  goto LABEL_14;
                }
              }

              v13 = v13[1];
            }

            while (v13);
            v15 = v14 + 1;
          }

LABEL_14:
          sub_100015ED8(v3, v14, v15, v9);
          if (v11)
          {
            v10 = sub_100033560(v11);
          }

          else
          {
            v10 = 0;
          }

          v16 = v5[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v5[2];
              v18 = *v17 == v5;
              v5 = v17;
            }

            while (!v18);
          }

          if (!v11)
          {
            break;
          }

          v9 = v11;
          v5 = v17;
        }

        while (v17 != v4);
        *v22 = v10;
        *&v22[8] = v11;
      }

      sub_1000B2BA4(&v21);
      v5 = v17;
    }

    if (v5 != v4)
    {
      operator new();
    }
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[9];
    v21 = 68289283;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2049;
    *&v22[12] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,onSlcHistoryCb, fSlcTimesamps:%{private}lu}", &v21, 0x1Cu);
  }
}

void sub_1000B2148(uint64_t a1, double a2, double a3)
{
  v5 = &SALogObjectGeneral;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(a1 + 40) - *(a1 + 32)) >> 5;
    *buf = 68289283;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,run, HistoricalLocationCount:%{private}lu}", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v9 != v8)
  {
    v63 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v9;
        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v9 + 3);
        *buf = 68290051;
        *&buf[4] = 0;
        *v68 = 2082;
        *&v68[2] = "";
        *&v68[10] = 2049;
        *&v68[12] = v14;
        *&v68[20] = 2053;
        *&v68[22] = v15;
        *&v68[30] = 2053;
        v69 = v16;
        v70 = 2049;
        v71 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, Time:%{private}0.3f, Lat:%{sensitive}0.3f, Lon:%{sensitive}0.3f, hAcc:%{private}0.3f}", buf, 0x3Au);
      }

      if (fabs(v9[1]) > 90.0 || fabs(v9[2]) > 180.0 || v9[3] <= 0.0)
      {
        v28 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *v68 = 2082;
          *&v68[2] = "";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric,#warning,skippingInvalidLocation}", buf, 0x12u);
        }
      }

      else
      {
        v18 = v5;
        v19 = fabs(v12) <= 90.0;
        if (fabs(v11) > 180.0)
        {
          v19 = 0;
        }

        v20 = v10 > 0.0 && v19;
        if (v20 && (GEOCalculateDistance(), v21 = v9[3], v22 < v10 + v21 + 300.0))
        {
          if (v21 < v10)
          {
            v12 = v9[1];
            v11 = v9[2];
            v10 = v9[3];
          }

          v29 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric,NoSignificantLocationChange}", buf, 0x12u);
          }
        }

        else
        {
          *v72 = 0;
          v66 = 0.0;
          v23 = sub_10008E020();
          sub_10008EF84(v23, v72, &v66, v9[1], v9[2]);
          GlobalTileIdFromLatLonAndGridSizeInDegrees = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v24, v9[1], v9[2], 0.2, *v72, v66);
          v26 = *v5;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(a1 + 20);
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = GlobalTileIdFromLatLonAndGridSizeInDegrees;
            *&v68[20] = 2049;
            *&v68[22] = v63;
            *&v68[30] = 2049;
            v69 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, curGridId:%{private}lu, prevGridId:%{private}lu, gridTransitionCount:%{private}lu}", buf, 0x30u);
          }

          if (v20)
          {
            if (GlobalTileIdFromLatLonAndGridSizeInDegrees == v63)
            {
              GlobalTileIdFromLatLonAndGridSizeInDegrees = v63;
            }

            else
            {
              ++*(a1 + 20);
            }
          }

          else
          {
            v12 = v9[1];
            v11 = v9[2];
            v10 = v9[3];
          }

          v5 = v18;
          v63 = GlobalTileIdFromLatLonAndGridSizeInDegrees;
        }
      }

      v9 += 4;
    }

    while (v9 != v8);
  }

  v30 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 20);
    *buf = 68289283;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareGridTransitionMetric, gridTransitionCount:%{private}lu}", buf, 0x1Cu);
    v30 = *v5;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 72);
    *buf = 68289795;
    *&buf[4] = 0;
    *v68 = 2082;
    *&v68[2] = "";
    *&v68[10] = 2049;
    *&v68[12] = a2;
    *&v68[20] = 2049;
    *&v68[22] = a3;
    *&v68[30] = 2049;
    v69 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,prepareSLCMetric, startTsSeconds:%{private}lu, endTsSeconds:%{private}lu, slcTimesampsCount:%{private}lu}", buf, 0x30u);
  }

  v33 = *(a1 + 56);
  v34 = (a1 + 64);
  if (v33 != (a1 + 64))
  {
    v65 = 0;
    v64 = 0;
    v35 = 0;
    v36 = (*(a1 + 40) - *(a1 + 32)) >> 5;
    do
    {
      if (v36 <= v35)
      {
        v41 = v35;
      }

      else
      {
        v37 = v34;
        v38 = v35;
        v39 = *v5;
        v40 = v33[4];
        v41 = v35;
        while (1)
        {
          v42 = *(a1 + 32) + 32 * v38;
          v44 = *v42;
          v43 = *(v42 + 8);
          v45 = *(v42 + 16);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v40;
            *&v68[20] = 2049;
            *&v68[22] = v44;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric,, t:%{private}lu, locData.timestamp:%{private}lu}", buf, 0x26u);
            v39 = *v5;
            v40 = v33[4];
          }

          if (v44 + -3.0 < v40 && v44 + 3.0 > v40)
          {
            break;
          }

          v38 = (v41 + 1);
          v41 = v38;
          if (v36 <= v38)
          {
            v41 = v35;
            v34 = v37;
            goto LABEL_58;
          }
        }

        *v72 = 0;
        v66 = 0.0;
        v47 = sub_10008E020();
        v34 = v37;
        sub_10008EF84(v47, v72, &v66, v43, v45);
        v49 = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v48, v43, v45, 0.2, *v72, v66);
        v50 = v49;
        if (v65 == v49)
        {
          v51 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v64;
            *&v68[20] = 2049;
            *&v68[22] = v65;
            *&v68[30] = 2049;
            v69 = v65;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric,no match, totalGridTransition:%{private}lu, curGridId:%{private}lu, prevGridId:%{private}lu}", buf, 0x30u);
          }

          v50 = v65;
        }

        else
        {
          v52 = v64 + 1;
          v53 = *v5;
          ++v64;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289795;
            *&buf[4] = 0;
            *v68 = 2082;
            *&v68[2] = "";
            *&v68[10] = 2049;
            *&v68[12] = v52;
            *&v68[20] = 2049;
            *&v68[22] = v50;
            *&v68[30] = 2049;
            v69 = v65;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gm,prepareSLCMetric, totalGridTransition:%{private}lu, curGridId:%{private}lu, prevGridId:%{private}lu}", buf, 0x30u);
          }
        }

        v65 = v50;
      }

LABEL_58:
      v54 = v33[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v33[2];
          v56 = *v55 == v33;
          v33 = v55;
        }

        while (!v56);
      }

      v35 = v41;
      v33 = v55;
    }

    while (v55 != v34);
    if (v64)
    {
      *(a1 + 24) = v64;
    }
  }

  *buf = _NSConcreteStackBlock;
  *v68 = 3221225472;
  *&v68[8] = sub_1000B2A98;
  *&v68[16] = &unk_10013A308;
  *&v68[24] = a1 + 20;
  AnalyticsSendEventLazy();
  v57 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v58 = *(a1 + 20);
    v59 = *(a1 + 24);
    *v72 = 68289539;
    *&v72[4] = 0;
    *v73 = 2082;
    *&v73[2] = "";
    *&v73[10] = 2049;
    *&v73[12] = v58;
    v74 = 2049;
    v75 = v59;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gm,submitGridMetric, gridTransitions:%{private}lu, slcCount:%{private}lu}", v72, 0x26u);
  }

  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a1 + 32);
  if (*(a1 + 72))
  {
    v60 = *(a1 + 56);
    *(a1 + 56) = v34;
    *(*v34 + 16) = 0;
    *v34 = 0;
    v34[1] = 0;
    if (*(v60 + 8))
    {
      v61 = *(v60 + 8);
    }

    else
    {
      v61 = v60;
    }

    *v72 = a1 + 56;
    *v73 = v61;
    *&v73[8] = v61;
    if (v61)
    {
      *v73 = sub_100033560(v61);
    }

    sub_1000B2BA4(v72);
  }

  *(a1 + 16) = 0;
}

id sub_1000B2A98(uint64_t a1)
{
  v6[0] = @"gridTransitions";
  v1 = a1 + 32;
  v2 = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v6[1] = @"slcCount";
  v7[0] = v2;
  v3 = [NSNumber numberWithUnsignedInt:*(*v1 + 4)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

uint64_t sub_1000B2BA4(uint64_t a1)
{
  sub_100015A38(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100015A38(*a1, v2);
  }

  return a1;
}

void *SALockMonitorProd::SALockMonitorProd(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10000F1DC(v10, a3);
  sub_10001EF44(v9, a4);
  sub_1000B1748(a1, v7, v10, v9);
  sub_10001E0C0(v9);
  sub_10000F274(v10);
  *a1 = off_10013F768;

  return a1;
}

void sub_1000B2CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);

  _Unwind_Resume(a1);
}

void sub_1000B2D00(void *a1)
{
  v2 = sub_100003014();
  v3 = a1[9];
  v10 = _NSConcreteStackBlock;
  *&v11 = 3221225472;
  *(&v11 + 1) = sub_10000313C;
  v12 = &unk_10013F780;
  v13 = a1;
  v14 = v2;
  dispatch_async(v3, &v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100002E2C, kMobileKeyBagLockStatusNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 68289026;
      LOWORD(v11) = 2082;
      *(&v11 + 2) = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,firstUnlockedAtStartup}", &v10, 0x12u);
    }

    v8 = a1[9];
    v10 = _NSConcreteStackBlock;
    *&v11 = 3221225472;
    *(&v11 + 1) = sub_1000B3108;
    v12 = &unk_1001390D0;
    v13 = a1;
    dispatch_async(v8, &v10);
  }

  else
  {
    if (v7)
    {
      v10 = 68289026;
      LOWORD(v11) = 2082;
      *(&v11 + 2) = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,neverUnlockedAtStartup}", &v10, 0x12u);
    }

    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, a1, sub_1000B2F2C, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1000B2F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v9 = [a3 UTF8String];
    }

    else
    {
      v9 = "Unknown__";
    }

    v12 = 68289539;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2081;
    *&v13[12] = v9;
    *&v13[20] = 2113;
    *&v13[22] = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onKeybagFirstUnlock, name:%{private, location:escape_only}s, userInfo:%{private, location:escape_only}@}", &v12, 0x26u);
  }

  if (a2)
  {
    v10 = *(a2 + 72);
    v12 = _NSConcreteStackBlock;
    *v13 = 3221225472;
    *&v13[8] = sub_1000B3108;
    *&v13[16] = &unk_1001390D0;
    *&v13[24] = a2;
    dispatch_async(v10, &v12);
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      *v13 = 2082;
      *&v13[2] = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,invalidObjectOnFirstUnlock}", &v12, 0x12u);
    }
  }
}

void sub_1000B3108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B3190;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_1000B3190(v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000B3190(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lockMon,onFirstUnlocked}", v5, 0x12u);
  }

  *(sub_100002DB0() + 70) = 257;
  v3 = *(v1 + 32);
  if (!v3)
  {
    sub_1000053C4();
  }

  return (*(*v3 + 48))(v3);
}

void sub_1000B3288(uint64_t a1)
{
  sub_1000B1828(a1);

  operator delete();
}

uint64_t SACoreRoutineProd::SACoreRoutineProd(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v7 = a2;
  if (a3[23] < 0)
  {
    sub_100004CEC(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 2);
  }

  sub_10001CA20(v23, a4);
  *a1 = off_10013F938;
  sub_10001CAB8(v23);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10013F7C8;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v9 = v7;
  *(a1 + 32) = v9;
  sub_10001CA20(a1 + 40, a4);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd}", buf, 0x12u);
  }

  if ((a3[23] & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_10;
    }
  }

  else if (a3[23])
  {
LABEL_10:
    v11 = [RTRoutineManager alloc];
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    v12 = [NSString stringWithUTF8String:a3, __p[0], __p[1], v18];
    v13 = [v11 initWithRestorationIdentifier:v12];
    v14 = *v8;
    *v8 = v13;

    goto LABEL_16;
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd,failed,invalid UniqueId}", buf, 0x12u);
  }

LABEL_16:

  return a1;
}

uint64_t sub_1000B3598(uint64_t a1)
{
  *a1 = off_10013F7C8;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineProd released}", v5, 0x12u);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  sub_10001CAB8(a1 + 40);

  return a1;
}

void sub_1000B36A0(uint64_t a1)
{
  sub_1000B3598(a1);

  operator delete();
}

void sub_1000B36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation, starTime:%{public}llu, endTime:%{public}llu}", buf, 0x26u);
  }

  if (!*(a1 + 8))
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid instance}";
    goto LABEL_12;
  }

  if (a2 > a3)
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,invalid time/duration}";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    return;
  }

  if (*(a1 + 72) == 1)
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v8 = "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,request in progress}";
    goto LABEL_12;
  }

  *(a1 + 72) = 1;
  *(a1 + 88) = *(a1 + 80);
  v9 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3938;
  block[3] = &unk_10013F818;
  block[4] = a1;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(v9, block);
}

void sub_1000B3938(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B39D4;
  v4[3] = &unk_10013F818;
  v4[4] = v2;
  v5 = *(a1 + 40);
  sub_1000B39D4(v4);
  objc_autoreleasePoolPop(v3);
}

void sub_1000B39D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 16) = vcvtq_f64_s64(*(a1 + 40));
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid endTime or startTime}", buf, 0x12u);
    }
  }

  else
  {
    v8 = [[NSDateInterval alloc] initWithStartDate:v4 endDate:v3];
    v9 = v8;
    if (v8)
    {
      v10 = [[RTStoredLocationEnumerationOptions alloc] initWithDateInterval:v8 horizontalAccuracy:200 batchSize:0 boundingBoxLocation:6378135.0];
      if (v10)
      {
        v11 = *(v2 + 8);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000B3CA8;
        v14[3] = &unk_10013F7F8;
        v14[4] = v2;
        [v11 enumerateStoredLocationsWithOptions:v10 usingBlock:v14];
      }

      else
      {
        v13 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          v16 = 0;
          v17 = 2082;
          v18 = "";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid enumerationOptions}", buf, 0x12u);
        }
      }
    }

    else
    {
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,getHistoricalLocation,invalid interval}", buf, 0x12u);
      }
    }
  }
}

void sub_1000B3CA8(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v60 = v7;
  if (!a4)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *v71 = 2082;
    *&v71[2] = "";
    v17 = "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine,Stop nil}";
    v18 = v16;
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  if (v8)
  {
    v58 = v8;
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v58 description];
      v13 = [v12 UTF8String];
      v14 = *a4;
      *buf = 68289538;
      *v71 = 2082;
      *&v71[2] = "";
      *&v71[10] = 2082;
      *&v71[12] = v13;
      *&v71[20] = 1026;
      *&v71[22] = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine, Error:%{public, location:escape_only}s, stop:%{public}hhd}", buf, 0x22u);
    }

    v15 = *(v10 + 64);
    if (!v15)
    {
      sub_1000053C4();
    }

    v9 = v58;
    (*(*v15 + 48))(v15, v10 + 80);
    *(v10 + 72) = 0;
    goto LABEL_35;
  }

  v20 = SALogObjectGeneral;
  if (!v7)
  {
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *v71 = 2082;
    *&v71[2] = "";
    v17 = "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine,locations nil}";
    v18 = v20;
LABEL_9:
    v19 = 18;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_35;
  }

  v59 = 0;
  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v7 count];
    v23 = *a4;
    *buf = 68289538;
    *v71 = 2082;
    *&v71[2] = "";
    *&v71[10] = 1026;
    *&v71[12] = v22;
    *&v71[16] = 1026;
    *&v71[18] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,received update from CoreRoutine, locationCount:%{public}d, stop:%{public}hhd}", buf, 0x1Eu);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v7;
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v25)
  {
    v26 = *v62;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v61 + 1) + 8 * i);
        memset(v71, 0, 24);
        v29 = [v28 timestamp];
        [v29 timeIntervalSinceReferenceDate];
        v31 = v30;
        *buf = v30;

        v32 = *(v10 + 24);
        if (v31 >= v32)
        {
          v32 = *(v10 + 16);
          if (v31 <= v32)
          {
            if (*(v10 + 80) == *(v10 + 88))
            {
              [v28 coordinate];
              *v71 = v51;
              [v28 coordinate];
              *&v71[8] = v52;
              [v28 horizontalAccuracy];
              *&v71[16] = v53;
              sub_1000B4344(v10 + 80, buf);
              v54 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *v65 = 68289026;
                v66 = 0;
                v67 = 2082;
                v68 = "";
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fHistoricalLocation empty}", v65, 0x12u);
              }
            }

            else
            {
              [v28 coordinate];
              v34 = v33;
              *v71 = v33;
              [v28 coordinate];
              v36 = v35;
              *&v71[8] = v35;
              [v28 horizontalAccuracy];
              *&v71[16] = v37;
              v38 = *(v10 + 88);
              v40 = *(v38 - 32);
              v39 = *(v38 - 24);
              v41 = v39 * 3.14159265 / 180.0;
              v42 = v34 * 3.14159265 / 180.0;
              v43 = (v39 - v34) * 3.14159265 / 180.0;
              v44 = (*(v38 - 16) - v36) * 3.14159265 / 180.0;
              v45 = sin(v43 * 0.5);
              v46 = v45 * v45;
              v47 = sin(v44 * 0.5);
              v48 = cos(v41) * (v47 * v47);
              v49 = cos(v42);
              v50 = asin(sqrt(v46 + v48 * v49));
              if ((v50 + v50) * 6371000.0 > 100.0 || (v32 = v31 - v40, v31 - v40 > 180.0))
              {
                sub_1000B4344(v10 + 80, buf);
              }
            }
          }
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:{16, v32}];
    }

    while (v25);
  }

  v9 = v59;
  if (![v24 count])
  {
    v55 = *(v10 + 64);
    if (!v55)
    {
      sub_1000053C4();
    }

    (*(*v55 + 48))(v55, v10 + 80);
    *(v10 + 72) = 0;
    v56 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v57 = (*(v10 + 88) - *(v10 + 80)) >> 5;
      *buf = 68289282;
      *v71 = 2082;
      *&v71[2] = "";
      *&v71[10] = 2050;
      *&v71[12] = v57;
      v17 = "{msg%{public}.0s:#coreRoutine,fHistoricalLocation, historicalDataLen:%{public}lu}";
      v18 = v56;
      v19 = 28;
      goto LABEL_10;
    }
  }

LABEL_35:
}

void sub_1000B4344(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_10000509C();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100067054(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_1000B441C(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity}", &buf, 0x12u);
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    buf = 68289026;
    v11 = 2082;
    v12 = "";
    v7 = "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,invalid instance}";
    goto LABEL_10;
  }

  if (*(a2 + 24))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3321888768;
    v8[2] = sub_1000B4620;
    v8[3] = &unk_10013F838;
    v8[4] = a1;
    sub_10000F1DC(v9, a2);
    [v5 stopMonitoringForPeopleDiscoveryWithHandler:v8];
    sub_10000F274(v9);
    return;
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    buf = 68289026;
    v11 = 2082;
    v12 = "";
    v7 = "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,null callback}";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &buf, 0x12u);
  }
}

void sub_1000B4620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 description];
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,stopMonitoringForPeopleDensity,, Error:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  v7 = *(v4 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1000B47C0;
  v8[3] = &unk_1001390F0;
  sub_10000F1DC(v9, a1 + 40);
  dispatch_async(v7, v8);
  sub_10000F274(v9);
}

uint64_t sub_1000B47C0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1000B4808(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v24) = 2082;
    *(&v24 + 2) = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits}", buf, 0x12u);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(a1 + 8);
    v11 = SALogObjectGeneral;
    v12 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 68289539;
        *&buf[4] = 0;
        LOWORD(v24) = 2082;
        *(&v24 + 2) = "";
        WORD5(v24) = 1025;
        HIDWORD(v24) = a3;
        v25 = 1025;
        v26 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits, startTimestamp:%{private}d, endTimestamp:%{private}d}", buf, 0x1Eu);
      }

      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
      v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:a4];
      v15 = [[NSDateInterval alloc] initWithStartDate:v13 endDate:v14];
      v16 = [RTStoredVisitFetchOptions alloc];
      v17 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
      v18 = [v16 initWithAscending:1 confidence:v17 dateInterval:v15 labelVisit:1 limit:0];

      v19 = *(a1 + 8);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3321888768;
      v21[2] = sub_1000B4C0C;
      v21[3] = &unk_10013F8A0;
      v21[4] = a1;
      sub_10001CA20(v22, a2);
      [v19 fetchStoredVisitsWithOptions:v18 handler:v21];
      sub_10001CAB8(v22);
    }

    else
    {
      if (v12)
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v24) = 2082;
        *(&v24 + 2) = "";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,uninitialized}", buf, 0x12u);
        v9 = *(a2 + 24);
        *buf = 0;
        v24 = 0uLL;
        if (!v9)
        {
          sub_1000053C4();
        }
      }

      else
      {
        *buf = 0;
        v24 = 0uLL;
      }

      (*(*v9 + 48))(v9, buf);
      if (*buf)
      {
        *&v24 = *buf;
        operator delete(*buf);
      }
    }
  }

  else
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v24) = 2082;
      *(&v24 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,callback not init}", buf, 0x12u);
    }
  }
}

void sub_1000B4B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B4C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v14 = 2082;
      *&v14[2] = "";
      *&v14[10] = 2113;
      *&v14[12] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchVisits,cb, error:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    *buf = 0;
    *v14 = 0;
    *&v14[8] = 0;
    v8 = *(a1 + 64);
    if (!v8)
    {
      sub_1000053C4();
    }

    (*(*v8 + 48))(v8, buf);
    if (*buf)
    {
      *v14 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1000B4E0C;
    block[3] = &unk_10013F870;
    v11 = v5;
    sub_10001CA20(v12, a1 + 40);
    dispatch_async(v9, block);
    sub_10001CAB8(v12);
  }
}

void sub_1000B4E0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000B4F1C;
  v3[3] = &unk_10013F870;
  v4 = *(a1 + 32);
  sub_10001CA20(v5, a1 + 40);
  sub_1000B4F1C(v3);
  sub_10001CAB8(v5);

  objc_autoreleasePoolPop(v2);
}

void sub_1000B4EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10001CAB8(v13 + 40);

  _Unwind_Resume(a1);
}

void sub_1000B4F1C(uint64_t a1)
{
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) count];
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 1025;
    LODWORD(v41) = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchVisits,cb, visistsSize:%{private}d}", buf, 0x18u);
  }

  __src = 0;
  v34 = 0;
  v35 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v46 count:16];
  if (v4)
  {
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 location];
        [v8 latitude];
        v10 = v9;

        v11 = [v7 location];
        [v11 longitude];
        v13 = v12;

        v14 = [v7 location];
        [v14 horizontalUncertainty];
        v16 = v15;

        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289795;
          v37 = 0;
          v38 = 2082;
          v39 = "";
          v40 = 2053;
          v41 = v10;
          v42 = 2053;
          v43 = v13;
          v44 = 2049;
          v45 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,onHistoricalVisitsReceived, lat:%{sensitive}0.1f, lon:%{sensitive}0.1f, hunc:%{private}0.1f}", buf, 0x30u);
        }

        v18 = v34;
        if (v34 >= v35)
        {
          v20 = __src;
          v21 = v34 - __src;
          v22 = (v34 - __src) >> 5;
          v23 = v22 + 1;
          if ((v22 + 1) >> 59)
          {
            sub_10000509C();
          }

          v24 = v35 - __src;
          if ((v35 - __src) >> 4 > v23)
          {
            v23 = v24 >> 4;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFE0)
          {
            v23 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            sub_100067054(&__src, v23);
          }

          v25 = (32 * v22);
          *v25 = 0;
          v25[1] = v10;
          v25[2] = v13;
          v25[3] = v16;
          v19 = 32 * v22 + 32;
          memcpy(0, v20, v21);
          v26 = __src;
          __src = 0;
          v34 = v19;
          v35 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v34 = 0;
          v18[1] = v10;
          v18[2] = v13;
          v19 = (v18 + 4);
          v18[3] = v16;
        }

        v34 = v19;
      }

      v4 = [v3 countByEnumeratingWithState:&v29 objects:v46 count:16];
    }

    while (v4);
  }

  v27 = *(a1 + 64);
  if (!v27)
  {
    sub_1000053C4();
  }

  (*(*v27 + 48))(v27, &__src);
  if (__src)
  {
    v34 = __src;
    operator delete(__src);
  }
}

BOOL sub_1000B5328(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,called}", buf, 0x12u);
  }

  if (!*(a3 + 24))
  {
    v18 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,invalidCallback}", buf, 0x12u);
    return 0;
  }

  if (!*(a1 + 8))
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI, RTRoutineManager not initialized}", buf, 0x12u);
    }

    sub_1000B56A8(a3, 0);
    return 0;
  }

  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:-a2];
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 description];
    v11 = v10;
    v12 = [v10 UTF8String];
    v13 = [v7 description];
    v14 = v13;
    v15 = [v13 UTF8String];
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = v12;
    v28 = 2082;
    v29 = v15;
    v30 = 1026;
    v31 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,dateRange, startDate:%{public, location:escape_only}s, endDate:%{public, location:escape_only}s, durationSeconds:%{public}d}", buf, 0x2Cu);
  }

  v16 = *(a1 + 8);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_1000B572C;
  v20[3] = &unk_10013F8D0;
  sub_1000B5964(v21, a3);
  [v16 fetchLocationsOfInterestVisitedBetweenStartDate:v8 endDate:v7 withHandler:v20];
  sub_10001ED8C(v21);

  return 1;
}

void sub_1000B56A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3, &v4);
}

void sub_1000B572C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 description];
      v10 = [v9 UTF8String];
      v11 = [v6 code];
      v12 = [v6 domain];
      v14 = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v10;
      v20 = 1026;
      v21 = v11;
      v22 = 2082;
      v23 = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,fetchError, errorDescription:%{public, location:escape_only}s, errorCode:%{public}d, domain:%{public, location:escape_only}s}", &v14, 0x2Cu);
    }

    v13 = 0;
  }

  else
  {
    v13 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      LODWORD(v19) = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,fetchLearnedLOI,fetchSuccess, totalLocationsFound:%{public}d}", &v14, 0x18u);
      v13 = v5;
    }
  }

  sub_1000B56A8(a1 + 32, v13);
}

uint64_t sub_1000B5964(uint64_t a1, uint64_t a2)
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

void SAMobileAsset::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 128) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000B5AF8(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10000F274(va);
  operator delete();
}

void SACloudChannel::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 25) == 1)
  {
    sub_1000B5C14();
  }

  sub_1000B5D20();
}

void sub_1000B5CE8(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10003197C(va);
  sub_100031C34(va1);
  operator delete();
}

void sub_1000B5DF4(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10003197C(va);
  sub_100031C34(va1);
  operator delete();
}

void SafetyAlertsDaemonInterface::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 73) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000B5F80(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10009D160(va);
  operator delete();
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_10013F668;
  sub_1000A1E08(a1 + 8, a3);
  v6 = v5;
  *(a1 + 41) = v6;
  *(a1 + 42) = 0;
  SafetyAlertsDaemonInterface::setupXpcConnection(a1);

  return a1;
}

void sub_1000B6054(_Unwind_Exception *a1)
{
  sub_10009D160(v3);

  _Unwind_Resume(a1);
}

void SafetyAlertsDaemonInterface::setupXpcConnection(SafetyAlertsDaemonInterface *this)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,setupXpcConnection}", buf, 0x12u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.safetyalerts", *(this + 41), 1uLL);
  v4 = *(this + 42);
  *(this + 42) = mach_service;

  v5 = *(this + 42);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B626C;
  handler[3] = &unk_10013F968;
  handler[4] = this;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_activate(*(this + 42));
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,xpc_connection_resumed}", buf, 0x12u);
  }
}

uint64_t sub_1000B6218(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000053C4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1000B626C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v8 = v3;
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289026;
      *v12 = 2082;
      *&v12[2] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,handleXpcConnection}", &v11, 0x12u);
    }

    v11 = _NSConcreteStackBlock;
    *v12 = 3221225472;
    *&v12[8] = sub_1000B64A0;
    *&v12[16] = &unk_10013F990;
    v14 = v4;
    v10 = v8;
    v13 = v10;
    xpc_connection_set_event_handler(v10, &v11);
    xpc_connection_activate(v10);
  }

  else
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289283;
      *v12 = 2082;
      *&v12[2] = "";
      *&v12[10] = 2081;
      *&v12[12] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received object, description:%{private, location:escape_only}s}", &v11, 0x1Cu);
    }

    free(v6);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000B64A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v6;
      v8 = "{msg%{public}.0s:#daemonInterface,Connection received error, description:%{private, location:escape_only}s}";
      goto LABEL_7;
    }

LABEL_8:
    free(v6);
    goto LABEL_9;
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v6 = xpc_copy_description(v3);
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v6;
      v8 = "{msg%{public}.0s:#daemonInterface,Connection received object, description:%{private, location:escape_only}s}";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v14, 0x1Cu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = xpc_connection_copy_entitlement_value();
  v11 = v10;
  if (v10 && xpc_get_type(v10) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v11);

    if (value)
    {
      (*(*v4 + 24))(v4, v3);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = "com.apple.safetyalerts.spi";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterface,notEntitled, entitlement:%{private, location:escape_only}s}", &v14, 0x1Cu);
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);
}

SafetyAlertsDaemonInterface *SafetyAlertsDaemonInterfaceTest::SafetyAlertsDaemonInterfaceTest(SafetyAlertsDaemonInterface *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1E08(v7, a3);
  SafetyAlertsDaemonInterface::SafetyAlertsDaemonInterface(a1, v5, v7);
  sub_1000A242C(&v16);
  sub_1000A222C(&v15);
  sub_1000A22AC(&v14);
  sub_10000F274(&v13);
  sub_10001E0C0(&v12);
  sub_10000F274(&v11);
  sub_1000A232C(&v10);
  sub_1000A23AC(&v9);
  sub_10000F274(&v8);
  sub_1000A1D88(v7);
  *a1 = off_10013F9C0;

  return a1;
}

void sub_1000B685C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10009D160(va);

  _Unwind_Resume(a1);
}

void sub_1000B6888(uint64_t a1)
{
  sub_1000B0100(a1);

  operator delete();
}

void sub_1000B68C0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = "testMessage";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemonInterfaceTest,processMessage, message:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = sub_1000175DC();
  sub_1000176C8(v4, v2);
  reply = xpc_dictionary_create_reply(v2);
  if (reply)
  {
    xpc_dictionary_send_reply();
  }
}

void sub_1000B69BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void *SACoreRoutineTest::SACoreRoutineTest(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100004CEC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_10001CA20(v16, a4);
  *a1 = off_10013F938;
  sub_10001CAB8(v16);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10013FA08;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,SACoreRoutineTest}", buf, 0x12u);
  }

  return a1;
}

void sub_1000B6B90()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,getHistoricalLocation}", v1, 0x12u);
  }
}

uint64_t sub_1000B6C44(uint64_t a1, uint64_t a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,stopMonitoringForPeopleDensity}", v5, 0x12u);
  }

  result = *(a2 + 24);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_1000B6D28()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,fetchVisits}", v1, 0x12u);
  }
}

uint64_t sub_1000B6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreRoutine,Test,fetchLearnedLOI}", v6, 0x12u);
  }

  if (*(a3 + 24))
  {
    sub_1000B56A8(a3, 0);
  }

  return 0;
}

uint64_t SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(SAGridId *this, double a2, double a3, double a4, double a5, double a6)
{
  if (a2 - a5 < -90.0 || a3 - a6 > 180.0 || a2 - a5 > 90.0 || a3 - a6 < -180.0)
  {
    v12 = SALogObjectGeneral;
    v13 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289795;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2053;
      v25 = a2;
      v26 = 2053;
      v27 = a3;
      v28 = 2049;
      v29 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gi,#generateGlobalTileIdFromLatLonAndGridSizeInDegrees,invalidLoc, lat:%{sensitive}0.3f, lon:%{sensitive}0.3f, gridLatOffset:%{private}0.3f}", &v20, 0x30u);
      return 0;
    }
  }

  else
  {
    LODWORD(v6) = vcvtad_u64_f64(100.0 / (a4 * 100.0));
    LODWORD(v8) = vcvtpd_u64_f64((360.0 - a6) * v6);
    LODWORD(v7) = vcvtmd_u64_f64((a3 + 180.0 - a6) * v6);
    v16 = (floor((a2 + 90.0 - a5) * v6) * LODWORD(v8));
    v13 = (v16 + v7);
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18) = vcvtpd_u64_f64((180.0 - a5) * v6);
      v20 = 68291843;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2049;
      v25 = v8;
      v26 = 2049;
      v27 = v18;
      v28 = 2049;
      v29 = a4;
      v30 = 2049;
      v31 = v7;
      v32 = 2049;
      v33 = v16;
      v34 = 2049;
      v35 = (v16 + v7);
      v36 = 2049;
      v37 = v6;
      v38 = 2053;
      v39 = a2;
      v40 = 2053;
      v41 = a3;
      v42 = 2049;
      v43 = a5;
      v44 = 2049;
      v45 = a6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gi,#generateGlobalTileIdFromLatLonAndGridSizeInDegrees, totalGridsInEachRow:%{private}lu, totalGridsInEachCol:%{private}lu, gridSizeInDegrees:%{private}0.3f, swXIndex:%{private}lu, swYIndex:%{private}lu, curGlobalIndex:%{private}lu, multiplier:%{private}lu, lat:%{sensitive}0.3f, lon:%{sensitive}0.3f, gridLatOffset:%{private}0.3f, gridLonOffset:%{private}0.3f}", &v20, 0x80u);
    }
  }

  return v13;
}

void SAGeometry::SAGeometry(SAGeometry *this, NSDictionary *a2)
{
  v105 = a2;
  *this = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 10) = 4;
  v3 = objc_alloc_init(NSMutableArray);
  v4 = *this;
  *this = v3;

  if (!*this)
  {
    v92 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v129 = 2082;
      v130 = "";
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#geometry,CannotInstantiate}", &buf, 0x12u);
      v92 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      buf = 68289795;
      v129 = 2082;
      v130 = "";
      v131 = 2081;
      *v132 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/geometry/SAGeometry.mm";
      *&v132[8] = 2081;
      *&v132[10] = "SAGeometry";
      v133 = 1026;
      v134 = 42;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", &buf, 0x2Cu);
    }

    __assert_rtn("SAGeometry", "SAGeometry.mm", 42, "false && #geometry,CannotInstantiate");
  }

  v112 = [(NSDictionary *)v105 objectForKey:@"type"];
  v111 = this;
  v108 = [(NSDictionary *)v105 objectForKey:@"coordinates"];
  if (!v112 || !v108)
  {
    v9 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,MissingEntries}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &buf, 0x12u);
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,BadPolygonType}";
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v101 = v112;
    if ([v101 isEqualToString:@"Polygon"])
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Polygon}", &buf, 0x12u);
      }

      v7 = SAGeometry::getPolygonFromCoordinates(v108, v6);
      if (v7)
      {
        v8 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        [*this addObject:v7];
      }

      *(this + 10) = 1;
      goto LABEL_42;
    }

    if ([v101 isEqualToString:@"MultiPolygon"])
    {
      v11 = v108;
      v102 = v11;
      v104 = [(SAGeometry *)v11 count];
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289539;
        v129 = 2082;
        v130 = "";
        v131 = 1025;
        *v132 = v104;
        *&v132[4] = 2113;
        *&v132[6] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,MultiPolygon, count:%{private}d, coordinateObjects:%{private, location:escape_only}@}", &buf, 0x22u);
      }

      if (v104)
      {
        v13 = 0;
        do
        {
          v109 = v13;
          v14 = [(SAGeometry *)v102 objectAtIndex:?];
          v15 = v14;
          v17 = SAGeometry::getPolygonFromCoordinates(v14, v16);
          if (v17)
          {
            v18 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2113;
              *v132 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
            }

            v106 = v17;
            v19 = [v17 vertices];
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
            if (v21)
            {
              v22 = *v122;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v122 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = *(*(&v121 + 1) + 8 * i);
                  v25 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
                  {
                    buf = 68289283;
                    v129 = 2082;
                    v130 = "";
                    v131 = 2113;
                    *v132 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertex, vertex:%{private, location:escape_only}@}", &buf, 0x1Cu);
                  }
                }

                v14 = v15;
                v21 = [v20 countByEnumeratingWithState:&v121 objects:v127 count:16];
              }

              while (v21);
            }

            [*v111 addObject:v106];
            v17 = v106;
          }

          this = v111;
          v13 = v109 + 1;
        }

        while ((v109 + 1) != v104);
      }

      *(this + 10) = 2;
      goto LABEL_41;
    }

    if ([v101 isEqualToString:@"Grids"])
    {
      v27 = [(NSDictionary *)v105 objectForKey:@"resolution"];
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v84 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadPolygonResolution}", &buf, 0x12u);
        }

        goto LABEL_46;
      }

      v102 = v27;
      [v27 doubleValue];
      v29 = v28;
      v30 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Grids}", &buf, 0x12u);
      }

      v31 = v108;
      v32 = [(SAGeometry *)v31 count];
      v33 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289539;
        v129 = 2082;
        v130 = "";
        v131 = 1025;
        *v132 = v32;
        *&v132[4] = 2113;
        *&v132[6] = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,Grids, count:%{private}d, coordinateObjects:%{private, location:escape_only}@}", &buf, 0x22u);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      obj = v31;
      v34 = [(SAGeometry *)obj countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (!v34)
      {
LABEL_96:

        *(v111 + 10) = 3;
LABEL_41:
        v7 = v102;
LABEL_42:

LABEL_43:
        v26 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,created}", &buf, 0x12u);
        }

        *(v111 + 8) = *(v111 + 10) != 4;
        goto LABEL_46;
      }

      v107 = *v118;
LABEL_57:
      v110 = v34;
      v35 = 0;
      while (1)
      {
        if (*v118 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v117 + 1) + 8 * v35);
        v37 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v129 = 2082;
          v130 = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate}", &buf, 0x12u);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if ([v36 count] < 2 || objc_msgSend(v36, "count") > 3)
        {
          goto LABEL_89;
        }

        v38 = [v36 objectAtIndex:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_89:
          v76 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf = 68289026;
            v129 = 2082;
            v130 = "";
            v74 = v76;
            v75 = "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate,Invalid Args}";
LABEL_91:
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, v75, &buf, 0x12u);
          }

          goto LABEL_92;
        }

        v39 = [v36 objectAtIndex:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_89;
        }

        v41 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v36;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate, object:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v42 = [v36 objectAtIndex:1];
        [v42 doubleValue];
        v44 = v43;

        v45 = [v36 objectAtIndex:0];
        [v45 doubleValue];
        v47 = v46;

        v48 = objc_alloc_init(NSMutableArray);
        v49 = [_CLVertex alloc];
        v50 = CLLocationCoordinate2DMake(v44, v47);
        v51 = [v49 initWithCoordinate:{v50.latitude, v50.longitude}];
        [v48 addObject:v51];
        v52 = [_CLVertex alloc];
        v53 = CLLocationCoordinate2DMake(v29 + v44, v47);
        v54 = [v52 initWithCoordinate:{v53.latitude, v53.longitude}];
        [v48 addObject:?];
        v55 = [_CLVertex alloc];
        v56 = v29 + v47;
        v57 = CLLocationCoordinate2DMake(v29 + v44, v56);
        v58 = [v55 initWithCoordinate:{v57.latitude, v57.longitude}];
        [v48 addObject:v58];
        v59 = [_CLVertex alloc];
        v60 = CLLocationCoordinate2DMake(v44, v56);
        v61 = [v59 initWithCoordinate:{v60.latitude, v60.longitude}];
        [v48 addObject:v61];
        [v48 addObject:v51];
        v62 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v48;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertices, vertices:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v63 = [[_CLPolygonalRegion alloc] initWithVertices:v48 identifier:@"polygon"];
        v64 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,region, region:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        if (!v63)
        {
          goto LABEL_94;
        }

        v65 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2113;
          *v132 = v63;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,Grids,CLPolygonCreated, polygon:%{private, location:escape_only}@}", &buf, 0x1Cu);
        }

        v66 = [v63 vertices];
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v67 = v66;
        v68 = [v67 countByEnumeratingWithState:&v113 objects:v125 count:16];
        if (v68)
        {
          v69 = *v114;
          do
          {
            for (j = 0; j != v68; j = j + 1)
            {
              if (*v114 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v113 + 1) + 8 * j);
              v72 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
              {
                buf = 68289283;
                v129 = 2082;
                v130 = "";
                v131 = 2113;
                *v132 = v71;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,Grids, vertex:%{private, location:escape_only}@}", &buf, 0x1Cu);
              }
            }

            v68 = [v67 countByEnumeratingWithState:&v113 objects:v125 count:16];
          }

          while (v68);
        }

        [*v111 addObject:v63];
LABEL_93:

LABEL_94:
        if (++v35 == v110)
        {
          v34 = [(SAGeometry *)obj countByEnumeratingWithState:&v117 objects:v126 count:16];
          if (!v34)
          {
            goto LABEL_96;
          }

          goto LABEL_57;
        }
      }

      v73 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        v74 = v73;
        v75 = "{msg%{public}.0s:#geometry,getPolygonFromGridCoordinate,invalid Type}";
        goto LABEL_91;
      }

LABEL_92:
      v63 = 0;
      v67 = v36;
      goto LABEL_93;
    }

    if (![v101 isEqualToString:@"Circle"])
    {
      goto LABEL_43;
    }

    v77 = v108;
    if ([(SAGeometry *)v77 count]!= 2)
    {
      v85 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v129 = 2082;
        v130 = "";
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadCircleCenterCoordCount}", &buf, 0x12u);
      }

      goto LABEL_46;
    }

    v78 = [(SAGeometry *)v77 objectAtIndex:0];
    if (!v78 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v82 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2113;
        *v132 = v78;
        v83 = "{msg%{public}.0s:#geometry,BadCircleCenterLat, value:%{private, location:escape_only}@}";
        goto LABEL_112;
      }

LABEL_113:

      goto LABEL_46;
    }

    [v78 doubleValue];
    v80 = v79;
    v81 = fabs(v79);
    if (v81 > 90.0)
    {
      v82 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2049;
        *v132 = v80;
        v83 = "{msg%{public}.0s:#geometry,InvalidCircleLat, value:%{private}0.1f}";
LABEL_112:
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v83, &buf, 0x1Cu);
        goto LABEL_113;
      }

      goto LABEL_113;
    }

    v86 = [(SAGeometry *)v77 objectAtIndex:1];
    if (v86 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v86 doubleValue];
      v88 = v87;
      v89 = fabs(v87);
      if (v89 <= 180.0)
      {
        if (fabs(v81 + -0.0000001) > 0.0000001 || fabs(v89 + -0.0000001) > 0.0000001)
        {
          v95 = [(NSDictionary *)v105 objectForKey:@"radiusMeters"];
          if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v98 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2113;
              *v132 = v95;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadCircleRadius, value:%{private, location:escape_only}@}", &buf, 0x1Cu);
            }

            goto LABEL_46;
          }

          [v95 doubleValue];
          v97 = v96;
          if (v96 <= 0.0)
          {
            v100 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289283;
              v129 = 2082;
              v130 = "";
              v131 = 2049;
              *v132 = v97;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidCircleRadiusValue, value:%{private}0.1f}", &buf, 0x1Cu);
            }
          }

          else
          {
            *(this + 2) = v80;
            *(this + 3) = v88;
            *(this + 4) = v96;
            *(this + 10) = 0;
          }

          if (v97 > 0.0)
          {
            goto LABEL_43;
          }

LABEL_46:

          goto LABEL_47;
        }

        v99 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289539;
          v129 = 2082;
          v130 = "";
          v131 = 2049;
          *v132 = v80;
          *&v132[8] = 2049;
          *&v132[10] = v88;
          v91 = "{msg%{public}.0s:#geometry,InvalidCircleCenter, value:%{private}0.1f, value:%{private}0.1f}";
          v93 = v99;
          v94 = 38;
          goto LABEL_127;
        }
      }

      else
      {
        v90 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289283;
          v129 = 2082;
          v130 = "";
          v131 = 2049;
          *v132 = v88;
          v91 = "{msg%{public}.0s:#geometry,InvalidCircleLon, value:%{private}0.1f}";
LABEL_126:
          v93 = v90;
          v94 = 28;
LABEL_127:
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v91, &buf, v94);
        }
      }
    }

    else
    {
      v90 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v129 = 2082;
        v130 = "";
        v131 = 2113;
        *v132 = v86;
        v91 = "{msg%{public}.0s:#geometry,BadCircleCenterLon, value:%{private, location:escape_only}@}";
        goto LABEL_126;
      }
    }

    goto LABEL_46;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v129 = 2082;
    v130 = "";
    v10 = "{msg%{public}.0s:#geometry,BadCoordinateType}";
    goto LABEL_20;
  }

LABEL_47:
}

SAGeometry *SAGeometry::getPolygonFromCoordinates(SAGeometry *this, objc_object *a2)
{
  v2 = this;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,getPolygonFromCoordinates}", buf, 0x12u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (![(SAGeometry *)v2 count]|| ([(SAGeometry *)v2 objectAtIndex:0], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:
      *buf = 68289026;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,BadLinearRing}", buf, 0x12u);
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2113;
    v44 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,linearRingsObject, object:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v38 = [(SAGeometry *)v2 objectAtIndex:0];
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2113;
    v44 = v38;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,points, points:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v8 = [(SAGeometry *)v38 count];
  v9 = v8;
  if ((v8 - 101) > 0xFFFFFFFFFFFFFF9ELL)
  {
    v37 = v8;
    v36 = objc_alloc_init(NSMutableArray);
    v14 = 0;
    v15 = &IOIteratorNext_ptr;
    *&v16 = 68289026;
    v35 = v16;
    do
    {
      v17 = [(SAGeometry *)v38 objectAtIndex:v14, v35];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 count] != 2)
      {
        v34 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v40 = 0;
          v41 = 2082;
          v42 = "";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidCoordinate}", buf, 0x12u);
        }

LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      v18 = v17;
      v19 = [v18 objectAtIndex:1];
      v20 = [v18 objectAtIndex:0];
      v21 = v15[261];
      objc_opt_class();
      v22 = objc_opt_isKindOfClass();
      v23 = v15;
      v24 = v15[261];
      objc_opt_class();
      v25 = v22 & objc_opt_isKindOfClass();
      if (v25)
      {
        [v19 doubleValue];
        v27 = v26;
        [v20 doubleValue];
        v29 = CLLocationCoordinate2DMake(v27, v28);
        v30 = [[_CLVertex alloc] initWithCoordinate:{v29.latitude, v29.longitude}];
        [v36 addObject:v30];
      }

      else
      {
        v31 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v40 = 0;
          v41 = 2082;
          v42 = "";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,CoordinateIsNaN}", buf, 0x12u);
        }
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_38;
      }

      ++v14;
      v15 = v23;
    }

    while (v37 != v14);
    v32 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2113;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,vertices, vertices:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v11 = [[_CLPolygonalRegion alloc] initWithVertices:v36 identifier:@"polygon"];
    v33 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2113;
      v44 = v11;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,region, region:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_39:
  }

  else
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 1026;
      LODWORD(v44) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,InvalidNumberOfPoints, pointsLen:%{public}d}", buf, 0x18u);
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

uint64_t SAGeometry::isLocationInCircle(SAGeometry *this, double a2, double a3, double a4, NSArray *a5)
{
  v31 = this;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v38 = 2082;
    v39 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle}", &buf, 0x12u);
  }

  if (v31)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v31;
    v8 = [(SAGeometry *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count] == 3)
          {
            v12 = 0;
            while (1)
            {
              v13 = [v11 objectAtIndex:v12];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                break;
              }

              if (++v12 == 3)
              {
                goto LABEL_19;
              }
            }

            v16 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289026;
              v38 = 2082;
              v39 = "";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle,skipping invalid circle}", &buf, 0x12u);
            }

LABEL_19:
            v17 = [v11 objectAtIndex:0];
            [v17 doubleValue];

            v18 = [v11 objectAtIndex:1];
            [v18 doubleValue];

            v19 = [v11 objectAtIndex:2];
            [v19 doubleValue];
            v21 = v20;

            GEOCalculateDistance();
            if (v22 + a4 <= v21)
            {
              v29 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
              {
                buf = 68289026;
                v38 = 2082;
                v39 = "";
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#geometry,isLocationInCircle,true}", &buf, 0x12u);
              }

              v28 = 1;
              goto LABEL_31;
            }
          }

          else
          {
            v15 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf = 68289026;
              v38 = 2082;
              v39 = "";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocationInCircle,skipping invalid circle}", &buf, 0x12u);
            }
          }
        }

        v8 = [(SAGeometry *)v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v23 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      v24 = "{msg%{public}.0s:#geometry,isLocationInCircle,false}";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEBUG;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v25, v26, v24, &buf, 0x12u);
    }
  }

  else
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      v24 = "{msg%{public}.0s:#geometry,isLocationInCircle,empty circles}";
      v25 = v27;
      v26 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_26;
    }
  }

  v28 = 0;
LABEL_31:

  return v28;
}

uint64_t SAGeometry::isCircleInGeometryHelper(SAGeometry *this, CLLocationDegrees a2, CLLocationDegrees a3, double a4, double *a5, const NSArray *a6)
{
  v10 = a5;
  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2053;
    latitude = a2;
    v40 = 2053;
    longitude = a3;
    v42 = 2049;
    *v43 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, radiusMeters:%{private}0.6f}", buf, 0x30u);
  }

  if (!v10)
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v28 = "{msg%{public}.0s:#geometry,isCircleInGeometry,fPolygons is nil}";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x12u);
    }

LABEL_27:
    v29 = 0;
    *this = 0xBFF0000000000000;
    goto LABEL_35;
  }

  v12 = [v10 count];
  if (!v12)
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v28 = "{msg%{public}.0s:#geometry,isCircleInGeometry,fPolygons is empty}";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  *this = 0xBFF0000000000000;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2053;
    latitude = a2;
    v40 = 2053;
    longitude = a3;
    v42 = 2049;
    *v43 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, radiusMeters:%{private}0.6f}", buf, 0x30u);
  }

  v15 = 0;
  *&v14 = 68289539;
  v32 = v14;
  do
  {
    v16 = [v10 objectAtIndex:{v15, v32}];
    v33 = -1.0;
    v17 = CLLocationCoordinate2DMake(a2, a3);
    v18 = [v16 containsCoordinate:&v33 withDistanceToBorder:?];
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2053;
      latitude = v17.latitude;
      v40 = 2053;
      longitude = v17.longitude;
      v42 = 1025;
      LODWORD(v43[0]) = v18;
      WORD2(v43[0]) = 2049;
      *(v43 + 6) = v33;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInPolygonResult, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, inside:%{private}hhd, distance:%{private}0.6f}", buf, 0x36u);
    }

    if (v18)
    {
      v30 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,YES}", buf, 0x12u);
      }

      goto LABEL_31;
    }

    v20 = *this;
    v21 = v33;
    if (*this == -1.0)
    {
      *this = v33;
      v22 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2049;
        latitude = v21;
        v40 = 2049;
        longitude = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,initClosestDistance, distance:%{private}0.2f, closestDistance:%{private}0.2f}", buf, 0x26u);
      }
    }

    else if (v20 > v33)
    {
      v23 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v32;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2049;
        latitude = v21;
        v40 = 2049;
        longitude = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,adjustClosestDistance, distance:%{private}0.2f, closestDistance:%{private}0.2f}", buf, 0x26u);
        v21 = v33;
      }

      *this = v21;
    }

    ++v15;
  }

  while (v12 != v15);
  v24 = *this;
  v25 = SALogObjectGeneral;
  v26 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v24 < a4)
  {
    if (v26)
    {
      *buf = v32;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2049;
      latitude = a4;
      v40 = 2049;
      longitude = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,closeEnough, radiusMeters:%{private}0.2f, distance:%{private}0.2f}", buf, 0x26u);
    }

LABEL_31:
    v29 = 1;
    goto LABEL_35;
  }

  if (v26)
  {
    *buf = 68289026;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry,NO}", buf, 0x12u);
  }

  v29 = 0;
LABEL_35:

  return v29;
}

uint64_t SAGeometry::isCircleInGeometry(double **this, CLLocationDegrees a2, CLLocationDegrees a3, double a4, SAGeometry *a5)
{
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isCircleInGeometry}", &v25, 0x12u);
  }

  if (*(this + 10))
  {
    return SAGeometry::isCircleInGeometryHelper(a5, a2, a3, a4, *this, v11);
  }

  v13 = *(this + 2);
  v14 = *(this + 3);
  v15 = *(this + 4);
  *a5 = 0;
  if (v15 <= 0.0)
  {
    goto LABEL_8;
  }

  v16 = fabs(v13);
  if (v16 > 90.0)
  {
    goto LABEL_8;
  }

  v17 = fabs(v14);
  if (v17 > 180.0)
  {
    goto LABEL_8;
  }

  v20 = fabs(v16 + -0.0000001) > 0.0000001;
  if (fabs(v17 + -0.0000001) > 0.0000001)
  {
    v20 = 1;
  }

  if (a4 > 0.0 && v20 && (v21 = fabs(a2), v21 <= 90.0) && (v22 = fabs(a3), v22 <= 180.0) && (fabs(v21 + -0.0000001) > 0.0000001 || fabs(v22 + -0.0000001) > 0.0000001))
  {
    CLClientGetDistanceCoordinates();
    v24 = v23 - (v15 + a4);
    if (v24 >= 0.0)
    {
      result = 0;
      *a5 = v24 + a4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_8:
    v18 = SALogObjectGeneral;
    v19 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v19)
    {
      v25 = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,doCirclesOverlap,invalidCircles}", &v25, 0x12u);
      return 0;
    }
  }

  return result;
}

void SAGeometry::area(SAGeometry *this)
{
  v2 = *this;
  if (!*this && (sub_1000BA270(this + 2) & 1) == 0)
  {
    v32 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v33 = "{msg%{public}.0s:#geometry,area,#warning,fPolygons and fCircle is nil}";
    goto LABEL_24;
  }

  if (sub_1000BA270(this + 2))
  {
    v3 = *(this + 4) * (*(this + 4) * 3.14159265);
    return;
  }

  v4 = [v2 count];
  if (!v4)
  {
    v32 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v33 = "{msg%{public}.0s:#geometry,area,#warning,fPolygons is empty}";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x12u);
    return;
  }

  v6 = 0;
  v7 = 0.0;
  *&v5 = 68289283;
  v36 = v5;
  v37 = v4;
LABEL_7:
  v38 = v7;
  v39 = [*this objectAtIndex:{v6, v36}];
  v8 = [v39 vertices];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 count];
    v11 = v10;
    if ((v10 - 3) <= 0x61)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = 0.0;
      while (1)
      {
        v15 = [v9 objectAtIndexedSubscript:v12];
        if (!v15)
        {
          goto LABEL_26;
        }

        if (v13 == v12)
        {
          v16 = 0;
        }

        else
        {
          v16 = v12 + 1;
        }

        v17 = [v9 objectAtIndexedSubscript:v16];
        if (!v17)
        {

          goto LABEL_26;
        }

        v18 = v15;
        [v18 coordinate];
        v20 = v19;
        [v18 coordinate];
        v22 = v21;
        v23 = cos(v20 * 3.14159265 / 180.0);

        v24 = v17;
        [v24 coordinate];
        v26 = v25;
        [v24 coordinate];
        v28 = v27;
        v29 = cos(v26 * 3.14159265 / 180.0);

        ++v12;
        v14 = v14 + v23 * (v22 * 111320.119) * (v26 * -111320.119) + v29 * (v28 * 111320.119) * (v20 * 111320.119);
        if (v11 == v12)
        {

          v30 = fabs(v14 * 0.5);
          v31 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v36;
            v41 = 0;
            v42 = 2082;
            v43 = "";
            v44 = 2049;
            v45 = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,area,subArea, subArea:%{private}0.1f}", buf, 0x1Cu);
          }

          v7 = v38 + v30;
          if (++v6 != v37)
          {
            goto LABEL_7;
          }

          return;
        }
      }
    }

    v34 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v35 = "{msg%{public}.0s:#geometry,area,#warning,invalidCount}";
      goto LABEL_32;
    }
  }

  else
  {
    v34 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v35 = "{msg%{public}.0s:#geometry,area,#warning,noVertices}";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
    }
  }

LABEL_26:
}

uint64_t sub_1000BA270(double *a1)
{
  if (a1[2] <= 0.0)
  {
    return 0;
  }

  v1 = fabs(*a1);
  if (v1 > 90.0)
  {
    return 0;
  }

  v2 = fabs(a1[1]);
  if (v2 > 180.0)
  {
    return 0;
  }

  v4 = fabs(v1 + -0.0000001) > 0.0000001;
  return fabs(v2 + -0.0000001) > 0.0000001 || v4;
}

uint64_t SAGeometry::isLocInGeometryForGivenTime(double **a1, double ***a2, double *a3, double a4, double a5)
{
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = ((*a2)[1] - **a2) >> 5;
    *buf = 68289795;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2049;
    v41 = a4;
    v42 = 2049;
    v43 = a5;
    v44 = 1025;
    LODWORD(v45) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, startTime:%{private}0.3f, stopTime:%{private}0.3f, historicalLocationsLen:%{private}d}", buf, 0x2Cu);
  }

  v35 = 0.0;
  v12 = **a2;
  v11 = (*a2)[1];
  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    while (1)
    {
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v12;
        *buf = 68289795;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2049;
        v41 = v19;
        v42 = 2049;
        v43 = a4;
        v44 = 2049;
        v45 = a5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, hLoc.timestamp:%{private}0.3f, startTime:%{private}0.3f, stopTime:%{private}0.3f}", buf, 0x30u);
      }

      v20 = *v12;
      v13 |= *v12 >= a4;
      if (v13)
      {
        v21 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v37 = 0;
          v38 = 2082;
          v39 = "";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,past start timestamp}", buf, 0x12u);
          v20 = *v12;
        }

        if (v20 >= a4 && v20 <= a5)
        {
          if (fabs(v17) <= 90.0 && fabs(v16) <= 180.0 && v15 > 0.0)
          {
            if (SAGeometry::isCircleInGeometry(a1, v17, v16, v15, &v35))
            {
              *a3 = v14;
              a3[1] = v17;
              a3[2] = v16;
              a3[3] = v15;
              v27 = SALogObjectGeneral;
              v23 = 1;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_40;
              }

              *buf = 68290051;
              v37 = 0;
              v38 = 2082;
              v39 = "";
              v40 = 2053;
              v41 = v17;
              v42 = 2053;
              v43 = v16;
              v44 = 2049;
              v45 = v14;
              v46 = 1025;
              v47 = 1;
              v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,looking at last loc before start timestamp, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
LABEL_39:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v25, buf, 0x36u);
              goto LABEL_40;
            }

            v15 = -1.0;
            v17 = 0.0;
            v16 = 0.0;
          }

          if (SAGeometry::isCircleInGeometry(a1, v12[1], v12[2], v12[3], &v35))
          {
            v26 = *(v12 + 1);
            *a3 = *v12;
            *(a3 + 1) = v26;
            v27 = SALogObjectGeneral;
            v28 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            v23 = 1;
            if (v28)
            {
              v30 = v12[1];
              v29 = v12[2];
              v31 = *v12;
              *buf = 68290051;
              v37 = 0;
              v38 = 2082;
              v39 = "";
              v40 = 2053;
              v41 = v30;
              v42 = 2053;
              v43 = v29;
              v44 = 2049;
              v45 = v31;
              v46 = 1025;
              v47 = 1;
              v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,location in polygon, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
              goto LABEL_39;
            }

            goto LABEL_40;
          }
        }
      }

      else
      {
        v14 = *v12;
        v17 = v12[1];
        v16 = v12[2];
        v15 = v12[3];
      }

      v12 += 4;
      if (v12 == v11)
      {
        goto LABEL_26;
      }
    }
  }

  v14 = 0.0;
  v17 = 0.0;
  v16 = 0.0;
  v15 = 0.0;
LABEL_26:
  v23 = 0;
  if (fabs(v17) <= 90.0 && fabs(v16) <= 180.0 && v15 > 0.0)
  {
    v24 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,all locations before start timestamp}", buf, 0x12u);
    }

    if (SAGeometry::isCircleInGeometry(a1, v17, v16, v15, &v35))
    {
      *a3 = v14;
      a3[1] = v17;
      a3[2] = v16;
      a3[3] = v15;
      v27 = SALogObjectGeneral;
      v23 = 1;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290051;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2053;
        v41 = v17;
        v42 = 2053;
        v43 = v16;
        v44 = 2049;
        v45 = v14;
        v46 = 1025;
        v47 = 1;
        v25 = "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime,last location in polygon, lat:%{sensitive}0.4f, lon:%{sensitive}0.4f, timestamp:%{private}0.2f, isInsidePolygon:%{private}hhd}";
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_40:
  v32 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 1025;
    LODWORD(v41) = v23;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#geometry,isLocInGeometryForGivenTime, isInsidePolygon:%{private}hhd}", buf, 0x18u);
  }

  return v23;
}

void SALockMonitor::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 256) == 1)
  {
    sub_1000BA96C();
  }

  sub_1000BAA78();
}

void sub_1000BAA40(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);
  operator delete();
}

void sub_1000BAB4C(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10001E0C0(va);
  sub_10000F274(va1);
  operator delete();
}

void SACoreTelephony::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 24) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000BAD58(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void SACoreTelephony::onWeaDisplayedNotification(SACoreTelephony *this, const char *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaDisplayedNotification, message:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  if (*(this + 5))
  {
    sub_1000B6218(this + 16, a2);
  }
}

void SACoreTelephony::onWeaReceivedNotification(SACoreTelephony *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [(NSDictionary *)v3 enumerateKeysAndObjectsUsingBlock:&stru_10013FA50];
    if (*(this + 9))
    {
      sub_10004485C(this + 48, v4);
    }
  }

  else
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaReceivedNotification,alert does not have any info,ignoring.}", v6, 0x12u);
    }
  }
}

void sub_1000BAFF0(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onWeaReceivedNotification, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

__int128 *SACoreTelephony::onEnhanceDeliveryStateChange(SACoreTelephony *this, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onEnhanceDeliveryStateChange,, enhancedDeliveryState,:%{public}hhd}", v6, 0x18u);
  }

  result = sub_100002DB0();
  *(result + 62) = a2 | 0x100;
  if (*(this + 17))
  {
    return sub_1000030E8(this + 112, a2);
  }

  return result;
}

uint64_t SACoreTelephony::onUserSettingsChanged(SACoreTelephony *this)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onUserSettingsChanged}", v4, 0x12u);
  }

  result = *(this + 25);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void SACoreTelephony::onMotionHarvestWeaTrigger(SACoreTelephony *this, NSDictionary *a2)
{
  v3 = a2;
  if ([*SAPlatformInfo::instance(v3) isEqualToString:@"iPhone"])
  {
    if (v3)
    {
      if (*(this + 21))
      {
        sub_10004485C(this + 144, v3);
      }
    }

    else
    {
      v4 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 68289026;
        v5[1] = 0;
        v6 = 2082;
        v7 = "";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saCoreTelephony,onMotionHarvestWeaTrigger,alert does not have any info,ignoring.}", v5, 0x12u);
      }
    }
  }
}

uint64_t SACoreTelephony::getEnhancedDeliveryState()
{
  _CTServerConnectionGetCellBroadcastConfig();
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,GetCellBroadcastConfig error}", &buf, 0x12u);
  }

  return 0;
}

void sub_1000BBA88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BBAC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000BBAF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000BBB34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BBB6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000BBB9C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double SACommonUtils::extractCFAbsoluteTimeFromTimeString(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = a1[23];
  if (v2 < 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v3 = *a1;
      goto LABEL_6;
    }

LABEL_21:
    v10 = SALogObjectGeneral;
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    *buf = 68289026;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v12 = "{msg%{public}.0s:#sa_util,#warning,failed to compute cfabsolutetime from timestring length is 0}";
    v13 = v10;
    v14 = 18;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return v11;
  }

  if (!a1[23])
  {
    goto LABEL_21;
  }

  v3 = a1;
  v4 = a1[23];
LABEL_6:
  v5 = 0;
  do
  {
    v6 = *v3++;
    if (v6 == 58)
    {
      ++v5;
    }

    --v4;
  }

  while (v4);
  if (v2 < 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  if (!v2)
  {
    LODWORD(v8) = 0;
LABEL_24:
    v15 = SALogObjectGeneral;
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    *buf = 68289538;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 1026;
    *v42 = v5;
    *&v42[4] = 1026;
    *&v42[6] = v8;
    v12 = "{msg%{public}.0s:#sa_util,#warning,timestring format not supported, colonCount:%{public}d, dashCount:%{public}d}";
    v13 = v15;
    v14 = 30;
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (a1[v7] == 45)
    {
      ++v8;
    }

    ++v7;
  }

  while (v2 != v7);
  if ((v5 - 3) < 0xFFFFFFFFFFFFFFFELL || v8 != 2)
  {
    goto LABEL_24;
  }

  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (v5 == 2)
  {
    sscanf(a1, "%d-%d-%d%c%d:%d:%d%c", &v35, &v34 + 4, &v34, &v36 + 1, &v33 + 4, &v33, &v32, &v36);
    v9 = v32 < 0x3C;
  }

  else
  {
    sscanf(a1, "%d-%d-%d%c%d:%d%c", &v35, &v34 + 4, &v34, &v36 + 1, &v33 + 4, &v33, &v36);
    v9 = 1;
  }

  v17 = v35;
  v18 = SALogObjectGeneral;
  if ((v35 - 2022) > 0x1B || (v19 = HIDWORD(v34), (HIDWORD(v34) - 1) > 0xB) || (v20 = v34, (v34 - 1) > 0x1E) || (v21 = HIDWORD(v33), HIDWORD(v33) > 0x17) || (v22 = v33, v33 > 0x3B) || !v9)
  {
    v11 = -1.0;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return v11;
    }

    if ((v1[23] & 0x80u) == 0)
    {
      v31 = v1;
    }

    else
    {
      v31 = *v1;
    }

    *buf = 68289795;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2081;
    *v42 = v31;
    *&v42[8] = 1026;
    v43 = v5;
    v44 = 1026;
    v45 = 2;
    v12 = "{msg%{public}.0s:#sa_util,#warning,failed to compute cfabsolutetime from timestring, timeString:%{private, location:escape_only}s, colonCount:%{public}d, dashCount:%{public}d}";
    v13 = v18;
    v14 = 40;
    goto LABEL_26;
  }

  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 1026;
    *v42 = v5;
    *&v42[4] = 1026;
    *&v42[6] = 2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,time extracted from timestring, colonCount:%{public}d, dashCount:%{public}d}", buf, 0x1Eu);
    v22 = v33;
    v21 = HIDWORD(v33);
    v20 = v34;
    v19 = HIDWORD(v34);
    v17 = v35;
  }

  v23 = v32;
  v24 = +[NSCalendar currentCalendar];
  v25 = +[NSDate date];
  v26 = [v24 components:28 fromDate:v25];

  if (v20 >= 1 && v19 >= 1 && v17 >= 1)
  {
    [v26 setYear:v17];
    [v26 setMonth:v19];
    [v26 setDay:v20];
  }

  [v26 setHour:v21];
  [v26 setMinute:v22];
  [v26 setSecond:v23];
  v27 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v26 setTimeZone:v27];

  v28 = +[NSCalendar currentCalendar];
  v29 = [v28 dateFromComponents:v26];
  [v29 timeIntervalSinceReferenceDate];
  v11 = v30;

  return v11;
}

void sub_1000BC0C8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void SACommonUtils::getHashForString(char *__s@<X0>, _BYTE *a2@<X8>)
{
  if (__s[23] < 0)
  {
    if (!*(__s + 1))
    {
LABEL_17:

      sub_1000060C4(a2, "");
      return;
    }

    v4 = *__s;
  }

  else
  {
    v4 = __s;
    if (!__s[23])
    {
      goto LABEL_17;
    }
  }

  v5 = strlen(v4);
  CC_SHA256(v4, v5, md);
  v6 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v6 appendFormat:@"%02x", md[i]];
  }

  v8 = v6;
  sub_1000060C4(a2, [v6 UTF8String]);
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (__s[23] >= 0)
    {
      v10 = __s;
    }

    else
    {
      v10 = *__s;
    }

    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v10;
    v18 = 2081;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,getHashForString, body:%{private, location:escape_only}s, hash:%{private, location:escape_only}s}", buf, 0x26u);
  }
}

uint64_t SACommonUtils::isHashMatch(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (!v4)
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v42 = "{msg%{public}.0s:#sa_util,isHashMatchFailed,hashIsEmpty}";
LABEL_90:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v42, buf, 0x12u);
    }

LABEL_91:
    v44 = 0;
    goto LABEL_100;
  }

  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v7)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v42 = "{msg%{public}.0s:#sa_util,isHashMatchFailed,dictionaryIsEmpty}";
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (v7)
  {
    v8 = *a1;
    if (v5 >= 0)
    {
      v8 = a1;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = [v3 objectForKey:@"info"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
    v11 = [v10 count];
    if (v11)
    {
      v12 = 0;
      v49 = v9;
      v50 = v3;
      do
      {
        v13 = [v10 objectAtIndexedSubscript:{v12, v49, v50}];
        v14 = [v13 objectForKey:@"CMAMtext"];

        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v15 = v14;
          sub_1000060C4(buf, [v14 UTF8String]);
          SACommonUtils::getHashForString(buf, __p);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v16 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v17 = __p;
            if (v54 < 0)
            {
              v17 = __p[0];
            }

            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2113;
            *&buf[20] = v14;
            v56 = 2081;
            v57 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,element, cmam:%{private, location:escape_only}@, hash:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v18 = *(a1 + 23);
          if (v18 >= 0)
          {
            v19 = *(a1 + 23);
          }

          else
          {
            v19 = *(a1 + 8);
          }

          if (v18 >= 0)
          {
            v20 = a1;
          }

          else
          {
            v20 = *a1;
          }

          if (v54 >= 0)
          {
            v21 = HIBYTE(v54);
          }

          else
          {
            v21 = __p[1];
          }

          if (v54 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          if (v21 != v19 || v24)
          {
            v28 = [v10 objectAtIndexedSubscript:v12];
            v29 = [v28 objectForKey:@"CMAMlongtext"];

            if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v30 = v29;
              sub_1000060C4(v51, [v29 UTF8String]);
              SACommonUtils::getHashForString(v51, buf);
              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = *buf;
              v54 = *&buf[16];
              buf[23] = 0;
              buf[0] = 0;
              if (v52 < 0)
              {
                operator delete(v51[0]);
              }

              v31 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                v32 = __p;
                if (v54 < 0)
                {
                  v32 = __p[0];
                }

                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2113;
                *&buf[20] = v29;
                v56 = 2081;
                v57 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,element, cmam_long_text:%{private, location:escape_only}@, hash:%{private, location:escape_only}s}", buf, 0x26u);
              }

              v33 = *(a1 + 23);
              if (v33 >= 0)
              {
                v34 = *(a1 + 23);
              }

              else
              {
                v34 = *(a1 + 8);
              }

              if (v33 >= 0)
              {
                v35 = a1;
              }

              else
              {
                v35 = *a1;
              }

              if (v54 >= 0)
              {
                v36 = HIBYTE(v54);
              }

              else
              {
                v36 = __p[1];
              }

              if (v54 >= 0)
              {
                v37 = __p;
              }

              else
              {
                v37 = __p[0];
              }

              if (v36 >= v34)
              {
                v38 = v34;
              }

              else
              {
                v38 = v36;
              }

              v39 = memcmp(v35, v37, v38);
              v26 = 0;
              if (v36 == v34)
              {
                v9 = v49;
                v3 = v50;
                if (!v39)
                {
                  v40 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,cmam_long,matched}", buf, 0x12u);
                  }

                  v26 = 1;
                }
              }

              else
              {
                v9 = v49;
                v3 = v50;
              }
            }

            else
            {

              v41 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,cmam_long_text nil}", buf, 0x12u);
              }

              v29 = 0;
              v26 = 14;
            }
          }

          else
          {
            v25 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,cmam,matched}", buf, 0x12u);
            }

            v26 = 1;
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          if (v26 != 14 && v26)
          {
            v44 = 1;
            goto LABEL_98;
          }
        }

        else
        {

          v27 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#sa_util,isHashMatch,cmam_text nil}", buf, 0x12u);
          }
        }

        ++v12;
      }

      while (v11 != v12);
      v45 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v47 = "{msg%{public}.0s:#sa_util,isHashMatch,noMatch}";
        goto LABEL_96;
      }
    }

    else
    {
      v45 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v47 = "{msg%{public}.0s:#sa_util,isHashMatch,invalidInfoCount,noMatch}";
LABEL_96:
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v47, buf, 0x12u);
      }
    }

    v44 = 0;
LABEL_98:
  }

  else
  {
    v43 = SALogObjectGeneral;
    v44 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,isHashMatch,noInfoFound,noMatch}", buf, 0x12u);
      v44 = 0;
    }
  }

LABEL_100:
  return v44;
}

void sub_1000BCB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void SACommonUtils::getAnyCmam(SACommonUtils *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = this;
  v5 = v4;
  if (v4)
  {
    v6 = [(SACommonUtils *)v4 objectForKey:@"info"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,invalidInfo}", buf, 0x12u);
      }

      sub_1000060C4(a2, "");
LABEL_25:

      goto LABEL_26;
    }

    v7 = v6;
    v8 = [v7 count];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [v7 objectAtIndexedSubscript:i];
        v11 = [v10 objectForKey:@"CMAMtext"];

        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_23;
          }
        }

        v12 = [v7 objectAtIndexedSubscript:i];
        v11 = [v12 objectForKey:@"CMAMlongtext"];

        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_23:
            sub_1000060C4(a2, [v11 UTF8String]);

            goto LABEL_24;
          }
        }
      }

      v13 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v14 = "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,noCmamFound}";
    }

    else
    {
      v13 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v14 = "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,invalidInfoCount}";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
LABEL_22:
    sub_1000060C4(a2, "");
LABEL_24:

    goto LABEL_25;
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getAnyCmamFailed,dictionaryIsEmpty}", buf, 0x12u);
  }

  sub_1000060C4(a2, "");
LABEL_26:
}

void SACommonUtils::getLongestCmam(SACommonUtils *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = this;
  v5 = v4;
  if (v4)
  {
    v6 = [(SACommonUtils *)v4 objectForKey:@"info"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v6;
      v8 = [v7 count];
      if (v8)
      {
        v9 = 0;
        while (1)
        {
          v10 = [v7 objectAtIndexedSubscript:v9];
          v11 = [v10 objectForKey:@"CMAMlongtext"];

          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          if (v8 == ++v9)
          {
            v12 = 0;
            while (1)
            {
              v13 = [v7 objectAtIndexedSubscript:v12];
              v11 = [v13 objectForKey:@"CMAMtext"];

              if (v11)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_25;
                }
              }

              if (v8 == ++v12)
              {
                v14 = SALogObjectGeneral;
                if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }

                v18 = 68289026;
                v19 = 0;
                v20 = 2082;
                v21 = "";
                v15 = "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,noCmamFound}";
                goto LABEL_23;
              }
            }
          }
        }

LABEL_25:
        sub_1000060C4(a2, [v11 UTF8String]);
      }

      else
      {
        v14 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 68289026;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v15 = "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,invalidInfoCount}";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0x12u);
        }

LABEL_24:
        sub_1000060C4(a2, "");
      }
    }

    else
    {
      v16 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 68289026;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,invalidInfo}", &v18, 0x12u);
      }

      sub_1000060C4(a2, "");
    }
  }

  else
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa_util,#warning,getLongestCmam,dictionaryIsEmpty}", &v18, 0x12u);
    }

    sub_1000060C4(a2, "");
  }
}

uint64_t SACommonUtils::getStringFromDictionary(void *a1, uint64_t a2, std::string *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sub_10001D128(a3, [v4 UTF8String]);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void SACommonUtils::getWEAHandling(void *a1, std::string *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"info"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      memset(&__str, 0, sizeof(__str));
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
      if (v7)
      {
        v8 = *v16;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (SACommonUtils::getStringFromDictionary(v10, @"WEAHandling", &__str))
                {
                  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = __str.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    std::string::operator=(a2, &__str);
                    v13 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v14 = a2;
                      }

                      else
                      {
                        v14 = a2->__r_.__value_.__r.__words[0];
                      }

                      *buf = 68289283;
                      v21 = 0;
                      v22 = 2082;
                      v23 = "";
                      v24 = 2081;
                      v25 = v14;
                      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getWEAHandling, weaHandling:%{private, location:escape_only}s}", buf, 0x1Cu);
                    }

                    goto LABEL_26;
                  }
                }
              }
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getWEAHandling,keyword not found}", buf, 0x12u);
      }

LABEL_26:

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }
  }
}

void sub_1000BD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SACommonUtils::getWeaHandlingType(unint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    result = 0;
    if (v2 <= 0xBu)
    {
      if (v2 != 5)
      {
        if (v2 != 8)
        {
          if (v2 != 10)
          {
            return result;
          }

          goto LABEL_12;
        }

        goto LABEL_50;
      }

LABEL_36:
      v11 = *v1;
      v12 = *(v1 + 4);
      if (v11 == 1700949313 && v12 == 114)
      {
        return 2;
      }

      return 0;
    }

    if (v2 != 12)
    {
      if (v2 == 13)
      {
        if (*v1 ^ 0x532063696C627550 | *(v1 + 5) ^ 0x7974656661532063)
        {
          return 0;
        }

        else
        {
          return 5;
        }
      }

      if (v2 != 15)
      {
        return result;
      }

LABEL_26:
      v8 = *v1;
      v9 = *(v1 + 7);
      if (v8 == 0x746E656E696D6D49 && v9 == 0x7461657268542074)
      {
        return 3;
      }

      return 0;
    }

LABEL_43:
    v14 = *v1;
    v15 = *(v1 + 8);
    return v14 == 0x6E65646973657250 && v15 == 1818323316;
  }

  result = 0;
  v4 = *(v1 + 8);
  if (v4 > 11)
  {
    switch(v4)
    {
      case 12:
        v1 = *v1;
        goto LABEL_43;
      case 13:
        v21 = *v1;
        v22 = *v21;
        v23 = *(v21 + 5);
        if (v22 == 0x532063696C627550 && v23 == 0x7974656661532063)
        {
          return 5;
        }

        return 0;
      case 15:
        v1 = *v1;
        goto LABEL_26;
    }
  }

  else
  {
    switch(v4)
    {
      case 5:
        v1 = *v1;
        goto LABEL_36;
      case 8:
        v1 = *v1;
LABEL_50:
        v17 = bswap64(*v1);
        v18 = v17 >= 0x5745412054657374;
        v19 = v17 > 0x5745412054657374;
        v20 = !v18;
        if (v19 == v20)
        {
          return 6;
        }

        else
        {
          return 0;
        }

      case 10:
        v1 = *v1;
LABEL_12:
        v5 = *v1;
        v6 = *(v1 + 8);
        if (v5 == 0x6175716874726145 && v6 == 25963)
        {
          return 4;
        }

        return 0;
    }
  }

  return result;
}

id SACommonUtils::SACommonGetRunLoop(SACommonUtils *this)
{
  v1 = +[NSRunLoop currentRunLoop];
  v2 = [v1 getCFRunLoop];

  return v2;
}

uint64_t SACommonUtils::isLivabiltyEnabled(SACommonUtils *this)
{
  if (*(sub_100042820() + 321))
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SACommonUtils::weightedMedian(char **a1, float **a2, _DWORD *a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4 || (v6 = *a2, v7 = a2[1], *a2 == v7))
  {
    v18 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v19 = *a2 == a2[1];
    v24 = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    LODWORD(v29[0]) = v5 == v4;
    WORD2(v29[0]) = 1025;
    *(v29 + 6) = v19;
    v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,empty size, isArrayEmpty:%{private}d, isWeightEmpty:%{private}d}";
LABEL_13:
    v16 = v18;
    v17 = 30;
    goto LABEL_14;
  }

  v8 = v7 - v6;
  v9 = v4 - v5;
  if (v7 - v6 != v9)
  {
    v18 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v24 = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    LODWORD(v29[0]) = v9 >> 2;
    WORD2(v29[0]) = 1025;
    *(v29 + 6) = v8 >> 2;
    v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,unequal size, arraySize:%{private}d, weightsSize:%{private}d}";
    goto LABEL_13;
  }

  v10 = 0.0;
  do
  {
    v11 = *v6++;
    v10 = v10 + v11;
  }

  while (v6 != v7);
  v12 = v10;
  v13 = v12;
  if (fabs(v12 + -1.0) > 0.001)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v24 = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2049;
      *v29 = v13;
      v15 = "{msg%{public}.0s:#commonUtils,weightedMedian,#warning,sumWeights invalid, sumWeights:%{private}.4f}";
      v16 = v14;
      v17 = 28;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, &v24, v17);
    }

    return 0;
  }

  if (v8 != 4)
  {
    v22 = *v5;
    v23 = **a2;
    operator new();
  }

  *a3 = *v5;
  return 1;
}

void sub_1000BDE98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL SACommonUtils::didRebootSince(SACommonUtils *this, double a2)
{
  v3 = mach_continuous_time();
  v4 = sub_1000B1880(v3);
  return (time(0) - v4 + -978307200.0) >= a2;
}

uint64_t SACommonUtils::currentHourOfDay(SACommonUtils *this)
{
  v4 = 0;
  v1 = CFCalendarCopyCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  CFCalendarDecomposeAbsoluteTime(v1, Current, "H", &v4);
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

void SACommonUtils::convertDictionaryToString(SACommonUtils *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  sub_1000060C4(a2, "{}");
  if (v4)
  {
    v13 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v13];
    v6 = v13;
    if (v6 || !v5)
    {
      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString, error:%{private, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = [[NSString alloc] initWithData:v5 encoding:4];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        sub_1000060C4(buf, [v8 UTF8String]);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *buf;
        *(a2 + 16) = *&buf[16];
      }

      else
      {
        v12 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString,str nil}", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#commonUtils,convertDictionaryToString,dict nil}", buf, 0x12u);
    }
  }
}

void sub_1000BE1DC(_Unwind_Exception *a1)
{
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

id SACommonUtils::convertStringToDictionary(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = [NSData dataWithBytes:v1 length:?];
    v3 = sub_1000BE350(v2);

    goto LABEL_10;
  }

  if (a1[1])
  {
    v1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary,empty string}", v6, 0x12u);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

id sub_1000BE350(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v9 = 0;
    v2 = [NSJSONSerialization JSONObjectWithData:v1 options:1 error:&v9];
    v3 = v9;
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        v14 = 2113;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary, error:%{private, location:escape_only}@}", buf, 0x1Cu);
      }

      v7 = 0;
    }

    else
    {
      [v2 enumerateKeysAndObjectsUsingBlock:&stru_10013FBB0];
      v7 = v2;
    }
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,convertStringToDictionary,null data}", buf, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

id SACommonUtils::getDictionaryFromJsonFile(uint64_t *a1)
{
  v1 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = [NSString stringWithUTF8String:v1];
    v3 = [NSData dataWithContentsOfFile:v2];

    v4 = sub_1000BE350(v3);

    goto LABEL_10;
  }

  if (a1[1])
  {
    v1 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#commonUtils,getDictionaryFromJsonFile,invalidFilename}", v7, 0x12u);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

BOOL SACommonUtils::convertHexToChar(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (a3 < v4 >> 1)
  {
    v6 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v27 = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1025;
      v32 = a3;
      v33 = 2049;
      v34 = v4;
      v8 = "{msg%{public}.0s:#commonUtils,convertHexToChar,invalid len, len:%{private}d, hex.size():%{private}llu}";
      v9 = v6;
      v10 = 34;
      goto LABEL_7;
    }

    return result;
  }

  *a4 = 0;
  v11 = *(a1 + 23);
  v12 = a1[1];
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(a1 + 23);
  }

  if (!v12)
  {
    v23 = 0;
LABEL_31:
    *a4 = v23;
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = v11 >> 63;
  v16 = 2;
  while (1)
  {
    v17 = *a1;
    if ((v15 & 1) == 0)
    {
      v17 = a1;
    }

    if (*(v17 + v13) - 48 >= 0xA)
    {
      if (*(v17 + v13) - 97 >= 6)
      {
        if (*(v17 + v13) - 65 >= 6)
        {
          v26 = SALogObjectGeneral;
          result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          goto LABEL_36;
        }

        v18 = -55;
      }

      else
      {
        v18 = -87;
      }
    }

    else
    {
      v18 = -48;
    }

    v19 = *(v17 + v13);
    v20 = v16 - 1;
    if (*(v17 + v16 - 1) - 48 >= 0xA)
    {
      break;
    }

    v21 = -48;
LABEL_26:
    v22 = (*(v17 + v20) + v21) | (16 * (v19 + v18));
    v23 = v14 + 1;
    *(a2 + v14) = v22;
    v13 = v16;
    v24 = *(a1 + 23);
    v15 = v24 >> 63;
    if ((v24 & 0x80000000) != 0)
    {
      v24 = a1[1];
    }

    v25 = v24 > v16;
    v16 += 2;
    v14 = v23;
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  if (*(v17 + v20) - 97 < 6)
  {
    v21 = -87;
    goto LABEL_26;
  }

  if (*(v17 + v20) - 65 < 6)
  {
    v21 = -55;
    goto LABEL_26;
  }

  v26 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

LABEL_36:
  v27 = 68289026;
  v28 = 0;
  v29 = 2082;
  v30 = "";
  v8 = "{msg%{public}.0s:#commonUtils,convertHexToChar,error}";
  v9 = v26;
  v10 = 18;
LABEL_7:
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v27, v10);
  return 0;
}

uint64_t SACommonUtils::convertCharToHex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = 1;
      do
      {
        v8 = *(a1 + v5);
        v9 = v7;
        v10 = v8 >> 4;
        v11 = v8 & 0xF;
        if (v9)
        {
          v11 = v10;
        }

        if (v11 > 9)
        {
          v12 = v11 + 87;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        sub_1000BEA20(a3, v12, &v14);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v14;
        *(a3 + 16) = v15;
        v7 = 0;
      }

      while ((v9 & 1) != 0);
      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}