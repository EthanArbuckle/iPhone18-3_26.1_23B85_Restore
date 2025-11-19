void sub_10073CC88(uint64_t a1)
{
  v115 = 0;
  v114 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowMinInterval");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_13;
  }

  v4 = HIDWORD(v115);
  v5 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v4) = WORD2(v115);
    v5 = qword_100BCE980;
  }

  *(a1 + 1082) = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_13:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowMaxInterval");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v115;
  v9 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v8) = v115;
    v9 = qword_100BCE980;
  }

  *(a1 + 1084) = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_25:
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowSupervisionTimeout");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else if (!v11)
  {
    goto LABEL_36;
  }

  v12 = v114;
  v13 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v12) = v114;
    v13 = qword_100BCE980;
  }

  *(a1 + 1086) = v12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_36:
  if (*(a1 + 1084) < *(a1 + 1082) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DC34();
  }

  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumMinInterval");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_51;
    }
  }

  else if (!v15)
  {
    goto LABEL_51;
  }

  v16 = HIDWORD(v115);
  v17 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v16) = WORD2(v115);
    v17 = qword_100BCE980;
  }

  *(a1 + 1088) = v16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_51:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumMaxInterval");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_63;
    }
  }

  else if (!v19)
  {
    goto LABEL_63;
  }

  v20 = v115;
  v21 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v20) = v115;
    v21 = qword_100BCE980;
  }

  *(a1 + 1090) = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_63:
  v22 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumSupervisionTimeout");
  v23 = (*(*v22 + 88))(v22, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_74;
    }
  }

  else if (!v23)
  {
    goto LABEL_74;
  }

  v24 = v114;
  v25 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v24) = v114;
    v25 = qword_100BCE980;
  }

  *(a1 + 1092) = v24;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_74:
  if (*(a1 + 1090) < *(a1 + 1088) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DCA8();
  }

  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighMinInterval");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_89;
    }
  }

  else if (!v27)
  {
    goto LABEL_89;
  }

  v28 = HIDWORD(v115);
  v29 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v28) = WORD2(v115);
    v29 = qword_100BCE980;
  }

  *(a1 + 1094) = v28;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_89:
  v30 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighMaxInterval");
  v31 = (*(*v30 + 88))(v30, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_101;
    }
  }

  else if (!v31)
  {
    goto LABEL_101;
  }

  v32 = v115;
  v33 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v32) = v115;
    v33 = qword_100BCE980;
  }

  *(a1 + 1096) = v32;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_101:
  v34 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighSupervisionTimeout");
  v35 = (*(*v34 + 88))(v34, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      goto LABEL_112;
    }
  }

  else if (!v35)
  {
    goto LABEL_112;
  }

  v36 = v114;
  v37 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v36) = v114;
    v37 = qword_100BCE980;
  }

  *(a1 + 1098) = v36;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_112:
  if (*(a1 + 1096) < *(a1 + 1094) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DD44();
  }

  v38 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighMinInterval");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_127;
    }
  }

  else if (!v39)
  {
    goto LABEL_127;
  }

  v40 = HIDWORD(v115);
  v41 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v40) = WORD2(v115);
    v41 = qword_100BCE980;
  }

  *(a1 + 1100) = v40;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_127:
  v42 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighMaxInterval");
  v43 = (*(*v42 + 88))(v42, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v43)
    {
      goto LABEL_139;
    }
  }

  else if (!v43)
  {
    goto LABEL_139;
  }

  v44 = v115;
  v45 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v44;
    _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v44) = v115;
    v45 = qword_100BCE980;
  }

  *(a1 + 1102) = v44;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v44;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_139:
  v46 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighSupervisionTimeout");
  v47 = (*(*v46 + 88))(v46, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v47)
    {
      goto LABEL_150;
    }
  }

  else if (!v47)
  {
    goto LABEL_150;
  }

  v48 = v114;
  v49 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v48) = v114;
    v49 = qword_100BCE980;
  }

  *(a1 + 1104) = v48;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_150:
  if (*(a1 + 1102) < *(a1 + 1100) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DDB8();
  }

  v111 = 0;
  v50 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalDigitalID");
  v51 = (*(*v50 + 88))(v50, buf, __p, &v111);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v51)
    {
      goto LABEL_161;
    }
  }

  else if (!v51)
  {
    goto LABEL_161;
  }

  v52 = v111;
  *(a1 + 1106) = v111;
  v53 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMinIntervalDigitalID:%d", buf, 8u);
  }

LABEL_161:
  v110 = 0;
  v54 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalDigitalID");
  v55 = (*(*v54 + 88))(v54, buf, __p, &v110);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v55)
    {
      goto LABEL_169;
    }
  }

  else if (!v55)
  {
    goto LABEL_169;
  }

  v56 = v110;
  *(a1 + 1108) = v110;
  v57 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v56;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMaxIntervalDigitalID:%d", buf, 8u);
  }

LABEL_169:
  v109 = 0;
  v58 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMaxCEDigitalID");
  v59 = (*(*v58 + 88))(v58, buf, __p, &v109);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v59)
    {
      goto LABEL_177;
    }
  }

  else if (!v59)
  {
    goto LABEL_177;
  }

  v60 = v109;
  *(a1 + 1111) = v109;
  v61 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Override LeMaxCEDigitalID:%d", buf, 8u);
  }

LABEL_177:
  v108 = 0;
  v62 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMinCEDigitalID");
  v63 = (*(*v62 + 88))(v62, buf, __p, &v108);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v63)
    {
      goto LABEL_185;
    }
  }

  else if (!v63)
  {
    goto LABEL_185;
  }

  v64 = v108;
  *(a1 + 1110) = v108;
  v65 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Override LeMinCEDigitalID:%d", buf, 8u);
  }

LABEL_185:
  v66 = *(a1 + 1110);
  v67 = *(a1 + 1111);
  if (v66 > v67)
  {
    v68 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v66;
      *&buf[8] = 1024;
      *&buf[10] = v67;
      *&buf[14] = 1024;
      *&buf[16] = v67;
      _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "fMinCELenDigitalID %d is greater than fMaxCELenDigitalID %d. Replace fMinCELenDigitalID by %d.", buf, 0x14u);
      LOBYTE(v67) = *(a1 + 1111);
    }

    *(a1 + 1110) = v67;
  }

  v107 = 0;
  v69 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideConnectionIntervalFindMy");
  v70 = (*(*v69 + 72))(v69, buf, __p, &v107);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v70)
    {
      goto LABEL_199;
    }
  }

  else if (!v70)
  {
    goto LABEL_199;
  }

  v71 = v107;
  *(a1 + 1112) = v107;
  v72 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v73 = "disabled";
    if (v71)
    {
      v73 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "OverrideConnectionIntervalFindMy %s", buf, 0xCu);
  }

LABEL_199:
  v106 = 0;
  v74 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalFindMy");
  v75 = (*(*v74 + 88))(v74, buf, __p, &v106);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v75)
    {
      goto LABEL_207;
    }
  }

  else if (!v75)
  {
    goto LABEL_207;
  }

  v76 = v106;
  *(a1 + 1114) = v106;
  v77 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMinIntervalFindMy:%d", buf, 8u);
  }

LABEL_207:
  v105 = 0;
  v78 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalFindMy");
  v79 = (*(*v78 + 88))(v78, buf, __p, &v105);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v79)
    {
      goto LABEL_215;
    }
  }

  else if (!v79)
  {
    goto LABEL_215;
  }

  v80 = v105;
  *(a1 + 1116) = v105;
  v81 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v80;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMaxIntervalFindMy:%d", buf, 8u);
  }

LABEL_215:
  v104 = 0;
  v82 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalMIDIv2InFrames");
  v83 = (*(*v82 + 88))(v82, buf, __p, &v104);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v83)
    {
      goto LABEL_223;
    }
  }

  else if (!v83)
  {
    goto LABEL_223;
  }

  v84 = v104;
  *(a1 + 1118) = v104;
  v85 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v84;
    *&buf[8] = 2048;
    *&buf[10] = (v84 * 1.25);
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Override MinIntervalFramesMIDIv2:%d (frames) %.3f (msec)", buf, 0x12u);
  }

LABEL_223:
  v103 = 0;
  v86 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalMIDIv2InFrames");
  v87 = (*(*v86 + 88))(v86, buf, __p, &v103);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v87)
    {
      goto LABEL_231;
    }
  }

  else if (!v87)
  {
    goto LABEL_231;
  }

  v88 = v103;
  *(a1 + 1120) = v103;
  v89 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v88;
    *&buf[8] = 2048;
    *&buf[10] = (v88 * 1.25);
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Override MaxIntervalFramesMIDIv2:%d (frames) %.3f (msec)", buf, 0x12u);
  }

LABEL_231:
  v102 = 0;
  v90 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMaxCEMIDIv2InTimeslots");
  v91 = (*(*v90 + 88))(v90, buf, __p, &v102);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v91)
    {
      goto LABEL_239;
    }
  }

  else if (!v91)
  {
    goto LABEL_239;
  }

  v92 = v102;
  *(a1 + 1123) = v102;
  v93 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v92;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Override LeMaxCEMIDIv2:%d", buf, 8u);
  }

LABEL_239:
  v101 = 0;
  v94 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMinCEMIDIv2InTimeslots");
  v95 = (*(*v94 + 88))(v94, buf, __p, &v101);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v95)
    {
      goto LABEL_247;
    }
  }

  else if (!v95)
  {
    goto LABEL_247;
  }

  v96 = v101;
  *(a1 + 1122) = v101;
  v97 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v96;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Override LeMinCEMIDIv2:%d", buf, 8u);
  }

LABEL_247:
  v98 = *(a1 + 1122);
  v99 = *(a1 + 1123);
  if (v98 > v99)
  {
    v100 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v98;
      *&buf[8] = 1024;
      *&buf[10] = v99;
      *&buf[14] = 1024;
      *&buf[16] = v99;
      _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "fMinCELenMIDIv2 %d is greater than fMaxCELenMIDIv2 %d. Replace fMinCELenMIDIv2 by %d.", buf, 0x14u);
      LOBYTE(v99) = *(a1 + 1123);
    }

    *(a1 + 1122) = v99;
  }
}

void sub_10073E8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_10073E9CC(unsigned __int8 *a1, unsigned __int8 *a2, int a3, char a4)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a1;
  v12 = sub_1000BE280(a2);
  if (a2)
  {
    v13 = (a2[49] << 40) | (a2[50] << 32) | (a2[51] << 24) | (a2[52] << 16) | (a2[53] << 8) | a2[54] | (a2[48] << 48);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100007EE8();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10076C3E4;
  v17[3] = &unk_100AF6B30;
  v19 = v12;
  v17[4] = a2;
  v17[5] = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10 | (v11 << 48);
  v18 = a3;
  v20 = a4;
  v17[6] = v13;
  sub_10000CA94(v14, v17);
}

void sub_10073EB08(uint64_t a1, int a2, char a3, int a4)
{
  v7 = 48;
  if (*(a1 + 55))
  {
    v7 = 56;
  }

  v8 = 49;
  if (*(a1 + 55))
  {
    v8 = 57;
  }

  v9 = 50;
  if (*(a1 + 55))
  {
    v9 = 58;
  }

  v10 = 51;
  if (*(a1 + 55))
  {
    v10 = 59;
  }

  v11 = 52;
  if (*(a1 + 55))
  {
    v11 = 60;
  }

  v12 = 53;
  if (*(a1 + 55))
  {
    v12 = 61;
  }

  v13 = 54;
  if (*(a1 + 55))
  {
    v13 = 62;
  }

  v14 = (*(a1 + v8) << 40) | (*(a1 + v9) << 32) | (*(a1 + v10) << 24) | (*(a1 + v11) << 16) | (*(a1 + v12) << 8) | *(a1 + v13) | (*(a1 + v7) << 48);
  v15 = *(a1 + 70);
  v16 = *(a1 + 168);
  v17 = *(a1 + 312);
  v18 = sub_100255698(a1);
  if (sub_1000ABD24(a1) && *(a1 + 252) == 1)
  {
    v19 = sub_100007EE8();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10076C588;
    v34[3] = &unk_100AE0860;
    v34[4] = v14;
    v34[5] = a1;
    sub_10000CA94(v19, v34);
  }

  v20 = v16 == 1;
  v21 = v16 > 1;
  v22 = v20;
  v23 = v17 | a3;
  if (a2 == 708 && v21)
  {
    a2 = 4834;
  }

  v24 = sub_100007EE8();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10076C674;
  v26[3] = &unk_100AF6B30;
  v26[4] = a1;
  v26[5] = v14;
  v30 = v21;
  v29 = v18;
  v31 = v15;
  v32 = v23;
  v33 = v22;
  v27 = a2;
  v28 = a4;
  sub_10000CA94(v24, v26);
}

void sub_10073ED00(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Connection Cancelled with status %d", buf, 8u);
  }

  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10076C534;
  v4[3] = &unk_100AE0900;
  v5 = a1;
  sub_10000CA94(v3, v4);
}

void sub_10073EDF8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v14 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    v24 = a1;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    v31 = 1024;
    v32 = a5;
    v33 = 1024;
    v34 = a6;
    v35 = 1024;
    v36 = a7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LE Connection Parameters Updated for handle %p, interval:%d peripheral latency:%d supervisionTO:%d minCELen:%d maxCELen:%d, localRole:%d", buf, 0x30u);
  }

  v15 = sub_100007EE8();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10076CDB4;
  v16[3] = &unk_100AEDA40;
  v16[4] = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  sub_10000CA94(v15, v16);
}

void sub_10073EF6C(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v21 = a1;
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    v26 = 1024;
    v27 = a5;
    v28 = 1024;
    v29 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection Subrating Update completed for handle %p. Subrate factor: %d, Peripheral latency: %d, Continuation Number: %d, Supervision TO: %d", buf, 0x24u);
  }

  v13 = sub_100007EE8();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10076CE20;
  v14[3] = &unk_100AE0880;
  v14[4] = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  sub_10000CA94(v13, v14);
}

void sub_10073F0C8(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 22) == 26119)
  {
    v6 = sub_10000C798();
    v7 = (*(*v6 + 368))(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 368);
  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v30 = a1;
    v31 = 1024;
    v32 = a2;
    v33 = 1024;
    v34 = a3;
    v35 = 1024;
    v36 = v8;
    v37 = 1024;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LE Link Ready for handle %p with status %d fastLEConnectionEnabled:%d linkReadyDurationMS:%d requiresCTOFix:%d", buf, 0x24u);
  }

  v16 = *(a1 + 88);
  v10 = *(a1 + 70);
  v11 = *(a1 + 144);
  v12 = sub_1002D0224(a1);
  v13 = sub_1002D026C(a1);
  v14 = sub_1002D02B4(a1);
  *buf = 0;
  sub_1002D00E4(a1, buf);
  v15 = sub_100007EE8();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10076CE88;
  v17[3] = &unk_100AFDDF8;
  v17[4] = a1;
  v27 = v7;
  v28 = a3;
  v18 = a2;
  v19 = v8;
  v20 = v11;
  v21 = v16;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = *buf;
  sub_10000CA94(v15, v17);
}

uint64_t sub_10073F2D0(unsigned __int8 *a1, int a2)
{
  v3 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v4 = objc_autoreleasePoolPush();
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 1024;
    *&v9[14] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Address %{public}@ Added to Filter Accept List with status:%d", v9, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (a2 != 758)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086DE7C();
      }

      v8 = sub_10000E92C();
      sub_100693F74(v8, 1);
    }

    *v9 = 0;
    *&v9[8] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000498D4(off_100B508C8, v3, 0, 0, 0, 0, v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    sub_100749E70(off_100B508A8, v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    sub_100745874(off_100B508A8, 4u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, &unk_100BCEC28);
  byte_100BCECA8 = 0;
  sub_10002286C(&stru_100BCEBC8);
  return sub_1000088CC(v9);
}

uint64_t sub_10073F500(unsigned __int8 *a1, int a2)
{
  v3 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v4 = objc_autoreleasePoolPush();
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 1024;
    *&v9[14] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Address %{public}@ Removed from Filter Accept List with status:%d", v9, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086DF20();
    }

    if (a2 != 718)
    {
      if (a2 != 758)
      {
        v8 = sub_10000E92C();
        sub_100693F74(v8, 1);
      }

      *v9 = 0;
      *&v9[8] = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_1000498D4(off_100B508C8, v3, 0, 0, 0, 0, v9);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100749FCC(off_100B508A8, v9);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100745874(off_100B508A8, 4u);
    }
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, &unk_100BCEC68);
  byte_100BCECA9 = 0;
  sub_10002286C(&stru_100BCEBF8);
  return sub_1000088CC(v9);
}

void sub_10073F738(int a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    *buf = 134218240;
    v12 = a2;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LE Read Remote FAE Table  handle %p, FAETable[0]:%0X ", buf, 0x12u);
  }

  v8 = sub_100007EE8();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100769820;
  v9[3] = &unk_100AE0880;
  v10 = a1;
  v9[4] = a2;
  v9[5] = a3;
  sub_10000CA94(v8, v9);
}

void sub_10073F854(int a1, uint64_t a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LE Security Enable handle %p, FAETable[0]: ", buf, 0xCu);
  }

  v5 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100769878;
  v6[3] = &unk_100ADF940;
  v7 = a1;
  v6[4] = a2;
  sub_10000CA94(v5, v6);
}

void sub_10073F95C(int a1, uint64_t a2, char a3, int a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23)
{
  v27 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v56 = a2;
    v57 = 1024;
    v58 = a4;
    v59 = 1024;
    v60 = a1;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "LE CS Create Config  handle %p, action:%0X  status%d", buf, 0x18u);
  }

  v28 = sub_100007EE8();
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1007698D0;
  v33[3] = &unk_100AF6B70;
  v34 = a1;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v33[4] = a2;
  v33[5] = a14;
  v46 = a15;
  v47 = a16;
  v48 = a17;
  v49 = a18;
  v50 = a19;
  v51 = a20;
  v52 = a21;
  v53 = a22;
  v54 = a23;
  sub_10000CA94(v28, v33);
}

void sub_10073FB88(int a1, uint64_t a2, char a3, int a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12)
{
  v18 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v35 = a2;
    v36 = 1024;
    v37 = a4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LE Procedure Enable  handle %p, enable:%0X ", buf, 0x12u);
  }

  v19 = sub_100007EE8();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100769958;
  v22[3] = &unk_100B00C18;
  v23 = a1;
  v22[4] = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  sub_10000CA94(v19, v22);
}

void sub_10073FD0C(uint64_t a1, int a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v6 = a1;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LE SubEvent Result handle %p, enable:%0X ", buf, 0x12u);
  }

  operator new[]();
}

void sub_10073FF40(uint64_t a1, int a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v6 = a1;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LE SubEvent Result Continue handle %p, enable:%0X ", buf, 0x12u);
  }

  operator new[]();
}

void sub_100740150(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, unsigned __int8 a5, int a6)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v12 = *(a1 + 384);
  if (v12 != (a1 + 392))
  {
    while (*(v12 + 6) != a2)
    {
      v13 = *(v12 + 1);
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
          v14 = *(v12 + 2);
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
      if (v14 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v12 + 32);
  }

LABEL_11:
  if (!uuid_is_null(uu))
  {
    *(sub_100773D48(a1 + 432, uu) + 48) = a2;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = sub_10004DF60(uu);
    sub_100740410(a1, v16, &v24);

    if (!v24)
    {
LABEL_23:
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3321888768;
      v29[2] = sub_1007406C0;
      v29[3] = &unk_100B0B390;
      uuid_copy(v32, uu);
      v32[16] = a3;
      v32[17] = a5;
      v30 = a4;
      v31 = a6;
      sub_10074063C(a1, v29);

      return;
    }

    if ((a4 & 0x40) != 0)
    {
      v17 = 5;
    }

    else
    {
      if ((a4 & 0x80) != 0)
      {
        *(&v26 + 1) = 0;
        goto LABEL_22;
      }

      if ((a4 & 0x100) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 6;
      }
    }

    *(&v26 + 1) = v17;
LABEL_22:
    v18 = sub_10004DF60(uu);
    v19[0] = v24;
    v19[1] = *(&v24 + 1);
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    sub_100740538(a1, v18, v19);

    goto LABEL_23;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086DFC4();
  }
}

void sub_100740410(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  sub_10004DFB4(uu2, v5);
  if (a1 + 1568 != sub_10004E34C(a1 + 1560, uu2))
  {
    sub_10004DFB4(uu2, v5);
    v6 = sub_100776CC8(a1 + 1560, uu2);
    *a3 = *(v6 + 48);
    *(a3 + 8) = *(v6 + 56);
    v8 = *(v6 + 80);
    v7 = *(v6 + 96);
    v9 = *(v6 + 64);
    *(a3 + 64) = *(v6 + 112);
    *(a3 + 32) = v8;
    *(a3 + 48) = v7;
    *(a3 + 16) = v9;
  }
}

void sub_100740514(_Unwind_Exception *a1)
{
  sub_10074075C(v2);

  _Unwind_Resume(a1);
}

void sub_100740538(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10004DFB4(uu1, v5);
  v6 = sub_100776CC8(a1 + 1560, uu1);
  objc_storeStrong((v6 + 48), *a3);
  objc_storeStrong((v6 + 56), *(a3 + 8));
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  *(v6 + 112) = *(a3 + 64);
  *(v6 + 80) = v8;
  *(v6 + 96) = v9;
  *(v6 + 64) = v7;
}

void sub_10074061C(_Unwind_Exception *a1)
{
  sub_10074075C(v2);

  _Unwind_Resume(a1);
}

void sub_10074063C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 120);
  sub_100762BF8(a1 + 192, v3);
  sub_100762BF8(a1 + 224, v3);
  sub_1000088CC(v4);
}

void sub_1007406C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 8))(a2);
}

uint64_t sub_100740790(_BYTE *a1)
{
  v88 = 1800;
  v89 = 3;
  v86 = 7200;
  v87 = 1;
  v84 = 1800;
  v85 = 3;
  v82 = 7200;
  v83 = 1;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKDisconnectionDisabledToStageOneValue");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v89);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v89;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKDisconnectionDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_9:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKTimeDurationFromDisabledToStageOneValue");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v88);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_17;
  }

  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v88;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKTimeDurationFromDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_17:
  v8 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKDisconnectionStageOneToDisabledValue");
  v9 = (*(*v8 + 88))(v8, buf, __p, &v87);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  v10 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v87;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKDisconnectionStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_25:
  v11 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKTimeDurationFromStageOneToDisabledValue");
  v12 = (*(*v11 + 88))(v11, buf, __p, &v86);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else if (!v12)
  {
    goto LABEL_33;
  }

  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v86;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKTimeDurationFromStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_33:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeDisconnectionDisabledToStageOneValue");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v85);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  else if (!v15)
  {
    goto LABEL_41;
  }

  v16 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v85;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeDisconnectionDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_41:
  v17 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeTimeDurationFromDisabledToStageOneValue");
  v18 = (*(*v17 + 88))(v17, buf, __p, &v84);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_49;
    }
  }

  else if (!v18)
  {
    goto LABEL_49;
  }

  v19 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v84;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeTimeDurationFromDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_49:
  v20 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeDisconnectionStageOneToDisabledValue");
  v21 = (*(*v20 + 88))(v20, buf, __p, &v83);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else if (!v21)
  {
    goto LABEL_57;
  }

  v22 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v83;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeDisconnectionStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_57:
  v23 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeTimeDurationFromStageOneToDisabledValue");
  v24 = (*(*v23 + 88))(v23, buf, __p, &v82);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_65;
    }
  }

  else if (!v24)
  {
    goto LABEL_65;
  }

  v25 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v82;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeTimeDurationFromStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_65:
  v26 = v89;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = v26;
  v27 = v88;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = v27;
  LOWORD(v27) = v87;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = v27;
  v28 = v86;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = v28;
  LOWORD(v28) = v85;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = v28;
  v29 = v84;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = v29;
  LOWORD(v29) = v83;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = v29;
  v30 = v82;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = v30;
  __p[0] = 3;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  LOBYTE(v30) = a1[1352];
  __p[0] = (&_mh_execute_header + 3);
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v30;
  __p[0] = 0x200000003;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v31 = a1[1353];
  v78 = 24;
  v79 = v31;
  v76 = 5;
  v77 = 1800;
  v75 = 3600;
  v32 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetRSSIThresholdStageOne");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v79);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_73;
    }
  }

  else if (!v33)
  {
    goto LABEL_73;
  }

  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v79;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetRSSIThresholdStageOne =%d (override)", buf, 8u);
  }

LABEL_73:
  v35 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetDisabledToStageOneValue");
  v36 = (*(*v35 + 88))(v35, buf, __p, &v78);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v36)
    {
      goto LABEL_81;
    }
  }

  else if (!v36)
  {
    goto LABEL_81;
  }

  v37 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v78;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_81:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetTimeDurationFromDisabledToStageOneValue");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v77);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_89;
    }
  }

  else if (!v39)
  {
    goto LABEL_89;
  }

  v40 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetTimeDurationFromDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_89:
  v41 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetStageOneToDisabledValue");
  v42 = (*(*v41 + 88))(v41, buf, __p, &v76);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v42)
    {
      goto LABEL_97;
    }
  }

  else if (!v42)
  {
    goto LABEL_97;
  }

  v43 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_97:
  v44 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetTimeDurationFromStageOneToDisabledValue");
  v45 = (*(*v44 + 88))(v44, buf, __p, &v75);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v45)
    {
      goto LABEL_105;
    }
  }

  else if (!v45)
  {
    goto LABEL_105;
  }

  v46 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v75;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetTimeDurationFromStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_105:
  __p[0] = 11;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v47 = v79;
  __p[0] = &dword_100000008 + 3;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v47;
  __p[0] = 0x20000000BLL;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v48 = v78;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = v48;
  v49 = v77;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = v49;
  LOWORD(v49) = v76;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = v49;
  v50 = v75;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = v50;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = 12;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = 1800;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = 2;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = 3600;
  __p[0] = 16;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v51 = a1[1354];
  __p[0] = &dword_100000010;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v51;
  __p[0] = 0x200000010;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  __p[0] = 21;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v52 = a1[1355];
  __p[0] = &dword_100000014 + 1;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v52;
  __p[0] = 0x200000015;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  __p[0] = 655360;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v53 = a1[1356];
  __p[0] = &loc_1000A0000;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v53;
  __p[0] = 0x2000A0000;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v73 = 1800;
  v74 = 12;
  v71 = 3600;
  v72 = 2;
  v54 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppDisabledToStageOneValue");
  v55 = (*(*v54 + 88))(v54, buf, __p, &v74);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v55)
    {
      goto LABEL_113;
    }
  }

  else if (!v55)
  {
    goto LABEL_113;
  }

  v56 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v74;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_113:
  v57 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppTimeDurationFromDisabledToStageOneValue");
  v58 = (*(*v57 + 88))(v57, buf, __p, &v73);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v58)
    {
      goto LABEL_121;
    }
  }

  else if (!v58)
  {
    goto LABEL_121;
  }

  v59 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v73;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppTimeDurationFromDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_121:
  v60 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppStageOneToDisabledValue");
  v61 = (*(*v60 + 88))(v60, buf, __p, &v72);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v61)
    {
      goto LABEL_129;
    }
  }

  else if (!v61)
  {
    goto LABEL_129;
  }

  v62 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v72;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_129:
  v63 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppTimeDurationFromStageOneToDisabledValue");
  v64 = (*(*v63 + 88))(v63, buf, __p, &v71);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v64)
    {
      goto LABEL_137;
    }
  }

  else if (!v64)
  {
    goto LABEL_137;
  }

  v65 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppTimeDurationFromStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_137:
  v66 = v74;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = v66;
  v67 = v73;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = v67;
  LOWORD(v67) = v72;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = v67;
  v68 = v71;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = v68;
  __p[0] = 23;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  LOBYTE(v68) = a1[1357];
  __p[0] = &dword_100000014 + 3;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v68;
  __p[0] = 0x200000017;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100773E70((a1 + 1232), __p) + 16) = 12;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100023DF0((a1 + 1256), __p) + 8) = 1800;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100773E70((a1 + 1280), __p) + 16) = 2;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100023DF0((a1 + 1304), __p) + 8) = 3600;
  __p[0] = 267;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = 0;
  v69 = a1[1358];
  __p[0] = &stru_100000100 + 11;
  *buf = __p;
  *(sub_100773F44((a1 + 1328), __p) + 36) = v69;
  __p[0] = 0x20000010BLL;
  *buf = __p;
  result = sub_100773F44((a1 + 1328), __p);
  *(result + 36) = 0;
  return result;
}

void sub_100741FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100742080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 1125);
  if (v4)
  {
    goto LABEL_34;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v5 = sub_10078A13C(off_100B508C8, v3);
  if (v5)
  {
    if (v5 == -127)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_34;
  }

  if (!sub_1007422D0(a1, v3))
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v6 = sub_100788D8C(off_100B508C8, v3);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v7 = [v3 UUIDString];
  sub_100007E30(v17, [v7 UTF8String]);

  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v16 = v18;
  }

  v8 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = *(v8 + 56);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v14[0] = v6;
  v14[1] = v9;
  v10 = sub_1007740CC(a1 + 1328, v14);
  if (a1 + 1336 == v10)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v11 = sub_100786BB8(off_100B508C8, v3);
  v4 = *(v10 + 36);
  if (v11 == 1)
  {
    goto LABEL_32;
  }

  if (v9 != 1)
  {
    goto LABEL_30;
  }

  if (v6 == 16)
  {
    v12 = 8;
    goto LABEL_31;
  }

  if (v6 == 267 || v6 == 23)
  {
    v12 = 4;
  }

  else
  {
LABEL_30:
    v12 = 0;
  }

LABEL_31:
  v4 += v12;
LABEL_32:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

LABEL_34:

  return v4;
}

void sub_100742274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007422D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 1126) != 1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 1125))
  {
    goto LABEL_6;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (sub_10078A13C(off_100B508C8, v3))
  {
    goto LABEL_6;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v6 = sub_100788D8C(off_100B508C8, v3);
  v4 = 0;
  if (v6 <= 22)
  {
    if (v6 != 11 && v6 != 16 && v6 != 21)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = 1;
    goto LABEL_8;
  }

  if (v6 == 23 || v6 == 267 || v6 == 655360)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v4;
}

uint64_t sub_1007423CC(uint64_t a1, int a2)
{
  v2 = *(a1 + 336);
  v3 = (a1 + 344);
  if (v2 == (a1 + 344))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v6 = off_100B508C8;
      v7 = sub_10004DF60(v2 + 25);
      v8 = sub_100788D8C(v6, v7);

      if (v8 == a2)
      {
        break;
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v5 |= v8 == a2;
      v2 = v10;
      if (v10 == v3)
      {
        return v5 & 1;
      }
    }

    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1007424C8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = sub_100789BB0(off_100B508C8, v2);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v4 = sub_100789A60(off_100B508C8, v2);
  if ((v4 & 4) != 0)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v8 = 8;
        goto LABEL_22;
      }

      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHY options are not specified, set to default S2 only", v12, 2u);
      }
    }

    v8 = 16;
LABEL_22:
    v10 = sub_10000C798();
    if ((*(*v10 + 728))(v10))
    {
      v7 = v8 | v4 | 2;
    }

    else
    {
      v7 = v8 | v4;
    }

    goto LABEL_25;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v5 = sub_100788D8C(off_100B508C8, v2);
  if (_os_feature_enabled_impl())
  {
    v7 = (v5 & 0xFFFFFFFE) == 0x1001A || (v5 & 0xFFFFFFFE) == 65564;
  }

  else
  {
    v7 = 0;
  }

LABEL_25:

  return v7;
}

void sub_10074267C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10086E048();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v2 = *sub_10000C798();
  if (((*(v2 + 440))() & 1) == 0)
  {
    v3 = sub_100017E6C();
    sub_100532818(v3 + 744, a1 + 8);
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  sub_1005BB5D4(off_100B50908, a1 + 24);
  if (qword_100B51098 != -1)
  {
    sub_10086E070();
  }

  sub_10048776C(qword_100B51090, a1 + 96);
  v38 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionManagerConnectionScansDefaultDuration");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v38);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v38;
  *(a1 + 568) = v38;
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeConnectionManagerConnectionScansDefault duration=%d", buf, 8u);
  }

LABEL_17:
  sub_100195CF0(sub_100742DE4);
  *buf = 0;
  v40 = 0;
  v41 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(__p, "BTUCMCustomConnectionSegments");
  if (!(*(*v8 + 120))(v8, __p, buf) || v40 == *buf)
  {
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_24;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (&v40[-*buf] >> 3);
  if ((v37 & 0x80000000) == 0)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_24:
    *(a1 + 112) = 5;
    v10 = malloc_type_malloc(0x28uLL, 0x100004000313F17uLL);
    *(a1 + 104) = v10;
    *v10 = xmmword_1008C5310;
    v10[1] = xmmword_1008C5310;
    *(v10 + 4) = 500;
    goto LABEL_25;
  }

  operator delete(__p[0]);
  if (v9)
  {
    goto LABEL_24;
  }

LABEL_46:
  v23 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Overriding connection schedule segments with user defined", __p, 2u);
  }

  v24 = malloc_type_malloc(0x5555555555555558 * (&v40[-*buf] >> 3), 0x100004000313F17uLL);
  *(a1 + 104) = v24;
  v25 = *buf;
  v26 = v40;
  if (*buf == v40)
  {
    v31 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = v27;
      v29 = v25[23];
      v30 = v25;
      if (v27)
      {
        if (v29 < 0)
        {
          v30 = *v25;
        }

        v24[2 * (v27 >> 1) + 1] = atoi(v30);
      }

      else
      {
        if (v29 < 0)
        {
          v30 = *v25;
        }

        v24[2 * (v27 >> 1)] = atoi(v30);
      }

      v27 = v28 + 1;
      v25 += 24;
    }

    while (v25 != v26);
    v31 = v27 >> 1;
  }

  *(a1 + 112) = v31;
LABEL_25:
  sub_100740790(a1);
  v35 = 0;
  v11 = sub_10000E92C();
  sub_100007E30(__p, "Sentinel");
  sub_100007E30(v33, "IsFindMyWatchCoexHandled");
  v12 = (*(*v11 + 72))(v11, __p, v33, &v35);
  v13 = v35;
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v14 = v12 & v13;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  else if (!v14)
  {
    goto LABEL_33;
  }

  v15 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Overriding to handle Coex on watchOS for FindMy.", __p, 2u);
  }

LABEL_33:
  v16 = sub_10000C798();
  *(a1 + 1384) = (*(*v16 + 888))(v16);
  v17 = sub_10000C798();
  *(a1 + 1385) = (*(*v17 + 928))(v17);
  v18 = sub_10000C798();
  *(a1 + 1386) = (*(*v18 + 984))(v18);
  if (*(a1 + 1385) == 1)
  {
    v32 = *(a1 + 1392);
    v19 = sub_10000E92C();
    sub_100007E30(__p, "LE");
    sub_100007E30(v33, "LEInstantFactorMacAU");
    v20 = (*(*v19 + 88))(v19, __p, v33, &v32);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
      if (!v20)
      {
        goto LABEL_44;
      }
    }

    else if (!v20)
    {
      goto LABEL_44;
    }

    if (HIWORD(v32))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E084();
      }
    }

    else
    {
      *(a1 + 1392) = v32;
    }
  }

LABEL_44:
  v21 = sub_10000C798();
  *(a1 + 1387) = (*(*v21 + 880))(v21);
  v22 = sub_10000F034();
  (*(*v22 + 640))(v22, *(a1 + 1387));
  __p[0] = buf;
  sub_1000161FC(__p);
}

void sub_100742D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void **a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = &a25;
  sub_1000161FC(&a18);
  _Unwind_Resume(a1);
}

void sub_100742DE4(uint64_t a1, char a2, int a3, char a4, int a5)
{
  v10 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100773A64;
  v11[3] = &unk_100AE0EF8;
  v11[4] = a1;
  v14 = a2;
  v15 = a4;
  v12 = a3;
  v13 = a5;
  sub_10000CA94(v10, v11);
}

_BYTE *sub_100742E8C(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack Will Start", buf, 2u);
  }

  v18 = 0;
  sub_1000216B4(&v18);
  if (sub_1002D359C())
  {
    v3 = sub_10000E92C();
    if ((*(*v3 + 8))(v3))
    {
      v17 = 0;
      v4 = sub_10000E92C();
      sub_100007E30(buf, "CONNECTION");
      sub_100007E30(__p, "ForceConnectionDelay");
      v5 = (*(*v4 + 88))(v4, buf, __p, &v17);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(*buf);
      }

      v6 = qword_100BCE980;
      v7 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ForceConnectionDelay=%d", buf, 8u);
        }

        sub_1002D3528(v17);
      }

      else if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not find ForceConnectionDelay", buf, 2u);
      }
    }

    sub_1002D1C88();
    if (sub_1002D0844(8))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E108();
      }
    }

    else if (sub_1002D0844(4))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E178();
      }
    }

    else if (sub_1002CE244(off_100B0B320))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E1E8();
      }
    }

    else if (sub_1002CE314(off_100B0B360))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E258();
      }
    }

    else if (sub_1002D0518(sub_100743360))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E2C8();
      }
    }

    else if (sub_1002D06A4(sub_1007434E8))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E338();
      }
    }

    else if (sub_1002E9070(off_100B0B350))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E3A8();
      }
    }

    else
    {
      sub_1002D07DC(sub_100743560);
      sub_1002D0808(sub_10074366C);
      if (*(a1 + 836))
      {
        sub_1002C0F84(*(a1 + 836));
      }

      v8 = sub_10000C798();
      if ((*(*v8 + 384))(v8))
      {
        v9 = *(a1 + 1536);
        v10 = *(a1 + 1544);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10074379C;
        v14[3] = &unk_100B0B3C0;
        v14[4] = a1;
        [v9 startActivityUpdatesToQueue:v10 withHandler:v14];
      }

      v11 = *(a1 + 1528);
      *(a1 + 1528) = 0;

      *(a1 + 1552) = 1;
      sub_100022214(&v18);
      *(a1 + 1066) = 0;
      *buf = 0;
      v20 = 0;
      v12 = sub_100007F88(buf, a1 + 120);
      sub_1000088CC(v12);
    }
  }

  return sub_10002249C(&v18);
}

void sub_100743360()
{
  *&v12[3] = 0;
  *v12 = 0;
  sub_1000841FC(v12);
  v3 = 0;
  v4 = &v3;
  v5 = 0x4812000000;
  v6 = sub_10076C1A8;
  v7 = nullsub_688;
  v8 = "";
  v10 = 0;
  v11 = 0;
  v9 = (v12[1] << 40) | (v12[2] << 32) | (v12[3] << 24) | (v12[4] << 16) | (v12[5] << 8) | v12[6] | (v12[0] << 48);
  sub_1002D2704(1, v12);
  v4[7] = (v12[1] << 40) | (v12[2] << 32) | (v12[3] << 24) | (v12[4] << 16) | (v12[5] << 8) | v12[6] | (v12[0] << 48);
  v0 = sub_100007EE8();
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10076C1C0;
  v1[3] = &unk_100B0B9E0;
  v1[4] = &v3;
  v2 = 0;
  sub_10000CA94(v0, v1);
  _Block_object_dispose(&v3, 8);
}

void sub_1007434CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007434E8()
{
  v0 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "LeConnectionManager::leAddressWillChangeCallback", v2, 2u);
  }

  v1 = sub_100007EE8();
  sub_10000CA94(v1, &stru_100B0BA00);
}

void sub_100743560(uint64_t a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, int a7, char a8)
{
  if (a1)
  {
    v16 = *(a1 + 70);
    v17 = sub_100007EE8();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100767B18;
    v18[3] = &unk_100B0B868;
    v18[4] = a1;
    v24 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v19 = a7;
    v25 = v16;
    v26 = a8;
    sub_10000CA94(v17, v18);
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E418();
  }
}

void sub_10074366C(char a1, __int16 a2, __int16 a3, unsigned int a4, unint64_t *a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (a4)
  {
    v9 = a4;
    do
    {
      sub_10005B93C(&v16, a5++);
      --v9;
    }

    while (v9);
  }

  v10 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_100768F84;
  v11[3] = &unk_100B0B888;
  v15 = a1;
  v13 = a2;
  v14 = a3;
  sub_100775F10(v12, &v16);
  sub_10000CA94(v10, v11);
  sub_10000CEDC(v12, v12[1]);
  sub_10000CEDC(&v16, v17[0]);
}

void sub_10074376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  sub_10000CEDC(v19 + 32, a15);
  sub_10000CEDC(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_1007437A4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_10000C7D0();
  if ((sub_10008215C(v5, 3) & 1) != 0 && [v4 confidence] == 2)
  {
    if (!*(a1 + 1528) || (v6 = *(a1 + 1552), v6 != [v4 stationary]))
    {
      objc_storeStrong((a1 + 1528), a2);
      *(a1 + 1552) = [v4 stationary];
      if (([v4 stationary] & 1) == 0)
      {
        v7 = sub_100007EE8();
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100748090;
        v8[3] = &unk_100ADF8F8;
        v8[4] = a1;
        sub_10000CA94(v7, v8);
      }
    }
  }
}

_BYTE *sub_1007438A8(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack Did Start", buf, 2u);
  }

  v3 = sub_10000C7D0();
  (*(*v3 + 336))(v3, 1);
  v4 = sub_10000C7D0();
  (*(*v4 + 448))(v4, 12, 1);
  v5 = *(sub_10000C7D0() + 800);
  if ((v5 - 1) >= 0xB)
  {
    if ((v5 - 2000) > 0x7CF)
    {
      goto LABEL_8;
    }

    v6 = 14;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_10000C7D0();
  (*(*v7 + 856))(v7, v6, 1);
LABEL_8:
  v8 = sub_10000C7D0();
  (*(*v8 + 984))(v8, 10);
  v9 = sub_10000C7D0();
  if ((*(*v9 + 4040))(v9))
  {
    v10 = sub_10000C7D0();
    (*(*v10 + 4048))(v10, 0);
  }

  *(a1 + 184) = 1;
  *(a1 + 1008) = 1;
  *(a1 + 1064) = 1;
  *(a1 + 1067) = 0;
  v11 = sub_100017E6C();
  sub_1003128B0(v11 + 384, a1 + 16);
  v12 = sub_100017E6C();
  sub_1005689CC(v12 + 344, a1 + 88);
  v38 = 0;
  *(a1 + 633) = 0;
  v13 = sub_100017E6C();
  (*(*v13 + 80))(v13, &v38);
  v14 = sub_100017E6C();
  (*(*v14 + 88))(v14, a1 + 633);
  v15 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 633);
    *buf = 67109376;
    *&buf[4] = v16;
    *&buf[8] = 1024;
    *&buf[10] = v38;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Low Power mode: %d. Airplane Mode: %d", buf, 0xEu);
  }

  v37 = 0;
  sub_1000216B4(&v37);
  *&v36[3] = 0;
  *v36 = 0;
  *&v35[3] = 0;
  *v35 = 0;
  sub_1000841FC(v36);
  sub_1002D2704(1, v35);
  *(a1 + 1593) = sub_10024E430();
  sub_100022214(&v37);
  v17 = (v35[1] << 40) | (v35[2] << 32) | (v35[3] << 24) | (v35[4] << 16) | (v35[5] << 8) | v35[6] | (v35[0] << 48);
  *(a1 + 288) = (v36[1] << 40) | (v36[2] << 32) | (v36[3] << 24) | (v36[4] << 16) | (v36[5] << 8) | v36[6] | (v36[0] << 48);
  *(a1 + 296) = v17;
  *(a1 + 328) = CFAbsoluteTimeGetCurrent();
  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  sub_1005BC904(off_100B50908, 0);
  sub_1007440F4(a1, *(a1 + 352) != 0);
  sub_100744178(a1, 0, 0, 1);
  if (qword_100BC7AE8 != -1)
  {
    sub_10086E47C();
  }

  v34 = 0;
  v18 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "DisableMagnetSetLatency");
  v19 = (*(*v18 + 72))(v18, buf, __p, &v34);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SBYTE7(v40) & 0x80000000) == 0)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  operator delete(*buf);
  if (v19)
  {
LABEL_20:
    *(a1 + 632) = 1;
  }

LABEL_21:
  v31 = 0;
  *(a1 + 1520) = 0;
  v20 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanTimeoutOverride");
  v21 = (*(*v20 + 88))(v20, buf, __p, &v31);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else if (!v21)
  {
    goto LABEL_32;
  }

  v22 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionScanTimeoutOverride: Using override value (%d) for fLeConnectionScanTimeoutOverride", buf, 8u);
  }

  *(a1 + 1524) = v31;
  *(a1 + 1520) = 1;
LABEL_32:
  sub_100773BDC(a1 + 1448, *(a1 + 1456));
  *(a1 + 1448) = a1 + 1456;
  *(a1 + 1456) = 0u;
  sub_100773BDC(a1 + 1472, *(a1 + 1480));
  *(a1 + 1472) = a1 + 1480;
  *(a1 + 1480) = 0u;
  LOBYTE(__p[0]) = -1;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *buf = 0u;
  v30 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086E4A4();
  }

  if (*(off_100B50A98 + 572))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086E53C();
    }
  }

  else
  {
    v23 = sub_10000C7D0();
    if ((*(*v23 + 2200))(v23, &v30, __p, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E4CC();
      }
    }

    else
    {
      v24 = [NSData dataWithBytes:buf length:LOBYTE(__p[0])];
      v25 = *(a1 + 1584);
      *(a1 + 1584) = v24;

      *(a1 + 1592) = v30;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100744680;
      v29[3] = &unk_100B0B400;
      v29[4] = a1;
      sub_10074063C(a1, v29);
      v26 = sub_100007EE8();
      sub_10000CA94(v26, &stru_100B0B420);
    }
  }

  v27 = sub_10000C798();
  if ((*(*v27 + 352))(v27))
  {
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F024C(qword_100B54200, 0x10000u);
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F024C(qword_100B54200, 0x10001u);
  }

  return sub_10002249C(&v37);
}

void sub_100744084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_10002249C(&a25);
  _Unwind_Resume(a1);
}

void sub_1007440F4(uint64_t a1, int a2)
{
  if (byte_100B54ED8 != a2)
  {
    v6 = v2;
    v7 = v3;
    byte_100B54ED8 = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10076B9EC;
    v4[3] = &unk_100B0B8F8;
    v5 = a2;
    sub_10074063C(a1, v4);
  }
}

void sub_100744178(uint64_t a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v8 = sub_10000C7D0();
  if ((*(*v8 + 3144))(v8))
  {
    v9 = *(a1 + 336);
    v10 = -127;
    if (v9 != (a1 + 344))
    {
      do
      {
        v11 = sub_10004DF60(v9 + 25);
        v12 = sub_100742080(a1, v11);

        if (v12)
        {
          v13 = sub_10004DF60(v9 + 25);
          v14 = sub_100742080(a1, v13);

          if (v14 > v10)
          {
            v15 = sub_10004DF60(v9 + 25);
            v10 = sub_100742080(a1, v15);
          }
        }

        v16 = *(v9 + 1);
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
            v17 = *(v9 + 2);
            v23 = *v17 == v9;
            v9 = v17;
          }

          while (!v23);
        }

        v9 = v17;
      }

      while (v17 != (a1 + 344));
    }

    v18 = *(a1 + 1128);
    if (*(a1 + 1128))
    {
      v19 = *(a1 + 1128);
    }

    else
    {
      v19 = v10;
    }

    if (sub_1007423CC(a1, 3))
    {
      v20 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 736);
        v28 = 67109120;
        LODWORD(v29) = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FindMy object connection enabled, skipping Global RSSI. LastApplied =%d dBm)", &v28, 8u);
      }

      if (*(a1 + 736))
      {
        v19 = 0;
        a4 = 1;
      }
    }

    if (a4)
    {
      v22 = a3;
    }

    else
    {
      v22 = v19;
    }

    if ((a4 & 1) != 0 || (v19 == a3 ? (v23 = v18 == 0) : (v23 = 0), !v23))
    {
      *(a1 + 736) = v22;
      v24 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138544386;
        v29 = v7;
        v30 = 1024;
        v31 = -1;
        v32 = 1024;
        v33 = -1;
        v34 = 1024;
        v35 = -1;
        v36 = 1024;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Applying configureCreateConnection for device %{public}@ to connection filter accept list with option Timeout=%d, smartNotification=%d, connectRequestRetry=%d, minRssiToUpdate=%d", &v28, 0x24u);
      }

      v25 = sub_10000C7D0();
      v26 = (*(*v25 + 1952))(v25, 255, 255, 255, v22);
      if (v26)
      {
        v27 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 67109120;
          LODWORD(v29) = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "configureCreateConnection failed with error %d", &v28, 8u);
        }
      }
    }
  }
}

void sub_1007444D4(id a1)
{
  v8 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FastConnectionOverrideInstance");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v8);
  if (v8 > 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FastLEConnection:calling setMaxInstantUpdateForFastLEConnection with %d", buf, 8u);
  }

  v5 = sub_10000C7D0();
  (*(*v5 + 2224))(v5, v8);
}

void sub_100744644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007446B8(id a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v2 = off_100B508C8;

  sub_10078B92C(v2);
}

_BYTE *sub_1007446FC(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::stackWillStop enter", buf, 2u);
  }

  v3 = sub_100017E6C();
  sub_10036F1AC(v3 + 384, a1 + 16);
  v4 = sub_100017E6C();
  sub_100568C6C(v4 + 344, a1 + 88);
  v49 = 0;
  sub_1000216B4(&v49);
  if (sub_1002D359C())
  {
    sub_100022214(&v49);
    *(a1 + 1067) = 1;
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 352);
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trying to cancel all pending connections (%lu)", buf, 0xCu);
    }

    *buf = 0uLL;
    sub_100007F88(buf, a1 + 120);
    if (*(a1 + 352) && !sub_10074518C(a1, 1) && *(a1 + 1064) == 1 && !sub_10002220C((a1 + 1016), buf, 0x1388uLL))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E5A0();
      }

      v42 = sub_10000E92C();
      sub_100007E30(v48, "");
      sub_100693260(v42, 141, v48, 1);
    }

    sub_10000801C(buf);
    sub_1000618AC(&v49);
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to disconnect all LE connections", v51, 2u);
    }

    v8 = sub_1002D1EEC(sub_10074577C);
    if (v8)
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 67109120;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LE_GAP_DisconnectAll returned %{bluetooth:OI_STATUS}u", v51, 8u);
      }
    }

    sub_100022214(&v49);
    v10 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 67109120;
      v52 = 5000;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "waiting for all LE devices complete disconnection, timeout %d", v51, 8u);
    }

    sub_100007FB8(buf);
    if (!v8 && *(a1 + 1008) == 1 && !sub_10002220C((a1 + 960), buf, 0x1388uLL))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E5DC();
      }

      v41 = sub_10000E92C();
      sub_100007E30(v47, "");
      sub_100693260(v41, 141, v47, 1);
    }

    sub_10000801C(buf);
    byte_100BCECA8 = 0;
    byte_100BCECA9 = 0;
    sub_10002286C(&stru_100BCEBF8);
    sub_10002286C(&stru_100BCEBC8);
    v11 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No more LE connections", v51, 2u);
    }

    sub_10002286C(&stru_100BCECB0);
    byte_100BCED20 = 0;
    sub_1000618AC(&v49);
    if (sub_1002D08F0(8, v12, v13, v14, v15, v16, v17, v18) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086E618();
    }

    sub_1002CE3E4(off_100B0B320);
    sub_1002D05E8(sub_100743360);
    sub_100022214(&v49);
    sub_100007FB8(buf);
    *(a1 + 184) = 0;
    v19 = *(a1 + 384);
    v20 = (a1 + 392);
    if (v19 != (a1 + 392))
    {
      do
      {
        if (qword_100B54208 != -1)
        {
          sub_10086E578();
        }

        v21 = qword_100B54200;
        v22 = sub_10004DF60(v19 + 32);
        sub_1007F1548(v21, v22, 0);

        v23 = *(v19 + 1);
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
            v24 = *(v19 + 2);
            v25 = *v24 == v19;
            v19 = v24;
          }

          while (!v25);
        }

        v19 = v24;
      }

      while (v24 != v20);
    }

    sub_10000CEDC(a1 + 384, *(a1 + 392));
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = v20;
    v26 = *(a1 + 336);
    v27 = (a1 + 344);
    if (v26 != (a1 + 344))
    {
      do
      {
        if (qword_100B54208 != -1)
        {
          sub_10086E578();
        }

        v28 = qword_100B54200;
        v29 = sub_10004DF60(v26 + 25);
        sub_1007F1548(v28, v29, 0);

        v30 = *(v26 + 1);
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = *(v26 + 2);
            v25 = *v31 == v26;
            v26 = v31;
          }

          while (!v25);
        }

        v26 = v31;
      }

      while (v31 != v27);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 336) = v27;
    *v27 = 0u;
    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 360) = a1 + 368;
    *(a1 + 368) = 0u;
    sub_100773B78(a1 + 640, *(a1 + 648));
    *(a1 + 640) = a1 + 648;
    *(a1 + 648) = 0u;
    sub_10000CEDC(a1 + 664, *(a1 + 672));
    *(a1 + 664) = a1 + 672;
    *(a1 + 672) = 0u;
    sub_10000CEDC(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    *(a1 + 696) = 0u;
    sub_10000CEDC(a1 + 712, *(a1 + 720));
    *(a1 + 712) = a1 + 720;
    *(a1 + 720) = 0u;
    sub_10000CEDC(a1 + 408, *(a1 + 416));
    *(a1 + 408) = a1 + 416;
    *(a1 + 416) = 0u;
    sub_10000CEDC(a1 + 432, *(a1 + 440));
    *(a1 + 432) = a1 + 440;
    *(a1 + 440) = 0u;
    sub_10000CEDC(a1 + 840, *(a1 + 848));
    *(a1 + 840) = a1 + 848;
    *(a1 + 848) = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = *(a1 + 744);
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v33)
    {
      v34 = *v44;
      do
      {
        v35 = 0;
        do
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v43 + 1) + 8 * v35);
          if (qword_100B54208 != -1)
          {
            sub_10086E578();
          }

          sub_1007F1548(qword_100B54200, v36, 0);

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v33 = [v32 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v33);
    }

    [*(a1 + 744) removeAllObjects];
    [*(a1 + 752) removeAllObjects];
    [*(a1 + 760) removeAllObjects];
    [*(a1 + 768) removeAllObjects];
    [*(a1 + 776) removeAllObjects];
    [*(a1 + 784) removeAllObjects];
    [*(a1 + 792) removeAllObjects];
    [*(a1 + 824) removeAllObjects];
    sub_10000CEDC(a1 + 456, *(a1 + 464));
    *(a1 + 456) = a1 + 464;
    *(a1 + 464) = 0u;
    sub_10000CEDC(a1 + 480, *(a1 + 488));
    *(a1 + 480) = a1 + 488;
    *(a1 + 488) = 0u;
    sub_10000CEDC(a1 + 504, *(a1 + 512));
    *(a1 + 504) = a1 + 512;
    *(a1 + 512) = 0u;
    sub_10000CEDC(a1 + 528, *(a1 + 536));
    *(a1 + 528) = a1 + 536;
    *(a1 + 536) = 0u;
    sub_10000CEDC(a1 + 800, *(a1 + 808));
    *(a1 + 800) = a1 + 808;
    *(a1 + 808) = 0u;
    v37 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Setting initial connection state", v51, 2u);
    }

    sub_100745874(a1, 0);
    sub_100745C6C(a1, 0);
    sub_100745DEC(a1);
    sub_100745EFC(a1);
    sub_10007A490(a1 + 936, *(a1 + 944));
    *(a1 + 936) = a1 + 944;
    *(a1 + 944) = 0u;
    *(a1 + 328) = 0;
    sub_1003C46E0(a1 + 1160, *(a1 + 1168));
    *(a1 + 1160) = a1 + 1168;
    *(a1 + 1168) = 0u;
    sub_10004B61C(a1 + 1192, *(a1 + 1200));
    *(a1 + 1192) = a1 + 1200;
    *(a1 + 1200) = 0u;
    sub_10004B61C(a1 + 1360, *(a1 + 1368));
    *(a1 + 1360) = a1 + 1368;
    *(a1 + 1368) = 0u;
    sub_10000CEDC(a1 + 1400, *(a1 + 1408));
    *(a1 + 1400) = a1 + 1408;
    *(a1 + 1408) = 0u;
    sub_10000CEDC(a1 + 1136, *(a1 + 1144));
    *(a1 + 1136) = a1 + 1144;
    *(a1 + 1144) = 0u;
    sub_1005B0DAC(a1 + 32);
    sub_100773BDC(a1 + 1448, *(a1 + 1456));
    *(a1 + 1448) = a1 + 1456;
    *(a1 + 1456) = 0u;
    sub_100773BDC(a1 + 1472, *(a1 + 1480));
    *(a1 + 1472) = a1 + 1480;
    *(a1 + 1480) = 0u;
    sub_100745F94(a1);
    v38 = sub_10000C7D0();
    (*(*v38 + 4328))(v38);
    [*(a1 + 1536) stopActivityUpdates];
    v39 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::stackWillStop exit", v51, 2u);
    }

    sub_1000088CC(buf);
  }

  return sub_10002249C(&v49);
}

void sub_1007450F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v33 - 112);
  sub_10002249C(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10074518C(uint64_t a1, int a2)
{
  v50[0] = 0;
  v50[1] = 0;
  sub_100007F88(v50, a1 + 120);
  v4 = *(a1 + 352);
  if (a2)
  {
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing fDevicesToAddToFilterAcceptList", buf, 2u);
    }

    [*(a1 + 768) removeAllObjects];
  }

  if (*(a1 + 864) == 1)
  {
    if (v4)
    {
      v6 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "connections";
        if (v4 == 1)
        {
          v7 = "connection";
        }

        *buf = 134218242;
        *&buf[4] = v4;
        *&buf[12] = 2082;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling %lu pending %{public}s", buf, 0x16u);
      }

      v49 = 0;
      v8 = sub_1000216B4(&v49);
      v16 = sub_1002D0A0C(v8, v9, v10, v11, v12, v13, v14, v15);
      sub_100022214(&v49);
      if ((v16 - 1301) >= 2)
      {
        if (!v16)
        {
          sub_100745874(a1, 2u);
LABEL_25:
          sub_10002249C(&v49);
          goto LABEL_26;
        }

        if (v16 != 3704)
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_10086E6B0();
          }

          v42 = sub_10000E92C();
          sub_100693F74(v42, 1);
        }
      }

      v17 = *(a1 + 872);
      v18 = *(a1 + 880);
      v47 = 0;
      v48 = 0;
      *buf = 0;
      sub_100016250(buf);
      v19 = 1000 * (*buf - *(a1 + 872)) - *(a1 + 880) + *&buf[4];
      v47 = v19 / 0x3E8;
      v48 = v19 % 0x3E8;
      v20 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 864);
        v29 = v28 > 4 ? "UNKNOWN" : (&off_100B0BF80)[v28];
        sub_1004F5248(&v47, __p);
        v30 = v46 >= 0 ? __p : __p[0];
        v31 = *(a1 + 888);
        *buf = 67109890;
        *&buf[4] = v16;
        *&buf[8] = 2082;
        *&buf[10] = v29;
        *&buf[18] = 2082;
        *&buf[20] = v30;
        *&buf[28] = 1024;
        *&buf[30] = v31;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to cancel connection(s) with result %{bluetooth:OI_STATUS}u (state %{public}s,%{public}ssec %d errors)", buf, 0x22u);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v16 == 1301)
      {
        v21 = ++*(a1 + 888);
        if (v21 >= 2)
        {
          v22 = (v18 + 60000) / 0x3E8uLL;
          *&buf[6] = 0;
          *buf = v17 + v22;
          *&buf[4] = v18 - 5536 - 1000 * v22;
          if (sub_100306E3C(buf))
          {
            v23 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              v24 = *(a1 + 864);
              if (v24 > 4)
              {
                v25 = "UNKNOWN";
              }

              else
              {
                v25 = (&off_100B0BF80)[v24];
              }

              sub_1004F5248(&v47, __p);
              v32 = v46;
              v33 = __p[0];
              sub_1004F5248((a1 + 872), v43);
              v34 = __p;
              if (v32 < 0)
              {
                v34 = v33;
              }

              if (v44 >= 0)
              {
                v35 = v43;
              }

              else
              {
                v35 = v43[0];
              }

              v36 = *(a1 + 888);
              *buf = 136446978;
              *&buf[4] = v25;
              *&buf[12] = 2082;
              *&buf[14] = v34;
              *&buf[22] = 2082;
              *&buf[24] = v35;
              *&buf[32] = 1024;
              v52 = v36;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "ABORTING TO RECOVER - %{public}s %{public}ssec (%{public}s) %d errors", buf, 0x26u);
              if (v44 < 0)
              {
                operator delete(v43[0]);
              }

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v37 = sub_10000E92C();
            if ((*(*v37 + 8))(v37))
            {
              if (qword_100B53FE8 != -1)
              {
                sub_10086E688();
              }

              v38 = qword_100B53FE0;
              sub_100007E30(buf, "Failed to cancel all pending connection/s");
              v39 = *(a1 + 864);
              if (v39 > 4)
              {
                v40 = "UNKNOWN";
              }

              else
              {
                v40 = (&off_100B0BF80)[v39];
              }

              sub_100007E30(__p, v40);
              sub_1005780BC(v38, buf, __p, 0.0);
              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v41 = sub_10000E92C();
            sub_100693F74(v41, 1);
          }
        }
      }

      goto LABEL_25;
    }
  }

  else
  {
    v26 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cannot cancel connections when not in connecting state", buf, 2u);
    }
  }

  v16 = 408;
LABEL_26:
  sub_1000088CC(v50);
  return v16;
}

void sub_1007456F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a24);
  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

void sub_10074577C(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE All Disconnected with status %d", buf, 8u);
  }

  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10076CF5C;
  v4[3] = &unk_100AE0900;
  v5 = a1;
  sub_10000CA94(v3, v4);
}

void sub_100745874(uint64_t a1, unsigned int a2)
{
  sub_1007440F4(a1, *(a1 + 352) != 0);
  if (*(a1 + 864) == a2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10086E720();
    }
  }

  else
  {
    *__str = 0;
    sub_100016250(__str);
    v4 = *__str;
    v5 = *&__str[4];
    v6 = *(a1 + 872);
    v7 = *(a1 + 880);
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 1000 * (v4 - v6) - v7 + v5;
      v10 = *(a1 + 864);
      v11 = v10 > 4 ? "UNKNOWN" : (&off_100B0BF80)[v10];
      memset(__str, 0, 64);
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9 / 0x3E8, v9 % 0x3E8);
      sub_100007E30(__p, __str);
      v12 = v25 >= 0 ? __p : __p[0];
      v13 = a2 > 4 ? "UNKNOWN" : (&off_100B0BF80)[a2];
      v14 = *(a1 + 888);
      v15 = *(a1 + 928);
      v16 = v15 > 3 ? "UNKNOWN" : (&off_100B0BF60)[v15];
      *__str = 136448002;
      *&__str[4] = v11;
      *&__str[12] = 1024;
      *&__str[14] = v10;
      *&__str[18] = 2082;
      *&__str[20] = v12;
      *&__str[28] = 1024;
      *&__str[30] = v14;
      *&__str[34] = 2082;
      *&__str[36] = v13;
      *&__str[44] = 1024;
      *&__str[46] = a2;
      *&__str[50] = 2082;
      *&__str[52] = v16;
      *&__str[60] = 1024;
      *&__str[62] = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting new connection state %{public}s(%d), %{public}ssec, %d errs --> %{public}s(%d), Connection Manager %{public}s(%d)", __str, 0x42u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__str = 0;
    sub_100016250(__str);
    v17 = *&__str[4];
    *(a1 + 872) = *__str;
    *(a1 + 880) = v17;
    *(a1 + 864) = a2;
    *(a1 + 888) = 0;
    if (a2 != 1)
    {
      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      sub_1005BC904(off_100B50908, 0);
      *__str = 0;
      *&__str[8] = 0;
      *&__str[16] = CFAbsoluteTimeGetCurrent();
      __str[0] = 0;
      v18 = sub_10000F034();
      (*(*v18 + 816))(v18, __str);
      v19 = *(a1 + 864);
      if (v19 == 4)
      {
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "autoReconnect caused pausing", __str, 2u);
        }

        sub_10076B770(a1);
      }

      else if (!v19)
      {
        v20 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Idle, checking Connection Manager state", __str, 2u);
        }

        v21 = *(a1 + 928);
        if (v21 == 3)
        {
          sub_100745C6C(a1, 0);
        }

        else if (v21 == 1)
        {
          sub_100745C6C(a1, 2u);
        }

        else
        {
          v23 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *__str = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Connection Manager state is settled", __str, 2u);
          }
        }
      }
    }
  }
}

void sub_100745C6C(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 928);
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[v5];
    }

    if (a2 > 3)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = (&off_100B0BF60)[a2];
    }

    v8 = *(a1 + 864);
    if (v8 > 4)
    {
      v9 = "UNKNOWN";
    }

    else
    {
      v9 = (&off_100B0BF80)[v8];
    }

    v11 = 136447490;
    v12 = v6;
    v13 = 1024;
    v14 = v5;
    v15 = 2082;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    v19 = 2082;
    v20 = v9;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting new Connection Manager State %{public}s(%d) --> %{public}s(%d) Connection %{public}s(%d)", &v11, 0x32u);
  }

  *(a1 + 928) = a2;
  if (!a2)
  {
    sub_1005B0DAC(a1 + 32);
    v10 = &stru_100B0B958;
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v10 = &stru_100B0B938;
LABEL_16:
    sub_10074063C(a1, v10);
    return;
  }

  sub_1005B0E88(a1 + 32);
}

void sub_100745DEC(uint64_t a1)
{
  v1 = *(a1 + 896);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 896)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 896) = 0;
  }
}

void sub_100745EFC(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1)
  {
    *(a1 + 560) = 0;
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling Fast connection scan Timer", v5, 2u);
      v1 = *(a1 + 552);
    }

    [v1 invalidate];
    v4 = *(a1 + 552);
    *(a1 + 552) = 0;
  }
}

void sub_100745F94(uint64_t a1)
{
  v1 = *(a1 + 1512);
  if (v1)
  {
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: fLeConnectionDenyListMaintainTimer destroyed!", v4, 2u);
      v1 = *(a1 + 1512);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1512));
    *(a1 + 1512) = 0;
  }
}

void sub_100746040(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007460BC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_1007460BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  v3 = (v1 + 392);
  if (v2 != (v1 + 392))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v4 = off_100B508C8;
      v5 = sub_10004DF60(v2 + 32);
      LODWORD(v4) = sub_100788ED8(v4, v5);

      if (v4)
      {
        v6 = sub_10000C7D0();
        if (qword_100B508D0 != -1)
        {
          sub_10086E034();
        }

        v7 = off_100B508C8;
        v8 = sub_10004DF60(v2 + 32);
        v9 = sub_100046458(v7, v8, 0);
        (*(*v6 + 320))(v6, 0, 1, v9, 1);
      }

      else
      {
        v8 = sub_10004DF60(v2 + 32);
        sub_100746764(v1, v8);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v10 = off_100B508C8;
      v11 = sub_10004DF60(v2 + 32);
      LODWORD(v10) = sub_10078DEFC(v10, v11);

      if (v10)
      {
        v12 = sub_10004DF60(v2 + 32);
        sub_100746890(v1, v12);
      }

      v13 = *(v2 + 1);
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
          v14 = *(v2 + 2);
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  v16 = *(v1 + 336);
  if (v16 == (v1 + 344))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    while (1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v18 = off_100B508C8;
      v19 = sub_10004DF60(v16 + 25);
      v20 = sub_100790420(v18, v19);

      if (v20)
      {
        break;
      }

      v21 = *(v16 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v16 + 2);
          v15 = *v22 == v16;
          v16 = v22;
        }

        while (!v15);
      }

      v17 |= v20;
      v16 = v22;
      if (v22 == (v1 + 344))
      {
        goto LABEL_33;
      }
    }

    v17 = 1;
  }

LABEL_33:
  v23 = sub_100432950();
  v24 = v23;
  if (v23)
  {
    [v23 enableSystemWakesForUpdate:v17 & 1 completion:&stru_100B0B440];
  }

  v25 = _os_feature_enabled_impl();
  v26 = sub_10000C798();
  if ((*(*v26 + 368))(v26) && (v27 = sub_10000C798(), (*(*v27 + 1008))(v27)) && !(v25 & 1 | ((*(v1 + 633) & 1) == 0)))
  {
    if (*(v1 + 520))
    {
      v47 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Subrate Change Event not masked since connection subrating transactions are pending.", buf, 2u);
      }
    }

    else
    {
      sub_100746C1C(v1, 0);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_10086E7B0();
      }
    }
  }

  else
  {
    v28 = sub_10000C798();
    if ((*(*v28 + 368))(v28))
    {
      v29 = sub_10000C798();
      if ((*(*v29 + 1008))(v29))
      {
        if (*(v1 + 633) & v25)
        {
          v30 = *(v1 + 384);
          if (v30 != v3)
          {
            v31 = (v1 + 512);
            do
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v32 = off_100B508C8;
              v33 = sub_10004DF60(v30 + 32);
              LODWORD(v32) = sub_100788ED8(v32, v33);

              if (v32)
              {
                v34 = *v31;
                if (!*v31)
                {
                  goto LABEL_54;
                }

                v35 = *(v30 + 6);
                v36 = (v1 + 512);
                do
                {
                  v37 = v34[4];
                  v38 = v37 >= v35;
                  v39 = v37 < v35;
                  if (v38)
                  {
                    v36 = v34;
                  }

                  v34 = v34[v39];
                }

                while (v34);
                if (v36 != v31 && v35 >= v36[4])
                {
                  v44 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v51 = v35;
                    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Event Masking for Subrating not set to 0 since connection subrating transactions are pending for handle %p", buf, 0xCu);
                  }
                }

                else
                {
LABEL_54:
                  v40 = sub_10000C7D0();
                  LOBYTE(v51) = 0;
                  *buf = 0;
                  v48 = 1024;
                  v49 = 0;
                  v41 = (*(*v40 + 3320))(v40, buf, &v48, *(v30 + 6));
                  v42 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                  {
                    v43 = *(v30 + 6);
                    *buf = 134218240;
                    v51 = v43;
                    v52 = 1024;
                    v53 = v41;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Event Masking for Subrating set to 0 for handle %p with result: %{bluetooth:BTResult}u", buf, 0x12u);
                  }
                }
              }

              v45 = *(v30 + 1);
              if (v45)
              {
                do
                {
                  v46 = v45;
                  v45 = *v45;
                }

                while (v45);
              }

              else
              {
                do
                {
                  v46 = *(v30 + 2);
                  v15 = *v46 == v30;
                  v30 = v46;
                }

                while (!v15);
              }

              v30 = v46;
            }

            while (v46 != v3);
          }
        }
      }
    }
  }
}

uint64_t sub_100746764(uint64_t a1, void *a2)
{
  v2 = a2;
  if (sub_100746EC0(v2, v2))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    if (sub_10078CF60(off_100B508C8, v2))
    {
      v3 = sub_10000C7D0();
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v4 = sub_100046458(off_100B508C8, v2, 0);
      (*(*v3 + 320))(v3, 0, 1, v4, 1);
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078CED4(off_100B508C8, v2, 0);
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078CFD4(off_100B508C8, v2);
    }
  }

  return 0;
}

uint64_t sub_100746890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000E92C();
  if (((*(*v4 + 8))(v4) & 1) == 0)
  {
    v5 = sub_10000E92C();
    if (((*(*v5 + 488))(v5) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v14 = 0;
  if (!v3)
  {
    v11 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v12 = "disableHIDLatencyStats -- device is NULL";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_21;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_10078DEFC(off_100B508C8, v3))
  {
    v11 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v12 = "disableHIDLatencyStats -- does not have HID service";
    goto LABEL_20;
  }

  sub_10004DFB4(buf, v3);
  if (!sub_1000C4FCC(a1, buf, &v14))
  {
    v11 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "disableHIDLatencyStats -- cannot get connection handle";
      goto LABEL_20;
    }

LABEL_21:
    v10 = 1;
    goto LABEL_22;
  }

  v6 = v14;
  v7 = sub_100255698(v14);
  v8 = sub_10000F034();
  (*(*v8 + 592))(v8, v6, v7);
  v9 = sub_10000C7D0();
  if ((*(*v9 + 1032))(v9, v7, 1, 0))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10004FFDC(off_100B508C8, v3, buf);
      sub_10086E820();
    }

    goto LABEL_21;
  }

LABEL_13:
  v10 = 0;
LABEL_22:

  return v10;
}

void sub_100746B78(id a1, NSError *a2)
{
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enableSystemWakesForUpdate returned %@", &v4, 0xCu);
  }
}

uint64_t sub_100746C1C(uint64_t a1, int a2)
{
  v13 = *(a1 + 1593);
  v2 = BYTE4(v13);
  if (a2)
  {
    BYTE4(v13) |= 4u;
    if ((v2 | 4) != v2)
    {
      v12 = 0;
      sub_1000216B4(&v12);
      v9 = sub_10074E0F8;
      goto LABEL_7;
    }

    return 0;
  }

  BYTE4(v13) &= ~4u;
  if ((v2 & 0xFFFFFFFB) == v2)
  {
    return 0;
  }

  v12 = 0;
  sub_1000216B4(&v12);
  v9 = sub_10074E1B4;
LABEL_7:
  v10 = sub_100018960(162, v9, v3, v4, v5, v6, v7, v8, &v13);
  if (v10 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E87C();
  }

  sub_10002249C(&v12);
  return v10;
}

uint64_t sub_100746D6C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!sub_100746EC0(v2, v2))
  {
    goto LABEL_13;
  }

  sub_10000C7D0();
  v3 = sub_1004135C8();
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (sub_10078E118(off_100B508C8) >= v3)
  {
    goto LABEL_13;
  }

  v4 = sub_10000C7D0();
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v5 = sub_100046458(off_100B508C8, v2, 0);
  v6 = (*(*v4 + 320))(v4, 1, 1, v5, 1);
  if (!v6)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    sub_10078CED4(off_100B508C8, v2, 1);
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E8EC();
  }

LABEL_14:

  return v6;
}

uint64_t sub_100746EC0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = sub_100788D8C(off_100B508C8, v2);
  v4 = sub_10000C798();
  if ((*(*v4 + 360))(v4))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v5 = off_100B508C8;
    sub_100007E30(__p, "BluetoothTVRemote");
    v6 = sub_10004EB40(v5, v2, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = (v3 & 0xFFFF0000) == 0x10000;
  v8 = byte_100BC7AE1;
  v9 = sub_10000C7D0();
  if (!sub_1000ABD54(v9))
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = sub_10000E92C();
  if (((*(*v10 + 480))(v10) | v6))
  {
    v11 = 1;
    goto LABEL_13;
  }

  v11 = 1;
  if (v3 <= 131102)
  {
    if (v3 == 19 || v3 == 21)
    {
      goto LABEL_13;
    }
  }

  else if (v3 == 131103 || v3 == 196608 || v3 == 655360)
  {
    goto LABEL_13;
  }

  v13 = sub_10000F034();
  if (((*(*v13 + 544))(v13, v2) & 1) == 0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v14 = off_100B508C8;
    sub_100007E30(v15, "_HID_DEVICE_");
    v11 = sub_10004EB40(v14, v2, v15) | v7 & v8;
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

LABEL_13:

  return v11 & 1;
}

void sub_1007470F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10074713C(uint64_t a1, const unsigned __int8 **a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Multiple devices addresses changed", buf, 2u);
  }

  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    *&v5 = 136446466;
    v21 = v5;
    do
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0u;
        memset(v29, 0, sizeof(v29));
        uuid_unparse_upper(v7 + 25, buf);
        sub_100007E30(__p, buf);
        v10 = v23;
        v11 = __p[0];
        v12 = sub_10074738C(a1, v7 + 25);
        v13 = __p;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *v24 = v21;
        v25 = v13;
        v14 = "NO";
        if (v12)
        {
          v14 = "YES";
        }

        v26 = 2082;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}s addresses changed connecting:%{public}s", v24, 0x16u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10074738C(a1, v7 + 25))
      {
        v15 = *(a1 + 784);
        v16 = sub_10004DF60(v7 + 25);
        [v15 addObject:v16];
      }

      v17 = *(v7 + 1);
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
          v18 = *(v7 + 2);
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v6);
  }

  if ([*(a1 + 784) count])
  {
    sub_10074518C(a1, 0);
  }

  return 0;
}

void sub_10074735C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074738C(void *a1, unsigned __int8 *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 15));
  if (a1 + 43 != sub_1005FF344((a1 + 42), a2) || (v4 = a1[94], sub_10004DF60(a2), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = [v4 containsObject:v5], v5, (v4 & 1) != 0) || (v6 = a1[95], sub_10004DF60(a2), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "containsObject:", v7), v7, (v6 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v10 = a1[96];
    v11 = sub_10004DF60(a2);
    v8 = [v10 containsObject:v11];
  }

  sub_1000088CC(v12);
  return v8;
}

void sub_1007474B0(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10074752C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_10074752C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  v3 = (v1 + 392);
  if (v2 != (v1 + 392))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v4 = off_100B508C8;
      v5 = sub_10004DF60(v2 + 32);
      LODWORD(v4) = sub_100788ED8(v4, v5);

      if (v4)
      {
        v6 = sub_10000C7D0();
        if (qword_100B508D0 != -1)
        {
          sub_10086E034();
        }

        v7 = off_100B508C8;
        v8 = sub_10004DF60(v2 + 32);
        v9 = sub_100046458(v7, v8, 0);
        (*(*v6 + 320))(v6, 1, 1, v9, 1);
      }

      else
      {
        v8 = sub_10004DF60(v2 + 32);
        sub_100746D6C(v1, v8);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v10 = off_100B508C8;
      v11 = sub_10004DF60(v2 + 32);
      LODWORD(v10) = sub_10078DEFC(v10, v11);

      if (v10)
      {
        v12 = sub_10004DF60(v2 + 32);
        sub_100747A10(v1, v12, 0);
      }

      v13 = *(v2 + 1);
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
          v14 = *(v2 + 2);
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  sub_100747D7C(v1);
  v16 = _os_feature_enabled_impl();
  v17 = *sub_10000C798();
  if (((*(v17 + 368))() & 1) != 0 && (v18 = sub_10000C798(), (*(*v18 + 1008))(v18)) && !(v16 & 1 | ((*(v1 + 633) & 1) == 0)))
  {
    sub_100746C1C(v1, 1);
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10086E95C();
    }
  }

  else
  {
    v19 = sub_10000C798();
    if ((*(*v19 + 368))(v19))
    {
      v20 = sub_10000C798();
      if ((*(*v20 + 1008))(v20))
      {
        if (*(v1 + 633) & v16)
        {
          v21 = *(v1 + 384);
          if (v21 != v3)
          {
            do
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v22 = off_100B508C8;
              v23 = sub_10004DF60(v21 + 32);
              LODWORD(v22) = sub_100788ED8(v22, v23);

              if (v22)
              {
                v24 = sub_10000C7D0();
                LOBYTE(v33) = 0;
                *buf = 0;
                v30 = 1024;
                v31 = 0;
                v25 = (*(*v24 + 3328))(v24, buf, &v30, *(v21 + 6));
                v26 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                {
                  v27 = *(v21 + 6);
                  *buf = 134218240;
                  v33 = v27;
                  v34 = 1024;
                  v35 = v25;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Event Masking for Subrating set to 0 for handle %p with result: %{bluetooth:BTResult}u", buf, 0x12u);
                }
              }

              v28 = *(v21 + 1);
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = *(v21 + 2);
                  v15 = *v29 == v21;
                  v21 = v29;
                }

                while (!v15);
              }

              v21 = v29;
            }

            while (v29 != v3);
          }
        }
      }
    }
  }
}

uint64_t sub_100747A10(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_10000E92C();
  if (((*(*v6 + 8))(v6) & 1) == 0)
  {
    v7 = sub_10000E92C();
    if (((*(*v7 + 488))(v7) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v18 = 0;
  if (!v5)
  {
    v14 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v15 = "enableHIDLatencyStats -- device is NULL";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    goto LABEL_22;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_10078DEFC(off_100B508C8, v5))
  {
    v14 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v15 = "enableHIDLatencyStats -- does not have HID service";
    goto LABEL_21;
  }

  sub_10004DFB4(buf, v5);
  if (sub_1000C4FCC(a1, buf, &v18))
  {
    v8 = v18;
    v9 = sub_100255698(v18);
    if (a3)
    {
      v10 = sub_10000F034();
      (*(*v10 + 568))(v10, v8, v9);
    }

    sub_10004DFB4(buf, v5);
    v11 = sub_10074F2BC(a1, buf);
    v12 = sub_10000F034();
    (*(*v12 + 576))(v12, v9, v8, 2, v11);
    v13 = sub_10000C7D0();
    if ((*(*v13 + 1032))(v13, v9, 1, 1))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10004FFDC(off_100B508C8, v5, buf);
        sub_10086E9CC();
      }

      goto LABEL_22;
    }

    if (a3)
    {
      sub_100746D6C(a1, v5);
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v14 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "enableHIDLatencyStats -- cannot get connection handle";
    goto LABEL_21;
  }

LABEL_22:
  v16 = 1;
LABEL_26:

  return v16;
}

void sub_100747D7C(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10074F5B8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100747E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v15 = [v3 startDate];
      if (v15)
      {
        v2 = [v3 startDate];
        v16 = [v4 stringFromDate:v2];
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v16 = @"nil";
      }
    }

    else
    {
      v17 = 0;
      v16 = @"nil";
    }

    if ([v3 walking])
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if ([v3 cycling])
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if ([v3 running])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if ([v3 stationary])
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = [v3 unknown];
    v11 = [v3 automotive];
    if (v10)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    *buf = 138413826;
    if (v11)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v19 = v16;
    v20 = 2080;
    v21 = v6;
    v22 = 2080;
    v23 = v7;
    v24 = 2080;
    v25 = v8;
    v26 = 2080;
    v27 = v9;
    v28 = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "==== motion: activity.startDate:%@ walking:%s cycling:%s running:%s stationary:%s unknown:%s automotive:%s", buf, 0x48u);
    if (v17)
    {
    }

    if (v3)
    {
    }
  }
}

id sub_100748090(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 336);
  if (v3 != (v2 + 344))
  {
    a2.n128_u64[0] = 136446210;
    v14 = a2;
    do
    {
      v4 = sub_10004DF60(v3 + 25);
      v5 = sub_10074827C(v2, v4);

      if (v5)
      {
        v6 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          memset(out, 0, 37);
          uuid_unparse_upper(v3 + 25, out);
          sub_100007E30(__p, out);
          v7 = v16 >= 0 ? __p : __p[0];
          *out = v14.n128_u32[0];
          *&out[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "motion detected, device to update %{public}s", out, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v8 = *(v2 + 792);
        v9 = sub_10004DF60(v3 + 25);
        [v8 addObject:v9];
      }

      v10 = *(v3 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v3 + 2);
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != (v2 + 344));
  }

  result = [*(v2 + 792) count];
  if (result)
  {
    sub_100747E00(result, *(v2 + 1528));
    return sub_10074518C(v2, 0);
  }

  return result;
}

BOOL sub_10074827C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v4 = [v3 UUIDString];
  sub_100007E30(v15, [v4 UTF8String]);

  if (SHIBYTE(v16) < 0)
  {
    sub_100008904(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v14 = v16;
  }

  v5 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v5 + 56);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_10076A41C(a1, v3);
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15;
    if (v16 < 0)
    {
      v9 = v15[0];
    }

    *buf = 136446722;
    v18 = v9;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateLeConnectionRSSIThresholdState for %{public}s from %d to %d ", buf, 0x18u);
  }

  if (v6 != v7)
  {
    if (v7 == 2)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086EA28();
      }
    }

    else
    {
      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v11, v15[0], v15[1]);
      }

      else
      {
        *v11 = *v15;
        v12 = v16;
      }

      sub_10076A184(a1, v11, v7);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v6 != v7;
}

void sub_10074849C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100748508(uint64_t a1, unint64_t a2)
{
  v20 = a2;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (sub_100748908(a1, a2, uu))
  {
    v4 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_100788ED8(off_100B508C8, v4))
    {
      if ((*(a1 + 632) & 1) == 0)
      {
        v5 = sub_10000C798();
        if ((*(*v5 + 368))(v5))
        {
          v6 = sub_10000C798();
          if ((*(*v6 + 1008))(v6))
          {
            if (*(a1 + 633) == 1)
            {
              v7 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode enabled; Requesting subrating on magnet link", buf, 2u);
              }

              if (qword_100B508B0 != -1)
              {
                sub_10086DE54();
              }

              sub_1007489DC(off_100B508A8, v4, -13, 1);
            }

            else
            {
              v8 = *(a1 + 536);
              if (v8)
              {
                v9 = a1 + 536;
                do
                {
                  v10 = *(v8 + 32);
                  v11 = v10 >= a2;
                  v12 = v10 < a2;
                  if (v11)
                  {
                    v9 = v8;
                  }

                  v8 = *(v8 + 8 * v12);
                }

                while (v8);
                if (v9 != a1 + 536 && *(v9 + 32) <= a2)
                {
                  v13 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                  {
                    v21 = &v20;
                    v14 = *(sub_10077444C(a1 + 528, &v20) + 23);
                    v21 = &v20;
                    v15 = *(sub_10077444C(a1 + 528, &v20) + 21);
                    v21 = &v20;
                    v16 = *(sub_10077444C(a1 + 528, &v20) + 24);
                    v21 = &v20;
                    v17 = *(sub_10077444C(a1 + 528, &v20) + 22);
                    v21 = &v20;
                    v18 = *(sub_10077444C(a1 + 528, &v20) + 13);
                    *buf = 134219264;
                    *&buf[4] = a2;
                    v23 = 1024;
                    v24 = v14;
                    v25 = 1024;
                    v26 = v15;
                    v27 = 1024;
                    v28 = v16;
                    v29 = 1024;
                    v30 = v17;
                    v31 = 1024;
                    v32 = v18;
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode not enabled. Found configured parameters for handle %p. Subrate factor:%d Peripheral latency:%d Continuation Number=%d Supervision Timeout=%d. Subrating Status: %d", buf, 0x2Au);
                  }

                  *buf = &v20;
                  if (*(sub_10077444C(a1 + 528, &v20) + 13))
                  {
                    v19 = qword_100BCE980;
                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "setMagnetLatencyForLowPowerMode: Low power mode disabled while LE Connection is subrated. Exiting subrating on magnet link", buf, 2u);
                    }

                    if (qword_100B508B0 != -1)
                    {
                      sub_10086DE54();
                    }

                    sub_1007489DC(off_100B508A8, v4, -2, 1);
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

uint64_t sub_100748908(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 120);
  v6 = *(a1 + 384);
  if (v6 == (a1 + 392))
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    while (*(v6 + 6) != a2)
    {
      v7 = *(v6 + 1);
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
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 392))
      {
        goto LABEL_9;
      }
    }

    uuid_copy(a3, v6 + 32);
    v10 = 1;
  }

  sub_1000088CC(v12);
  return v10;
}

uint64_t sub_1007489DC(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v71 = 0;
  if (sub_10074E528(a1, v7, a3))
  {
    v63[0] = 0;
    v63[1] = 0;
    sub_100007F88(v63, a1 + 120);
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1003BE228(a3);
      *buf = 136446466;
      *&buf[4] = v9;
      v74 = 2114;
      *v75 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setConnectionLatency %{public}s to device %{public}@", buf, 0x16u);
    }

    sub_10004DFB4(buf, v7);
    v10 = sub_10004E34C(a1 + 384, buf);
    if (a1 + 392 == v10)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086ECD8();
      }

      v11 = 3;
      goto LABEL_90;
    }

    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v71 = *(v10 + 48);
    v11 = sub_10074DD24(a1, a3, &v70 + 1, &v70, &v68, &v68 + 1, &v69 + 1, &v69, &v67 + 1, &v67, &v66 + 1, &v66, &v65, &v64 + 1, &v64);
    if (v11)
    {
      goto LABEL_90;
    }

    if (a3 == -2)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      if (!sub_100788ED8(off_100B508C8, v7))
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_10086EA98();
        }

        goto LABEL_86;
      }

      v12 = sub_10000C7D0();
      if ((*(*v12 + 3248))(v12))
      {
        v13 = *(a1 + 536);
        if (!v13)
        {
          goto LABEL_94;
        }

        v14 = a1 + 536;
        do
        {
          v15 = *(v13 + 32);
          v16 = v15 >= v71;
          v17 = v15 < v71;
          if (v16)
          {
            v14 = v13;
          }

          v13 = *(v13 + 8 * v17);
        }

        while (v13);
        if (v14 != a1 + 536 && v71 >= *(v14 + 32) && (*buf = &v71, *(sub_10077444C(a1 + 528, &v71) + 13) == 2))
        {
          v18 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v7;
            v74 = 1024;
            *v75 = 1;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Magnet link to %{public}@ is currently subrated. Switching to un-subrated link without parameter update (using a subrate factor of %d).", buf, 0x12u);
          }

          v64 = 256;
        }

        else
        {
LABEL_94:
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            sub_10086EB78();
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_10086EB08();
      }
    }

    v19 = v64;
    if (v64 == 1)
    {
      if (a4)
      {
        if (!sub_1000BE280(v71))
        {
          goto LABEL_59;
        }

LABEL_38:
        v20 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_1003BE228(a3);
          *buf = 136446466;
          *&buf[4] = v21;
          v74 = 2114;
          *v75 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting connection latency to %{public}s for device %{public}@", buf, 0x16u);
        }

        sub_10004DFB4(buf, v7);
        if (a1 + 848 == sub_100774BCC(a1 + 840, buf))
        {
          v26 = 0;
          v24 = 0x60006001E0006;
          v23 = 2;
          v25 = 4;
        }

        else
        {
          sub_10004DFB4(buf, v7);
          v72[0] = buf;
          if (*(sub_100774C48(a1 + 840, buf) + 44) != 2 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            sub_10086EBE8();
          }

          sub_10004DFB4(buf, v7);
          v72[0] = buf;
          v22 = sub_100774C48(a1 + 840, buf);
          v23 = *(v22 + 44);
          v24 = *(v22 + 50);
          v25 = *(v22 + 60);
          v26 = *(v22 + 76);
        }

        v27 = HIWORD(v70);
        v28 = HIWORD(v69);
        v59 = v69;
        v60 = v70;
        v62 = 0;
        sub_1000216B4(&v62);
        sub_10004DFB4(buf, v7);
        v72[0] = buf;
        v29 = sub_100774C48(a1 + 840, buf);
        v30 = v27 * 1.25;
        *(v29 + 44) = v23;
        v31 = v60 * 1.25;
        *(v29 + 48) = 256;
        *(v29 + 50) = v24;
        *(v29 + 58) = v28;
        *(v29 + 60) = v25;
        *(v29 + 62) = v59;
        *(v29 + 64) = v30;
        *(v29 + 68) = v31;
        *(v29 + 72) = v31;
        *(v29 + 76) = v26;
        v32 = qword_100BCE980;
        v33 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        v34 = v68;
        v35 = HIWORD(v68);
        if (v33)
        {
          *buf = 138544898;
          *&buf[4] = v7;
          v74 = 2048;
          *v75 = v30;
          *&v75[8] = 2048;
          *v76 = v31;
          *&v76[8] = 1024;
          *&v76[10] = v28;
          *&v76[14] = 1024;
          *&v76[16] = v68;
          v77 = 1024;
          v78 = HIWORD(v68);
          v79 = 1024;
          v80 = v59;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Trying to update connection parameters for device %{public}@ minInterval:%.3f maxInterval:%.3f peripheralLatency:%d minCE=%d maxCE=%d timeout:%d", buf, 0x38u);
        }

        v36 = sub_1002D1C8C(v71, v27, v60, v28, (52429 * v59) >> 19, v34, v35);
        v19 = 1;
        v37 = v36;
        sub_100022214(&v62);
        if (v37)
        {
          if (v37 != 4170)
          {
            v38 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219008;
              *&buf[4] = v30;
              v74 = 2048;
              *v75 = v31;
              *&v75[8] = 1024;
              *v76 = v28;
              *&v76[4] = 1024;
              *&v76[6] = v59;
              *&v76[10] = 1024;
              *&v76[12] = v37;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to update connection parameters with interval=(%.3f/%.3f) peripheralLatency=%d, timeout=%d, status=%{bluetooth:OI_STATUS}u", buf, 0x28u);
            }
          }

          sub_10002249C(&v62);
          v11 = 914;
          goto LABEL_90;
        }

        if (v60 == 800)
        {
          goto LABEL_57;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        if ((sub_10078BDFC(off_100B508C8, v7) & 1) == 0)
        {
LABEL_57:
          v39 = sub_10000C7D0();
          (*(*v39 + 1048))(v39, v71, v60 == 800, 0);
        }

        sub_10002249C(&v62);
        goto LABEL_59;
      }

      if (!sub_1000BE280(v71))
      {
        goto LABEL_38;
      }
    }

LABEL_59:
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_100788ED8(off_100B508C8, v7))
    {
      if (HIBYTE(v64) == 1)
      {
        v40 = sub_10000C7D0();
        if ((*(*v40 + 3248))(v40))
        {
          v41 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Enable Subrating set to %d. This platform supports connection subrating.", buf, 8u);
          }

          v42 = HIWORD(v67);
          v43 = v67;
          v44 = HIWORD(v66);
          v45 = v66;
          v46 = v65;
          v47 = *(a1 + 512);
          if (v47)
          {
            v48 = v71;
            v49 = a1 + 512;
            do
            {
              v50 = *(v47 + 32);
              v16 = v50 >= v71;
              v51 = v50 < v71;
              if (v16)
              {
                v49 = v47;
              }

              v47 = *(v47 + 8 * v51);
            }

            while (v47);
            if (v49 != a1 + 512 && v71 >= *(v49 + 32))
            {
              v61 = v65;
              v52 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v48;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Warning: Already pending on sending connection subrating parameters for handle %p", buf, 0xCu);
              }

              sub_100075DC4((a1 + 504), &v71);
              v46 = v61;
            }
          }

          v72[0] = 0;
          v72[1] = 0;
          sub_10004DFB4(v72, v7);
          if ((v19 & 1) == 0 && sub_10074E724(a1, v72))
          {
            v53 = v46;
            v54 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544642;
              *&buf[4] = v7;
              v74 = 1024;
              *v75 = v42;
              *&v75[4] = 1024;
              *&v75[6] = v43;
              *v76 = 1024;
              *&v76[2] = v44;
              *&v76[6] = 1024;
              *&v76[8] = v45;
              *&v76[12] = 1024;
              *&v76[14] = v53;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "No locally initiated connection parameter update in progress and link is ready. Proceeding with subrating mode for device %{public}@ subrateMin:%d subrateMax:%d maxLatency:%d continueationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
            }

            sub_10000801C(v63);
            v11 = sub_10074E270(a1, v71, (v42 << 16) | (v43 << 32) | v44 | (v45 << 48), v53);
            goto LABEL_90;
          }

          *buf = &v71;
          v55 = sub_100774D7C(a1 + 504, &v71);
          v55[5] = (v42 << 16) | (v43 << 32) | v44 | (v45 << 48);
          *(v55 + 24) = v46;
          v56 = qword_100BCE980;
          v11 = 0;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v57 = sub_10074E724(a1, v72);
            *buf = 138543874;
            *&buf[4] = v7;
            v74 = 1024;
            *v75 = v19;
            *&v75[4] = 1024;
            *&v75[6] = v57;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "For device %{public}@ - Locally initiated connection parameter update in progress: %d. LE Link Ready: %d.", buf, 0x18u);
LABEL_89:
            v11 = 0;
          }

LABEL_90:
          sub_1000088CC(v63);
          goto LABEL_91;
        }
      }
    }

    if (a3 != -11 && a3 != -13)
    {
      goto LABEL_89;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EC68();
    }

LABEL_86:
    v11 = 17;
    goto LABEL_90;
  }

  v11 = 916;
LABEL_91:

  return v11;
}

void sub_100749460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007494D0(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100749554;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100749554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 633);
  if (v2 != v3)
  {
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109376;
      v14[1] = v3;
      v15 = 1024;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Low Power Mode has changed from %d to %d", v14, 0xEu);
      LOBYTE(v2) = *(a1 + 40);
    }

    *(v1 + 633) = v2;
    v6 = sub_10000C798();
    if ((*(*v6 + 1008))(v6))
    {
      v7 = sub_10000C798();
      if ((*(*v7 + 368))(v7))
      {
        v8 = *(v1 + 384);
        if (v8 != (v1 + 392))
        {
          do
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v9 = off_100B508C8;
            v10 = sub_10004DF60(v8 + 32);
            LODWORD(v9) = sub_100788ED8(v9, v10);

            if (v9)
            {
              sub_100748508(v1, *(v8 + 6));
            }

            v11 = *(v8 + 1);
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = *(v8 + 2);
                v13 = *v12 == v8;
                v8 = v12;
              }

              while (!v13);
            }

            v8 = v12;
          }

          while (v12 != (v1 + 392));
        }
      }
    }
  }
}

void sub_100749778(uint64_t a1, __int128 *a2)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x5012000000;
  v5[3] = sub_100042494;
  v5[4] = nullsub_29;
  v5[5] = "";
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100749890;
  v4[3] = &unk_100AE1120;
  v4[4] = v5;
  sub_10000CA94(v3, v4);
  _Block_object_dispose(v5, 8);
}

void sub_100749878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100749890(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_10086ED48(a1, v2, &v14);
    v2 = v14;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10086EE50();
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 56))
  {
    if (*(v3 + 56) < 0x20u)
    {
      v4 = sub_1000ABB80(*(v3 + 58));
      v5 = v4;
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 68);
      v14 = v7;
      v8 = *(v6 + 60);
      v9 = *(v6 + 61);
      v10 = *(v6 + 62);
      v11 = 1;
      v12 = &v14;
      do
      {
        if (*(&v14 + v11) < v7)
        {
          LOBYTE(v7) = *(&v14 + v11);
          v12 = &v14 + v11;
        }

        ++v11;
      }

      while (v11 != 8);
      v13 = *(v6 + 67);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100749A5C(v4, v5, 0, 0, 0, 0, &v14, 32, v8, v9, v10, *v12, 0, 0, 0, v13);
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EECC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_10086EF40();
  }
}

void sub_100749A5C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12, __int16 a13, int a14, char a15, char a16)
{
  v21 = sub_100007EE8();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10076CB48;
  v24[3] = &unk_100B0BA40;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v24[4] = a2;
  v24[5] = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v30 = a13;
  v29 = a14;
  v36 = a15;
  v37 = a16;
  sub_10000CA94(v21, v24);
}

uint64_t sub_100749B80(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = 224;
  if (a3)
  {
    v6 = 192;
  }

  sub_100749C00(a1 + v6, a2);
  return sub_1000088CC(v8);
}

void sub_100749C00(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_100774520((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_100749C8C(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 120);
  sub_10007A3F0(a1 + 192, a2);
  sub_10007A3F0(a1 + 224, a2);
  return sub_1000088CC(v5);
}

void sub_100749CFC(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v10 = a3;
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10004DF60(a2);
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AutoReconnect - Added device %{public}@ to connection filter accept list", buf, 0xCu);
  }

  if (a1 + 808 == sub_1007746F4(a1 + 800, a2))
  {
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086EF7C(a2, v8);
    }

    v9 = sub_10000E92C();
    sub_100693F74(v9, 1);
  }

  sub_1000C73A4(a1 + 336, a2);
  sub_1007440F4(a1, 1);
  *buf = &v10;
  v7 = sub_100774770(a1 + 360, &v10);
  uuid_copy(v7 + 40, a2);
  if (!*(a1 + 864))
  {
    sub_100745874(a1, 1u);
  }
}

void sub_100749E70(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to AddToFilterAcceptList list", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 768);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  v8 = *(a1 + 776);
  v9 = sub_10004DF60(a2);
  [v8 removeObject:v9];
}

void sub_100749FCC(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to RemoveFromFilterAcceptList list", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 776);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  v8 = *(a1 + 768);
  v9 = sub_10004DF60(a2);
  [v8 removeObject:v9];
}

uint64_t sub_10074A128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connect called to %{public}@", buf, 0xCu);
  }

  v52[0] = 0;
  v52[1] = 0;
  sub_100007F88(v52, a1 + 120);
  if (*(a1 + 1067) == 1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F0E8();
    }

    v5 = 202;
    goto LABEL_26;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  if (sub_1007868D4(off_100B508C8, v3))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v6 = sub_1000500A0(off_100B508C8, v3);
    v7 = v6 == 0;

    if (v7)
    {
      goto LABEL_16;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000AFD60(off_100B508C8, v3, 2u, buf);
    v8 = *&buf[16];
    sub_10000CEDC(buf, *&buf[8]);
    if (v8)
    {
LABEL_16:
      sub_10004DFB4(buf, v3);
      if (sub_10074738C(a1, buf))
      {
        if ([*(a1 + 776) containsObject:v3] & 1) != 0 || (sub_10004DFB4(buf, v3), (sub_10074AB80(a1, buf)))
        {
          v9 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device %{public}@ pending for removal from filter accept list after asked to disconnect, moving back to our connection list", buf, 0xCu);
          }

          [*(a1 + 776) removeObject:v3];
          [*(a1 + 744) removeObject:v3];
        }

        else
        {
          v17 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Already trying to connect device %{public}@", buf, 0xCu);
          }
        }

        v5 = 0;
        goto LABEL_26;
      }

      sub_10004DFB4(buf, v3);
      if (sub_100050290(a1, buf))
      {
        sub_10004DFB4(buf, v3);
        v11 = sub_10074AB80(a1, buf);
        v12 = qword_100BCE980;
        v13 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}@ as it is already connected and in the process of disconnecting", buf, 0xCu);
          }

          v5 = 310;
        }

        else
        {
          if (v13)
          {
            *buf = 138543362;
            *&buf[4] = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot connect device %{public}@ as it is already connected", buf, 0xCu);
          }

          v5 = 311;
        }

        goto LABEL_26;
      }

      v14 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 864);
        if (v15 > 4)
        {
          v16 = "UNKNOWN";
        }

        else
        {
          v16 = (&off_100B0BF80)[v15];
        }

        *buf = 136446466;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current state when trying to connect %{public}s(%d)", buf, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v18 = sub_100788D8C(off_100B508C8, v3);
      memset(v51, 0, sizeof(v51));
      if (sub_10074AC10(a1, v18, v51) && _os_feature_enabled_impl())
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078FDAC(off_100B508C8, v3, v51[8]);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078A36C(off_100B508C8, v3, *&v51[16]);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_10078A484(off_100B508C8, v3, v51[20]);
        v49[0] = 0;
        v49[1] = 0;
        v50 = 0;
        v19 = [v3 UUIDString];
        v20 = v19;
        sub_100007E30(v49, [v19 UTF8String]);

        *buf = v49;
        v21 = sub_1007748BC(a1 + 1360, v49);
        *(v21 + 56) = *v51;
        *(v21 + 69) = *&v51[13];
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v23 = SHIBYTE(v50);
          v24 = v49[0];
          sub_10074AE70();
          v25 = sub_10002DC3C(v18);
          v26 = v49;
          if (v23 < 0)
          {
            v26 = v24;
          }

          if (v48 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315650;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = v25;
          *&buf[22] = 2080;
          v55 = p_p;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "connScanUseCaseEntryCoex at connect: device %s useCase %s useCaseEntryCoex %s", buf, 0x20u);
          if (v48 < 0)
          {
            operator delete(__p);
          }
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49[0]);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v28 = sub_10078C5DC(off_100B508C8, v3);
      v29 = [v28 cuFilteredArrayUsingBlock:&stru_100B0B480];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v31)
      {
        v32 = *v44;
        do
        {
          v33 = 0;
          do
          {
            if (*v44 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v43 + 1) + 8 * v33);
            if (qword_100B50910 != -1)
            {
              sub_10086E454();
            }

            v35 = off_100B50908;
            [v34 integerValue];
            nullsub_21(v35);
            v33 = v33 + 1;
          }

          while (v31 != v33);
          v31 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v31);
      }

      if (*(a1 + 928))
      {
        sub_10004DFB4(buf, v3);
        sub_100749E70(a1, buf);
        v5 = 0;
LABEL_102:

        goto LABEL_26;
      }

      v5 = 0;
      v36 = *(a1 + 864);
      if (v36 <= 1)
      {
        if (v36)
        {
          if (v36 != 1)
          {
            goto LABEL_101;
          }

          v38 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Lets wait for the controller, cancelling", buf, 2u);
          }

          if (!sub_10074518C(a1, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v40 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v41 = "Adding device to connecting list";
            goto LABEL_98;
          }
        }
      }

      else
      {
        if (v36 == 2)
        {
          v39 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "will add the device to connecting list once we're done with the pending cancelation", buf, 2u);
          }

          goto LABEL_100;
        }

        if (v36 != 3)
        {
          if (v36 == 4)
          {
            v37 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "will add the device to connecting list once we're done with auto reconnecct", buf, 2u);
            }

LABEL_100:
            sub_10004DFB4(buf, v3);
            sub_100749E70(a1, buf);
            v5 = 0;
          }

LABEL_101:
          v42 = sub_100007EE8();
          sub_10000CA94(v42, &stru_100B0B4A0);
          goto LABEL_102;
        }

        v40 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v41 = "adding the device to connecting list , will wait for cancelation to complete before trying to connect to it.";
LABEL_98:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
        }
      }

      v5 = sub_10074B0D4(a1, v3);
      goto LABEL_101;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F078();
    }

    v5 = 149;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F008();
    }

    v5 = 8;
  }

LABEL_26:
  sub_1000088CC(v52);

  return v5;
}

void sub_10074AACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1000088CC(&a30);

  _Unwind_Resume(a1);
}

id sub_10074AB80(uint64_t a1, const unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v4 = *(a1 + 744);
  v5 = sub_10004DF60(a2);
  v6 = [v4 containsObject:v5];

  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10074AC10(uint64_t a1, int a2, uint64_t a3)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 120);
  if ((a2 & 0xFFFF0000) == 0x10000)
  {
    v6 = 63;
  }

  else
  {
    v6 = 0;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  v7 = sub_10003C714(off_100B50908, v6, 1u);
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10002DC3C(a2);
    v10 = "Yes";
    *buf = 136447746;
    *&buf[4] = v9;
    *&buf[12] = 2082;
    if ((v7 & 4) != 0)
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    *&buf[14] = v11;
    *&buf[22] = 2048;
    if ((v7 & 2) != 0)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    *&buf[24] = v6;
    if (v7)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    *&buf[32] = 2082;
    if ((v7 & 8) == 0)
    {
      v10 = "No";
    }

    *&buf[34] = v12;
    *&buf[42] = 2082;
    *&buf[44] = v13;
    *&buf[52] = 2082;
    *&buf[54] = v10;
    *&buf[62] = 2048;
    *&v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getConnScanUseCaseEntryCoex for useCase %{public}s WiFi Coex Critical %{public}s (0x%llx) WiFi assoc 2.4GHz %{public}s BT Audio Active %{public}s HRB %{public}s coexState 0x%llx", buf, 0x48u);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = 4;
  memset(buf, 0, sizeof(buf));
  do
  {
    v15 = &buf[v14];
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 13) = 0;
    v14 += 24;
  }

  while (v14 != 388);
  v16 = sub_10076D3E8(a1, a2, buf);
  if (v7 < 0x10)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    if (buf[0])
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    v19 = &buf[24 * v18];
    *(a3 + 8) = *(v19 + 12);
    *(a3 + 16) = *(v19 + 5);
    *(a3 + 20) = v19[24];
    *a3 = *(v19 + 4);
  }

  sub_1000088CC(v21);
  return v17;
}

uint64_t sub_10074AE70()
{
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
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_100008760(&v6);
  sub_100007774(&v6);
  v0 = std::ostream::operator<<();
  sub_100007774(v0);
  v1 = std::ostream::operator<<();
  sub_100007774(v1);
  v2 = std::ostream::operator<<();
  sub_100007774(v2);
  v3 = std::ostream::operator<<();
  sub_100007774(v3);
  v4 = std::ostream::operator<<();
  sub_100007774(v4);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

id sub_10074B084(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10074B0D4(uint64_t a1, void *a2)
{
  v5 = a2;
  v143[0] = 0;
  v143[1] = 0;
  sub_100007F88(v143, a1 + 120);
  v141 = 0;
  v140 = 0;
  v142[0] = 0;
  *(v142 + 3) = 0;
  if (*(a1 + 832) && *(a1 + 352) >= *(a1 + 832))
  {
    goto LABEL_102;
  }

  if (*(a1 + 184) != 1)
  {
    goto LABEL_92;
  }

  if (sub_100756A60(a1, v5))
  {
    v6 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Device %{public}@ is currently blocked, ignoring request", buf, 0xCu);
    }

LABEL_7:
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F2EC();
    }

    v7 = 760;
LABEL_105:
    [*(a1 + v7) addObject:v5];
LABEL_106:
    if (_os_feature_enabled_impl())
    {
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v40 = [v5 UUIDString];
      v41 = v40;
      sub_100007E30(&v153, [v40 UTF8String]);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v42 = sub_100788D8C(off_100B508C8, v5);
      if ((v42 - 0x10000) <= 0x1E && ((1 << v42) & 0x7F7800FF) != 0)
      {
        sub_10004DFB4(buf, v5);
        if (a1 + 616 == sub_1005FF344(a1 + 608, buf))
        {
          *&v144[20] = 0;
          if (a1 + 1368 == sub_1000463C8(a1 + 1360, &v153))
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_10086F35C(v42);
            }
          }

          else
          {
            *buf = &v153;
            v44 = sub_1007748BC(a1 + 1360, &v153);
            *v144 = *(v44 + 56);
            *&v144[13] = *(v44 + 69);
            v45 = *v144;
            v46 = *&v144[4];
            v47 = *&v144[12];
            if (*v144 || *&v144[4] || *&v144[12])
            {
              v116 = 0;
              v117 = 0;
              v118 = 0;
              v48 = v5;
              *buf = v48;
              *&buf[8] = v45;
              *&buf[12] = v46;
              *&buf[16] = v47;
              *v146 = v42;
              v115[0] = _NSConcreteStackBlock;
              v115[1] = 3221225472;
              v115[2] = sub_10076BD50;
              v115[3] = &unk_100B0B978;
              v115[4] = a1;
              *&v146[8] = objc_retainBlock(v115);
              sub_1007767E8(&v116, buf);

              if (qword_100B50910 != -1)
              {
                sub_10086E454();
              }

              v49 = off_100B50908;
              memset(v114, 0, sizeof(v114));
              sub_100776B18(v114, v116, v117, 0xCCCCCCCCCCCCCCCDLL * ((v117 - v116) >> 3));
              sub_1005BE9B4(v49, v114);
              *buf = v114;
              sub_100776794(buf);
              sub_10004DFB4(buf, v48);
              sub_100506A24(a1 + 608, buf);
              v50 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                sub_10074AE70();
                v51 = sub_10002DC3C(v42);
                v52 = v113 >= 0 ? v112 : v112[0];
                *buf = 138543874;
                *&buf[4] = v48;
                *&buf[12] = 2080;
                *&buf[14] = v51;
                *&buf[22] = 2080;
                *v146 = v52;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "requestConnectionScanRxThreshold for device %{public}@ useCase %s params %s", buf, 0x20u);
                if (v113 < 0)
                {
                  operator delete(v112[0]);
                }
              }

              *buf = &v116;
              sub_100776794(buf);
            }
          }
        }
      }

      if (SHIBYTE(v155) < 0)
      {
        operator delete(v153);
      }
    }

    v31 = 0;
    goto LABEL_115;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    goto LABEL_92;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v8 = off_100B508C8;
  sub_100007E30(__p, "PairedUsingRSA");
  if (sub_10004EB40(v8, v5, __p))
  {
    v9 = sub_10000C798();
    v10 = (*(*v9 + 416))(v9);
  }

  else
  {
    v10 = 0;
  }

  if (v139 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    if (v10)
    {
      v12 = "YES";
    }

    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - Adding device %{public}@ to connection filter accept list supportsVAPairing:%{public}s, waiting for controller to complete.", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  if (!sub_1007868D4(off_100B508C8, v5))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F008();
    }

    v31 = 8;
    goto LABEL_115;
  }

  v153 = 0;
  v154 = 0;
  v155 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  sub_100790344(off_100B508C8, v5, &v153);
  v13 = v153;
  if (v153 == &v154)
  {
LABEL_43:
    sub_10004DFB4(buf, v5);
    if (a1 + 344 != sub_1005FF344(a1 + 336, buf) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
    {
      sub_10086F27C();
    }

    sub_10004DFB4(buf, v5);
    sub_100506A24(a1 + 336, buf);
    sub_1007440F4(a1, 1);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_10078FBE8(off_100B508C8, v5))
    {
      v25 = sub_10000C7D0();
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v26 = sub_100046458(off_100B508C8, v5, 0);
      (*(*v25 + 4000))(v25, v26);
    }

    sub_10000CEDC(&v153, v154);
LABEL_53:
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078CCAC(off_100B508C8, v5, buf);
    if (!*buf && !*&buf[8])
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078C994(off_100B508C8, v5);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078B4E8(off_100B508C8, v5, 1);
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F1548(qword_100B54200, v5, 1);
    v137 = 2;
    v136 = 12;
    LOWORD(v112[0]) = 12;
    v135 = 12;
    v134 = 200;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v27 = sub_100788D8C(off_100B508C8, v5);
    v28 = v27;
    v29 = HIWORD(v27);
    if (v27 > 256)
    {
      if (v27 == 257)
      {
        v38 = 12;
        LOWORD(v112[0]) = 12;
LABEL_146:
        v135 = v38;
        goto LABEL_147;
      }

      if (v27 != 196608)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v27 == 5)
      {
        LOWORD(v112[0]) = *(a1 + 1118);
        v135 = *(a1 + 1120);
        v137 = *(a1 + 1122);
        v136 = *(a1 + 1123);
LABEL_147:
        v55 = 1;
        goto LABEL_148;
      }

      if (v27 != 19)
      {
LABEL_69:
        sub_10004DFB4(buf, v5);
        if (sub_10074ECD8(a1, buf))
        {
          v30 = 6;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v53 = off_100B508C8;
          sub_100007E30(v132, "FastConnection");
          v54 = sub_10004EB40(v53, v5, v132);
          if (v133 < 0)
          {
            operator delete(v132[0]);
          }

          if (!v54)
          {
            if (v28 == 18)
            {
              v137 = 2;
              v136 = 4;
              LOWORD(v112[0]) = 23;
              v135 = 23;
              *v144 = 0;
              v87 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v153, "SRPipeMinConInt");
              v88 = (*(*v87 + 88))(v87, buf, &v153, v144);
              if (*v144 > 0)
              {
                v89 = v88;
              }

              else
              {
                v89 = 0;
              }

              if (SHIBYTE(v155) < 0)
              {
                operator delete(v153);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v89)
              {
                v90 = qword_100BCE980;
                v91 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                v92 = *v144;
                if (v91)
                {
                  *buf = 67109120;
                  *&buf[4] = *v144;
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) SRPipe min connection interval", buf, 8u);
                  v92 = *v144;
                }

                LOWORD(v112[0]) = v92;
              }

              LODWORD(v116) = 0;
              v93 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v153, "SRPipeMaxConInt");
              v94 = (*(*v93 + 88))(v93, buf, &v153, &v116);
              if (v116 > 0)
              {
                v95 = v94;
              }

              else
              {
                v95 = 0;
              }

              if (SHIBYTE(v155) < 0)
              {
                operator delete(v153);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v95)
              {
                v96 = qword_100BCE980;
                v97 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                v98 = v116;
                if (v97)
                {
                  *buf = 67109120;
                  *&buf[4] = v116;
                  _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) SRPipe max connection interval", buf, 8u);
                  v98 = v116;
                }

                v135 = v98;
              }

              v131 = 0;
              v99 = sub_10000E92C();
              sub_100007E30(buf, "LE");
              sub_100007E30(&v153, "SRPipeSpecialParamsOff");
              v100 = (*(*v99 + 72))(v99, buf, &v153, &v131);
              v101 = (v100 & v131);
              if (SHIBYTE(v155) < 0)
              {
                operator delete(v153);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v101)
              {
                v102 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Warning: Disabling special SRPipe connection intervals", buf, 2u);
                }

                LOWORD(v112[0]) = 12;
                v135 = 12;
              }

              v55 = v101 ^ 1;
              goto LABEL_148;
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100789BB0(off_100B508C8, v5))
            {
              v55 = 0;
              goto LABEL_140;
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v108 = off_100B508C8;
            sub_100007E30(v129, "requiresCTOFix");
            v109 = sub_10004EB40(v108, v5, v129);
            if (v28 == 131103)
            {
              v55 = 1;
            }

            else
            {
              v55 = v109;
            }

            if (v130 < 0)
            {
              operator delete(v129[0]);
            }

            if (!v55)
            {
LABEL_140:
              if ((v28 - 65562) <= 3 && _os_feature_enabled_impl())
              {
                v56 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v5;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "device %{public}@ Using Tx Boosted power for LE Connection ", buf, 0xCu);
                }

                v141 = 257;
                v57 = sub_10000C798();
                v58 = (*(*v57 + 392))(v57);
                *(a1 + 1601) = v58 ^ 1;
                v140 = v58 ^ 1;
                if (v29 != 1)
                {
                  goto LABEL_147;
                }

                LOWORD(v112[0]) = *(a1 + 1114);
                v38 = *(a1 + 1116);
                goto LABEL_146;
              }

LABEL_148:
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v59 = sub_100792138(off_100B508C8, v5, &v137, &v136, v112, &v135, &v134, &v141 + 1, &v141, &v140);
              v60 = qword_100BCE980;
              if (v59)
              {
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v5;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "device %{public}@ has override connection params", buf, 0xCu);
                  v60 = qword_100BCE980;
                }

                v55 = 1;
              }

              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v61 = v137;
                v62 = v136;
                LOWORD(v3) = v112[0];
                LOWORD(v2) = v135;
                v63 = v134;
                sub_10004DFB4(&v153, v5);
                v64 = sub_10074ECD8(a1, &v153);
                *buf = 138545154;
                *&buf[4] = v5;
                *&buf[12] = 1024;
                v65 = "NO";
                if (v64)
                {
                  v65 = "YES";
                }

                *&buf[14] = v61;
                *&buf[18] = 1024;
                *&buf[20] = v62;
                *v146 = 2048;
                *&v146[2] = v3 * 1.25;
                *&v146[10] = 2048;
                *&v146[12] = v2 * 1.25;
                v147 = 1024;
                v148 = v63;
                v149 = 1024;
                *v150 = v55;
                *&v150[4] = 2082;
                *&v150[6] = v65;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection filter accept list with CE min %d, max %d, connectionInterval min:%f ms max:%f ms supervisionTO: %d WLParams %d, LowLatency %{public}s", buf, 0x42u);
              }

              v153 = 0;
              v154 = 0;
              v155 = 0;
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              sub_100790344(off_100B508C8, v5, &v153);
              if (*(a1 + 1112) == 1 && v29 == 1)
              {
                v66 = *(a1 + 1114);
                LOWORD(v112[0]) = *(a1 + 1114);
                v67 = *(a1 + 1116);
                v135 = *(a1 + 1116);
                v68 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v137;
                  v70 = v136;
                  sub_10004DFB4(v144, v5);
                  v71 = sub_10074ECD8(a1, v144);
                  *buf = 138544898;
                  v72 = "NO";
                  if (v71)
                  {
                    v72 = "YES";
                  }

                  *&buf[4] = v5;
                  *&buf[12] = 1024;
                  *&buf[14] = v69;
                  *&buf[18] = 1024;
                  *&buf[20] = v70;
                  *v146 = 2048;
                  *&v146[2] = v66 * 1.25;
                  *&v146[10] = 2048;
                  *&v146[12] = v67 * 1.25;
                  v147 = 1024;
                  v148 = 1;
                  v149 = 2082;
                  *v150 = v72;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection filter accept list with CE min %d, max %d, connectionInterval min:%f ms max:%f ms WLParams %d, LowLatency %{public}s (overridden for FindMy)", buf, 0x3Cu);
                }
              }

              else if (!v55)
              {
LABEL_176:
                v81 = sub_10000C7D0();
                if ((sub_10008215C(v81, 3) & 1) != 0 || *(a1 + 1127) == 1 && (v84 = sub_10000C7D0(), (*(*v84 + 3144))(v84)))
                {
                  if (sub_1007422D0(a1, v5))
                  {
                    memset(buf, 0, sizeof(buf));
                    v82 = [v5 UUIDString];
                    v83 = v82;
                    sub_100007E30(buf, [v82 UTF8String]);

                    if (buf[23] < 0)
                    {
                      sub_100008904(__dst, *buf, *&buf[8]);
                    }

                    else
                    {
                      *__dst = *buf;
                      v128 = *&buf[16];
                    }

                    sub_100769FF8(a1);
                    v85 = sub_1000463C8(a1 + 1192, __dst);
                    v86 = a1 + 1200;
                    if (SHIBYTE(v128) < 0)
                    {
                      operator delete(__dst[0]);
                    }

                    if (v86 == v85)
                    {
                      if (buf[23] < 0)
                      {
                        sub_100008904(v125, *buf, *&buf[8]);
                      }

                      else
                      {
                        *v125 = *buf;
                        v126 = *&buf[16];
                      }

                      sub_10076A184(a1, v125, 0);
                      if (SHIBYTE(v126) < 0)
                      {
                        operator delete(v125[0]);
                      }
                    }

                    else
                    {
                      sub_10074827C(a1, v5);
                    }

                    v103 = qword_100BCE980;
                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      if (buf[23] < 0)
                      {
                        v104 = *buf;
                        sub_100008904(v123, *buf, *&buf[8]);
                      }

                      else
                      {
                        *v123 = *buf;
                        v124 = *&buf[16];
                        v104 = buf;
                      }

                      v105 = sub_1000463C8(a1 + 1192, v123);
                      v106 = v86 == v105 ? 2 : *(v105 + 56);
                      *v144 = 136446466;
                      *&v144[4] = v104;
                      *&v144[12] = 1024;
                      *&v144[14] = v106;
                      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "RSSI threshold state for %{public}s is %d", v144, 0x12u);
                      if (SHIBYTE(v124) < 0)
                      {
                        operator delete(v123[0]);
                      }
                    }

                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  sub_1007550C4(a1, v5, 0);
                }

                if (*(a1 + 1127) == 1)
                {
                  v107 = sub_10000C7D0();
                  if ((*(*v107 + 3144))(v107))
                  {
                    sub_100744178(a1, v5, *(a1 + 736), 0);
                  }
                }

                sub_10000CEDC(&v153, v154);
                goto LABEL_106;
              }

              v73 = v153;
              if (v153 != &v154)
              {
                do
                {
                  v74 = v73[4];
                  *&v144[3] = 0;
                  *v144 = 0;
                  v75 = sub_10009A66C(v74);
                  *v144 = v75;
                  v144[6] = BYTE6(v75);
                  *&v144[4] = WORD2(v75);
                  v76 = sub_10000C7D0();
                  BYTE4(v111) = v140;
                  BYTE3(v111) = 0;
                  BYTE2(v111) = v141;
                  LOWORD(v111) = HIBYTE(v141);
                  LOWORD(v110) = v136;
                  v77 = (*(*v76 + 4192))(v76, v144, 1, LOWORD(v112[0]), v135, 0, v134, v137, v110, v142, 0, 0, v111, 0);
                  v78 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v77;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "addDeviceToFilterAcceptListUnified returned %d", buf, 8u);
                  }

                  v79 = v73[1];
                  if (v79)
                  {
                    do
                    {
                      v80 = v79;
                      v79 = *v79;
                    }

                    while (v79);
                  }

                  else
                  {
                    do
                    {
                      v80 = v73[2];
                      v24 = *v80 == v73;
                      v73 = v80;
                    }

                    while (!v24);
                  }

                  v73 = v80;
                }

                while (v80 != &v154);
              }

              goto LABEL_176;
            }

            v134 = 300;
LABEL_139:
            v55 = 1;
            goto LABEL_140;
          }

          v30 = 4;
        }

        v137 = v30;
LABEL_138:
        v136 = v30;
        goto LABEL_139;
      }
    }

    LOWORD(v112[0]) = *(a1 + 1106);
    v135 = *(a1 + 1108);
    v137 = *(a1 + 1110);
    v30 = *(a1 + 1111);
    goto LABEL_138;
  }

  if (v10)
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  while (1)
  {
    v15 = v13[4];
    v116 = v15;
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_100063D0C();
      *buf = 138544131;
      *&buf[4] = v5;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2113;
      *v146 = v17;
      *&v146[8] = 2080;
      *&v146[10] = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MUC - Adding device %{public}@ with address %{private, mask.hash}@ to connection filter accept list supportsVAPairing:%s, waiting for controller to complete.", buf, 0x2Au);

      v15 = v116;
    }

    v18 = sub_1007566C0(a1, v15);
    v19 = v18;
    if (!v18)
    {
      goto LABEL_37;
    }

    if (v18 != 4152)
    {
      break;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_100063D0C();
      sub_10086F124(v20, &v151, &v152);
    }

LABEL_37:
    sub_10004DFB4(buf, v5);
    *v144 = &v116;
    v21 = sub_100774770(a1 + 360, &v116);
    uuid_copy(v21 + 40, buf);
    v22 = v13[1];
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
        v23 = v13[2];
        v24 = *v23 == v13;
        v13 = v23;
      }

      while (!v24);
    }

    v13 = v23;
    if (v23 == &v154)
    {
      goto LABEL_43;
    }
  }

  v32 = *(a1 + 360);
  if (v32 != (a1 + 368))
  {
    do
    {
      sub_10004DFB4(buf, v5);
      v33 = uuid_compare(v32 + 40, buf);
      if (v33)
      {
        v34 = v32[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v32[2];
            v24 = *v35 == v32;
            v32 = v35;
          }

          while (!v24);
        }
      }

      else
      {
        v36 = sub_1007564FC(v33, v32[4]);
        v37 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "removeAddressFromBTController returned %d", buf, 8u);
        }

        v35 = sub_10002717C((a1 + 360), v32);
        operator delete(v32);
      }

      v32 = v35;
    }

    while (v35 != (a1 + 368));
  }

  sub_10000CEDC(&v153, v154);
  if (v19 > 103)
  {
    if (v19 != 104)
    {
      if (v19 != 160)
      {
        goto LABEL_99;
      }

      goto LABEL_7;
    }

LABEL_102:
    v39 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Added device %{public}@ to connection overflow list", buf, 0xCu);
    }

    v7 = 752;
    goto LABEL_105;
  }

  if (!v19)
  {
    goto LABEL_53;
  }

  if (v19 == 103)
  {
LABEL_92:
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F188();
    }

    v121[0] = _NSConcreteStackBlock;
    v121[1] = 3221225472;
    v121[2] = sub_10076BCE8;
    v121[3] = &unk_100B0B5D8;
    v122 = v5;
    sub_10074063C(a1, v121);

    v31 = 202;
    goto LABEL_115;
  }

LABEL_99:
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086F204();
  }

  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_10076BD1C;
  v119[3] = &unk_100B0B5D8;
  v120 = v5;
  sub_10074063C(a1, v119);

  v31 = 1;
LABEL_115:
  sub_1000088CC(v143);

  return v31;
}

void sub_10074C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a68);

  _Unwind_Resume(a1);
}

void sub_10074CC04(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  sub_10074CC48(v2);
}

uint64_t sub_10074CC48(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v2 = *(a1 + 928);
  if (v2)
  {
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 864);
      if (v4 > 4)
      {
        v5 = "UNKNOWN";
      }

      else
      {
        v5 = (&off_100B0BF80)[v4];
      }

      if (v2 > 3)
      {
        v6 = "UNKNOWN";
      }

      else
      {
        v6 = off_100B0BE78[v2 - 1];
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not processing outgoing connections. LE Connection State=%{public}s LE Connection Manager State=%{public}s", buf, 0x16u);
    }
  }

  else
  {
    sub_100753CFC(a1);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_10074CD90(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = qword_100BCE9C0;
  if (os_log_type_enabled(qword_100BCE9C0, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    v7 = __p;
    sub_100007E30(__p, out);
    if (v33 < 0)
    {
      v7 = __p[0];
    }

    v8 = sub_10074D290(a1, a3);
    *out = 136446466;
    *&out[4] = v7;
    *&out[12] = 2082;
    *&out[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device disconnecting - {cbuuid: %{public}s, ledisconnectionreason: %{public}s}", out, 0x16u);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10074AB80(a1, a2))
  {
    v9 = qword_100BCE980;
    v10 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v10)
    {
      return result;
    }

    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v33 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Already trying to disconnect device %{public}s", out, 0xCu);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if ((sub_10074738C(a1, a2) & 1) != 0 || sub_100050290(a1, a2))
  {
    *out = 0;
    *&out[8] = 0;
    uuid_copy(out, a2);
    __p[0] = a2;
    *(sub_100774A1C((a1 + 57), a2) + 44) = a3;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v13 = off_100B508C8;
    v14 = sub_10004DF60(a2);
    LODWORD(v13) = sub_100788D8C(v13, v14);

    if (v13)
    {
      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      nullsub_21(off_100B50908);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v15 = off_100B508C8;
    v16 = sub_10004DF60(a2);
    v17 = sub_10078C5DC(v15, v16);
    v18 = [v17 cuFilteredArrayUsingBlock:&stru_100B0B4C0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v28 + 1) + 8 * v22);
          if (qword_100B50910 != -1)
          {
            sub_10086E454();
          }

          v24 = off_100B50908;
          [v23 integerValue];
          nullsub_21(v24);
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    v25 = sub_100007EE8();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3321888768;
    v34[2] = sub_10074D304;
    v34[3] = &unk_100B0A538;
    uuid_copy(v35, out);
    sub_10000CA94(v25, v34);

    return 0;
  }

  v26 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v27 = v33 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cannot disconnect device %{public}s as it is not connecting or connected!", out, 0xCu);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 312;
}

const char *sub_10074D290(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    return "unknown";
  }

  else
  {
    return off_100B0BDD8[a2];
  }
}

id sub_10074D2B4(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_10074D304(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  return sub_10074D358(v2, (a1 + 32));
}

uint64_t sub_10074D358(uint64_t a1, unsigned __int8 *a2)
{
  v51[0] = 0;
  v51[1] = 0;
  sub_100007F88(v51, a1 + 120);
  if (sub_10074AB80(a1, a2))
  {
    v4 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v53 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      *buf = 136446210;
      v55 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s is already disconnecting", buf, 0xCu);
      if (v53 < 0)
      {
        operator delete(*__p);
      }
    }

    return sub_1000088CC(v51);
  }

  if ((sub_10074738C(a1, a2) & 1) != 0 || sub_100050290(a1, a2))
  {
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    sub_1007C717C(off_100B508B8, a2);
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    sub_1007C7480(off_100B508B8, a2);
    sub_10074EB78(a1, a2);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v6 = off_100B508C8;
    v7 = sub_10004DF60(a2);
    sub_10078CB20(v6, v7);

    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    v8 = off_100B508B8;
    v9 = sub_10004DF60(a2);
    LOBYTE(v8) = sub_10004EE74(v8, v9);

    if ((v8 & 1) == 0)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v10 = off_100B508C8;
      v11 = sub_10004DF60(a2);
      sub_10078DC84(v10, v11, 0);
    }

    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    v12 = qword_100B54200;
    v13 = sub_10004DF60(a2);
    sub_1007F1548(v12, v13, 3);

    v14 = sub_10004E34C(a1 + 384, a2);
    if (a1 + 392 != v14)
    {
      v15 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v16 = v53 >= 0 ? __p : *__p;
        *buf = 136446210;
        v55 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disconnecting connected device %{public}s", buf, 0xCu);
        if (v53 < 0)
        {
          operator delete(*__p);
        }
      }

      v17 = *(a1 + 744);
      v18 = sub_10004DF60(a2);
      [v17 addObject:v18];

      *out = 0;
      v19 = sub_1000C4FCC(a1, a2, out);
      v20 = *out;
      if (*out)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        __p[0] = 0;
        sub_1000216B4(__p);
        if (sub_1000ABD24(v20))
        {
          v22 = *(v20 + 252);
        }

        else
        {
          v22 = 0;
        }

        sub_100022214(__p);
        if (v22)
        {
          v35 = sub_10000C7D0();
          (*(*v35 + 3488))(v35, v20, 0xFFFFLL, 1, 0, 1);
        }

        sub_10002249C(__p);
      }

      v36 = sub_10004DF60(a2);
      sub_100746764(a1, v36);

      __p[0] = 0;
      sub_1000216B4(__p);
      sub_1002CDF48(*(v14 + 48));
      sub_10002249C(__p);
      return sub_1000088CC(v51);
    }

    v23 = *(a1 + 752);
    v24 = sub_10004DF60(a2);
    LODWORD(v23) = [v23 containsObject:v24];

    if (v23)
    {
      v25 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v26 = v53 >= 0 ? __p : *__p;
        *buf = 136446210;
        v55 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from connection overflow list", buf, 0xCu);
        if (v53 < 0)
        {
          operator delete(*__p);
        }
      }

      v27 = *(a1 + 752);
      v28 = sub_10004DF60(a2);
      [v27 removeObject:v28];

      return sub_1000088CC(v51);
    }

    v29 = *(a1 + 760);
    v30 = sub_10004DF60(a2);
    LODWORD(v29) = [v29 containsObject:v30];

    if (v29)
    {
      v31 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        v32 = v53 >= 0 ? __p : *__p;
        *buf = 136446210;
        v55 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Removing device %{public}s from blocked connection list", buf, 0xCu);
        if (v53 < 0)
        {
          operator delete(*__p);
        }
      }

      v33 = *(a1 + 760);
      v34 = sub_10004DF60(a2);
      [v33 removeObject:v34];

      return sub_1000088CC(v51);
    }

    v38 = *(a1 + 768);
    v39 = sub_10004DF60(a2);
    LODWORD(v38) = [v38 containsObject:v39];

    v40 = qword_100BCE980;
    v41 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      if (v41)
      {
        sub_1000D67B4(a2, out);
        v42 = out[23] >= 0 ? out : *out;
        *__p = 136446210;
        *&__p[4] = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from pending to go into filter accept list", __p, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v43 = *(a1 + 768);
      v44 = sub_10004DF60(a2);
      [v43 removeObject:v44];

      return sub_1000088CC(v51);
    }

    if (v41)
    {
      sub_1000D67B4(a2, out);
      v45 = out[23] >= 0 ? out : *out;
      *__p = 136446210;
      *&__p[4] = v45;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Disconnecting pending device %{public}s", __p, 0xCu);
      if (out[23] < 0)
      {
        operator delete(*out);
      }
    }

    v46 = *(a1 + 864);
    if (v46 <= 1)
    {
      if (v46)
      {
        if (v46 != 1)
        {
          return sub_1000088CC(v51);
        }

        v47 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *out = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "cancelling, waiting for controller before removing from filter accept list", out, 2u);
        }

        if (sub_10074518C(a1, 1))
        {
          v48 = *(a1 + 744);
          v49 = sub_10004DF60(a2);
          [v48 addObject:v49];

          return sub_1000088CC(v51);
        }

        goto LABEL_79;
      }

      if (!*(a1 + 928) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
      {
        sub_10086F47C();
      }
    }

    else
    {
      switch(v46)
      {
        case 2:
          goto LABEL_79;
        case 3:
          v50 = sub_10004DF60(a2);
          sub_100754B04(a1, v50);

          return sub_1000088CC(v51);
        case 4:
LABEL_79:
          sub_100749FCC(a1, a2);
          break;
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_1000D67B4(a2, out);
    sub_10086F3F8();
  }

  return sub_1000088CC(v51);
}

uint64_t sub_10074DD24(uint64_t a1, int a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, __int16 *a8, _WORD *a9, _WORD *a10, _WORD *a11, _WORD *a12, __int16 *a13, _BYTE *a14, _BYTE *a15)
{
  *a3 = 8;
  *a4 = 24;
  *a7 = 1;
  *a8 = 2000;
  *a6 = 12;
  *a5 = 2;
  *a9 = 3;
  *a10 = 3;
  *a11 = 1;
  *a12 = 2;
  *a13 = 200;
  *a14 = 0;
  *a15 = 1;
  switch(a2)
  {
    case -13:
      result = 0;
      *a3 = 8;
      *a4 = 24;
      *a7 = 1;
      *a6 = 12;
      *a5 = 12;
      *a9 = 33;
      *a10 = 33;
      *a11 = 1;
      *a12 = 2;
      v22 = 900;
      goto LABEL_13;
    case -12:
      result = 0;
      *a3 = *(a1 + 1118);
      *a4 = *(a1 + 1120);
      *a7 = 0;
      *a6 = *(a1 + 1123);
      v19 = *(a1 + 1122);
      goto LABEL_20;
    case -11:
      result = 0;
      *a3 = 8;
      *a4 = 24;
      *a7 = 1;
      *a6 = 12;
      *a5 = 12;
      *a9 = 3;
      *a10 = 3;
      *a11 = 1;
      *a12 = 2;
      v22 = 200;
LABEL_13:
      *a13 = v22;
      *a14 = 1;
      *a15 = 0;
      return result;
    case -10:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1100))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1102))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1104);
      goto LABEL_22;
    case -9:
      result = 0;
      v21 = 120;
      goto LABEL_16;
    case -8:
      result = 0;
      v21 = 24;
LABEL_16:
      *a3 = v21;
      *a4 = v21;
      *a7 = 0;
      return result;
    case -7:
      result = 0;
      *a3 = 12;
      *a4 = 12;
      *a7 = 0;
      v20 = 2000;
      goto LABEL_22;
    case -6:
      result = 0;
      *a3 = 776;
      *a4 = 800;
      *a7 = 0;
      *a8 = 8000;
      v23 = 4;
      goto LABEL_19;
    case -5:
      *a3 = 24;
      *a4 = 24;
      *a7 = 0;
      sub_10000C7D0();
      result = 0;
      v23 = 8;
LABEL_19:
      *a6 = v23;
      v19 = 2;
      goto LABEL_20;
    case -4:
    case -1:
      result = 0;
      *a3 = 12;
      *a4 = 12;
      *a7 = 0;
      v19 = 6;
      goto LABEL_5;
    case -3:
      result = 0;
      *a3 = 48;
      *a4 = 48;
      *a7 = 5;
      v19 = 12;
LABEL_5:
      *a6 = v19;
LABEL_20:
      *a5 = v19;
      return result;
    case -2:
      result = 0;
      *a3 = 16;
      *a4 = 24;
      *a7 = 5;
      *a6 = 12;
      *a5 = 12;
      *a9 = 1;
      *a10 = 1;
      *a11 = 5;
      *a12 = 0;
      *a13 = 200;
      return result;
    case 0:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1082))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1084))) >> 32;
      *a7 = 0;
      v20 = *(a1 + 1086);
      goto LABEL_22;
    case 1:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1088))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1090))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1092);
      goto LABEL_22;
    case 2:
      result = 0;
      *a3 = (858993460 * (4 * *(a1 + 1094))) >> 32;
      *a4 = (858993460 * (4 * *(a1 + 1096))) >> 32;
      *a7 = 1;
      v20 = *(a1 + 1098);
LABEL_22:
      *a8 = v20;
      break;
    default:
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F510();
      }

      result = 3;
      break;
  }

  return result;
}

void sub_10074E0F8(int a1)
{
  v1 = qword_100BCE980;
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F54C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully Enabled event for connection subrating", v2, 2u);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    *(off_100B508A8 + 1597) |= 4u;
  }
}

void sub_10074E1B4(int a1)
{
  v1 = qword_100BCE980;
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F5BC();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully Disabled event for connection subrating", v2, 2u);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    *(off_100B508A8 + 1597) &= ~4u;
  }
}

uint64_t sub_10074E270(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int16 a4)
{
  v22 = a2;
  v21 = 0;
  sub_1000216B4(&v21);
  v8 = sub_1002D1DC0(a2, WORD1(a3), WORD2(a3), a3, HIWORD(a3), a4);
  sub_100022214(&v21);
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 120);
  v9 = *(a1 + 536);
  if (v9)
  {
    v10 = a1 + 536;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != a1 + 536 && *(v10 + 32) <= a2)
    {
      *buf = &v22;
      *(sub_10077444C(a1 + 528, &v22) + 13) = v8 == 0;
    }
  }

  v14 = qword_100BCE980;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110400;
      *&buf[4] = WORD1(a3);
      v24 = 1024;
      v25 = WORD2(a3);
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = HIWORD(a3);
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = v8;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to enter Connection Subrating Mode with parameters: Subrate_Min=%d, Subrate_Max=%d, Max_Latency=%d, Continuation_Number=%d, Supervision_Timeout=%d. Status=%d", buf, 0x26u);
    }

    v15 = *(a1 + 512);
    if (v15)
    {
      v16 = a1 + 512;
      do
      {
        v17 = *(v15 + 32);
        v12 = v17 >= v22;
        v18 = v17 < v22;
        if (v12)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v18);
      }

      while (v15);
      if (v16 != a1 + 512 && v22 >= *(v16 + 32))
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          sub_10086F62C();
        }

        sub_100075DC4((a1 + 504), &v22);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully sent connection subrating request", buf, 2u);
  }

  sub_1000088CC(v20);
  sub_10002249C(&v21);
  return v8;
}

void sub_10074E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000088CC(&a10);
  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10074E528(unsigned __int8 *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1[1603] != 1)
  {
    goto LABEL_18;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (!sub_1007877F0(off_100B508C8, v5))
  {
    goto LABEL_18;
  }

  if (a3 != -7)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    if (sub_1007876D8(off_100B508C8, v5) == 2)
    {
      v8 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = v5;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - %{public}@ asking different interval(%d) during optimization", &v10, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078764C(off_100B508C8, v5, 0);
    }

LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  v6 = 1;
  if (a1[1602] == 1 && a1[400] >= 3uLL)
  {
    v7 = qword_100BCE980;
    v6 = 0;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = -7;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - Not allowed the interval(%d)", &v10, 8u);
      v6 = 0;
    }
  }

LABEL_19:

  return v6;
}

BOOL sub_10074E724(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 416 != sub_10004E34C(a1 + 408, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10074E798(uint64_t a1, unint64_t a2, unsigned __int8 *a3, char a4)
{
  v10[1] = 0;
  v11[0] = a2;
  v10[0] = 0;
  sub_100007F88(v10, a1 + 120);
  v7 = sub_10004E34C(a1 + 936, a3);
  if (a1 + 944 != v7 && (a4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_10074E868(a1, a3);
  if (!v8)
  {
    v11[2] = a3;
    v7 = sub_100774E50(a1 + 936, a3);
LABEL_5:
    sub_1000452CC(v7 + 48, v11);
    v8 = 0;
  }

  sub_1000088CC(v10);
  return v8;
}

void sub_10074E854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10074E868(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  if (!sub_1000C4FCC(a1, a2, &v5))
  {
    return 312;
  }

  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_1000ABD24(v5))
  {
    if (sub_10024DE3C(sub_10074E910))
    {
      v2 = 7;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 7;
  }

  sub_10002249C(&v4);
  return v2;
}