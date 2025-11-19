void sub_1002D5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::mutex::unlock((v4 + 112));
  trackrun::TrackRunSolutionEvent::~TrackRunSolutionEvent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D5FFC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 8), 0, 0.0);
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 32), 0, 0.0);
  return a1;
}

uint64_t sub_1002D6054(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_1002D5FFC(a1 + 8);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 370) = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_1002D5FFC(&v5);
  v3 = v6;
  *v2 = v5;
  v2[1] = v3;
  v2[2] = v7;
  *(a1 + 370) = 0;
  return a1;
}

uint64_t sub_1002D6108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 3968);
  if (result)
  {
    return sub_1002D57E4(result, a2, a3);
  }

  return result;
}

double sub_1002D6118(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v2 = *(a2 + 32);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 44);
  *(v2 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  result = *a1;
  *(v2 + 44) = v3 | 7;
  *(v2 + 24) = result;
  return result;
}

void sub_1002D61B8(uint64_t a1, uint64_t a2, char a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    if (*(a1 + 34) == 1 && *(a1 + 104) && (a3 & 1) == 0)
    {
      trackrun::TrackRunSupervisor::RaiseEventsFrom();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1000145C0(v5, __p);
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "TrackRun,Could not serialize protobuf message", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B96244(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLTrackRunController::SendMessage(const CLP::LogEntry::LogEntry &, BOOL)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002D6370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002D6398(uint64_t a1, double a2, double a3)
{
  v51 = a3;
  v52 = a2;
  v5 = a1 + 96;
  v4 = *(a1 + 96);
  v49 = a1 + 96;
  (*(v4 + 16))(a1 + 96);
  v50 = 256;
  sub_10001CAF4(buf);
  v6 = sub_10001CB4C(*buf, "ForceDownloadHrseTiles", (a1 + 825));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (v6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 825);
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,fForceDownloadHrseTiles, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      v40 = *(a1 + 825);
      v53 = 67109120;
      LODWORD(v54) = v40;
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  if ((sub_1002D7D9C(&v52, &v51) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134545921;
      *&buf[4] = v52;
      *&buf[12] = 2053;
      *&buf[14] = v51;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironment,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_33;
    }

    sub_101B7334C(buf);
    v53 = 134545921;
    v54 = v52;
    v55 = 2053;
    v56 = v51;
    v38 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v38);
    goto LABEL_77;
  }

  if (*(a1 + 768) == 1)
  {
    v9 = *(a1 + 544);
    v10 = *(a1 + 540);
    v11 = *(a1 + 560);
    v12 = *(a1 + 552);
    v13 = *(a1 + 536);
    sub_10002DB04(v9);
    v15 = v14;
    sub_10002DB04(v9 + (v11 * v10));
    v17 = v16;
    v18 = v12 + (v11 * v13);
    if (v52 >= v12 && v52 < v18 && v51 >= v15 && v51 < v16)
    {
      *(a1 + 816) = 0;
LABEL_16:
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "HRSE,good to go!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        LOWORD(v53) = 0;
        v45 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      *(a1 + 440) = 0;
      v20 = sub_1002D71E8(a1 + 504, v52, v51);
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134546177;
        *&buf[4] = v52;
        *&buf[12] = 2053;
        *&buf[14] = v51;
        v65 = 1025;
        *v66 = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "HRSE,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hrse,%{private}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        v53 = 134546177;
        v54 = v52;
        v55 = 2053;
        v56 = v51;
        v57 = 1025;
        *v58 = v20;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      goto LABEL_47;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134546945;
      *&buf[4] = v52;
      *&buf[12] = 2053;
      *&buf[14] = v51;
      v65 = 2053;
      *v66 = v12;
      *&v66[8] = 2053;
      v67 = v18;
      v68 = 2053;
      v69 = v15;
      v70 = 2053;
      v71 = v17;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,not on the current in-memory tile,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,minLat,%{sensitive}.7lf,maxLat,%{sensitive}.7lf,minLon,%{sensitive}.7lf,maxLon,%{sensitive}.7lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      v53 = 134546945;
      v54 = v52;
      v55 = 2053;
      v56 = v51;
      v57 = 2053;
      *v58 = v12;
      *&v58[8] = 2053;
      v59 = v18;
      v60 = 2053;
      v61 = v15;
      v62 = 2053;
      v63 = v17;
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }

  if (!sub_100258AE0(a1 + 8, &v52, &v51) || *(a1 + 825) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,tile not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      LOWORD(v53) = 0;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v20 = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    goto LABEL_47;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v27 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,need to load tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    LOWORD(v53) = 0;
    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v28 = *(a1 + 816);
  if ((v28 & 7) == 0)
  {
    *(a1 + 816) = v28 | 1;
    v48 = 0;
    v31 = sub_1012152FC(a1, &v48 + 1, &v48, v52, v51);
    if (HIBYTE(v48) == 1)
    {
      *(a1 + 440) = HIBYTE(v48);
      *(a1 + 441) = v48;
      v32 = v51;
      *(a1 + 448) = v52;
      *(a1 + 456) = v32;
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v33 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 440);
        v35 = *(a1 + 441);
        *buf = 134546433;
        *&buf[4] = v52;
        *&buf[12] = 2053;
        *&buf[14] = v51;
        v65 = 1026;
        *v66 = v34;
        *&v66[4] = 1026;
        *&v66[6] = v35;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,tile download needed,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,is file needed,%{public}d,is bad tile,%{public}d", buf, 0x22u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_33;
      }

      sub_101B7334C(buf);
      v36 = *(a1 + 440);
      v37 = *(a1 + 441);
      v53 = 134546433;
      v54 = v52;
      v55 = 2053;
      v56 = v51;
      v57 = 1026;
      *v58 = v36;
      *&v58[4] = 1026;
      *&v58[6] = v37;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v38);
    }

    else
    {
      if (v31)
      {
        goto LABEL_16;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v39 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "HRSE,Tile not loaded yet", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_33:
        v20 = 0;
        goto LABEL_47;
      }

      sub_101B7334C(buf);
      LOWORD(v53) = 0;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v38);
    }

LABEL_77:
    if (v38 != buf)
    {
      free(v38);
    }

    goto LABEL_33;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v29 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 816);
    *buf = 67240192;
    *&buf[4] = v30;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,skipping loadTile query,skipCount,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    v46 = *(a1 + 816);
    v53 = 67240192;
    LODWORD(v54) = v46;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  v20 = 0;
  ++*(a1 + 816);
LABEL_47:
  (*(*v5 + 24))(v5);
  return v20;
}

void sub_1002D7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1002D719C(double *a1, uint64_t a2, float64x2_t *a3)
{
  v4 = sub_100226B90(a1, a2, a3);
  if (*(a2 + 232) == *(a2 + 224))
  {
    return v4 - sub_100226BC0(a2);
  }

  return v4;
}

void *sub_1002D71E8(uint64_t a1, double a2, double a3)
{
  v43 = a3;
  v44 = a2;
  if ((*(a1 + 264) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,invalid tile", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B736B8();
    }

    return 0;
  }

  if ((sub_1002D7D9C(&v44, &v43) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134545921;
      v62 = a2;
      v63 = 2053;
      v64 = v43;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironmentForTile,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B7379C();
    }

    return 0;
  }

  v5 = *(a1 + 56);
  if (v5 == 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,cellsize is zero", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73F44();
    }

    return 0;
  }

  v11 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12 > a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v14 = *v11;
      *buf = 134545921;
      v62 = a2;
      v63 = 2053;
      v64 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,latitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73E48();
    }

    return 0;
  }

  v15 = v12 + (v5 * *(a1 + 32));
  if (v15 < a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      v62 = a2;
      v63 = 2053;
      v64 = v15;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,latitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73D50();
    }

    return 0;
  }

  v17 = v43;
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  if (v43 < v19)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v21 = *v18;
      *buf = 134545921;
      v62 = v17;
      v63 = 2053;
      v64 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,longitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73C54();
    }

    return 0;
  }

  v22 = *(a1 + 36);
  v23 = v19 + (v5 * v22);
  if (v43 > v23)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      v62 = v17;
      v63 = 2053;
      v64 = v23;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,longitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73B5C();
    }

    return 0;
  }

  v25 = *(a1 + 192);
  v26 = *(a1 + 200) - v25;
  if (!v26 || (v27 = v5, v28 = (v43 - v19) / v27, v29 = (floor(v28) + 0.5), v30 = (a2 - v12) / v27, v31 = (floor(v30) + 0.5), v32 = v29 + v22 * v31, v33 = (v32 + (v32 >> 31)) >> 1, v26 <= v33))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v40 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,invalid tile - unable to get data byte", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73898();
    }

    return 0;
  }

  v34 = *(v25 + v33);
  v35 = v34 & 0xF;
  v36 = v34 >> 4;
  if (v32 % 2 == 1)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v38 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134547457;
    v62 = v28;
    v63 = 2053;
    v64 = v30;
    v65 = 1025;
    v66 = v29;
    v67 = 1025;
    v68 = v31;
    v69 = 1025;
    v70 = v32;
    v71 = 1025;
    v72 = v32 / 2;
    v73 = 1025;
    v74 = v32 % 2;
    v75 = 1025;
    v76 = v37;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironmentForTile,X,%{sensitive}.7lf,Y,%{sensitive}.7lf,x1,%{private}d,y1,%{private}d,iNibble,%{private}d,iByte,%{private}d,iNibbleInByte,%{private}d,typeNibble,%{private}d", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v45 = 134547457;
    v46 = v28;
    v47 = 2053;
    v48 = v30;
    v49 = 1025;
    v50 = v29;
    v51 = 1025;
    v52 = v31;
    v53 = 1025;
    v54 = v32;
    v55 = 1025;
    v56 = v32 / 2;
    v57 = 1025;
    v58 = v32 % 2;
    v59 = 1025;
    v60 = v37;
    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironmentForTile(CLHRSETile &, double, double)", "%s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  if (v37 >= 7 || ((0x5Fu >> v37) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      LODWORD(v62) = v37;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironmentForTile,unexpected signal environment type detected: %{private}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B7397C(v37);
    }

    return 0;
  }

  v9 = dword_101D25560[v37];
  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v39 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67174657;
    LODWORD(v62) = v9;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironmentForTile,hrseType,%{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B73A6C(v9);
  }

  return v9;
}

uint64_t sub_1002D7A58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    return 4;
  }

  sub_10018D404(v22);
  v5 = sub_1002D719C((a1 + 4), a2, v22);
  if (v5 >= *(sub_100229814() + 5))
  {
    if (v5 >= *(sub_100229814() + 4))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  v21 = v6;
  if (qword_1025D4640 != -1)
  {
    sub_1019280C4();
  }

  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    v9 = *(a2 + 47) >= 0 ? a2 + 24 : *(a2 + 24);
    sub_1002D7D58(&v21, __p);
    v10 = v26 >= 0 ? __p : *__p;
    *buf = 136315906;
    v31 = v8;
    v32 = 2080;
    v33 = v9;
    v34 = 2048;
    v35 = v5;
    v36 = 2080;
    v37 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "converging state change, fence, %s/%s, distance, %.2f, proximity state, %s", buf, 0x2Au);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_1019280C4();
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = *(a2 + 47);
    v16 = *(a2 + 24);
    v15 = a2 + 24;
    v14 = v16;
    if (v13 < 0)
    {
      v15 = v14;
    }

    sub_1002D7D58(&v21, v19);
    if (v20 >= 0)
    {
      v17 = v19;
    }

    else
    {
      v17 = v19[0];
    }

    *__p = 136315906;
    *&__p[4] = v12;
    v24 = 2080;
    v25 = v15;
    v26 = 2048;
    v27 = v5;
    v28 = 2080;
    v29 = v17;
    v18 = _os_log_send_and_compose_impl();
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static CLFenceProximityState CLFenceApproachingClassifier::getFenceProximityState(const CLDaemonLocation &, const CLFenceManager_Type::Fence &, const CLFenceManager_Type::FenceStatus &)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return v6;
}

_BYTE *sub_1002D7D58@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 4)
  {
    v5 = "Invalid";
  }

  else
  {
    v5 = off_10246E7D0[v4];
  }

  return sub_10000EC00(a2, v5);
}

uint64_t sub_1002D7D9C(double *a1, long double *a2)
{
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5 = (*a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v6 = (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v11 = 67437057;
      LODWORD(v12[0]) = v5;
      WORD2(v12[0]) = 1029;
      *(v12 + 6) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,HRSE,is latitude finite,%{sensitive}d,is longitude finite,%{sensitive}d", &v11, 0xEu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101B7358C();
    return 0;
  }

  if (fabs(*a1) <= 90.0)
  {
    sub_10002DB04(*a2);
    *a2 = v10;
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v9 = *a1;
    v11 = 134545665;
    *v12 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#Error,HRSE,latitude is beyond the valid range,lat,%{sensitive}.7lf", &v11, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B73498();
    return 0;
  }

  return result;
}

uint64_t sub_1002D7F8C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 96;
  (*(*(a1 + 96) + 16))(a1 + 96);
  v7 = sub_1002AC764(v6 - 88);
  v8 = *(a1 + 440);
  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    *v37 = v7;
    *&v37[4] = 1026;
    *&v37[6] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,needAvailability,%{public}d,needTile,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  if ((v7 | v8))
  {
    if (v7 && (v10 = (a2 + 76), vabdd_f64(*(a2 + 76), *(a1 + 808)) > 3600.0))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = *v10;
        v13 = *(a1 + 808);
        *buf = 67240704;
        *v37 = 1;
        *&v37[4] = 2050;
        *&v37[6] = v12;
        *&v37[14] = 2050;
        *&v37[16] = v13;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,download availability file,needAvailability,%{public}d,location_timestamp,%{public}.3f,timeOfLastDownloadRequestAvailability,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      sub_101214F8C(a1, v10);
    }

    else
    {
      v14 = 31.0;
      if (*(a1 + 441) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B73324();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v37 = 0x4122750000000000;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,corrupted tile, increase download retry interval to %{public}.5lf seconds", buf, 0xCu);
        }

        v14 = 604800.0;
        if (sub_10000A100(121, 2))
        {
          sub_101B7334C(buf);
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }
      }

      if (v8)
      {
        v16 = *(a2 + 76);
        if (vabdd_f64(v16, *(a1 + 800)) > v14)
        {
          *(a1 + 800) = v16;
          if (qword_1025D4650 != -1)
          {
            sub_101B73324();
          }

          v17 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v18 = *(a1 + 448);
            v19 = *(a1 + 456);
            *buf = 134545921;
            *v37 = v18;
            *&v37[8] = 2053;
            *&v37[10] = v19;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "HRSE,requestDownload,requesting HRSE tile download,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B7334C(buf);
            v34 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v34);
            if (v34 != buf)
            {
              free(v34);
            }
          }

          if (a3 && *(a2 + 20) > 10.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_101B73324();
            }

            v20 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              v21 = *(a2 + 20);
              *buf = 134349312;
              *v37 = v21;
              *&v37[8] = 2050;
              *&v37[10] = 0x4024000000000000;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "HRSE,allowing download request over cell due to large horizontal uncertainty, uncertainty,%{public}.5lf, uncertainty threshold,%{public}.5lf", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B7334C(buf);
              v35 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v35);
              if (v35 != buf)
              {
                free(v35);
              }
            }

            v22 = 1;
          }

          else
          {
            v22 = 0;
          }

          Current = CFAbsoluteTimeGetCurrent();
          v24 = *(a1 + 825);
          v25 = [objc_msgSend(*(a1 + 360) "vendor")];
          v26 = *(a1 + 448);
          v27 = *(a1 + 456);
          buf[0] = v22 | v24;
          buf[1] = v24;
          buf[2] = 0;
          *&v37[4] = 0xBFF0000000000000;
          *&v37[12] = 0;
          *&v37[20] = Current;
          v38 = 1;
          [v25 requestTileDownloadByType:2 lat:-1 lon:buf seckey:v26 details:v27];
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v28 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,tile download finished!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }
  }

  return (*(*v6 + 24))(v6);
}

void sub_1002D883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1002D8894(uint64_t a1, void *a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 2664);
    v6 = *(a1 + 2659);
    *buf = 136381187;
    v9 = a2;
    v10 = 2049;
    v11 = v5;
    v12 = 1025;
    v13 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: createActivityAlarm, %{private}s, %{private}p, fIsUseActivityAlarm, %{private}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A43B1C(a2, a1);
  }

  if (*(a1 + 2659) == 1 && !*(a1 + 2664))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100C8D984;
    v7[3] = &unk_10245C1D8;
    v7[4] = a1;
    *(a1 + 2664) = -[CMActivityAlarmLocal initWithTrigger:duration:onQueue:withHandler:]([CMActivityAlarmLocal alloc], "initWithTrigger:duration:onQueue:withHandler:", 6, [*(a1 + 48) queue], v7, 900.0);
  }
}

uint64_t sub_1002D8A2C(void *a1, void **a2)
{
  result = sub_100019438(a1, a2);
  if (!result)
  {

    return sub_100019438(a1 + 3, a2 + 3);
  }

  return result;
}

NSDictionary *sub_1002D8A80(uint64_t a1)
{
  v5[0] = @"requester";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v6[0] = [NSString stringWithUTF8String:v2];
  v5[1] = @"type";
  v6[1] = [NSString stringWithUTF8String:*(a1 + 56)];
  v5[2] = @"activepassive";
  v6[2] = [NSString stringWithUTF8String:*(a1 + 64)];
  v5[3] = @"priority";
  v3 = [NSString stringWithUTF8String:*(a1 + 72)];
  v5[4] = @"daily";
  v6[3] = v3;
  v6[4] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
}

void sub_1002D8B80(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  valuePtr = a3;
  v14 = sub_1002DAC84(a1, a2);
  if (v14)
  {
    v15 = v14;
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v17 = CFAutorelease(v16);
    if (a4)
    {
      v18 = kCFBooleanTrue;
    }

    else
    {
      v18 = kCFBooleanFalse;
    }

    if (a5)
    {
      v19 = kCFBooleanTrue;
    }

    else
    {
      v19 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v15, @"SCAN_TYPE", v17);
    CFDictionarySetValue(v15, @"SCAN_LOW_PRIORITY", v18);
    CFDictionarySetValue(v15, @"SCAN_LOW_LATENCY", v19);
    if ((a2 - 11) <= 1u && *(a7 + 24) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a7 + 24) & 1) == 0)
        {
          sub_100173BA0();
        }

        sub_100C5D328(a7, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67240450;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = a2;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = p_p;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiScan, type, %{public}d, overriding channels, %{public}s", &buf, 0x12u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        if ((*(a7 + 24) & 1) == 0)
        {
          sub_100173BA0();
        }

        sub_100C5D328(a7, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v30 = 67240450;
        v31 = a2;
        v32 = 2082;
        v33 = p_buf;
        v24 = _os_log_send_and_compose_impl();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "std::optional<CLWifiService_Type::ScanParameters> CLWifiService::toWifiScanParameters(CLWifiService_Type::ScanType, apple80211_scan_type, CLWifiService_Type::ScanParameters::Priority, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v24);
        if (v24 != &__p)
        {
          free(v24);
        }
      }

      if (*(a6 + 23) < 0)
      {
        sub_100007244(__dst, *a6, *(a6 + 8));
      }

      else
      {
        *__dst = *a6;
        v26 = *(a6 + 16);
      }

      sub_1005A4528(&buf, a7);
    }

    else
    {
      if (*(a6 + 23) < 0)
      {
        sub_100007244(__dst, *a6, *(a6 + 8));
      }

      else
      {
        *__dst = *a6;
        v26 = *(a6 + 16);
      }

      buf.__r_.__value_.__s.__data_[0] = 0;
      v29 = 0;
    }

    sub_1002D90FC(a2, v15, __dst, &buf, &__p);
    sub_1002D98B4(a8, &__p);
    a8[96] = 1;
    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (__p.__r_.__value_.__r.__words[2])
    {
      v35 = __p.__r_.__value_.__r.__words[2];
      operator delete(__p.__r_.__value_.__r.__words[2]);
    }

    if (v29 == 1 && buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v22 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = a2;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Got null wifi device options for scan type %d", &__p, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFFB4();
    }

    *a8 = 0;
    a8[96] = 0;
  }
}

void sub_1002D8FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1002D9048(void *a1, char *a2)
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
      if (*(result + 16) == v3)
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

void sub_1002D90FC(char a1@<W0>, const __CFDictionary *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = 0;
  v45 = off_1024B71D8;
  v46 = *&off_1024B71E8;
  v47 = off_1024B71F8;
  v41 = off_1024B7198;
  v42 = *&off_1024B71A8;
  v43 = off_1024B71B8;
  v44 = *&off_1024B71C8;
  do
  {
    v9 = &v41 + v8;
    *(v9 + 2) = sub_1002DB3B8(a2, *(&v41 + v8));
    v9[12] = 1;
    v8 += 16;
  }

  while (v8 != 112);
  if (!CFDictionaryContainsKey(a2, @"SCAN_CHANNELS"))
  {
    sub_101AA39C8();
  }

  __src = 0;
  v39 = 0;
  v40 = 0;
  if (*(a4 + 24) == 1)
  {
    if (&__src != a4)
    {
      sub_100731D80(&__src, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(a2, @"SCAN_CHANNELS");
    Count = CFArrayGetCount(Value);
    sub_1002982C8(&__src, Count);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v14 = sub_1002DB3B8(ValueAtIndex, @"CHANNEL");
        v15 = v39;
        if (v39 >= v40)
        {
          v17 = __src;
          v18 = v39 - __src;
          v19 = (v39 - __src) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v21 = v40 - __src;
          if ((v40 - __src) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            sub_1000B85D0(&__src, v22);
          }

          *(4 * v19) = v14;
          v16 = (4 * v19 + 4);
          memcpy(0, v17, v18);
          v23 = __src;
          __src = 0;
          v39 = v16;
          v40 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v39 = v14;
          v16 = v15 + 1;
        }

        v39 = v16;
      }
    }
  }

  v24 = DWORD2(v41);
  v25 = DWORD2(v42);
  v26 = DWORD2(v43);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_10038EB38(&v35, __src, v39, (v39 - __src) >> 2);
  v27 = SDWORD2(v44);
  v28 = SDWORD2(v45);
  v29 = DWORD2(v46);
  v30 = DWORD2(v47);
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v34 = *(a3 + 16);
  }

  sub_1002DB444(a5, v24, v25, v26, &v35, v27, v28, v29 != 0, v30 != 0, __p, a1);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (__src)
  {
    v39 = __src;
    operator delete(__src);
  }
}

void sub_1002D93E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D9448(void *a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == v4)
  {
    sub_101AA3848();
  }

  if (*(v4 - 1) != -1)
  {
    v6 = a2[2];
    if (v4 >= v6)
    {
      v8 = v4 - v3;
      v9 = (v4 - v3) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        sub_10028C64C();
      }

      v11 = v6 - v3;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        sub_1000B85D0(a2, v13);
      }

      v14 = (v4 - v3) >> 2;
      v15 = (4 * v9);
      v16 = (4 * v9 - 4 * v14);
      *v15 = -1;
      v7 = (v15 + 1);
      memcpy(v16, v3, v8);
      v17 = *a2;
      *a2 = v16;
      a2[1] = v7;
      a2[2] = 0;
      if (v17)
      {
        operator delete(v17);
        v3 = *a2;
      }

      else
      {
        v3 = v16;
      }
    }

    else
    {
      *v4 = -1;
      v7 = v4 + 4;
    }

    a2[1] = v7;
  }

  v18 = a1[2];
  a1[2] = v3;
  *a2 = v18;
  v19 = a1[3];
  a1[3] = a2[1];
  a2[1] = v19;
  v20 = a1[4];
  a1[4] = a2[2];
  a2[2] = v20;
}

uint64_t sub_1002D9584(uint64_t a1, uint64_t *a2)
{
  sub_1002D98B4(v4, a2);
  sub_1002D98B4(a1, v4);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1002D95F8@<X0>(unsigned int a1@<W0>, __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  sub_10003848C(v16);
  v6 = sub_1002DDED4(a1);
  v7 = strlen(v6);
  sub_100038730(&v17, v6, v7);
  if ((a2 & 0x100) != 0)
  {
    v8 = sub_100038730(&v17, "-", 1);
    v9 = sub_100F386AC(a2);
    v10 = strlen(v9);
    sub_100038730(v8, v9, v10);
  }

  if ((v24 & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v12 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_16;
    }

    locale = v19[1].__locale_;
    v12 = v19[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, locale, v11);
  }

LABEL_16:
  a3[v11] = 0;
  v17 = v14;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002D9890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1002D98B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_10038EB38(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 2);
  v5 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 28);
  *(a1 + 40) = v5;
  if (*(a2 + 87) < 0)
  {
    sub_100007244((a1 + 64), a2[8], a2[9]);
  }

  else
  {
    v6 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_1002D9958(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D9974(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1005A53B0(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  sub_1002D9584(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0x2A));
  v14 = *v13 + 96 * (v11 % 0x2A);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4032;
  }

  return v14 - 96;
}

uint64_t sub_1002D9A90(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x2A)
  {
    a2 = 1;
  }

  if (v2 < 0x54)
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
    *(a1 + 32) -= 42;
  }

  return v4 ^ 1u;
}

std::string *sub_1002D9AF0(std::string *a1, char *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_100006044(a1, a2);
  }

  else
  {
    sub_10000EC00(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_1002D9B4C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a2;
  if (a2 != 12)
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  sub_100F20D0C(a1 + 16, &v18);
  if (v20 == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101ACAA1C();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v18, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@WifiChannel, apply, time-based 5GHz channel selector overrides, %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101ACAA1C();
      }

      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v18, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      v23 = 136446210;
      v24 = p_buf;
      v15 = _os_log_send_and_compose_impl();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual std::optional<CLWifiLocationChannelSelectionService_Type::ChannelRecommendation> CLWifiLocation5GHzChannelSelectionService::recommendedChannels(CLWifiService_Type::ScanType)", "%s\n", v15);
      if (v15 != &__p)
      {
        free(v15);
      }
    }

    if ((v20 & 1) == 0)
    {
      sub_100173BA0();
    }

    __p.__r_.__value_.__s.__data_[0] = 1;
    v26 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    sub_10038EB38(&__p.__r_.__value_.__l.__size_, v18, v19, (v19 - v18) >> 2);
    buf.__r_.__value_.__r.__words[0] = &v21;
    v7 = sub_100F21E2C(a1 + 96, &v21);
    *(v7 + 40) = __p.__r_.__value_.__s.__data_[0];
    v8 = v7[6];
    if (v8)
    {
      v7[7] = v8;
      operator delete(v8);
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
    }

LABEL_35:
    *(v7 + 3) = *&__p.__r_.__value_.__r.__words[1];
    v7[8] = v26;
    __p.__r_.__value_.__r.__words[0] = &v21;
    v12 = sub_100F21E2C(a1 + 96, &v21);
    *a3 = *(v12 + 40);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    sub_10038EB38(a3 + 8, v12[6], v12[7], (v12[7] - v12[6]) >> 2);
    v13 = 1;
    goto LABEL_37;
  }

  sub_100F20D0C(a1 + 8, &__p);
  sub_100F21CBC(&v18, &__p);
  if (v26 == 1 && __p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101ACAA1C();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v18, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &__p;
      }

      else
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "@WifiChannel, apply, default 5GHz channel selector overrides, %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101ACAA1C();
      }

      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v18, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &buf;
      }

      else
      {
        v16 = buf.__r_.__value_.__r.__words[0];
      }

      v23 = 136446210;
      v24 = v16;
      v17 = _os_log_send_and_compose_impl();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual std::optional<CLWifiLocationChannelSelectionService_Type::ChannelRecommendation> CLWifiLocation5GHzChannelSelectionService::recommendedChannels(CLWifiService_Type::ScanType)", "%s\n", v17);
      if (v17 != &__p)
      {
        free(v17);
      }
    }

    if ((v20 & 1) == 0)
    {
      sub_100173BA0();
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    sub_10038EB38(&__p.__r_.__value_.__l.__size_, v18, v19, (v19 - v18) >> 2);
    buf.__r_.__value_.__r.__words[0] = &v21;
    v7 = sub_100F21E2C(a1 + 96, &v21);
    *(v7 + 40) = __p.__r_.__value_.__s.__data_[0];
    v11 = v7[6];
    if (v11)
    {
      v7[7] = v11;
      operator delete(v11);
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
    }

    goto LABEL_35;
  }

  v13 = 0;
  *a3 = 0;
LABEL_37:
  *(a3 + 32) = v13;
  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_1002DA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (a15 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DA1CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v4;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    sub_101052778(a1 + 48, (a2 + 48));
  }

  else
  {
    sub_1002DA304(a1, a2);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_1002DA260(uint64_t a1, char a2, int a3, char a4, __int128 *a5, uint64_t a6, double a7)
{
  *a1 = a2;
  *(a1 + 8) = a7;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 24), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 40) = *(a5 + 2);
    *(a1 + 24) = v9;
  }

  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  if (*(a6 + 32) == 1)
  {
    *(a1 + 48) = *a6;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 56) = *(a6 + 8);
    *(a1 + 72) = *(a6 + 24);
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a1 + 80) = 1;
  }

  return a1;
}

__n128 sub_1002DA304(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v2;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t sub_1002DA384(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_10038EB38(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1002DA3F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DA420(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {

      sub_1007BE7D4(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 16) = v3;
      operator delete(v3);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_10038EB38(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 1;
  }
}

id sub_1002DA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a2;
  v8 = [*(a1 + 104) syncgetStartScanWithType:a2 lowPriority:a3 lowLatency:a4 passive:1 requester:"wlp" channels:a6];
  if (qword_1025D4630 != -1)
  {
    sub_1019293D4();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1002DDED4(v7);
    v11 = a5;
    if (*(a5 + 23) < 0)
    {
      v11 = *a5;
    }

    *buf = 136446722;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 1026;
    v19 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiFlow, scanreq, %{public}s, %{public}s, result, %{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1019293E8();
    }

    sub_1002DDED4(v7);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProviderExternal::startWifiScan(CLWifiService_Type::ScanType, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &) const", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if ((v8 & 1) == 0)
  {
    sub_1001E87E0(4u);
  }

  return v8;
}

uint64_t sub_1002DA6F0(uint64_t a1, unsigned int a2, int a3, int a4, int a5, void **a6, uint64_t a7)
{
  v12 = sub_1002DDED4(a2);
  if (a5)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v27 = a5;
  v28 = v13;
  if (a5)
  {
    v14 = "passive";
  }

  else
  {
    v14 = "active";
  }

  if (a3)
  {
    v15 = "low";
  }

  else
  {
    v15 = "normal";
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v17 = a6;
    if (*(a6 + 23) < 0)
    {
      v17 = *a6;
    }

    *buf = 136446978;
    *v66 = v17;
    *&v66[8] = 2082;
    v67 = v12;
    *v68 = 2082;
    *&v68[2] = v14;
    v69 = 2082;
    v70 = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WsMetric, scanrequest, %{public}s, %{public}s, %{public}s, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = a6;
    if (*(a6 + 23) < 0)
    {
      v23 = *a6;
    }

    v55 = 136446978;
    v56 = v23;
    v57 = 2082;
    *v58 = v12;
    *&v58[8] = 2082;
    v59 = v14;
    v60 = 2082;
    v61 = v15;
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::startScan(CLWifiService_Type::ScanType, BOOL, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  v38 = _NSConcreteStackBlock;
  v39 = 3321888768;
  v40 = sub_1002D8A80;
  v41 = &unk_102460C78;
  if (*(a6 + 23) < 0)
  {
    sub_100007244(&v42, *a6, a6[1]);
  }

  else
  {
    v42 = *a6;
    v43 = a6[2];
  }

  v44 = v12;
  v45 = v14;
  v46 = v15;
  AnalyticsSendEventLazy();
  v18 = a7;
  if (*(a6 + 23) < 0)
  {
    sub_100007244(__p, *a6, a6[1]);
  }

  else
  {
    *__p = *a6;
    v37 = a6[2];
  }

  sub_1002D8B80(a1, a2, v28, a3, a4, __p, a7, &v55);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (v64)
  {
    sub_1002D98B4(v31, &v55);
    v19 = sub_1002DB54C(a1, v31);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
      v18 = a7;
    }

    v20 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v18 + 24);
      *buf = 67109888;
      *v66 = a2;
      *&v66[4] = 1024;
      *&v66[6] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v27;
      HIWORD(v67) = 1026;
      *v68 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Unable to convert type: %d, isLowPriority: %d, isPassiveScan: %d, w/ overriding channels: %{public}d to scan parameters. Not attempting to scan", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v25 = *(a7 + 24);
      v47 = 67109888;
      v48 = a2;
      v49 = 1024;
      v50 = a3;
      v51 = 1024;
      v52 = v27;
      v53 = 1026;
      v54 = v25;
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::startScan(CLWifiService_Type::ScanType, BOOL, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v19 = 0;
  }

  if (v64 == 1)
  {
    if (v63 < 0)
    {
      operator delete(v62);
    }

    if (*&v58[2])
    {
      v59 = *&v58[2];
      operator delete(*&v58[2]);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  return v19;
}

void sub_1002DAC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_1005A43AC(&a49);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *sub_1002DAC84(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 136;
  switch(a2)
  {
    case -1:
    case 13:
      if (qword_1025D4620 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    case 0:
      goto LABEL_13;
    case 1:
      v4 = 144;
      goto LABEL_13;
    case 2:
      v4 = 152;
      goto LABEL_13;
    case 3:
      v4 = 160;
      goto LABEL_13;
    case 4:
      v4 = 168;
      goto LABEL_13;
    case 5:
      v4 = 216;
      goto LABEL_13;
    case 6:
      v5 = *(a1 + 224);
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    case 7:
      v4 = 128;
      goto LABEL_13;
    case 8:
      v4 = 176;
      goto LABEL_13;
    case 9:
      v4 = 184;
      goto LABEL_13;
    case 10:
LABEL_8:
      v4 = 200;
      goto LABEL_13;
    case 11:
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v15 = qword_1025D4628;
      if (os_signpost_enabled(qword_1025D4628))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead", "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v16 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      }

      while (1)
      {
        abort_report_np();
        __break(1u);
LABEL_44:
        sub_1018CD624();
LABEL_24:
        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v12 = qword_1025D4628;
        if (os_signpost_enabled(qword_1025D4628))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempting to scan with an invalid scan type", "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        }
      }

    case 12:
      v4 = 192;
LABEL_13:
      v5 = *(a1 + v4);
      if (!v5)
      {
        return v5;
      }

LABEL_14:
      v6 = sub_1002D903C();
      sub_1002DB26C(v6, v2, &__p);
      v7 = BYTE4(v22);
      if (BYTE4(v22) != 1)
      {
        return v5;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      v17 = *v20;
      v18 = __p;
      sub_1005A2874(a1, &v18, &v17, MutableCopy);
      v9 = CFAutorelease(MutableCopy);
      if (BYTE4(v22))
      {
        if (__p)
        {
          *v20 = __p;
          operator delete(__p);
        }

        if ((v7 & 1) == 0)
        {
          return v5;
        }
      }

      return v9;
    default:
      return 0;
  }
}

void sub_1002DB1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DB26C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v6 = a1 + 5;
  v5 = a1[5];
  v15 = a1 + 5;
  (*(v5 + 16))(a1 + 5);
  v16 = 256;
  v7 = sub_1002D9048(a1, &v17);
  if (!v7)
  {
LABEL_7:
    *a3 = 0;
    *(a3 + 24) = 0;
    return (*(*v6 + 24))(v6);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_10038EB38(&__p, v7[3], v7[4], (v7[4] - v7[3]) >> 2);
  v8 = __p;
  v9 = v13;
  v10 = v13 - __p;
  if (v13 == __p)
  {
    if (v13)
    {
      v13 = __p;
      operator delete(__p);
    }

    goto LABEL_7;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_10038EB38(a3, v8, v9, v10 >> 2);
  *(a3 + 24) = 1;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return (*(*v6 + 24))(v6);
}

void sub_1002DB384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DB3B8(const __CFDictionary *a1, CFStringRef theString)
{
  CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CFDictionaryContainsKey(a1, theString))
  {
    sub_101AA3D0C();
  }

  Value = CFDictionaryGetValue(a1, theString);
  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    sub_101AA3B84();
  }

  return valuePtr;
}

uint64_t sub_1002DB444(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, __int128 *a10, char a11)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 57) = a9;
  if (*(a10 + 23) < 0)
  {
    sub_100007244((a1 + 64), *a10, *(a10 + 1));
  }

  else
  {
    v13 = *a10;
    *(a1 + 80) = *(a10 + 2);
    *(a1 + 64) = v13;
  }

  *(a1 + 88) = a11;
  *__p = *a5;
  v16 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  sub_1002D9448(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1002DB508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 24) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DB54C(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  v47 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v48 = 256;
  if (!*(a1 + 312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiScan, skip, null device, #KvCheck", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

LABEL_19:
    sub_1018CD5B4(buf);
    *__p = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v14);
    goto LABEL_63;
  }

  if (!*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "WifiScan, skip, null dpc, #KvCheck", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current - *(a1 + 752);
  if (v6 < 10.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v17 = sub_1002DCBCC(a2);
      v18 = *(a1 + 760);
      *buf = 67240704;
      *v56 = v17;
      *&v56[4] = 2050;
      *&v56[6] = v6;
      *&v56[14] = 1026;
      *&v56[16] = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "WifiScan, skip, cooloff, type, %{public}d, since, %{public}.1lf, error, %{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

    sub_1018CD5B4(buf);
    v33 = sub_1002DCBCC(a2);
    v34 = *(a1 + 760);
    *__p = 67240704;
    *&__p[4] = v33;
    *&__p[8] = 2050;
    *&__p[10] = v6;
    *&__p[18] = 1026;
    *&__p[20] = v34;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v14);
LABEL_63:
    if (v14 != buf)
    {
      free(v14);
    }

LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  buf[0] = sub_1002DCBCC(a2);
  sub_1002DC1B0(a1 + 764, buf);
  if (sub_100071CA0())
  {
    sub_10004FD18(buf);
    v7 = sub_1002DCBCC(a2);
    v8 = sub_1002DDED4(v7);
    sub_1002DC414(buf, "scan", v8);
    __p[0] = sub_1002DCBD4(a2);
    sub_100043360(buf, "low_priority", __p);
    __p[0] = sub_1002DCBDC(a2);
    sub_100043360(buf, "passive", __p);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4(buf);
  }

  if (*(a1 + 384) < 7uLL)
  {
    if (*(a1 + 232) == 1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v21 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "override scan, passive scans only...", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        *__p = 0;
        v44 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      sub_100E43F30(a2, 2);
    }

    sub_1002D9974((a1 + 344), a2);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1002DCBEC(a2, __p);
      v23 = __p[23] >= 0 ? __p : *__p;
      v24 = sub_1002DCBCC(a2);
      v25 = sub_1002DDED4(v24);
      v26 = sub_1002DCBD4(a2);
      v27 = sub_1002DCBDC(a2);
      v28 = *(a1 + 384);
      *buf = 136447234;
      *v56 = v23;
      *&v56[8] = 2082;
      *&v56[10] = v25;
      *&v56[18] = 1026;
      v57 = v26;
      v58 = 1026;
      v59 = v27;
      v60 = 2050;
      v61 = v28;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "WifiScan, enqueue, %{public}s, %{public}s, lowpri, %{public}d, passive, %{public}d, pending, %{public}lu", buf, 0x2Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_49;
    }

    sub_1018CD5B4(buf);
    sub_1002DCBEC(a2, v45);
    if (v46 >= 0)
    {
      v38 = v45;
    }

    else
    {
      v38 = v45[0];
    }

    v39 = sub_1002DCBCC(a2);
    v40 = sub_1002DDED4(v39);
    v41 = sub_1002DCBD4(a2);
    v42 = sub_1002DCBDC(a2);
    v43 = *(a1 + 384);
    *__p = 136447234;
    *&__p[4] = v38;
    *&__p[12] = 2082;
    *&__p[14] = v40;
    *&__p[22] = 1026;
    v50 = v41;
    v51 = 1026;
    v52 = v42;
    v53 = 2050;
    v54 = v43;
    v12 = _os_log_send_and_compose_impl();
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v12);
    if (v12 == buf)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 384);
      *buf = 134349056;
      *v56 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "WifiScan, skip, maxed, %{public}ld", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_49;
    }

    sub_1018CD5B4(buf);
    v11 = *(a1 + 384);
    *__p = 134349056;
    *&__p[4] = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v12);
    if (v12 == buf)
    {
      goto LABEL_49;
    }
  }

  free(v12);
LABEL_49:
  if (Current - *(a1 + 424) <= 3.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 424);
      *buf = 134349312;
      *v56 = v32;
      *&v56[8] = 2050;
      *&v56[10] = 0x4008000000000000;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "WifiScan, misc, inprogress, last, %{public}.1f, interval, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v35 = *(a1 + 424);
      *__p = 134349312;
      *&__p[4] = v35;
      *&__p[12] = 2050;
      *&__p[14] = 0x4008000000000000;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  else
  {
    WiFiDeviceClientRegisterScanUpdateCallback();
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "WifiDpc, signal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      *__p = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    CFRunLoopSourceSignal(*(a1 + 296));
    v30 = sub_100107858();
    CFRunLoopWakeUp(v30);
  }

  v19 = 1;
LABEL_32:
  (*(*v4 + 24))(v4);
  return v19;
}

void sub_1002DC1B0(uint64_t a1, char *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v5;
    v13 = 2080;
    v14 = sub_1002DDED4(v5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WIFI: stats: increment scan, type, %d, %s", &__p, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF5B4(a2);
  }

  v6 = *a2;
  if (v6 > 12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = sub_1002DDED4(v8);
      LODWORD(__p) = 67240450;
      HIDWORD(__p) = v8;
      v13 = 2082;
      v14 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WIFI: stats: unknown scan type, %{public}d, %{public}s", &__p, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CF6D4(a2);
    }
  }

  else
  {
    ++*(a1 + 4 * v6 + 12);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1005A3214(&__p);
    v11 = v15 >= 0 ? &__p : __p;
    *buf = 136315138;
    v17 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WIFI: stats: scansStat, %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF7F4();
  }
}

BOOL sub_1002DC414(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1002DC480(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1002DC480(uint64_t a1, const __CFString *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB810();
    }
  }

  return v5 != 0;
}

void sub_1002DC604(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLWifiService::onDpcSource", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onDpcSource, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D9A80;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1002DC808(uint64_t a1)
{
  v2 = a1 + 832;
  v11 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v12 = 256;
  if (*(a1 + 744))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiDpc, onDpcSource", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v10 = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onDpcSource()", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v4 = *(a1 + 744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002D9A88;
    block[3] = &unk_102449A78;
    block[4] = a1;
    dispatch_async(v4, block);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiDpc, null dispatch queue (shutdown?), #KvCheck", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v10 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onDpcSource()", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_1002DCB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DCB44(int64x2_t *a1)
{
  sub_1002DDC9C(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x2AuLL)) + 96 * (a1[2].i64[0] % 0x2AuLL));
  a1[2] = vaddq_s64(a1[2], xmmword_101C66230);

  return sub_1002D9A90(a1, 1);
}

char *sub_1002DCBEC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[87] < 0)
  {
    return sub_100007244(a2, *(result + 8), *(result + 9));
  }

  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 10);
  return result;
}

void sub_1002DCC14(uint64_t a1)
{
  v2 = a1 + 832;
  v72 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v74 = 256;
  Current = CFAbsoluteTimeGetCurrent();
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!*(a1 + 312) || !*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v58 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(a1 + 312) == 0;
      v60 = *(a1 + 296) == 0;
      *buf = 67240448;
      *v87 = v59;
      *&v87[4] = 1026;
      *&v87[6] = v60;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "WifiMgr, performScan, fail,  device, %{public}d, dpc, %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_120;
    }

    sub_1018CD5B4(buf);
    v61 = *(a1 + 312) == 0;
    v62 = *(a1 + 296) == 0;
    v80 = 67240448;
    *v81 = v61;
    *&v81[4] = 1026;
    *&v81[6] = v62;
    v63 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v63);
    goto LABEL_117;
  }

  v5 = Current;
  if (Current - *(a1 + 424) <= 3.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v64 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "WifiMgr, performScan, in progress", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_120;
    }

    sub_1018CD5B4(buf);
    LOWORD(v80) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v63);
LABEL_117:
    if (v63 != buf)
    {
      free(v63);
    }

LABEL_120:
    if (v74)
    {
      pthread_mutex_unlock(v73);
    }

    else
    {
      (*(*v72 + 24))(v72);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 384);
    *buf = 134349056;
    *v87 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "WifiScan, perform, %{public}lu", buf, 0xCu);
  }

  v67 = v2;
  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v65 = *(a1 + 384);
    v80 = 134349056;
    *v81 = v65;
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v66);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  v68 = 1;
  while (*(a1 + 384))
  {
    sub_1002D98B4(&v80, (*(*(a1 + 352) + 8 * (*(a1 + 376) / 0x2AuLL)) + 96 * (*(a1 + 376) % 0x2AuLL)));
    v9 = sub_1002DCBCC(&v80);
    sub_1002DCB44((a1 + 344));
    v10 = sub_1002DDCF4(a1, &v80);
    if (v10)
    {
      if (sub_1002DCBD4(&v80))
      {
        v11 = kCFBooleanTrue;
      }

      else
      {
        v11 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v10, @"SCAN_LOW_PRIORITY", v11);
      if (sub_1002DDC94(&v80))
      {
        v12 = kCFBooleanTrue;
      }

      else
      {
        v12 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v10, @"SCAN_LOW_LATENCY", v12);
      v13 = sub_1002DCBDC(&v80);
      v14 = 120;
      if (v13)
      {
        v14 = 112;
      }

      CFDictionarySetValue(v10, @"SCAN_TYPE", *(a1 + v14));
      v15 = *(a1 + 312);
      CFRetain(v15);
      CFRetain(v10);
      sub_1000393C8(v2);
      v16 = CFAbsoluteTimeGetCurrent();
      *(a1 + 233) = v9;
      v17 = WiFiDeviceClientScanAsync();
      if (p_info[196] != -1)
      {
        sub_1018CD58C();
      }

      v18 = v6[197];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_1002DCBEC(&v80, __p);
        if (__p[23] >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = *__p;
        }

        v20 = sub_1002DCBCC(&v80);
        v21 = sub_1002DDED4(v20);
        if (sub_1002DCBD4(&v80))
        {
          v22 = 108;
        }

        else
        {
          v22 = 110;
        }

        v23 = sub_1002DDC94(&v80);
        v24 = sub_1002DCBDC(&v80);
        *buf = 136447746;
        if (v23)
        {
          v25 = 108;
        }

        else
        {
          v25 = 100;
        }

        *v87 = v19;
        if (v24)
        {
          v26 = 112;
        }

        else
        {
          v26 = 97;
        }

        *&v87[8] = 2082;
        *&v87[10] = v21;
        *&v87[18] = 1026;
        *&v87[20] = v22;
        v88 = 1026;
        LODWORD(v89) = v25;
        WORD2(v89) = 1026;
        *(&v89 + 6) = v26;
        WORD5(v89) = 1026;
        HIDWORD(v89) = v68;
        v90 = 1026;
        v91 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "WifiScan, execute, %{public}s, %{public}s, flags, %{public}c%{public}c%{public}c, n, %{public}d, error, %{public}d", buf, 0x34u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        ++v68;
        v2 = v67;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        sub_1002DCBEC(&v80, v70);
        if (v71 >= 0)
        {
          v40 = v70;
        }

        else
        {
          v40 = v70[0];
        }

        v41 = sub_1002DCBCC(&v80);
        v42 = sub_1002DDED4(v41);
        if (sub_1002DCBD4(&v80))
        {
          v43 = 108;
        }

        else
        {
          v43 = 110;
        }

        v44 = sub_1002DDC94(&v80);
        v45 = sub_1002DCBDC(&v80);
        *__p = 136447746;
        if (v44)
        {
          v46 = 108;
        }

        else
        {
          v46 = 100;
        }

        *&__p[4] = v40;
        if (v45)
        {
          v47 = 112;
        }

        else
        {
          v47 = 97;
        }

        *&__p[12] = 2082;
        *&__p[14] = v42;
        *&__p[22] = 1026;
        *&__p[24] = v43;
        v76 = 1026;
        LODWORD(v77) = v46;
        WORD2(v77) = 1026;
        *(&v77 + 6) = v47;
        WORD5(v77) = 1026;
        HIDWORD(v77) = v68;
        v78 = 1026;
        v79 = v17;
        v48 = _os_log_send_and_compose_impl();
        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v48);
        v2 = v67;
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        v6 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        if (v48 != buf)
        {
          free(v48);
        }

        ++v68;
      }

      if (*(a1 + 234) == 1)
      {
        if (p_info[196] != -1)
        {
          sub_1018CD58C();
        }

        v27 = v6[197];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "WifiMgr, Requesting scan with pending scan reply, #CloneMe", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD5B4(buf);
          *__p = 0;
          v52 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }
      }

      *(a1 + 234) = 1;
      v28 = CFAbsoluteTimeGetCurrent();
      sub_10003926C(v2);
      CFRelease(v10);
      CFRelease(v15);
      v29 = v28 - v16;
      if (v29 >= 3.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v30 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v87 = v29;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#Warning WIFI: ScanAsync blocked for, %.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          *__p = 134217984;
          *&__p[4] = v29;
          v53 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v53);
          if (v53 != buf)
          {
            free(v53);
          }
        }
      }

      if (!v17)
      {
        *(a1 + 424) = v5;
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v36 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v37 = sub_1002DDED4(v9);
          v38 = *(a1 + 384);
          *buf = 67109890;
          *v87 = v9;
          *&v87[4] = 2080;
          *&v87[6] = v37;
          *&v87[14] = 2048;
          *&v87[16] = v38;
          v88 = 2048;
          *&v89 = v29;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "asynchronous scan type %d %s in progress (%lu requests left), scanWaitInterval, %.3lf", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          v54 = sub_1002DDED4(v9);
          v55 = *(a1 + 384);
          *__p = 67109890;
          *&__p[4] = v9;
          *&__p[8] = 2080;
          *&__p[10] = v54;
          *&__p[18] = 2048;
          *&__p[20] = v55;
          v76 = 2048;
          *&v77 = v29;
          v56 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }

        if (*(a1 + 312))
        {
          WiFiDeviceClientRegisterScanUpdateCallback();
        }

        else
        {
          if (p_info[196] != -1)
          {
            sub_1018CD58C();
          }

          v39 = v6[197];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "WifiService, performPendingScans, fWifiDevice NULL", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018CD5B4(buf);
            *__p = 0;
            v57 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::performPendingScans()", "%s\n", v57);
            if (v57 != buf)
            {
              free(v57);
            }
          }
        }

        v35 = 0;
        goto LABEL_72;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v31 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_1002DDED4(v9);
        v33 = *(a1 + 384);
        *buf = 67110146;
        *v87 = v9;
        *&v87[4] = 2080;
        *&v87[6] = v32;
        *&v87[14] = 2048;
        *&v87[16] = v33;
        v88 = 1024;
        LODWORD(v89) = v17;
        WORD2(v89) = 2048;
        *(&v89 + 6) = v29;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning asynchronous scan type %d %s failed (%lu requests left) - error %d, scanWaitInterval, %.3lf", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        v49 = sub_1002DDED4(v9);
        v50 = *(a1 + 384);
        *__p = 67110146;
        *&__p[4] = v9;
        *&__p[8] = 2080;
        *&__p[10] = v49;
        *&__p[18] = 2048;
        *&__p[20] = v50;
        v76 = 1024;
        LODWORD(v77) = v17;
        WORD2(v77) = 2048;
        *(&v77 + 6) = v29;
        v51 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }

      sub_10014E54C((a1 + 448));
      *(a1 + 432) = -1;
      *(a1 + 440) = 0;
      v34 = *(a1 + 40);
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_1005A2F04;
      v69[3] = &unk_102449A78;
      v69[4] = a1;
      [v34 async:v69];
    }

    v35 = 1;
LABEL_72:
    if (v85 < 0)
    {
      operator delete(v84);
    }

    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }

    if ((v35 & 1) == 0)
    {
      break;
    }
  }

  if ((v74 & 0x100) != 0)
  {
    goto LABEL_120;
  }
}

void sub_1002DDBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_10038EBF0(&a49);
  sub_1017EC98C(&a35);
  _Unwind_Resume(a1);
}

void sub_1002DDC9C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

const __CFDictionary *sub_1002DDCF4(uint64_t a1, unsigned int *a2)
{
  if (sub_1002DCBCC(a2) == 11)
  {
    v4 = sub_100187E48(a2);
    v5 = sub_100BCA9AC(a2);
    v6 = sub_10002411C(a2);
    v14 = *sub_100E43F28(a2);
    v13 = *(sub_100E43F28(a2) + 8);
    v7 = sub_10085FD60(a2);
    v8 = sub_100036020(a2);
    v9 = sub_1002DCBD4(a2);
    v10 = sub_1005A29D8(a1, v4, v5, v6, &v14, &v13, v7, v8, v9);
    return CFAutorelease(v10);
  }

  else
  {
    v12 = sub_1002DCBCC(a2);

    return sub_1002DAC84(a1, v12);
  }
}

uint64_t sub_1002DDE28(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_1005350B8();
  }

  return result;
}

const char *sub_1002DDED4(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "na";
  }

  else
  {
    return (&off_1024A0F00)[a1];
  }
}

uint64_t sub_1002DDEF8(uint64_t a1, uint64_t a2, const __CFArray *a3, unsigned int a4)
{
  v7 = a1 + 832;
  v44 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v45 = 256;
  v8 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v55 = 0;
    v56 = 2082;
    *v57 = "";
    *&v57[8] = 2082;
    *&v57[10] = "activity";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  v10 = *(a1 + 233);
  if ((*(a1 + 234) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiMgr, Multiple scan callbacks, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      LOWORD(v46) = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  *(a1 + 234) = 0;
  v36 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v38 = *&byte_102637AD8[16];
  }

  v39 = xmmword_102637AF0;
  v40 = xmmword_102637B00;
  v41 = xmmword_102637B10;
  v42 = qword_102637B20;
  if (a3 && (v12 = CFGetTypeID(a3), v12 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(a3);
    v14 = 1;
  }

  else
  {
    v14 = 0;
    Count = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240704;
    v55 = a4;
    v56 = 1026;
    *v57 = v14;
    *&v57[4] = 1026;
    *&v57[6] = Count;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "WifiMgr, onWiFiDeviceClientScanCallback, error, %{public}d, valid, %{public}d, count, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    LODWORD(v46) = 67240704;
    HIDWORD(v46) = a4;
    *v47 = 1026;
    *&v47[2] = v14;
    *&v47[6] = 1026;
    *&v47[8] = Count;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v16 = v14 ^ 1;
  if (a4)
  {
    v16 = 1;
  }

  if (v16)
  {
    *(a1 + 432) = -1;
    *(a1 + 440) = 0;
    sub_10014E54C((a1 + 448));
    *(a1 + 424) = 0;
    if (a4 == 16)
    {
      *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
      *(a1 + 760) = 16;
      if (*(a1 + 408) < 0.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v22 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "recording busy start time as now", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          LOWORD(v46) = 0;
          v34 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        *(a1 + 408) = CFAbsoluteTimeGetCurrent();
      }

      ++*(a1 + 772);
      *buf = 5;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    }

    else
    {
      *buf = 4;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
      if (a4 == 6)
      {
        *(a1 + 752) = CFAbsoluteTimeGetCurrent();
        *(a1 + 760) = 6;
      }

      ++*(a1 + 768);
    }
  }

  else
  {
    *(a1 + 432) = v10;
    *(a1 + 440) = CFAbsoluteTimeGetCurrent();
    sub_10014E54C((a1 + 448));
    *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 760) = 0;
    sub_1002E0A48(a1, a3, (a1 + 400), (a1 + 448), "scan");
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v17 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_1002DDED4(v10);
      v19 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 456) - *(a1 + 448)) >> 3);
      v20 = *(a1 + 440) - *(a1 + 424);
      v21 = *(a1 + 400);
      *buf = 67110146;
      v55 = v10;
      v56 = 2080;
      *v57 = v18;
      *&v57[8] = 2048;
      *&v57[10] = v19;
      v58 = 2048;
      v59 = v20;
      v60 = 2048;
      v61 = v21;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "asynchronous scan type %d %s completed - %lu results (%.3fs scan time), max age, %.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v28 = sub_1002DDED4(v10);
      v29 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 456) - *(a1 + 448)) >> 3);
      v30 = *(a1 + 440) - *(a1 + 424);
      v31 = *(a1 + 400);
      LODWORD(v46) = 67110146;
      HIDWORD(v46) = v10;
      *v47 = 2080;
      *&v47[2] = v28;
      *&v47[10] = 2048;
      v48 = v29;
      v49 = 2048;
      v50 = v30;
      v51 = 2048;
      v52 = v31;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    ++*(a1 + 764);
    *(a1 + 424) = 0;
    sub_1002E2588(a1, (a1 + 448), v10);
    buf[0] = 0;
    LOBYTE(v56) = 0;
    v62 = 0;
    memset(v63, 0, sizeof(v63));
    v64 = 0;
    buf[1] = v10;
    (*(*a1 + 224))(a1, &v63[8], v63);
    sub_1002E1CB0(a1, &v46);
    if (v53 == 1)
    {
      sub_1002DEB0C(&v56, &v46);
    }

    v35 = 3;
    (*(*a1 + 152))(a1, &v35, buf, 1, 0xFFFFFFFFLL, 0);
    [*(a1 + 672) processEventTime:CFAbsoluteTimeGetCurrent()];
    if (v53 == 1 && SBYTE1(v50) < 0)
    {
      operator delete(*v47);
    }

    v46 = &v63[8];
    sub_1000B96B4(&v46);
    if (v62 == 1 && SHIBYTE(v60) < 0)
    {
      operator delete(*&v57[6]);
    }
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientRegisterScanUpdateCallback();
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "WifiService, scan callback, fWifiDevice NULL", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(v46) = 0;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

  if (*(a1 + 384))
  {
    CFRunLoopSourceSignal(*(a1 + 296));
    v24 = sub_100107858();
    CFRunLoopWakeUp(v24);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v7 + 24))(v7);
}

void sub_1002DEA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  sub_1017EC98C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DEACC(const void *a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_1002E198C(a1, &v4);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1002DEB0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    v5 = *(a2 + 48);
    v4 = *(a2 + 64);
    v6 = *(a2 + 32);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v5;
    *(a1 + 64) = v4;
    *(a1 + 32) = v6;
  }

  else
  {
    sub_1001005C4(a1, a2);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_1002DEB84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102460EC8;
  *(a1 + 24) = *a2;
  sub_1000FB724((a1 + 32), a2 + 8);
  v4 = *(a2 + 104);
  *(a1 + 136) = 0;
  *(a1 + 128) = v4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100288650(a1 + 136, *(a2 + 112), *(a2 + 120), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  *(a1 + 160) = *(a2 + 136);
  return a1;
}

void sub_1002DEC1C(_Unwind_Exception *a1)
{
  if (*(v1 + 120) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

BOOL sub_1002DEC54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = qword_102637AD0;
  std::string::operator=((a3 + 8), byte_102637AD8);
  v7 = xmmword_102637B00;
  v6 = xmmword_102637B10;
  v8 = xmmword_102637AF0;
  *(a3 + 80) = qword_102637B20;
  *(a3 + 48) = v7;
  *(a3 + 64) = v6;
  *(a3 + 32) = v8;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  Property = WiFiNetworkGetProperty();
  if (!Property || !sub_100005A24(Property, &v125))
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(v127);
  if (v127 < 0)
  {
    v10 = v126;
  }

  if (!v10)
  {
LABEL_6:
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v12 = &v125;
      if (v127 < 0)
      {
        v12 = v125;
      }

      *buf = 136380675;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "WifiMgr, error, bssid invalid, %{private}s, #CloneMe", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v84 = &v125;
      if (v127 < 0)
      {
        v84 = v125;
      }

      v128 = 136380675;
      v129 = v84;
      v85 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v85);
      if (v85 != buf)
      {
        free(v85);
      }
    }
  }

  v13 = *(a3 + 32);
  v14 = *(a3 + 36);
  v123 = *(a3 + 40);
  v124 = v14;
  v121[0] = 0;
  v121[1] = 0;
  v122 = 0;
  v120 = v13;
  v119 = *(a3 + 48);
  v115 = *(a3 + 65);
  v118 = *(a3 + 68);
  v15 = WiFiNetworkGetProperty();
  if (!v15 || (sub_100005EEC(v15, &v124) & 1) == 0)
  {
    v124 = -1;
  }

  v16 = WiFiNetworkGetProperty();
  if (!v16 || (sub_100005EEC(v16, &v123) & 1) == 0)
  {
    v123 = -1;
  }

  v17 = WiFiNetworkGetProperty();
  if (!v17 || !sub_100005A24(v17, v121))
  {
    if (SHIBYTE(v122) < 0)
    {
      *v121[0] = 0;
      v121[1] = 0;
    }

    else
    {
      LOBYTE(v121[0]) = 0;
      HIBYTE(v122) = 0;
    }
  }

  v18 = WiFiNetworkGetProperty();
  if (!v18 || (sub_100005EEC(v18, &v120) & 1) == 0)
  {
    v120 = -1;
  }

  v19 = WiFiNetworkGetProperty();
  v20 = -1.0;
  if (v19 && sub_1000B8430(v19, &v119))
  {
    v20 = v119 / 1000.0;
  }

  v119 = v20;
  IsApplePersonalHotspot = WiFiNetworkIsApplePersonalHotspot();
  if (v124 != -1 || v123 != -1)
  {
    v24 = HIBYTE(v127);
    if (v127 < 0)
    {
      v24 = v126;
    }

    if (!v24)
    {
      goto LABEL_45;
    }

    if (v123 >= 1)
    {
LABEL_49:
      v25 = 0;
      v26 = v123 < 0xA6;
      goto LABEL_51;
    }

LABEL_44:
    v25 = 0;
    v26 = 0;
    goto LABEL_51;
  }

  if (SHIBYTE(v122) >= 0)
  {
    v22 = HIBYTE(v122);
  }

  else
  {
    v22 = v121[1];
  }

  v23 = HIBYTE(v127);
  if (v127 < 0)
  {
    v23 = v126;
  }

  if (!v22)
  {
    v26 = v23 != 0;
    v25 = 1;
    goto LABEL_51;
  }

  if (v23)
  {
    goto LABEL_44;
  }

LABEL_45:
  v25 = 0;
  v27 = HIBYTE(v122);
  v26 = 0;
  if (SHIBYTE(v122) < 0)
  {
    v27 = v121[1];
  }

  if (v27 && v123 >= 1)
  {
    goto LABEL_49;
  }

LABEL_51:
  v28 = WiFiNetworkGetProperty();
  if (!v28 || (sub_1002DEACC(v28, &v118) & 1) == 0)
  {
    v118 = 0;
  }

  v114 = v26;
  if (v26)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v30 = &v125;
      if (v127 < 0)
      {
        v30 = v125;
      }

      v31 = v121;
      if (SHIBYTE(v122) < 0)
      {
        v31 = v121[0];
      }

      *buf = 136316930;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 1024;
      v149 = v123;
      v150 = 1024;
      v151 = v124;
      v152 = 1024;
      v153 = v120;
      v154 = 2048;
      v155 = v119;
      v156 = 1024;
      v157 = v25;
      v158 = 1024;
      LODWORD(v159) = v118;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "WifiService, getAccessPoint, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d， rssiFlags, %u", buf, 0x3Eu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_111;
    }

    sub_1018CD5B4(buf);
    v32 = &v125;
    if (v127 < 0)
    {
      v32 = v125;
    }

    v33 = v121;
    if (SHIBYTE(v122) < 0)
    {
      v33 = v121[0];
    }

    v128 = 136316930;
    v129 = v32;
    v130 = 2080;
    v131 = v33;
    v132 = 1024;
    v133 = v123;
    v134 = 1024;
    v135 = v124;
    v136 = 1024;
    v137 = v120;
    v138 = 2048;
    v139 = v119;
    v140 = 1024;
    v141 = v25;
    v142 = 1024;
    LODWORD(v143) = v118;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v34);
    if (v34 == buf)
    {
      goto LABEL_111;
    }

LABEL_170:
    free(v34);
    goto LABEL_111;
  }

  if (*(a3 + 40))
  {
    if (*(a3 + 31) < 0)
    {
      sub_100007244(buf, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      *buf = *(a3 + 8);
      *&buf[16] = *(a3 + 24);
    }

    if (buf[23] >= 0)
    {
      v35 = buf[23];
    }

    else
    {
      v35 = *&buf[8];
    }

    if ((buf[23] & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v35)
      {
        goto LABEL_79;
      }
    }

    else if (v35)
    {
LABEL_79:
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v36 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v102 = v25;
        v106 = IsApplePersonalHotspot;
        v110 = a4;
        if (v127 >= 0)
        {
          v37 = &v125;
        }

        else
        {
          v37 = v125;
        }

        if (SHIBYTE(v122) >= 0)
        {
          v38 = v121;
        }

        else
        {
          v38 = v121[0];
        }

        v40 = v123;
        v39 = v124;
        v98 = v120;
        v100 = v119;
        v41 = WiFiNetworkGetProperty();
        v42 = WiFiNetworkGetProperty();
        v43 = WiFiNetworkGetProperty();
        *buf = 136382979;
        *&buf[4] = v37;
        *&buf[12] = 2081;
        *&buf[14] = v38;
        *&buf[22] = 1026;
        v149 = v40;
        v150 = 1026;
        v151 = v39;
        v152 = 1026;
        v153 = v98;
        v154 = 2050;
        v155 = v100;
        v156 = 1026;
        v25 = v102;
        v157 = v102;
        v158 = 2050;
        v159 = v41;
        v160 = 2050;
        v161 = v42;
        v162 = 2049;
        v163 = v43;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, invalid-network, mac, %{private}s, ssid, %{private}s, channel, %{public}d, mode, 0x%{public}x, rssi, %{public}d, age, %{public}.1lf, isEPNONetwork, %{public}d, m, %{public}p, c, %{public}p, s, %{private}p", buf, 0x56u);
        IsApplePersonalHotspot = v106;
        a4 = v110;
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        v103 = v25;
        v107 = IsApplePersonalHotspot;
        v111 = a4;
        if (v127 >= 0)
        {
          v44 = &v125;
        }

        else
        {
          v44 = v125;
        }

        if (SHIBYTE(v122) >= 0)
        {
          v45 = v121;
        }

        else
        {
          v45 = v121[0];
        }

        v46 = v123;
        v47 = v124;
        v48 = v120;
        v99 = v119;
        v49 = WiFiNetworkGetProperty();
        v50 = WiFiNetworkGetProperty();
        v51 = WiFiNetworkGetProperty();
        v128 = 136382979;
        v129 = v44;
        v130 = 2081;
        v131 = v45;
        v132 = 1026;
        v133 = v46;
        v134 = 1026;
        v135 = v47;
        v136 = 1026;
        v137 = v48;
        v138 = 2050;
        v139 = v99;
        v140 = 1026;
        v141 = v103;
        v142 = 2050;
        v143 = v49;
        v144 = 2050;
        v145 = v50;
        v146 = 2049;
        v147 = v51;
        v52 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }

        IsApplePersonalHotspot = v107;
        a4 = v111;
      }

      goto LABEL_111;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v53 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v104 = v25;
    v108 = IsApplePersonalHotspot;
    v112 = a4;
    if (v127 >= 0)
    {
      v54 = &v125;
    }

    else
    {
      v54 = v125;
    }

    if (SHIBYTE(v122) >= 0)
    {
      v55 = v121;
    }

    else
    {
      v55 = v121[0];
    }

    v57 = *(a3 + 36);
    v56 = *(a3 + 40);
    v58 = *(a3 + 32);
    v101 = *(a3 + 48);
    v59 = WiFiNetworkGetProperty();
    v60 = WiFiNetworkGetProperty();
    v61 = WiFiNetworkGetProperty();
    *buf = 136317442;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *&buf[14] = v55;
    *&buf[22] = 1024;
    v149 = v56;
    v150 = 1024;
    v151 = v57;
    v152 = 1024;
    v153 = v58;
    v154 = 2048;
    v155 = v101;
    v156 = 1024;
    v25 = v104;
    v157 = v104;
    v158 = 2048;
    v159 = v59;
    v160 = 2048;
    v161 = v60;
    v162 = 2048;
    v163 = v61;
    _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "WifiService, getAccessPoint, invalid-network, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d, m, %p, c, %p, s, %p", buf, 0x56u);
    IsApplePersonalHotspot = v108;
    a4 = v112;
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v105 = v25;
    v109 = IsApplePersonalHotspot;
    v113 = a4;
    v89 = v127 >= 0 ? &v125 : v125;
    v90 = SHIBYTE(v122) >= 0 ? v121 : v121[0];
    v91 = *(a3 + 36);
    v92 = *(a3 + 40);
    v93 = *(a3 + 32);
    v94 = *(a3 + 48);
    v95 = WiFiNetworkGetProperty();
    v96 = WiFiNetworkGetProperty();
    v97 = WiFiNetworkGetProperty();
    v128 = 136317442;
    v129 = v89;
    v130 = 2080;
    v131 = v90;
    v132 = 1024;
    v133 = v92;
    v134 = 1024;
    v135 = v91;
    v136 = 1024;
    v137 = v93;
    v138 = 2048;
    v139 = v94;
    v140 = 1024;
    v141 = v105;
    v142 = 2048;
    v143 = v95;
    v144 = 2048;
    v145 = v96;
    v146 = 2048;
    v147 = v97;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v34);
    IsApplePersonalHotspot = v109;
    a4 = v113;
    if (v34 != buf)
    {
      goto LABEL_170;
    }
  }

LABEL_111:
  v117 = qword_102637AD0;
  if (a4)
  {
    if (a4 == 1)
    {
      v62 = HIBYTE(v127);
      if (v127 < 0)
      {
        v62 = v126;
      }

      if (v62 || (*buf = qword_102637AD0, sub_100A8D070(&v117, buf)))
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v63 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          v64 = &v125;
          if (v127 < 0)
          {
            v64 = v125;
          }

          *buf = 136380931;
          *&buf[4] = v64;
          *&buf[12] = 1025;
          *&buf[14] = 75312138;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, HostedNetwork, %{private}s, r%{private}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          v65 = &v125;
          if (v127 < 0)
          {
            v65 = v125;
          }

          v128 = 136380931;
          v129 = v65;
          v130 = 1025;
          LODWORD(v131) = 75312138;
          v66 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v66);
          if (v66 != buf)
          {
            free(v66);
          }
        }
      }
    }
  }

  else
  {
    v117 = sub_100196E8C(&v125);
  }

  v67 = v117;
  if (SHIBYTE(v122) < 0)
  {
    sub_100007244(__p, v121[0], v121[1]);
  }

  else
  {
    *__p = *v121;
    __p[2] = v122;
  }

  v68 = v120;
  v69 = IsApplePersonalHotspot != 0;
  v71 = v123;
  v70 = v124;
  v72 = v119;
  v73 = *(a3 + 56);
  v74 = v118;
  v75 = __p[0];
  *buf = __p[1];
  *&buf[7] = *(&__p[1] + 7);
  v76 = HIBYTE(__p[2]);
  memset(__p, 0, sizeof(__p));
  *a3 = v67;
  if (*(a3 + 31) < 0)
  {
    operator delete(*(a3 + 8));
    v77 = SHIBYTE(__p[2]) < 0;
  }

  else
  {
    v77 = 0;
  }

  v78 = *buf;
  *(a3 + 8) = v75;
  *(a3 + 16) = v78;
  *(a3 + 23) = *&buf[7];
  *(a3 + 31) = v76;
  *(a3 + 32) = v68;
  *(a3 + 36) = v70;
  *(a3 + 40) = v71;
  *(a3 + 48) = v72;
  *(a3 + 56) = v73;
  *(a3 + 64) = v69;
  *(a3 + 65) = v115;
  *(a3 + 68) = v74;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  if (v77)
  {
    operator delete(__p[0]);
  }

  v79 = v114;
  if (sub_1002E1AA0(&v117))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v80 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v81 = &v125;
      if (v127 < 0)
      {
        v81 = v125;
      }

      v82 = v121;
      if (SHIBYTE(v122) < 0)
      {
        v82 = v121[0];
      }

      *buf = 136380931;
      *&buf[4] = v81;
      *&buf[12] = 2081;
      *&buf[14] = v82;
      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, invalid mac, %{private}s, %{private}s, #CloneMe", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v86 = &v125;
      if (v127 < 0)
      {
        v86 = v125;
      }

      v87 = v121;
      if (SHIBYTE(v122) < 0)
      {
        v87 = v121[0];
      }

      v128 = 136380931;
      v129 = v86;
      v130 = 2081;
      v131 = v87;
      v88 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v88);
      if (v88 != buf)
      {
        free(v88);
      }
    }

    v79 = 0;
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121[0]);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v125);
  }

  return v79;
}

void sub_1002DFCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002DFD60(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_100195A00(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_1002DFE5C(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1 + 56 != a2)
  {
    sub_100288978(a2, a1[56], a1[57], 0x2E8BA2E8BA2E8BA3 * ((a1[57] - a1[56]) >> 3));
  }

  *a3 = a1[55];
  return (*(a1[104] + 24))(v6);
}

void sub_1002DFF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DFF48(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  v32 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v33 = 256;
  if (!*(a1 + 312) || !*(a1 + 304))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 312) == 0;
      v13 = *(a1 + 304) == 0;
      *buf = 67240448;
      *v39 = v12;
      *&v39[4] = 1026;
      *&v39[6] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiMgr, getAssoc, fail, device, %{public}d, manager, %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }

    sub_1018CD5B4(buf);
    v14 = *(a1 + 312) == 0;
    v15 = *(a1 + 304) == 0;
    LODWORD(v34.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(v34.__r_.__value_.__r.__words[0]) = v14;
    LOWORD(v34.__r_.__value_.__r.__words[1]) = 1026;
    *(&v34.__r_.__value_.__r.__words[1] + 2) = v15;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v16);
    goto LABEL_35;
  }

  if (*(a1 + 648) != 1 || *(a1 + 600) < 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "WifiMgr, getAssoc, fail, no association", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }

    sub_1018CD5B4(buf);
    LOWORD(v34.__r_.__value_.__l.__data_) = 0;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v16);
LABEL_35:
    if (v16 != buf)
    {
      free(v16);
    }

LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  *a2 = *(a1 + 560);
  v5 = a2 + 1;
  std::string::operator=((a2 + 1), (a1 + 568));
  v6 = *(a1 + 592);
  v7 = *(a1 + 608);
  v8 = *(a1 + 624);
  a2[10] = *(a1 + 640);
  *(a2 + 3) = v7;
  *(a2 + 4) = v8;
  *(a2 + 2) = v6;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    __dst[0] = *a2;
    v10 = &v34;
    sub_1000ECD9C(&v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v34.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      sub_100007244(&__p, a2[1], a2[2]);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v5;
      __p.__r_.__value_.__r.__words[2] = a2[3];
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v21 = *(a2 + 10);
    v22 = *(a2 + 8);
    *buf = 136381443;
    *v39 = v10;
    *&v39[8] = 2081;
    v40 = p_p;
    v41 = 1026;
    v42 = v21;
    v43 = 1026;
    v44 = v22;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiMgr, getAssoc, mac, %{private}s, ssid, %{private}s, channel, %{public}d, rssi, %{public}d", buf, 0x22u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v30 = *a2;
    v23 = &__p;
    sub_1000ECD9C(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      sub_100007244(__dst, a2[1], a2[2]);
    }

    else
    {
      *__dst = *v5;
      v29 = a2[3];
    }

    v24 = __dst;
    if (v29 < 0)
    {
      v24 = __dst[0];
    }

    v25 = *(a2 + 10);
    v26 = *(a2 + 8);
    LODWORD(v34.__r_.__value_.__l.__data_) = 136381443;
    *(v34.__r_.__value_.__r.__words + 4) = v23;
    WORD2(v34.__r_.__value_.__r.__words[1]) = 2081;
    *(&v34.__r_.__value_.__r.__words[1] + 6) = v24;
    HIWORD(v34.__r_.__value_.__r.__words[2]) = 1026;
    v35 = v25;
    v36 = 1026;
    v37 = v26;
    v27 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  v18 = 1;
LABEL_24:
  (*(*v4 + 24))(v4);
  return v18;
}

void sub_1002E0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a21);
  _Unwind_Resume(a1);
}

void sub_1002E0594(uint64_t a1)
{
  v2 = (a1 + 112);
  sub_1000B96B4(&v2);
  if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1002E06EC()
{
  if (*(v0 + 96) == 1 && *(v0 + 39) < 0)
  {
    operator delete(*(v0 + 16));
  }

  operator delete();
}

void *sub_1002E0728(uint64_t a1, int a2)
{
  v2 = *(a1 + 2656);
  if (a2)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67240192;
      v5[1] = v2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLAccessory,getAccessoryTypeBitSet,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019131B4(v2);
    }
  }

  return v2;
}

void sub_1002E080C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "activity";
      v21 = 2050;
      v22 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v14 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002E0A34;
  v11[3] = &unk_102460E48;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;
  [v10 sync:v11];
  if (v14 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1002E0A48(uint64_t a1, CFArrayRef theArray, double *a3, uint64_t *a4, uint64_t a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10001)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        *&buf[4] = a5;
        *&buf[12] = 2050;
        *&buf[14] = Count;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "WifiScan, warning, too many APs returned from wifid. source, %{public}s, APs, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CF940();
      }
    }
  }

  else
  {
    Count = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v51 = 1065353216;
  v8 = *a4;
  v9 = a4[1];
  while (v8 != v9)
  {
    *buf = *v8;
    sub_100188540(&v49, buf);
    v8 += 11;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Count >= 1)
  {
    v11 = Current;
    v12 = 0;
    v42 = 0;
    v13 = 0;
    v44 = 0;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      v16 = CFGetTypeID(ValueAtIndex);
      TypeID = WiFiNetworkGetTypeID();
      if (v16 != TypeID)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v12;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "WifiScan, failed to retrieve index %{public}d in array", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          *v66 = 67240192;
          *&v66[4] = v12;
          v30 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        ++v14;
        goto LABEL_94;
      }

      *v66 = qword_102637AD0;
      if (byte_102637AD8[23] < 0)
      {
        TypeID = sub_100007244(&v66[8], *byte_102637AD8, *&byte_102637AD8[8]);
      }

      else
      {
        *&v66[8] = *byte_102637AD8;
        *&v66[24] = *&byte_102637AD8[16];
      }

      *v67 = xmmword_102637AF0;
      *&v67[16] = xmmword_102637B00;
      v68 = xmmword_102637B10;
      v69 = qword_102637B20;
      if (!sub_1002DEC54(TypeID, ValueAtIndex, v66, 0))
      {
        ++v14;
        goto LABEL_92;
      }

      *&v67[24] = v11 - *&v67[16];
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v19 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        __dst[0] = *v66;
        sub_1000ECD9C(v52);
        if (v52[23] >= 0)
        {
          v20 = v52;
        }

        else
        {
          v20 = *v52;
        }

        if ((v66[31] & 0x80000000) != 0)
        {
          sub_100007244(&__p, *&v66[8], *&v66[16]);
        }

        else
        {
          __p = *&v66[8];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 67111170;
        *&buf[4] = v12;
        *&buf[8] = 2048;
        *&buf[10] = Count;
        *&buf[18] = 2080;
        *&buf[20] = v20;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        v71 = 1024;
        v72 = *v67;
        v73 = 1024;
        v74 = *&v67[4];
        v75 = 1024;
        v76 = *&v67[8];
        v77 = 2048;
        v78 = *&v67[16];
        v79 = 2048;
        v80 = *&v67[24];
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WIFI_SCAN: raw scan result, ap, %d, %ld, mac, %-20s, ssid, %-30s, rssi, %+4d, mode, %d, channel, %3d, age, %5.2lf, timestamp, %.1lf", buf, 0x4Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v52[23] & 0x80000000) != 0)
        {
          operator delete(*v52);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        v48 = *v66;
        sub_1000ECD9C(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p.__r_.__value_.__r.__words[0];
        }

        if ((v66[31] & 0x80000000) != 0)
        {
          sub_100007244(__dst, *&v66[8], *&v66[16]);
        }

        else
        {
          *__dst = *&v66[8];
          v47 = *&v66[24];
        }

        v32 = __dst;
        if (v47 < 0)
        {
          v32 = __dst[0];
        }

        *v52 = 67111170;
        *&v52[4] = v12;
        *&v52[8] = 2048;
        *&v52[10] = Count;
        *&v52[18] = 2080;
        *&v52[20] = v31;
        v53 = 2080;
        v54 = v32;
        v55 = 1024;
        v56 = *v67;
        v57 = 1024;
        v58 = *&v67[4];
        v59 = 1024;
        v60 = *&v67[8];
        v61 = 2048;
        v62 = *&v67[16];
        v63 = 2048;
        v64 = *&v67[24];
        v33 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      if ((*v67 - 1) <= 0xFFFFFF7E)
      {
        break;
      }

      if (*(a1 + 648) == 1 && *(a1 + 600) >= 1)
      {
        *buf = *v66;
        *v52 = *(a1 + 560);
        if (sub_100195A00(buf, v52))
        {
          if (*(a1 + 648) == 1)
          {
            *(a1 + 592) = *v67;
          }

          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v23 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            __dst[0] = *v66;
            sub_10018F0D0(v52);
            if (v52[23] >= 0)
            {
              v24 = v52;
            }

            else
            {
              v24 = *v52;
            }

            if ((v66[31] & 0x80000000) != 0)
            {
              sub_100007244(&__p, *&v66[8], *&v66[16]);
            }

            else
            {
              __p = *&v66[8];
            }

            v25 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136381187;
            *&buf[4] = v24;
            *&buf[12] = 2081;
            *&buf[14] = v25;
            *&buf[22] = 1026;
            *&buf[24] = *v67;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiScan, update associated rssi, mac, %{private}s, ssid, %{private}s, rssi, %{public}d", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if ((v52[23] & 0x80000000) != 0)
            {
              operator delete(*v52);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            v48 = *v66;
            sub_10018F0D0(&__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &__p;
            }

            else
            {
              v34 = __p.__r_.__value_.__r.__words[0];
            }

            if ((v66[31] & 0x80000000) != 0)
            {
              sub_100007244(__dst, *&v66[8], *&v66[16]);
            }

            else
            {
              *__dst = *&v66[8];
              v47 = *&v66[24];
            }

            v35 = __dst;
            if (v47 < 0)
            {
              v35 = __dst[0];
            }

            *v52 = 136381187;
            *&v52[4] = v34;
            *&v52[12] = 2081;
            *&v52[14] = v35;
            *&v52[22] = 1026;
            *&v52[24] = *v67;
            v36 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v47) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v36);
            if (v36 != buf)
            {
              free(v36);
            }
          }
        }
      }

      if (byte_102656F88 == 1)
      {
        *buf = *v66;
        if (sub_100195A00(&qword_102656F80, buf))
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v26 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(buf);
            v27 = buf;
            if (buf[23] < 0)
            {
              v27 = *buf;
            }

            *v52 = 67240451;
            *&v52[4] = v12 + 1;
            *&v52[8] = 2081;
            *&v52[10] = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiScan, addAp, %{public}d, excluded, %{private}s", v52, 0x12u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            sub_10018F0D0(v52);
            v28 = v52;
            if (v52[23] < 0)
            {
              v28 = *v52;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 67240451;
            HIDWORD(__p.__r_.__value_.__r.__words[0]) = v12 + 1;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = v28;
            v29 = _os_log_send_and_compose_impl();
            if ((v52[23] & 0x80000000) != 0)
            {
              operator delete(*v52);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v29);
LABEL_104:
            if (v29 != buf)
            {
              free(v29);
            }
          }

LABEL_49:
          ++v13;
          goto LABEL_92;
        }
      }

      *buf = *v66;
      if (sub_1002DFD60(&v49, buf))
      {
        ++v44;
      }

      else if (*a3 < 0.0 || *a3 >= *&v67[16])
      {
        *buf = *v66;
        sub_100188540(&v49, buf);
        sub_1002E1AB4(a4, v66);
        LODWORD(v42) = v42 + 1;
      }

      else
      {
        ++HIDWORD(v42);
      }

LABEL_92:
      if ((v66[31] & 0x80000000) != 0)
      {
        operator delete(*&v66[8]);
      }

LABEL_94:
      if (Count == ++v12)
      {
        goto LABEL_130;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *&buf[4] = v12 + 1;
      *&buf[8] = 1026;
      *&buf[10] = *v67;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "WifiScan, addAp, %{public}d, badrssi, %{public}d, #CloneMe", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v52 = 67240448;
      *&v52[4] = v12 + 1;
      *&v52[8] = 1026;
      *&v52[10] = *v67;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v29);
      goto LABEL_104;
    }

    goto LABEL_49;
  }

  v14 = 0;
  v44 = 0;
  v42 = 0;
  v13 = 0;
LABEL_130:
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v37 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = a5;
    *&buf[12] = 2050;
    *&buf[14] = Count;
    *&buf[22] = 2050;
    *&buf[24] = *(&v50 + 1);
    *&buf[32] = 1026;
    *&buf[34] = v42;
    v71 = 1026;
    v72 = v44;
    v73 = 1026;
    v74 = v14;
    v75 = 1026;
    v76 = HIDWORD(v42);
    v77 = 1026;
    LODWORD(v78) = v13;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "WifiScan, addAps, %{public}s, returned, %{public}ld, unique, %{public}ld, insert, %{public}d, keep, %{public}d, error, %{public}d, stale, %{public}d, ignore, %{public}d", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    *v66 = 136448002;
    *&v66[4] = a5;
    *&v66[12] = 2050;
    *&v66[14] = Count;
    *&v66[22] = 2050;
    *&v66[24] = *(&v50 + 1);
    *v67 = 1026;
    *&v67[2] = v42;
    *&v67[6] = 1026;
    *&v67[8] = v44;
    *&v67[12] = 1026;
    *&v67[14] = v14;
    *&v67[18] = 1026;
    *&v67[20] = HIDWORD(v42);
    *&v67[24] = 1026;
    *&v67[26] = v13;
    v39 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  return sub_1004906DC(&v49);
}

uint64_t sub_1002E198C(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA664();
    return 0;
  }

  return result;
}

uint64_t sub_1002E1AB4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005A423C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    *(v3 + 32) = v5;
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

NSDictionary *sub_1002E1B2C(uint64_t a1)
{
  v4[0] = @"type";
  v5[0] = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[1] = @"aps";
  v5[1] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[2] = @"binAps";
  v5[2] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[3] = @"aps2GHz";
  v5[3] = [NSNumber numberWithInt:*(a1 + 48)];
  v4[4] = @"bin2GHz";
  v5[4] = [NSNumber numberWithInt:*(a1 + 52)];
  v4[5] = @"aps5GHz";
  v5[5] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[6] = @"bin5GHz";
  v5[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v4[7] = @"apsLocalAdmin";
  v5[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v4[8] = @"binLocalAdmin";
  v2 = [NSNumber numberWithInt:*(a1 + 64)];
  v4[9] = @"daily";
  v5[8] = v2;
  v5[9] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];
}

uint64_t sub_1002E1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 832;
  v15 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v16 = 256;
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
  if (sub_1002DFF48(a1, &v8))
  {
    *a2 = v8;
    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v5 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v5;
    *(a2 + 64) = v13;
    *(a2 + 80) = v14;
    *(a2 + 88) = 1;
  }

  else
  {
    *a2 = 0;
    v6 = SHIBYTE(v10);
    *(a2 + 88) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_1002E1E40(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_1005A4740(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      sub_1002E2EF4();
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
      sub_1002E05E8();
    }
  }
}

void sub_1002E22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

id sub_1002E2324(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1002E2384(a1);
}

id sub_1002E2384(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB6EF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0908();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB6EF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0A00();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1002E2588(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v40 = sub_1002DDED4(a3);
  if (sub_100071CA0())
  {
    sub_10004FD18(buf);
    LODWORD(v46.__r_.__value_.__l.__data_) = -1171354717 * ((a2[1] - *a2) >> 3);
    sub_10004345C(buf, "scanResult", &v46);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4(buf);
  }

  v6 = *a2;
  v5 = a2[1];
  v41 = -1171354717 * ((v5 - *a2) >> 3);
  if (v5 == *a2)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (*(a1 + 648) == 1 && *(a1 + 600) > 0)
      {
        *buf = *(a1 + 560);
        v46.__r_.__value_.__r.__words[0] = *v6;
        v11 = sub_100195A00(buf, &v46);
      }

      else
      {
        v11 = 0;
      }

      if (v10 <= sub_10019E6F8())
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          __dst[0] = *v6;
          sub_10018F0D0(&v46);
          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v46;
          }

          else
          {
            v13 = v46.__r_.__value_.__r.__words[0];
          }

          if (*(v6 + 31) < 0)
          {
            sub_100007244(&__p, *(v6 + 8), *(v6 + 16));
          }

          else
          {
            v14 = *(v6 + 8);
            __p.__r_.__value_.__r.__words[2] = *(v6 + 24);
            *&__p.__r_.__value_.__l.__data_ = v14;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v16 = *(v6 + 32);
          v17 = *(v6 + 36);
          v18 = *(v6 + 40);
          v19 = *(v6 + 48);
          v20 = *(v6 + 56);
          *buf = 136448771;
          *&buf[4] = v40;
          v60 = 2081;
          *v61 = v13;
          *&v61[8] = 1026;
          *v62 = v10;
          *&v62[4] = 1026;
          *v63 = v41;
          *&v63[4] = 2081;
          v64 = p_p;
          *v65 = 1026;
          *&v65[2] = v16;
          *v66 = 1026;
          *&v66[2] = v17;
          *v67 = 1026;
          *&v67[2] = v18;
          v68 = 2050;
          v69 = v19;
          v70 = 2050;
          v71 = v20;
          v72 = 1026;
          v73 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WifiScan, result, %{public}s, mac, %{private}s, %{public}d / %{public}d, ssid, %{private}s, rssi, %{public}d, mode, %{public}d, channel, %{public}d, age, %{public}0.1lf, timestamp, %{public}.1lf, associated, %{public}d", buf, 0x58u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v44 = *v6;
          sub_10018F0D0(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p.__r_.__value_.__r.__words[0];
          }

          if (*(v6 + 31) < 0)
          {
            sub_100007244(__dst, *(v6 + 8), *(v6 + 16));
          }

          else
          {
            v24 = *(v6 + 8);
            v43 = *(v6 + 24);
            *__dst = v24;
          }

          v25 = __dst;
          if (v43 < 0)
          {
            v25 = __dst[0];
          }

          v26 = *(v6 + 32);
          v27 = *(v6 + 36);
          v28 = *(v6 + 40);
          v29 = *(v6 + 48);
          v30 = *(v6 + 56);
          LODWORD(v46.__r_.__value_.__l.__data_) = 136448771;
          *(v46.__r_.__value_.__r.__words + 4) = v40;
          WORD2(v46.__r_.__value_.__r.__words[1]) = 2081;
          *(&v46.__r_.__value_.__r.__words[1] + 6) = v23;
          HIWORD(v46.__r_.__value_.__r.__words[2]) = 1026;
          *v47 = v10;
          *&v47[4] = 1026;
          *v48 = v41;
          *&v48[4] = 2081;
          v49 = v25;
          *v50 = 1026;
          *&v50[2] = v26;
          *v51 = 1026;
          *&v51[2] = v27;
          *v52 = 1026;
          *&v52[2] = v28;
          v53 = 2050;
          v54 = v29;
          v55 = 2050;
          v56 = v30;
          v57 = 1026;
          v58 = v11;
          v31 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::logWifiScanResult(const std::vector<CLWifiService_Type::AccessPoint> &, CLWifiService_Type::ScanType)", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }
      }

      v21 = sub_10018D3FC(v6);
      v22 = sub_100189E38(*(v6 + 40));
      v9 += (v21 >> 41) & 1;
      v8 += v22 ^ 1;
      v7 += v22;
      v6 += 88;
      ++v10;
    }

    while (v6 != v5);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v32 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = v40;
    v60 = 1026;
    *v61 = v41;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "WifiScan, results, %{public}s, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF4A4();
  }

  if (a3 != 5 || v41 >= 1)
  {
    v33 = v41;
    if (v41 >= 2)
    {
      if (v41 >= 5)
      {
        if (v41 >= 9)
        {
          if (v41 >= 0x11)
          {
            if (v41 >= 0x21)
            {
              if (v41 < 0x41)
              {
                v33 = 64;
              }

              else
              {
                v33 = 65;
              }
            }

            else
            {
              v33 = 32;
            }
          }

          else
          {
            v33 = 16;
          }
        }

        else
        {
          v33 = 8;
        }
      }

      else
      {
        v33 = 4;
      }
    }

    v34 = v7;
    if (v7 >= 2)
    {
      if (v7 >= 5)
      {
        if (v7 >= 9)
        {
          if (v7 >= 0x11)
          {
            if (v7 >= 0x21)
            {
              if (v7 < 0x41)
              {
                v34 = 64;
              }

              else
              {
                v34 = 65;
              }
            }

            else
            {
              v34 = 32;
            }
          }

          else
          {
            v34 = 16;
          }
        }

        else
        {
          v34 = 8;
        }
      }

      else
      {
        v34 = 4;
      }
    }

    v35 = v8;
    if (v8 >= 2)
    {
      if (v8 >= 5)
      {
        if (v8 >= 9)
        {
          if (v8 >= 0x11)
          {
            if (v8 >= 0x21)
            {
              if (v8 < 0x41)
              {
                v35 = 64;
              }

              else
              {
                v35 = 65;
              }
            }

            else
            {
              v35 = 32;
            }
          }

          else
          {
            v35 = 16;
          }
        }

        else
        {
          v35 = 8;
        }
      }

      else
      {
        v35 = 4;
      }
    }

    v36 = v9;
    if (v9 >= 2)
    {
      if (v9 >= 5)
      {
        if (v9 >= 9)
        {
          if (v9 >= 0x11)
          {
            if (v9 >= 0x21)
            {
              if (v9 < 0x41)
              {
                v36 = 64;
              }

              else
              {
                v36 = 65;
              }
            }

            else
            {
              v36 = 32;
            }
          }

          else
          {
            v36 = 16;
          }
        }

        else
        {
          v36 = 8;
        }
      }

      else
      {
        v36 = 4;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v37 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136448258;
      *&buf[4] = v40;
      v60 = 1026;
      *v61 = v41;
      *&v61[4] = 1026;
      *&v61[6] = v33;
      *v62 = 1026;
      *&v62[2] = v7;
      *v63 = 1026;
      *&v63[2] = v34;
      LOWORD(v64) = 1026;
      *(&v64 + 2) = v8;
      HIWORD(v64) = 1026;
      *v65 = v35;
      *&v65[4] = 1026;
      *v66 = v9;
      *&v66[4] = 1026;
      *v67 = v36;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "WsMetric, scanreply, %{public}s, %{public}d, %{public}d, 2ghz, %{public}d, %{public}d, 5ghz, %{public}d, %{public}d, la, %{public}d, %{public}d", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      LODWORD(v46.__r_.__value_.__l.__data_) = 136448258;
      *(v46.__r_.__value_.__r.__words + 4) = v40;
      WORD2(v46.__r_.__value_.__r.__words[1]) = 1026;
      *(&v46.__r_.__value_.__r.__words[1] + 6) = v41;
      WORD1(v46.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v46.__r_.__value_.__r.__words[2]) = v33;
      *v47 = 1026;
      *&v47[2] = v7;
      *v48 = 1026;
      *&v48[2] = v34;
      LOWORD(v49) = 1026;
      *(&v49 + 2) = v8;
      HIWORD(v49) = 1026;
      *v50 = v35;
      *&v50[4] = 1026;
      *v51 = v9;
      *&v51[4] = 1026;
      *v52 = v36;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::logWifiScanResult(const std::vector<CLWifiService_Type::AccessPoint> &, CLWifiService_Type::ScanType)", "%s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    AnalyticsSendEventLazy();
  }
}

void sub_1002E2EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E2F60(void *a1, int *a2, void *a3)
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
        v10 = sub_1002E2324(a3);
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
              sub_1002E331C(a1, &v36, &v37, a3);
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
                sub_1002E9770();
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
                  sub_1002E9770();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLWifiService_Type::Notification, CLWifiService_Type::NotificationData, char, CLWifiService_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLWifiService_Type::Notification, NotificationData_T = CLWifiService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLWifiService_Type::RegInfo]", "%s\n", v35);
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

_BYTE *sub_1002E331C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1002E2324(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_1002E3414(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t *sub_1002E3414(uint64_t a1, int *a2)
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

id sub_1002E34F4(uint64_t a1, int a2, void *a3)
{
  result = sub_1002E2324(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1002E3544(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v12 = 2082;
      *&v12[2] = "";
      *&v12[10] = 2082;
      *&v12[12] = "activity";
      *&v12[20] = 2050;
      *&v12[22] = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 3)
  {
    v8 = *(*(a4 + 10232) + 16);
    *buf = _NSConcreteStackBlock;
    *v12 = 3221225472;
    *&v12[8] = sub_1002E86C8;
    *&v12[16] = &unk_1024689B0;
    *&v12[24] = a4;
    [v8 fetchScanResultWithReply:buf];
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002E3760(int a1, int *a2, int *a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD1F2C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiServiceClient::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD1F40();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiServiceClient::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002E393C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002E393C(uint64_t a1, int a2, int *a3, int *a4)
{
  if ((*a3 - 6) >= 2)
  {
    if (*a3 == 1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101BD1FA4();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *a3;
        v12 = *(a1 + 144);
        v13 = *a4;
        *buf = 67109632;
        v19 = v11;
        LOWORD(__p) = 1024;
        *(&__p + 2) = v12;
        HIWORD(__p) = 1024;
        v21 = v13;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "notification, %d, kNotificationPower, fIsWifiPowered, %d, data.power, %d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_101BD1FB8();
        }

        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiServiceClient::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      *(a1 + 144) = *a4;
    }
  }

  else
  {
    if (a4[12] > 0)
    {
      v8 = *(a4 + 96);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 136) == 1 && *(a1 + 88) > 0;
    if (qword_1025D48A0 != -1)
    {
      sub_101BD1FA4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *a3;
      *buf = 67240704;
      v19 = v15;
      LOWORD(__p) = 1026;
      *(&__p + 2) = v9;
      HIWORD(__p) = 1026;
      v21 = v8;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "notification, %{public}d, kNotificationLinkStatus/Roam, wasAssociated, %{public}d, isAssociated, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101BD1FB8();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiServiceClient::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    sub_100C5D75C((a4 + 2), buf);
    sub_1000F8A78(a1 + 48, buf);
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 32))
  {
    sub_1002E3D30(a1 + 8, a2);
  }
}

void sub_1002E3D24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002E3D30(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1002E3D84(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_1002E3E28(a1 + 120, a3, a4, Current);
  if (*(a1 + 3032))
  {
    sub_10000AED0(v8);
    sub_1002E5668(a3, a4, v8, Current);
    sub_10021CB90(*(a1 + 3032));
    sub_10000CE1C(v8);
  }
}

void sub_1002E3E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_1002E3E28(uint64_t a1, int *a2, unsigned __int8 *a3, double a4)
{
  v8 = *a2;
  if (*a2 == 11)
  {
    sub_100CD34F0(a1 + 904, a3[137]);
  }

  else if (v8 == 7)
  {
    *(a1 + 1760) = a4;
    sub_100CD35D4(a1 + 904, a4);
  }

  else if (v8 == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v9 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 67240192;
      *v40 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: Got kNotificationPower, isWifiPowered, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4F4A0(a3);
    }

    if ((*a3 & 1) == 0)
    {
      sub_100E2717C(a1 + 1312, 0);
      *(a1 + 684) = 0;
      (*(**(a1 + 1768) + 288))();
    }
  }

  if (*(a1 + 612))
  {
    v11 = *(a1 + 256);
    v12 = *a2;
    if (*a2 > 3)
    {
      if (v12 != 4)
      {
        if (v12 == 8)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v29 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationBackgroundEntry", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F668();
          }

          sub_100CD3BA4(a1 + 904, a4);
        }

        else if (v12 == 9)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v13 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationBackgroundExit", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F58C();
          }

          sub_100CD35DC(a1 + 904, a4);
        }

        return;
      }

      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v21 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 684);
        v23 = *(a1 + 688);
        *buf = 67240448;
        *v40 = v22;
        *&v40[4] = 1026;
        *&v40[6] = v23;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "scan result, count, wait, %{public}d, retry, %{public}d, error", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4F744();
      }

LABEL_44:
      if (!v11)
      {
        return;
      }

      if (!(*(**(a1 + 1768) + 16))(*(a1 + 1768)))
      {
        return;
      }

      v24 = *(a1 + 684);
      if (v24 < 1 || !sub_10021D1B8(a1))
      {
        return;
      }

      if (*(a1 + 444))
      {
        v25 = (a1 + 688);
        v26 = *(a1 + 688);
        if (v26 <= 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v27 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v28 = *v25;
            *buf = 67240192;
            *v40 = v28;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Fence: startScan, requesting a scan due to an error / empty scan, fScanRetryCounter, %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F94C((a1 + 688));
          }

          (*(**(a1 + 1768) + 312))(*(a1 + 1768), "onWifiNotification");
          goto LABEL_94;
        }

        if (v24 != 1)
        {
          return;
        }

        if (v26 != 2)
        {
          return;
        }

        if ((*(**(a1 + 1768) + 408))(*(a1 + 1768)))
        {
          return;
        }

        sub_10001A3E8();
        if (sub_10001CF3C())
        {
          return;
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v36 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v37 = *v25;
          *buf = 67240704;
          *v40 = v37;
          *&v40[4] = 1026;
          *&v40[6] = 2;
          *v41 = 2050;
          *&v41[2] = 0x4014000000000000;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Fence: expedite location watchdog due to empty / error scan , %{public}d, %{public}d, kUrgentWatchdogActivation, %{public}.1lf", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4F840();
        }
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v30 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v40 = 0x4014000000000000;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "Fence: no reachability, expedite watchdog, %{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4FA38();
        }

        *(a1 + 688) = 2;
        if (((*(**(a1 + 1768) + 408))(*(a1 + 1768)) & 1) != 0 || *(a1 + 684) != 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v31 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(a1 + 684);
            v33 = *(a1 + 688);
            v34 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            *buf = 67240704;
            *v40 = v32;
            *&v40[4] = 1026;
            *&v40[6] = v33;
            *v41 = 1026;
            *&v41[2] = v34;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "Fence: skip urgent, watchdog already active, %{public}d,%{public}d, %{public}d", buf, 0x14u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            v35 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleWifiNotification(const CFAbsoluteTime, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          goto LABEL_94;
        }
      }

      (*(**(a1 + 1768) + 240))(*(a1 + 1768), &unk_101CF5678);
LABEL_94:
      ++*(a1 + 688);
      return;
    }

    if (v12 == 1)
    {
      sub_100CD32F0((a1 + 904), *a3, a4);
      return;
    }

    if (v12 == 3)
    {
      sub_1002E48CC(a1 + 904, (a3 + 104), a4);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v14 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v15 = 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3);
        v16 = *(a3 + 13);
        v17 = *(a1 + 684);
        v18 = *(a1 + 688);
        *buf = 134284801;
        *v40 = v15;
        *&v40[8] = 2049;
        *v41 = v16;
        *&v41[8] = 2049;
        v42 = a4 - v16;
        v43 = 2050;
        v44 = v11;
        v45 = 1026;
        v46 = v17;
        v47 = 1026;
        v48 = v18;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationScan, result, %{private}lu, time, %{private}.1lf, age, %{private}.1lf, numFences, %{public}lu, locationCount, %{public}d, %{public}d", buf, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v38 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleWifiNotification(const CFAbsoluteTime, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v19 = (*(**(a1 + 1768) + 24))(*(a1 + 1768));
      v20 = a4 - *(a3 + 13) < 7.5 ? 1 : v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }
}

void sub_1002E48CC(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 234) & 1) != 0 || (*(a1 + 232) & 1) == 0)
  {
    v10 = a1 + 168;

    sub_1011A6884(v10);
  }

  else
  {
    sub_1002E4AF4(a1 + 168, a2, a3);
    v6 = *a2;
    if (qword_1025D4640 != -1)
    {
      sub_101A57534();
    }

    v7 = vabdd_f64(a3, v6);
    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      v9 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 3);
      v12 = 134283777;
      v13 = *&v9;
      v14 = 2049;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Fence: fLastScanResult, %{private}lu, age, %{private}.1lf", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A58850(a2, v7);
    }

    if (v7 >= 120.0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A57EC0();
      }

      v11 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134283521;
        v13 = v7;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Fence: scan result is too old, request one more scan, age, %{private}.1lf ", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A58980(v7);
      }
    }

    else if (*(a2 + 8) != *(a2 + 16))
    {
      *(a1 + 400) = a3;
    }
  }
}

void sub_1002E4AF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16) - *(a2 + 8);
  v7 = *(a1 + 32);
  if (*a1 > 0.0)
  {
    sub_1002E4DE8(a1, a3);
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v8 != v9)
    {
      v10 = 0;
      while (1)
      {
        if (vabdd_f64(a3, *(v8 + 56)) <= *a1)
        {
          *buf = *v8;
          v11 = sub_1002DFD60((a1 + 8), buf);
          if (!v11)
          {
            goto LABEL_8;
          }

          if (*(v8 + 56) >= v11[10])
          {
            break;
          }
        }

LABEL_9:
        v8 += 88;
        if (v8 == v9)
        {
          goto LABEL_16;
        }
      }

      sub_1002E4F28((a1 + 8), v11);
LABEL_8:
      *buf = *v8;
      sub_100189E48((a1 + 8), buf);
      ++v10;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  sub_10018A278(a1 + 8);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (v12 == v13)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
  v14 = v12;
  do
  {
    v15 = *v14;
    v14 += 11;
    *buf = v15;
    sub_100189E48((a1 + 8), buf);
    ++v10;
  }

  while (v14 != v13);
LABEL_16:
  if (qword_1025D4640 != -1)
  {
    sub_101B58CE0();
  }

  v16 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 3);
  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    *buf = 134349824;
    *&buf[4] = v7;
    v21 = 2050;
    v22 = v16;
    v23 = 2050;
    v24 = v10;
    v25 = 2050;
    v26 = v18;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Adding scanned,pre,%{public}zu,input,%{public}zu,updated,%{public}zu,result,%{public}zu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101B58CE0();
    }

    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiScanAggregator::addScanResult(const CFAbsoluteTime, const CLWifiService_Type::ScanResult &)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }
}

void sub_1002E4DE8(uint64_t a1, double a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  for (i = *(a1 + 24); i; i = *i)
  {
    while (vabdd_f64(a2, *(i + 80)) > *a1)
    {
      i = sub_1002E4F28(v2 - 3, i);
      if (!i)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  if (qword_1025D4640 != -1)
  {
    sub_101B58D08();
  }

  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v2;
    v9 = 134349312;
    v10 = v3;
    v11 = 2050;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Scrubbing done,pre,%{public}zu,post,%{public}zu", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B58D1C(v2, v3);
  }
}

uint64_t sub_1002E4F28(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1002E4F74(&v6, v3);
  }

  return v2;
}

void sub_1002E4F74(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1002E5008(uint64_t a1, uint64_t *a2)
{
  if (a2[1] != a2[2])
  {
    sub_1002E5020(a1 + 2552, a2);
  }
}

void sub_1002E5020(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  memset(v4, 0, sizeof(v4));
  sub_100288650(v4, a2[1], a2[2], 0x2E8BA2E8BA2E8BA3 * ((a2[2] - a2[1]) >> 3));
  sub_1002E50F0(a1 + 2968, &v3, *(a1 + 3200));
  v5 = v4;
  sub_1000B96B4(&v5);
}

void sub_1002E50A8(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1000B96B4((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1002E50F0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = v6[3];
      v8 = v6[4];
      v90 = *v3;
      if (*(v3 + 31) < 0)
      {
        sub_100007244(&__p, *(v3 + 8), *(v3 + 16));
      }

      else
      {
        v9 = *(v3 + 8);
        v92 = *(v3 + 24);
        __p = v9;
      }

      v10 = *(v3 + 32);
      v11 = *(v3 + 48);
      v12 = *(v3 + 64);
      v96 = *(v3 + 80);
      v94 = v11;
      v95 = v12;
      v93 = v10;
      if (v7 != v8)
      {
        while (1)
        {
          v13 = *(v7 + 24);
          v86[0] = v90;
          v14 = sub_10018D3FC(v86);
          if (v13 == sub_1002E87DC(v14))
          {
            break;
          }

          v7 += 80;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }
      }

      if (SHIBYTE(v92) < 0)
      {
        operator delete(__p);
      }

      v15 = v6[4];
      if (v7 == v15)
      {
        memset(v89, 0, sizeof(v89));
        v87 = 0u;
        *v88 = 0u;
        *v86 = 0u;
        if (v7 >= v6[5])
        {
          v27 = sub_10121FA88(v6 + 3, v86);
          v28 = v88[0];
          v6[4] = v27;
          if (v28)
          {
            v88[1] = v28;
            operator delete(v28);
          }
        }

        else
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *v15 = 0;
          *v15 = *v86;
          *(v15 + 16) = v87;
          v86[0] = 0;
          v86[1] = 0;
          *&v87 = 0;
          *(v15 + 24) = DWORD2(v87);
          *(v15 + 40) = 0;
          *(v15 + 48) = 0;
          *(v15 + 32) = 0;
          *(v15 + 32) = *v88;
          *(v15 + 48) = *&v89[0];
          v88[0] = 0;
          v88[1] = 0;
          *&v89[0] = 0;
          v19 = *(v89 + 8);
          *(v15 + 72) = DWORD2(v89[1]);
          *(v15 + 56) = v19;
          v6[4] = v15 + 80;
        }

        if (v86[0])
        {
          v86[1] = v86[0];
          operator delete(v86[0]);
        }

        v29 = v6[4];
        v86[0] = *v3;
        v30 = sub_10018D3FC(v86);
        *(v29 - 56) = sub_1002E87DC(v30);
        v32 = *(v29 - 72);
        v31 = *(v29 - 64);
        if (v32 >= v31)
        {
          v34 = *(v29 - 80);
          v35 = v32 - v34;
          v36 = (v32 - v34) >> 3;
          v37 = v36 + 1;
          if ((v36 + 1) >> 61)
          {
            goto LABEL_79;
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          v25 = v38 >= 0x7FFFFFFFFFFFFFF8;
          v39 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v39 = v37;
          }

          if (v39)
          {
            sub_1000B9708(v29 - 80, v39);
          }

          v55 = (v32 - v34) >> 3;
          v56 = (8 * v36);
          v57 = (8 * v36 - 8 * v55);
          *v56 = a3;
          v33 = v56 + 1;
          memcpy(v57, v34, v35);
          v58 = *(v29 - 80);
          *(v29 - 80) = v57;
          *(v29 - 72) = v33;
          *(v29 - 64) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v32 = a3;
          v33 = v32 + 1;
        }

        *(v29 - 72) = v33;
        v59 = *(v3 + 32);
        v61 = *(v29 - 40);
        v60 = *(v29 - 32);
        if (v61 >= v60)
        {
          v63 = *(v29 - 48);
          v64 = v61 - v63;
          v65 = (v61 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
LABEL_80:
            sub_10028C64C();
          }

          v67 = v60 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          v25 = v67 >= 0x7FFFFFFFFFFFFFFCLL;
          v68 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_1000B85D0(v29 - 48, v68);
          }

          v69 = (v61 - v63) >> 2;
          v70 = (4 * v65);
          v71 = (4 * v65 - 4 * v69);
          *v70 = v59;
          v62 = v70 + 1;
          memcpy(v71, v63, v64);
          v72 = *(v29 - 48);
          *(v29 - 48) = v71;
          *(v29 - 40) = v62;
          *(v29 - 32) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v61 = v59;
          v62 = v61 + 4;
        }

        *(v29 - 40) = v62;
      }

      else
      {
        v17 = *(v7 + 8);
        v16 = *(v7 + 16);
        if (v17 >= v16)
        {
          v20 = *v7;
          v21 = v17 - *v7;
          v22 = v21 >> 3;
          v23 = (v21 >> 3) + 1;
          if (v23 >> 61)
          {
            goto LABEL_79;
          }

          v24 = v16 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
          v26 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v26 = v23;
          }

          if (v26)
          {
            sub_1000B9708(v7, v26);
          }

          *(8 * v22) = a3;
          v18 = 8 * v22 + 8;
          memcpy(0, v20, v21);
          v40 = *v7;
          *v7 = 0;
          *(v7 + 8) = v18;
          *(v7 + 16) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v17 = a3;
          v18 = (v17 + 1);
        }

        *(v7 + 8) = v18;
        v41 = *(v3 + 32);
        v43 = *(v7 + 40);
        v42 = *(v7 + 48);
        if (v43 >= v42)
        {
          v45 = *(v7 + 32);
          v46 = v43 - v45;
          v47 = (v43 - v45) >> 2;
          v48 = v47 + 1;
          if ((v47 + 1) >> 62)
          {
            goto LABEL_80;
          }

          v49 = v42 - v45;
          if (v49 >> 1 > v48)
          {
            v48 = v49 >> 1;
          }

          v25 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
          v50 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v50 = v48;
          }

          if (v50)
          {
            sub_1000B85D0(v7 + 32, v50);
          }

          v51 = (v43 - v45) >> 2;
          v52 = (4 * v47);
          v53 = (4 * v47 - 4 * v51);
          *v52 = v41;
          v44 = v52 + 1;
          memcpy(v53, v45, v46);
          v54 = *(v7 + 32);
          *(v7 + 32) = v53;
          *(v7 + 40) = v44;
          *(v7 + 48) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v43 = v41;
          v44 = v43 + 4;
        }

        *(v7 + 40) = v44;
      }

      v3 += 88;
    }

    while (v3 != v4);
    v74 = v6[7];
    v73 = v6[8];
    if (v74 >= v73)
    {
      v76 = v6[6];
      v77 = v74 - v76;
      v78 = (v74 - v76) >> 3;
      v79 = v78 + 1;
      if ((v78 + 1) >> 61)
      {
LABEL_79:
        sub_10028C64C();
      }

      v80 = v73 - v76;
      if (v80 >> 2 > v79)
      {
        v79 = v80 >> 2;
      }

      v25 = v80 >= 0x7FFFFFFFFFFFFFF8;
      v81 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v81 = v79;
      }

      if (v81)
      {
        sub_1000B9708((v6 + 6), v81);
      }

      v82 = (v74 - v76) >> 3;
      v83 = (8 * v78);
      v84 = (8 * v78 - 8 * v82);
      *v83 = a3;
      v75 = v83 + 1;
      memcpy(v84, v76, v77);
      v85 = v6[6];
      v6[6] = v84;
      v6[7] = v75;
      v6[8] = 0;
      if (v85)
      {
        operator delete(v85);
      }
    }

    else
    {
      *v74 = a3;
      v75 = v74 + 1;
    }

    v6[7] = v75;
    return sub_1000B60F4(v6, a3);
  }

  return result;
}

void sub_1002E5668(int *a1, char *a2, uint64_t a3, double a4)
{
  *(a3 + 52) |= 1u;
  v4 = *(a3 + 32);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 44) |= 1u;
  *(v4 + 8) = a4;
  *(a3 + 52) |= 2u;
  v5 = *(a3 + 40);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 488) |= 0x200000u;
  v6 = *(v5 + 176);
  if (!v6)
  {
    operator new();
  }

  sub_1002E57E8(a1, a2, v6);
}

double sub_1002E57B4(uint64_t a1)
{
  *a1 = off_102453F58;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

void sub_1002E57E8(int *a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = sub_1002E5A3C(a1);
    if (!sub_1002E5B3C(v6))
    {
      sub_101882D10();
    }

    v7 = *(a3 + 56);
    v8 = v7 | 4;
    *(a3 + 56) = v7 | 4;
    *(a3 + 20) = v6;
    v9 = *a1;
    if (*a1 == 3)
    {
      v12 = sub_1002E5B48(a2 + 1);
      if (!sub_1002E5B3C(v12))
      {
        sub_101882D3C();
      }

      v8 = *(a3 + 56) | 8;
      *(a3 + 56) = v8;
      *(a3 + 40) = v12;
      v9 = *a1;
    }

    else if (v9 == 1)
    {
      v10 = *a2;
      *(a3 + 56) = v7 | 0x14;
      *(a3 + 44) = v10;
      return;
    }

    if (v9 <= 7 && ((1 << v9) & 0xC8) != 0)
    {
      *(a3 + 56) = v8 | 0x20;
      v13 = *(a3 + 24);
      if (!v13)
      {
        operator new();
      }

      sub_1002E5C54((a2 + 8), v13, 0);
      v9 = *a1;
    }

    if (v9 == 8 || v9 == 3)
    {
      *(a3 + 56) |= 0x40u;
      v14 = *(a3 + 32);
      if (!v14)
      {
        operator new();
      }

      sub_1002E5FF8((a2 + 104), v14, 0);
      v9 = *a1;
    }

    if ((v9 & 0xFFFFFFFE) == 0xA)
    {
      v15 = a2[137];
      *(a3 + 56) |= 0x100u;
      *(a3 + 46) = v15;
    }

    else if (v9 == 6)
    {
      v16 = a2[138];
      *(a3 + 56) |= 0x200u;
      *(a3 + 47) = v16;
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "pWn,Invalid pointer", v17, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B89DBC();
    }
  }
}

uint64_t sub_1002E5A3C(int *a1)
{
  v1 = *a1;
  if (v1 < 0xE)
  {
    return dword_101D7A5E8[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67240192;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled wifi service notification type: %{public}d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101B89EA0(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1002E5B48(char *a1)
{
  if ((*a1 + 1) < 0xEu)
  {
    return dword_101D7A620[(*a1 + 1)];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled wifi scan type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B89F8C(a1);
    return 0;
  }

  return result;
}

float sub_1002E5C54(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (*(a1 + 88) != 1 || *(a1 + 40) <= 0)
    {
      *(a2 + 24) = v3 | 1;
      *(a2 + 16) = 0;
    }

    else
    {
      *(a2 + 16) = 1;
      *(a2 + 24) = v3 | 3;
      v7 = *(a2 + 8);
      if (!v7)
      {
        operator new();
      }

      return sub_1002E5DE4(a1, v7, a3);
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v5 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "pWas,Invalid pointer", v8, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B89CD8();
    }
  }

  return result;
}

uint64_t sub_1002E5DBC(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 16) = 0;
  *result = &off_102453E68;
  *(result + 8) = 0;
  return result;
}

float sub_1002E5DE4(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    __p.__r_.__value_.__r.__words[0] = *a1;
    v6 = sub_10018D3FC(&__p);
    v7 = *(a2 + 56) | 1;
    *(a2 + 56) = v7;
    *(a2 + 8) = v6;
    if (*(a1 + 31) < 0)
    {
      sub_100007244(&__p, *(a1 + 8), *(a1 + 16));
      v7 = *(a2 + 56);
    }

    else
    {
      __p = *(a1 + 8);
    }

    *(a2 + 56) = v7 | 2;
    v10 = *(a2 + 16);
    if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = *(a1 + 32) + a3;
    *(a2 + 56) |= 4u;
    *(a2 + 24) = v11;
    LODWORD(__p.__r_.__value_.__l.__data_) = *(a1 + 36);
    v12 = sub_1002E62F0(&__p);
    if (!sub_10041ECF8(v12))
    {
      sub_101882CB8();
    }

    v13 = *(a2 + 56);
    *(a2 + 56) = v13 | 8;
    *(a2 + 28) = v12;
    *(a2 + 32) = *(a1 + 40);
    result = *(a1 + 48);
    *(a2 + 36) = result;
    v14 = *(a1 + 64);
    *(a2 + 56) = v13 | 0x78;
    *(a2 + 40) = v14;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v8 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "pWap,Invalid pointer", &__p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B89B08();
    }
  }

  return result;
}

void sub_1002E5FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002E5FBC(uint64_t result)
{
  *(result + 52) = 0;
  *result = off_102453DF0;
  *(result + 8) = 0;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(result + 40) = 0;
  return result;
}

void sub_1002E5FF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    *(a2 + 44) |= 1u;
    v6 = *(a2 + 8);
    if (!v6)
    {
      operator new();
    }

    if ((sub_1000D3C88(a1, v6, 0) & 1) == 0)
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83560();
      }

      v7 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
      {
        v8 = *a1;
        v17 = 134349056;
        v18 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Error: Failed to convert wifi scan result applicable CF time to protobuf,%{public}.3lf", &v17, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B8A078();
      }

      (*(*v6 + 32))(v6);
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    while (v10 != v9)
    {
      v11 = *(a2 + 28);
      v12 = *(a2 + 24);
      if (v12 >= v11)
      {
        if (v11 == *(a2 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), v11 + 1);
          v11 = *(a2 + 28);
        }

        *(a2 + 28) = v11 + 1;
        sub_1002E6420();
      }

      v13 = *(a2 + 16);
      *(a2 + 24) = v12 + 1;
      v14 = *(v13 + 8 * v12);
      if (!v14)
      {
        if (qword_1025D4730 != -1)
        {
          sub_101B83ACC();
        }

        v16 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "pWap,Invalid pointer", &v17, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B8A16C();
        }

        return;
      }

      sub_1002E5DE4(v10, v14, a3);
      v10 += 88;
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v15 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "pWsr,Invalid pointer", &v17, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8A250();
    }
  }
}

uint64_t sub_1002E62F0(int *a1)
{
  v1 = *a1 + 1;
  if (v1 < 5)
  {
    return dword_101D7A5D4[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67240192;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled wifi access point mode: %{public}d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101B89BEC(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1002E63F4(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102453EE0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002E6484(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_51;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636E40 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 56);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 20);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if ((v3 & 8) != 0)
  {
LABEL_30:
    v13 = *(a1 + 40);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_36:
  v15 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v16 = *(a1 + 24);
    if (!v16)
    {
      v16 = *(qword_102636E40 + 24);
    }

    v17 = sub_1002E6878(v16, a2);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    }

    else
    {
      v19 = 1;
    }

    v15 += v18 + v19 + 1;
    v3 = *(a1 + 56);
  }

  if ((v3 & 0x40) != 0)
  {
    v20 = *(a1 + 32);
    if (!v20)
    {
      v20 = *(qword_102636E40 + 32);
    }

    v21 = sub_1002E6904(v20, a2);
    v23 = v21;
    if (v21 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, v22);
    }

    else
    {
      v24 = 1;
    }

    v15 += v23 + v24 + 1;
    v3 = *(a1 + 56);
  }

  v5 = ((v3 >> 6) & 2) + v15;
LABEL_51:
  v25 = (v3 & 0xFF00) == 0;
  v26 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2) + ((v3 >> 9) & 2);
  if (v25)
  {
    result = v5;
  }

  else
  {
    result = v26;
  }

  *(a1 + 52) = result;
  return result;
}

uint64_t sub_1002E6698(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_36;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(a1 + 56);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 += v11 + v7 + 1;
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v14 = *(a1 + 28);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v15 = 2;
      }

      v4 += v15;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v12 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 56);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v3 & 0x10) != 0)
  {
LABEL_27:
    v16 = *(a1 + 32);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 56);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_33:
  v18 = v4 + 5;
  if ((v3 & 0x20) == 0)
  {
    v18 = v4;
  }

  v5 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v18;
LABEL_36:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(a1 + 44);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v20 = 2;
      }

      v5 = (v20 + v5);
    }

    if ((v3 & 0x200) != 0)
    {
      v21 = *(a1 + 48);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      }

      else
      {
        v22 = 2;
      }

      v5 = (v22 + v5);
    }
  }

  *(a1 + 52) = v5;
  return v5;
}

uint64_t sub_1002E6878(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636E30 + 8);
      }

      v6 = sub_1002E6698(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = (v8 + v4 + v9 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 20) = v4;
  return v4;
}