void sub_100066758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006677C(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v87 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    sub_101618F48();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    sub_101618870(qword_1025D4650 == -1);
    goto LABEL_183;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10023F750();
  }

  v4 = qword_1025D4658;
  v5 = *(a1 + 120);
  if (os_log_type_enabled(qword_1025D4658, v5))
  {
    v6 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v6 = *v6;
    }

    if (*(a1 + 4))
    {
      v7 = "Session";
    }

    else
    {
      v7 = "Idle";
    }

    sub_10000EC00(__p, v7);
    v8 = SHIBYTE(v91);
    v9 = *__p;
    sub_1000662F4(a2, v94);
    v10 = __p;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v97 >= 0)
    {
      v11 = v94;
    }

    else
    {
      v11 = *v94;
    }

    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2080;
    *&buf[24] = v11;
    _os_log_impl(dword_100000000, v4, v5, "%scurrent_state,%s,event,%s", buf, 0x20u);
    if (v97 < 0)
    {
      operator delete(*v94);
    }

    if (SHIBYTE(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v59 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v59 = *v59;
    }

    if (*(a1 + 4))
    {
      v60 = "Session";
    }

    else
    {
      v60 = "Idle";
    }

    sub_10000EC00(v94, v60);
    v61 = v97;
    v62 = *v94;
    sub_1000662F4(a2, v85);
    v63 = v94;
    if (v61 < 0)
    {
      v63 = v62;
    }

    if (v86 >= 0)
    {
      v64 = v85;
    }

    else
    {
      v64 = v85[0];
    }

    *__p = 136315650;
    *&__p[4] = v59;
    v89 = 2080;
    v90 = v63;
    v91 = 2080;
    v92 = v64;
    v65 = _os_log_send_and_compose_impl();
    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    if (v97 < 0)
    {
      operator delete(*v94);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v65);
    if (v65 != buf)
    {
      free(v65);
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1 + 8;
  v14 = *(a1 + 4);
  v15 = a1 + 16;
  do
  {
    if (*(v12 + 32) >= v14)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < v14));
  }

  while (v12);
  if (v15 == a1 + 16 || v14 < *(v15 + 32))
  {
LABEL_28:
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }
    }

    v17 = qword_1025D4658;
    if (os_signpost_enabled(qword_1025D4658))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_183:
    __break(1u);
  }

  v19 = *(v15 + 40);
  v20 = *(v15 + 48);
  v21 = (*(a1 + 32) + (v20 >> 1));
  if (v20)
  {
    v19 = *(*v21 + v19);
  }

  v22 = v19(v21, a2);
  v23 = v22;
  v84 = v22;
  if (a2 <= 1 && v22 != v87)
  {
    sub_1016189EC();
  }

  if (*(a1 + 88) >= 2u)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v25 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101618B5C();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101616E5C();
  }

  v26 = qword_1025D4658;
  v27 = *(a1 + 120);
  if (os_log_type_enabled(qword_1025D4658, v27))
  {
    v28 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v28 = *v28;
    }

    if (v23)
    {
      v29 = "Session";
    }

    else
    {
      v29 = "Idle";
    }

    sub_10000EC00(buf, v29);
    if (buf[23] >= 0)
    {
      v30 = buf;
    }

    else
    {
      v30 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v28;
    v89 = 2080;
    v90 = v30;
    _os_log_impl(dword_100000000, v26, v27, "%snewState,%s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v66 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v66 = *v66;
    }

    if (v23)
    {
      v67 = "Session";
    }

    else
    {
      v67 = "Idle";
    }

    sub_10000EC00(__p, v67);
    if (v91 >= 0)
    {
      v68 = __p;
    }

    else
    {
      v68 = *__p;
    }

    *v94 = 136315394;
    *&v94[4] = v66;
    v95 = 2080;
    v96 = v68;
    v69 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v91) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v69);
    if (v69 != buf)
    {
      free(v69);
    }
  }

  if (v23 != v87)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v31 = qword_1025D4658;
    v32 = *(a1 + 120);
    if (os_log_type_enabled(qword_1025D4658, v32))
    {
      v33 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v33 = *v33;
      }

      if (v87)
      {
        v34 = "Session";
      }

      else
      {
        v34 = "Idle";
      }

      sub_10000EC00(__p, v34);
      v35 = SHIBYTE(v91);
      v36 = *__p;
      sub_10000EC00(v94, "Exit");
      v37 = __p;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v97 >= 0)
      {
        v38 = v94;
      }

      else
      {
        v38 = *v94;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      *&buf[22] = 2080;
      *&buf[24] = v38;
      _os_log_impl(dword_100000000, v31, v32, "%soldState,%s,event,%s", buf, 0x20u);
      if (v97 < 0)
      {
        operator delete(*v94);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v70 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v70 = *v70;
      }

      if (v87)
      {
        v71 = "Session";
      }

      else
      {
        v71 = "Idle";
      }

      sub_10000EC00(v94, v71);
      v72 = v97;
      v73 = *v94;
      sub_10000EC00(v85, "Exit");
      v74 = v94;
      if (v72 < 0)
      {
        v74 = v73;
      }

      if (v86 >= 0)
      {
        v75 = v85;
      }

      else
      {
        v75 = v85[0];
      }

      *__p = 136315650;
      *&__p[4] = v70;
      v89 = 2080;
      v90 = v74;
      v91 = 2080;
      v92 = v75;
      v76 = _os_log_send_and_compose_impl();
      if (v86 < 0)
      {
        operator delete(v85[0]);
      }

      v13 = a1 + 8;
      if (v97 < 0)
      {
        operator delete(*v94);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v76);
      if (v76 != buf)
      {
        free(v76);
      }
    }

    v39 = *(a1 + 32);
    *buf = &v87;
    v40 = sub_1001B58E4(v13, &v87);
    v41 = v40[5];
    v42 = v40[6];
    v43 = (v39 + (v42 >> 1));
    if (v42)
    {
      v41 = *(*v43 + v41);
    }

    v44 = v41(v43, 1);
    if (v44 != v87)
    {
      sub_101618C68();
    }

    *(a1 + 4) = v23;
    if (qword_1025D4650 != -1)
    {
      sub_101616E5C();
    }

    v45 = qword_1025D4658;
    v46 = *(a1 + 120);
    if (os_log_type_enabled(qword_1025D4658, v46))
    {
      v47 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v47 = *v47;
      }

      if (v23)
      {
        v48 = "Session";
      }

      else
      {
        v48 = "Idle";
      }

      sub_10000EC00(__p, v48);
      v49 = SHIBYTE(v91);
      v50 = *__p;
      sub_10000EC00(v94, "Enter");
      v51 = __p;
      if (v49 < 0)
      {
        v51 = v50;
      }

      if (v97 >= 0)
      {
        v52 = v94;
      }

      else
      {
        v52 = *v94;
      }

      *buf = 136315650;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = v51;
      *&buf[22] = 2080;
      *&buf[24] = v52;
      _os_log_impl(dword_100000000, v45, v46, "%snewState,%s,event,%s", buf, 0x20u);
      if (v97 < 0)
      {
        operator delete(*v94);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v77 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v77 = *v77;
      }

      if (v23)
      {
        v78 = "Session";
      }

      else
      {
        v78 = "Idle";
      }

      sub_10000EC00(v94, v78);
      v79 = v97;
      v80 = *v94;
      sub_10000EC00(v85, "Enter");
      v81 = v94;
      if (v79 < 0)
      {
        v81 = v80;
      }

      if (v86 >= 0)
      {
        v82 = v85;
      }

      else
      {
        v82 = v85[0];
      }

      *__p = 136315650;
      *&__p[4] = v77;
      v89 = 2080;
      v90 = v81;
      v91 = 2080;
      v92 = v82;
      v83 = _os_log_send_and_compose_impl();
      if (v86 < 0)
      {
        operator delete(v85[0]);
      }

      if (v97 < 0)
      {
        operator delete(*v94);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLNilrSupl>::handleEvent(Event) [T = CLNilrSupl]", "%s\n", v83);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    v53 = *(a1 + 32);
    *buf = &v84;
    v54 = sub_1001B58E4(v13, &v84);
    v55 = v54[5];
    v56 = v54[6];
    v57 = (v53 + (v56 >> 1));
    if (v56)
    {
      v55 = *(*v57 + v55);
    }

    v23 = v55(v57, 0);
    if (v23 != v84)
    {
      sub_101618DD8();
    }
  }

  --*(a1 + 88);
  return v23;
}

void sub_100067594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000675F4(uint64_t a1, int a2)
{
  result = 0;
  switch(a2)
  {
    case 0:
      sub_10160EF54(a1);
      sub_10160F1D0(a1);
      goto LABEL_79;
    case 2:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v20 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,EmergencyModeStart", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101617888(a1);
      }

      sub_10160F0B8(a1 + 2136);
      goto LABEL_78;
    case 3:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v14 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,EmergencyModeEnd", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10161779C(a1);
      }

      sub_10160F0B8(a1 + 2136);
      goto LABEL_79;
    case 4:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v24 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,isSUPLInitValid?", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016175C4(a1);
      }

      result = sub_10160F518(a1, *(a1 + 2528), a1 + 2568);
      if (result)
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v26 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 2564);
          *buf = 67109120;
          v34 = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,SUPLInit is valid", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016176B0(a1);
        }

        *(a1 + 360) = 0x4060000000000000;
        return 1;
      }

      return result;
    case 6:
    case 7:
      sub_10160F1D0(a1);
      goto LABEL_78;
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v5 = qword_1025D4668;
      result = os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_1000662F4(a2, __p);
      if (v32 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 68289282;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v6;
      v7 = "{msg%{public}.0s:#Warning,#nilr,#supl,connEvent without session, connEvent:%{public, location:escape_only}s}";
      goto LABEL_9;
    case 9:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v5 = qword_1025D4668;
      result = os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_10000EC00(__p, "ConnClose");
      if (v32 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      *buf = 68289282;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v28;
      v7 = "{msg%{public}.0s:#Warning,#nilr,#supl,event without session, possibly due to session abort, event:%{public, location:escape_only}s}";
LABEL_9:
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x1Cu);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_79;
    case 15:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v22 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,timeout without session", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016173DC(a1);
      goto LABEL_79;
    case 16:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v10 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,ecid request without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016172E8(a1);
      goto LABEL_79;
    case 17:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v12 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ecid response without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 2);
      if (!result)
      {
        return result;
      }

      sub_1016171FC(a1);
      goto LABEL_79;
    case 18:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v18 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,ecid request timeout without session", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617108(a1);
      goto LABEL_79;
    case 19:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v16 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan request without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617014(a1);
      goto LABEL_79;
    case 20:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v29 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v30;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan response without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_1016174D0(a1);
      goto LABEL_79;
    case 21:
      if (qword_1025D4660 != -1)
      {
        sub_101617000();
      }

      v8 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 2564);
        *buf = 67109120;
        v34 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,wlan request timeout without session, dropping..", buf, 8u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101617974(a1);
      goto LABEL_79;
    case 22:
      if (*(a1 + 371) == 1)
      {
LABEL_78:
        sub_100067E40(a1);
      }

LABEL_79:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100067E40(uint64_t a1)
{
  if (*(a1 + 272) == 1 && *(a1 + 313) == 1)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101617000();
    }

    v2 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 272) == 1)
      {
        v3 = *(a1 + 313);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(a1 + 2440);
      if (!v4)
      {
        sub_1000CF05C();
      }

      v5 = *(a1 + 2564);
      v6 = *(a1 + 318);
      v7 = (*(*v4 + 48))(v4);
      v8 = *(a1 + 312);
      *buf = 67110144;
      v33 = v5;
      v34 = 1024;
      v35 = v3;
      v36 = 1024;
      v37 = v6;
      v38 = 1024;
      v39 = v7;
      v40 = 1024;
      v41 = v8;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#supl,startUdpListenerOnce,isSuplAllowed,%d,fInCellularEmergency,%d,fIsServingCellOnLte,%d,fUdpListenerIsRunning,%d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4660 != -1)
      {
        sub_101616C5C();
      }

      if (*(a1 + 272) == 1)
      {
        v14 = *(a1 + 313);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 2564);
      v16 = *(a1 + 318);
      v17 = sub_101611950(a1 + 2416);
      v18 = *(a1 + 312);
      v22 = 67110144;
      v23 = v15;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::startUdpListenerOnce()", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    if (*(a1 + 272) == 1 && *(a1 + 313) == 1)
    {
      v9 = *(a1 + 2440);
      if (!v9)
      {
        sub_1000CF05C();
      }

      if ((*(*v9 + 48))(v9) && (*(a1 + 312) & 1) == 0)
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v10 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 2564);
          *buf = 67109120;
          v33 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,startUdpListenerOnce,success", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101618594(a1);
        }

        v12 = *(a1 + 304);
        v13 = *(a1 + 424);
        if (*(a1 + 423) < 0)
        {
          sub_100007244(__p, *(a1 + 400), *(a1 + 408));
        }

        else
        {
          *__p = *(a1 + 400);
          v21 = *(a1 + 416);
        }

        sub_100B9F1D0(v12, v13, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        *(a1 + 312) = 1;
      }
    }
  }
}

void sub_1000681E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100068208(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_101798E48();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, &v99);
    v8 = v103 >= 0 ? &v99 : v99;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,onTelephonyNotification,%s", buf, 0xCu);
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v99);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101799A38(a2);
  }

  sub_100005548(v94, *a3);
  v92 = 255;
  v93 = 0;
  v9 = sub_100072010(a2);
  if (!CFEqual(@"kSuplInitPayloadNotification", v9))
  {
    v18 = sub_100072010(a2);
    if (CFEqual(@"kSimStatusChangeNotification", v18))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = 67109120;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 0;
        v75 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v75);
        if (v75 != &v99)
        {
          free(v75);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v99 = &dword_101DBA410;
        v20 = sub_10006A3F4(a1 + 760, &dword_101DBA410);
        sub_100064A18(v20[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v34 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v99) = 0;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v99);
          *buf = 0;
          v80 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v80);
          if (v80 != &v99)
          {
            free(v80);
          }
        }
      }

      if (!sub_10006A33C(a1, 1))
      {
        return sub_100005DA4(v94);
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v35 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = 0x104000100;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 1;
        v81 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v81);
        if (v81 != &v99)
        {
          free(v81);
        }
      }

      if (sub_10006A33C(a1, 1))
      {
LABEL_90:
        v99 = &dword_101DBA414;
        v30 = sub_10006A3F4(a1 + 760, &dword_101DBA414);
        goto LABEL_111;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v37 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v99) = 0;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4(v94);
      }

LABEL_149:
      sub_101798E04(&v99);
      *buf = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v17);
      goto LABEL_150;
    }

    v31 = sub_100072010(a2);
    if (CFEqual(@"kCellInfoNotification", v31))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v32 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = 67109120;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 0;
        v82 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v82);
        if (v82 != &v99)
        {
          free(v82);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v99 = &dword_101DBA410;
        v33 = sub_10006A3F4(a1 + 760, &dword_101DBA410);
        sub_100064A18(v33[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v40 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v99) = 0;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v99);
          *buf = 0;
          v83 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v83);
          if (v83 != &v99)
          {
            free(v83);
          }
        }
      }

      if (sub_10006A33C(a1, 1))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v41 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v99 = 0x104000100;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101798E04(&v99);
          *buf = 67109120;
          *&buf[4] = 1;
          v84 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v84);
          if (v84 != &v99)
          {
            free(v84);
          }
        }

        if (sub_10006A33C(a1, 1))
        {
          v99 = &dword_101DBA414;
          v42 = sub_10006A3F4(a1 + 760, &dword_101DBA414);
          sub_100064A18(v42[5], a2, a3);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v43 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v99) = 0;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101798E04(&v99);
            *buf = 0;
            v86 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v86);
            if (v86 != &v99)
            {
              free(v86);
            }
          }
        }
      }

      if (sub_10006FB38())
      {
        if (*(a1 + 1237) == 1)
        {
          v44 = *a3;
          if (*a3)
          {
            memset(__p, 0, 24);
            memset(buf, 0, sizeof(buf));
            v97 = 1065353216;
            if (sub_100065478(v44, buf))
            {
              *v95 = a1 + 1232;
              if (sub_100065670(buf, (a1 + 1232))[3])
              {
                sub_1000658D0(*(a1 + 1232), buf, __p);
                sub_100065934(__p, &v99);
                sub_1000659B0(a1, &v99);
                sub_1000827E4(&v99);
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101798DDC();
                }

                v63 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                {
                  v99 = 68289026;
                  v100 = 2082;
                  v101 = "";
                  _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ci,cellInfo,error fetching cell info}", &v99, 0x12u);
                }
              }
            }

            sub_100075100(buf);
            v99 = __p;
            sub_100072124(&v99);
          }
        }
      }

      return sub_100005DA4(v94);
    }

    v38 = sub_100072010(a2);
    if (CFEqual(@"kCellRefreshNotification", v38))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v39 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = 67109120;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 0;
        v85 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v85);
        if (v85 != &v99)
        {
          free(v85);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v99 = &dword_101DBA410;
        v30 = sub_10006A3F4(a1 + 760, &dword_101DBA410);
        goto LABEL_111;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v48 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v99) = 0;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4(v94);
      }

      goto LABEL_149;
    }

    v45 = sub_100072010(a2);
    if (CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v45))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v46 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v99 = 67109120;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 0;
        v87 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v87);
        if (v87 != &v99)
        {
          free(v87);
        }
      }

      if (sub_10006A33C(a1, 0))
      {
        v99 = &dword_101DBA410;
        v47 = sub_10006A3F4(a1 + 760, &dword_101DBA410);
        sub_100064A18(v47[5], a2, a3);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101798DDC();
        }

        v56 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v99) = 0;
          _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101798E04(&v99);
          *buf = 0;
          v88 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v88);
          if (v88 != &v99)
          {
            free(v88);
          }
        }
      }

      if (!sub_10006A33C(a1, 1))
      {
        return sub_100005DA4(v94);
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v57 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v99 = 0x104000100;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101798E04(&v99);
        *buf = 67109120;
        *&buf[4] = 1;
        v89 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v89);
        if (v89 != &v99)
        {
          free(v89);
        }
      }

      if (sub_10006A33C(a1, 1))
      {
        goto LABEL_90;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v65 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v99) = 0;
        _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return sub_100005DA4(v94);
      }

      goto LABEL_149;
    }

    v49 = sub_100072010(a2);
    if (CFEqual(v49, @"kSubscriptionChangeNotification") && sub_10006FB38())
    {
      v50 = *a3;
      if (*a3)
      {
        memset(buf, 0, sizeof(buf));
        v97 = 1065353216;
        if (sub_10116E14C(v50, buf))
        {
          v95[0] = 0;
          v99 = v95;
          v51 = *(sub_1009160E8(buf, v95) + 20);
          v99 = v95;
          v52 = *(sub_1009160E8(buf, v95) + 22);
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v53 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v54 = v95[0];
            __p[0] = v95;
            v55 = *(sub_1009160E8(buf, v95) + 21);
            v99 = 68290050;
            v100 = 2082;
            v101 = "";
            v102 = 1026;
            v103 = v54;
            v104 = 1026;
            v105 = v51;
            v106 = 1026;
            v107 = v55;
            v108 = 1026;
            v109 = v52;
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#timingadvance,kSubscriptionChangeNotification for sim1, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", &v99, 0x2Au);
          }

          if (v51 && v52)
          {
            *(a1 + 1232) = 0;
          }

          else if (sub_1000649A0())
          {
            v91 = 1;
            v99 = &v91;
            v70 = *(sub_1009160E8(buf, &v91) + 20);
            v99 = &v91;
            v71 = *(sub_1009160E8(buf, &v91) + 22);
            if (qword_1025D4650 != -1)
            {
              sub_101798DDC();
            }

            v72 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v73 = v91;
              __p[0] = &v91;
              v74 = *(sub_1009160E8(buf, &v91) + 21);
              v99 = 68290050;
              v100 = 2082;
              v101 = "";
              v102 = 1026;
              v103 = v73;
              v104 = 1026;
              v105 = v70;
              v106 = 1026;
              v107 = v74;
              v108 = 1026;
              v109 = v71;
              _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#timingadvance,kSubscriptionChangeNotification for sim2, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", &v99, 0x2Au);
            }

            if (v70 && v71)
            {
              *(a1 + 1232) = 1;
            }
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101798DDC();
          }

          v66 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v99) = 0;
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_ERROR, "#timingadvance,kSubscriptionChangeNotification,error fetching context", &v99, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101798E04(&v99);
            LOWORD(__p[0]) = 0;
            v67 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v67);
            if (v67 != &v99)
            {
              free(v67);
            }
          }
        }

        sub_1004906DC(buf);
      }

      return sub_100005DA4(v94);
    }

    v58 = sub_100072010(a2);
    if (!CFEqual(v58, @"kCLCellularTransmitStateNotification") || !sub_10006FB38() || *(a1 + 1237) != 1 || !*a3)
    {
      return sub_100005DA4(v94);
    }

    sub_100005548(__p, *a3);
    if (sub_10001CBC0(__p, @"kCLCellularTransmitStateNotification", (a1 + 1236)))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v59 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a1 + 1236);
        LODWORD(v99) = 67109120;
        HIDWORD(v99) = v60;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#nifc #timingadvance,kTransmitStateNotification, %d", &v99, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_216;
      }

      sub_101798E04(&v99);
      v61 = *(a1 + 1236);
      *buf = 67109120;
      *&buf[4] = v61;
      v62 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v62);
      if (v62 == &v99)
      {
        goto LABEL_216;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v68 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(@"kCLCellularTransmitStateNotification", &v99);
        v69 = v103 >= 0 ? &v99 : v99;
        *buf = 136446210;
        *&buf[4] = v69;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,key,%{public}s,notExist", buf, 0xCu);
        if (SHIBYTE(v103) < 0)
        {
          operator delete(v99);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_216;
      }

      sub_101798E04(&v99);
      sub_1000238CC(@"kCLCellularTransmitStateNotification", buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v90 = buf;
      }

      else
      {
        v90 = *buf;
      }

      v95[0] = 136446210;
      *&v95[1] = v90;
      v62 = _os_log_send_and_compose_impl();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v62);
      if (v62 == &v99)
      {
        goto LABEL_216;
      }
    }

    free(v62);
LABEL_216:
    sub_100005DA4(__p);
    return sub_100005DA4(v94);
  }

  if (sub_1000052CC(v94, @"kSlotIdKey", &v93))
  {
    v10 = sub_1000646B0(v93);
    v11 = v10;
    v92 = v10;
    if ((*(a1 + 792) & 1) == 0 && v10)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101798DDC();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_100072010(a2);
        sub_1000238CC(v13, buf);
        v14 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        LODWORD(v99) = 67109634;
        HIDWORD(v99) = v11;
        v100 = 2080;
        v101 = v14;
        v102 = 1024;
        v103 = v93;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s,invalidInstance,slot,%d", &v99, 0x18u);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101798E04(&v99);
        v15 = sub_100072010(a2);
        sub_1000238CC(v15, __p);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 67109634;
        *&buf[4] = v11;
        *&buf[8] = 2080;
        *&buf[10] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v93;
        v17 = _os_log_send_and_compose_impl();
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_52;
      }

      return sub_100005DA4(v94);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v27 = sub_100072010(a2);
      sub_1000238CC(v27, &v99);
      v28 = v103 >= 0 ? &v99 : v99;
      *buf = 67109378;
      *&buf[4] = v11;
      *&buf[8] = 2080;
      *&buf[10] = v28;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,#ins%d,onTelephonyNotification,%s", buf, 0x12u);
      if (SHIBYTE(v103) < 0)
      {
        operator delete(v99);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101798E04(&v99);
      v76 = sub_100072010(a2);
      sub_1000238CC(v76, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v77 = buf;
      }

      else
      {
        v77 = *buf;
      }

      LODWORD(__p[0]) = 67109378;
      HIDWORD(__p[0]) = v11;
      LOWORD(__p[1]) = 2080;
      *(&__p[1] + 2) = v77;
      v78 = _os_log_send_and_compose_impl();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v78);
      if (v78 != &v99)
      {
        free(v78);
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v99) = 67109120;
      HIDWORD(v99) = v11;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#nilr,#nifc,invoke,%d,onTelephonyNotification(notification, data)", &v99, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101798E04(&v99);
      *buf = 67109120;
      *&buf[4] = v11;
      v79 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v79);
      if (v79 != &v99)
      {
        free(v79);
      }
    }

    if (sub_10006A33C(a1, v11))
    {
      v99 = &v92;
      v30 = sub_10006A3F4(a1 + 760, &v92);
LABEL_111:
      sub_100064A18(v30[5], a2, a3);
      return sub_100005DA4(v94);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101798DDC();
    }

    v36 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v99) = 0;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_FAULT, "Invalid instance", &v99, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return sub_100005DA4(v94);
    }

    sub_101798E04(&v99);
    *buf = 0;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v17);
LABEL_150:
    if (v17 != &v99)
    {
LABEL_151:
      free(v17);
      return sub_100005DA4(v94);
    }

    return sub_100005DA4(v94);
  }

  if (qword_1025D4650 != -1)
  {
    sub_101798DDC();
  }

  v21 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v22 = sub_100072010(a2);
    sub_1000238CC(v22, &v99);
    v23 = v103 >= 0 ? &v99 : v99;
    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#nilr,#nifc,onTelephonyNotification,%s,slot,na", buf, 0xCu);
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v99);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101798E04(&v99);
    v24 = sub_100072010(a2);
    sub_1000238CC(v24, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v25;
    v17 = _os_log_send_and_compose_impl();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

LABEL_52:
    sub_100152C7C("Generic", 1, 0, 0, "void CLNilrInterfaceController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v17);
    if (v17 == &v99)
    {
      return sub_100005DA4(v94);
    }

    goto LABEL_151;
  }

  return sub_100005DA4(v94);
}

void sub_10006A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_100005DA4(va1);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

BOOL sub_10006A33C(uint64_t a1, signed int a2)
{
  v2 = 0;
  v5 = a2;
  if (a2 <= 1)
  {
    if ((a2 == 0) | *(a1 + 792) & 1)
    {
      v2 = *(a1 + 768);
      if (v2)
      {
        v3 = a1 + 768;
        do
        {
          if (*(v2 + 32) >= a2)
          {
            v3 = v2;
          }

          v2 = *(v2 + 8 * (*(v2 + 32) < a2));
        }

        while (v2);
        if (v3 == a1 + 768 || *(v3 + 32) > a2)
        {
          return 0;
        }

        else
        {
          v6 = &v5;
          return sub_10006A3F4(a1 + 760, &v5)[5] != 0;
        }
      }
    }
  }

  return v2;
}

uint64_t *sub_10006A3F4(uint64_t a1, int *a2)
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

id *sub_10006A4E8(id *a1, void *a2)
{
  *a1 = 0;
  v3 = [a2 valueForKey:@"kCellRefreshNotification"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a1 = v3;
    v4 = v3;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*a1 count];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#clct,CLCTCellInfo, received cellList size,%lu", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CC368(a1);
  }

  return a1;
}

BOOL sub_10006A604(uint64_t *a1, CFArrayRef theArray, int a3)
{
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v5 = *a1;
  for (i = a1[1]; i != v5; sub_1000720CC(i))
  {
    i -= 696;
  }

  a1[1] = v5;
  if (!theArray)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v85 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "CellService, convert, empty CellList", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C923C(buf);
      LOWORD(v112[0]) = 0;
      v88 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v88);
      if (v88 != buf)
      {
        free(v88);
      }
    }

    goto LABEL_126;
  }

  Count = CFArrayGetCount(theArray);
  if (qword_1025D4620 != -1)
  {
    sub_1018C6DA0();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *&buf[4] = Count;
    *&buf[8] = 1026;
    *&buf[10] = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CellService, convertCells, %{public}d, neighbors, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C923C(buf);
    LODWORD(v112[0]) = 67240448;
    HIDWORD(v112[0]) = Count;
    LOWORD(v112[1]) = 1026;
    *(&v112[1] + 2) = a3;
    v87 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v87);
    if (v87 != buf)
    {
      free(v87);
    }
  }

  v90 = theArray;
  if (Count >= 1)
  {
    v8 = 0;
    key = kCTCellMonitorDerivedMCC;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 == CFDictionaryGetTypeID())
      {
        v93 = ValueAtIndex;
        if (CFDictionaryContainsKey(ValueAtIndex, key))
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018C6BA0();
          }

          v11 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CELL_LOC: derivedMCC dictionary", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C7228(buf);
            LOWORD(v112[0]) = 0;
            v65 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v65);
            if (v65 != buf)
            {
              free(v65);
            }
          }

          sub_100585A08(&v93, &v94);
        }

        else
        {
          sub_10006BCBC(v112, &v93);
          if (HIDWORD(v112[0]) == 1)
          {
            v14 = a3;
          }

          else
          {
            v14 = 0;
          }

          if (!HIDWORD(v112[0]) || v14)
          {
            if (qword_1025D4620 != -1)
            {
              sub_100244210();
            }

            v25 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              sub_100075160(v112, buf);
              v26 = buf[23];
              v27 = *buf;
              sub_1000753AC(v101, v112);
              v28 = buf;
              if (v26 < 0)
              {
                v28 = v27;
              }

              v29 = v101;
              if (v104 < 0)
              {
                v29 = *v101;
              }

              *__p = 136446467;
              *&__p[4] = v28;
              v109 = 2081;
              v110 = v29;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CellService, convert, add, %{public}s, %{private}s", __p, 0x16u);
              if (SHIBYTE(v104) < 0)
              {
                operator delete(*v101);
              }

              theArray = v90;
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C923C(buf);
              sub_100075160(v112, v101);
              v66 = SHIBYTE(v104);
              v67 = *v101;
              sub_1000753AC(__p, v112);
              v68 = v101;
              if (v66 < 0)
              {
                v68 = v67;
              }

              v69 = __p;
              if (v111 < 0)
              {
                v69 = *__p;
              }

              *v97 = 136446467;
              *&v97[4] = v68;
              v98 = 2081;
              v99 = v69;
              v70 = _os_log_send_and_compose_impl();
              if (v111 < 0)
              {
                operator delete(*__p);
              }

              theArray = v90;
              if (SHIBYTE(v104) < 0)
              {
                operator delete(*v101);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v70);
              if (v70 != buf)
              {
                free(v70);
              }
            }

            *&buf[32] = v114;
            v157[0] = v115[0];
            *(v157 + 12) = *(v115 + 12);
            *buf = *v112;
            *&buf[16] = v113;
            v158 = v116;
            v160 = 0;
            v159 = 0uLL;
            sub_10038EB38(&v159, v117, v118, (v118 - v117) >> 2);
            v171 = v129;
            v172[0] = v130[0];
            *(v172 + 12) = *(v130 + 12);
            v167 = v125;
            v168 = v126;
            v169 = v127;
            v170 = v128;
            v163 = v121;
            v164 = v122;
            v165 = v123;
            v166 = v124;
            v161 = v119;
            v162 = v120;
            if (SHIBYTE(v132) < 0)
            {
              sub_100007244(&v173, __src, *(&__src + 1));
            }

            else
            {
              v173 = __src;
              v174 = v132;
            }

            v183 = v141;
            v184 = v142;
            v185 = v143;
            v179 = v137;
            v180 = v138;
            v181 = v139;
            v182 = v140;
            v175 = v133;
            v176 = v134;
            v177 = v135;
            v178 = v136;
            v194 = v152;
            v195 = v153;
            v196 = v154;
            v197 = v155;
            v190 = v148;
            v191 = v149;
            v192 = v150;
            v193 = v151;
            v186 = v144;
            v187 = v145;
            v188 = v146;
            v189 = v147;
            v30 = a1[1];
            if (v30 >= a1[2])
            {
              v61 = sub_10006F718(a1, buf);
              v62 = SHIBYTE(v174);
              a1[1] = v61;
              if (v62 < 0)
              {
                operator delete(v173);
              }
            }

            else
            {
              *v30 = *buf;
              v31 = *&buf[16];
              v32 = *&buf[32];
              v33 = v157[0];
              *(v30 + 60) = *(v157 + 12);
              *(v30 + 32) = v32;
              *(v30 + 48) = v33;
              *(v30 + 16) = v31;
              *(v30 + 80) = v158;
              *(v30 + 96) = 0;
              *(v30 + 104) = 0;
              *(v30 + 88) = 0;
              *(v30 + 88) = v159;
              *(v30 + 104) = v160;
              v159 = 0uLL;
              v160 = 0;
              *(v30 + 112) = v161;
              v34 = v162;
              v35 = v163;
              v36 = v165;
              *(v30 + 160) = v164;
              *(v30 + 176) = v36;
              *(v30 + 128) = v34;
              *(v30 + 144) = v35;
              v37 = v166;
              v38 = v167;
              v39 = v169;
              *(v30 + 224) = v168;
              *(v30 + 240) = v39;
              *(v30 + 192) = v37;
              *(v30 + 208) = v38;
              v40 = v170;
              v41 = v171;
              v42 = v172[0];
              *(v30 + 300) = *(v172 + 12);
              *(v30 + 272) = v41;
              *(v30 + 288) = v42;
              *(v30 + 256) = v40;
              v43 = v173;
              *(v30 + 336) = v174;
              *(v30 + 320) = v43;
              v174 = 0;
              v173 = 0uLL;
              v45 = v176;
              v44 = v177;
              *(v30 + 344) = v175;
              *(v30 + 360) = v45;
              *(v30 + 376) = v44;
              v46 = v181;
              v48 = v178;
              v47 = v179;
              *(v30 + 424) = v180;
              *(v30 + 440) = v46;
              *(v30 + 392) = v48;
              *(v30 + 408) = v47;
              v50 = v183;
              v49 = v184;
              v51 = v182;
              *(v30 + 504) = v185;
              *(v30 + 472) = v50;
              *(v30 + 488) = v49;
              *(v30 + 456) = v51;
              v52 = v186;
              v53 = v187;
              v54 = v189;
              *(v30 + 544) = v188;
              *(v30 + 560) = v54;
              *(v30 + 512) = v52;
              *(v30 + 528) = v53;
              v55 = v190;
              v56 = v191;
              v57 = v193;
              *(v30 + 608) = v192;
              *(v30 + 624) = v57;
              *(v30 + 576) = v55;
              *(v30 + 592) = v56;
              v58 = v194;
              v59 = v195;
              v60 = v196;
              *(v30 + 688) = v197;
              *(v30 + 656) = v59;
              *(v30 + 672) = v60;
              *(v30 + 640) = v58;
              a1[1] = v30 + 696;
            }

            if (v159)
            {
              *(&v159 + 1) = v159;
              operator delete(v159);
            }
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_100244210();
            }

            v15 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
            {
              sub_100075160(v112, v101);
              v16 = SHIBYTE(v104);
              v17 = *v101;
              sub_1000753AC(__p, v112);
              v18 = v101;
              if (v16 < 0)
              {
                v18 = v17;
              }

              v19 = __p;
              if (v111 < 0)
              {
                v19 = *__p;
              }

              *buf = 136446979;
              *&buf[4] = v18;
              *&buf[12] = 2081;
              *&buf[14] = v19;
              *&buf[22] = 1026;
              *&buf[24] = HIDWORD(v112[0]) == 0;
              *&buf[28] = 1026;
              *&buf[30] = HIDWORD(v112[0]) == 1;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "CellService, convert, ignore, %{public}s, %{private}s, serving, %{public}d, neighbor, %{public}d", buf, 0x22u);
              if (v111 < 0)
              {
                operator delete(*__p);
              }

              theArray = v90;
              if (SHIBYTE(v104) < 0)
              {
                operator delete(*v101);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C923C(buf);
              sub_100075160(v112, __p);
              v20 = v111;
              v21 = *__p;
              sub_1000753AC(v97, v112);
              v22 = __p;
              if (v20 < 0)
              {
                v22 = v21;
              }

              v23 = v97;
              if (v100 < 0)
              {
                v23 = *v97;
              }

              *v101 = 136446979;
              *&v101[4] = v22;
              v102 = 2081;
              v103 = v23;
              v104 = 1026;
              v105 = HIDWORD(v112[0]) == 0;
              v106 = 1026;
              v107 = HIDWORD(v112[0]) == 1;
              v24 = _os_log_send_and_compose_impl();
              if (v100 < 0)
              {
                operator delete(*v97);
              }

              theArray = v90;
              if (v111 < 0)
              {
                operator delete(*__p);
              }

              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v24);
              if (v24 != buf)
              {
                free(v24);
              }
            }
          }

          if (SHIBYTE(v132) < 0)
          {
            operator delete(__src);
          }

          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_100244210();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          TypeID = CFDictionaryGetTypeID();
          *buf = 134349056;
          *&buf[4] = TypeID;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CellService, convert, invalid, %{public}ld", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C923C(buf);
          v63 = CFDictionaryGetTypeID();
          LODWORD(v112[0]) = 134349056;
          *(v112 + 4) = v63;
          v64 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v64);
          if (v64 != buf)
          {
            free(v64);
          }
        }
      }

      ++v8;
    }

    while (Count != v8);
  }

  v71 = v94;
  if (v95 != v94)
  {
    v72 = *a1;
    if (a1[1] != *a1)
    {
      v73 = 0;
      v74 = 0;
      do
      {
        if ((*(v72 + v73 + 8) - 3) <= 2)
        {
          sub_10123F038(v72 + v73, &v94);
          if (qword_1025D4620 != -1)
          {
            sub_100244210();
          }

          v75 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            sub_100075160(*a1 + v73, buf);
            v76 = buf[23];
            v77 = *buf;
            sub_1000753AC(v112, *a1 + v73);
            v78 = buf;
            if (v76 < 0)
            {
              v78 = v77;
            }

            v79 = v112;
            if (SBYTE7(v113) < 0)
            {
              v79 = v112[0];
            }

            *v101 = 136446467;
            *&v101[4] = v78;
            v102 = 2081;
            v103 = v79;
            _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "CellService, convert, derive, %{public}s, %{private}s", v101, 0x16u);
            if (SBYTE7(v113) < 0)
            {
              operator delete(v112[0]);
            }

            theArray = v90;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C923C(buf);
            sub_100075160(*a1 + v73, v112);
            v80 = SBYTE7(v113);
            v81 = v112[0];
            sub_1000753AC(v101, *a1 + v73);
            v82 = v112;
            if (v80 < 0)
            {
              v82 = v81;
            }

            v83 = v101;
            if (v104 < 0)
            {
              v83 = *v101;
            }

            *__p = 136446467;
            *&__p[4] = v82;
            v109 = 2081;
            v110 = v83;
            v84 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v104) < 0)
            {
              operator delete(*v101);
            }

            theArray = v90;
            if (SBYTE7(v113) < 0)
            {
              operator delete(v112[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLTelephonyService::convertCTCellsToClCells(std::vector<CLCell> &, CFArrayRef, BOOL)", "%s\n", v84);
            if (v84 != buf)
            {
              free(v84);
            }
          }
        }

        ++v74;
        v72 = *a1;
        v73 += 696;
      }

      while (v74 < 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3));
    }

LABEL_126:
    v71 = v94;
  }

  if (v71)
  {
    v95 = v71;
    operator delete(v71);
  }

  return theArray != 0;
}

void sub_10006B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006B688(uint64_t a1, CFDictionaryRef *a2)
{
  *(a1 + 4) = 0xB00000003;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a1 + 12) = v4;
  v5 = (a1 + 12);
  *a1 = 0;
  *(a1 + 44) = v4;
  v6 = (a1 + 44);
  *(a1 + 28) = v4;
  *(a1 + 60) = v4;
  sub_10006BB6C(a1 + 80);
  *(a1 + 536) = -1;
  *(a1 + 528) = -1;
  *(a1 + 520) = -1;
  *(a1 + 512) = -1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 568) = -1;
  *(a1 + 576) = -1;
  *(a1 + 580) = xmmword_101C7F0A0;
  *(a1 + 600) = -1;
  *(a1 + 608) = -1;
  *(a1 + 616) = -1;
  *(a1 + 624) = -1;
  *(a1 + 632) = -1;
  *(a1 + 640) = 0u;
  *(a1 + 672) = -1;
  *(a1 + 664) = -1;
  *(a1 + 656) = -1;
  *(a1 + 680) = 0xFFFFFFFF00000000;
  *(a1 + 688) = 0;
  sub_100005548(v19, *a2);
  v18 = 0;
  v7 = sub_10006EB64(v19, kCTCellMonitorCellRadioAccessTechnology, &v18);
  if (!v18)
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    *(a1 + 8) = sub_10006BCC0(v18);
  }

  v17 = 0;
  v8 = sub_10006EB64(v19, kCTCellMonitorCellType, &v17);
  if (!v17)
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    *(a1 + 4) = sub_10006F020(v17);
  }

  v9 = *(a1 + 8);
  if ((v9 - 3) <= 2)
  {
    v10 = sub_100620F84(a2, a1 + 80);
LABEL_18:
    *a1 = v10;
    goto LABEL_19;
  }

  if (v9 <= 5)
  {
    if (v9 >= 3)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      v10 = sub_10006F09C(a2, a1 + 512);
      goto LABEL_18;
    }

    if (v9 != 7)
    {
      goto LABEL_31;
    }

LABEL_17:
    v10 = sub_100621F84(a2, v5);
    goto LABEL_18;
  }

  if (v9 == 9)
  {
    v10 = sub_100622668(a2, v6);
    goto LABEL_18;
  }

  if (v9 == 10)
  {
    *a1 = sub_1001558BC(a2, a1 + 600);
    if (qword_1025D4620 != -1)
    {
      sub_101B7C7CC();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "nrCell dictionary received from CT", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7C7F4(buf);
      *v20 = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLCell::CLCell(const CFDictionaryRef &)", "%s\n", v13);
      if (v13 != buf)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_19;
  }

LABEL_31:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C838();
  }

  v14 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    sub_10123DED0(a1, buf);
    v15 = v25 >= 0 ? buf : *buf;
    *v20 = 136446210;
    *&v20[4] = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "CELL_LOC: Invalid cell rat: %{public}s", v20, 0xCu);
    if (v25 < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B7C788(buf);
    sub_10123DED0(a1, v20);
    v16 = v21 >= 0 ? v20 : *v20;
    v22 = 136446210;
    v23 = v16;
    v13 = _os_log_send_and_compose_impl();
    if (v21 < 0)
    {
      operator delete(*v20);
    }

    sub_100152C7C("Generic", 1, 0, 0, "CLCell::CLCell(const CFDictionaryRef &)", "%s\n", v13);
    if (v13 != buf)
    {
LABEL_46:
      free(v13);
    }
  }

LABEL_19:
  sub_100005DA4(v19);
  return a1;
}

void sub_10006BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  sub_10064A5B4(v5 + 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BB6C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0xFFFF;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 104) = _Q0;
  *(a1 + 120) = _Q0;
  v8 = _Q0;
  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xBFF0000000000000;
  *(a1 + 172) = 0;
  *(a1 + 164) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0xBFF0000000000000;
  *(a1 + 192) = 0x7FFFFFFF;
  *(a1 + 212) = 0;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0x30000000BLL;
  *(a1 + 232) = -1;
  sub_10000EC00((a1 + 240), "");
  *(a1 + 264) = 0xFFFF;
  *(a1 + 276) = 0;
  *(a1 + 268) = 0;
  *(a1 + 284) = xmmword_101C75BF0;
  *(a1 + 300) = v8;
  *(a1 + 316) = v8;
  *(a1 + 332) = v8;
  *(a1 + 348) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0xBFF0000000000000;
  *(a1 + 388) = 0x7FFFFFFF;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 420) = -1;
  return a1;
}

void sub_10006BCA0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006BCC0(const void *a1)
{
  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyLTE))
  {
    return 6;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUMTS))
  {
    return 7;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyCDMAHybrid))
  {
    return 5;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(a1, kCTCellMonitorRadioAccessTechnologyNR))
  {
    return 10;
  }

  return 11;
}

BOOL sub_10006BDFC(uint64_t a1)
{
  v4 = 0;
  v2 = 1;
  if (!sub_10000608C(a1, &v4, 1))
  {
    v5 = 3;
    v2 = 1;
    if (!sub_10000608C(a1, &v5, 1))
    {
      v6 = 4;
      return sub_10000608C(a1, &v6, 1) != 0;
    }
  }

  return v2;
}

const void **sub_10006BE80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10006E914(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_10006BEC4(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t sub_10006C0F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100028030(a3);
  result = 0;
  if (v6 && *(a3 + 136))
  {
    v8 = *(a1 + 40);
    if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v8) >> 4) <= a2)
    {
      sub_10046F324();
    }

    v9 = v8 + 144 * a2;
    v25 = off_1024DE5F8;
    v10 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 40);
    v29 = *(v9 + 56);
    v28 = v12;
    v27 = v11;
    v26 = v10;
    v13 = *(v9 + 72);
    v14 = *(v9 + 88);
    v15 = *(v9 + 104);
    v33 = *(v9 + 120);
    v32 = v15;
    v31 = v14;
    v30 = v13;
    v34 = *(v9 + 128);
    v16 = sub_100028030(&v25);
    result = 1;
    if (v16 && BYTE8(v34))
    {
      if (*(a3 + 40) >= *&v28)
      {
        return 0;
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_101907EB4();
        }

        v17 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v18 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v18 = *v18;
          }

          v19 = *(a3 + 40);
          v20 = vcvtpd_s64_f64(*(a3 + 16) / *(a1 + 8));
          *buf = 136446978;
          v44 = v18;
          v45 = 2050;
          v46 = v28;
          v47 = 2050;
          v48 = v19;
          v49 = 1026;
          v50 = v20;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "%{public}s,replace old location based on hunc: old hunc %{public}.1f new hunc %{public}.1f,time_bin,%{public}d", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101907EB4();
          }

          v21 = (a1 + 16);
          if (*(a1 + 39) < 0)
          {
            v21 = *v21;
          }

          v22 = *(a3 + 40);
          v23 = vcvtpd_s64_f64(*(a3 + 16) / *(a1 + 8));
          v35 = 136446978;
          v36 = v21;
          v37 = 2050;
          v38 = v28;
          v39 = 2050;
          v40 = v22;
          v41 = 1026;
          v42 = v23;
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeBinBuffer::shouldReplaceExistingLocation(const size_t, const CLLocationBufferBase::LCBufferLocation &)", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        return 1;
      }
    }
  }

  return result;
}

id sub_10006C414(uint64_t a1, uint64_t a2)
{
  result = sub_10006BDFC(a1);
  if (result && *(a1 + 2797) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A60CCC();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446210;
      v7 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@CellFlow, requestTimingAdvanceInfo, reason, %{public}s", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60E74();
    }

    return [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  }

  return result;
}

void sub_10006C530(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onPressure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onPressure, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(**(a2 + 304) + 24))(*(a2 + 304), a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10006C714(uint64_t a1, uint64_t a2)
{
  result = sub_100062F64(a1 - 352);
  if ((result & 1) == 0)
  {

    return sub_10006C768(a1 + 256, a2);
  }

  return result;
}

uint64_t sub_10006C768(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 288);
  v5 = *(a2 + 8);
  if (v4 == 1.79769313e308 || v5 - v4 >= 0.899999976)
  {
    *(result + 288) = v5;
    v6 = objc_alloc_init(CLPIndoorEvent);
    [v6 setType:5];
    [v6 setPressure:objc_alloc_init(CLPIndoorPressure)];
    [objc_msgSend(v6 "pressure")];
    v7 = *a2 / 1000.0;
    v8 = [v6 pressure];
    *&v9 = v7;
    [v8 setPressure:v9];
    v10 = *(a2 + 40);
    v11 = [v6 pressure];
    LODWORD(v12) = v10;
    [v11 setTemperature:v12];
    [*(v3 + 48) addObject:v6];

    return sub_100063090(v3);
  }

  return result;
}

void sub_10006C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTelephonyService::ctServerConnectionCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C974C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService::ctServerConnectionCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006CAAC;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

const void *sub_10006CABC(uint64_t a1, const void **a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      *v17 = "";
      *&v17[8] = 1026;
      *&v17[10] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = _CTServerConnectionCellMonitorCopyCellInfo();
    v7 = v6;
    v8 = HIDWORD(v6);
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      *buf = 67109888;
      v15 = v7;
      v16 = 1024;
      *v17 = v8;
      *&v17[4] = 2048;
      *&v17[6] = v10;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::createCTCellArray(CFArrayRef *)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    result = *a2;
    if (*a2)
    {
      CFRelease(result);
      result = 0;
      *a2 = 0;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CA460();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CDF8(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000238CC(a3, __p);
    v8 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CTService: received notification %s", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9F38(a3);
  }

  if (CFEqual(kCTRegistrationCellChangedNotification, a3) || CFEqual(kCTRegistrationStatusChangedNotification, a3))
  {
    v9 = sub_100005548(values, a4);
    if ((sub_10001CBC0(v9, kCTRegistrationInHomeCountry, (a1 + 161)) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018C79A0();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "couldn't get kCTRegistrationInHomeCountry, keeping current value", __p, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CA050(__p);
        *buf = 0;
        v34 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v34);
        if (v34 != __p)
        {
          free(v34);
        }
      }
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000238CC(a3, buf);
      v12 = v44 >= 0 ? buf : *buf;
      v13 = *(a1 + 161);
      *__p = 68289538;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v12;
      v46 = 1026;
      v47 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updated kCTRegistrationInHomeCountry from, notification:%{public, location:escape_only}s, fInHomeCountry:%{public}hhd}", __p, 0x22u);
      if (v44 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1005849E0(a1);
    sub_100005DA4(values);
  }

  if (CFEqual(kCTIndicatorRadioTransmitNotification, a3))
  {
    LOBYTE(v40) = 0;
    sub_100005548(buf, a4);
    if (sub_10001CBC0(buf, kCTRadioTransmitDCHStatus, &v40))
    {
      v14 = v40;
      if (v40 != 1)
      {
        *(a1 + 136) = 0;
LABEL_42:
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 136);
          *__p = 67109120;
          *&__p[4] = v17;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CTService: cell transmit status is %d", __p, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C7228(__p);
          v32 = *(a1 + 136);
          LODWORD(values[0]) = 67109120;
          HIDWORD(values[0]) = v32;
          v33 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v33);
          if (v33 != __p)
          {
            free(v33);
          }
        }

        v18 = buf;
LABEL_48:
        sub_100005DA4(v18);
        return (*(*a1 + 256))(a1, a3, a4);
      }
    }

    else
    {
      v14 = -1;
    }

    *(a1 + 136) = v14;
    goto LABEL_42;
  }

  if (CFEqual(kCTConnectionInvalidatedNotification, a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CTService: CommCenter server connection invalidated", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA094();
    }

    *(a1 + 160) = 0;
    sub_10090C1C4(a1 + 176);
    sub_100583E04(a1, 1);
  }

  else if (CFEqual(kCTDaemonReadyNotification, a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v20 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CTService: CommCenter server connection ready", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA180();
    }

    *(a1 + 160) = 1;
    sub_10090C264((a1 + 176));
    sub_100583A88(a1);
  }

  else if (CFEqual(kCTCellMonitorUpdateNotification, a3))
  {
    *buf = 0;
    if (sub_10006CABC(a1, buf))
    {
      if (qword_1025D4620 != -1)
      {
        sub_100244210();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        Count = CFArrayGetCount(*buf);
        *__p = 134217984;
        *&__p[4] = Count;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "@CellService, ctupdate, list, %lu", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CA358(buf);
      }

      *__p = @"kCellRefreshNotification";
      values[0] = *buf;
      v23 = CFDictionaryCreate(0, __p, values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v24 = v23;
      CFRelease(*buf);
      (*(*a1 + 256))(a1, @"kCellRefreshNotification", v23);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_100244210();
      }

      v30 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CellService, outcome, emptylist, CTService", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CA26C();
      }
    }
  }

  else
  {
    if (CFEqual(kCTRadioModuleUplinkChangedNotification, a3))
    {
      v25 = sub_100005548(values, a4);
      v40 = -1;
      v39 = -1;
      if (sub_10016B550(v25, kCTRadioModuleUplinkFrequencyValue, &v40) && (sub_1004FB850(values, kCTRadioModuleUplinkBandwidthValue, &v39) & 1) != 0)
      {
        v26 = v39;
        *(a1 + 164) = v40;
        *(a1 + 168) = v26;
        if (qword_1025D4600 != -1)
        {
          sub_1018C79A0();
        }

        v27 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 164);
          v29 = *(a1 + 168);
          *__p = 134349312;
          *&__p[4] = v28;
          *&__p[12] = 2050;
          *&__p[14] = v29;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#imd,kCTRadioModuleUplinkChangedNotification,freq(Hz),%{public}f,bw(Hz),%{public}f", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CA050(__p);
          v36 = *(a1 + 164);
          v37 = *(a1 + 168);
          *buf = 134349312;
          *&buf[4] = v36;
          v42 = 2050;
          v43 = v37;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v38);
          if (v38 != __p)
          {
            free(v38);
          }
        }

        sub_100583F74(a1, *(a1 + 164), *(a1 + 168));
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018C79A0();
        }

        v31 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "#imd,#cterror,couldn't get kCTRadioModuleUplinkChangedNotification values", __p, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CA050(__p);
          *buf = 0;
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLTelephonyService::ctServerConnectionCallback(CTServerConnectionRef, CFStringRef, CFDictionaryRef)", "%s\n", v35);
          if (v35 != __p)
          {
            free(v35);
          }
        }
      }

      v18 = values;
      goto LABEL_48;
    }

    if (CFEqual(kCTCellularTransmitStateNotification, a3))
    {
      sub_10058415C(a1, a4);
    }
  }

  return (*(*a1 + 256))(a1, a3, a4);
}

const void **sub_10006D908(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10006E850(&v7, a2);
  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  sub_10006DE24(a1, &v7, &v6, 0);
  return sub_10006E914(&v6);
}

void sub_10006DA60(void *a1, unsigned int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v6 = sub_10006E830(a2);
    v8 = a1 + 8;
    v7 = a1[8];
    if (v7)
    {
      v9 = (a1 + 8);
      do
      {
        if (*(v7 + 32) >= v6)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v6));
      }

      while (v7);
      if (v9 != v8 && v6 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10006E308(a3);
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
              sub_10006E368(a1, &v36, &v37, a3);
              v21 = sub_10006E830(a2);
              v22 = a1[8];
              if (!v22)
              {
                return;
              }

              v23 = (a1 + 8);
              do
              {
                if (*(v22 + 32) >= v21)
                {
                  v23 = v22;
                }

                v22 = *(v22 + 8 * (*(v22 + 32) < v21));
              }

              while (v22);
              if (v23 == v8 || v21 < *(v23 + 32))
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
                sub_1018C974C();
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
                  sub_1018C974C();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

void sub_10006DE24(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = sub_10006E830(a2);
    v8 = *(a1 + 64);
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = a1 + 64;
    do
    {
      if (*(v8 + 32) >= v7)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < v7));
    }

    while (v8);
    if (v9 == a1 + 64 || v7 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10058AEA8();
    }

    if (a4)
    {
      sub_10007245C();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_10006D984();
    }
  }
}

void sub_10006E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

id sub_10006E308(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10006E474(a1);
}

_BYTE *sub_10006E368(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v14) = *(*a3 + 32);
    v9 = sub_10006E308(a4);
    v10 = *a3;
    v15 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v15);
    result = (*(*v7 + 192))(v7, v8, &v14, v9, v10 + 80, v11 + 4);
    if (result)
    {
      LODWORD(v15) = *(*a3 + 32);
      v12 = *(*a2 + 64);
      v13 = sub_10006E830(&v15);
      return [v12 onNotification:v13 withData:{a4, v14}];
    }
  }

  return result;
}

id sub_10006E474(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018CCAD8();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F412 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CCAEC();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018CCAD8();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F412 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CCBF4();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_10006E678(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = (v2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = v2 + 16;
  do
  {
    v6 = CFStringCompare(*(v3 + 32), *(a1 + 40), 0);
    if (v6 != kCFCompareLessThan)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == kCFCompareLessThan));
  }

  while (v3);
  if (v5 != v4 && CFStringCompare(*(a1 + 40), *(v5 + 32), 0) != kCFCompareLessThan)
  {
    return *(v5 + 40);
  }

  v8 = *(v2 + 4);
  v9 = *(v2 + 16);
  if (!v9)
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      if (CFStringCompare(*(a1 + 40), v9[4], 0) != kCFCompareLessThan)
      {
        break;
      }

      v9 = *v10;
      v4 = v10;
      if (!*v10)
      {
        goto LABEL_15;
      }
    }

    if (CFStringCompare(v10[4], *(a1 + 40), 0) != kCFCompareLessThan)
    {
      break;
    }

    v4 = v10 + 1;
    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (!*v4)
  {
LABEL_15:
    operator new();
  }

  *(*v4 + 40) = v8;
  v11 = *(a1 + 40);
  sub_10058A94C(v2 + 32, (v2 + 4))[5] = v11;
  result = *(v2 + 4);
  *(v2 + 4) = result + 1;
  return result;
}

uint64_t sub_10006E830(unsigned int *a1)
{
  result = *a1;
  if (result == -1)
  {
    sub_1018C7E3C();
  }

  return result;
}

_DWORD *sub_10006E850(_DWORD *a1, uint64_t a2)
{
  if (qword_102656F20 != -1)
  {
    sub_100248B70();
  }

  v4 = qword_102656F28;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006E678;
  v7[3] = &unk_102460538;
  v7[4] = qword_102656F28;
  v7[5] = a2;
  os_unfair_lock_lock(qword_102656F28);
  v5 = sub_10006E678(v7);
  os_unfair_lock_unlock(v4);
  *a1 = v5;
  return a1;
}

const void **sub_10006E914(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10006E948(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_10196EBB8();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = a2;
    v12 = 2113;
    v13 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ctcl,#ci,onCellInfoChanged context %{private}@, info %{private}@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196FF38();
  }

  sub_100063EEC(a1, a2);
  if (sub_100064028(a2))
  {
    sub_1000641A0(&v10, a3);
    v9 = sub_1000646B0([a2 slotID]);
    *buf = &v9;
    v7 = sub_1000646F8((a1 + 368), &v9);
    sub_100064958(v7 + 3, &v10);
    sub_10006499C(&v10);
    [*(a1 + 112) sendNotificationToClients:@"kCellInfoNotification" notificationData:sub_10006454C((a1 + 368))];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196F27C();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,#ci,isCellInfoValid failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101970030();
    }
  }
}

void sub_10006EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006499C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006EB64(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      return 1;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v10 = v27 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v30 = v10;
        v31 = 2050;
        v32 = v11;
        v33 = 2050;
        v34 = TypeID;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA53C(buf);
        sub_1000238CC(a2, v21);
        if (v22 >= 0)
        {
          v15 = v21;
        }

        else
        {
          v15 = v21[0];
        }

        v16 = CFGetTypeID(cf);
        v17 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v15;
        v25 = 2050;
        v26 = v16;
        v27 = 2050;
        v28 = v17;
        v18 = _os_log_send_and_compose_impl();
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v30 = v14;
        v31 = 2112;
        v32 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v19 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v19;
        v25 = 2112;
        v26 = a2;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void sub_10006EF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006EFD4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10006499C(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10006F020(const void *a1)
{
  if (CFEqual(a1, kCTCellMonitorCellTypeServing))
  {
    return 0;
  }

  if (CFEqual(a1, kCTCellMonitorCellTypeNeighbor))
  {
    return 1;
  }

  if (CFEqual(a1, kCTCellMonitorCellTypeDetected))
  {
    return 2;
  }

  return 3;
}

BOOL sub_10006F09C(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v16, *a1);
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v16, "lteCellFromCellMonitorDict");
  }

  *&__p[4] = 0uLL;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *a2 = -1;
  *(a2 + 28) = *__p;
  v3 = *&__p[16];
  *(a2 + 48) = -1;
  *(a2 + 56) = -1;
  *(a2 + 44) = v3;
  *(a2 + 64) = -1;
  *(a2 + 68) = xmmword_101C7F0A0;
  sub_1000052CC(v16, kCTCellMonitorMCC, a2);
  sub_1000052CC(v16, kCTCellMonitorMNC, (a2 + 4));
  sub_1000052CC(v16, kCTCellMonitorTAC, (a2 + 8));
  sub_1000052CC(v16, kCTCellMonitorCellId, (a2 + 12));
  sub_1000052CC(v16, kCTCellMonitorUARFCN, (a2 + 16));
  cf1 = 0;
  sub_10006EB64(v16, kCTCellMonitorCellType, &cf1);
  if (CFEqual(cf1, kCTCellMonitorCellTypeServing))
  {
    sub_1000052CC(v16, kCTCellMonitorPID, (a2 + 20));
  }

  if (CFEqual(cf1, kCTCellMonitorCellTypeNeighbor))
  {
    sub_1000052CC(v16, kCTCellMonitorPCI, (a2 + 20));
  }

  sub_1000052CC(v16, kCTCellMonitorRSRP, (a2 + 48));
  sub_1000052CC(v16, kCTCellMonitorRSRQ, (a2 + 52));
  sub_1000052CC(v16, kCTCellMonitorBandInfo, (a2 + 24));
  sub_1000052CC(v16, kCTCellMonitorDeploymentType, (a2 + 56));
  sub_1000052CC(v16, kCTCellMonitorBandwidth, (a2 + 60));
  sub_1000052CC(v16, kCTCellMonitorNeighborType, (a2 + 80));
  sub_1000052CC(v16, kCTCellMonitorPMax, (a2 + 64));
  sub_1000052CC(v16, kCTCellMonitorThroughput, (a2 + 68));
  sub_1000052CC(v16, kCTCellMonitorCsgId, (a2 + 76));
  sub_1000052CC(v16, kCTCellMonitorCSGIndication, (a2 + 72));
  v14 = 0;
  if (sub_1000052CC(v16, kCTCellMonitorSectorLat, &v14 + 1))
  {
    if (sub_1000052CC(v16, kCTCellMonitorSectorLong, &v14))
    {
      v4 = v14;
      if (v14)
      {
        *(a2 + 32) = SHIDWORD(v14) * 0.0000694444444;
        *(a2 + 40) = v4 * 0.0000694444444;
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100081198(__p);
    v6 = v22 >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "lteCell populated from CT: %s", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    sub_100081198(buf);
    if (v18 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v19 = 136315138;
    v20 = v11;
    v12 = _os_log_send_and_compose_impl();
    if (v18 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::lteCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::LteCell &)", "%s\n", v12);
    if (v12 != __p)
    {
      free(v12);
    }
  }

  v8 = *a2 > 0 && *(a2 + 4) >= 0;
  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67109120;
    *&__p[4] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "lteCell is valid from CT: %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    *buf = 67109120;
    *&buf[4] = v8;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::lteCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::LteCell &)", "%s\n", v13);
    if (v13 != __p)
    {
      free(v13);
    }
  }

  sub_100005DA4(v16);
  return v8;
}

void sub_10006F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006F718(uint64_t *a1, uint64_t a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_10028C64C();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v3;
  }

  v47 = a1;
  if (v6)
  {
    sub_100071EDC(a1, v6);
  }

  v7 = 696 * v2;
  v44 = 0;
  v45 = v7;
  *(&v46 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 88) = 0;
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 104) = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 176);
  v13 = *(a2 + 128);
  v12 = *(a2 + 144);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v11;
  *(v7 + 128) = v13;
  *(v7 + 144) = v12;
  v14 = *(a2 + 240);
  v16 = *(a2 + 192);
  v15 = *(a2 + 208);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v14;
  *(v7 + 192) = v16;
  *(v7 + 208) = v15;
  v18 = *(a2 + 272);
  v17 = *(a2 + 288);
  v19 = *(a2 + 256);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v18;
  *(v7 + 288) = v17;
  *(v7 + 256) = v19;
  *(v7 + 112) = *(a2 + 112);
  v20 = *(a2 + 320);
  *(v7 + 336) = *(a2 + 336);
  *(v7 + 320) = v20;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 320) = 0;
  v21 = *(a2 + 440);
  v23 = *(a2 + 392);
  v22 = *(a2 + 408);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v21;
  *(v7 + 392) = v23;
  *(v7 + 408) = v22;
  v24 = *(a2 + 344);
  v25 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v25;
  *(v7 + 344) = v24;
  v27 = *(a2 + 472);
  v26 = *(a2 + 488);
  v28 = *(a2 + 456);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v27;
  *(v7 + 488) = v26;
  *(v7 + 456) = v28;
  v29 = *(a2 + 512);
  v30 = *(a2 + 528);
  v31 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v31;
  *(v7 + 512) = v29;
  *(v7 + 528) = v30;
  v32 = *(a2 + 576);
  v33 = *(a2 + 592);
  v34 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v34;
  *(v7 + 576) = v32;
  *(v7 + 592) = v33;
  v35 = *(a2 + 640);
  v36 = *(a2 + 656);
  v37 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v36;
  *(v7 + 672) = v37;
  *(v7 + 640) = v35;
  *&v46 = 696 * v2 + 696;
  v38 = a1[1];
  v39 = 696 * v2 + *a1 - v38;
  sub_10006F96C(a1, *a1, v38, v39);
  v40 = *a1;
  *a1 = v39;
  v41 = a1[2];
  v43 = v46;
  *(a1 + 1) = v46;
  *&v46 = v40;
  *(&v46 + 1) = v41;
  v44 = v40;
  v45 = v40;
  sub_10006FAE8(&v44);
  return v43;
}

void sub_10006F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10006FAE8(va);
  _Unwind_Resume(a1);
}

void sub_10006F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 88) = 0;
      v10 = *(v6 + 176);
      v12 = *(v6 + 128);
      v11 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 176) = v10;
      *(a4 + 128) = v12;
      *(a4 + 144) = v11;
      v13 = *(v6 + 240);
      v15 = *(v6 + 192);
      v14 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = v13;
      *(a4 + 192) = v15;
      *(a4 + 208) = v14;
      v17 = *(v6 + 272);
      v16 = *(v6 + 288);
      v18 = *(v6 + 256);
      *(a4 + 300) = *(v6 + 300);
      *(a4 + 272) = v17;
      *(a4 + 288) = v16;
      *(a4 + 256) = v18;
      *(a4 + 112) = *(v6 + 112);
      v19 = *(v6 + 320);
      *(a4 + 336) = *(v6 + 336);
      *(a4 + 320) = v19;
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 320) = 0;
      v20 = *(v6 + 440);
      v22 = *(v6 + 392);
      v21 = *(v6 + 408);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 440) = v20;
      *(a4 + 392) = v22;
      *(a4 + 408) = v21;
      v23 = *(v6 + 344);
      v24 = *(v6 + 376);
      *(a4 + 360) = *(v6 + 360);
      *(a4 + 376) = v24;
      *(a4 + 344) = v23;
      v26 = *(v6 + 472);
      v25 = *(v6 + 488);
      v27 = *(v6 + 456);
      *(a4 + 504) = *(v6 + 504);
      *(a4 + 472) = v26;
      *(a4 + 488) = v25;
      *(a4 + 456) = v27;
      v28 = *(v6 + 512);
      v29 = *(v6 + 528);
      v30 = *(v6 + 560);
      *(a4 + 544) = *(v6 + 544);
      *(a4 + 560) = v30;
      *(a4 + 512) = v28;
      *(a4 + 528) = v29;
      v31 = *(v6 + 576);
      v32 = *(v6 + 592);
      v33 = *(v6 + 624);
      *(a4 + 608) = *(v6 + 608);
      *(a4 + 624) = v33;
      *(a4 + 576) = v31;
      *(a4 + 592) = v32;
      v34 = *(v6 + 640);
      v35 = *(v6 + 656);
      v36 = *(v6 + 672);
      *(a4 + 688) = *(v6 + 688);
      *(a4 + 656) = v35;
      *(a4 + 672) = v36;
      *(a4 + 640) = v34;
      v6 += 696;
      a4 += 696;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000720CC(v5);
      v5 += 696;
    }
  }
}

uint64_t sub_10006FAE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 696;
    sub_1000720CC(i - 696);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10006FB38()
{
  if (qword_1026592B8 != -1)
  {
    sub_10191D460();
  }

  return byte_1026592B0;
}

uint64_t sub_10006FB70()
{
  result = sub_10006FDD0();
  if (result)
  {
    return (sub_10006FC6C() & 1) == 0 && (sub_10006FC00() & 1) == 0 && !sub_10006FBAC();
  }

  return result;
}

BOOL sub_10006FBAC()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 233;
}

uint64_t sub_10006FC00()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 172) < 0x2F) & (0x440001000033uLL >> (dword_1026592D0 + 84));
}

uint64_t sub_10006FC6C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 168) < 0x29) & (0x1400000000FuLL >> (dword_1026592D0 + 88));
}

BOOL sub_10006FCD4()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 234) > 0xB || ((1 << (dword_1026592D0 + 22)) & 0xA03) == 0)
  {
    return (dword_1026592D0 - 178) < 2;
  }

  return result;
}

BOOL sub_10006FD4C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 216) > 0x2A || ((1 << (dword_1026592D0 + 40)) & 0x58280304441) == 0)
  {
    return (dword_1026592D0 - 180) < 2;
  }

  return result;
}

uint64_t sub_10006FDD0()
{
  if (sub_10006FC6C() & 1) != 0 || (sub_10006FC00() & 1) != 0 || sub_10006FCD4() || sub_10006FBAC() || sub_10006FD4C() || (sub_1007191C4())
  {
    return 1;
  }

  return sub_1001B3D90();
}

BOOL sub_10006FE30()
{
  result = sub_10006FE64();
  if (result)
  {
    return !sub_10006FF1C() && !sub_10006FF98();
  }

  return result;
}

BOOL sub_10006FE64()
{
  if (sub_10006FF1C() || sub_10006FF98() || (sub_10006FEAC() & 1) != 0)
  {
    return 1;
  }

  return sub_100718D58();
}

uint64_t sub_10006FEAC()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = dword_1026592D0 == 280;
  if ((dword_1026592D0 - 178) < 8)
  {
    v0 = 1;
  }

  return (dword_1026592D0 - 107) < 0x1B || v0;
}

BOOL sub_10006FF1C()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 82) > 0x14 || ((1 << (dword_1026592D0 - 82)) & 0x1FFFD5) == 0)
  {
    return (dword_1026592D0 - 150) < 4;
  }

  return result;
}

BOOL sub_10006FF98()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 103) < 4;
}

uint64_t sub_10006FFF0(uint64_t result, uint64_t a2)
{
  if (byte_102632518 == 1)
  {
    v3 = result;
    v4 = [NSString stringWithCString:a2 encoding:4];

    return _PLLogTimeSensitiveRegisteredEvent(4, v4, v3, 0);
  }

  return result;
}

uint64_t sub_1000700DC(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

uint64_t sub_100070148(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
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

void sub_1000701D4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_100070338(void *a1)
{
  *a1 = off_10245A978;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A9E30();
    }
  }

  return a1;
}

uint64_t sub_10007041C(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

void sub_10007048C(uint64_t a1, size_t __n)
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
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1000701D4(a1, prime);
    }
  }
}

__n128 sub_10007057C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1000705D0(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A60E38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLUnifiedCellLocationProvider::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A60E4C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLUnifiedCellLocationProvider::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10007079C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10007079C(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  v7 = *a4;
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100072010(a3);
    sub_1000238CC(v9, __p);
    v10 = v65 >= 0 ? __p : *__p;
    *buf = 136446466;
    *&buf[4] = v10;
    *&buf[12] = 1026;
    *&buf[14] = v7 != 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@CellFlow, ctnotify, %{public}s, havedata, %{public}d", buf, 0x12u);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v49 = sub_100072010(a3);
    sub_1000238CC(v49, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v50 = buf;
    }

    else
    {
      v50 = *buf;
    }

    LODWORD(v62[0]) = 136446466;
    *(v62 + 4) = v50;
    WORD2(v62[1]) = 1026;
    *(&v62[1] + 6) = v7 != 0;
    v51 = _os_log_send_and_compose_impl();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v51);
    if (v51 != __p)
    {
      free(v51);
    }
  }

  if (sub_100071CA0())
  {
    sub_10004FD18(__p);
    v11 = sub_100072010(a3);
    sub_1000717E0(__p, "telNotification", v11);
    sub_100071CAC(__p, "telNotification");
    sub_100005DA4(__p);
  }

  if (v7)
  {
    v12 = sub_100072010(a3);
    if (CFEqual(v12, @"kCellInfoNotification"))
    {
      ++*(a1 + 3488);
    }

    v13 = sub_100072010(a3);
    if (CFEqual(v13, @"kCellMonitorRefreshResultNotification"))
    {
      ++*(a1 + 3492);
    }

    v14 = sub_100072010(a3);
    if (CFEqual(v14, @"kTimingAdvanceInfoNotification"))
    {
      sub_100005548(v62, *a4);
      sub_1000052CC(v62, @"kTimingAdvanceLTEKey", (a1 + 2560));
      sub_1000052CC(v62, @"kTimingAdvanceNRKey", (a1 + 2564));
      sub_100023B78(v62, @"kTimingAdvanceTimeStampKey", (a1 + 2568));
      sub_10001CBC0(v62, @"kTimingAdvanceisLTEKey", (a1 + 2576));
      sub_1000052CC(v62, @"kTimingAdvanceLTE_MCC_Key", (a1 + 2584));
      sub_1000052CC(v62, @"kTimingAdvanceLTE_MNC_Key", (a1 + 2588));
      sub_1000052CC(v62, @"kTimingAdvanceLTE_TAC_Key", (a1 + 2592));
      sub_1000052CC(v62, @"kTimingAdvanceLTE_CI_Key", (a1 + 2596));
      sub_1000052CC(v62, @"kTimingAdvanceNR_MCC_Key", (a1 + 2672));
      sub_1000052CC(v62, @"kTimingAdvanceNR_MNC_Key", (a1 + 2676));
      sub_1000052CC(v62, @"kTimingAdvanceNR_TAC_Key", (a1 + 2680));
      sub_10016B550(v62, @"kTimingAdvanceNR_CI_Key", (a1 + 2688));
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        sub_100681EA4(__p);
        v16 = v65 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#timingadvanceforcell, notification, %{public}s", buf, 0xCu);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_27;
      }

      sub_101A60DF4(__p);
      sub_100681EA4(buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v52 = buf;
      }

      else
      {
        v52 = *buf;
      }

      *v57 = 136446210;
      *&v57[4] = v52;
      v21 = _os_log_send_and_compose_impl();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_138:
      sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v21);
      if (v21 != __p)
      {
        free(v21);
      }

LABEL_27:
      sub_100005DA4(v62);
      return;
    }

    v17 = sub_100072010(a3);
    if (CFEqual(v17, @"kCLCellularTransmitStateNotification") && sub_10006FB38())
    {
      sub_100005548(v62, *a4);
      if (sub_10001CBC0(v62, @"kCLCellularTransmitStateNotification", (a1 + 2797)))
      {
        goto LABEL_27;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(@"kCLCellularTransmitStateNotification", __p);
        v19 = v65 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,key,%{public}s,does not exist", buf, 0xCu);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_27;
      }

      sub_101A60DF4(__p);
      sub_1000238CC(@"kCLCellularTransmitStateNotification", buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      *v57 = 136446210;
      *&v57[4] = v20;
      v21 = _os_log_send_and_compose_impl();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_138;
    }
  }

  if (sub_10003845C() == 1)
  {
    v22 = sub_100072010(a3);
    if (CFEqual(v22, @"kCLTelephonyServiceDisconnectedNotification"))
    {
      sub_1001CBF60(a1, "disconnect");
      (*(*a1 + 400))(a1, "disconnect");
      goto LABEL_49;
    }

    v27 = sub_100072010(a3);
    if (!CFEqual(v27, @"kCellInfoNotification"))
    {
      v35 = sub_100072010(a3);
      if (CFEqual(v35, @"kCellMonitorRefreshResultNotification"))
      {
        v23 = "x";
        if (v7)
        {
          __p[0] = 0;
          v36 = sub_1001CCB30(*a4, __p);
          v37 = (__p[0] & 1) != 0 ? "x" : "monitorrefresh";
          if (v36)
          {
            v23 = v37;
          }
        }

        goto LABEL_50;
      }

      v45 = sub_100072010(a3);
      if (CFEqual(v45, @"kCLTelephonyServiceResetNotification"))
      {
        sub_1001CBF60(a1, "reset");
        v23 = "reset";
        goto LABEL_50;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v46 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v47 = sub_100072010(a3);
        sub_1000238CC(v47, __p);
        v48 = v65 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v48;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "CellService, unknown, %{public}s", buf, 0xCu);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A622FC(a3);
      }

LABEL_49:
      v23 = "x";
LABEL_50:
      if (sub_10006BDFC(a1) && strlen(v23) >= 2)
      {
        sub_10007B4D8(a1);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v25 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v26 = sub_10006BDFC(a1);
          *__p = 67240450;
          *&__p[4] = v26;
          *&__p[8] = 2082;
          *&__p[10] = v23;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "@CellFlow, skipcalc, clients, %{public}d, get, %{public}s", __p, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A62448(a1, v23);
        }
      }

      return;
    }

    if (v7)
    {
      memset(v62, 0, 24);
      memset(buf, 0, sizeof(buf));
      v61 = 1065353216;
      v23 = "x";
      if (sub_100065478(*a4, buf))
      {
        *__p = 0;
        *v57 = __p;
        v28 = sub_1000646F8(buf, __p)[3];
        sub_1000658D0(0, buf, v62);
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v29 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0x104020300;
          *&__p[8] = 2050;
          *&__p[10] = 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3);
          v64 = 1026;
          v65 = v28 == 0;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", __p, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A60DF4(__p);
          *v57 = 0x104020300;
          *&v57[8] = 2050;
          *&v57[10] = 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3);
          v58 = 1026;
          v59 = v28 == 0;
          v53 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v53);
          if (v53 != __p)
          {
            free(v53);
          }
        }

        v30 = *(a1 + 2512);
        v31 = *(a1 + 2504);
        memset(v56, 0, sizeof(v56));
        sub_100071F88(v56, v62[0], v62[1], 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3));
        sub_100079D4C(v56, 0, (a1 + 2480), (a1 + 2504));
        *__p = v56;
        sub_100072124(__p);
        if (v28)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 == v31;
        }

        if (!v32)
        {
          v23 = "cellinfo";
        }

        v34 = v62[0];
        for (i = v62[1]; i != v34; sub_1000720CC(i))
        {
          i -= 696;
        }

        v62[1] = v34;
        if (sub_1000649A0())
        {
          *__p = 1;
          *v57 = __p;
          v39 = sub_1000646F8(buf, __p)[3];
          sub_1000658D0(1, buf, v62);
          if (qword_1025D4620 != -1)
          {
            sub_101A60DCC();
          }

          v40 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0x204020300;
            *&__p[8] = 2050;
            *&__p[10] = 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3);
            v64 = 1026;
            v65 = v39 == 0;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "@CellFlow, infonotify, inst, %{public}d, cells, %{public}lu, empty, %{public}d", __p, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A60DF4(__p);
            *v57 = 0x204020300;
            *&v57[8] = 2050;
            *&v57[10] = 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3);
            v58 = 1026;
            v59 = v39 == 0;
            v54 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLUnifiedCellLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v54);
            if (v54 != __p)
            {
              free(v54);
            }
          }

          v41 = *(a1 + 2536);
          v42 = *(a1 + 2528);
          memset(v55, 0, sizeof(v55));
          sub_100071F88(v55, v62[0], v62[1], 0x66FD0EB66FD0EB67 * ((v62[1] - v62[0]) >> 3));
          sub_100079D4C(v55, 1, (a1 + 2480), (a1 + 2504));
          *__p = v55;
          sub_100072124(__p);
          if (v39)
          {
            v43 = 0;
          }

          else
          {
            v43 = v41 == v42;
          }

          if (!v43)
          {
            v23 = "cellinfo";
          }
        }

        v38 = "x";
      }

      else
      {
        v38 = "fetchfail";
      }

      sub_100075100(buf);
      *__p = v62;
      sub_100072124(__p);
    }

    else
    {
      v23 = "x";
      v38 = "nulldata";
    }

    if (strlen(v38) < 2)
    {
      goto LABEL_50;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v44 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *__p = 136446210;
      *&__p[4] = v38;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_ERROR, "CellFlow, infonotify, error, %{public}s", __p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A62204();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "CellFlow, outcome, LS Off", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A62120();
    }
  }
}

void sub_100071744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  sub_100075100(&a23);
  a33 = &a29;
  sub_100072124(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_1000717E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

uint64_t sub_100071870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v3 = (v1 + 40);
  v2 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  v6 = v3;
  do
  {
    if (*(v2 + 32) >= v5)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v5));
  }

  while (v2);
  if (v6 == v3 || v5 < *(v6 + 8))
  {
LABEL_9:
    v23 = *(a1 + 32);
    v8 = *(v23 + 32);
    if (v8 != v3)
    {
      goto LABEL_27;
    }

    while (1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(v23 + 4);
        *buf = 67109376;
        v25 = v10;
        v26 = 1024;
        LODWORD(v27) = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Request to decode unknown integer %d is a programmer error. fSize %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CC9C4((a1 + 40), v23);
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v12 = qword_1025D48A8;
      v3 = "0";
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }
      }

      v13 = qword_1025D48A8;
      if (os_signpost_enabled(qword_1025D48A8))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        *v29 = "assert";
        *&v29[8] = 2081;
        *&v29[10] = "0";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_27:
      v15 = qword_1025D4650;
      do
      {
        if (v15 != -1)
        {
          sub_1018C9ECC();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v8 + 8);
          v18 = *(v8 + 5);
          *buf = 68289794;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 1026;
          *v29 = v17;
          *&v29[4] = 2050;
          *&v29[6] = v18;
          *&v29[14] = 2114;
          *&v29[16] = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Int2NotifMap, Key:%{public}d, NotifPtr:%{public}p, NotifVal:%{public, location:escape_only}@}", buf, 0x2Cu);
          v15 = qword_1025D4650;
        }

        else
        {
          v15 = -1;
        }

        v19 = *(v8 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v8 + 2);
            v21 = *v20 == v8;
            v8 = v20;
          }

          while (!v21);
        }

        v8 = v20;
      }

      while (v20 != v3);
    }
  }

  return *(v6 + 5);
}

uint64_t sub_100071CAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007005C(a1);

  return sub_10006FFF0(v3, a2);
}

void sub_100071CE4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 88) + 40 * a2 + 16;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v15 = v5 + 16;
    v6 = sub_100071E08(a1 + 64, (v5 + 16));
    sub_1005729E8(&v12, (v6 + 5));
  }

  v7 = v12;
  for (i = v13; v7 != i; v7 += 2)
  {
    v9 = v7[1];
    v10 = *v7;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a3 + 16))(a3, &v10);
    if (v11)
    {
      sub_100008080(v11);
    }
  }

  v16 = &v12;
  sub_1004CA974(&v16);
}

void sub_100071DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  a16 = &a11;
  sub_1004CA974(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_100071E08(uint64_t a1, int *a2)
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

void sub_100071EDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5E293205E29321)
  {
    operator new();
  }

  sub_1001D0818();
}

id sub_100071F38(uint64_t a1, int a2, void *a3)
{
  result = sub_10006E308(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100071F88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000721A8(result, a4);
  }

  return result;
}

void sub_100071FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100072124(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100072010(int *a1)
{
  if (qword_102656F20 != -1)
  {
    sub_100248B70();
  }

  v2 = qword_102656F28;
  v3 = *a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100071870;
  v6[3] = &unk_102460558;
  v6[4] = qword_102656F28;
  v7 = v3;
  os_unfair_lock_lock(qword_102656F28);
  v4 = sub_100071870(v6);
  os_unfair_lock_unlock(v2);
  return v4;
}

void sub_1000720CC(uint64_t a1)
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
}

void sub_100072124(void ***a1)
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
        v4 -= 696;
        sub_1000720CC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000721A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5E293205E29321)
  {
    sub_100071EDC(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1000721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      v10 = *(a2 + v7 + 16);
      v11 = *(a2 + v7 + 32);
      v12 = *(a2 + v7 + 48);
      *(v9 + 60) = *(a2 + v7 + 60);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      v13 = *(a2 + v7 + 80);
      *(a4 + v7 + 88) = 0;
      v14 = a4 + v7 + 88;
      *(v14 - 8) = v13;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      sub_10038EB38(v14, *(a2 + v7 + 88), *(a2 + v7 + 96), (*(a2 + v7 + 96) - *(a2 + v7 + 88)) >> 2);
      *(v9 + 112) = *(a2 + v7 + 112);
      v15 = *(a2 + v7 + 128);
      v16 = *(a2 + v7 + 144);
      v17 = *(a2 + v7 + 176);
      *(v9 + 160) = *(a2 + v7 + 160);
      *(v9 + 176) = v17;
      *(v9 + 128) = v15;
      *(v9 + 144) = v16;
      v18 = *(a2 + v7 + 192);
      v19 = *(a2 + v7 + 208);
      v20 = *(a2 + v7 + 240);
      *(v9 + 224) = *(a2 + v7 + 224);
      *(v9 + 240) = v20;
      *(v9 + 192) = v18;
      *(v9 + 208) = v19;
      v21 = *(a2 + v7 + 256);
      v22 = *(a2 + v7 + 272);
      v23 = *(a2 + v7 + 288);
      *(v9 + 300) = *(a2 + v7 + 300);
      *(v9 + 272) = v22;
      *(v9 + 288) = v23;
      *(v9 + 256) = v21;
      if (*(a2 + v7 + 343) < 0)
      {
        sub_100007244((v9 + 320), *(v8 + 320), *(a2 + v7 + 328));
      }

      else
      {
        v24 = *(v8 + 320);
        *(v9 + 336) = *(v8 + 336);
        *(v9 + 320) = v24;
      }

      v25 = a4 + v7;
      v26 = (a4 + v7 + 344);
      v27 = *(v8 + 344);
      v28 = *(v8 + 376);
      v26[1] = *(v8 + 360);
      v26[2] = v28;
      *v26 = v27;
      v29 = *(v8 + 392);
      v30 = *(v8 + 408);
      v31 = *(v8 + 440);
      v26[5] = *(v8 + 424);
      v26[6] = v31;
      v26[3] = v29;
      v26[4] = v30;
      v32 = *(v8 + 456);
      v33 = *(v8 + 472);
      v34 = *(v8 + 488);
      *(v25 + 504) = *(v8 + 504);
      v26[8] = v33;
      v26[9] = v34;
      v26[7] = v32;
      v35 = *(v8 + 512);
      v36 = *(v8 + 528);
      v37 = *(v8 + 560);
      *(v25 + 544) = *(v8 + 544);
      *(v25 + 560) = v37;
      *(v25 + 512) = v35;
      *(v25 + 528) = v36;
      v38 = *(v8 + 576);
      v39 = *(v8 + 592);
      v40 = *(v8 + 624);
      *(v25 + 608) = *(v8 + 608);
      *(v25 + 624) = v40;
      *(v25 + 576) = v38;
      *(v25 + 592) = v39;
      v41 = *(v8 + 640);
      v42 = *(v8 + 656);
      v43 = *(v8 + 672);
      *(v25 + 688) = *(v8 + 688);
      *(v25 + 656) = v42;
      *(v25 + 672) = v43;
      *(v25 + 640) = v41;
      v7 += 696;
    }

    while (v8 + 696 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100072394(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + v2 + 88);
  if (v4)
  {
    *(v1 + v2 + 96) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    v5 = v1 + v2 - 696;
    v6 = -v2;
    do
    {
      sub_1000720CC(v5);
      v5 -= 696;
      v6 += 696;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1000723E0(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10006E850(&v7, a2);
  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  sub_10006DE24(a1, &v7, &v6, 1);
  return sub_10006E914(&v6);
}

void *sub_1000724C8(void *a1, const void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102460728;
  v3 = *a2;
  a1[3] = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_10007253C(void *a1, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    sub_101B46600();
  }

  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B465C4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      v6 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = a2;
      v17 = 2049;
      v18 = v6;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
      if (qword_1025D4600 != -1)
      {
        sub_101B465D8();
      }
    }

    v7 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v8 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = a2;
      v17 = 2049;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Index out of bounds", "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
      if (qword_1025D4600 != -1)
      {
        sub_101B465D8();
      }
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v10 = (a1[1] - *a1) >> 3;
      *buf = 68290051;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = a2;
      v17 = 2049;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "index < fTileSets.size()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Index out of bounds, index:%{private}d, size:%{private}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
    }

    abort_report_np();
  }

  return *(*a1 + 8 * a2);
}

BOOL sub_100072814(uint64_t a1)
{
  result = 0;
  if (*(a1 + 20) > 0.0)
  {
    v3 = fabs(*(a1 + 4));
    if (v3 <= 90.0)
    {
      v4 = fabs(*(a1 + 12));
      if (v4 <= 180.0)
      {
        return v4 >= 0.0000001 || v3 >= 0.0000001;
      }
    }
  }

  return result;
}

BOOL sub_1000728E4(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
{
  v6 = sqlite3_bind_int64(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}lld, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}lld, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v6 == 0;
}

uint64_t sub_100072AFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v23);
  sub_100038730(&v24, "CLTypeLocation, ", 16);
  sub_100038730(&v24, ", type, ", 8);
  v4 = std::ostream::operator<<();
  v5 = sub_100038730(v4, ", ", 2);
  v6 = *(a1 + 96);
  if (v6 <= 0xD)
  {
    v7 = off_102493E10[v6];
  }

  else
  {
    v7 = "<error>";
  }

  v8 = strlen(v7);
  sub_100038730(v5, v7, v8);
  v9 = sub_100038730(&v24, ", latitude, ", 12);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 24) = 12;
  *(v9 + *(v10 - 24) + 16) = 8;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v11 = sub_100038730(&v24, ", longitude, ", 13);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 24) = 12;
  *(v11 + *(v12 - 24) + 16) = 8;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  sub_100038730(&v24, ", altitude, ", 12);
  v13 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v13 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", hAcc, ", 8);
  v14 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v14 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", vAcc, ", 8);
  v15 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v15 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", course, ", 10);
  v16 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v16 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", speed, ", 9);
  v17 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v17 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", timstamp, ", 12);
  v18 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v18 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", lifespan, ", 12);
  v19 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v19 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100038730(&v24, ", confidence, ", 14);
  v20 = v23[0];
  *(&v23[2] + *(v23[0] - 3)) = 2;
  *(&v23[1] + *(v20 - 3)) |= 4u;
  std::ostream::operator<<();
  sub_100073518(v23, a2);
  v24 = v21;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100073240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000733FC()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (dword_1026592D0 <= 134)
  {
    if ((dword_1026592D0 - 34) <= 0x2E && ((1 << (dword_1026592D0 - 34)) & 0x700000008001) != 0)
    {
      return result;
    }

    return 0;
  }

  v2 = (dword_1026592D0 - 135) > 0xA || ((1 << (dword_1026592D0 + 121)) & 0x405) == 0;
  if (v2 && dword_1026592D0 != 210 && dword_1026592D0 != 212)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000734AC()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 139) < 0x3B) & (0x48000000005001DuLL >> (dword_1026592D0 + 117));
}

const void *sub_100073518@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000389F0(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t *sub_1000735F4(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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

id sub_1000736A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v3 = objc_alloc_init(CLCallbackDropNullDelegate);
    *(a1 + 24) = v3;
    [(CLCallbackDropNullDelegate *)v3 setValid:1];
    v1 = *(a1 + 24);
  }

  v4 = v1;

  return v4;
}

BOOL sub_100073700(sqlite3_stmt *a1, int a2, int a3)
{
  v6 = sqlite3_bind_int(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}d, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}d, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
    }
  }

  return v6 == 0;
}

void sub_100073BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100073BF8(id *a1, double a2)
{
  [a1[3] assertInside];
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1 + 4;
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    v6 = -1.0;
    if (a2 != 1.79769313e308)
    {
      v6 = a2;
    }

    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "setNextFireDate, %s, %.1lf", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B698(a1);
  }

  return [*a1 setNextFireTime:a2];
}

char *sub_100073D20(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100007244(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

id sub_100073D4C(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 32);
    v6 = 136315394;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "invalidate, %s, %p", &v6, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B594(a1);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100073E48(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_100073E5C(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 48) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A53FFC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLConfigAsset::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A54010();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConfigAsset::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100074028(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100074028(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  if (!*a4)
  {
    return;
  }

  v7 = sub_100072010(a3);
  if (CFEqual(v7, @"kBundleChangeNotification"))
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kBundleChangeNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A54A30();
    }

    sub_100CCA978(a1, *a4);
    return;
  }

  v9 = sub_100072010(a3);
  if (CFEqual(v9, @"kDefaultBundleChangeNotification"))
  {
    if (qword_1025D4870 != -1)
    {
      sub_101A54038();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kDefaultBundleChangeNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A54B1C();
    }

    sub_100CCAAD4(a1, *a4);
    return;
  }

  v11 = sub_100072010(a3);
  if (!CFEqual(v11, @"kCellInfoNotification"))
  {
    v13 = sub_100072010(a3);
    if (CFEqual(v13, @"kSubscriberMccAndMncNotification"))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101A54038();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kSubscriberMccAndMncNotification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A54CF4();
      }

      v27 = 0u;
      v28 = 0u;
      v29 = 1065353216;
      if (sub_10009404C(*a4, &v27))
      {
        v26[0] = 0;
        *buf = v26;
        v15 = sub_10009422C(&v27, v26);
        sub_100CCAC30(a1, 0, *(v15 + 20), *(v15 + 7));
        if (*(a1 + 296) == 1)
        {
          v26[0] = 1;
          *buf = v26;
          v16 = sub_10009422C(&v27, v26);
          sub_100CCAC30(a1, 1, *(v16 + 20), *(v16 + 7));
        }

LABEL_65:
        sub_1004906DC(&v27);
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_100248578();
      }

      v22 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#CLConfig,kSubscriberMccAndMncNotification,error fetching MCC and MNC", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v18 = sub_100072010(a3);
      if (!CFEqual(v18, @"kServingMccAndMncNotification"))
      {
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_101A54038();
      }

      v19 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kServingMccAndMncNotification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A54DE0();
      }

      v27 = 0u;
      v28 = 0u;
      v29 = 1065353216;
      if (sub_10009404C(*a4, &v27))
      {
        v26[0] = 0;
        *buf = v26;
        v20 = sub_10009422C(&v27, v26);
        sub_100094834(a1, 0, *(v20 + 20), *(v20 + 7));
        if (*(a1 + 296) == 1)
        {
          v26[0] = 1;
          *buf = v26;
          v21 = sub_10009422C(&v27, v26);
          sub_100094834(a1, 1, *(v21 + 20), *(v21 + 7));
        }

        goto LABEL_65;
      }

      if (qword_1025D4870 != -1)
      {
        sub_100248578();
      }

      v23 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#CLConfig,kServingMccAndMncNotification,error fetching MCC and MNC", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_65;
      }
    }

    sub_101A53FB8(buf);
    LOWORD(v26[0]) = 0;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }

    goto LABEL_65;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101A54038();
  }

  v12 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#CLConfig,received CLTelephonyService_Type::kCellInfoNotification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A54C08();
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 1065353216;
  if (sub_100065478(*a4, &v27))
  {
    sub_100074834(a1, 0, &v27);
    if (sub_1000649A0())
    {
      sub_100074834(a1, 1, &v27);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#CLConfig,handleCellInfoChange,error fetching cell info", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A53FB8(buf);
      LOWORD(v26[0]) = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  sub_100075100(&v27);
}

void sub_1000747E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100074834(uint64_t a1, int a2, void *a3)
{
  v39 = a2;
  v37 = 0;
  v36 = 0;
  v38 = 0;
  v29[0] = 0;
  v35 = 0;
  v5 = sub_100075080(a2, 1);
  *v40 = &v39;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!sub_100065670(a3, &v39)[3])
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,received nil CellInfo from CT for inst %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_29;
    }

    sub_101A53FB8(buf);
    *v40 = 67109120;
    *&v40[4] = v39;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v15);
LABEL_64:
    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_29;
  }

  sub_1000658D0(v39, a3, &v36);
  sub_100065934(&v36, buf);
  sub_1000659B0(v29, buf);
  if (v58 == 1)
  {
    if (v57 < 0)
    {
      operator delete(__p);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }
  }

  if ((v35 & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_100248578();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,serving cell missing", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_29;
    }

    sub_101A53FB8(buf);
    *v40 = 0;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v15);
    goto LABEL_64;
  }

  if (qword_1025D4870 != -1)
  {
    sub_100248578();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v37 - v36) >> 3);
    *&buf[12] = 1024;
    *&buf[14] = v39;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#CLConfig,handleCellInfoChange,cellcount,%lu,inst,%d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A53FB8(buf);
    *v40 = 134218240;
    *&v40[4] = 0x66FD0EB66FD0EB67 * ((v37 - v36) >> 3);
    v41 = 1024;
    v42 = v39;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  if (v30 < 3)
  {
    goto LABEL_16;
  }

  if (v30 == 9)
  {
    v9 = *sub_1006CCAA0(v29, v8);
    v10 = sub_1006CCAA0(v29, v24);
    goto LABEL_17;
  }

  if (v30 == 7)
  {
LABEL_16:
    v9 = *sub_1006CBCE4(v29);
    v10 = sub_1006CBCE4(v29);
LABEL_17:
    v11 = *(v10 + 4);
    v12 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  if (v30 - 3 <= 2)
  {
    v13 = *(sub_1006CB140(v29, v8) + 32);
    v12 = *(sub_1006CB140(v29, v25) + 36);
    goto LABEL_30;
  }

  if (v30 == 10)
  {
    v9 = *sub_100681E80(v29, v8);
    v10 = sub_100681E80(v29, v27);
    goto LABEL_17;
  }

  if (v30 == 6)
  {
    v9 = *sub_10007513C(v29, v8);
    v10 = sub_10007513C(v29, v26);
    goto LABEL_17;
  }

LABEL_29:
  v12 = 0xFFFFFFFFLL;
  v13 = 0xFFFFFFFFLL;
LABEL_30:
  v11 = 0xFFFFFFFFLL;
  v9 = 0xFFFFFFFFLL;
LABEL_31:
  if (qword_1025D4870 != -1)
  {
    sub_100248578();
  }

  v17 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v44 = 1026;
    v45 = v39;
    v46 = 1025;
    v47 = v9;
    v48 = 1025;
    v49 = v11;
    v50 = 1025;
    v51 = v13;
    v52 = 1025;
    v53 = v12;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLConfig,handleCellInfoChange,operator mcc and mnc updated, inst:%{public}d, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d}", buf, 0x30u);
  }

  for (i = *(a1 + 272); i; i = *i)
  {
    v19 = i[3];
    if (v19)
    {
      (*(*v19 + 56))(v19, v5, v9, v11, v13, v12);
    }

    else
    {
      if (p_info[270] != -1)
      {
        sub_100248578();
      }

      v20 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v21 = [(__CFString *)sub_100CCA5D4(*(i + 4)) UTF8String];
        *buf = 136446210;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "#CLConfig,%{public}s,handleCellInfoChange,pointer for component was null", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A53FB8(buf);
        v22 = [(__CFString *)sub_100CCA5D4(*(i + 4)) UTF8String];
        *v40 = 136446210;
        *&v40[4] = v22;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLConfigAsset::handleCellInfoChange(SimInstance, std::unordered_map<SimInstance, CLCTCellInfo> &)", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }
    }
  }

  if (v35 == 1)
  {
    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  *buf = &v36;
  sub_100072124(buf);
}

void sub_100075024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000827E4(va);
  STACK[0x320] = &STACK[0x2E0];
  sub_100072124(&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t sub_100075080(int a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 255)
  {
    v2 = 255;
  }

  v3 = a2 == 1;
  if (a2 == 255)
  {
    v3 = 255;
  }

  if (a1)
  {
    v4 = 255;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 1)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

void sub_1000750BC(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10006499C(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100075100(uint64_t a1)
{
  sub_1000750BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10007513C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 6)
  {
    sub_1018FEBC0(a1, a2);
  }

  return a1 + 512;
}

uint64_t sub_100075160@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v12);
  v4 = *(a1 + 8);
  if (v4 < 0xA && ((0x287u >> v4) & 1) != 0)
  {
    v5 = off_1024D8928[v4];
    v6 = qword_101D786B8[v4];
  }

  else if ((v4 - 3) >= 3)
  {
    if (v4 == 10)
    {
      v5 = "NR";
      v6 = 2;
    }

    else
    {
      if (v4 == 6)
      {
        v7 = *(a1 + 568);
        if ((v7 & 4) == 0 || v7 < 1)
        {
          v9 = "LTE";
        }

        else
        {
          v9 = "NSA";
        }

        sub_100038730(&v13, v9, 3);
        goto LABEL_18;
      }

      v5 = "Unknown";
      v6 = 7;
    }
  }

  else
  {
    v5 = "CDMA";
    v6 = 4;
  }

  sub_100038730(&v13, v5, v6);
LABEL_18:
  sub_100073518(v12, a2);
  v13 = v10;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100075394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000753AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = *(a2 + 8);
  if (v2 < 3 || v2 == 9 || v2 == 7)
  {
    return sub_100075418(a1);
  }

  if (v2 - 3 <= 2)
  {
    return sub_100641C10(a1);
  }

  if (v2 == 10)
  {
    return sub_100642C8C(a1);
  }

  if (v2 == 6)
  {
    return sub_100075418(a1);
  }

  return sub_10000EC00(a1, "bad-key");
}

uint64_t sub_100075418@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v7);
  v2 = std::ostream::operator<<();
  sub_100038730(v2, ".", 1);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v7, a1);
  v7[2] = v5;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000755E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1000755FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x66FD0EB66FD0EB67 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_101600338(a1);
    if (a4 <= 0x5E293205E29320)
    {
      v9 = 0xCDFA1D6CDFA1D6CELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x66FD0EB66FD0EB67 * ((*(a1 + 16) - *a1) >> 3)) >= 0x2F149902F14990)
      {
        v10 = 0x5E293205E29320;
      }

      else
      {
        v10 = v9;
      }

      sub_1000721A8(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0x66FD0EB66FD0EB67 * (v11 >> 3) >= a4)
  {
    sub_100075778(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 696;
        sub_1000720CC(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100075778(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = sub_1000721F8(a1, a2 + v11, a3, *(a1 + 8));
  }
}

uint64_t sub_100075778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 96;
  do
  {
    v7 = v6 - 96;
    *a4 = *(v6 - 96);
    v8 = *(v6 - 80);
    v9 = *(v6 - 64);
    v10 = *(v6 - 48);
    *(a4 + 60) = *(v6 - 36);
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
    *(a4 + 16) = v8;
    *(a4 + 80) = *(v6 - 16);
    if (a4 != v6 - 96)
    {
      sub_100731D80((a4 + 88), *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 2);
    }

    *(a4 + 112) = *(v6 + 16);
    v11 = *(v6 + 32);
    v12 = *(v6 + 48);
    v13 = *(v6 + 80);
    *(a4 + 160) = *(v6 + 64);
    *(a4 + 176) = v13;
    *(a4 + 128) = v11;
    *(a4 + 144) = v12;
    v14 = *(v6 + 96);
    v15 = *(v6 + 112);
    v16 = *(v6 + 144);
    *(a4 + 224) = *(v6 + 128);
    *(a4 + 240) = v16;
    *(a4 + 192) = v14;
    *(a4 + 208) = v15;
    v17 = *(v6 + 160);
    v18 = *(v6 + 176);
    v19 = *(v6 + 192);
    *(a4 + 300) = *(v6 + 204);
    *(a4 + 272) = v18;
    *(a4 + 288) = v19;
    *(a4 + 256) = v17;
    std::string::operator=((a4 + 320), (v6 + 224));
    v20 = *(v6 + 280);
    v21 = *(v6 + 264);
    *(a4 + 344) = *(v6 + 248);
    *(a4 + 360) = v21;
    *(a4 + 376) = v20;
    v22 = *(v6 + 312);
    v23 = *(v6 + 328);
    v24 = *(v6 + 344);
    *(a4 + 392) = *(v6 + 296);
    *(a4 + 440) = v24;
    *(a4 + 424) = v23;
    *(a4 + 408) = v22;
    v25 = *(v6 + 376);
    v26 = *(v6 + 392);
    v27 = *(v6 + 408);
    *(a4 + 456) = *(v6 + 360);
    *(a4 + 504) = v27;
    *(a4 + 488) = v26;
    *(a4 + 472) = v25;
    v28 = *(v6 + 544);
    v29 = *(v6 + 560);
    v30 = *(v6 + 576);
    *(a4 + 688) = *(v6 + 592);
    *(a4 + 656) = v29;
    *(a4 + 672) = v30;
    *(a4 + 640) = v28;
    v31 = *(v6 + 480);
    v32 = *(v6 + 496);
    v33 = *(v6 + 528);
    *(a4 + 608) = *(v6 + 512);
    *(a4 + 624) = v33;
    *(a4 + 576) = v31;
    *(a4 + 592) = v32;
    v34 = *(v6 + 416);
    v35 = *(v6 + 432);
    v36 = *(v6 + 464);
    *(a4 + 544) = *(v6 + 448);
    *(a4 + 560) = v36;
    *(a4 + 512) = v34;
    *(a4 + 528) = v35;
    a4 += 696;
    v6 += 696;
  }

  while (v7 + 696 != v5);
  return v5;
}

void sub_100075910(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (*a3 || (v6 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceConnectedNotification", v6)) || (v7 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v7)) || (v8 = sub_100072010(a2), CFEqual(@"kCLTelephonyServiceResetNotification", v8)) || (v9 = sub_100072010(a2), CFEqual(@"kCallStatusChangeNotification", v9)) || (v10 = sub_100072010(a2), CFEqual(@"kAtLeastOneVoiceCallInProgress", v10)) || (v11 = sub_100072010(a2), CFEqual(@"kNoVoiceCallInProgress", v11)))
  {
    v12 = sub_100072010(a2);
    if (CFEqual(@"kUplinkFreqBwNotification", v12))
    {
      if (*a3)
      {
        sub_100005548(v49, *a3);
        LODWORD(v45) = -1082130432;
        LODWORD(v63) = -1082130432;
        v48 = 0;
        v13 = sub_10001CBC0(v49, @"kUplinkFreqBwValid", &v48);
        sub_1004FBECC(v49, @"kUplinkFreqKey", &v45);
        v15 = v14;
        sub_1004FBECC(v49, @"kUplinkBwKey", &v63);
        if ((v13 & v15 & v16) == 1 && v48)
        {
          *(a1 + 2628) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v63, v45)), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
          sub_10001CAF4(buf);
          LOBYTE(v44[0]) = 0;
          v17 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v44);
          v18 = (v17 & v44[0]);
          if (*v53)
          {
            sub_100008080(*v53);
          }

          if (v18)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v19 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v20 = *(a1 + 2628);
              v21 = *(a1 + 2632);
              *buf = 68289538;
              *&buf[4] = 0;
              *v53 = 2082;
              *&v53[2] = "";
              v54 = 2050;
              v55 = v20;
              v56 = 2050;
              v57 = v21;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssawd,Cellular-AWD,kUplinkFreqBwNotification, freq(MHz):%{public}f, bw(MHz):%{public}f}", buf, 0x26u);
            }
          }

          *(a1 + 2464) = *(a1 + 2456);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v29 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kUplinkFreqBwNotification,error fetching cellular bandwidth and frequency", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C8DD8(buf);
            LOWORD(v44[0]) = 0;
            v41 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v41);
            if (v41 != buf)
            {
              free(v41);
            }
          }
        }

        sub_100005DA4(v49);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8A14();
        }

        v30 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kUplinkFreqBwNotification,data is nil", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016CAC3C();
        }
      }
    }

    else
    {
      v22 = sub_100072010(a2);
      if (CFEqual(@"kCellInfoNotification", v22))
      {
        if (*a3)
        {
          *v49 = 0u;
          v50 = 0u;
          v51 = 1065353216;
          sub_10008289C(a1 + 2720);
          if (sub_100065478(*a3, v49))
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *buf = 0;
            v63 = buf;
            if (sub_1000646F8(v49, buf)[3])
            {
              sub_10001CAF4(buf);
              LOBYTE(v63) = 0;
              v23 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v63);
              v24 = (v23 & v63);
              if (*v53)
              {
                sub_100008080(*v53);
              }

              if (v24)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1016C8BF0();
                }

                v25 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = 0;
                  _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", buf, 8u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1016C8DD8(buf);
                  v63 = 67109120;
                  v42 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v42);
                  if (v42 != buf)
                  {
                    free(v42);
                  }
                }
              }

              sub_1000658D0(0, v49, &v45);
              sub_100065934(&v45, buf);
              v44[0] = 0;
              v63 = v44;
              v26 = sub_100084258((a1 + 2720), v44);
              sub_1000659B0((v26 + 3), buf);
              if (v62 == 1)
              {
                if (v61 < 0)
                {
                  operator delete(__p);
                }

                if (v58)
                {
                  v59 = v58;
                  operator delete(v58);
                }
              }
            }

            v28 = v45;
            for (i = v46; i != v28; sub_1000720CC(i))
            {
              i -= 696;
            }

            v46 = v28;
            if (sub_1000649A0())
            {
              v44[0] = 1;
              v63 = v44;
              if (sub_1000646F8(v49, v44)[3])
              {
                sub_10001CAF4(buf);
                LOBYTE(v63) = 0;
                v34 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v63);
                v35 = (v34 & v63);
                if (*v53)
                {
                  sub_100008080(*v53);
                }

                if (v35)
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_1016C8BF0();
                  }

                  v36 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    *&buf[4] = 1;
                    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification,serving cell found for sim,%d", buf, 8u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1016C8DD8(buf);
                    v63 = 0x104000100;
                    v43 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v43);
                    if (v43 != buf)
                    {
                      free(v43);
                    }
                  }
                }

                sub_1000658D0(1, v49, &v45);
                sub_100065934(&v45, buf);
                v44[0] = 1;
                v63 = v44;
                v37 = sub_100084258((a1 + 2720), v44);
                sub_1000659B0((v37 + 3), buf);
                if (v62 == 1)
                {
                  if (v61 < 0)
                  {
                    operator delete(__p);
                  }

                  if (v58)
                  {
                    v59 = v58;
                    operator delete(v58);
                  }
                }
              }
            }

            if (*(a1 + 2744))
            {
              sub_1000828F8(a1);
            }

            *buf = &v45;
            sub_100072124(buf);
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v32 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_INFO, "#warning,#gnssawd,error fetching cell info", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v45) = 0;
              v33 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v33);
              if (v33 != buf)
              {
                free(v33);
              }
            }
          }

          sub_100075100(v49);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8A14();
          }

          v31 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,kCellInfoNotification,data is nil", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016CAD20();
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v38 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v39 = sub_100072010(a2);
      sub_1000238CC(v39, buf);
      v40 = (SBYTE3(v55) & 0x80u) == 0 ? buf : *buf;
      *v49 = 136446210;
      *&v49[4] = v40;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_INFO, "#warning,#gnssawd,dropping %{public}s,empty data", v49, 0xCu);
      if (SBYTE3(v55) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAE04(a2);
    }
  }
}

void sub_10007646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a13;
  sub_100072124(&a23);
  sub_100075100(&a17);
  _Unwind_Resume(a1);
}

void sub_100076538(float32x2_t *a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4660 != -1)
  {
    sub_1002FA4DC();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, v88);
    v8 = v90[3] >= 0 ? v88 : *v88;
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#awd,onTelephonyNotification,%s", buf, 0xCu);
    if ((v90[3] & 0x80000000) != 0)
    {
      operator delete(*v88);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016ABB34(a2);
  }

  v9 = sub_100072010(a2);
  if (CFEqual(@"kUplinkFreqBwNotification", v9))
  {
    if (*a3)
    {
      sub_100005548(buf, *a3);
      LODWORD(v77[0]) = -1082130432;
      LODWORD(v79) = -1082130432;
      LOBYTE(v82) = 0;
      v10 = sub_10001CBC0(buf, @"kUplinkFreqBwValid", &v82);
      sub_1004FBECC(buf, @"kUplinkFreqKey", v77);
      v12 = v11;
      sub_1004FBECC(buf, @"kUplinkBwKey", &v79);
      if ((v10 & v12 & v13) == 1 && v82 == 1)
      {
        a1[81] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v79, v77[0])), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)));
        if (qword_1025D4650 != -1)
        {
          sub_1016ABC90();
        }

        v14 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v15 = a1[81].f32[0];
          v16 = a1[81].f32[1];
          *v88 = 68289538;
          *&v88[4] = 0;
          *&v88[8] = 2082;
          *&v88[10] = "";
          v89 = 2050;
          *v90 = v15;
          *&v90[8] = 2050;
          v91 = v16;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kUplinkFreqBwNotification, freq(MHz):%{public}f, bw(MHz):%{public}f}", v88, 0x26u);
        }
      }

      sub_100005DA4(buf);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v19 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v88 = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#awd,kUplinkFreqBwNotification,error fetching info", v88, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016ABCB8();
      }
    }

    return;
  }

  v17 = sub_100072010(a2);
  if (CFEqual(v17, @"kSubscriptionChangeNotification"))
  {
    v18 = *a3;
    if (*a3)
    {
      *buf = 0u;
      v85 = 0u;
      v86 = 1065353216;
      if (sub_10116E14C(v18, buf))
      {
        sub_1016AA6E0(a1, 0, buf);
        if (sub_1000649A0())
        {
          sub_1016AA6E0(a1, 1u, buf);
        }

        goto LABEL_52;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v24 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v88 = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#awd,kSubscriptionChangeNotification,error fetching context", v88, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_52;
      }

      sub_1016AB5D4(v88);
      LOWORD(v77[0]) = 0;
      v70 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v70);
      if (v70 == v88)
      {
        goto LABEL_52;
      }

LABEL_190:
      free(v70);
LABEL_52:
      sub_1004906DC(buf);
      return;
    }

    if (qword_1025D4660 != -1)
    {
      sub_1016AB5AC();
    }

    v23 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *v88 = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#awd,kSubscriptionChangeNotification,error fetching info", v88, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1016ABDA4();
    }

    return;
  }

  v20 = sub_100072010(a2);
  if (CFEqual(@"kPrefDataSimChangedNotification", v20))
  {
    v21 = *a3;
    if (*a3)
    {
      *buf = 0;
      if (sub_10116DE14(v21, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v22 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          *v88 = 138477827;
          *&v88[4] = *buf;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#awd,kPrefDSChangedNotification,context,%{private}@", v88, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016ABF7C(buf);
        }

        a1[80].i32[0] = sub_1000646B0([*buf slotID]);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v28 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v88 = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "#awd,kPrefDSChangedNotification,error fetching info", v88, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016ABE90();
        }
      }
    }

    return;
  }

  v25 = sub_100072010(a2);
  if (CFEqual(@"kCellInfoNotification", v25))
  {
    v26 = *a3;
    if (!*a3)
    {
      return;
    }

    v79 = 0;
    v80 = 0;
    v81 = 0;
    memset(v77, 0, sizeof(v77));
    v78 = 1065353216;
    if (sub_100065478(v26, v77))
    {
      *v88 = 0;
      *buf = v88;
      if (sub_1000646F8(v77, v88)[3])
      {
        sub_1000658D0(0, v77, &v79);
        sub_100065934(&v79, buf);
        if (v87)
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v27 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v88 = 67109120;
            *&v88[4] = 0;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell found for sim,%d", v88, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v88);
            v82 = 67109120;
            v83 = 0;
            v72 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v72);
            if (v72 != v88)
            {
              free(v72);
            }
          }

          sub_100084C14(a1, 0, buf);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v54 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v88 = 0;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell missing", v88, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v88);
            LOWORD(v82) = 0;
            v73 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v73);
            if (v73 != v88)
            {
              free(v73);
            }
          }
        }

        sub_1000827E4(buf);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v51 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          *v88 = 67109120;
          *&v88[4] = 0;
          _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", v88, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016AB5D4(v88);
          *buf = 67109120;
          *&buf[4] = 0;
          v52 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v52);
          if (v52 != v88)
          {
            free(v52);
          }
        }
      }

      v56 = v79;
      for (i = v80; i != v56; sub_1000720CC(i))
      {
        i -= 696;
      }

      v80 = v56;
      if (!sub_1000649A0())
      {
        goto LABEL_157;
      }

      *v88 = 1;
      *buf = v88;
      if (sub_1000646F8(v77, v88)[3])
      {
        sub_1000658D0(1, v77, &v79);
        sub_100065934(&v79, buf);
        if (v87)
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v57 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v88 = 67109120;
            *&v88[4] = 1;
            _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell found for sim,%d", v88, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v88);
            v82 = 67109120;
            v83 = 1;
            v74 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v74);
            if (v74 != v88)
            {
              free(v74);
            }
          }

          sub_100084C14(a1, 1, buf);
        }

        else
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v62 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            *v88 = 0;
            _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,serving cell missing", v88, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016AB5D4(v88);
            LOWORD(v82) = 0;
            v75 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v75);
            if (v75 != v88)
            {
              free(v75);
            }
          }
        }

        sub_1000827E4(buf);
LABEL_157:
        sub_100075100(v77);
        *v88 = &v79;
        sub_100072124(v88);
        return;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v60 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        *v88 = 67109120;
        *&v88[4] = 1;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#awd,kCellInfoNotification,received nil CellInfo from CT for sim %d", v88, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_157;
      }

      sub_1016AB5D4(v88);
      *buf = 67109120;
      *&buf[4] = 1;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v44);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v43 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v88 = 0;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "#awd,kCellInfoNotification,error fetching cell info", v88, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_157;
      }

      sub_1016AB5D4(v88);
      *buf = 0;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v44);
    }

    if (v44 != v88)
    {
      free(v44);
    }

    goto LABEL_157;
  }

  v29 = sub_100072010(a2);
  if (CFEqual(@"kSubscriberMccAndMncNotification", v29))
  {
    v30 = *a3;
    if (*a3)
    {
      *buf = 0u;
      v85 = 0u;
      v86 = 1065353216;
      if (sub_10009404C(v30, buf))
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v31 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v79) = 0;
          *&v77[0] = &v79;
          v32 = *(sub_10009422C(buf, &v79) + 5);
          v82 = 0;
          *&v77[0] = &v82;
          v33 = *(sub_10009422C(buf, &v82) + 6);
          v76 = 0;
          *&v77[0] = &v76;
          v34 = *(sub_10009422C(buf, &v76) + 28);
          *v88 = 68290050;
          *&v88[4] = 0;
          *&v88[8] = 2082;
          *&v88[10] = "";
          v89 = 1026;
          *v90 = 0;
          *&v90[4] = 1026;
          *&v90[6] = v32;
          LOWORD(v91) = 1026;
          *(&v91 + 2) = v33;
          HIWORD(v91) = 1026;
          v92 = v34;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", v88, 0x2Au);
        }

        LODWORD(v77[0]) = 0;
        *v88 = v77;
        v35 = *(sub_10009422C(buf, v77) + 5);
        LODWORD(v79) = 0;
        *v88 = &v79;
        v36 = sub_10009422C(buf, &v79);
        sub_1016AA974(a1, 0, v35, *(v36 + 6));
        if (sub_1000649A0())
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v37 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v79) = 1;
            *&v77[0] = &v79;
            v38 = *(sub_10009422C(buf, &v79) + 5);
            v82 = 1;
            *&v77[0] = &v82;
            v39 = *(sub_10009422C(buf, &v82) + 6);
            v76 = 1;
            *&v77[0] = &v76;
            v40 = *(sub_10009422C(buf, &v76) + 28);
            *v88 = 68290050;
            *&v88[4] = 0;
            *&v88[8] = 2082;
            *&v88[10] = "";
            v89 = 1026;
            *v90 = 1;
            *&v90[4] = 1026;
            *&v90[6] = v38;
            LOWORD(v91) = 1026;
            *(&v91 + 2) = v39;
            HIWORD(v91) = 1026;
            v92 = v40;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,kSubscriberMccAndMncNotification, sim:%{public}d, mcc:%{public}d, mnc:%{public}d, is3DigitMnc:%{public}hhd}", v88, 0x2Au);
          }

          LODWORD(v77[0]) = 1;
          *v88 = v77;
          v41 = *(sub_10009422C(buf, v77) + 5);
          LODWORD(v79) = 1;
          *v88 = &v79;
          v42 = sub_10009422C(buf, &v79);
          sub_1016AA974(a1, 1, v41, *(v42 + 6));
        }
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v53 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v88 = 0;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_ERROR, "#awd,kSubscriberMccAndMncNotification,error fetching MCC/MNC", v88, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016AB5D4(v88);
          LOWORD(v77[0]) = 0;
          v71 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v71);
          if (v71 != v88)
          {
            free(v71);
          }
        }
      }

      sub_1004906DC(buf);
    }
  }

  else
  {
    v45 = sub_100072010(a2);
    if (CFEqual(@"kDataStatusNotification", v45))
    {
      v46 = *a3;
      if (*a3)
      {
        *buf = 0u;
        v85 = 0u;
        v86 = 1065353216;
        if (sub_10116D15C(v46, buf))
        {
          if (qword_1025D4660 != -1)
          {
            sub_1016AB5AC();
          }

          v47 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v79) = 0;
            *&v77[0] = &v79;
            v48 = *(sub_1006E20E0(buf, &v79) + 9);
            *v88 = 68289538;
            *&v88[4] = 0;
            *&v88[8] = 2082;
            *&v88[10] = "";
            v89 = 1026;
            *v90 = 0;
            *&v90[4] = 1026;
            *&v90[6] = v48;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,kDataStatusNotification, sim:%{public}d, RAT:%{public}d}", v88, 0x1Eu);
          }

          if (sub_1000649A0())
          {
            if (qword_1025D4660 != -1)
            {
              sub_1016AB5AC();
            }

            v49 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v79) = 1;
              *&v77[0] = &v79;
              v50 = *(sub_1006E20E0(buf, &v79) + 9);
              *v88 = 68289538;
              *&v88[4] = 0;
              *&v88[8] = 2082;
              *&v88[10] = "";
              v89 = 1026;
              *v90 = 1;
              *&v90[4] = 1026;
              *&v90[6] = v50;
              _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,kDataStatusNotification, sim:%{public}d, RAT:%{public}d}", v88, 0x1Eu);
            }
          }

          goto LABEL_52;
        }

        if (qword_1025D4660 != -1)
        {
          sub_1016AB5AC();
        }

        v63 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          *v88 = 0;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "#awd,copyValuesFromDataStatusDictionary,failed", v88, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_52;
        }

        sub_1016AB5D4(v88);
        LOWORD(v77[0]) = 0;
        v70 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyAWD::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v70);
        if (v70 == v88)
        {
          goto LABEL_52;
        }

        goto LABEL_190;
      }

      if (qword_1025D4660 != -1)
      {
        sub_1016AB5AC();
      }

      v61 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        *v88 = 0;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "#awd,kDataStatusNotification,error fetching info", v88, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016AC07C();
      }
    }

    else
    {
      v58 = sub_100072010(a2);
      if (CFEqual(v58, @"kAltAccountConfiguredNotification"))
      {
        v59 = *a3;
        if (*a3)
        {
          buf[0] = 0;
          if (sub_10116E980(v59, buf))
          {
            a1[96].i32[0] = buf[0];
          }

          else
          {
            if (qword_1025D4660 != -1)
            {
              sub_1016AB5AC();
            }

            v68 = qword_1025D4668;
            if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
            {
              *v88 = 0;
              _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "#awd,kAltAccountConfiguredNotification,error fetching alt account configuration", v88, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1016AC168();
            }
          }
        }
      }

      else
      {
        v64 = sub_100072010(a2);
        if (CFEqual(@"kTandemCapabilityNotification", v64))
        {
          v65 = *a3;
          if (*a3)
          {
            *buf = 0;
            if (sub_10116EBC8(v65, buf))
            {
              if (qword_1025D4660 != -1)
              {
                sub_1016AB5AC();
              }

              v66 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
              {
                *v88 = 134217984;
                *&v88[4] = *buf;
                _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#awd,kTandemCapabilityNotification,tandemCapability,%ld", v88, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1016AC340(buf);
              }

              if ((*buf - 1) < 4)
              {
                v67 = *buf;
              }

              else
              {
                v67 = 0;
              }

              a1[80].i32[1] = v67;
            }

            else
            {
              if (qword_1025D4660 != -1)
              {
                sub_1016AB5AC();
              }

              v69 = qword_1025D4668;
              if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
              {
                *v88 = 0;
                _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_ERROR, "#awd,kTandemCapabilityNotification,error fetching context", v88, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1016AC254();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100077CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100077DD8(uint64_t a1, int *a2, void **a3)
{
  if (qword_1025D4660 != -1)
  {
    sub_101617000();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, __p);
    v8 = (SBYTE7(v27) & 0x80u) == 0 ? __p : __p[0];
    *buf = 68289282;
    *&buf[4] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2082;
    v36 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#nilr,#supl,received CT notification, notification:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_100072010(a2);
  if (CFEqual(@"kSimStatusChangeNotification", v9))
  {
    *__p = 0u;
    v27 = 0u;
    v28 = 1065353216;
    if (sub_10116D8D4(*a3, __p))
    {
      *buf = a1 + 2564;
      v10 = sub_1009166D0(__p, (a1 + 2564));
      std::string::operator=((a1 + 376), v10 + 1);
      *buf = a1 + 2564;
      v11 = sub_1009166D0(__p, (a1 + 2564));
      std::string::operator=((a1 + 432), v11 + 2);
      *buf = a1 + 2564;
      v12 = sub_1009166D0(__p, (a1 + 2564));
      std::string::operator=((a1 + 400), v12 + 3);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v16 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 2564);
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,copySimStatusChangeFromDictionary error", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10161A1F8(buf);
        v20 = *(a1 + 2564);
        LODWORD(v31) = 67109120;
        HIDWORD(v31) = v20;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    sub_1009165FC(__p);
  }

  else
  {
    v13 = sub_100072010(a2);
    if (CFEqual(@"kSuplInitPayloadNotification", v13))
    {
      v31 = 0;
      __p[0] = 0;
      __p[1] = 0;
      *&v27 = 0;
      if (sub_10116D5A0(*a3, &v31, __p))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v14 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 2564);
          *buf = 67109120;
          *&buf[4] = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,#supl suplInitCT", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101616C84(buf);
          v22 = *(a1 + 2564);
          v29 = 67109120;
          v30 = v22;
          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        sub_10160D850(a1, __p);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v18 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 2564);
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,copySuplPayloadfromDictionary returned error", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101616C84(buf);
          v24 = *(a1 + 2564);
          v29 = 67109120;
          v30 = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10007837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000783BC(uint64_t a1, int *a2)
{
  v4 = sub_100072010(a2);
  if (CFEqual(v4, @"kAtLeastOneVoiceCallInProgress") && (*(a1 + 53) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "L5Context,kAtLeastOneVoiceCallInProgress", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A653D4();
    }

    *(a1 + 53) = 1;
    goto LABEL_19;
  }

  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kNoVoiceCallInProgress") && *(a1 + 53) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "L5Context,kNoVoiceCallInProgress", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A654B8();
    }

    *(a1 + 53) = 0;
LABEL_19:
    sub_10017DC7C(a1);
  }
}

void sub_10007852C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B75BF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHarvestControllerExternal::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B75C08();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestControllerExternal::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100078824(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100078708(uint64_t a1, int a2, int *a3, uint64_t a4, int a5)
{
  v10 = sub_100072010(a3);
  if (CFEqual(v10, kCTCallStatusChangeNotification))
  {
    v14 = 0;
    if ((*(**(a1 + 48) + 304))(*(a1 + 48), &v14))
    {
      *(a1 + 972) = v14;
    }
  }

  sub_100039440(a1);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100079310;
  v12[3] = &unk_10245FB88;
  v13 = a2;
  if (a5)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v12[4] = a3;
  v12[5] = a4;
  sub_100071CE4(a1, v11, v12);
  sub_100039584(a1);
}

void sub_100078824(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    sub_1001376D8(v5, a2);
  }

  sub_100078708(v5, a2, a3, a4, 0);
}

void sub_100078850(uint64_t a1, uint64_t a2, int *a3, id *a4)
{
  if (qword_1025D47D0 != -1)
  {
    sub_1002CEC74();
  }

  v7 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, &__p);
    v9 = v52[13] >= 0 ? &__p : __p;
    v10 = *(a1 + 417);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 1;
    *&buf[28] = 2082;
    *&buf[30] = v9;
    v56 = 1026;
    LODWORD(v57) = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim onTelephonyNotification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, harvestingDisabledDueToInvalidInUseSubsriptionsCount:%{public}hhd}", buf, 0x2Cu);
    if ((v52[13] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  sub_100079344(a1, a3, a4);
  sub_100079540(a1, a3, a4);
  if ((*(a1 + 417) & 1) == 0)
  {
    v11 = (*(**(a1 + 368) + 56))(*(a1 + 368));
    ++*(a1 + 204);
    v12 = (*(**(a1 + 56) + 184))(*(a1 + 56), v11);
    v13 = sub_100072010(a3);
    if (CFEqual(v13, @"kCellInfoNotification"))
    {
      sub_100079BE8(a1, a4);
      if (v12)
      {
        memset(buf, 0, 32);
        *&buf[32] = 1065353216;
        sub_100065478(*a4, buf);
        v49[0] = 0;
        __p = v49;
        v14 = [sub_1000646F8(buf v49)[3]];
        if (sub_1000649A0())
        {
          v49[0] = 1;
          __p = v49;
          v15 = [sub_1000646F8(buf v49)[3]] != 0;
          if (!v14)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v15 = 0;
          if (!v14)
          {
            goto LABEL_36;
          }
        }

        if (*(a1 + 488) == 1)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v20 = (a1 + 488);
          v21 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
          {
            __p = 68289282;
            v51 = 2082;
            *v52 = "";
            *&v52[8] = 2050;
            *&v52[10] = 1;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim pending cellMonitorRefreshRequest found for SimOne, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &__p, 0x1Cu);
          }

          sub_100E66E44(a1, v11, 0);
          goto LABEL_43;
        }

LABEL_36:
        if (!v15 || *(a1 + 512) != 1)
        {
          goto LABEL_44;
        }

        if (qword_1025D47D0 != -1)
        {
          sub_101AAABD0();
        }

        v20 = (a1 + 512);
        v22 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289282;
          v51 = 2082;
          *v52 = "";
          *&v52[8] = 2050;
          *&v52[10] = 1;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim pending cellMonitorRefreshRequest found for SimTwo, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &__p, 0x1Cu);
        }

        sub_100E66E44(a1, v11, 1);
LABEL_43:
        *v20 = 0;
LABEL_44:
        sub_100075100(buf);
        return;
      }

      if (qword_1025D47D0 != -1)
      {
        sub_101AAABD0();
      }

      v19 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = 1;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onTelephonyNotification gps location not eligible - skip harvetsing, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }
    }

    else
    {
      v16 = sub_100072010(a3);
      if (CFEqual(v16, @"kServingCellChangedNotification") || (v17 = sub_100072010(a3), CFEqual(v17, @"kServingNetworkChangedNotification")))
      {
        if ([*a4 objectForKey:@"kSlotOne"])
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v18 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#msim CellMonitorRefresh requested for SimOne", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AAB244();
          }

          *(a1 + 488) = 1;
          (*(**(a1 + 352) + 144))(*(a1 + 352), 0);
        }

        else if ([*a4 objectForKey:@"kSlotTwo"])
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v23 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#msim CellMonitorRefresh requested for SimTwo", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AAB328();
          }

          *(a1 + 512) = 1;
          (*(**(a1 + 352) + 144))(*(a1 + 352), 1);
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v34 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
          {
            v35 = sub_100072010(a3);
            sub_1000238CC(v35, &__p);
            if (v52[13] >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v37 = *a4;
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = 1;
            *&buf[28] = 2082;
            *&buf[30] = p_p;
            v56 = 2114;
            v57 = v37;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#msim onTelephonyNotification received notification for invalid slot, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, Data:%{public, location:escape_only}@}", buf, 0x30u);
            if ((v52[13] & 0x80000000) != 0)
            {
              operator delete(__p);
            }

            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }
          }

          v38 = qword_1025D47D8;
          if (os_signpost_enabled(qword_1025D47D8))
          {
            v39 = sub_100072010(a3);
            sub_1000238CC(v39, &__p);
            v40 = v52[13] >= 0 ? &__p : __p;
            v41 = *a4;
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = 1;
            *&buf[28] = 2082;
            *&buf[30] = v40;
            v56 = 2114;
            v57 = v41;
            _os_signpost_emit_with_name_impl(dword_100000000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#msim onTelephonyNotification received notification for invalid slot", "{msg%{public}.0s:#msim onTelephonyNotification received notification for invalid slot, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, Data:%{public, location:escape_only}@}", buf, 0x30u);
            if ((v52[13] & 0x80000000) != 0)
            {
              operator delete(__p);
            }
          }
        }
      }

      else
      {
        v24 = sub_100072010(a3);
        if (CFEqual(v24, @"kTimingAdvanceInfoNotification"))
        {
          if (*a4)
          {
            sub_100005548(v49, *a4);
            v25 = (a1 + 528);
            sub_1000052CC(v49, @"kTimingAdvanceLTEKey", (a1 + 528));
            v26 = (a1 + 532);
            sub_1000052CC(v49, @"kTimingAdvanceNRKey", (a1 + 532));
            v27 = (a1 + 536);
            sub_100023B78(v49, @"kTimingAdvanceTimeStampKey", (a1 + 536));
            sub_10001CBC0(v49, @"kTimingAdvanceisLTEKey", (a1 + 544));
            sub_10001CBC0(v49, @"kTimingAdvanceisNRKey", (a1 + 545));
            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }

            v28 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              v29 = *v25;
              v30 = *v26;
              v31 = *v27;
              v32 = *(a1 + 544);
              v33 = *(a1 + 545);
              *buf = 67241216;
              *&buf[4] = v29;
              *&buf[8] = 1026;
              *&buf[10] = v30;
              *&buf[14] = 2050;
              *&buf[16] = v31;
              *&buf[24] = 1026;
              *&buf[26] = v32;
              *&buf[30] = 1026;
              *&buf[32] = v33;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#timingadvance,lte_ta_val,%{public}d,nr_ta_val,%{public}d,taQuerytimestamp,%{public}.3f,istaLte,%{public}d,istaNr,%{public}d", buf, 0x24u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AAB40C(buf);
              v43 = *v25;
              v44 = *v26;
              v45 = *v27;
              v46 = *(a1 + 544);
              v47 = *(a1 + 545);
              LODWORD(__p) = 67241216;
              HIDWORD(__p) = v43;
              v51 = 1026;
              *v52 = v44;
              *&v52[4] = 2050;
              *&v52[6] = v45;
              *&v52[14] = 1026;
              *&v52[16] = v46;
              v53 = 1026;
              v54 = v47;
              v48 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLSubHarvesterCell::onTelephonyHarvestNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v48);
              if (v48 != buf)
              {
                free(v48);
              }
            }

            sub_100005DA4(v49);
          }

          else
          {
            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }

            v42 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#timingadvance data is empty", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AAB450();
            }
          }
        }
      }
    }
  }
}