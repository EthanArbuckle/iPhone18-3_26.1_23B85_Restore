void sub_1000370C0(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = *(a1 + 191);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 176);
  }

  if (v3 == v4 && ((v7 = (a1 + 168), v2 >= 0) ? (v8 = a2) : (v8 = *a2), (v9 = *v7, v5 >= 0) ? (v10 = v7) : (v10 = *v7), !memcmp(v8, v10, v3)))
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelaySM,onBleAlertReceived}", &v21, 0x12u);
      v12 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 191) < 0)
      {
        v7 = *v7;
      }

      v13 = *(a1 + 368);
      v14 = *(a1 + 400);
      v15 = *(a1 + 200);
      v16 = *(a1 + 208);
      v17 = *(a1 + 216);
      v18 = *(a1 + 224);
      v19 = *(a1 + 232);
      v20 = *(a1 + 336);
      v21 = 68292355;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2081;
      v26 = "info";
      v27 = 2081;
      v28 = "igAlertFlow";
      v29 = 2081;
      v30 = "bleRelaySM";
      v31 = 2081;
      v32 = "onBleAlertReceived";
      v33 = 2081;
      v34 = v7;
      v35 = 1025;
      v36 = v13;
      v37 = 1025;
      v38 = v14;
      v39 = 2049;
      v40 = v15;
      v41 = 2049;
      v42 = v16;
      v43 = 2049;
      v44 = v17;
      v45 = 2049;
      v46 = v18;
      v47 = 2049;
      v48 = v19;
      v49 = 2049;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ble alert received, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v21, 0x8Cu);
    }

    sub_100037360(a1 + 584, 2);
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelaySM,onBleAlertReceived,different alert id,ignoring}", &v21, 0x12u);
    }
  }
}

void sub_100037360(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v64 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    v55 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v55 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 115;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 115, "false && Assertion failed");
  }

  v3 = SALogObjectGeneral;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v3 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 116;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 116, "false && Assertion failed");
  }

  v5 = SALogObjectGeneral;
  v6 = *(a1 + 120);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v7 = *v7;
    }

    sub_100038AE0(v62, *(a1 + 4));
    v8 = v63;
    v9 = v62[0];
    sub_100038AD0(__p, a2);
    v10 = v62;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v61 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v7;
    v70 = 2082;
    v71 = v10;
    v72 = 2082;
    v73 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "{msg%{public}.0s:StateMachineHandleEvent, name:%{public, location:escape_only}s, current_state:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    if (v63 < 0)
    {
      operator delete(v62[0]);
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_22;
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
LABEL_22:
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v16 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 123;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 123, "false && Assertion failed");
  }

  v17 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = (*(a1 + 32) + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  v20 = v17(v19, a2);
  v21 = v20;
  v59 = v20;
  if (a2 <= 1 && v20 != v64)
  {
    v56 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v56 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 128;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 128, "false && Assertion failed");
  }

  v22 = SALogObjectGeneral;
  if (*(a1 + 88) >= 2u && os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v23 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v23 = *v23;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:StateMachineNestedEvent, name:%{public, location:escape_only}s}", buf, 0x1Cu);
    v22 = SALogObjectGeneral;
  }

  v24 = v22;
  v25 = *(a1 + 120);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v26 = *v26;
    }

    sub_100038AE0(v62, v21);
    if (v63 >= 0)
    {
      v27 = v62;
    }

    else
    {
      v27 = v62[0];
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v26;
    v70 = 2082;
    v71 = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "{msg%{public}.0s:StateMachineOldState, name:%{public, location:escape_only}s, newState:%{public, location:escape_only}s}", buf, 0x26u);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }
  }

  v28 = v64;
  if (v21 != v64)
  {
    v29 = SALogObjectGeneral;
    v30 = *(a1 + 120);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v31 = *v31;
      }

      sub_100038AE0(v62, v28);
      v32 = v63;
      v33 = v62[0];
      sub_1000060C4(__p, "Exit");
      v34 = v62;
      if (v32 < 0)
      {
        v34 = v33;
      }

      if (v61 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      *buf = 68289794;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2082;
      v69 = v31;
      v70 = 2082;
      v71 = v34;
      v72 = 2082;
      v73 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "{msg%{public}.0s:StateMachineTransition, name:%{public, location:escape_only}s, oldState:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }
    }

    v36 = *(a1 + 32);
    *buf = &v64;
    v37 = sub_100039170(v13, v64);
    v38 = v37[5];
    v39 = v37[6];
    v40 = (v36 + (v39 >> 1));
    if (v39)
    {
      v38 = *(*v40 + v38);
    }

    v41 = v38(v40, 1);
    if (v41 != v64)
    {
      v57 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
        v57 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        v68 = 2081;
        v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
        v70 = 2081;
        v71 = "handleEvent";
        v72 = 1026;
        LODWORD(v73) = 146;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
      }

      __assert_rtn("handleEvent", "SAStateMachine.h", 146, "false && Assertion failed");
    }

    *(a1 + 4) = v21;
    v42 = SALogObjectGeneral;
    v43 = *(a1 + 120);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v44 = *v44;
      }

      sub_100038AE0(v62, v21);
      v45 = v63;
      v46 = v62[0];
      sub_1000060C4(__p, "Enter");
      v47 = v62;
      if (v45 < 0)
      {
        v47 = v46;
      }

      if (v61 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      *buf = 68289794;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2082;
      v69 = v44;
      v70 = 2082;
      v71 = v47;
      v72 = 2082;
      v73 = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "{msg%{public}.0s:StateMachineTransition, name:%{public, location:escape_only}s, newState:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }
    }

    v49 = *(a1 + 32);
    *buf = &v59;
    v50 = sub_100039170(v13, v21);
    v51 = v50[5];
    v52 = v50[6];
    v53 = (v49 + (v52 >> 1));
    if (v52)
    {
      v51 = *(*v53 + v51);
    }

    v54 = v51(v53, 0);
    if (v54 != v59)
    {
      v58 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
        v58 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        v68 = 2081;
        v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
        v70 = 2081;
        v71 = "handleEvent";
        v72 = 1026;
        LODWORD(v73) = 153;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
      }

      __assert_rtn("handleEvent", "SAStateMachine.h", 153, "false && Assertion failed");
    }
  }

  --*(a1 + 88);
}

void sub_100037FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100038010(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = *(a1 + 191);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 176);
  }

  if (v3 == v4 && ((v7 = (a1 + 168), v2 >= 0) ? (v8 = a2) : (v8 = *a2), (v9 = *v7, v5 >= 0) ? (v10 = v7) : (v10 = *v7), !memcmp(v8, v10, v3)))
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelaySM,onAPNSAlertReceived}", &v21, 0x12u);
      v12 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 191) < 0)
      {
        v7 = *v7;
      }

      v13 = *(a1 + 368);
      v14 = *(a1 + 400);
      v15 = *(a1 + 200);
      v16 = *(a1 + 208);
      v17 = *(a1 + 216);
      v18 = *(a1 + 224);
      v19 = *(a1 + 232);
      v20 = *(a1 + 336);
      v21 = 68292355;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2081;
      v26 = "info";
      v27 = 2081;
      v28 = "igAlertFlow";
      v29 = 2081;
      v30 = "bleRelaySM";
      v31 = 2081;
      v32 = "onAPNSAlertReceived";
      v33 = 2081;
      v34 = v7;
      v35 = 1025;
      v36 = v13;
      v37 = 1025;
      v38 = v14;
      v39 = 2049;
      v40 = v15;
      v41 = 2049;
      v42 = v16;
      v43 = 2049;
      v44 = v17;
      v45 = 2049;
      v46 = v18;
      v47 = 2049;
      v48 = v19;
      v49 = 2049;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:apns alert received, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v21, 0x8Cu);
    }

    sub_100037360(a1 + 584, 3);
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleRelaySM,onAPNSAlertReceived,different alert id,ignoring}", &v21, 0x12u);
    }
  }
}

void sub_1000382B0(uint64_t a1, int a2, double a3)
{
  v26 = a2;
  v4 = *(a1 + 80);
  if (!v4)
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v20 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v20 = *v20;
      }

      *buf = 68289282;
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:StateMachineSetTimeout, name:%{public, location:escape_only}s}", buf, 0x1Cu);
      v19 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v30 = 2082;
      v31 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v19 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      v30 = 2082;
      v31 = "";
      v32 = 2081;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v34 = 2081;
      v35 = "setTimeoutEvent";
      v36 = 1026;
      LODWORD(v37) = 196;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("setTimeoutEvent", "SAStateMachine.h", 196, "false && Assertion failed");
  }

  if (a3 < 0.0)
  {
    v7 = SALogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    v8 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v8 = *v8;
    }

    sub_100038AD0(v24, a2);
    if (v25 >= 0)
    {
      v9 = v24;
    }

    else
    {
      v9 = v24[0];
    }

    *buf = 68289794;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v8;
    v34 = 2082;
    v35 = v9;
    v36 = 2050;
    v37 = a3;
    v10 = "{msg%{public}.0s:StateMachine,InvalidTimeout, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s, timeOutSec:%{public}f}";
    v11 = v7;
    v12 = OS_LOG_TYPE_FAULT;
    goto LABEL_26;
  }

  v13 = *(a1 + 64);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = a1 + 64;
  do
  {
    if (*(v13 + 32) >= a2)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a2));
  }

  while (v13);
  if (v14 == a1 + 64 || *(v14 + 32) > a2 || !*(v14 + 40))
  {
LABEL_18:
    sub_1000060C4(&__p, "smTimer");
    SATimer::create(v4);
  }

  *buf = &v26;
  v15 = sub_100039264(a1 + 56, v26)[5];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100039254;
  v21[3] = &unk_10013AFE0;
  v21[4] = a1;
  v22 = v26;
  v28 = 0;
  v27[0] = off_100138F50;
  v27[1] = objc_retainBlock(v21);
  v28 = v27;
  (*(*v15 + 16))(v15, v27, a3);
  sub_10000F274(v27);
  v7 = SALogObjectGeneral;
  v16 = *(a1 + 120);
  if (os_log_type_enabled(v7, v16))
  {
    v17 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v17 = *v17;
    }

    sub_100038AD0(v24, v26);
    if (v25 >= 0)
    {
      v18 = v24;
    }

    else
    {
      v18 = v24[0];
    }

    *buf = 68289794;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v17;
    v34 = 2082;
    v35 = v18;
    v36 = 2050;
    v37 = a3;
    v10 = "{msg%{public}.0s:StateMachine,SetTimeout, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s, timeout:%{public}f}";
    v11 = v7;
    v12 = v16;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, 0x30u);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

LABEL_28:
}

void sub_100038930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 480);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, v1 + 16);
  *(v1 + 520) = 1;
  v3 = mach_continuous_time();
  *(v1 + 560) = sub_1000B1880(v3);
  v4 = *(v1 + 712);
  v5 = sub_100034854();
  v6 = mach_continuous_time();
  *(v1 + 408) = v5 + sub_1000B1880(v6);

  sub_1000382B0(v1 + 584, 6, v5);
}

void sub_1000389D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 512);
  if (!v2)
  {
    sub_1000053C4();
  }

  (*(*v2 + 48))(v2, v1 + 16);
  v3 = mach_continuous_time();
  *(v1 + 552) = sub_1000B1880(v3);
  sub_100036E78(v1 + 584, 6);
  *(v1 + 408) = 0xBFF0000000000000;
}

uint64_t sub_100038A4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100036E78(v1 + 584, 5);
  sub_100036E78(v1 + 584, 6);
  sub_100036E78(v1 + 584, 4);
  v2 = *(v1 + 448);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100038AF0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100004CEC((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100004CEC((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100004CEC((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100004CEC((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100004CEC((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100004CEC((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100004CEC((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  v11 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v11;
  v12 = *(a2 + 208);
  v13 = *(a2 + 224);
  v14 = *(a2 + 256);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v14;
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  v15 = *(a2 + 272);
  v16 = *(a2 + 288);
  v17 = *(a2 + 304);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 288) = v16;
  *(a1 + 304) = v17;
  *(a1 + 272) = v15;
  v18 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 352) = *(a2 + 352);
  v19 = (a1 + 360);
  if (*(a2 + 383) < 0)
  {
    sub_100004CEC(v19, *(a2 + 360), *(a2 + 368));
  }

  else
  {
    v20 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 376);
    *v19 = v20;
  }

  *(a1 + 384) = *(a2 + 384);
  return a1;
}

void sub_100038CD0(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 344);
  if (v4)
  {
    sub_10002A838(v4);
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100038D88(uint64_t a1, uint64_t a2)
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

uint64_t sub_100038E20(uint64_t a1)
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

uint64_t sub_100038EA0(uint64_t a1)
{
  sub_100038E20(a1 + 64);
  sub_100038E20(a1 + 32);

  return sub_100038E20(a1);
}

void sub_100038EE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100038F24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100038F64(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004D90();
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

void sub_100038FF0(void *a1)
{
  if (a1)
  {
    sub_100038FF0(*a1);
    sub_100038FF0(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void sub_10003906C(void *a1)
{
  if (a1)
  {
    sub_10003906C(*a1);
    sub_10003906C(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_1000390B8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    do
    {
      sub_100036E78(a1, *(v2 + 8));
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_100038FF0(*(a1 + 64));
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_10002A838(v7);
  }

  sub_10003906C(*(a1 + 16));
  return a1;
}

uint64_t *sub_100039170(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100039264(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100039348(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  memset(&__p, 0, sizeof(__p));
  if (SACommonUtils::getStringFromDictionary(v5, v6, &__p))
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1000048B8(a3, &__p);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000393E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100039408(void *a1)
{
  result = a1[26];
  if (!result)
  {
    v3 = a1[20];
    if (a1[21] == v3)
    {
      v8 = a1[23];
      if (a1[24] == v8)
      {
        return a1[26];
      }

      v9 = sub_100039B6C(&v11, v8);
      a1[26] = v9;
      v5 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return a1[26];
      }

      v10 = a1[23];
      if (*(v10 + 23) < 0)
      {
        v10 = *v10;
      }

      v11 = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2049;
      v16 = v9;
      v17 = 2081;
      v18 = v10;
      v7 = "{msg%{public}.0s:#saanalytics,hashID created using wea, alertTextID:%{private}ld, alertText:%{private, location:escape_only}s}";
    }

    else
    {
      v4 = sub_100039B6C(&v11, v3);
      a1[26] = v4;
      v5 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return a1[26];
      }

      v6 = a1[20];
      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      v11 = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2049;
      v16 = v4;
      v17 = 2081;
      v18 = v6;
      v7 = "{msg%{public}.0s:#saanalytics,hashID created using sa, alertTextID:%{private}ld, alertText:%{private, location:escape_only}s}";
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v11, 0x26u);
    return a1[26];
  }

  return result;
}

void sub_1000395B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v2 > 0.0 && v3 >= 0.0)
  {
    *(a1 + 32) = vabdd_f64(v3, v2) * 1000.0;
  }

  *(a1 + 96) = 0xBFF0000000000000;
  if (v3 >= 0.0)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0.0)
    {
      *(a1 + 96) = (v3 - v4) * 1000.0;
      *(a1 + 24) = v4 < v3;
    }

    v5 = *(a1 + 312);
    if (v5 >= 0.0)
    {
      *(a1 + 336) = (v3 - v5) * 1000.0;
    }
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56) >= 0.0;
    v8 = *(a1 + 112) >= 0.0;
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 96);
    v12[0] = 68290563;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = v9;
    v17 = 1026;
    v18 = v7;
    v19 = 1026;
    v20 = v8;
    v21 = 2050;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 2049;
    v26 = sub_100039408(a1);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,computeWEAAndSALatency, originationTime:%{public}0.2f, weaReceptionTimeIsGood:%{public}d, saReceptionTimeIsGood:%{public}d, weaReceptionLatency:%{public}0.2f, delayBetweenWEAAndSA:%{public}0.2f, alertTextID:%{private}ld}", v12, 0x46u);
  }
}

void (__cdecl ***sub_100039774(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100041288((a1 + 3), 24);
  return a1;
}

void sub_1000399F0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100039A18(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

unint64_t sub_100039B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100041344(&v5, a2, v3);
}

void sub_100039BAC(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = "kAny";
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v3 = SALogObjectGeneral;
  v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,constructor call,object created}", buf, 0x12u);
  }

  v5 = SASettings::instance(v4);
  v6[0] = off_10013B098;
  v6[3] = v6;
  (*(*v5 + 16))(v5, v6);
  sub_10000F274(v6);
  operator new();
}

void sub_100039E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v10 = *(v5 + 104);
  *(v5 + 104) = 0;
  if (v10)
  {
    sub_100041884(v10);
  }

  sub_1000402E4(v8, 0);
  sub_100041838((v5 + 88), 0);
  sub_10004040C(v7, 0);
  sub_1000417B0(v5 + 40);
  sub_100040D0C(va);

  _Unwind_Resume(a1);
}

void sub_100039F08(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,initRollingMetric}", buf, 0x12u);
  }

  v3 = sub_10008E020();
  sub_10008EE7C(v3, v22);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1026;
    v29 = v22[0];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,initRollingMetric, rmSupported:%{public}d}", buf, 0x18u);
  }

  if (v22[0] && (v5 = v23, v23 > 0.0))
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 68289538;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1026;
    v29 = 1;
    v30 = 2050;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,initRollingMetric, rmSupported:%{public}d, rollingPeriodSeconds:%{public}lu}", buf, 0x22u);
    if (v22[0])
    {
LABEL_27:
      if (!*(a1 + 80))
      {
        operator new();
      }
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_100065C34(v7, v22);
      sub_100056028(*(*(a1 + 80) + 136));
      sub_100054420(*(*(a1 + 80) + 136), *(a1 + 112));
      v8 = *(a1 + 80);
      v9 = sub_100002DB0();
      sub_100065B4C(v8, *(v9 + 133) & *(v9 + 132) & 1);
      v10 = sub_100002DB0();
      if (*(v10 + 147) == 1 && *(v10 + 146) == 1)
      {
        v11 = sub_100002DB0();
        if (*(v11 + 145) == 1 && *(v11 + 144) == 1)
        {
          v12 = *(a1 + 80);
          v13 = sub_100002DB0();
          sub_100053ED8(*(v12 + 136), *(v13 + 109) & *(v13 + 108) & 1);
          v14 = *(a1 + 80);
          v15 = *(sub_100002DB0() + 18) > 0;
          sub_1000547E8(*(v14 + 136), v15);
          v16 = *(a1 + 80);
          v17 = *(sub_100002DB0() + 19) > 0;
          sub_1000545C8(*(v16 + 136), v17);
        }
      }

      if (*(a1 + 113) == 1)
      {
        sub_100063DC4(*(a1 + 80));
      }
    }

    else
    {
      v21 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,initRollingMetric,failed}", buf, 0x12u);
      }
    }
  }

  else
  {
    v19 = *(a1 + 80);
    v18 = (a1 + 80);
    if (v19)
    {
      v20 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,initRollingMetric,MA disabled RM}", buf, 0x12u);
      }

      sub_10004040C(v18, 0);
    }
  }
}

uint64_t sub_10003A318(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289026;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,destructor call,object destroyed}", &v7, 0x12u);
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  while (v3 != v4)
  {
    sub_10003A464(a1, v3, 1);
    v3 += 55;
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v5)
  {
    sub_100041884(v5);
  }

  sub_1000402E4((a1 + 96), 0);
  sub_100041838((a1 + 88), 0);
  sub_10004040C((a1 + 80), 0);
  sub_1000417B0(a1 + 40);
  v7 = a1 + 16;
  sub_100040D0C(&v7);

  return a1;
}

void sub_10003A458(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

void sub_10003A464(int8x8_t *a1, uint64_t *a2, int a3)
{
  if (!a2)
  {
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v109 = 2082;
    v110 = "";
    v12 = "{msg%{public}.0s:#saanalytics,submitOnAlert,alertMetric is nullptr}";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 18;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
    return;
  }

  v6 = sub_100039408(a2);
  if (a3)
  {
    v7 = *(a2 + 26);
    v8 = *(a2 + 25);
    goto LABEL_4;
  }

  v16 = *(a2 + 26);
  if (v16 == 1 && *(a2 + 25) == 1 && (*(a2 + 27) & 1) != 0)
  {
    v7 = 1;
    v8 = 1;
LABEL_4:
    memset(v117, 0, 15);
    if (*(a2 + 376) == 1)
    {
      if (v8)
      {
        if (v7)
        {
          qmemcpy(v117, "WEA", 3);
          v9 = 0x5F73756F656E0000;
          v10 = 11;
        }

        else
        {
          v9 = 0x73756F656E0000;
          v10 = 7;
        }

        v24 = 26441;
        goto LABEL_36;
      }
    }

    else if (v8)
    {
      if (v7)
      {
        v10 = 6;
      }

      else
      {
        v10 = 2;
      }

      if (v7)
      {
        v9 = 0x4145575F0000;
      }

      else
      {
        v9 = 0;
      }

      v24 = 16723;
      goto LABEL_36;
    }

    if (v7)
    {
      v10 = 8;
      v9 = 0x796C6E6F5F410000;
      v24 = 17751;
    }

    else
    {
      v10 = 7;
      v9 = 0x64696C61760000;
      v24 = 28233;
    }

LABEL_36:
    v105[0] = 0;
    v105[1] = 0;
    v106 = 0;
    sub_10004A044(a2 + 37, v105);
    v28 = mach_continuous_time();
    sub_1000B1880(v28);
    *(sub_100002DB0() + 23);
    if (SHIBYTE(v106) < 0)
    {
      sub_100004CEC(&v100, v105[0], v105[1]);
    }

    else
    {
      v100 = *v105;
      v101 = v106;
    }

    v102 = (v24 | v9);
    *v103 = v117[0];
    *&v103[7] = *(v117 + 7);
    v104 = v10;
    AnalyticsSendEventLazy();
    v29 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 26);
      v31 = *(a2 + 25);
      v32 = 1483715975 * ((*&a1[3] - *&a1[2]) >> 3);
      v33 = a1[8];
      *buf = 68290563;
      *&buf[4] = 0;
      v109 = 2082;
      v110 = "";
      v111 = 1026;
      v112 = a3;
      v113 = 1026;
      *v114 = v30;
      *&v114[4] = 1026;
      *&v114[6] = v31;
      *&v114[10] = 1026;
      *&v114[12] = v32;
      *&v114[16] = 1026;
      *&v114[18] = v33.i32[0];
      v115 = 2049;
      v116 = v6;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,metric submitted, forceSubmission:%{public}d, isWEAReceived:%{public}d, isSAReceived:%{public}d, alertMetricVectorSize:%{public}d, submissionTimerMapSize:%{public}d, alertTextID:%{private}ld}", buf, 0x3Au);
    }

    v34 = sub_100039408(a2);
    __p[0] = v34;
    if (!sub_100041AE8(&a1[5], v34))
    {
      goto LABEL_94;
    }

    v35 = a1[8];
    *buf = __p;
    v36 = sub_100041B98(&a1[5], v34);
    (*(*v36[3] + 40))(v36[3]);
    *buf = __p;
    v37 = sub_100041B98(&a1[5], __p[0]);
    v38 = v37[3];
    v37[3] = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = a1[6];
    if (!*&v39)
    {
      goto LABEL_92;
    }

    v40 = __p[0];
    v41 = vcnt_s8(v39);
    v41.i16[0] = vaddlv_u8(v41);
    if (v41.u32[0] > 1uLL)
    {
      v42 = __p[0];
      if (*&v39 <= __p[0])
      {
        v42 = __p[0] % *&v39;
      }
    }

    else
    {
      v42 = (*&v39 - 1) & __p[0];
    }

    v43 = a1[5];
    v44 = *(*&v43 + 8 * v42);
    if (!v44)
    {
      goto LABEL_92;
    }

    v45 = *v44;
    if (!*v44)
    {
      goto LABEL_92;
    }

    v46 = *&v39 - 1;
    while (1)
    {
      v47 = v45[1];
      if (v47 == __p[0])
      {
        if (v45[2] == __p[0])
        {
          v49 = *v45;
          if (v41.u32[0] > 1uLL)
          {
            if (__p[0] >= *&v39)
            {
              v40 = __p[0] % *&v39;
            }
          }

          else
          {
            v40 = v46 & __p[0];
          }

          v50 = *(*&v43 + 8 * v40);
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50 != v45);
          if (v51 == &a1[7])
          {
            goto LABEL_81;
          }

          v52 = v51[1];
          if (v41.u32[0] > 1uLL)
          {
            if (v52 >= *&v39)
            {
              v52 %= *&v39;
            }
          }

          else
          {
            v52 &= v46;
          }

          if (v52 == v40)
          {
LABEL_83:
            if (v49)
            {
              v53 = *(*&v49 + 8);
              goto LABEL_85;
            }
          }

          else
          {
LABEL_81:
            if (!*&v49)
            {
              goto LABEL_82;
            }

            v53 = *(*&v49 + 8);
            if (v41.u32[0] > 1uLL)
            {
              v54 = *(*&v49 + 8);
              if (v53 >= *&v39)
              {
                v54 = v53 % *&v39;
              }
            }

            else
            {
              v54 = v53 & v46;
            }

            if (v54 != v40)
            {
LABEL_82:
              *(*&v43 + 8 * v40) = 0;
              v49 = *v45;
              goto LABEL_83;
            }

LABEL_85:
            if (v41.u32[0] > 1uLL)
            {
              if (v53 >= *&v39)
              {
                v53 %= *&v39;
              }
            }

            else
            {
              v53 &= v46;
            }

            if (v53 != v40)
            {
              *(*&a1[5] + 8 * v53) = v51;
              v49 = *v45;
            }
          }

          *v51 = v49;
          *v45 = 0;
          --*&a1[8];
          sub_100041FA4(1, v45);
LABEL_92:
          v55 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v56 = a1[8];
            *buf = 68289795;
            *&buf[4] = 0;
            v109 = 2082;
            v110 = "";
            v111 = 1026;
            v112 = v35.i32[0];
            v113 = 1026;
            *v114 = v56.i32[0];
            *&v114[4] = 2049;
            *&v114[6] = __p[0];
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,alert submission timer erased, submissionTimerMapSizeBefore:%{public}d, submissionTimerMapSizeAfter:%{public}d, alertTextID:%{private}ld}", buf, 0x28u);
          }

LABEL_94:
          v59 = a1[2];
          v58 = a1[3];
          v57 = a1 + 2;
          if (*&v58 == *&v59)
          {
LABEL_111:
            v71 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v72 = 1483715975 * ((*&v58 - *v57) >> 3);
              *buf = 68289539;
              *&buf[4] = 0;
              v109 = 2082;
              v110 = "";
              v111 = 1026;
              v112 = v72;
              v113 = 2049;
              *v114 = __p[0];
              v73 = "{msg%{public}.0s:#saanalytics,unable to erase metric, alertMetricVectorSize:%{public}d, alertTextID:%{private}lu}";
              v74 = v71;
              v75 = 34;
              goto LABEL_113;
            }
          }

          else
          {
            v60 = 0;
            v61 = 1483715975 * ((*&v58 - *&v59) >> 3);
            while (1)
            {
              v62 = *&v59 + v60;
              v63 = sub_100039408((*&v59 + v60));
              if (v63 == __p[0])
              {
                v64 = *(v62 + 23);
                if (v64 >= 0)
                {
                  v65 = *(v62 + 23);
                }

                else
                {
                  v65 = *(v62 + 8);
                }

                v66 = *(a2 + 23);
                v67 = v66;
                if ((v66 & 0x80u) != 0)
                {
                  v66 = a2[1];
                }

                if (v65 == v66)
                {
                  v68 = v64 >= 0 ? (*&v59 + v60) : *v62;
                  v69 = *a2;
                  v70 = v67 >= 0 ? a2 : *a2;
                  if (!memcmp(v68, v70, v65))
                  {
                    break;
                  }
                }
              }

              v60 += 440;
              v58 = (*&v59 + v60);
              if (*&v59 + v60 == *&a1[3])
              {
                goto LABEL_111;
              }
            }

            v76 = *&v59 + v60;
            v77 = a1[3];
            if (*&v59 + v60 + 440 != *&v77)
            {
              v78 = a1[2];
              v79 = -*&v78;
              v99 = v78;
              v80 = *&v78 + *&v59 + v60;
              do
              {
                v81 = v80 + v79;
                if (*(v80 + v79 + 23) < 0)
                {
                  operator delete(*v81);
                }

                *v81 = *(v81 + 440);
                v82 = *(v81 + 544);
                *(v81 + 88) = *(v81 + 528);
                *(v81 + 104) = v82;
                v83 = *(v81 + 576);
                *(v81 + 120) = *(v81 + 560);
                *(v81 + 136) = v83;
                v84 = *(v81 + 480);
                *(v81 + 24) = *(v81 + 464);
                *(v81 + 40) = v84;
                v85 = *(v81 + 512);
                *(v81 + 56) = *(v81 + 496);
                *(v81 + 16) = *(v81 + 456);
                *(v81 + 463) = 0;
                *(v81 + 440) = 0;
                *(v81 + 72) = v85;
                v86 = *(v81 + 592);
                *(v81 + 592) = 0;
                v87 = *(v81 + 152);
                *(v81 + 152) = v86;
                if (v87)
                {
                  (*(*v87 + 8))(v87);
                }

                v88 = v80 + v79;
                v89 = (v80 + v79 + 600);
                sub_100040B40(v80 + v79 + 160);
                *(v88 + 160) = *v89;
                *(v88 + 176) = *(v88 + 616);
                *(v88 + 616) = 0;
                *v89 = 0u;
                sub_100040B40(v80 + v79 + 184);
                *(v88 + 184) = *(v88 + 624);
                *(v88 + 200) = *(v88 + 640);
                *(v88 + 640) = 0;
                *(v88 + 624) = 0u;
                v90 = *(v80 + v79 + 824);
                *(v88 + 368) = *(v88 + 808);
                *(v88 + 384) = v90;
                *(v88 + 400) = *(v88 + 840);
                v91 = *(v80 + v79 + 760);
                *(v88 + 304) = *(v88 + 744);
                *(v88 + 320) = v91;
                v92 = *(v80 + v79 + 792);
                *(v88 + 336) = *(v88 + 776);
                *(v88 + 352) = v92;
                v93 = *(v80 + v79 + 696);
                *(v88 + 240) = *(v88 + 680);
                *(v88 + 256) = v93;
                v94 = *(v80 + v79 + 728);
                *(v88 + 272) = *(v88 + 712);
                *(v88 + 288) = v94;
                v95 = *(v80 + v79 + 664);
                *(v88 + 208) = *(v88 + 648);
                *(v88 + 224) = v95;
                if (*(v80 + v79 + 439) < 0)
                {
                  operator delete(*(v88 + 416));
                }

                *(v88 + 432) = *(v88 + 872);
                *(v88 + 416) = *(v88 + 856);
                *(v88 + 879) = 0;
                *(v88 + 856) = 0;
                v80 += 440;
              }

              while (v80 + v79 + 440 != *&v77);
              v76 = v80 - *&v99;
            }

            sub_100040D60(&a1[2], v76);
            v96 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v97 = 1483715975 * ((*&a1[3] - *&a1[2]) >> 3);
              v98 = a1[8];
              *buf = 68290051;
              v109 = 2082;
              *&buf[4] = 0;
              v110 = "";
              v111 = 1026;
              v112 = v61;
              v113 = 1026;
              *v114 = v97;
              *&v114[4] = 2049;
              *&v114[6] = __p[0];
              *&v114[14] = 1026;
              *&v114[16] = v98.i32[0];
              v73 = "{msg%{public}.0s:#saanalytics,metric erased, alertMetricVectorSizeBefore:%{public}d, alertMetricVectorSizeAfter:%{public}d, alertTextID:%{private}ld, alertSubmissionTimerMapSize:%{public}d}";
              v74 = v96;
              v75 = 46;
LABEL_113:
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, v73, buf, v75);
            }
          }

          if (v104 < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v101) < 0)
          {
            operator delete(v100);
          }

          if (SHIBYTE(v106) < 0)
          {
            operator delete(v105[0]);
          }

          return;
        }
      }

      else
      {
        if (v41.u32[0] > 1uLL)
        {
          if (v47 >= *&v39)
          {
            v47 %= *&v39;
          }
        }

        else
        {
          v47 &= v46;
        }

        if (v47 != v42)
        {
          goto LABEL_92;
        }
      }

      v45 = *v45;
      if (!v45)
      {
        goto LABEL_92;
      }
    }
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a2 + 25);
    *buf = 68290051;
    v109 = 2082;
    *&buf[4] = 0;
    v110 = "";
    v111 = 1026;
    v112 = 0;
    v113 = 1026;
    *v114 = v16;
    *&v114[4] = 1026;
    *&v114[6] = v18;
    *&v114[10] = 2049;
    *&v114[12] = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,submitOnAlert, forceSubmission:%{public}d, isWEAReceived:%{public}d, isSAReceived:%{public}d, alertTextID:%{private}ld}", buf, 0x2Eu);
  }

  __p[3] = v6;
  if (sub_100041AE8(&a1[5], v6))
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a2 + 26);
      v21 = *(a2 + 25);
      v22 = v19;
      v23 = sub_100039408(a2);
      *buf = 68289795;
      *&buf[4] = 0;
      v109 = 2082;
      v110 = "";
      v111 = 1026;
      v112 = v20;
      v113 = 1026;
      *v114 = v21;
      *&v114[4] = 2049;
      *&v114[6] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,submission timer already created, isWEAReceived:%{public}d, isSAReceived:%{public}d, alertTextID:%{private}ld}", buf, 0x28u);
    }

    return;
  }

  v25 = sub_10008E020();
  if ((sub_10009015C(v25) & 0x80000000) == 0 || (v26 = *(sub_100042820() + 5), (v26 & 0x80000000) == 0))
  {
    v27 = *a1;
    sub_1000060C4(__p, "AlertMetricSubmission");
    SATimer::create(v27);
  }

  v48 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v109 = 2082;
    v110 = "";
    v111 = 1026;
    v112 = v26;
    v12 = "{msg%{public}.0s:#saanalytics,#warning,invalidDuration, durationSeconds:%{public}d}";
    v13 = v48;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 24;
    goto LABEL_10;
  }
}

uint64_t sub_10003B2DC(void *a1, char **a2)
{
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1 + 2;
LABEL_2:
  if (v4 == v6)
  {
    v97 = 0;
    *v96 = 0u;
    v88 = 0uLL;
    *&__p[30] = 0u;
    memset(__p, 0, 32);
    __asm { FMOV            V1.2D, #-1.0 }

    *&__p[4] = _Q1;
    *&__p[6] = _Q1;
    *&__p[8] = 0xBFF0000000000000;
    *&__p[10] = _Q1;
    *&__p[12] = _Q1;
    *&__p[14] = _Q1;
    *&__p[16] = 0u;
    LOBYTE(__p[17]) = 0;
    __p[18] = 0xBFF0000000000000;
    v86 = _Q1;
    *&v87 = 0;
    memset(&__p[19], 0, 64);
    *&__p[27] = _Q1;
    *&__p[29] = _Q1;
    *(&v87 + 1) = 0xBFF0000000000000;
    *&v89 = -1;
    *(&v89 + 1) = 0xBFF0000000000000;
    v90 = 0xBFF0000000000000;
    v91 = 0xBFF0000000000000;
    v92 = 0xBFF0000000000000;
    v93 = 0xBFF0000000000000;
    v94 = _Q1;
    v95 = _Q1;
    sub_1000060C4(v96, "Unknown");
    v19 = a1[3];
    v18 = a1[4];
    if (v19 >= v18)
    {
      v42 = *v5;
      v43 = v19 - *v5;
      v44 = 0x6FB586FB586FB587 * (v43 >> 3) + 1;
      if (v44 > 0x94F2094F2094F2)
      {
        sub_10000509C();
      }

      v45 = 0x6FB586FB586FB587 * ((v18 - v42) >> 3);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x4A7904A7904A79)
      {
        v46 = 0x94F2094F2094F2;
      }

      else
      {
        v46 = v44;
      }

      v80 = v5;
      if (v46)
      {
        if (v46 <= 0x94F2094F2094F2)
        {
          operator new();
        }

        sub_100004E38();
      }

      v47 = 8 * (v43 >> 3);
      v77 = 0;
      v78 = v47;
      *v47 = *__p;
      v48 = __p[25];
      *(v47 + 16) = __p[2];
      __p[0] = 0;
      __p[1] = 0;
      *(v47 + 88) = *&__p[11];
      *(v47 + 104) = *&__p[13];
      *(v47 + 120) = *&__p[15];
      *(v47 + 136) = *&__p[17];
      *(v47 + 24) = *&__p[3];
      *(v47 + 40) = *&__p[5];
      *(v47 + 56) = *&__p[7];
      *(v47 + 72) = *&__p[9];
      v49 = *&__p[19];
      __p[2] = 0;
      __p[19] = 0;
      __p[20] = 0;
      *(v47 + 152) = v49;
      *(v47 + 168) = *&__p[21];
      __p[21] = 0;
      __p[22] = 0;
      *(v47 + 184) = *&__p[23];
      *(v47 + 200) = v48;
      memset(&__p[23], 0, 24);
      v50 = *&__p[26];
      v51 = *&__p[28];
      v52 = v86;
      *(v47 + 240) = *&__p[30];
      *(v47 + 256) = v52;
      *(v47 + 208) = v50;
      *(v47 + 224) = v51;
      v53 = v87;
      v54 = v88;
      v55 = v90;
      *(v47 + 304) = v89;
      *(v47 + 320) = v55;
      *(v47 + 272) = v53;
      *(v47 + 288) = v54;
      v56 = v91;
      v57 = v92;
      v58 = v94;
      v59 = v95;
      *(v47 + 368) = v93;
      *(v47 + 384) = v58;
      *(v47 + 336) = v56;
      *(v47 + 352) = v57;
      v60 = *v96;
      *(v47 + 400) = v59;
      *(v47 + 416) = v60;
      *(v47 + 432) = v97;
      v96[1] = 0;
      v97 = 0;
      v96[0] = 0;
      v79 = (v47 + 440);
      v61 = v47 - v43;
      v83 = v47 - v43;
      v84 = v47 - v43;
      v81[0] = v5;
      v81[1] = &v83;
      v81[2] = &v84;
      if (v42 == v19)
      {
        v82 = 1;
      }

      else
      {
        v62 = 8 * (v43 >> 3) - v43;
        v63 = v42;
        do
        {
          sub_100040F00(v62, v63);
          v63 = (v63 + 440);
          v62 = v84 + 440;
          v84 += 440;
        }

        while (v63 != v19);
        v82 = 1;
        do
        {
          sub_100040DB0(v42);
          v42 += 440;
        }

        while (v42 != v19);
      }

      sub_100040FF4(v81);
      v64 = a1[2];
      a1[2] = v61;
      v65 = a1[4];
      v72 = v79;
      *(a1 + 3) = v79;
      *&v79 = v64;
      *(&v79 + 1) = v65;
      v77 = v64;
      v78 = v64;
      sub_100041050(&v77);
      v66 = SHIBYTE(v97);
      a1[3] = v72;
      if (v66 < 0)
      {
        operator delete(v96[0]);
      }
    }

    else
    {
      v20 = *__p;
      *(v19 + 16) = __p[2];
      *v19 = v20;
      __p[0] = 0;
      __p[1] = 0;
      v21 = *&__p[5];
      v22 = *&__p[7];
      v23 = *&__p[9];
      *(v19 + 24) = *&__p[3];
      *(v19 + 72) = v23;
      *(v19 + 56) = v22;
      *(v19 + 40) = v21;
      v24 = *&__p[13];
      v25 = *&__p[15];
      v26 = *&__p[17];
      *(v19 + 88) = *&__p[11];
      *(v19 + 136) = v26;
      *(v19 + 120) = v25;
      *(v19 + 104) = v24;
      *(v19 + 160) = 0;
      *(v19 + 168) = 0;
      *(v19 + 176) = 0;
      *(v19 + 184) = 0;
      v27 = *&__p[19];
      __p[2] = 0;
      __p[19] = 0;
      *(v19 + 152) = v27;
      *(v19 + 168) = *&__p[21];
      *&__p[20] = 0uLL;
      *(v19 + 192) = 0;
      *(v19 + 200) = 0;
      *(v19 + 184) = *&__p[23];
      *(v19 + 200) = __p[25];
      memset(&__p[22], 0, 32);
      *(v19 + 208) = *&__p[26];
      v28 = *&__p[28];
      v29 = *&__p[30];
      v30 = v87;
      *(v19 + 256) = v86;
      *(v19 + 272) = v30;
      *(v19 + 224) = v28;
      *(v19 + 240) = v29;
      v31 = v88;
      v32 = v89;
      v33 = v91;
      *(v19 + 320) = v90;
      *(v19 + 336) = v33;
      *(v19 + 288) = v31;
      *(v19 + 304) = v32;
      v34 = v92;
      v35 = v93;
      v36 = v95;
      *(v19 + 384) = v94;
      *(v19 + 400) = v36;
      *(v19 + 352) = v34;
      *(v19 + 368) = v35;
      v37 = *v96;
      *(v19 + 432) = v97;
      *(v19 + 416) = v37;
      v96[1] = 0;
      v97 = 0;
      v96[0] = 0;
      a1[3] = v19 + 440;
    }

    v77 = &__p[23];
    sub_100005208(&v77);
    v77 = &__p[20];
    sub_100005208(&v77);
    v67 = __p[19];
    __p[19] = 0;
    if (v67)
    {
      (*(*v67 + 8))(v67);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v68 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v69 = 1483715975 * ((a1[3] - a1[2]) >> 3);
      v70 = -1431655765 * ((a2[1] - *a2) >> 3);
      __p[0] = 68289538;
      LOWORD(__p[1]) = 2082;
      *(&__p[1] + 2) = "";
      WORD1(__p[2]) = 1026;
      HIDWORD(__p[2]) = v69;
      LOWORD(__p[3]) = 1026;
      *(&__p[3] + 2) = v70;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getAlertMetricObject,created new, alertMetricVectorSize:%{public}d, alertTextVectorSize:%{public}d}", __p, 0x1Eu);
    }

    return a1[3] - 440;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    while (1)
    {
      if (v7 == v8)
      {
        v4 += 55;
        goto LABEL_2;
      }

      if (v7[23] < 0)
      {
        sub_100004CEC(__dst, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        v76 = *(v7 + 2);
        *__dst = v9;
      }

      if (SHIBYTE(v76) < 0)
      {
        sub_100004CEC(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        __p[2] = v76;
      }

      v10 = sub_100040E48(v4[20], v4[21], __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v10)
      {
        v38 = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          return v4;
        }

        v39 = 1483715975 * ((a1[3] - a1[2]) >> 3);
        if (v7[23] < 0)
        {
          v7 = *v7;
        }

        __p[0] = 68289539;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        WORD1(__p[2]) = 1026;
        HIDWORD(__p[2]) = v39;
        LOWORD(__p[3]) = 2081;
        *(&__p[3] + 2) = v7;
        v40 = "{msg%{public}.0s:#saanalytics,getAlertMetricObject,found existing sa alert, alertMetricVectorSize:%{public}d, alertText:%{private, location:escape_only}s}";
        goto LABEL_39;
      }

      if (v7[23] < 0)
      {
        sub_100004CEC(v73, *v7, *(v7 + 1));
      }

      else
      {
        v11 = *v7;
        v74 = *(v7 + 2);
        *v73 = v11;
      }

      if (SHIBYTE(v74) < 0)
      {
        sub_100004CEC(__p, v73[0], v73[1]);
      }

      else
      {
        *__p = *v73;
        __p[2] = v74;
      }

      v12 = sub_100040E48(v4[23], v4[24], __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73[0]);
      }

      if (v12)
      {
        break;
      }

      v7 += 24;
    }

    v38 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return v4;
    }

    v41 = 1483715975 * ((a1[3] - a1[2]) >> 3);
    if (v7[23] < 0)
    {
      v7 = *v7;
    }

    __p[0] = 68289539;
    LOWORD(__p[1]) = 2082;
    *(&__p[1] + 2) = "";
    WORD1(__p[2]) = 1026;
    HIDWORD(__p[2]) = v41;
    LOWORD(__p[3]) = 2081;
    *(&__p[3] + 2) = v7;
    v40 = "{msg%{public}.0s:#saanalytics,getAlertMetricObject,found existing wea alert, alertMetricVectorSize:%{public}d, alertText:%{private, location:escape_only}s}";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v40, __p, 0x22u);
  }

  return v4;
}

void sub_10003BAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  a24 = &a61;
  sub_100005208(&a24);
  a24 = &a58;
  sub_100005208(&a24);
  v62 = a57;
  a57 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003BBA8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v26 = *(a1 + 24);
  if (v3 == v26)
  {
LABEL_49:
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) >= 0)
      {
        v19 = v2;
      }

      else
      {
        v19 = *v2;
      }

      *buf = 68289283;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      *v38 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getAlertMetricObjectFromHash,notFound, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      if (*(v2 + 23) < 0)
      {
        sub_100004CEC(__dst, *v2, v2[1]);
      }

      else
      {
        *__dst = *v2;
        v28 = v2[2];
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_100004CEC(v29, __dst[0], __dst[1]);
      }

      else
      {
        *v29 = *__dst;
        v30 = v28;
      }

      v5 = *(v3 + 184);
      v4 = *(v3 + 192);
      while (v5 != v4)
      {
        SACommonUtils::getHashForString(v5, __p);
        v6 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v5;
          if (v5[23] < 0)
          {
            v7 = *v5;
          }

          if ((v32 & 0x80u) == 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          if (SHIBYTE(v30) >= 0)
          {
            v9 = v29;
          }

          else
          {
            v9 = v29[0];
          }

          *buf = 68289795;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2081;
          *v38 = v7;
          *&v38[8] = 2081;
          *&v38[10] = v8;
          v39 = 2081;
          v40 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,matchingHash, text:%{private, location:escape_only}s, result:%{private, location:escape_only}s, alertHash:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v10 = v32;
        if ((v32 & 0x80u) == 0)
        {
          v11 = v32;
        }

        else
        {
          v11 = __p[1];
        }

        v12 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v12 = v29[1];
        }

        if (v11 == v12)
        {
          v13 = (v32 & 0x80u) == 0 ? __p : __p[0];
          v14 = SHIBYTE(v30) >= 0 ? v29 : v29[0];
          if (!memcmp(v13, v14, v11))
          {
            v17 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v34 = 0;
              v35 = 2082;
              v36 = "";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,matchSuccess}", buf, 0x12u);
              LOBYTE(v10) = v32;
            }

            if ((v10 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }

            v16 = 1;
            goto LABEL_43;
          }
        }

        if (v10 < 0)
        {
          operator delete(__p[0]);
        }

        v5 += 24;
      }

      v15 = SALogObjectGeneral;
      v16 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,matchFailed}", buf, 0x12u);
        v16 = 0;
      }

LABEL_43:
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v16)
      {
        break;
      }

      v3 += 440;
      v2 = a2;
      if (v3 == v26)
      {
        goto LABEL_49;
      }
    }

    v21 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 1483715975 * ((*(a1 + 24) - *(a1 + 16)) >> 3);
      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      *buf = 68289539;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 1026;
      *v38 = v22;
      *&v38[4] = 2081;
      *&v38[6] = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getAlertMetricObjectFromHash,found existing wea alert, alertMetricVectorSize:%{public}d, hash:%{private, location:escape_only}s}", buf, 0x22u);
    }
  }

  return v3;
}

void sub_10003C028(int8x8_t *a1, void *a2, char a3, __int128 *a4, uint64_t a5, double a6, double a7)
{
  v104 = 0;
  v106 = 0;
  v11 = a2;
  v105 = 0;
  v102 = v11;
  if (v11)
  {
    v12 = [v11 objectForKey:@"info"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v99 = a5;
      memset(v107, 0, sizeof(v107));
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:v107 objects:v116 count:16];
      if (v14)
      {
        v15 = **&v107[1];
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (**&v107[1] != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v107[0] + 1) + 8 * i);
            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                sub_100039348(v17, @"CMAMtext", &v104);
                sub_100039348(v17, @"CMAMlongtext", &v104);
                sub_100039348(v17, @"cmamtext", &v104);
                sub_100039348(v17, @"cmamlongtext", &v104);
              }
            }
          }

          v14 = [v13 countByEnumeratingWithState:v107 objects:v116 count:16];
        }

        while (v14);
      }

      a5 = v99;
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v13 count];
        buf.__r_.__value_.__r.__words[0] = 68289538;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1026;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v19;
        v114 = 1026;
        v115 = -1431655765 * ((v105 - v104) >> 3);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getAlertTextVector, infoCount:%{public}d, alertTextCounts:%{public}d}", &buf, 0x1Eu);
      }

      v20 = v102;
    }

    else
    {

      v20 = v102;
    }

    memset(&v103, 0, sizeof(v103));
    if (SACommonUtils::getStringFromDictionary(v20, @"uid", &v103))
    {
      if (a1[10])
      {
        v111[0] = kIncomingMessageInterfaceKey;
        v21 = [NSNumber numberWithInteger:*(a5 + 64)];
        v112[0] = v21;
        v111[1] = kIsReceivedViaPushKey;
        v22 = [NSNumber numberWithBool:*(a5 + 56) == 2];
        v112[1] = v22;
        v23 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];

        sub_100054F98(*(*&a1[10] + 136), &v103.__r_.__value_.__l.__data_, v23);
      }

      goto LABEL_24;
    }
  }

  else
  {
    memset(&v103, 0, sizeof(v103));
  }

  v24 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v116[0].__locale_ = 68289026;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onsaalertreceived,missingUid}", v116, 0x12u);
  }

LABEL_24:
  memset(v116, 0, 48);
  __asm { FMOV            V1.2D, #-1.0 }

  *&v116[6].__locale_ = _Q1;
  *&v116[8].__locale_ = _Q1;
  v116[10].__locale_ = 0xBFF0000000000000;
  *&v116[11].__locale_ = 0u;
  v117 = 0u;
  v118 = 1065353216;
  memset(v119, 0, sizeof(v119));
  v120 = 1065353216;
  v29 = sub_10008E020();
  sub_10008F5B0(v29, v116);
  memset(v107, 0, 24);
  locale = v116[3].__locale_;
  v31 = v116[4].__locale_;
  while (locale != v31)
  {
    if (*(locale + 23) < 0)
    {
      sub_100004CEC(&buf, *locale, *(locale + 1));
    }

    else
    {
      v32 = *locale;
      buf.__r_.__value_.__r.__words[2] = *(locale + 2);
      *&buf.__r_.__value_.__l.__data_ = v32;
    }

    SACommonUtils::getHashForString(&buf, &__p);
    sub_1000048B8(v107, &__p);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    locale = (locale + 24);
  }

  v34 = v104;
  v33 = v105;
  if (v104 == v105)
  {
    v44 = 0;
  }

  else
  {
    v35 = a1;
    do
    {
      SACommonUtils::getHashForString(v34, &buf);
      v37 = *(&v107[0] + 1);
      v36 = *&v107[0];
      v38 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*&v107[0] != *(&v107[0] + 1))
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v41 = *(v36 + 23);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v36 + 8);
          }

          if (v41 == size)
          {
            v43 = v42 >= 0 ? v36 : *v36;
            if (!memcmp(v43, p_buf, size))
            {
              break;
            }
          }

          v36 += 24;
          if (v36 == v37)
          {
            v36 = v37;
            break;
          }
        }
      }

      v44 = v36 != v37;
      if (v38 < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v34 += 24;
    }

    while (v36 == v37 && v34 != v33);
    a1 = v35;
  }

  buf.__r_.__value_.__r.__words[0] = v107;
  sub_100005208(&buf);
  sub_10002D804(v119);
  sub_10002DA28(&v116[11]);
  *&v107[0] = &v116[3];
  sub_100005208(v107);
  *&v107[0] = v116;
  sub_100005208(v107);
  if (v44)
  {
    v46 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_79;
    }

    v116[0].__locale_ = 68289026;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    v47 = "{msg%{public}.0s:#saanalytics,skipping sa alert for eq}";
    v48 = v46;
    v49 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_78;
  }

  v50 = *a4;
  *(a5 + 40) = *(a4 + 4);
  *(a5 + 24) = v50;
  if (v104 == v105)
  {
    v62 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v116[0].__locale_ = 68289026;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    v47 = "{msg%{public}.0s:#saanalytics,onsaalertreceived,alert does not have any message,ignoring}";
LABEL_77:
    v48 = v62;
    v49 = OS_LOG_TYPE_ERROR;
LABEL_78:
    _os_log_impl(&_mh_execute_header, v48, v49, v47, v116, 0x12u);
    goto LABEL_79;
  }

  v51 = sub_10003B2DC(a1, &v104);
  v52 = v51;
  if (!v51)
  {
    v62 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v116[0].__locale_ = 68289026;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    v47 = "{msg%{public}.0s:#saanalytics,onsaalertreceived,alert metric object could not be created}";
    goto LABEL_77;
  }

  if (*(v51 + 368) < 0.0)
  {
    v53 = mach_continuous_time();
    v54 = sub_1000B1880(v53);
    v55 = *(sub_100002DB0() + 23);
    v56 = fmin(v54, v55);
    v57 = v54 - v55;
    if (v56 < 0.0)
    {
      v57 = -1.0;
    }

    *(v52 + 368) = v57;
  }

  if (*(v52 + 25) == 1)
  {
    v58 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v59 = 1483715975 * ((*&a1[3] - *&a1[2]) >> 3);
      v60 = v58;
      v61 = sub_100039408(v52);
      v116[0].__locale_ = 68289539;
      LOWORD(v116[1].__locale_) = 2082;
      *(&v116[1].__locale_ + 2) = "";
      WORD1(v116[2].__locale_) = 1026;
      HIDWORD(v116[2].__locale_) = v59;
      LOWORD(v116[3].__locale_) = 2049;
      *(&v116[3].__locale_ + 2) = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onsaalertreceived,alert already received, alertMetricVectorSize:%{public}d, alertTextID:%{private}ld}", v116, 0x22u);
    }

    goto LABEL_79;
  }

  v63 = *(a5 + 16);
  v107[0] = *a5;
  v107[1] = v63;
  v107[2] = *(a5 + 32);
  v64 = *(a5 + 48);
  v65 = *(a5 + 56);
  v67 = *(a5 + 64);
  v66 = *(a5 + 72);
  v68 = v102;
  v69 = v68;
  if (!v102)
  {
    v79 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_135;
    }

    v116[0].__locale_ = 68289026;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    v80 = "{msg%{public}.0s:#saanalytics,alert received with nil payload}";
    v81 = v79;
    v82 = 18;
LABEL_111:
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, v80, v116, v82);
    goto LABEL_135;
  }

  v70 = *a4;
  if (*a4 < 0.0)
  {
    v83 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_135;
    }

    v84 = *(a4 + 1);
    v85 = *(a4 + 4);
    v116[0].__locale_ = 68289794;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    WORD1(v116[2].__locale_) = 2050;
    *(&v116[2].__locale_ + 4) = v70;
    WORD2(v116[3].__locale_) = 2050;
    *(&v116[3].__locale_ + 6) = v84;
    HIWORD(v116[4].__locale_) = 1026;
    LODWORD(v116[5].__locale_) = v85;
    v80 = "{msg%{public}.0s:#saanalytics,saReception,invalid time, crntTime:%{public}0.1f, timeUnc:%{public}0.1f, reliability:%{public}d}";
    v81 = v83;
    v82 = 44;
    goto LABEL_111;
  }

  SACommonUtils::getWEAHandling(v68, (v52 + 416));
  *(v52 + 288) = v65;
  *(v52 + 256) = *(&v107[1] + 8);
  *(v52 + 272) = DWORD2(v107[2]);
  *(v52 + 232) = v107[0];
  *(v52 + 248) = v107[1];
  *(v52 + 296) = v67;
  if (v65 == 1)
  {
    *(v52 + 304) = v66;
    *(v52 + 280) = v64;
  }

  *(v52 + 80) = 0xBFF0000000000000;
  *(v52 + 40) = 0xBFF0000000000000;
  v71 = sub_100002DB0();
  *(v52 + 361) = *(v71 + 143) & *(v71 + 142) ^ 1;
  if (!SACommonUtils::getStringFromDictionary(v69, @"uid", v52))
  {
    goto LABEL_120;
  }

  __p = 0uLL;
  v109 = 0;
  v121 = 0;
  *(&v116[0].__locale_ + *(v116[0].__locale_ - 3)) = v72;
  v116[1].__locale_ = 0;
  v73 = (v116 + *(v116[0].__locale_ - 3));
  std::ios_base::init(v73, &v116[3]);
  v73[1].__vftable = 0;
  v73[1].__fmtflags_ = -1;
  *(&v116[2].__locale_ + *(v116[2].__locale_ - 3)) = v74;
  std::locale::locale(&v116[4]);
  memset(&v116[5], 0, 64);
  v117 = 0u;
  v118 = 24;
  std::string::operator=(&v116[11], v52);
  sub_100040898(&v116[3]);
  memset(&buf, 0, sizeof(buf));
  while (2)
  {
    std::istream::sentry::sentry();
    if (v110 != 1)
    {
      goto LABEL_105;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      *buf.__r_.__value_.__l.__data_ = 0;
      buf.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      buf.__r_.__value_.__s.__data_[0] = 0;
      *(&buf.__r_.__value_.__s + 23) = 0;
    }

    v75 = 0;
    while (1)
    {
      v76 = *(&v116[5].__locale_ + *(v116[0].__locale_ - 3));
      v77 = v76[3];
      if (v77 != v76[4])
      {
        v76[3] = v77 + 1;
        LOBYTE(v76) = *v77;
        goto LABEL_96;
      }

      LODWORD(v76) = (*(*v76 + 80))(v76);
      if (v76 == -1)
      {
        break;
      }

LABEL_96:
      if (v76 == 44)
      {
        v78 = 0;
        goto LABEL_104;
      }

      std::string::push_back(&buf, v76);
      --v75;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0 && buf.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v78 = 4;
        goto LABEL_104;
      }
    }

    if (v75)
    {
      v78 = 2;
    }

    else
    {
      v78 = 6;
    }

LABEL_104:
    std::ios_base::clear((v116 + *(v116[0].__locale_ - 3)), *(&v116[4].__locale_ + *(v116[0].__locale_ - 3)) | v78);
LABEL_105:
    if ((*(&v116[4].__locale_ + *(v116[0].__locale_ - 3)) & 5) == 0)
    {
      sub_1000048B8(&__p, &buf);
      continue;
    }

    break;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v116[2].__locale_ = v86;
  if (SBYTE7(v117) < 0)
  {
    operator delete(v116[11].__locale_);
  }

  std::locale::~locale(&v116[4]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  CFAbsoluteTimeFromTimeString = -1.0;
  if (0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 3) >= 3)
  {
    CFAbsoluteTimeFromTimeString = SACommonUtils::extractCFAbsoluteTimeFromTimeString((__p + 48));
  }

  v116[0].__locale_ = &__p;
  sub_100005208(v116);
  *(v52 + 40) = CFAbsoluteTimeFromTimeString;
  if (CFAbsoluteTimeFromTimeString >= 0.0)
  {
    *(v52 + 80) = vabdd_f64(*a4, CFAbsoluteTimeFromTimeString) * 1000.0;
  }

LABEL_120:
  *(v52 + 88) = 0xBFF0000000000000;
  if (a7 >= 0.0)
  {
    *(v52 + 88) = vabdd_f64(*a4, a7) * 1000.0;
  }

  *(v52 + 224) = 0xBFF0000000000000;
  memset(&buf, 0, sizeof(buf));
  if (SACommonUtils::getStringFromDictionary(v69, @"ingress_timestamp", &buf))
  {
    v88 = SACommonUtils::extractCFAbsoluteTimeFromTimeString(&buf);
    if (v88 >= 0.0)
    {
      *(v52 + 224) = vabdd_f64(*a4, v88) * 1000.0;
    }
  }

  if ((v52 + 160) != &v104)
  {
    sub_1000409A0((v52 + 160), v104, v105, 0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 3));
  }

  *(v52 + 25) = 1;
  *(v52 + 136) = a3;
  *(v52 + 144) = a6;
  *(v52 + 112) = *(v52 + 232);
  *(v52 + 128) = *(v52 + 248);
  *(v52 + 312) = *(v52 + 256);
  *(v52 + 328) = *(v52 + 272);
  if ((*(v52 + 26) & 1) == 0)
  {
    *(v52 + 24) = 1;
  }

  v89 = sub_100039408(v52);
  v90 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v91 = v52;
    if (*(v52 + 23) < 0)
    {
      v91 = *v52;
    }

    v92 = *(v52 + 40);
    v93 = *(v52 + 112);
    v94 = *(v52 + 136);
    v95 = *(v52 + 24);
    v96 = *(v52 + 80);
    v97 = *(v52 + 88);
    v98 = *(v52 + 144);
    v116[0].__locale_ = 68291331;
    LOWORD(v116[1].__locale_) = 2082;
    *(&v116[1].__locale_ + 2) = "";
    WORD1(v116[2].__locale_) = 2081;
    *(&v116[2].__locale_ + 4) = v91;
    WORD2(v116[3].__locale_) = 2049;
    *(&v116[3].__locale_ + 6) = v89;
    HIWORD(v116[4].__locale_) = 2050;
    v116[5].__locale_ = v92;
    LOWORD(v116[6].__locale_) = 2050;
    *(&v116[6].__locale_ + 2) = v93;
    WORD1(v116[7].__locale_) = 1025;
    HIDWORD(v116[7].__locale_) = v94;
    LOWORD(v116[8].__locale_) = 1026;
    *(&v116[8].__locale_ + 2) = v95;
    HIWORD(v116[8].__locale_) = 2050;
    v116[9].__locale_ = v96;
    LOWORD(v116[10].__locale_) = 2050;
    *(&v116[10].__locale_ + 2) = v97;
    WORD1(v116[11].__locale_) = 2049;
    *(&v116[11].__locale_ + 4) = v98;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,sa received, id:%{private, location:escape_only}s, alertTextID:%{private}lu, alertOriginationTime:%{public}0.1f, saReceivedTime:%{public}0.1f, insidePolygon:%{private}d, saReceivedBeforeWEA:%{public}d, salatencyOriginatorMilliSec:%{public}0.2f, salatencyServerMilliSec:%{public}0.2f, distanceToPolygon:%{private}0.2f}", v116, 0x64u);
  }

  sub_1000395B0(v52);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_135:

  sub_10003A464(a1, v52, 0);
LABEL_79:
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v116[0].__locale_ = &v104;
  sub_100005208(v116);
}

void sub_10003D240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  __cxa_end_catch();
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_100039A18(&a49);
  __p = &a34;
  sub_100005208(&__p);

  if (a22 < 0)
  {
    operator delete(a17);
  }

  __p = &a23;
  sub_100005208(&__p);

  _Unwind_Resume(a1);
}

void sub_10003D410(int8x8_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v9 = *(a2 + 8);
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onIgneousAlertReceived, uid:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a2 + 180) == 4)
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2 + 8;
      if (*(a2 + 31) < 0)
      {
        v11 = *(a2 + 8);
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onFollowUpAlertReceived, uid:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v12 = a1[11];
    if (v12)
    {
      sub_100023170(v12, a2);
    }
  }

  else
  {
    v13 = a1[10];
    if (v13)
    {
      sub_100065D00(v13, a2);
    }

    if (*a2 == 1)
    {
      v14 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onIgneousAlertReceived,dupe alert,skipping}", buf, 0x12u);
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      *(a3 + 3) = Current;
      *(a3 + 4) = 0xBFF0000000000000;
      *(a3 + 10) = -1;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      memset(buf, 0, sizeof(buf));
      __asm { FMOV            V1.2D, #-1.0 }

      v74 = 0u;
      v75 = _Q1;
      v69 = _Q1;
      v76 = _Q1;
      v77 = 0xBFF0000000000000;
      memset(v78, 0, sizeof(v78));
      memset(v80, 0, sizeof(v80));
      v79 = 1065353216;
      v81 = 1065353216;
      v21 = sub_10008E020();
      sub_10008F5B0(v21, buf);
      v22 = *&buf[24];
      v23 = v74;
      while (v22 != v23)
      {
        sub_1000048B8(&v70, v22);
        v22 = (v22 + 24);
      }

      v24 = sub_10003B2DC(a1, &v70);
      v25 = v24;
      if (v24)
      {
        if (*(v24 + 368) < 0.0)
        {
          v26 = mach_continuous_time();
          v27 = sub_1000B1880(v26);
          v28 = *(sub_100002DB0() + 23);
          v29 = fmin(v27, v28);
          v30 = v27 - v28;
          if (v29 < 0.0)
          {
            v30 = -1.0;
          }

          *(v25 + 368) = v30;
        }

        if (*(v25 + 25) == 1)
        {
          v31 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 1483715975 * ((*&a1[3] - *&a1[2]) >> 3);
            v33 = v31;
            v34 = sub_100039408(v25);
            *__dst = 68289539;
            *&__dst[4] = 0;
            *&__dst[8] = 2082;
            *&__dst[10] = "";
            *&__dst[18] = 1026;
            *&__dst[20] = v32;
            *&__dst[24] = 2049;
            *&__dst[26] = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onIgneousAlertReceived,alert already received, alertMetricVectorSize:%{public}d, alertTextID:%{private}ld}", __dst, 0x22u);
          }
        }

        else
        {
          if (Current < 0.0)
          {
            v42 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
            {
              *__dst = 68289794;
              *&__dst[8] = 2082;
              *&__dst[4] = 0;
              *&__dst[10] = "";
              *&__dst[18] = 2050;
              *&__dst[20] = Current;
              *&__dst[28] = 2050;
              *&__dst[30] = 0xBFF0000000000000;
              v83 = 1026;
              LODWORD(v84) = -1;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,saReception,invalid time, crntTime:%{public}0.1f, timeUnc:%{public}0.1f, reliability:%{public}d}", __dst, 0x2Cu);
            }
          }

          else
          {
            *(v25 + 288) = *(a3 + 14);
            v36 = *(a3 + 24);
            *(v25 + 272) = *(a3 + 10);
            *(v25 + 256) = v36;
            v37 = *a3;
            *(v25 + 248) = *(a3 + 4);
            *(v25 + 232) = v37;
            *(v25 + 296) = *(a3 + 8);
            *(v25 + 80) = 0xBFF0000000000000;
            *(v25 + 40) = v69;
            v38 = sub_100002DB0();
            *(v25 + 361) = *(v38 + 143) & *(v38 + 142) ^ 1;
            v39 = *(a2 + 175);
            if ((v39 & 0x80u) != 0)
            {
              v39 = *(a2 + 160);
            }

            _ZF = v39 == 0;
            v40 = 152;
            if (_ZF)
            {
              v40 = 8;
            }

            v41 = a2 + v40;
            if (*(v41 + 23) < 0)
            {
              sub_100004CEC(__dst, *v41, *(v41 + 8));
            }

            else
            {
              *__dst = *v41;
              *&__dst[16] = *(v41 + 16);
            }

            if (*(v25 + 23) < 0)
            {
              operator delete(*v25);
            }

            v43 = *__dst;
            *(v25 + 16) = *&__dst[16];
            *v25 = v43;
            if ((v25 + 160) != &v70)
            {
              sub_1000409A0((v25 + 160), v70, v71, 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3));
            }

            *(v25 + 25) = 1;
            *(v25 + 136) = 1;
            *(v25 + 144) = 0xBFF0000000000000;
            *(v25 + 112) = *(v25 + 232);
            *(v25 + 128) = *(v25 + 248);
            *(v25 + 312) = *(v25 + 256);
            *(v25 + 328) = *(v25 + 272);
            *(v25 + 400) = *(a2 + 256);
            *(v25 + 377) = *(a2 + 180) == 0;
            *(v25 + 376) = 1;
            if (*(a3 + 14) == 1)
            {
              *(v25 + 304) = *(a3 + 9);
              *(v25 + 280) = *(a3 + 6);
            }

            v44 = *(a2 + 192);
            *(v25 + 40) = v44;
            if (v44 >= 0.0)
            {
              *(v25 + 80) = vabdd_f64(Current, v44) * 1000.0;
            }

            v45 = *(a2 + 200);
            *(v25 + 48) = v45;
            if (v45 >= 0.0)
            {
              *(v25 + 104) = vabdd_f64(Current, v45) * 1000.0;
            }

            *(v25 + 88) = 0xBFF0000000000000;
            *(v25 + 224) = 0xBFF0000000000000;
            v46 = *(a2 + 184);
            if (v46 >= 0.0)
            {
              *(v25 + 224) = vabdd_f64(Current, v46) * 1000.0;
            }

            if ((*(v25 + 26) & 1) == 0)
            {
              *(v25 + 24) = 1;
            }

            v47 = *a4;
            v48 = a4[1];
            v49 = *(a2 + 240);
            v50 = *(a2 + 248);
            CLClientGetDistanceCoordinates();
            *(v25 + 384) = v51;
            v52 = Current - *(a2 + 200);
            v53 = v51 / 3600.0;
            *(v25 + 378) = v52 <= v53;
            *(v25 + 392) = v52 - v53;
            v54 = sub_100039408(v25);
            v55 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v56 = v25;
              if (*(v25 + 23) < 0)
              {
                v56 = *v25;
              }

              v57 = *(v25 + 40);
              v58 = *(v25 + 136);
              v59 = *(v25 + 24);
              v61 = *(v25 + 104);
              v60 = *(v25 + 112);
              v62 = *(v25 + 80);
              v63 = *(v25 + 88);
              v65 = *(v25 + 384);
              v64 = *(v25 + 392);
              v67 = *(v25 + 400);
              v66 = *(v25 + 408);
              v68 = *(v25 + 377);
              *__dst = 68292611;
              *&__dst[4] = 0;
              *&__dst[8] = 2082;
              *&__dst[10] = "";
              *&__dst[18] = 2081;
              *&__dst[20] = v56;
              *&__dst[28] = 2049;
              *&__dst[30] = v54;
              v83 = 2050;
              v84 = v57;
              v85 = 2050;
              v86 = v60;
              v87 = 1025;
              v88 = v58;
              v89 = 1026;
              v90 = v59;
              v91 = 2050;
              v92 = v61;
              v93 = 2050;
              v94 = v62;
              v95 = 2050;
              v96 = v63;
              v97 = 2049;
              v98 = v65;
              v99 = 2049;
              v100 = v64;
              v101 = 2049;
              v102 = v66;
              v103 = 2049;
              v104 = v67;
              v105 = 1025;
              v106 = v68;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,igneous received, id:%{private, location:escape_only}s, alertTextID:%{private}lu, alertOriginationTime:%{public}0.1f, saReceivedTime:%{public}0.1f, insidePolygon:%{private}d, saReceivedBeforeWEA:%{public}d, latencyToEqOriginMilliSec:%{public}0.2f, salatencyOriginatorMilliSec:%{public}0.2f, salatencyServerMilliSec:%{public}0.2f, distanceToEpicenter:%{private}0.2f, latencyRelativeToSWave:%{private}0.2f, MMI:%{private}0.2f, magnitude:%{private}0.2f, isTestAlert:%{private}hhd}", __dst, 0x92u);
            }

            sub_1000395B0(v25);
          }

          sub_10003A464(a1, v25, 0);
        }
      }

      else
      {
        v35 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *__dst = 68289026;
          *&__dst[4] = 0;
          *&__dst[8] = 2082;
          *&__dst[10] = "";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onIgneousAlertReceived,alert metric object could not be created}", __dst, 0x12u);
        }
      }

      sub_10002D804(v80);
      sub_10002DA28(v78);
      *__dst = &buf[24];
      sub_100005208(__dst);
      *__dst = buf;
      sub_100005208(__dst);
      *buf = &v70;
      sub_100005208(buf);
    }
  }
}

void sub_10003DC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15)
{
  sub_10002BE00(&a15);
  a15 = &a12;
  sub_100005208(&a15);
  _Unwind_Resume(a1);
}

void sub_10003DC84(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onBleAlertReceived}", &v9, 0x12u);
  }

  if (*a2 == 1)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onBleAlertReceived,dupe alert,skipping}", &v9, 0x12u);
    }
  }

  else
  {
    v8 = *(a1 + 96);
    if (v8)
    {
      sub_10004809C(v8, a2, a3);
    }
  }
}

void sub_10003DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onBleAlertSent}", v8, 0x12u);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    sub_100048790(v7, a2, a3);
  }
}

void sub_10003DEB0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100054BC0(*(v3 + 136), v4);
  }
}

void sub_10003DF1C(int8x8_t *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v6 = a1[10];
    if (v6)
    {
      sub_100054A08(*(*&v6 + 136), a2);
      v3 = *(a2 + 23);
    }

    if (v3 < 0)
    {
      sub_100004CEC(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    memset(v25, 0, sizeof(v25));
    sub_100041140(v25, buf, &buf[24], 1uLL);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v8 = sub_10003B2DC(a1, v25);
    v9 = v8;
    if (v8)
    {
      if (*(v8 + 368) < 0.0)
      {
        v10 = mach_continuous_time();
        v11 = sub_1000B1880(v10);
        v12 = *(sub_100002DB0() + 23);
        v13 = fmin(v11, v12);
        v14 = v11 - v12;
        if (v13 < 0.0)
        {
          v14 = -1.0;
        }

        *(v9 + 368) = v14;
      }

      if (*(v9 + 26) != 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current < 0.0)
        {
          v24 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 68289794;
            *&buf[8] = 2082;
            *&buf[4] = 0;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = Current;
            v27 = 2050;
            v28 = 0xBFF0000000000000;
            v29 = 1026;
            v30 = -1;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,weaReception,invalid time, crntTime:%{public}0.1f, timeUnc:%{public}0.1f, reliability:%{public}d}", buf, 0x2Cu);
          }
        }

        else
        {
          v21 = sub_100002DB0();
          *(v9 + 360) = *(v21 + 143) & *(v21 + 142) ^ 1;
          *(v9 + 26) = 1;
          *(v9 + 32) = 0xBFF0000000000000;
          *(v9 + 56) = Current;
          *(v9 + 64) = 0xBFF0000000000000;
          *(v9 + 72) = -1;
          sub_10000525C((v9 + 184));
          sub_1000048B8((v9 + 184), a2);
          v22 = sub_100039408(v9);
          v23 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = Current;
            v27 = 2049;
            v28 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,wea displayed, weaDisplayedTime:%{public}0.1f, alertTextID:%{private}ld}", buf, 0x26u);
          }

          sub_1000395B0(v9);
        }

        sub_10003A464(a1, v9, 0);
        goto LABEL_31;
      }

      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v16 = "{msg%{public}.0s:#saanalytics,onWeaDisplayed,alert already received}";
        v17 = v15;
        v18 = OS_LOG_TYPE_DEFAULT;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x12u);
      }
    }

    else
    {
      v19 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v16 = "{msg%{public}.0s:#saanalytics,onWeaDisplayed,alert metric object could not be created}";
        v17 = v19;
        v18 = OS_LOG_TYPE_ERROR;
        goto LABEL_23;
      }
    }

LABEL_31:
    *buf = v25;
    sub_100005208(buf);
    return;
  }

  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onWeaDisplayed,alert does not have any message,ignoring}", buf, 0x12u);
  }
}

void sub_10003E32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __p = &a10;
  sub_100005208(&__p);
  _Unwind_Resume(a1);
}

void sub_10003E370(int8x8_t *a1, uint64_t a2)
{
  v3 = sub_10003BBA8(a1, a2);
  v4 = SALogObjectGeneral;
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onUserTappedOnWEA called}", &v8, 0x12u);
    }

    *(v5 + 27) = 1;
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.0)
    {
      v7 = *(v5 + 56);
      if (v7 >= 0.0)
      {
        *(v5 + 216) = (Current - v7) * 1000.0;
      }
    }

    sub_10003A464(a1, v5, 0);
  }

  else if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v8 = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onUserTappedOnWEA,alert metric object could not be found}", &v8, 0x12u);
  }
}

void sub_10003E4DC(int8x8_t *a1, uint64_t a2)
{
  v4 = sub_10003BBA8(a1, a2);
  v5 = SALogObjectGeneral;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onPullTriggered called}", &v13, 0x12u);
    }

    *(v6 + 344) = 1;
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.0)
    {
      v8 = *(v6 + 56);
      if (v8 >= 0.0)
      {
        v9 = Current;
        v10 = (Current - v8) * 1000.0;
        *(v6 + 352) = v10;
        v11 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = *a2;
          }

          v13 = 68290051;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2081;
          v18 = v12;
          v19 = 2049;
          v20 = v9;
          v21 = 2049;
          v22 = v8;
          v23 = 2049;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onPullTriggered, weaTextHash:%{private, location:escape_only}s, currentTime:%{private}0.1f, fTimeUsedForWEAReceptionLatencyComputations:%{private}0.1f, fLatencyOnPullTrigger:%{private}0.1f}", &v13, 0x3Au);
        }
      }
    }

    sub_10003A464(a1, v6, 0);
  }

  else if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v13 = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onPullTriggered,alert metric object could not be found}", &v13, 0x12u);
  }
}

void sub_10003E6FC(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003BBA8(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(a3 + 48);
    v9 = *(a3 + 72);
    *(v6 + 304) = v9;
    *(v6 + 280) = v8;
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v13 = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v11;
      v19 = 2050;
      v20 = v9;
      v21 = 2050;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onPullFailed, weaTextHash:%{private, location:escape_only}s, responseCode:%{public}ld, latency:%{public}0.1f}", &v13, 0x30u);
    }

    sub_10003A464(a1, v7, 0);
  }

  else
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,onPullFailed,alert metric object could not be found}", &v13, 0x12u);
    }
  }
}

void sub_10003E8D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,timer invoked}", &v4, 0x12u);
  }

  if (*(v1 + 24) == *(v1 + 16))
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#saanalytics,forceSubmitFirstAlert, alert metric vector does not have enough elements}", &v4, 0x12u);
    }
  }

  else
  {
    sub_10003A464(v1);
  }
}

id sub_10003EA0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v110[0] = @"alertID";
  v3 = (a1 + 40);
  v106 = [NSNumber numberWithUnsignedLong:sub_100039B6C(&v109, *(a1 + 40))];
  v111[0] = v106;
  v110[1] = @"alertIDString";
  v4 = *v3;
  v5 = *(*v3 + 23);
  if (v5 < 0)
  {
    v6 = v4[1];
  }

  else
  {
    v6 = *(*v3 + 23);
  }

  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4;
      if ((v5 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      *buf = 68289283;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,getAlertID, fAlertUID:%{private, location:escape_only}s}", buf, 0x1Cu);
      LOBYTE(v5) = *(v4 + 23);
    }

    if ((v5 & 0x80) != 0)
    {
      sub_100004CEC(__p, *v4, v4[1]);
    }

    else
    {
      v9 = *v4;
      v108 = v4[2];
      *__p = v9;
    }

    goto LABEL_32;
  }

  sub_1000060C4(__p, "");
  v10 = v4[20];
  if (v4[21] == v10)
  {
    v15 = v4[23];
    if (v4[24] == v15)
    {
      v52 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v14 = "{msg%{public}.0s:#saanalytics,#warning,getAlertID,wea and sa text vector empty}";
      v18 = v52;
      v19 = 18;
LABEL_31:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v14, buf, v19);
      goto LABEL_32;
    }

    SACommonUtils::getHashForString(v15, buf);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v108 = *&buf[16];
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v16 = __p[0];
      if (SHIBYTE(v108) >= 0)
      {
        v16 = __p;
      }

      v17 = v4[23];
      if (*(v17 + 23) < 0)
      {
        v17 = *v17;
      }

      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v16;
      v113 = 2081;
      v114 = v17;
      v14 = "{msg%{public}.0s:#saanalytics,getAlertID,created using wea, hash:%{private, location:escape_only}s, alertText:%{private, location:escape_only}s}";
      goto LABEL_30;
    }
  }

  else
  {
    SACommonUtils::getHashForString(v10, buf);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v108 = *&buf[16];
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = __p[0];
      if (SHIBYTE(v108) >= 0)
      {
        v12 = __p;
      }

      v13 = v4[20];
      if (*(v13 + 23) < 0)
      {
        v13 = *v13;
      }

      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v12;
      v113 = 2081;
      v114 = v13;
      v14 = "{msg%{public}.0s:#saanalytics,getAlertID,created using SA text, hash:%{private, location:escape_only}s, alertText:%{private, location:escape_only}s}";
LABEL_30:
      v18 = v11;
      v19 = 38;
      goto LABEL_31;
    }
  }

LABEL_32:
  if (SHIBYTE(v108) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  v99 = [NSString stringWithUTF8String:v20];
  v111[1] = v99;
  v110[2] = @"alertReceivedViaPush";
  v102 = [NSNumber numberWithBool:*(*(a1 + 40) + 288) == 2];
  v111[2] = v102;
  v110[3] = @"deviceTimeUncertaintyBucketed";
  v101 = [NSNumber numberWithInt:SATime::getTimeUncertaintyBucket((*(a1 + 40) + 112))];
  v111[3] = v101;
  v110[4] = @"deviceTimeUncertaintyBucketForWEALatency";
  v103 = [NSNumber numberWithInt:SATime::getTimeUncertaintyBucket((*(a1 + 40) + 56))];
  v111[4] = v103;
  v110[5] = @"isDeviceTimeReliable";
  v104 = [NSNumber numberWithBool:*(*(a1 + 40) + 128) != 0];
  v111[5] = v104;
  v110[6] = @"isDeviceTimeReliableForWEALatency";
  v105 = [NSNumber numberWithBool:*(*(a1 + 40) + 72) != 0];
  v111[6] = v105;
  v110[7] = @"isLocationAuthorized";
  v21 = sub_100002DB0();
  v94 = [NSNumber numberWithBool:*(v21 + 109) & *(v21 + 108) & 1];
  v111[7] = v94;
  v110[8] = @"isSafetyAlertReceivedFirst";
  v96 = [NSNumber numberWithBool:*(*(a1 + 40) + 24)];
  v111[8] = v96;
  v110[9] = @"isSAReceived";
  v95 = [NSNumber numberWithBool:*(*(a1 + 40) + 25)];
  v111[9] = v95;
  v110[10] = @"isUserInsideAlertPolygon";
  v97 = [NSNumber numberWithBool:*(*(a1 + 40) + 136)];
  v111[10] = v97;
  v110[11] = @"isWEAReceived";
  v98 = [NSNumber numberWithBool:*(*(a1 + 40) + 26)];
  v111[11] = v98;
  v110[12] = @"userTappedOnWEA";
  v100 = [NSNumber numberWithBool:*(*(a1 + 40) + 27)];
  v111[12] = v100;
  v110[13] = @"isWiFiReachable";
  v22 = sub_100002DB0();
  v90 = [NSNumber numberWithBool:*(v22 + 113) & v22[7] & 1];
  v111[13] = v90;
  v110[14] = @"latencyBetweenWEAandSA";
  v91 = [NSNumber numberWithDouble:fabs(*(*(a1 + 40) + 96))];
  v111[14] = v91;
  v110[15] = @"latencyBetweenWEAandSARealValue";
  v93 = [NSNumber numberWithDouble:*(*(a1 + 40) + 96)];
  v111[15] = v93;
  v110[16] = @"numberOfChanelsSubscribed";
  v85 = [NSNumber numberWithInt:*(sub_100002DB0() + 18)];
  v111[16] = v85;
  v110[17] = @"saLatencyRelativeToOriginatorTime";
  v86 = [NSNumber numberWithDouble:*(*(a1 + 40) + 80)];
  v111[17] = v86;
  v110[18] = @"saLatencyRelativeToServerTime";
  v87 = [NSNumber numberWithDouble:*(*(a1 + 40) + 88)];
  v111[18] = v87;
  v110[19] = @"userDistanceFromAlertPolygon";
  v89 = [NSNumber numberWithDouble:*(*(a1 + 40) + 144)];
  v111[19] = v89;
  v110[20] = @"weaLatencyRelativeToOriginatorTIme";
  v92 = [NSNumber numberWithDouble:*(*(a1 + 40) + 32)];
  v111[20] = v92;
  v110[21] = @"isChannelMapAvailable";
  v23 = sub_100002DB0();
  v88 = [NSNumber numberWithBool:*(v23 + 119) & *(v23 + 118) & 1];
  v111[21] = v88;
  v110[22] = @"isCompanionNearby";
  v24 = sub_100002DB0();
  v84 = [NSNumber numberWithBool:*(v24 + 121) & *(v24 + 120) & 1];
  v111[22] = v84;
  v110[23] = @"isCountryKnown";
  v25 = sub_100002DB0();
  v83 = [NSNumber numberWithBool:*(v25 + 145) & v25[9] & 1];
  v111[23] = v83;
  v110[24] = @"isLocationAvailable";
  v26 = sub_100002DB0();
  v82 = [NSNumber numberWithBool:*(v26 + 147) & *(v26 + 146) & 1];
  v111[24] = v82;
  v110[25] = @"isSupportedByTelephony";
  v27 = sub_100002DB0();
  v75 = [NSNumber numberWithBool:*(v27 + 111) & *(v27 + 110) & 1];
  v111[25] = v75;
  v110[26] = @"latencyBetweenWeaAndUserTap";
  v74 = [NSNumber numberWithDouble:*(*(a1 + 40) + 216)];
  v111[26] = v74;
  v110[27] = @"saLatencyRelativeToServerIngressTime";
  v73 = [NSNumber numberWithDouble:*(*(a1 + 40) + 224)];
  v111[27] = v73;
  v110[28] = @"latencyBetweenWEAandSAConsumedValue";
  v72 = [NSNumber numberWithDouble:*(*(a1 + 40) + 336)];
  v111[28] = v72;
  v110[29] = @"isPullTriggered";
  v77 = [NSNumber numberWithBool:*(*(a1 + 40) + 344)];
  v111[29] = v77;
  v110[30] = @"latencyForPullRequest";
  v78 = [NSNumber numberWithDouble:*(*(a1 + 40) + 352)];
  v111[30] = v78;
  v110[31] = @"latencyForPullResponse";
  v79 = [NSNumber numberWithDouble:*(*(a1 + 40) + 280)];
  v111[31] = v79;
  v110[32] = @"pullResponseCodeStr";
  v80 = [NSNumber numberWithLong:*(*(a1 + 40) + 304)];
  v81 = [v80 stringValue];
  v111[32] = v81;
  v110[33] = @"isSupportedByCountry";
  v28 = sub_100002DB0();
  v76 = [NSNumber numberWithBool:*(v28 + 115) & *(v28 + 114) & 1];
  v111[33] = v76;
  v110[34] = @"isFirstUnlocked";
  v29 = sub_100002DB0();
  v69 = [NSNumber numberWithBool:*(v29 + 141) & *(v29 + 140) & 1];
  v111[34] = v69;
  v110[35] = @"isUnlockedOnWea";
  v70 = [NSNumber numberWithBool:*(*(a1 + 40) + 360)];
  v111[35] = v70;
  v110[36] = @"isUnlockedOnSa";
  v71 = [NSNumber numberWithBool:*(*(a1 + 40) + 361)];
  v111[36] = v71;
  v110[37] = @"maContentVersionStr";
  v66 = [NSNumber numberWithInt:*(sub_100002DB0() + 17)];
  v68 = [v66 stringValue];
  v111[37] = v68;
  v110[38] = @"maCompatibilityVersionStr";
  v62 = [NSNumber numberWithInt:*(sub_100002DB0() + 16)];
  v65 = [v62 stringValue];
  v111[38] = v65;
  v110[39] = @"secondsSinceDaemonStart";
  v30 = *(*(a1 + 40) + 368);
  if (v30 < 0.0)
  {
    v30 = *(a1 + 48);
  }

  v67 = [NSNumber numberWithDouble:v30];
  v111[39] = v67;
  v110[40] = @"isChannelSubscribed";
  v63 = [NSNumber numberWithBool:*(sub_100002DB0() + 18) > 0];
  v111[40] = v63;
  v110[41] = @"isIgneousChannelSubscribed";
  v60 = [NSNumber numberWithBool:*(sub_100002DB0() + 19) > 0];
  v111[41] = v60;
  v110[42] = @"pushNwConfig";
  v61 = [NSString stringWithUTF8String:*(v2 + 8)];
  v111[42] = v61;
  v110[43] = @"isCellularDataReachable";
  v31 = sub_100002DB0();
  v59 = [NSNumber numberWithBool:*(v31 + 129) & v31[8] & 1];
  v111[43] = v59;
  v110[44] = @"pushInterface";
  v32 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v32 = *v32;
  }

  v64 = [NSString stringWithUTF8String:v32];
  v111[44] = v64;
  v110[45] = @"isEmergencyAlertEnabled";
  v33 = SASettings::instance(v64);
  v58 = [NSNumber numberWithBool:(*(*v33 + 48))(v33)];
  v111[45] = v58;
  v110[46] = @"isAmberAlertEnabled";
  v34 = SASettings::instance(v58);
  v57 = [NSNumber numberWithBool:(*(*v34 + 56))(v34)];
  v111[46] = v57;
  v110[47] = @"isPublicSafetyAlertEnabled";
  v35 = SASettings::instance(v57);
  v56 = [NSNumber numberWithBool:(*(*v35 + 64))(v35)];
  v111[47] = v56;
  v110[48] = @"isIphoneAnalyticsEnabled";
  v36 = SASettings::instance(v56);
  v55 = [NSNumber numberWithBool:(*(*v36 + 32))(v36)];
  v111[48] = v55;
  v110[49] = @"isSignificantLocationEnabled";
  v37 = SASettings::instance(v55);
  v54 = [NSNumber numberWithBool:(*(*v37 + 40))(v37)];
  v111[49] = v54;
  v110[50] = @"metricType";
  v38 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v38 = *v38;
  }

  v39 = [NSString stringWithUTF8String:v38];
  v111[50] = v39;
  v110[51] = @"distanceToEpicenter";
  v40 = [NSNumber numberWithDouble:*(*(a1 + 40) + 384)];
  v111[51] = v40;
  v110[52] = @"latencyRelativeToSWave";
  v41 = [NSNumber numberWithDouble:*(*(a1 + 40) + 392)];
  v111[52] = v41;
  v110[53] = @"latencyRelativeToSWaveMS";
  v42 = [NSNumber numberWithDouble:*(*(a1 + 40) + 392) * 1000.0];
  v111[53] = v42;
  v110[54] = @"latencyRelativeToEqOriginTime";
  v43 = [NSNumber numberWithDouble:*(*(a1 + 40) + 104)];
  v111[54] = v43;
  v110[55] = @"magnitude";
  v44 = [NSNumber numberWithDouble:*(*(a1 + 40) + 400)];
  v111[55] = v44;
  v110[56] = @"MMI";
  v45 = [NSNumber numberWithDouble:*(*(a1 + 40) + 408)];
  v111[56] = v45;
  v110[57] = @"isTestAlert";
  v46 = [NSNumber numberWithBool:*(*(a1 + 40) + 377)];
  v111[57] = v46;
  v110[58] = @"wasAlertReceivedBeforeExpectedSWave";
  v47 = [NSNumber numberWithBool:*(*(a1 + 40) + 378)];
  v111[58] = v47;
  v110[59] = @"weaHandling";
  v48 = *(a1 + 40);
  v49 = (v48 + 416);
  if (*(v48 + 439) < 0)
  {
    v49 = *v49;
  }

  v50 = [NSString stringWithUTF8String:v49];
  v111[59] = v50;
  v53 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:60];

  if (SHIBYTE(v108) < 0)
  {
    operator delete(__p[0]);
  }

  return v53;
}

void sub_10003FAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_10003FEDC(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 79) < 0)
  {
    result = sub_100004CEC(result + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(result + 9) = *(a2 + 72);
    *(result + 56) = v4;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100004CEC(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v5 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  *(v3 + 5) = v5;
  return result;
}

void sub_10003FF50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10003FF6C(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void sub_10003FFC4(int8x8_t *a1, uint64_t *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 1483715975 * ((*&a1[3] - *&a1[2]) >> 3);
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,cleanup, alertMetricVectorSize:%{public}d}", buf, 0x18u);
  }

  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v9);
  if (v10)
  {
    sub_10002A838(v10);
  }

  v7 = a1[2];
  v8 = a1[3];
  while (v7 != v8)
  {
    sub_10003A464(a1, v7, 1);
    v7 += 55;
  }
}

void sub_1000400FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10004011C()
{
  if ((*(sub_100042820() + 203) & 1) == 0)
  {
    v4 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v5 = "{msg%{public}.0s:#saanalytics,#pfm,#warning,failed,pullDisabled}";
LABEL_11:
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, 0x12u);
    return 0;
  }

  v0 = sub_100002DB0();
  if (*(v0 + 115) != 1 || (*(v0 + 114) & 1) == 0)
  {
    v4 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v5 = "{msg%{public}.0s:#saanalytics,#pfm,failed,pullNotSupported}";
    goto LABEL_11;
  }

  v1 = *(sub_100042820() + 51);
  if (v1 < 0x65)
  {
    return arc4random_uniform(0x64u) <= v1;
  }

  v2 = sub_10008E020();
  v1 = sub_10008F1BC(v2);
  if (v1 < 0x65)
  {
    return arc4random_uniform(0x64u) <= v1;
  }

  v8 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v5 = "{msg%{public}.0s:#saanalytics,#pfm,failed,invalidPullPc}";
    v6 = v8;
    v7 = OS_LOG_TYPE_DEBUG;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1000402E4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100047FE0(result);

    operator delete();
  }

  return result;
}

void sub_10004032C(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saanalytics,onEnhancedDeliveryEnabled, isEnhancedDeliveryEnabled:%{public}hhd}", v6, 0x18u);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    sub_100065B4C(v5, a2);
  }
}

uint64_t sub_10004040C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100063B24(result);

    operator delete();
  }

  return result;
}

void sub_100040458(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onAssetReceived}", v3, 0x12u);
  }

  sub_100039F08(a1);
}

void sub_100040518(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onIgneousChannelUpdate, numOfChannels:%{private}d}", v6, 0x18u);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    sub_1000545C8(*(v5 + 136), a2 > 0);
  }
}

void sub_100040604(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v21[0] = @"bleAlertID";
  if ((a2[31] & 0x80u) == 0)
  {
    v6 = a2 + 8;
  }

  else
  {
    v6 = v3;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v22[0] = v7;
  v21[1] = @"advertisementDuration";
  v8 = [NSNumber numberWithDouble:(v4 - v5) * 1000.0];
  v22[1] = v8;
  v21[2] = @"didAdvertise";
  v9 = [NSNumber numberWithBool:*a2];
  v22[2] = v9;
  v21[3] = @"reasonForStoppingAdv";
  if (a2[60])
  {
    v10 = *(a2 + 14);
  }

  else
  {
    v10 = 3;
  }

  v11 = [NSNumber numberWithInt:v10];
  v22[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];

  v13 = v12;
  AnalyticsSendEventLazy();
  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,submitAdvertiserMetrics, dict:%{private, location:escape_only}@}", buf, 0x1Cu);
  }
}

void sub_100040898(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_1000409A0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100040B40(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100040B80(a1, v10);
    }

    sub_10000509C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_100040BCC(a1, (v6 + v12), a3, v11);
  }
}

void sub_100040B40(uint64_t a1)
{
  if (*a1)
  {
    sub_10000525C(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100040B80(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000050B4(a1, a2);
  }

  sub_10000509C();
}

char *sub_100040BCC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100004CEC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100040C8C(v9);
  return v4;
}

uint64_t sub_100040C8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100040CC4(a1);
  }

  return a1;
}

void sub_100040CC4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_100040D0C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100040D60(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100040D60(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100040DB0(i))
  {
    i -= 440;
  }

  *(a1 + 8) = a2;
}

void sub_100040DB0(uint64_t a1)
{
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v3 = (a1 + 184);
  sub_100005208(&v3);
  v3 = (a1 + 160);
  sub_100005208(&v3);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_100040E48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  while (1)
  {
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v8 == v7)
    {
      v10 = v9 >= 0 ? v5 : *v5;
      v11 = *a3;
      v12 = v6 >= 0 ? a3 : *a3;
      if (!memcmp(v10, v12, v7))
      {
        break;
      }
    }

    v5 += 24;
    if (v5 == a2)
    {
      return 0;
    }
  }

  return 1;
}

__n128 sub_100040F00(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 104) = v6;
  v9 = *(a2 + 19);
  *(a2 + 19) = 0;
  *(a1 + 152) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 25);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 23) = 0;
  v10 = a2[17];
  v12 = a2[14];
  v11 = a2[15];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v10;
  *(a1 + 224) = v12;
  *(a1 + 240) = v11;
  v13 = a2[21];
  v15 = a2[18];
  v14 = a2[19];
  *(a1 + 320) = a2[20];
  *(a1 + 336) = v13;
  *(a1 + 288) = v15;
  *(a1 + 304) = v14;
  v16 = a2[25];
  v18 = a2[22];
  v17 = a2[23];
  *(a1 + 384) = a2[24];
  *(a1 + 400) = v16;
  *(a1 + 352) = v18;
  *(a1 + 368) = v17;
  *(a1 + 208) = a2[13];
  result = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = result;
  *(a2 + 53) = 0;
  *(a2 + 54) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t sub_100040FF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; sub_100040DB0(i))
    {
      i -= 440;
    }
  }

  return a1;
}

uint64_t sub_100041050(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 440;
    sub_100040DB0(v3 - 440);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000410A4(uint64_t a1)
{
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v4 = (a1 + 184);
  sub_100005208(&v4);
  v4 = (a1 + 160);
  sub_100005208(&v4);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100041140(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100040B80(result, a4);
  }

  return result;
}

void sub_1000411A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100005208(&a9);
  _Unwind_Resume(a1);
}

char *sub_1000411C8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100004CEC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100040C8C(v9);
  return v4;
}

uint64_t sub_100041288(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100040898(a1);
  return a1;
}

void sub_10004131C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

unint64_t sub_100041344(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1000416F0(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100041644(a2, a3);
  }

  else
  {
    return sub_10004154C(a2, a3);
  }
}

unint64_t sub_10004154C(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_100041644(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1000416F0(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t sub_1000417B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_100041838(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100023068(result);

    operator delete();
  }

  return result;
}

void sub_100041884(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_10004190C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete();
}

void sub_10004190C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10002A838(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1000419E8()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_100041A9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100041AE8(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_100041B98(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_100041FA4(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100042020(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if (qword_10014A980 != -1)
  {
    dispatch_once(&qword_10014A980, &stru_10013B108);
  }

  v5 = [qword_10014A988 objectForKey:v4];
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sapref,, number:%{public, location:escape_only}@}", &v11, 0x1Cu);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 BOOLValue];
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      LODWORD(v16) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sapref,, val:%{public}d}", &v11, 0x18u);
    }

    *a3 = [v5 BOOLValue];
  }

  return isKindOfClass & 1;
}

void sub_10004221C(id a1)
{
  qword_10014A988 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

void sub_100042264(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (qword_10014A990 != -1)
  {
    dispatch_once(&qword_10014A990, &stru_10013B128);
  }

  v4 = qword_10014A998;
  v5 = [NSNumber numberWithBool:a3];
  [v4 setObject:v5 forKey:v6];
}

void sub_100042324(id a1)
{
  qword_10014A998 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

uint64_t sub_10004236C(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = a2;
  if (qword_10014A9B0 != -1)
  {
    dispatch_once(&qword_10014A9B0, &stru_10013B148);
  }

  v5 = [qword_10014A9B8 objectForKey:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = [v5 intValue];
  }

  return isKindOfClass & 1;
}

void sub_100042430(id a1)
{
  qword_10014A9B8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

uint64_t sub_100042478(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (qword_10014A9C0 != -1)
  {
    dispatch_once(&qword_10014A9C0, &stru_10013B168);
  }

  v5 = [qword_10014A9C8 objectForKey:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    sub_1000060C4(&v8, [v5 UTF8String]);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return isKindOfClass & 1;
}

void sub_100042574(id a1)
{
  qword_10014A9C8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

uint64_t sub_1000425BC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (qword_10014A9D0 != -1)
  {
    dispatch_once(&qword_10014A9D0, &stru_10013B188);
  }

  v5 = [qword_10014A9D8 objectForKey:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v5 doubleValue];
    *a3 = v7;
  }

  return isKindOfClass & 1;
}

void sub_100042680(id a1)
{
  qword_10014A9D8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

void sub_1000426C8(double a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (qword_10014A9E0 != -1)
  {
    dispatch_once(&qword_10014A9E0, &stru_10013B1A8);
  }

  v4 = qword_10014A9E8;
  v5 = [NSNumber numberWithDouble:a1];
  [v4 setObject:v5 forKey:v6];
}

void sub_100042790(id a1)
{
  qword_10014A9E8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

void sub_1000427D8(id a1)
{
  qword_10014A9F8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.safetyalerts"];

  _objc_release_x1();
}

uint64_t *sub_100042820()
{
  if ((atomic_load_explicit(&qword_10014AA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014AA00))
  {
    sub_10004293C();
    __cxa_atexit(sub_1000428B0, &qword_10014AA08, &_mh_execute_header);
    __cxa_guard_release(&qword_10014AA00);
  }

  return &qword_10014AA08;
}

uint64_t sub_1000428B0(uint64_t a1)
{
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

id sub_10004293C()
{
  if (qword_10014A9F0 != -1)
  {
    dispatch_once(&qword_10014A9F0, &stru_10013B1C8);
  }

  qword_10014AA08 = [qword_10014A9F8 dictionaryRepresentation];
  byte_10014AA10 = sub_1000432F0(qword_10014AA08, @"CORE_LOCATION_TEST", 0);
  *&qword_10014AA18 = sub_1000433A0(qword_10014AA08, @"LOCATION_RECHECK_FREQUENCY_SECONDS", 0xE10);
  byte_10014AA20 = sub_1000432F0(qword_10014AA08, @"CORE_TELEPHONY_TEST", 0);
  byte_10014AA21 = sub_1000432F0(qword_10014AA08, @"CLOUD_CHANNEL_TEST", 0);
  byte_10014AA22 = sub_1000432F0(qword_10014AA08, @"CLOUD_CHANNEL_USING_SANDBOX", 0);
  byte_10014AA23 = sub_1000432F0(qword_10014AA08, @"IS_TIMER_SIMULATED", 0);
  byte_10014AA24 = sub_1000432F0(qword_10014AA08, @"IS_ANALYTICS_ENABLED", 1);
  *&qword_10014AA28 = sub_1000433A0(qword_10014AA08, @"LOCAL_CHANNEL_TTL", 0);
  *&qword_10014AA30 = sub_1000433A0(qword_10014AA08, @"CA_METRIC_SUBMISSION_WAIT_TIME_SEC", 0x4B0);
  v0 = sub_100043450(qword_10014AA08, @"ENVIRONMENT_IDENTIFIER", "def");
  sub_1000060C4(&qword_10014AA38, v0);
  byte_10014AA50 = sub_1000432F0(qword_10014AA08, @"IS_ENABLED", 1);
  byte_10014AA51 = sub_1000432F0(qword_10014AA08, @"IS_SPI_TEST", 0);
  byte_10014AA52 = sub_1000432F0(qword_10014AA08, @"IS_NW_REACHABILITY_TEST", 0);
  *&qword_10014AA58 = sub_1000433A0(qword_10014AA08, @"NETWORK_CHANGE_HYSTERESIS_MS", 0x7D0);
  v1 = sub_100043450(qword_10014AA08, @"DEFAULT_CHANNEL", "SkFOMTdfYkRIbi1yT2NDTA==");
  sub_1000060C4(&qword_10014AA60, v1);
  byte_10014AA78 = sub_1000432F0(qword_10014AA08, @"IS_MOBILE_ASSET_SUPPORTED", 1);
  *&qword_10014AA80 = sub_1000433A0(qword_10014AA08, @"ASSET_DOWNLOAD_INTERVAL", 0x93A80);
  byte_10014AA88 = sub_1000432F0(qword_10014AA08, @"IS_MOBILE_ASSET_TEST", 0);
  v2 = sub_100043450(qword_10014AA08, @"MOBILE_ASSET_STARTUP_TEST_FILE", "");
  sub_1000060C4(&qword_10014AA90, v2);
  byte_10014AAA8 = sub_1000432F0(qword_10014AA08, @"IS_MAGNET_MODE_MONITOR_TEST_ENVIRONMENT", 0);
  *&qword_10014AAB0 = sub_1000433A0(qword_10014AA08, @"ENTER_MAGNET_MODE_HYSTERESIS_MS", 0x1D4C0);
  *&qword_10014AAB8 = sub_1000433A0(qword_10014AA08, @"EXIT_MAGNET_MODE_HYSTERESIS_MS", 0xEA60);
  *&qword_10014AAC0 = sub_1000433A0(qword_10014AA08, @"INIT_PENDING_TASK_CLEANUP_TIMER", 0x78);
  *&qword_10014AAC8 = sub_1000433A0(qword_10014AA08, @"ALERT_DELAY_TOLERANCE_SECONDS", 0x15180);
  byte_10014AAD0 = sub_1000432F0(qword_10014AA08, @"IS_ADDL_DETAILS_HI_ENABLED", 1);
  byte_10014AAD1 = sub_1000432F0(qword_10014AA08, @"PULL_SERVICE_TEST", 0);
  byte_10014AAD2 = sub_1000432F0(qword_10014AA08, @"IS_PULL_ON_DEMAND", 1);
  byte_10014AAD3 = sub_1000432F0(qword_10014AA08, @"IS_PULL_METRICS_ON_WEA_ENABLED", 0);
  dword_10014AAD4 = sub_1000433A0(qword_10014AA08, @"PULL_METRICS_CONFIG_PERCENTAGE_OVERRIDE", 0xFFFFFFFFLL);
  byte_10014AAD8 = sub_1000432F0(qword_10014AA08, @"IS_IGNORE_OLD_ALERTS", 1);
  v3 = sub_100043450(qword_10014AA08, @"PULL_SERVER", "");
  sub_1000060C4(&qword_10014AAE0, v3);
  byte_10014AAF8 = sub_1000432F0(qword_10014AA08, @"BATTERY_SERVICE_TEST", 0);
  byte_10014AAF9 = sub_1000432F0(qword_10014AA08, @"WOW_ASSERTION_TEST", 0);
  byte_10014AAFA = sub_1000432F0(qword_10014AA08, @"WOW_ASSERTION_ENABLED", 1);
  *&qword_10014AB00 = sub_1000433A0(qword_10014AA08, @"WOW_ASSERTION_RECHECK_INTERVAL", 0x1C20);
  byte_10014AB08 = sub_1000432F0(qword_10014AA08, @"LOCK_MONITOR_TEST", 0);
  dword_10014AB0C = sub_1000433A0(qword_10014AA08, @"PUSH_METRICS_CONFIG_PERCENTAGE_OVERRIDE", 0xFFFFFFFFLL);
  *&qword_10014AB10 = sub_1000433A0(qword_10014AA08, @"SA_PARTICIPATION_ROLLING_PERIOD", 0x93A80);
  byte_10014AB18 = sub_1000432F0(qword_10014AA08, @"CORE_ROUTINE_TEST", 0);
  byte_10014AB19 = sub_1000432F0(qword_10014AA08, @"BIOME_TEST", 0);
  byte_10014AB1A = sub_1000432F0(qword_10014AA08, @"CORE_MOTION_TEST", 0);
  byte_10014AB1B = sub_1000432F0(qword_10014AA08, @"CORE_WIFI_TEST", 0);
  byte_10014AB1C = sub_1000432F0(qword_10014AA08, @"CFNOTIFICATION_TEST", 0);
  byte_10014AB1D = sub_1000432F0(qword_10014AA08, @"BLE_TRANSPORT_TEST", 0);
  dword_10014AB20 = sub_1000433A0(qword_10014AA08, @"ROLLING_METRICS_SUPPORTED", 0xFFFFFFFFLL);
  dword_10014AB24 = sub_1000433A0(qword_10014AA08, @"ROLLING_METRICS_PERIOD_SECONDS", 0xFFFFFFFFLL);
  dword_10014AB28 = sub_1000432F0(qword_10014AA08, @"ROLLING_METRICS_TRIGGER_WITH_TIMER", 0);
  *&qword_10014AB30 = sub_1000433A0(qword_10014AA08, @"ROLLING_METRICS_ALERT_HISTORY_DURATION_SECONDS", 0x15180);
  *&qword_10014AB38 = sub_1000433A0(qword_10014AA08, @"ROLLING_METRICS_STATE_HISTORY_DURATION_SECONDS", 0x54600);
  *&qword_10014AB40 = sub_1000433A0(qword_10014AA08, @"MANIFEST_DOWNLOAD_TIMEOUT_SECONDS", 0x12C);
  byte_10014AB48 = sub_1000432F0(qword_10014AA08, @"IS_SETTINGS_TEST", 0);
  byte_10014AB49 = sub_1000432F0(qword_10014AA08, @"IS_SA_LIVABILTY_ENABLED", 0);
  dword_10014AB4C = sub_1000433A0(qword_10014AA08, @"EFFICACY_METRIC_PARTICIPATION_PERCENTAGE", 0xFFFFFFFFLL);
  byte_10014AB50 = sub_1000432F0(qword_10014AA08, @"IGNEOUS_TEST_ENABLED", 0);
  dword_10014AB54 = sub_1000433A0(qword_10014AA08, @"BLE_RELAY_SELECTION_METRICS_PERIOD", 0x15180);
  byte_10014AB58 = sub_1000432F0(qword_10014AA08, @"UN_USER_NOTIFICATION_TEST_ENABLED", 0);
  *&qword_10014AB60 = sub_1000433A0(qword_10014AA08, @"CODEBOOK_DOWNLOAD_TIMEOUT_SECONDS", 0x12C);
  *&qword_10014AB68 = sub_1000433A0(qword_10014AA08, @"CODEBOOK_DOWNLOAD_PERIOD_SECONDS", 0xFFFFFFFFLL);
  *&qword_10014AB70 = sub_1000433A0(qword_10014AA08, @"EQ_HISTORY_MANIFEST_DOWNLOAD_PERIOD_SECONDS", 0xFFFFFFFFLL);
  v4 = sub_100043450(qword_10014AA08, @"EQ_HISTORY_MANIFEST_FILE_NAME", "");
  sub_1000060C4(&qword_10014AB78, v4);
  byte_10014AB90 = sub_1000432F0(qword_10014AA08, @"RICH_ALERTS", 0);
  byte_10014AB91 = sub_1000432F0(qword_10014AA08, @"RICH_TEXT", 0);
  byte_10014AB92 = sub_1000432F0(qword_10014AA08, @"RICH_ALERTS_DEMO", 0);
  byte_10014AB93 = sub_1000432F0(qword_10014AA08, @"FORCE_SILENT_NOTIFICATION", 0);
  byte_10014AB94 = sub_1000432F0(qword_10014AA08, @"DISPLAY_EPICENTER", 1);
  byte_10014AB95 = sub_1000432F0(qword_10014AA08, @"STRONG_SHAKING_LINE_SHADE", 1);
  *&qword_10014AB98 = sub_1000433A0(qword_10014AA08, @"UIMETRICS_TIMEOUT_SECONDS", 0x4B0);
  byte_10014ABA0 = sub_1000432F0(qword_10014AA08, @"MAP_TEST", 0);
  byte_10014ABA1 = sub_1000432F0(qword_10014AA08, @"LOG_CACHED_MAP", 0);
  byte_10014ABA2 = sub_1000432F0(qword_10014AA08, @"BYPASS_BLE_SIGN_VALIDATION", 0);
  byte_10014ABA3 = sub_1000432F0(qword_10014AA08, @"BYPASS_PRODUCTION_KEY", 0);
  byte_10014ABA4 = sub_1000432F0(qword_10014AA08, @"COMPANION_MESSENGER_TEST", 0);
  v5 = sub_100043450(qword_10014AA08, @"SENDER_ID_REMAP", "");
  sub_1000060C4(&qword_10014ABA8, v5);
  byte_10014ABC0 = sub_1000432F0(qword_10014AA08, @"BG_USING_DISPATCH", 0);
  byte_10014ABC1 = sub_1000432F0(qword_10014AA08, @"REGULATORY_TEST", 0);
  byte_10014ABC2 = sub_1000432F0(qword_10014AA08, @"BYPASS_DOWNLOAD", 0);
  dword_10014ABC4 = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_DWELLING_DURATION_SECONDS", 0xFFFFFFFFLL);
  dword_10014ABC8 = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_REGION_RADIUS_METERS", 0xFFFFFFFFLL);
  dword_10014ABCC = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_PERIODIC_TRIGGER_INTERVAL_SECONDS", 0xFFFFFFFFLL);
  dword_10014ABD0 = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_MAX_ALLOWED_REGIONS_COUNT", 0xFFFFFFFFLL);
  dword_10014ABD4 = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_EXPIRATION_AGE_SECONDS", 0xFFFFFFFFLL);
  result = sub_1000433A0(qword_10014AA08, @"MAPS_PRECACHE_LOI_LOOKBACK_TIME_SECONDS", 0xFFFFFFFFLL);
  dword_10014ABD8 = result;
  return result;
}

void sub_100043218(_Unwind_Exception *a1)
{
  if (byte_10014AA77 < 0)
  {
    operator delete(qword_10014AA60);
  }

  if (byte_10014AA4F < 0)
  {
    operator delete(qword_10014AA38);
  }

  _Unwind_Resume(a1);
}

id sub_1000432F0(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 objectForKey:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v7 BOOLValue];
      }
    }
  }

  return a3;
}

id sub_1000433A0(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 objectForKey:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v7 intValue];
      }
    }
  }

  return a3;
}

id sub_100043450(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 objectForKey:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v7 UTF8String];
      }
    }
  }

  return a3;
}

void sub_10004377C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289539;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2113;
    v13 = v5;
    v14 = 2113;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,initCallback, servive:%{private, location:escape_only}@, serviceError:%{private, location:escape_only}@}", &v8, 0x26u);
    v7 = SALogObjectGeneral;
  }

  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289283;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sacm,IDS service failed to initialize, serviceError:%{private, location:escape_only}@}", &v8, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,IDS became available so resuming queue}", &v8, 0x12u);
    }

    [*(a1 + 32) setService:v5];
    [*(a1 + 32) beginService];
  }
}

uint64_t sub_100044574(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_10013B220;
  v4 = v3;
  *(a1 + 8) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,created}", v9, 0x12u);
  }

  v6 = [[SACompanionMessengerAdapter alloc] initWithProxy:a1 andQueue:*(a1 + 8)];
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  return a1;
}

void sub_100044694(_Unwind_Exception *a1)
{
  sub_10003197C(v1 + 16);

  _Unwind_Resume(a1);
}

void sub_1000446C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v8 = 0;
    v5 = [v4 sendMessageToWatch:v3 identifier:&v8];
    v6 = v8;
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 1025;
      v14 = v5;
      v15 = 2113;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sacm,pushMessage, result:%{private}hhd, identifier:%{private, location:escape_only}@}", buf, 0x22u);
    }
  }
}

uint64_t sub_1000447EC(uint64_t a1, uint64_t a2)
{
  sub_10004497C(v4, a2);
  sub_100044A14(v4, (a1 + 16));
  return sub_10003197C(v4);
}

void sub_10004485C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t sub_1000448E0(uint64_t a1)
{
  *a1 = off_10013B220;

  sub_10003197C(a1 + 16);
  return a1;
}

void sub_10004493C(uint64_t a1)
{
  sub_1000448E0(a1);

  operator delete();
}

uint64_t sub_10004497C(uint64_t a1, uint64_t a2)
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

void *sub_100044A14(void *result, void *a2)
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

void sub_100044C6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_100044C78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  v10 = *(a3 + 24);
  if (v10)
  {
    if (v10 == a3)
    {
      *(a1 + 176) = a1 + 152;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 152);
      goto LABEL_6;
    }

    v10 = (*(*v10 + 16))(v10);
  }

  *(a1 + 176) = v10;
LABEL_6:
  sub_10000F1DC(a1 + 184, a4);
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 249) = 0;
  sub_100033224(a1 + 256, a5);
  *(a1 + 44) = 257;
  *(a1 + 48) = 256;
  v11 = dispatch_time(0, 60000000000);
  v12 = *a1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100044ECC;
  v14[3] = &unk_1001390D0;
  v14[4] = a1;
  dispatch_after(v11, v12, v14);

  return a1;
}

void sub_100044E58(_Unwind_Exception *a1)
{
  sub_100031918(v6, *(v1 + 136));
  sub_100031918(v5, *(v1 + 112));
  sub_100031918(v4, *(v1 + 88));
  sub_100031918(v3, *(v1 + 64));

  _Unwind_Resume(a1);
}

void sub_100044ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100044F54;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_100044F54(v3);
  objc_autoreleasePoolPop(v2);
}

void sub_100044F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 216) & 1) == 0)
  {
    v2 = SALogObjectWarning;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_100002DB0();
      if (*(v3 + 115))
      {
        v4 = *(v3 + 114);
      }

      else
      {
        v4 = 0;
      }

      if (*(v1 + 41) == 1)
      {
        if (*(v1 + 40))
        {
          v5 = "true";
        }

        else
        {
          v5 = "false";
        }
      }

      else
      {
        v5 = "notSet";
      }

      if (*(v1 + 43) == 1)
      {
        if (*(v1 + 42))
        {
          v6 = "true";
        }

        else
        {
          v6 = "false";
        }
      }

      else
      {
        v6 = "notSet";
      }

      if (*(v1 + 9) == 1)
      {
        if (*(v1 + 8))
        {
          v7 = "true";
        }

        else
        {
          v7 = "false";
        }
      }

      else
      {
        v7 = "notSet";
      }

      v8 = sub_100042820();
      if (*(v1 + 45) == 1)
      {
        if (*(v1 + 44))
        {
          v9 = "true";
        }

        else
        {
          v9 = "false";
        }
      }

      else
      {
        v9 = "notSet";
      }

      if (*(v1 + 47) == 1)
      {
        if (*(v1 + 46))
        {
          v10 = "true";
        }

        else
        {
          v10 = "false";
        }
      }

      else
      {
        v10 = "notSet";
      }

      if (*(v1 + 49) == 1)
      {
        if (*(v1 + 48))
        {
          v11 = "true";
        }

        else
        {
          v11 = "false";
        }
      }

      else
      {
        v11 = "notSet";
      }

      v12 = *(v8 + 112);
      if (*(v1 + 51) == 1)
      {
        if (*(v1 + 50))
        {
          v13 = "true";
        }

        else
        {
          v13 = "false";
        }
      }

      else
      {
        v13 = "notSet";
      }

      v14 = *(v1 + 72);
      v15[0] = 68291843;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = 60;
      v20 = 1026;
      v21 = v4;
      v22 = 2082;
      v23 = v5;
      v24 = 2082;
      v25 = v6;
      v26 = 2082;
      v27 = v7;
      v28 = 1026;
      v29 = v12;
      v30 = 2082;
      v31 = v9;
      v32 = 2082;
      v33 = v10;
      v34 = 2082;
      v35 = v11;
      v36 = 2082;
      v37 = v13;
      v38 = 2049;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#chsel,Safety Alerts init timedout, timeout:%{public}d, countrySupported:%{public}hhd, lsOn:%{public, location:escape_only}s, telephony:%{public, location:escape_only}s, locAvailable:%{public, location:escape_only}s, isMobileAssetEnabled:%{public}hhd, fIsAllowedByNetwork:%{public, location:escape_only}s, channelMapAvailable:%{public, location:escape_only}s, isCompanionNearby:%{public, location:escape_only}s, isParticipating:%{public, location:escape_only}s, channelListSize:%{private}lu}", v15, 0x74u);
    }
  }
}

uint64_t sub_1000451DC(uint64_t a1)
{
  sub_100032850(a1 + 256);
  v3 = (a1 + 224);
  sub_100047040(&v3);
  sub_10000F274(a1 + 184);
  sub_1000323A8(a1 + 152);
  sub_100031918(a1 + 128, *(a1 + 136));
  sub_100031918(a1 + 104, *(a1 + 112));
  sub_100031918(a1 + 80, *(a1 + 88));
  sub_100031918(a1 + 56, *(a1 + 64));

  return a1;
}

void sub_100045268(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onParticipationChange, isParticipating:%{public}hhd}", v5, 0x18u);
  }

  *(a1 + 50) = a2 | 0x100;
  sub_10004534C(a1, 0);
}

void sub_10004534C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v93 = v2;
    v5 = sub_100002DB0();
    v6 = v5[114];
    if (!v5[115])
    {
      v6 = 0;
    }

    v92 = v6;
    if (*(a1 + 41) == 1)
    {
      if (*(a1 + 40))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }
    }

    else
    {
      v7 = "notSet";
    }

    v91 = v7;
    if (*(a1 + 43) == 1)
    {
      if (*(a1 + 42))
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }
    }

    else
    {
      v8 = "notSet";
    }

    v90 = v8;
    if (*(a1 + 9) == 1)
    {
      if (*(a1 + 8))
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }
    }

    else
    {
      v9 = "notSet";
    }

    if (*(a1 + 45) == 1)
    {
      if (*(a1 + 44))
      {
        v10 = "true";
      }

      else
      {
        v10 = "false";
      }
    }

    else
    {
      v10 = "notSet";
    }

    if (*(a1 + 47) == 1)
    {
      if (*(a1 + 46))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }
    }

    else
    {
      v11 = "notSet";
    }

    if (*(a1 + 49) == 1)
    {
      if (*(a1 + 48))
      {
        v2 = "true";
      }

      else
      {
        v2 = "false";
      }
    }

    else
    {
      v2 = "notSet";
    }

    v13 = *(a1 + 224);
    v12 = *(a1 + 232);
    if (*(a1 + 51) == 1)
    {
      if (*(a1 + 50))
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }
    }

    else
    {
      v14 = "notSet";
    }

    v15 = [*SAPlatformInfo::instance(v5) isEqualToString:@"iPhone"];
    v16 = v15;
    v17 = [*SAPlatformInfo::instance(v15) isEqualToString:@"Watch"];
    *buf = 68292099;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v92;
    *&buf[24] = 2082;
    *&buf[26] = v91;
    *&buf[34] = 2082;
    *&buf[36] = v90;
    *v105 = 2082;
    *&v105[2] = v9;
    v106 = 2082;
    v107 = v10;
    v108 = 2082;
    v109 = v11;
    v110 = 2082;
    v111 = v2;
    v112 = 1025;
    v113 = -858993459 * ((v12 - v13) >> 3);
    v114 = 2082;
    v115 = v14;
    v116 = 1025;
    v117 = v16;
    v118 = 1025;
    v119 = v17;
    v120 = 1026;
    LOBYTE(v2) = v93;
    v121 = v93;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,runChannelUpdate,Voters, countrySupported:%{public}hhd, lsOn:%{public, location:escape_only}s, telephony:%{public, location:escape_only}s, locAvailable:%{public, location:escape_only}s, fIsAllowedByNetwork:%{public, location:escape_only}s, channelMapAvailable:%{public, location:escape_only}s, isCompanionNearby:%{public, location:escape_only}s, channelMapsSize:%{private}d, isParticipating:%{public, location:escape_only}s, isPhone:%{private}d, isWatch:%{private}d, forceOrDeferChannelUpdate:%{public}hhd}", buf, 0x76u);
  }

  v18 = (a1 + 56);
  sub_100031918(a1 + 56, *(a1 + 64));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a1 + 64;
  v19 = sub_100002DB0();
  if (*(v19 + 115) == 1 && *(v19 + 114) == 1 && (v20 = sub_100002DB0(), *(v20 + 109) == 1) && *(v20 + 108) == 1 && (v21 = sub_100002DB0(), *(v21 + 107) == 1))
  {
    v22 = *(v21 + 106);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_100002DB0();
  v24 = *(v23 + 111);
  v25 = *(v23 + 110);
  if (*(a1 + 51) == 1)
  {
    v26 = *(a1 + 50);
  }

  else
  {
    v26 = 0;
  }

  v27 = [*SAPlatformInfo::instance(v23) isEqualToString:@"iPhone"];
  v101 = 0;
  v102 = 0;
  v100 = &v101;
  if ((v27 & 1) == 0)
  {
    v38 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v39 = "{msg%{public}.0s:#chsel,updateSAChannels,SA not supported on watch}";
LABEL_66:
    v40 = v38;
    v41 = 18;
LABEL_67:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
    goto LABEL_68;
  }

  v28 = v24 & v25;
  v29 = v22 & v24 & v25 & v26;
  v30 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290306;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v29 & 1;
    *&buf[24] = 1026;
    *&buf[26] = v22 & 1;
    *&buf[30] = 1026;
    *&buf[32] = 1;
    *&buf[36] = 1026;
    *&buf[38] = v28 & 1;
    *&buf[42] = 1026;
    *v105 = v26 & 1;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateSAChannels,state, isSaRegisterPreCheckPass:%{public}hhd, isInCountry:%{public}hhd, requiresTelephony:%{public}hhd, isTelephonySupported:%{public}hhd, isParticipating:%{public}hhd}", buf, 0x30u);
  }

  if ((v29 & 1) == 0)
  {
    v38 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v39 = "{msg%{public}.0s:#chsel,updateSAChannels,precondition failed}";
    goto LABEL_66;
  }

  if (sub_100042820()[14])
  {
    v94 = v2;
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    v33 = *(a1 + 32);
    v34 = *(a1 + 224);
    v35 = *(a1 + 232);
    memset(__dst, 0, 24);
    if (v34 != v35)
    {
      v36 = 0;
      while (1)
      {
        v37 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = v36;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannelFromMap, index:%{public}d}", buf, 0x18u);
        }

        __str.__r_.__value_.__r.__words[0] = 0xBFF0000000000000;
        if (SAGeometry::isCircleInGeometry(*v34, v31, v32, v33, &__str))
        {
          break;
        }

        ++v36;
        v34 += 40;
        if (v34 == v35)
        {
          goto LABEL_184;
        }
      }

      std::string::operator=(__dst, (v34 + 16));
      *&__dst[24] = 0;
      v87 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v88 = __dst;
        if (__dst[23] < 0)
        {
          v88 = *__dst;
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v88;
        *&buf[28] = 2050;
        *&buf[30] = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannelFromMap, channelId:%{private, location:escape_only}s, channelType:%{public}lu}", buf, 0x26u);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        sub_100004CEC(buf, *__dst, *&__dst[8]);
      }

      else
      {
        *buf = *__dst;
        *&buf[16] = *&__dst[16];
      }

      *&buf[24] = *&__dst[24];
      sub_100047118(&v100, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }
    }

LABEL_184:
    v89 = SALogObjectGeneral;
    LOBYTE(v2) = v94;
    v18 = (a1 + 56);
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v102;
      v39 = "{msg%{public}.0s:#chsel,ch, channelListSize:%{public}lu}";
      v40 = v89;
      v41 = 28;
      goto LABEL_67;
    }
  }

  else
  {
    v74 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,runChannelUpdate,assetNotEnabled,pickDefault}", buf, 0x12u);
    }

    v75 = sub_100042820();
    if (*(v75 + 111) < 0)
    {
      sub_100004CEC(buf, v75[11], v75[12]);
    }

    else
    {
      *buf = *(v75 + 11);
      *&buf[16] = v75[13];
    }

    *&buf[24] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_100004CEC(__dst, *buf, *&buf[8]);
      v84 = *&buf[24];
    }

    else
    {
      v84 = 0;
      *__dst = *buf;
      *&__dst[16] = *&buf[16];
    }

    *&__dst[24] = v84;
    sub_100047118(&v100, __dst);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    v85 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(a1 + 72);
      *__dst = 68289282;
      *&__dst[8] = 2082;
      *&__dst[10] = "";
      *&__dst[18] = 2050;
      *&__dst[20] = v86;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,ch, channelListSize,MA,:%{public}lu}", __dst, 0x1Cu);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_68:
  sub_100031890(v18, v100, &v101);
  if ((a1 + 80) != &v100)
  {
    sub_10003333C((a1 + 80), v100, &v101);
  }

  v42 = sub_100002DB0();
  if (*(v42 + 115) == 1 && *(v42 + 114) == 1 && *(a1 + 41) == 1 && *(a1 + 40) == 1 && *(a1 + 9) == 1)
  {
    v43 = *(a1 + 8) ^ 1;
  }

  else
  {
    v43 = 1;
  }

  if (*(a1 + 49) == 1)
  {
    v44 = *(a1 + 48);
  }

  else
  {
    v44 = 0;
  }

  v45 = [*SAPlatformInfo::instance(v42) isEqualToString:@"iPhone"];
  v46 = v45;
  v47 = [*SAPlatformInfo::instance(v45) isEqualToString:@"Watch"];
  if (v43 & 1 | ((v47 & 1) == 0) | v44 & 1)
  {
    v48 = 0;
  }

  else
  {
    v47 = sub_10004690C(a1);
    v48 = v47;
  }

  if (v43 & 1 | ((v46 & 1) == 0) | v44 & 1)
  {
    v49 = 0;
  }

  else
  {
    v47 = sub_10004690C(a1);
    v49 = v47;
  }

  v50 = *(SAPlatformInfo::instance(v47) + 9);
  v51 = sub_100092734(a1 + 248, (a1 + 16));
  if (*(a1 + 216) == 1)
  {
    v52 = v51;
    v53 = +[SAEDFollowUpManager sharedInstance];
    [v53 setSAEWEnabledState:v52 & (v48 | v49)];
  }

  v54 = v50 & (v48 | v49);
  *(sub_100002DB0() + 63) = (v49 | v48) & 1 | 0x100;
  v55 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    v57 = sub_10004690C(a1);
    *buf = 68290050;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v48;
    *&buf[24] = 1026;
    *&buf[26] = v49;
    *&buf[30] = 1026;
    *&buf[32] = v54 & 1;
    *&buf[36] = 1026;
    *&buf[38] = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateIgneousChannels,state, registerIgneousOnWatch:%{public}hhd, registerIgneousOnPhone:%{public}hhd, registerLivability:%{public}hhd, isSAEWEnabled:%{public}hhd}", buf, 0x2Au);
  }

  v98 = 0;
  v99 = 0;
  v97 = &v98;
  if ((v49 | v48))
  {
    sub_1000917A8(a1 + 248, (a1 + 16), &v97);
    if (v54)
    {
      sub_100092130(a1 + 248, (a1 + 16), &v97);
    }
  }

  else
  {
    v58 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateIgneousChannels,one of preconditions failed for ingneous}", buf, 0x12u);
    }
  }

  sub_100031890(v18, v97, &v98);
  if ((a1 + 104) != &v97)
  {
    sub_10003333C((a1 + 104), v97, &v98);
  }

  if (*(a1 + 280))
  {
    v59 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,fOnBLERelayUpdateCB}", buf, 0x12u);
    }

    v60 = sub_10004690C(a1);
    sub_100030FB0(a1 + 256, v60, *(a1 + 120) != 0);
  }

  v61 = sub_100002DB0();
  if (*(v61 + 115) == 1 && *(v61 + 114) == 1 && *(a1 + 41) == 1 && *(a1 + 40) == 1 && *(a1 + 9) == 1)
  {
    v62 = *(a1 + 8) ^ 1;
  }

  else
  {
    v62 = 1;
  }

  if (*(a1 + 43) == 1)
  {
    v63 = *(a1 + 42) ^ 1;
  }

  else
  {
    v63 = 1;
  }

  v64 = SAPlatformInfo::instance(v61);
  if (v62 & 1 | ((*(v64 + 9) & 1) == 0) | v63 & 1)
  {
    isLivabiltyEnabled = 0;
  }

  else
  {
    isLivabiltyEnabled = SACommonUtils::isLivabiltyEnabled(v64);
  }

  v66 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = isLivabiltyEnabled;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateLivabilityChannels,state, registerLivability:%{public}hhd}", buf, 0x18u);
  }

  v96[0] = 0;
  v96[1] = 0;
  v95 = v96;
  if (isLivabiltyEnabled)
  {
    v67 = sub_10008E020();
    sub_10008F39C(v67, &__str);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v69 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v70 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        p_str = __str.__r_.__value_.__r.__words[0];
        if (v69 >= 0)
        {
          p_str = &__str;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = p_str;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel, livabiltyChannel:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      memset(buf, 0, 24);
      std::string::operator=(buf, &__str);
      *&buf[24] = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        sub_100004CEC(__dst, *buf, *&buf[8]);
        v72 = *&buf[24];
      }

      else
      {
        v72 = 0;
        *__dst = *buf;
        *&__dst[16] = *&buf[16];
      }

      *&__dst[24] = v72;
      sub_100047118(&v95, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      LOBYTE(v69) = *(&__str.__r_.__value_.__s + 23);
    }

    if ((v69 & 0x80) != 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v73 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateLivabilityChannels,precondition failed}", buf, 0x12u);
    }
  }

  sub_100031890(v18, v95, v96);
  if ((a1 + 128) != &v95)
  {
    sub_10003333C((a1 + 128), v95, v96);
  }

  v76 = *(a1 + 176);
  if (v76)
  {
    buf[0] = v2;
    (*(*v76 + 48))(v76, v18, buf);
  }

  if ((*(a1 + 216) & 1) == 0)
  {
    if (*(a1 + 41) == 1)
    {
      if (*(a1 + 40) != 1)
      {
        v79 = 0;
        v77 = 1;
LABEL_152:
        if (*(sub_100042820() + 112) == 1)
        {
          v80 = *(a1 + 47) ^ 1;
        }

        else
        {
          v80 = 0;
        }

        if (*(a1 + 41) == 1 && !(v79 & 1 | ((*(a1 + 43) & v77 & 1) == 0) | v80 & 1) && *(a1 + 45) == 1)
        {
          v81 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,initComplete}", buf, 0x12u);
          }

          *(a1 + 216) = 1;
          v82 = +[SAEDFollowUpManager sharedInstance];
          [v82 setSAEWEnabledState:v99 != 0];

          v83 = *(a1 + 208);
          if (v83)
          {
            (*(*v83 + 48))(v83);
          }
        }

        goto LABEL_162;
      }

      v77 = *(a1 + 9);
      v78 = sub_100002DB0();
      if (*(v78 + 115) == 1)
      {
        v79 = *(v78 + 114) ^ 1;
        goto LABEL_152;
      }
    }

    else
    {
      v77 = 0;
    }

    v79 = 1;
    goto LABEL_152;
  }

LABEL_162:
  sub_100031918(&v95, v96[0]);
  sub_100031918(&v97, v98);
  sub_100031918(&v100, v101);
}

void sub_100046420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, char *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 153) < 0)
  {
    operator delete(*(v35 - 176));
  }

  sub_100031918(&a21, a22);
  _Unwind_Resume(a1);
}

void sub_100046554(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4, double a5)
{
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289795;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2053;
    v14 = a2;
    v15 = 2053;
    v16 = a3;
    v17 = 2049;
    v18 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onLocationChanged, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, unc:%{private}0.2f}", v10, 0x30u);
  }

  *(a1 + 16) = CLLocationCoordinate2DMake(a2, a3);
  *(a1 + 32) = a5;
  *(a1 + 8) = 257;
  sub_10004534C(a1, 0);
}

void sub_100046670(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onLocationAuthorized, isAuthorized:%{public}hhd}", v5, 0x18u);
  }

  *(a1 + 40) = a2 | 0x100;
  if ((a2 & 1) == 0)
  {
    *(a1 + 8) = 256;
    *(a1 + 16) = kCLLocationCoordinate2DInvalid;
    *(a1 + 32) = 0xBFF0000000000000;
  }

  sub_10004534C(a1, 1);
}

void sub_100046778(uint64_t a1, int a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 1026;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onInexpensiveNetworkConnected, isConnected:%{public}hhd}", v4, 0x18u);
  }
}

__int128 *sub_10004683C(uint64_t a1, int a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onCellNetworkConnected, isConnected:%{public}hhd}", v5, 0x18u);
  }

  result = sub_100002DB0();
  *(result + 64) = a2 | 0x100;
  return result;
}

uint64_t sub_10004690C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 249);
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = v3;
    v10 = 1026;
    v11 = 1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,isFeatureEnabled,, fIsEnhanceDeliverySwitchEnabled,:%{public}hhd, ffEnabled,:%{public}hhd}", v5, 0x1Eu);
  }

  return *(a1 + 249);
}

void sub_1000469E4(uint64_t a1)
{
  v4 = *(a1 + 224);
  v3 = *(a1 + 232);
  v2 = (a1 + 224);
  while (v3 != v4)
  {
    v3 -= 40;
    sub_1000470C4(v3);
  }

  *(a1 + 232) = v4;
  *(a1 + 46) = 256;
  v5 = sub_10008E020();
  sub_1000903A0(v5, v2);
  v7 = *(a1 + 224);
  v6 = *(a1 + 232);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    *(a1 + 46) = 257;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289282;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = -858993459 * (v8 >> 3);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onAssetReceived, geoChannelMapsSize:%{public}d}", v12, 0x18u);
  }

  v10 = sub_100002DB0();
  if (*(a1 + 47) == 1)
  {
    v11 = *(a1 + 46);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 59) = v11 & 1 | 0x100;
  sub_10004534C(a1, 0);
}

void sub_100046B44(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onTelephonySupport, isSupported:%{public}hhd}", v5, 0x18u);
  }

  *(a1 + 42) = a2 | 0x100;
  sub_10004534C(a1, 0);
}

void sub_100046C28(SAPlatformInfo *a1, __int16 a2)
{
  if ([*SAPlatformInfo::instance(a1) isEqualToString:@"Watch"])
  {
    *(a1 + 24) = a2 | 0x100;

    sub_10004534C(a1, 0);
  }
}

void sub_100046C90(uint64_t a1, uint64_t *a2)
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

void sub_100046CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100046CF8(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,onEnhancedDeliveryEnabled,, isEnabled,:%{public}hhd}", v5, 0x18u);
  }

  *(a1 + 249) = a2;
  sub_10004534C(a1, 1);
}

void sub_100046DD8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_100002DB0();
  if (*(v4 + 115) == 1 && *(v4 + 114) == 1 && *(a1 + 41) == 1 && *(a1 + 40) == 1 && *(a1 + 9) == 1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 1;
  if (*(a1 + 49) == 1)
  {
    v7 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*SAPlatformInfo::instance(v4) isEqualToString:@"iPhone"];
  v9 = v8;
  v10 = [*SAPlatformInfo::instance(v8) isEqualToString:@"Watch"];
  v11 = 0;
  *a2 = sub_100092734(a1 + 248, (a1 + 16));
  if (v6 && v10 && (v7 & 1) == 0)
  {
    v11 = sub_10004690C(a1);
  }

  v12 = 0;
  if ((v9 & v6) == 1 && (v7 & 1) == 0)
  {
    v12 = sub_10004690C(a1);
  }

  if (*a2 == 1)
  {
    v13 = v12 | v11;
  }

  else
  {
    v13 = 0;
  }

  a2[4] = v13 & 1;
  a2[1] = v6;
  a2[3] = v7 & 1;
  a2[2] = sub_10004690C(a1);
  v14 = sub_100002DB0();
  a2[5] = *(v14 + 131) & *(v14 + 130);
  v15 = sub_100002DB0();
  a2[6] = *(v15 + 137) & *(v15 + 136);
  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a2[4];
    v18 = a2[1];
    v19 = a2[3];
    v20 = a2[2];
    v21 = *a2;
    v22 = a2[5];
    v23[0] = 68290819;
    v23[1] = 0;
    v24 = 2082;
    v25 = "";
    v26 = 1025;
    v27 = v17;
    v28 = 1025;
    v29 = v18;
    v30 = 1025;
    v31 = v19;
    v32 = 1025;
    v33 = v20;
    v34 = 1025;
    v35 = v21;
    v36 = 1025;
    v37 = v6;
    v38 = 1025;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getIgneousStateParameters,state, isEnabled:%{private}hhd, inSupportedCountry:%{private}hhd, isInMagnetMode:%{private}hhd, isUserOptedIn:%{private}hhd, inCoverageRegion:%{private}hhd, isInCountry:%{private}hhd, emergencyAlert:%{private}hhd}", v23, 0x3Cu);
  }
}

void sub_100047040(void ***a1)
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
        v4 -= 40;
        sub_1000470C4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000470C4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10002A838(v2);
  }
}

void *sub_100047118(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100031708(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1000471C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = off_10013B270;
  a1[1] = a3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_10000532C((a1 + 5), a4);
  a1[9] = 0;
  sub_10000532C(v8, (a1 + 5));
  sub_100062358(v7);
}

void sub_1000472FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  sub_1000052AC(&a10);
  v13 = *(v11 + 72);
  *(v11 + 72) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_1000052AC(v11 + 40);
  sub_100005208(&a9);

  _Unwind_Resume(a1);
}

void sub_100047370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALogObjectGeneral;
  if (v3)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      SACommonUtils::getAnyCmam(v3, __p);
      v6 = v18 >= 0 ? __p : __p[0];
      *buf = 68289283;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2081;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,onAlertReceived,cleanupPullsInProgress, cmam:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = v8;
    v10 = v3;
    if (v7 != v8)
    {
      while (!SACommonUtils::isHashMatch(v7, v10))
      {
        v7 += 24;
        if (v7 == v8)
        {
          goto LABEL_34;
        }
      }

      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v7 + 23) >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *v7;
        }

        *buf = 68289283;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2081;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,onAlertReceived,clearingPullHash, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
      }
    }

    if (v7 != v8)
    {
      v13 = v7 + 24;
      if (v7 + 24 == v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = v7;
        do
        {
          if (SACommonUtils::isHashMatch(v13, v10))
          {
            v14 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v13 + 23) >= 0)
              {
                v15 = v13;
              }

              else
              {
                v15 = *v13;
              }

              *buf = 68289283;
              v20 = 0;
              v21 = 2082;
              v22 = "";
              v23 = 2081;
              v24 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,onAlertReceived,clearingPullHash, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
            }
          }

          else
          {
            if (*(v9 + 23) < 0)
            {
              operator delete(*v9);
            }

            v16 = *v13;
            *(v9 + 16) = *(v13 + 16);
            *v9 = v16;
            v9 += 24;
            *(v13 + 23) = 0;
            *v13 = 0;
          }

          v13 += 24;
        }

        while (v13 != v8);
      }
    }

LABEL_34:

    sub_1000476E0(a1 + 16, v9, *(a1 + 24));
  }

  else if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,#warning,onAlertReceived,dictionaryIsNil}", buf, 0x12u);
  }
}

uint64_t sub_1000476E0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_100047E20(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        v7 -= 3;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_100047768(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      return;
    }

    v2 = a1 + 16;
    v3 = *(a1 + 16);
    v4 = (a1 + 24);
    v5 = *(a1 + 24);
    sub_100004CEC(__p, *a2, v6);
  }

  else
  {
    if (!*(a2 + 23))
    {
      return;
    }

    v2 = a1 + 16;
    v3 = *(a1 + 16);
    v4 = (a1 + 24);
    v5 = *(a1 + 24);
    *__p = *a2;
    v30 = *(a2 + 16);
  }

  if (v3 != v5)
  {
    if (v30 >= 0)
    {
      v7 = HIBYTE(v30);
    }

    else
    {
      v7 = __p[1];
    }

    if (v30 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    while (1)
    {
      v9 = *(v3 + 23);
      v10 = v9;
      v11 = v3;
      if ((v9 & 0x8000000000000000) != 0)
      {
        v11 = *v3;
        v10 = *(v3 + 8);
      }

      v12 = (v7 >= v10 ? v10 : v7);
      v13 = memcmp(v11, v8, v12);
      if (v7 == v10 && v13 == 0)
      {
        break;
      }

      v3 += 24;
      if (v3 == v5)
      {
        goto LABEL_54;
      }
    }

    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v3;
      if ((v9 & 0x80000000) == 0)
      {
        v16 = v3;
      }

      *buf = 68289283;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,onAlertPullFailed,clearingPullHash, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  if (v3 == v5)
  {
LABEL_54:
    v3 = v5;
  }

  else
  {
    for (i = (v3 + 24); i != v5; i += 3)
    {
      v18 = *(i + 23);
      v19 = v18;
      v20 = i;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v20 = *i;
        v19 = i[1];
      }

      if (v30 >= 0)
      {
        v21 = HIBYTE(v30);
      }

      else
      {
        v21 = __p[1];
      }

      if (v30 >= 0)
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
      if (v21 == v19 && v24 == 0)
      {
        v27 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *i;
          if ((v18 & 0x80000000) == 0)
          {
            v28 = i;
          }

          *buf = 68289283;
          v32 = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2081;
          v36 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,onAlertPullFailed,clearingPullHash, hash:%{private, location:escape_only}s}", buf, 0x1Cu);
        }
      }

      else
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v26 = *i;
        *(v3 + 16) = i[2];
        *v3 = v26;
        v3 += 24;
        *(i + 23) = 0;
        *i = 0;
      }
    }
  }

  sub_1000476E0(v2, v3, *v4);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL sub_100047A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!result)
    {
      return result;
    }

    v25 = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v11 = "{msg%{public}.0s:#pull,#warning,notPulling,hashIsEmpty}";
    v12 = v6;
    v13 = 18;
    goto LABEL_40;
  }

  if (result)
  {
    v8 = *a2;
    if (v4 >= 0)
    {
      v8 = a2;
    }

    v25 = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#pull, hash:%{private, location:escape_only}s}", &v25, 0x1Cu);
  }

  if (sub_100033D18(*(a1 + 8), a2))
  {
    v9 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v25 = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30 = v10;
    v11 = "{msg%{public}.0s:#pull,#warning,notPulling,saAlreadyFound, hash:%{private, location:escape_only}s}";
LABEL_39:
    v12 = v9;
    v13 = 28;
LABEL_40:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v25, v13);
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v14 != v15)
  {
    v16 = *(a2 + 23);
    if (v16 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    if (v16 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    while (1)
    {
      v19 = *(v14 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v14 + 8);
      }

      if (v19 == v17)
      {
        v21 = v20 >= 0 ? v14 : *v14;
        if (!memcmp(v21, v18, v17))
        {
          break;
        }
      }

      v14 += 24;
      if (v14 == v15)
      {
        goto LABEL_41;
      }
    }
  }

  if (v14 != v15)
  {
    v9 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    v25 = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30 = v22;
    v11 = "{msg%{public}.0s:#pull,#warning,notPulling,alreadyInProgress, hash:%{private, location:escape_only}s}";
    goto LABEL_39;
  }

LABEL_41:
  v23 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    v25 = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2081;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pull,pullTriggered, hash:%{private, location:escape_only}s}", &v25, 0x1Cu);
  }

  sub_1000048B8((a1 + 16), a2);
  (*(**(a1 + 72) + 16))(*(a1 + 72), a2);
  return 1;
}

void sub_100047DE8(uint64_t a1)
{
  sub_100047E94(a1);

  operator delete();
}

__int128 *sub_100047E20(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100047E94(uint64_t a1)
{
  *a1 = off_10013B270;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1000052AC(a1 + 40);
  v4 = (a1 + 16);
  sub_100005208(&v4);
  return a1;
}

uint64_t sub_100047F24(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,initializing}", v4, 0x12u);
  }

  return a1;
}

uint64_t sub_100047FE0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,destructor}", v4, 0x12u);
  }

  return a1;
}

void sub_10004809C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    *v17 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,onBleAlertReceived}", buf, 0x12u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 320);
    *buf = 68289538;
    *&buf[4] = 0;
    v16 = 2082;
    *v17 = "";
    *&v17[8] = 2050;
    *v18 = Current;
    *&v18[8] = 2050;
    *&v18[10] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,onBleAlertReceived, nowSeconds:%{public}0.7f, bleAdvertiseTime:%{public}0.7f}", buf, 0x26u);
  }

  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *v19 = 0u;
  *v20 = 0u;
  v21 = 0u;
  *v22 = 0u;
  *v23 = 0u;
  v24 = 0u;
  memset(__p, 0, sizeof(__p));
  *buf = Current;
  LOBYTE(v16) = *(a3 + 1);
  v8 = sub_100002DB0();
  v9 = *(a3 + 8);
  *&v17[2] = *(v8 + 20);
  *&v17[6] = v9;
  *v18 = *(a3 + 4);
  std::string::operator=(&v20[1], (a2 + 152));
  std::string::operator=(v19, (a2 + 8));
  if (SHIBYTE(v23[0]) < 0)
  {
    v22[1] = 9;
    v10 = v22[0];
  }

  else
  {
    v10 = v22;
    HIBYTE(v23[0]) = 9;
  }

  strcpy(v10, "Recipient");
  if (SHIBYTE(v24) < 0)
  {
    *&v24 = 3;
    v11 = v23[1];
  }

  else
  {
    v11 = &v23[1];
    HIBYTE(v24) = 3;
  }

  *v11 = 6646850;
  if ((__p[23] & 0x80000000) != 0)
  {
    *&__p[8] = 10;
    v12 = *__p;
  }

  else
  {
    v12 = __p;
    __p[23] = 10;
  }

  strcpy(v12, "Advertiser");
  v26 = *(a2 + 316);
  v27 = 1;
  v28 = v26;
  v29 = 1;
  v13 = *(a2 + 192);
  v13.f64[1] = *(a2 + 320);
  *&v18[4] = vmulq_f64(vsubq_f64(vdupq_lane_s64(Current, 0), v13), vdupq_n_s64(0x408F400000000000uLL));
  v32 = sub_1000483F0();
  sub_100048464(buf);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_1000483D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000483F0()
{
  sub_100017378(v3);
  v0 = sub_10008E020();
  sub_10008FEA0(v0, v3);
  v1 = v4;
  sub_100017590(&v6);
  sub_100017590(&v5);
  return v1;
}

void sub_100048444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_100017590(va1);
  sub_100017590(va);
  _Unwind_Resume(a1);
}

void sub_100048464(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,submitMetrics}", buf, 0x12u);
  }

  AnalyticsSendEventLazy();
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = a1 + 40;
    v4 = v6;
    v7 = *(v5 - 32);
    if (*(v5 + 121))
    {
      v8 = *(v5 + 120);
    }

    else
    {
      v8 = 0;
    }

    v10 = *(v5 - 28);
    v9 = *(v5 - 24);
    v11 = *(v5 - 20);
    v12 = *(v5 + 160);
    if (*(v5 + 128))
    {
      v13 = *(v5 + 124);
    }

    else
    {
      v13 = 0;
    }

    if (*(v5 + 136))
    {
      v14 = *(v5 + 132);
    }

    else
    {
      v14 = 0;
    }

    if (*(v5 + 152))
    {
      v15 = *(v5 + 144);
    }

    else
    {
      v15 = 0;
    }

    v17 = *(v5 - 16);
    v16 = *(v5 - 8);
    if (*(v5 + 23) >= 0)
    {
      v4 = v5;
    }

    if (*(v5 + 47) >= 0)
    {
      v18 = v5 + 24;
    }

    else
    {
      v18 = *(v5 + 24);
    }

    if (*(v5 + 71) >= 0)
    {
      v19 = v5 + 48;
    }

    else
    {
      v19 = *(v5 + 48);
    }

    if (*(v5 + 95) >= 0)
    {
      v20 = v5 + 72;
    }

    else
    {
      v20 = *(v5 + 72);
    }

    v21 = *(v5 + 119);
    v24 = *(v5 + 96);
    v23 = v5 + 96;
    v22 = v24;
    if (v21 >= 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    *buf = 68293123;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 1025;
    v31 = v7;
    v32 = 1025;
    v33 = v8;
    v34 = 1025;
    v35 = v10;
    v36 = 1025;
    v37 = v9;
    v38 = 1025;
    v39 = v11;
    v40 = 1025;
    v41 = v12;
    v42 = 1025;
    v43 = v13;
    v44 = 1025;
    v45 = v14;
    v46 = 2049;
    v47 = v15;
    v48 = 2049;
    v49 = v16;
    v50 = 2049;
    v51 = v17;
    v52 = 2081;
    v53 = v4;
    v54 = 2081;
    v55 = v18;
    v56 = 2081;
    v57 = v19;
    v58 = 2081;
    v59 = v20;
    v60 = 2081;
    v61 = v25;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:brm,submitMetrics, isBleAdvertiser:%{private}hhd, wasSAReceived:%{private}hhd, batteryChargeLevel:%{private}d, bleRelayFanOutSetting:%{private}d, meanNumNearbyDevices:%{private}d, bleRelayAdvertiseDuration:%{private}d, bleReceivedRSSI:%{private}d, bleReceivedRSSIBucketed:%{private}d, bleLatencyRelativeToSATime:%{private}0.2f, latencyRelativeToBleAdvertiseTime:%{private}0.2f, latencyRelativeToOriginatorTime:%{private}0.2f, alertUID:%{private, location:escape_only}s, bleAlertUID:%{private, location:escape_only}s, deviceRole:%{private, location:escape_only}s, pushInterface:%{private, location:escape_only}s, source:%{private, location:escape_only}s}", buf, 0x92u);
  }
}

uint64_t sub_10004871C(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

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
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_100048790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    *v17 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#brm,onBleAlertSent}", buf, 0x12u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  *v20 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v23 = 0u;
  *v24 = 0u;
  v25 = 0u;
  memset(__p, 0, sizeof(__p));
  LOBYTE(v16) = *(a3 + 1);
  v7 = sub_100002DB0();
  v8 = *(a3 + 8);
  *&v17[2] = *(v7 + 20);
  *&v17[6] = v8;
  v18 = *(a3 + 4);
  std::string::operator=(&v21[1], (a2 + 152));
  std::string::operator=(v20, (a2 + 8));
  if (SHIBYTE(v24[0]) < 0)
  {
    v23[1] = 10;
    v9 = v23[0];
  }

  else
  {
    v9 = v23;
    HIBYTE(v24[0]) = 10;
  }

  strcpy(v9, "Advertiser");
  if ((__p[23] & 0x80000000) != 0)
  {
    *&__p[8] = 4;
    v10 = *__p;
  }

  else
  {
    v10 = __p;
    __p[23] = 4;
  }

  strcpy(v10, "APNS");
  v19 = (Current - *(a2 + 192)) * 1000.0;
  *&__p[24] = 257;
  v33 = sub_1000483F0();
  v11 = *(a2 + 352);
  if (v11 == 2)
  {
    v12 = 1;
    goto LABEL_13;
  }

  if (v11 == 1)
  {
    v12 = 2;
LABEL_13:
    v13 = v12;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:
  sub_10004A044(&v13, &v24[1]);
  sub_100048464(buf);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_100048A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004871C(va);
  _Unwind_Resume(a1);
}

id sub_100048A44(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [NSNumber numberWithBool:*(*(a1 + 32) + 8)];
  [v2 setObject:v3 forKeyedSubscript:@"isBleAdvertiser"];

  v4 = [NSNumber numberWithInt:*(*(a1 + 32) + 12)];
  [v2 setObject:v4 forKeyedSubscript:@"batteryChargeLevel"];

  v5 = [NSNumber numberWithInt:*(*(a1 + 32) + 16)];
  [v2 setObject:v5 forKeyedSubscript:@"bleRelayFanOutSetting"];

  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 20)];
  [v2 setObject:v6 forKeyedSubscript:@"meanNumNearbyDevices"];

  v7 = [NSNumber numberWithDouble:*(*(a1 + 32) + 32)];
  [v2 setObject:v7 forKeyedSubscript:@"latencyRelativeToBleAdvertiseTime"];

  v8 = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  [v2 setObject:v8 forKeyedSubscript:@"latencyRelativeToOriginatorTime"];

  v9 = *(a1 + 32);
  v10 = (v9 + 40);
  if (*(v9 + 63) < 0)
  {
    v10 = *v10;
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v2 setObject:v11 forKeyedSubscript:@"alertUID"];

  v12 = *(a1 + 32);
  v13 = (v12 + 64);
  if (*(v12 + 87) < 0)
  {
    v13 = *v13;
  }

  v14 = [NSString stringWithUTF8String:v13];
  [v2 setObject:v14 forKeyedSubscript:@"bleAlertUID"];

  v15 = *(a1 + 32);
  v16 = (v15 + 88);
  if (*(v15 + 111) < 0)
  {
    v16 = *v16;
  }

  v17 = [NSString stringWithUTF8String:v16];
  [v2 setObject:v17 forKeyedSubscript:@"deviceRole"];

  v18 = *(a1 + 32);
  v19 = (v18 + 112);
  if (*(v18 + 135) < 0)
  {
    v19 = *v19;
  }

  v20 = [NSString stringWithUTF8String:v19];
  [v2 setObject:v20 forKeyedSubscript:@"pushInterface"];

  v21 = *(a1 + 32);
  v22 = (v21 + 136);
  if (*(v21 + 159) < 0)
  {
    v22 = *v22;
  }

  v23 = [NSString stringWithUTF8String:v22];
  [v2 setObject:v23 forKeyedSubscript:@"source"];

  v24 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 200)];
  [v2 setObject:v24 forKeyedSubscript:@"bleRelayAdvertiseDuration"];

  v25 = *(a1 + 32);
  if (*(v25 + 161) == 1)
  {
    v26 = [NSNumber numberWithBool:*(v25 + 160)];
    [v2 setObject:v26 forKeyedSubscript:@"wasSAReceived"];

    v25 = *(a1 + 32);
  }

  if (*(v25 + 168) == 1)
  {
    v27 = [NSNumber numberWithInt:*(v25 + 164)];
    [v2 setObject:v27 forKeyedSubscript:@"bleReceivedRSSI"];

    v25 = *(a1 + 32);
  }

  if (*(v25 + 176) == 1)
  {
    v28 = [NSNumber numberWithInt:*(v25 + 172)];
    [v2 setObject:v28 forKeyedSubscript:@"bleReceivedRSSIBucketed"];

    v25 = *(a1 + 32);
  }

  if (*(v25 + 192) == 1)
  {
    v29 = [NSNumber numberWithDouble:*(v25 + 184)];
    [v2 setObject:v29 forKeyedSubscript:@"bleLatencyRelativeToSATime"];
  }

  return v2;
}

uint64_t sub_100048E64(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6, double a7)
{
  v13 = a2;
  *(a1 + 16) = 0;
  *a1 = &off_10013B2A0;
  *(a1 + 8) = v13;
  v14 = v13;
  v16 = *a4;
  v15 = a4[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 72) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_1000060C4((a1 + 128), "None");
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_1000060C4((a1 + 200), "NotAvailable");
  sub_1000060C4((a1 + 224), "Unknown");
  sub_1000060C4((a1 + 248), "Unknown");
  sub_1000060C4((a1 + 272), "Unknown");
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = -1;
  *(a1 + 349) = 0x1000000000000;
  *(a1 + 357) = 1;
  *(a1 + 358) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = xmmword_1000E09D0;
  v20 = *a6;
  v19 = a6[1];
  *(a1 + 432) = a7;
  *(a1 + 440) = v20;
  *(a1 + 448) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 68289026;
    v23[1] = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,initialized}", v23, 0x12u);
  }

  return a1;
}

uint64_t sub_100049188(uint64_t a1)
{
  *a1 = &off_10013B2A0;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,released}", v8, 0x12u);
  }

  v3 = *(a1 + 448);
  if (v3)
  {
    sub_10002A838(v3);
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_10002A838(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_10002A838(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    sub_10002A838(v6);
  }

  return a1;
}

void sub_100049344(uint64_t a1)
{
  sub_100049188(a1);

  operator delete();
}

void sub_10004937C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    *(a1 + 16) = 1;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,#warning,prepare,invalidCallback}", v3, 0x12u);
    }
  }
}

void sub_100049444(uint64_t a1, double a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8.n128_f64[0] = a2;
    v9.n128_f64[0] = a3;
    v10 = sub_100049A40(*(a1 + 32), v8, v9);
    *buf = 68290307;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2049;
    v43 = Current;
    v44 = 2049;
    v45 = a2;
    v46 = 2049;
    v47 = a3;
    v48 = 1025;
    *v49 = v10;
    *&v49[4] = 1025;
    *&v49[6] = sub_100049BC0(a1, a2, a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,run, now:%{private}0.1f, startTsSeconds:%{private}0.1f, endTsSeconds:%{private}0.1f, isWeaCapable:%{private}hhd, isSaCapable:%{private}hhd}", buf, 0x3Cu);
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v35 = "{msg%{public}.0s:#eff,collectEfficacyMetric,empty manifest}";
LABEL_49:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
    goto LABEL_50;
  }

  v12 = *(v11 + 28);
  v13 = SALogObjectGeneral;
  v14 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if ((v12 & 1) == 0)
  {
    if (!v14)
    {
      goto LABEL_50;
    }

    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v35 = "{msg%{public}.0s:#eff,collectEfficacyMetric,manifest invalid}";
    goto LABEL_49;
  }

  if (v14)
  {
    *buf = 68289026;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,collectingEfficacyMetric}", buf, 0x12u);
    v11 = *(a1 + 48);
  }

  v16 = *v11;
  v15 = v11[1];
  while (v16 != v15)
  {
    v17 = *v16;
    if (*v16)
    {
      if (v17[13])
      {
        v18 = **v17;
        if (v19)
        {
          v20 = v19;
          v21 = *(v16 + 8);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *v16;
          }

          v23 = v17[5];
          v22 = v17[6];
          v24 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68290051;
            v39 = 0;
            v40 = 2082;
            v41 = "";
            v42 = 2049;
            v43 = v23;
            v44 = 2049;
            v45 = v22;
            v46 = 2049;
            v47 = a2;
            v48 = 2049;
            *v49 = a3;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#eff,run, effectiveTimeSeconds:%{private}0.1f, expiresTimeSeconds:%{private}0.1f, startTsSeconds:%{private}0.1f, endTsSeconds:%{private}0.1f}", buf, 0x3Au);
          }

          if (v23 <= a3)
          {
            if (v23 >= a2)
            {
              if (v22 >= a2)
              {
                if (*(v20 + 105) == 1)
                {
                  v37[0] = v20;
                  v37[1] = v21;
                  if (v21)
                  {
                    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_10004A1EC(a1, v37, 1, a2);
                }

                else
                {
                  v36[0] = v20;
                  v36[1] = v21;
                  if (v21)
                  {
                    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_10004A1EC(a1, v36, 0, a2);
                }

                if (!v21)
                {
                  goto LABEL_34;
                }

                sub_10002A838(v21);
LABEL_33:
                sub_10002A838(v21);
                goto LABEL_34;
              }

              v34 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 68289026;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v26 = v34;
              v27 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,skipOldMessage}";
            }

            else
            {
              v33 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 68289026;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v26 = v33;
              v27 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,skipGeneratedBeforeRollingPeriod}";
            }

LABEL_31:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x12u);
          }

          else
          {
            v25 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v26 = v25;
              v27 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,skipFutureMessage}";
              goto LABEL_31;
            }
          }

LABEL_32:
          if (v21)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v32 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v39 = 0;
          v40 = 2082;
          v41 = "";
          v29 = v32;
          v30 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,entry not matched,skipping}";
          goto LABEL_24;
        }
      }

      else
      {
        v31 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v39 = 0;
          v40 = 2082;
          v41 = "";
          v29 = v31;
          v30 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,not valid}";
          goto LABEL_24;
        }
      }
    }

    else
    {
      v28 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v29 = v28;
        v30 = "{msg%{public}.0s:#eff,collectingEfficacyMetric,skipNullEntry}";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0x12u);
      }
    }

LABEL_34:
    v16 += 16;
  }

LABEL_50:
  *(a1 + 16) = 0;
}