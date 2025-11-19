void sub_1005CF304(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v80 = 1024;
        LODWORD(v81) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v75 = 67109376;
        *v76 = v16;
        *&v76[4] = 1024;
        *&v76[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v75);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v63);
    sub_10000AFE4(v75, a2, a3->i32, a4, v63);
    v78 |= 2u;
    v27 = v77;
    if (!v77)
    {
      operator new();
    }

    *(v77 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x1000u;
    v29 = *(v28 + 96);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_1005CFCF4(a6);
    if (!sub_100437D64(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11600, "::CLP::LogEntry::PrivateData::MotionStateObserverNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    if (*a6)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v34 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v35 = *a6;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,unsupported notification type,%d", &buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_85;
      }

      sub_1018D8D04(&buf);
      v36 = *a6;
      LODWORD(v64) = 67109120;
      HIDWORD(v64) = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v37);
      if (v37 == &buf)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *(v33 + 20) |= 1u;
      v38 = *(v33 + 8);
      if (!v38)
      {
        operator new();
      }

      sub_10126D988(a7, v38);
      v39 = sub_10000BFC0(a1);
      if (*(a1 + 8) != 1)
      {
        goto LABEL_85;
      }

      v40 = v39;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v41 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v64);
        if (SBYTE3(v68) >= 0)
        {
          v42 = &v64;
        }

        else
        {
          v42 = v64;
        }

        v54 = v42;
        LODWORD(v56[0]) = a3->i32[0];
        sub_1013230DC(v56, v61);
        if (v62 >= 0)
        {
          v43 = v61;
        }

        else
        {
          v43 = v61[0];
        }

        v58 = *a4;
        v44 = __p;
        sub_1013230DC(&v58, __p);
        if (v60 < 0)
        {
          v44 = __p[0];
        }

        v45 = *a6;
        v46 = sub_10000B1F8();
        v47 = sub_100125220(v46);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v40;
        v80 = 2080;
        v81 = v54;
        v82 = 2080;
        v83 = v43;
        v84 = 2080;
        v85 = v44;
        v86 = 1024;
        v87 = v45;
        v88 = 2050;
        v89 = v47;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (SBYTE3(v68) < 0)
        {
          operator delete(v64);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_85;
      }

      sub_1018D8D04(&buf);
      sub_101322EE0(a2, v61);
      if (v62 >= 0)
      {
        v48 = v61;
      }

      else
      {
        v48 = v61[0];
      }

      v58 = a3->i32[0];
      v49 = __p;
      sub_1013230DC(&v58, __p);
      if (v60 < 0)
      {
        v49 = __p[0];
      }

      v55 = *a4;
      sub_1013230DC(&v55, v56);
      if (v57 >= 0)
      {
        v50 = v56;
      }

      else
      {
        v50 = v56[0];
      }

      v51 = *a6;
      v52 = sub_10000B1F8();
      v53 = sub_100125220(v52);
      LODWORD(v64) = 67110402;
      HIDWORD(v64) = v40;
      v65 = 2080;
      v66 = v48;
      v67 = 2080;
      v68 = v49;
      v69 = 2080;
      v70 = v50;
      v71 = 1024;
      v72 = v51;
      v73 = 2050;
      v74 = v53;
      v37 = _os_log_send_and_compose_impl();
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v60 < 0)
      {
        operator delete(__p[0]);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v37);
      if (v37 == &buf)
      {
        goto LABEL_85;
      }
    }

    free(v37);
LABEL_85:
    sub_10000CE1C(v75);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v83) >= 0 ? &buf : buf;
    *v75 = 136315138;
    *v76 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,unsupported message type,%s", v75, 0xCu);
    if (SBYTE3(v83) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9F58();
  }
}

uint64_t sub_1005CFCF4(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertMotionStateObserverNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA05C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CFDDC(uint64_t a1)
{
  *(a1 + 28) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

void sub_1005CFE5C(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v78 = 1024;
        LODWORD(v79) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v73 = 67109376;
        *v74 = v16;
        *&v74[4] = 1024;
        *&v74[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v73);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v61);
    sub_10000AFE4(v73, a2, a3->i32, a4, v61);
    v76 |= 2u;
    v27 = v75;
    if (!v75)
    {
      operator new();
    }

    *(v75 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x800u;
    v29 = *(v28 + 88);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_10126F7D8(a6);
    if (!sub_1000183C8(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11463, "::CLP::LogEntry::PrivateData::MotionStateNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    v34 = *a6;
    if ((*a6 - 3) < 9)
    {
LABEL_57:
      sub_10000CE1C(v73);
      return;
    }

    if ((v34 - 1) >= 2)
    {
      if (!v34)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v35 = sub_1005D0718(v33);
      sub_1000D2CD4(a7, v35, 0);
    }

    v36 = sub_10000BFC0(a1);
    if (*(a1 + 8) == 1)
    {
      v37 = v36;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v38 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v62);
        if (SBYTE3(v66) >= 0)
        {
          v39 = &v62;
        }

        else
        {
          v39 = v62;
        }

        v52 = v39;
        LODWORD(v54[0]) = a3->i32[0];
        sub_1013230DC(v54, v59);
        if (v60 >= 0)
        {
          v40 = v59;
        }

        else
        {
          v40 = v59[0];
        }

        v56 = *a4;
        v41 = __p;
        sub_1013230DC(&v56, __p);
        if (v58 < 0)
        {
          v41 = __p[0];
        }

        v42 = *a6;
        v43 = sub_10000B1F8();
        v44 = sub_100125220(v43);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v37;
        v78 = 2080;
        v79 = v52;
        v80 = 2080;
        v81 = v40;
        v82 = 2080;
        v83 = v41;
        v84 = 1024;
        v85 = v42;
        v86 = 2050;
        v87 = v44;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (SBYTE3(v66) < 0)
        {
          operator delete(v62);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        sub_101322EE0(a2, v59);
        if (v60 >= 0)
        {
          v45 = v59;
        }

        else
        {
          v45 = v59[0];
        }

        v56 = a3->i32[0];
        v46 = __p;
        sub_1013230DC(&v56, __p);
        if (v58 < 0)
        {
          v46 = __p[0];
        }

        v53 = *a4;
        sub_1013230DC(&v53, v54);
        if (v55 >= 0)
        {
          v47 = v54;
        }

        else
        {
          v47 = v54[0];
        }

        v48 = *a6;
        v49 = sub_10000B1F8();
        v50 = sub_100125220(v49);
        LODWORD(v62) = 67110402;
        HIDWORD(v62) = v37;
        v63 = 2080;
        v64 = v45;
        v65 = 2080;
        v66 = v46;
        v67 = 2080;
        v68 = v47;
        v69 = 1024;
        v70 = v48;
        v71 = 2050;
        v72 = v50;
        v51 = _os_log_send_and_compose_impl();
        if (v55 < 0)
        {
          operator delete(v54[0]);
        }

        if (v58 < 0)
        {
          operator delete(__p[0]);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v51);
        if (v51 != &buf)
        {
          free(v51);
        }
      }
    }

    goto LABEL_57;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v81) >= 0 ? &buf : buf;
    *v73 = 136315138;
    *v74 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,unsupported message type,%s", v73, 0xCu);
    if (SBYTE3(v81) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA338();
  }
}

uint64_t sub_1005D0718(uint64_t a1)
{
  *(a1 + 20) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

void sub_1005D0798(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, int *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v83 = 1024;
        LODWORD(v84) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v78 = 67109376;
        *v79 = v16;
        *&v79[4] = 1024;
        *&v79[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLSignalEnvironmentProvider_Type::Notification &, const CLSignalEnvironmentProvider_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v78);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v66);
    sub_10000AFE4(v78, a2, a3->i32, a4, v66);
    v81 |= 2u;
    v27 = v80;
    if (!v80)
    {
      operator new();
    }

    *(v80 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x2000u;
    v29 = *(v28 + 104);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_10126F4F8(a6);
    if (!sub_100437D64(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11737, "::CLP::LogEntry::PrivateData::SignalEnvironmentNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 20) |= 1u;
    v34 = *(v33 + 8);
    if (!v34)
    {
      operator new();
    }

    v35 = sub_1001F3804(a7);
    if (sub_1001F161C(v35))
    {
      *(v34 + 20) |= 1u;
      *(v34 + 8) = v35;
      *(v33 + 20) |= 1u;
      v36 = *(v33 + 8);
      if (!v36)
      {
        operator new();
      }

      v37 = sub_10126F6E0(a7 + 1);
      if (sub_10041ECF8(v37))
      {
        *(v36 + 20) |= 2u;
        *(v36 + 12) = v37;
        v38 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v67);
            if (SBYTE3(v71) >= 0)
            {
              v41 = &v67;
            }

            else
            {
              v41 = v67;
            }

            v57 = v41;
            LODWORD(v59[0]) = a3->i32[0];
            sub_1013230DC(v59, v64);
            if (v65 >= 0)
            {
              v42 = v64;
            }

            else
            {
              v42 = v64[0];
            }

            v61 = *a4;
            v43 = __p;
            sub_1013230DC(&v61, __p);
            if (v63 < 0)
            {
              v43 = __p[0];
            }

            v44 = *a6;
            v45 = sub_10000B1F8();
            v46 = sub_100125220(v45);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v83 = 2080;
            v84 = v57;
            v85 = 2080;
            v86 = v42;
            v87 = 2080;
            v88 = v43;
            v89 = 1024;
            v90 = v44;
            v91 = 2050;
            v92 = v46;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v63 < 0)
            {
              operator delete(__p[0]);
            }

            if (v65 < 0)
            {
              operator delete(v64[0]);
            }

            if (SBYTE3(v71) < 0)
            {
              operator delete(v67);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v64);
            if (v65 >= 0)
            {
              v50 = v64;
            }

            else
            {
              v50 = v64[0];
            }

            v61 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v61, __p);
            if (v63 < 0)
            {
              v51 = __p[0];
            }

            v58 = *a4;
            sub_1013230DC(&v58, v59);
            if (v60 >= 0)
            {
              v52 = v59;
            }

            else
            {
              v52 = v59[0];
            }

            v53 = *a6;
            v54 = sub_10000B1F8();
            v55 = sub_100125220(v54);
            LODWORD(v67) = 67110402;
            HIDWORD(v67) = v39;
            v68 = 2080;
            v69 = v50;
            v70 = 2080;
            v71 = v51;
            v72 = 2080;
            v73 = v52;
            v74 = 1024;
            v75 = v53;
            v76 = 2050;
            v77 = v55;
            v56 = _os_log_send_and_compose_impl();
            if (v60 < 0)
            {
              operator delete(v59[0]);
            }

            if (v63 < 0)
            {
              operator delete(__p[0]);
            }

            if (v65 < 0)
            {
              operator delete(v64[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLSignalEnvironmentProvider_Type::Notification &, const CLSignalEnvironmentProvider_Type::NotificationData &)", "%s\n", v56);
            if (v56 != &buf)
            {
              free(v56);
            }
          }
        }

        sub_10000CE1C(v78);
        return;
      }

      v47 = "::CLP::LogEntry::PrivateData::SignalEnvironmentFidelityLevel_IsValid(value)";
      v48 = 22943;
      v49 = "set_fidelity_level";
    }

    else
    {
      v47 = "::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)";
      v48 = 22920;
      v49 = "set_type";
    }

    __assert_rtn(v49, "CLPPrivateDataShared.pb.h", v48, v47);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v86) >= 0 ? &buf : buf;
    *v78 = 136315138;
    *v79 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,unsupported message type,%s", v78, 0xCu);
    if (SBYTE3(v86) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA43C();
  }
}

void sub_1005D1128(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v77 = 1024;
          LODWORD(v78) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v72 = 67109376;
          *v73 = v16;
          *&v73[4] = 1024;
          *&v73[6] = v18;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLStepCountNotifier_Type::Notification &, const CLStepCountNotifier_Type::NotificationData &)", "%s\n", v19);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        sub_10000AED0(v72);
        v26 = sub_10000B1F8();
        sub_10000AED4(v26, v60);
        sub_10000AFE4(v72, a2, a3->i32, a4, v60);
        v75 |= 2u;
        v27 = v74;
        if (!v74)
        {
          operator new();
        }

        *(v74 + 492) |= 0x800u;
        v28 = *(v27 + 352);
        if (!v28)
        {
          operator new();
        }

        *(v28 + 200) |= 0x400000u;
        v29 = *(v28 + 176);
        if (!v29)
        {
          operator new();
        }

        v30 = *a5;
        *(v29 + 28) |= 1u;
        *(v29 + 8) = v30;
        v31 = sub_10126F5E8(a6);
        if (!sub_1001744A4(v31))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11874, "::CLP::LogEntry::PrivateData::StepCountNotification_NotificationType_IsValid(value)");
        }

        v32 = *(v29 + 28);
        *(v29 + 12) = v31;
        *(v29 + 28) = v32 | 6;
        v33 = *(v29 + 16);
        if (!v33)
        {
          operator new();
        }

        *(v33 + 20) |= 1u;
        v34 = *(v33 + 8);
        if (!v34)
        {
          operator new();
        }

        sub_10126A094(a7, v34);
        v35 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v36 = v35;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v61);
            if (SBYTE3(v65) >= 0)
            {
              v38 = &v61;
            }

            else
            {
              v38 = v61;
            }

            v51 = v38;
            LODWORD(v53[0]) = a3->i32[0];
            sub_1013230DC(v53, v58);
            if (v59 >= 0)
            {
              v39 = v58;
            }

            else
            {
              v39 = v58[0];
            }

            v55 = *a4;
            v40 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v40 = __p[0];
            }

            v41 = *a6;
            v42 = sub_10000B1F8();
            v43 = sub_100125220(v42);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v36;
            v77 = 2080;
            v78 = v51;
            v79 = 2080;
            v80 = v39;
            v81 = 2080;
            v82 = v40;
            v83 = 1024;
            v84 = v41;
            v85 = 2050;
            v86 = v43;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SBYTE3(v65) < 0)
            {
              operator delete(v61);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v58);
            if (v59 >= 0)
            {
              v44 = v58;
            }

            else
            {
              v44 = v58[0];
            }

            v55 = a3->i32[0];
            v45 = __p;
            sub_1013230DC(&v55, __p);
            if (v57 < 0)
            {
              v45 = __p[0];
            }

            v52 = *a4;
            sub_1013230DC(&v52, v53);
            if (v54 >= 0)
            {
              v46 = v53;
            }

            else
            {
              v46 = v53[0];
            }

            v47 = *a6;
            v48 = sub_10000B1F8();
            v49 = sub_100125220(v48);
            LODWORD(v61) = 67110402;
            HIDWORD(v61) = v36;
            v62 = 2080;
            v63 = v44;
            v64 = 2080;
            v65 = v45;
            v66 = 2080;
            v67 = v46;
            v68 = 1024;
            v69 = v47;
            v70 = 2050;
            v71 = v49;
            v50 = _os_log_send_and_compose_impl();
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLStepCountNotifier_Type::Notification &, const CLStepCountNotifier_Type::NotificationData &)", "%s\n", v50);
            if (v50 != &buf)
            {
              free(v50);
            }
          }
        }

        sub_10000CE1C(v72);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v80) >= 0 ? &buf : buf;
        *v72 = 136315138;
        *v73 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,unsupported message type,%s", v72, 0xCu);
        if (SBYTE3(v80) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DA540();
      }
    }
  }
}

void sub_1005D19F8(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v10 = a3->i32[1] == 0;
          }

          else
          {
            v10 = 1;
          }

          v11 = !v10;
          if (*a4)
          {
            v12 = a4[1] == 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          *buf = 67109376;
          *&buf[4] = v11;
          v73 = 1024;
          LODWORD(v74) = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v14 = a3->i32[1] == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (*a4)
          {
            v16 = a4[1] == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          *v63 = 67109376;
          *&v63[4] = v15;
          *&v63[8] = 1024;
          *&v63[10] = v17;
          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLTelephonyService_Type::Notification &)", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      else
      {
        sub_10000AED0(v60);
        v24 = sub_10000B1F8();
        sub_10000AED4(v24, v59);
        sub_10000AFE4(v60, a2, a3->i32, a4, v59);
        v62 |= 2u;
        v25 = v61;
        if (!v61)
        {
          operator new();
        }

        *(v61 + 492) |= 0x800u;
        v26 = *(v25 + 352);
        if (!v26)
        {
          operator new();
        }

        *(v26 + 200) |= 0x4000u;
        v27 = *(v26 + 112);
        if (!v27)
        {
          operator new();
        }

        v28 = *a5;
        v27[5] |= 1u;
        v27[2] = v28;
        v29 = sub_1005D22B8(a6);
        if (!sub_10041ECEC(v29))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11965, "::CLP::LogEntry::PrivateData::TelephonyServiceNotification_NotificationType_IsValid(value)");
        }

        v27[5] |= 2u;
        v27[3] = v29;
        v30 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v31 = v30;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v32 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v63);
            if (SBYTE3(v65) >= 0)
            {
              v33 = v63;
            }

            else
            {
              v33 = *v63;
            }

            v48 = v33;
            LODWORD(v49[0]) = a3->i32[0];
            sub_1013230DC(v49, v57);
            if (v58 >= 0)
            {
              v34 = v57;
            }

            else
            {
              v34 = v57[0];
            }

            v54 = *a4;
            sub_1013230DC(&v54, v55);
            if (v56 >= 0)
            {
              v35 = v55;
            }

            else
            {
              v35 = v55[0];
            }

            v36 = sub_100072010(a6);
            v37 = __p;
            sub_1000238CC(v36, __p);
            if (v53 < 0)
            {
              v37 = __p[0];
            }

            v38 = sub_10000B1F8();
            v39 = sub_100125220(v38);
            *buf = 67110402;
            *&buf[4] = v31;
            v73 = 2080;
            v74 = v48;
            v75 = 2080;
            v76 = v34;
            v77 = 2080;
            v78 = v35;
            v79 = 2080;
            v80 = v37;
            v81 = 2050;
            v82 = v39;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", buf, 0x3Au);
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            if (v56 < 0)
            {
              operator delete(v55[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            if (SBYTE3(v65) < 0)
            {
              operator delete(*v63);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(buf);
            sub_101322EE0(a2, v57);
            if (v58 >= 0)
            {
              v40 = v57;
            }

            else
            {
              v40 = v57[0];
            }

            v54 = a3->i32[0];
            v41 = v55;
            sub_1013230DC(&v54, v55);
            if (v56 < 0)
            {
              v41 = v55[0];
            }

            v51 = *a4;
            v42 = __p;
            sub_1013230DC(&v51, __p);
            if (v53 < 0)
            {
              v42 = __p[0];
            }

            v43 = sub_100072010(a6);
            v44 = v49;
            sub_1000238CC(v43, v49);
            if (v50 < 0)
            {
              v44 = v49[0];
            }

            v45 = sub_10000B1F8();
            v46 = sub_100125220(v45);
            *v63 = 67110402;
            *&v63[4] = v31;
            *&v63[8] = 2080;
            *&v63[10] = v40;
            v64 = 2080;
            v65 = v41;
            v66 = 2080;
            v67 = v42;
            v68 = 2080;
            v69 = v44;
            v70 = 2050;
            v71 = v46;
            v47 = _os_log_send_and_compose_impl();
            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            if (v56 < 0)
            {
              operator delete(v55[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLTelephonyService_Type::Notification &)", "%s\n", v47);
            if (v47 != buf)
            {
              free(v47);
            }
          }
        }

        sub_10000CE1C(v60);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, buf);
        v20 = SBYTE3(v76) >= 0 ? buf : *buf;
        *v63 = 136315138;
        *&v63[4] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,unsupported message type,%s", v63, 0xCu);
        if (SBYTE3(v76) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DA644();
      }
    }
  }
}

uint64_t sub_1005D22B8(int *a1)
{
  v2 = sub_100072010(a1);
  if (CFEqual(v2, kCTRegistrationStatusChangedNotification))
  {
    return 1;
  }

  v4 = sub_100072010(a1);
  if (CFEqual(v4, kCTCallStatusChangeNotification))
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = sub_10006E830(a1);
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertTelephonyServiceNotificationTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA748(a1);
    return 0;
  }

  return result;
}

void sub_1005D23DC(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v10 = a3->i32[1] == 0;
          }

          else
          {
            v10 = 1;
          }

          v11 = !v10;
          if (*a4)
          {
            v12 = a4[1] == 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v11;
          v69 = 1024;
          LODWORD(v70) = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v14 = a3->i32[1] == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (*a4)
          {
            v16 = a4[1] == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          *v59 = 67109376;
          *&v59[4] = v15;
          *&v59[8] = 1024;
          *&v59[10] = v17;
          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v18);
          if (v18 != &buf)
          {
            free(v18);
          }
        }
      }

      else
      {
        sub_10000AED0(v56);
        v24 = sub_10000B1F8();
        sub_10000AED4(v24, v55);
        sub_10000AFE4(v56, a2, a3->i32, a4, v55);
        v58 |= 2u;
        v25 = v57;
        if (!v57)
        {
          operator new();
        }

        *(v57 + 492) |= 0x800u;
        v26 = *(v25 + 352);
        if (!v26)
        {
          operator new();
        }

        *(v26 + 200) |= 0x10000u;
        v27 = *(v26 + 128);
        if (!v27)
        {
          operator new();
        }

        v28 = *a5;
        v27[9] |= 1u;
        v27[2] = v28;
        v29 = sub_100021DC4(a6);
        if (!sub_100DF8570(v29))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
        }

        v27[9] |= 2u;
        v27[3] = v29;
        v30 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v31 = v30;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v32 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v59);
            if (SBYTE3(v61) >= 0)
            {
              v33 = v59;
            }

            else
            {
              v33 = *v59;
            }

            v46 = v33;
            LODWORD(v48[0]) = a3->i32[0];
            sub_1013230DC(v48, v53);
            if (v54 >= 0)
            {
              v34 = v53;
            }

            else
            {
              v34 = v53[0];
            }

            v50 = *a4;
            v35 = __p;
            sub_1013230DC(&v50, __p);
            if (v52 < 0)
            {
              v35 = __p[0];
            }

            v36 = sub_100048D98(*a6);
            v37 = sub_10000B1F8();
            v38 = sub_100125220(v37);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v31;
            v69 = 2080;
            v70 = v46;
            v71 = 2080;
            v72 = v34;
            v73 = 2080;
            v74 = v35;
            v75 = 2080;
            v76 = v36;
            v77 = 2050;
            v78 = v38;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
            if (v52 < 0)
            {
              operator delete(__p[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (SBYTE3(v61) < 0)
            {
              operator delete(*v59);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v53);
            if (v54 >= 0)
            {
              v39 = v53;
            }

            else
            {
              v39 = v53[0];
            }

            v50 = a3->i32[0];
            v40 = __p;
            sub_1013230DC(&v50, __p);
            if (v52 < 0)
            {
              v40 = __p[0];
            }

            v47 = *a4;
            sub_1013230DC(&v47, v48);
            if (v49 >= 0)
            {
              v41 = v48;
            }

            else
            {
              v41 = v48[0];
            }

            v42 = sub_100048D98(*a6);
            v43 = sub_10000B1F8();
            v44 = sub_100125220(v43);
            *v59 = 67110402;
            *&v59[4] = v31;
            *&v59[8] = 2080;
            *&v59[10] = v39;
            v60 = 2080;
            v61 = v40;
            v62 = 2080;
            v63 = v41;
            v64 = 2080;
            v65 = v42;
            v66 = 2050;
            v67 = v44;
            v45 = _os_log_send_and_compose_impl();
            if (v49 < 0)
            {
              operator delete(v48[0]);
            }

            if (v52 < 0)
            {
              operator delete(__p[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v45);
            if (v45 != &buf)
            {
              free(v45);
            }
          }
        }

        sub_10000CE1C(v56);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v20 = SBYTE3(v72) >= 0 ? &buf : buf;
        *v59 = 136315138;
        *&v59[4] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,unsupported message type,%s", v59, 0xCu);
        if (SBYTE3(v72) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DAA44();
      }
    }
  }
}

uint64_t sub_1005D2C14(uint64_t a1)
{
  *(a1 + 128) |= 0x2000u;
  if (!*(a1 + 96))
  {
    operator new();
  }

  return *(a1 + 96);
}

uint64_t sub_1005D2C94(uint64_t a1)
{
  *(a1 + 128) |= 0x8000u;
  if (!*(a1 + 104))
  {
    operator new();
  }

  return *(a1 + 104);
}

uint64_t sub_1005D2D14(uint64_t a1)
{
  *(a1 + 128) |= 0x10000u;
  if (!*(a1 + 112))
  {
    operator new();
  }

  return *(a1 + 112);
}

void sub_1005D2D94(uint64_t a1, int32x4_t *a2, int *a3, void *a4, int a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (a2->i32[0])
      {
        v8 = a2->i32[1] == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
      if (*a3)
      {
        v10 = a3[1] == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      *buf = 67109376;
      v69 = v9;
      v70 = 1024;
      LODWORD(v71) = v11;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,RoutineVisit,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      if (a2->i32[0])
      {
        v12 = a2->i32[1] == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (*a3)
      {
        v14 = a3[1] == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      v63[0] = 67109376;
      v63[1] = v13;
      v64 = 1024;
      v65 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLVisit *, const BOOL)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    return;
  }

  sub_10000AED0(v63);
  v20 = sub_10000B1F8();
  sub_10000AED4(v20, v51);
  v50 = 4;
  sub_10000AFE4(v63, &v50, a2->i32, a3, v51);
  v67 |= 2u;
  v21 = v66;
  if (!v66)
  {
    operator new();
  }

  *(v66 + 492) |= 0x800u;
  v22 = *(v21 + 352);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 200) |= 0x40000u;
  v23 = *(v22 + 144);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 28) |= 1u;
  *(v23 + 8) = -1;
  if (!a5)
  {
    if (sub_10041ECEC(1u))
    {
      v24 = 1;
      goto LABEL_47;
    }

LABEL_70:
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13342, "::CLP::LogEntry::PrivateData::RoutineVisitNotification_NotificationType_IsValid(value)");
  }

  if (!sub_10041ECEC(2u))
  {
    goto LABEL_70;
  }

  v24 = 2;
LABEL_47:
  v25 = *(v23 + 28);
  *(v23 + 12) = v24;
  *(v23 + 28) = v25 | 6;
  v26 = *(v23 + 16);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 20) |= 1u;
  v27 = *(v26 + 8);
  if (!v27)
  {
    operator new();
  }

  sub_10126B660(a4, v27);
  v28 = sub_10000BFC0(a1);
  if (*(a1 + 8) == 1)
  {
    v29 = v28;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v30 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v31 = &v52;
      sub_101322EE0(&v50, &v52);
      if (SBYTE3(v56) < 0)
      {
        v31 = v52;
      }

      LODWORD(v43[0]) = a2->i32[0];
      v32 = v48;
      sub_1013230DC(v43, v48);
      if (v49 < 0)
      {
        v32 = v48[0];
      }

      v45 = *a3;
      v33 = __p;
      sub_1013230DC(&v45, __p);
      if (v47 < 0)
      {
        v33 = __p[0];
      }

      v34 = sub_10000B1F8();
      v35 = sub_100125220(v34);
      *buf = 67110402;
      v69 = v29;
      v70 = 2080;
      v71 = v31;
      v72 = 2080;
      v73 = v32;
      v74 = 2080;
      v75 = v33;
      v76 = 1024;
      v77 = a5;
      v78 = 2050;
      v79 = v35;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,RoutineVisit,success,%d,message_type,%s,from,%s,to,%s,isLOI,%d,propagation_us,%{public}.3f", buf, 0x36u);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (SBYTE3(v56) < 0)
      {
        operator delete(v52);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v36 = v48;
      sub_101322EE0(&v50, v48);
      if (v49 < 0)
      {
        v36 = v48[0];
      }

      v45 = a2->i32[0];
      v37 = __p;
      sub_1013230DC(&v45, __p);
      if (v47 < 0)
      {
        v37 = __p[0];
      }

      v42 = *a3;
      v38 = v43;
      sub_1013230DC(&v42, v43);
      if (v44 < 0)
      {
        v38 = v43[0];
      }

      v39 = sub_10000B1F8();
      v40 = sub_100125220(v39);
      LODWORD(v52) = 67110402;
      HIDWORD(v52) = v29;
      v53 = 2080;
      v54 = v36;
      v55 = 2080;
      v56 = v37;
      v57 = 2080;
      v58 = v38;
      v59 = 1024;
      v60 = a5;
      v61 = 2050;
      v62 = v40;
      v41 = _os_log_send_and_compose_impl();
      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLVisit *, const BOOL)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  sub_10000CE1C(v63);
}

uint64_t sub_1005D35A4(uint64_t result, int a2, const std::string *a3, void *a4, void *a5)
{
  v5 = a2 ^ 1;
  if (a5)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    v6 = result;
    if (*(result + 16))
    {
      v7 = a5;
      *buf = 1;
      LODWORD(v41) = 1;
      HIDWORD(v41) = sub_10000AD98(buf);
      *buf = 21;
      LODWORD(v40) = 21;
      HIDWORD(v40) = sub_10000AD98(buf);
      if ((a2 & 1) == 0)
      {
        *buf = 21;
        v41 = (sub_10000AD98(buf) << 32) | 0x15;
        *buf = 1;
        v40 = (sub_10000AD98(buf) << 32) | 1;
      }

      sub_10000AED0(v37);
      v11 = sub_10000B1F8();
      sub_10000AED4(v11, v36);
      v35 = 4;
      sub_10000AFE4(v37, &v35, &v41, &v40, v36);
      v39 |= 2u;
      v12 = v38;
      if (!v38)
      {
        operator new();
      }

      *(v38 + 492) |= 0x800u;
      v13 = *(v12 + 352);
      if (!v13)
      {
        operator new();
      }

      *(v13 + 200) |= 0x800000u;
      v14 = *(v13 + 184);
      if (!v14)
      {
        operator new();
      }

      *(v14 + 28) |= 1u;
      *(v14 + 8) = -1;
      if (a2)
      {
        if (sub_10041ECEC(1u))
        {
          v15 = 1;
LABEL_18:
          v16 = *(v14 + 28);
          *(v14 + 12) = v15;
          *(v14 + 28) = v16 | 6;
          v17 = *(v14 + 16);
          if (!v17)
          {
            operator new();
          }

          *(v17 + 52) |= 1u;
          v18 = *(v17 + 8);
          if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          std::string::operator=(v18, a3);
          *(v17 + 52) |= 2u;
          v19 = *(v17 + 16);
          if (!v19)
          {
            operator new();
          }

          sub_10126FF24(a4, v19);
          if (v7 && [v7 count])
          {
            for (i = 0; [v7 count] > i; ++i)
            {
              v21 = [v7 objectAtIndexedSubscript:i];
              v22 = *(v17 + 36);
              v23 = *(v17 + 32);
              if (v23 >= v22)
              {
                if (v22 == *(v17 + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 24), v22 + 1);
                  v22 = *(v17 + 36);
                }

                *(v17 + 36) = v22 + 1;
                sub_1005D690C();
              }

              v24 = *(v17 + 24);
              *(v17 + 32) = v23 + 1;
              sub_10126FFF8(v21, *(v24 + 8 * v23));
            }
          }

          v25 = sub_10000BFC0(v6);
          if (*(v6 + 8) == 1)
          {
            v26 = v25;
            if (qword_1025D4600 != -1)
            {
              sub_1018D8CDC();
            }

            v27 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v28 = a3;
              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                v28 = a3->__r_.__value_.__r.__words[0];
              }

              if (v7)
              {
                v29 = [v7 count];
              }

              else
              {
                v29 = 0;
              }

              v30 = sub_10000B1F8();
              v31 = sub_100125220(v30);
              *buf = 67241218;
              v53 = v26;
              v54 = 1026;
              v55 = a2;
              v56 = 2082;
              v57 = v28;
              v58 = 1026;
              v59 = v29;
              v60 = 2050;
              v61 = v31;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,FetchRecentLocationsWithOptions,success,%{public}d,is_input,%{public}d,client_str,%{public}s,loc_sz,%{public}d,propagation_us,%{public}.3f", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_1018D8CDC();
              }

              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                a3 = a3->__r_.__value_.__r.__words[0];
              }

              if (v7)
              {
                LODWORD(v7) = [v7 count];
              }

              v32 = sub_10000B1F8();
              v33 = sub_100125220(v32);
              v42 = 67241218;
              v43 = v26;
              v44 = 1026;
              v45 = a2;
              v46 = 2082;
              v47 = a3;
              v48 = 1026;
              v49 = v7;
              v50 = 2050;
              v51 = v33;
              v34 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordFetchRecentLocationsWithOptions(const BOOL, const std::string, CLRecentLocationsFetchOptions *, NSArray<CLLocationExtendedTimestamps *> *)", "%s\n", v34);
              if (v34 != buf)
              {
                free(v34);
              }
            }
          }

          return sub_10000CE1C(v37);
        }
      }

      else if (sub_10041ECEC(2u))
      {
        v15 = 2;
        goto LABEL_18;
      }

      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 14010, "::CLP::LogEntry::PrivateData::FetchRecentLocationsNotification_NotificationType_IsValid(value)");
    }
  }

  return result;
}

void sub_1005D3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D3C2C(uint64_t result, int a2, const std::string *a3, void *a4, double a5, double a6)
{
  v6 = a2 ^ 1;
  if (a4)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0)
  {
    v7 = result;
    if (*(result + 16))
    {
      v8 = a4;
      *buf = 1;
      LODWORD(v43) = 1;
      HIDWORD(v43) = sub_10000AD98(buf);
      *buf = 21;
      LODWORD(v42) = 21;
      HIDWORD(v42) = sub_10000AD98(buf);
      if ((a2 & 1) == 0)
      {
        *buf = 21;
        v43 = (sub_10000AD98(buf) << 32) | 0x15;
        *buf = 1;
        v42 = (sub_10000AD98(buf) << 32) | 1;
      }

      sub_10000AED0(v39);
      v13 = sub_10000B1F8();
      sub_10000AED4(v13, v38);
      v37 = 4;
      sub_10000AFE4(v39, &v37, &v43, &v42, v38);
      v41 |= 2u;
      v14 = v40;
      if (!v40)
      {
        operator new();
      }

      *(v40 + 492) |= 0x800u;
      v15 = *(v14 + 352);
      if (!v15)
      {
        operator new();
      }

      *(v15 + 200) |= 0x800000u;
      v16 = *(v15 + 184);
      if (!v16)
      {
        operator new();
      }

      *(v16 + 28) |= 1u;
      *(v16 + 8) = -1;
      if (a2)
      {
        if (sub_10041ECEC(1u))
        {
          v17 = 1;
LABEL_18:
          v18 = *(v16 + 28);
          *(v16 + 12) = v17;
          *(v16 + 28) = v18 | 6;
          v19 = *(v16 + 16);
          if (!v19)
          {
            operator new();
          }

          *(v19 + 52) |= 1u;
          v20 = *(v19 + 8);
          if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          std::string::operator=(v20, a3);
          *(v19 + 52) |= 2u;
          v21 = *(v19 + 16);
          if (!v21)
          {
            operator new();
          }

          *(v21 + 36) |= 2u;
          *(v21 + 16) = a5;
          *(v19 + 52) |= 2u;
          *(v21 + 36) |= 4u;
          *(v21 + 24) = (a6 - a5);
          *(v19 + 52) |= 2u;
          *(v21 + 36) |= 8u;
          *(v21 + 28) = 1;
          *(v19 + 52) |= 2u;
          *(v21 + 36) |= 0x10u;
          if (v8 && [v8 count])
          {
            for (i = 0; [v8 count] > i; ++i)
            {
              v23 = [v8 objectAtIndexedSubscript:i];
              v24 = *(v19 + 36);
              v25 = *(v19 + 32);
              if (v25 >= v24)
              {
                if (v24 == *(v19 + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v19 + 24), v24 + 1);
                  v24 = *(v19 + 36);
                }

                *(v19 + 36) = v24 + 1;
                sub_1005D690C();
              }

              v26 = *(v19 + 24);
              *(v19 + 32) = v25 + 1;
              sub_10126FFF8(v23, *(v26 + 8 * v25));
            }
          }

          v27 = sub_10000BFC0(v7);
          if (*(v7 + 8) == 1)
          {
            v28 = v27;
            if (qword_1025D4600 != -1)
            {
              sub_1018D8CDC();
            }

            v29 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v30 = a3;
              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                v30 = a3->__r_.__value_.__r.__words[0];
              }

              if (v8)
              {
                v31 = [v8 count];
              }

              else
              {
                v31 = 0;
              }

              v32 = sub_10000B1F8();
              v33 = sub_100125220(v32);
              *buf = 67241730;
              v59 = v28;
              v60 = 1026;
              v61 = a2;
              v62 = 2082;
              v63 = v30;
              v64 = 2050;
              v65 = a5;
              v66 = 2050;
              v67 = a6;
              v68 = 1026;
              v69 = v31;
              v70 = 2050;
              v71 = v33;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,recordFetchRecentSparseLocations,success,%{public}d,is_input,%{public}d,client_str,%{public}s,startMctSec,%{public}.3f,endMctSec,%{public}.3f,loc_sz,%{public}d,propagation_us,%{public}.3f", buf, 0x3Cu);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_1018D8CDC();
              }

              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                a3 = a3->__r_.__value_.__r.__words[0];
              }

              if (v8)
              {
                LODWORD(v8) = [v8 count];
              }

              v34 = sub_10000B1F8();
              v35 = sub_100125220(v34);
              v44 = 67241730;
              v45 = v28;
              v46 = 1026;
              v47 = a2;
              v48 = 2082;
              v49 = a3;
              v50 = 2050;
              v51 = a5;
              v52 = 2050;
              v53 = a6;
              v54 = 1026;
              v55 = v8;
              v56 = 2050;
              v57 = v35;
              v36 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordFetchRecentSparseLocations(const BOOL, const std::string, const double, const double, NSArray<CLLocationExtendedTimestamps *> *)", "%s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }
          }

          return sub_10000CE1C(v39);
        }
      }

      else if (sub_10041ECEC(2u))
      {
        v17 = 2;
        goto LABEL_18;
      }

      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 14010, "::CLP::LogEntry::PrivateData::FetchRecentLocationsNotification_NotificationType_IsValid(value)");
    }
  }

  return result;
}

void sub_1005D4280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4344(uint64_t result, uint64_t a2, uint64_t *a3, char a4, char a5, char a6, char a7, int *a8, int *a9, int *a10, int a11, int *a12, uint64_t a13)
{
  v47 = result;
  if (!*(result + 16))
  {
    return result;
  }

  sub_10000AED0(v51);
  v20 = sub_10000B1F8();
  sub_10000AED4(v20, v50);
  v49 = 1;
  *buf = 21;
  v48[0] = 21;
  v48[1] = sub_10000AD98(buf);
  sub_10000AFE4(v51, &v49, v48, v48, v50);
  v53 |= 2u;
  v21 = v52;
  if (!v52)
  {
    operator new();
  }

  *(v52 + 492) |= 0x800u;
  v22 = *(v21 + 352);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 200) |= 0x10u;
  v23 = *(v22 + 32);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 28) |= 1u;
  *(v23 + 8) = -1;
  if (!sub_1000183C8(4u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v24 = *(v23 + 28);
  *(v23 + 12) = 4;
  *(v23 + 28) = v24 | 6;
  v25 = *(v23 + 16);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 76) |= 0x40u;
  v26 = *(v25 + 64);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 76) |= 1u;
  v27 = *(v26 + 8);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 64) |= 1u;
  v28 = *(v27 + 8);
  if (!v28)
  {
    operator new();
  }

  sub_1001F34E4(a2, v28);
  *(v26 + 76) |= 1u;
  v29 = *(v26 + 8);
  if (!v29)
  {
    operator new();
  }

  v30 = *a3;
  *(v29 + 64) |= 2u;
  *(v29 + 16) = v30;
  *(v26 + 76) |= 1u;
  *(v29 + 64) |= 4u;
  *(v29 + 24) = a4;
  *(v26 + 76) |= 1u;
  *(v29 + 64) |= 8u;
  *(v29 + 25) = a5;
  *(v26 + 76) |= 1u;
  *(v29 + 64) |= 0x10u;
  *(v29 + 26) = a6;
  *(v26 + 76) |= 1u;
  *(v29 + 64) |= 0x20u;
  *(v29 + 27) = a7;
  *(v26 + 76) |= 1u;
  v31 = sub_1005D4B6C(a8);
  if (!sub_100DE648C(v31))
  {
    v43 = "::CLP::LogEntry::PrivateData::DynamicsMode_IsValid(value)";
    v44 = 7924;
    v45 = "set_dynamics_mode";
    goto LABEL_45;
  }

  *(v29 + 64) |= 0x40u;
  *(v29 + 28) = v31;
  *(v26 + 76) |= 1u;
  v32 = *(v26 + 8);
  if (!v32)
  {
    operator new();
  }

  v33 = sub_1000D1634((a13 + 8));
  if (!sub_1000D1A24(v33))
  {
    v43 = "::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)";
    v44 = 7947;
    v45 = "set_motion_activity";
    goto LABEL_45;
  }

  *(v32 + 64) |= 0x80u;
  *(v32 + 32) = v33;
  *(v26 + 76) |= 1u;
  v34 = *(v26 + 8);
  if (!v34)
  {
    operator new();
  }

  v35 = sub_1005D4C5C(a9 + 2);
  if (!sub_1000183C8(v35))
  {
    v43 = "::CLP::LogEntry::PrivateData::IODerivedMotionActivity_IsValid(value)";
    v44 = 7970;
    v45 = "set_io_derived_motion_activity";
    goto LABEL_45;
  }

  *(v34 + 64) |= 0x100u;
  *(v34 + 36) = v35;
  *(v26 + 76) |= 1u;
  v36 = *(v26 + 8);
  if (!v36)
  {
    operator new();
  }

  v37 = *a9;
  *(v36 + 64) |= 0x200u;
  *(v36 + 40) = v37;
  *(v26 + 76) |= 1u;
  v38 = sub_10010E5D8(a10);
  if (!sub_100108BCC(v38))
  {
    v43 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
    v44 = 8015;
    v45 = "set_original_location_type";
    goto LABEL_45;
  }

  *(v36 + 64) |= 0x400u;
  *(v36 + 48) = v38;
  *(v26 + 76) |= 1u;
  v39 = *(v26 + 8);
  if (!v39)
  {
    operator new();
  }

  v39[16] |= 0x800u;
  v39[13] = a11;
  *(v26 + 76) |= 1u;
  v40 = sub_1005D4D54(a12);
  if (!sub_10042B16C(v40))
  {
    v43 = "::CLP::LogEntry::PrivateData::LCFusionState_IsValid(value)";
    v44 = 8060;
    v45 = "set_fusion_state";
LABEL_45:
    __assert_rtn(v45, "CLPLocationController.pb.h", v44, v43);
  }

  v39[16] |= 0x1000u;
  v39[14] = v40;
  v41 = sub_10000BFC0(v47);
  if (qword_1025D4600 != -1)
  {
    sub_1018D8CDC();
  }

  v42 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v57 = v41;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "#locctl,#rec,recordLCFusionStatus,success,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D04(buf);
    v54 = 67240192;
    v55 = v41;
    v46 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLCFusionStatus(const CLDaemonLocation &, const double &, const BOOL, const BOOL, const BOOL, const BOOL, const cllcf::LCFusionDynamicsMode::DynamicsMode &, const cllcf::IODerivedMotionActivityState &, const CLLocationType &, const int, const cllcf::LCFusionState &, const cllcf::TaggedMotionActivity &)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  return sub_10000CE1C(v51);
}

void sub_1005D4A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4B6C(int *a1)
{
  if (*a1 < 0xB)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCFusionDynamicsModeTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB058(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4C5C(int *a1)
{
  v1 = *a1;
  if (v1 < 6)
  {
    return dword_101C80828[v1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertIODerivedMotionActivityTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB144(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4D54(int *a1)
{
  if (*a1 < 5)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCFusionStateTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB230(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4E44(uint64_t result, int a2, int a3, int a4, void *a5, uint64_t *a6)
{
  if (*(result + 16))
  {
    v11 = result;
    sub_10000AED0(v37);
    v12 = sub_10000B1F8();
    sub_10000AED4(v12, v36);
    v35 = 1;
    *buf = 21;
    v34[0] = 21;
    v34[1] = sub_10000AD98(buf);
    sub_10000AFE4(v37, &v35, v34, v34, v36);
    v39 |= 2u;
    v13 = v38;
    if (!v38)
    {
      operator new();
    }

    *(v38 + 492) |= 0x800u;
    v14 = *(v13 + 352);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 200) |= 0x10u;
    v15 = *(v14 + 32);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 28) |= 1u;
    *(v15 + 8) = -1;
    if (!sub_1000183C8(4u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v16 = *(v15 + 28);
    *(v15 + 12) = 4;
    *(v15 + 28) = v16 | 6;
    v17 = *(v15 + 16);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 76) |= 0x40u;
    v18 = *(v17 + 64);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 76) |= 0x20u;
    v19 = *(v18 + 48);
    if (!v19)
    {
      operator new();
    }

    v19[13] |= 1u;
    v19[2] = a2;
    *(v18 + 76) |= 0x20u;
    v19[13] |= 2u;
    v19[3] = a3;
    *(v18 + 76) |= 0x20u;
    v19[13] |= 4u;
    v19[4] = a4;
    if (!a5 || a6[1] == *a6)
    {
      v27 = 0;
    }

    else
    {
      *(v18 + 76) |= 0x20u;
      v20 = sub_1005D54EC(a5);
      if (!sub_100437D64(v20))
      {
        __assert_rtn("set_snapshot_reason", "CLPLocationController.pb.h", 8991, "::CLP::LogEntry::PrivateData::LCBufferStatus_BufferSnapshotReason_IsValid(value)");
      }

      v19[13] |= 8u;
      v19[5] = v20;
      v21 = *a6;
      v22 = a6[1];
      if (*a6 != v22)
      {
        do
        {
          *(v18 + 76) |= 0x20u;
          v23 = *(v18 + 48);
          if (!v23)
          {
            operator new();
          }

          v24 = v23[9];
          v25 = v23[8];
          if (v25 >= v24)
          {
            if (v24 == v23[10])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v23 + 6), v24 + 1);
              v24 = v23[9];
            }

            v23[9] = v24 + 1;
            sub_1005D6970();
          }

          v26 = *(v23 + 3);
          v23[8] = v25 + 1;
          sub_1005D55D0(v21, *(v26 + 8 * v25));
          v21 += 144;
        }

        while (v21 != v22);
      }

      v27 = 1;
    }

    v28 = sub_10000BFC0(v11);
    if (*(v11 + 8) == 1)
    {
      v29 = v28;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v30 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0x8E38E38E38E38E39 * ((a6[1] - *a6) >> 4);
        *buf = 67241472;
        v53 = v29;
        v54 = 1026;
        v55 = a2;
        v56 = 1026;
        v57 = a4;
        v58 = 1026;
        v59 = v27;
        v60 = 1026;
        v61 = a5;
        v62 = 2050;
        v63 = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordOutputBufferInternalState,success,%{public}d,epoch_size,%{public}d,epoch_max_sample_gap,%{public}d,containsSnapshotBuffer,%{public}d,reason,%{public}d,locations_sz,%{public}zu", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        v32 = 0x8E38E38E38E38E39 * ((a6[1] - *a6) >> 4);
        v40 = 67241472;
        v41 = v29;
        v42 = 1026;
        v43 = a2;
        v44 = 1026;
        v45 = a4;
        v46 = 1026;
        v47 = v27;
        v48 = 1026;
        v49 = a5;
        v50 = 2050;
        v51 = v32;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordOutputBufferInternalState(const int, const int, const int, const CLLocationControllerRecorder_Types::LCBufferSnapshotReason, const std::vector<CLLocationBufferBase::LCBufferLocation> &)", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    return sub_10000CE1C(v37);
  }

  return result;
}

void sub_1005D540C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void *sub_1005D54EC(void *a1)
{
  v1 = a1;
  if (a1 >= 2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferSnapshotReasonToProtobuf,unhandled type,%d", v4, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DB31C(v1);
    }

    return 0;
  }

  return v1;
}

void sub_1005D55D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v14 = 0xFFFF;
    v16 = 0;
    v15 = 0;
    v17 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    v18 = _Q0;
    v19 = _Q0;
    v20 = _Q0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0xBFF0000000000000;
    v25 = 0;
    v26 = 0xBFF0000000000000;
    v27 = 0x7FFFFFFF;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v31 = 0;
    sub_10002790C(a1, &v14);
    *(a2 + 40) |= 1u;
    v9 = *(a2 + 8);
    if (!v9)
    {
      operator new();
    }

    sub_1001F34E4(&v14, v9);
    v10 = *(a2 + 40);
    *(a2 + 16) = *(a1 + 16);
    v11 = *(a1 + 128);
    *(a2 + 40) = v10 | 6;
    *(a2 + 24) = v11;
    v12 = sub_1005D62D8(*(a1 + 136));
    if (!sub_1000183C8(v12))
    {
      sub_1018DB414();
    }

    *(a2 + 40) |= 8u;
    *(a2 + 32) = v12;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferLocationToProtobuf,pLocation is nullptr", &v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DB440();
    }
  }
}

uint64_t sub_1005D5780(uint64_t result, char *a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = result;
    if (*(result + 16))
    {
      if (*a2)
      {
        sub_10000AED0(v26);
        v6 = sub_10000B1F8();
        sub_10000AED4(v6, v25);
        v24 = 1;
        *buf = 21;
        v23[0] = 21;
        v23[1] = sub_10000AD98(buf);
        sub_10000AFE4(v26, &v24, v23, v23, v25);
        v28 |= 2u;
        v7 = v27;
        if (!v27)
        {
          operator new();
        }

        *(v27 + 492) |= 0x800u;
        v8 = *(v7 + 352);
        if (!v8)
        {
          operator new();
        }

        *(v8 + 200) |= 0x10u;
        v9 = *(v8 + 32);
        if (!v9)
        {
          operator new();
        }

        *(v9 + 28) |= 1u;
        *(v9 + 8) = 1;
        if (!sub_1000183C8(4u))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
        }

        v10 = *(v9 + 28);
        *(v9 + 12) = 4;
        *(v9 + 28) = v10 | 6;
        v11 = *(v9 + 16);
        if (!v11)
        {
          operator new();
        }

        *(v11 + 76) |= 0x40u;
        v12 = *(v11 + 64);
        if (!v12)
        {
          operator new();
        }

        *(v12 + 76) |= 0x10u;
        v13 = *(v12 + 40);
        if (!v13)
        {
          operator new();
        }

        *(v13 + 28) |= 1u;
        v14 = *(v13 + 8);
        if (!v14)
        {
          operator new();
        }

        sub_10027E930(a3, v14);
        *(v12 + 76) |= 0x10u;
        v15 = *(v12 + 40);
        if (!v15)
        {
          operator new();
        }

        *(v15 + 28) |= 2u;
        v16 = *(v15 + 16);
        if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        sub_100006044(v16, a2);
        v17 = sub_10000BFC0(v3);
        if (*(v3 + 8) == 1)
        {
          v18 = v17;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v19 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v20 = a3[2];
            *buf = 67109634;
            v36 = v18;
            v37 = 2048;
            v38 = v20;
            v39 = 2080;
            v40 = a2;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#locctl,#rec,success:%d,log_cfat:%.3f,log:%s", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(buf);
            v21 = a3[2];
            v29 = 67109634;
            v30 = v18;
            v31 = 2048;
            v32 = v21;
            v33 = 2080;
            v34 = a2;
            v22 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLogLine(const char *, const CLUtils::Timestamp &)", "%s\n", v22);
            if (v22 != buf)
            {
              free(v22);
            }
          }
        }

        return sub_10000CE1C(v26);
      }
    }
  }

  return result;
}

void sub_1005D5C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5CFC(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    sub_10000AED0(v26);
    v4 = sub_10000B1F8();
    sub_10000AED4(v4, v25);
    v24 = 1;
    *buf = 28;
    v23[0] = 28;
    v23[1] = sub_10000AD98(buf);
    *buf = 1;
    v22[0] = 1;
    v22[1] = sub_10000AD98(buf);
    sub_10000AFE4(v26, &v24, v23, v22, v25);
    v28 |= 2u;
    v5 = v27;
    if (!v27)
    {
      operator new();
    }

    *(v27 + 492) |= 0x800u;
    v6 = *(v5 + 352);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 200) |= 0x10u;
    v7 = *(v6 + 32);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 28) |= 1u;
    *(v7 + 8) = -1;
    if (!sub_1000183C8(4u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v8 = *(v7 + 28);
    *(v7 + 12) = 4;
    *(v7 + 28) = v8 | 6;
    v9 = *(v7 + 16);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 76) |= 0x40u;
    v10 = *(v9 + 64);
    if (!v10)
    {
      operator new();
    }

    if (a2 && [a2 count])
    {
      for (i = 0; [a2 count] > i; ++i)
      {
        *(v10 + 76) |= 0x80u;
        v12 = *(v10 + 64);
        if (!v12)
        {
          operator new();
        }

        v13 = v12[5];
        v14 = v12[4];
        if (v14 >= v13)
        {
          if (v13 == v12[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 2), v13 + 1);
            v13 = v12[5];
          }

          v12[5] = v13 + 1;
          sub_10030D93C();
        }

        v15 = *(v12 + 1);
        v12[4] = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [a2 objectAtIndexedSubscript:i];
        if (v17)
        {
          [v17 clientLocation];
        }

        else
        {
          v42 = 0u;
          memset(v43, 0, 28);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          memset(&v36[94], 0, 32);
        }

        v34 = v41;
        v35 = v42;
        v36[0] = v43[0];
        *(v36 + 12) = *(v43 + 12);
        v30 = v37;
        v31 = v38;
        v32 = v39;
        v33 = v40;
        *buf = v36[94];
        *&buf[16] = v36[95];
        sub_1001F34E4(buf, v16);
      }
    }

    else
    {
      LODWORD(i) = 0;
    }

    v18 = sub_10000BFC0(v3);
    if (*(v3 + 8) == 1)
    {
      v19 = v18;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240705;
        *&buf[4] = v19;
        *&buf[8] = 2050;
        *&buf[10] = v25[0].n128_u64[0];
        *&buf[18] = 1025;
        *&buf[20] = i;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRoutineMonitorOutput,success,%{public}d,mct,%{public}.3f,num_locations,%{private}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        LODWORD(v36[94]) = 67240705;
        DWORD1(v36[94]) = v19;
        WORD4(v36[94]) = 2050;
        *(&v36[94] + 10) = v25[0].n128_u64[0];
        WORD1(v36[95]) = 1025;
        DWORD1(v36[95]) = i;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRoutineMonitorOutput(NSArray<CLLocation *> *)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    return sub_10000CE1C(v26);
  }

  return result;
}

void sub_1005D61F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D62D8(void *a1)
{
  if (a1 < 6)
  {
    return dword_101C80840[a1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferSnapshotReasonToProtobuf,unhandled type,%d", v4, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB92C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D63C8(uint64_t result, int a2, char a3)
{
  *result = 0;
  *(result + 8) = a3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0xBFF0000000000000;
  if (a2)
  {
    operator new();
  }

  return result;
}

uint64_t **sub_1005D64CC(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[2];
    v1[2] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      sub_1004949C8(v1, v3);
    }

    operator delete();
  }

  return result;
}

void *sub_1005D65EC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005D6644(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005D6644(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005D66CC(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_1005D66CC(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005D6764(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1005D6764(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

_BYTE *sub_1005D69D4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_101322EE0(v3, va);
}

void sub_1005D69F0(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a2[2];
  if (v7 <= 0.5)
  {
    v9 = *(a1 + 16);
    if (v9 >= 1)
    {
      v12 = a4 + 1.27999997;
      v10 = *a1;
      if (v12 - *a1 / v9 > 0.200000003)
      {
        v11 = 0;
        v8 = 0.0;
        v7 = 0.0;
        goto LABEL_8;
      }
    }

    v16 = 0;
    *(a1 + 12) = *(a1 + 12) + ((fmaxf(*a2, 0.0) / 2.23693629) * 0.08);
LABEL_19:
    *a3 = 0;
    goto LABEL_28;
  }

  v8 = ((a2[3] + 64.0) / 50.0) + a4;
  v9 = *(a1 + 16);
  if (v9 <= 0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018DBA18();
    }

    v17 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Previous cluster did not have a step or was just finalized as a step cluster so starting a new cluster with this output.", &v25, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DBA2C();
    }

    v16 = 0;
    v18 = *(a2 + 2);
    v19 = fmaxf(*a2, 0.0);
    *(a1 + 16) = 1;
    v20 = *(a1 + 12);
    *a1 = v8;
    *(a1 + 8) = v18;
    *(a1 + 12) = v20 + ((v19 / 2.23693629) * 0.08);
    goto LABEL_19;
  }

  v10 = *a1;
  if (v8 - *a1 / v9 <= 0.200000003)
  {
    v16 = 0;
    v21 = *(a1 + 12);
    v22 = v7 + *(a1 + 8);
    v23 = fmaxf(*a2, 0.0) / 2.23693629;
    *a1 = v8 + v10;
    *(a1 + 8) = v22;
    *(a1 + 12) = v21 + (v23 * 0.08);
    *(a1 + 16) = v9 + 1;
    goto LABEL_19;
  }

  v11 = 1;
LABEL_8:
  v13 = (fmaxf(*a2, 0.0) / 2.23693629) * 0.08;
  v14 = v10 / v9;
  v15 = *(a1 + 12);
  if (*(a1 + 8) >= 0.5)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018DBA18();
    }

    v24 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      v25 = 134217984;
      v26 = v14;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "Detected a PedNet Step and Finalized a cluster: timestamp: %f", &v25, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DBB30(v14);
    }

    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 12) = v13;
    *(a1 + 16) = v11;
    *a3 = v14;
    *(a3 + 8) = v15;
  }

  else
  {
    *a1 = v8;
    *(a1 + 16) = v11;
    *(a1 + 8) = v7;
    *(a1 + 12) = v13 + v15;
    *a3 = v14;
    *(a3 + 8) = 0;
  }

  v16 = 1;
  *(a3 + 12) = 1;
LABEL_28:
  *(a3 + 16) = v16;
  *(a3 + 24) = v16;
}

void sub_1005D7038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_1005D7548(&a12);
  *(v12 - 40) = &a9;
  sub_1005D7594((v12 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7064(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1005D76A8(a1, a2);
  }

  else
  {
    sub_1005D7638(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

char *sub_1005D74D4(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 24) = *a3;
  *(__dst + 5) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return __dst;
}

uint64_t sub_1005D7548(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_1005D7594(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005D7594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005D75E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005D75E8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__n128 sub_1005D7638(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100007244(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t sub_1005D76A8(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1005D7804(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100007244(v7, *a2, *(a2 + 1));
    v9 = v18;
    v10 = v19;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  *(v7 + 24) = *(a2 + 24);
  *&v19 = v10 + 40;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  sub_1005D785C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1005D7998(&v17);
  return v16;
}

void sub_1005D77F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005D7998(va);
  _Unwind_Resume(a1);
}

void sub_1005D7804(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005D785C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return sub_1005D7918(v9);
}

uint64_t sub_1005D7918(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005D7950(a1);
  }

  return a1;
}

void sub_1005D7950(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_1005D7998(uint64_t a1)
{
  sub_1005D79D0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005D79D0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1005D7A5C(uint64_t a1)
{
  sub_1005D7A98(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1005D7A98(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1005D7ADC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1005D7ADC(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1005D7594(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1005D7B24(uint64_t a1, uint64_t *a2)
{
  sub_1005D7BC8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1005D7BC8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1005D7A98(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **sub_1005D7C24(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_100019DF4(a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

const void **sub_1005D7D20(void *a1, const void **a2)
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
    operator new();
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

void sub_1005D7FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1005D7FBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7FBC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005D7ADC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1005D8008()
{
  if (qword_1025D4340 != -1)
  {
    sub_1018DBF90();
  }

  v0 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "configureAOP", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DBFA4();
  }

  v33 = xmmword_101C80878;
  v34 = unk_101C80888;
  v35 = 65546;
  sub_10004FD18(v32);
  v1 = sub_1000206B4();
  if (sub_100185ADC(v1, "Kappa", v32))
  {
    v2 = sub_10007005C(v32);
    v3 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "triggerHorizontalDecelThreshold")}];
    v4 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "triggerImpactThreshold")}];
    v5 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "skiLiftWindowSec")}];
    if (v3)
    {
      [v3 floatValue];
      DWORD1(v33) = v6;
    }

    if (v4)
    {
      [v4 floatValue];
      DWORD2(v33) = v7;
    }

    if (v5)
    {
      WORD6(v33) = [v5 unsignedShortValue];
    }

    v8 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "kill")}];
    if (v8 && [v8 BOOLValue])
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v9 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "kill config", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DC0B8(buf);
        LOWORD(v36) = 0;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void SafetyUtils::configureAOP()", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v10 = 0;
      LOBYTE(v33) = 0;
    }

    else
    {
      v10 = 1;
    }

    v12 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyImpactThreshold")}];
    v13 = [v2 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyRotationThreshold")}];
    if (v12)
    {
      [v12 floatValue];
      LODWORD(v34) = v14;
    }

    if (v13)
    {
      [v13 floatValue];
      DWORD1(v34) = v15;
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v11 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "using default config", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC0B8(buf);
      LOWORD(v36) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void SafetyUtils::configureAOP()", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v10 = 1;
  }

  v16 = sub_1005D8750("CLIgneousMotionTriggerProbability", 1.0);
  *(&v34 + 2) = v16;
  v17 = sub_1005D8750("CLIgneousMotionTriggerRotationThreshold", 0.09);
  *(&v34 + 3) = v17;
  v18 = sub_1005D87A8("CLIgneousMotionTriggerTokensOnCharger", 10);
  v19 = sub_1005D87A8("CLIgneousMotionTriggerTokensOffCharger", 1);
  v20 = sub_1005D87A8("CLIgneousMotionTriggerCountOnCharger", 0);
  v21 = sub_1005D87A8("CLIgneousMotionTriggerCountOffCharger", 0);
  if (v16 < 0.0 || v16 > 1.0)
  {
    DWORD2(v34) = 0;
    v16 = 0.0;
  }

  if (v17 < 0.0)
  {
    HIDWORD(v34) = 0;
    v17 = 0.0;
  }

  v22 = v18 & ~(v18 >> 31);
  LOWORD(v35) = v18 & ~(v18 >> 31);
  v23 = v19 & ~(v19 >> 31);
  WORD1(v35) = v19 & ~(v19 >> 31);
  v24 = v20 & ~(v20 >> 31);
  WORD2(v35) = v20 & ~(v20 >> 31);
  v25 = v21 & ~(v21 >> 31);
  HIWORD(v35) = v21 & ~(v21 >> 31);
  if (qword_1025D4550 != -1)
  {
    sub_1018DC0FC();
  }

  v26 = qword_1025D4558;
  if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    v49 = v16;
    v50 = 2048;
    v51 = v17;
    v52 = 1024;
    v53 = v22;
    v54 = 1024;
    v55 = v23;
    v56 = 1024;
    v57 = v24;
    v58 = 1024;
    v59 = v25;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "Sending motion trigger parameters to AOP, %.3f, %.3f, %u, %u, %u, %u", buf, 0x2Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DC124(buf);
    v36 = 134219264;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    v40 = 1024;
    v41 = v22;
    v42 = 1024;
    v43 = v23;
    v44 = 1024;
    v45 = v24;
    v46 = 1024;
    v47 = v25;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void SafetyUtils::configureAOP()", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if (objc_opt_class())
  {
    if (+[SOSUtilities isKappaVisible])
    {
      v27 = v10;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  LOBYTE(v33) = v27;
  sub_10012888C(0, &v33, 0x28uLL);
  return sub_100005DA4(v32);
}

void sub_1005D86FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

double sub_1005D8750(const char *a1, double a2)
{
  v7 = a2;
  v3 = sub_1000206B4();
  sub_1000B9370(v3, a1, &v7);
  sub_10183A3AC(v5, a1, &v7, 0);
  return v6;
}

uint64_t sub_1005D87A8(const char *a1, int a2)
{
  v7 = a2;
  v3 = sub_1000206B4();
  sub_10005BBE4(v3, a1, &v7);
  sub_1004861C8(v5, a1, &v7, 0);
  return v6;
}

id sub_1005D8800(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKey:a2];
  if (!v3)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Config missing top level key %@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC258();
    }

    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v5 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "data format error for top level key %@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC168();
    }

    return 0;
  }

  return v4;
}

void sub_1005D8BA8(void *a1, const char *a2, uint64_t a3, float a4)
{
  *v7 = sub_1005D9F80(a1, a2, a4);
  if (!sub_100116D68(a3, a2, v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315138;
      *&v7[4] = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC348();
    }
  }
}

void sub_1005D8CA0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA1CC(a1, a2, a3);
  if (!sub_100043360(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC438();
    }
  }
}

void sub_1005D8D94(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA414(a1, a2, a3);
  if (!sub_1004FCC04(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC528();
    }
  }
}

void sub_1005D8E88(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA65C(a1, a2, a3);
  if (!sub_10004345C(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC618();
    }
  }
}

void sub_1005D8F7C(void *a1, const char *a2, uint64_t a3, float a4, float a5, float a6)
{
  v11 = sub_1005D9F80(a1, a2, a4);
  if (a6 < v11 || a5 > v11)
  {
    v11 = a4;
  }

  *v14 = v11;
  if (!sub_100116D68(a3, a2, v14))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v13 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315138;
      *&v14[4] = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", v14, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC708();
    }
  }
}

uint64_t sub_1005D909C(uint64_t *a1)
{
  v2 = sub_1000206B4();
  sub_1004FD480(v2, "Kappa", *a1);
  v3 = *(*sub_1000206B4() + 944);

  return v3();
}

BOOL sub_1005D9118(void *a1)
{
  v2 = sub_1005D8800(a1, @"locationd");
  sub_1005D9228(v2, "CLIgneousMaxArmMinutes", 0x5A0uLL, 1440);
  sub_1005D9288(v2, "CLIgneousMaxScheduledArmSec", 3000.0, 0.0, 86400.0);
  sub_1005D9288(v2, "CLIgneousAlertTriggerProbability", 1.0, 0.0, 1.0);
  v3 = sub_1005D8800(a1, @"untrusted aop");
  sub_1005D9288(v3, "CLIgneousMotionTriggerProbability", 1.0, 0.0, 1.0);
  sub_1005D9288(v3, "CLIgneousMotionTriggerRotationThreshold", 0.09, 0.0, 3.14159265);
  sub_1005D9228(v3, "CLIgneousMotionTriggerTokensOnCharger", 0xAuLL, 10);

  return sub_1005D9228(v3, "CLIgneousMotionTriggerTokensOffCharger", 1uLL, 10);
}

BOOL sub_1005D9228(void *a1, const char *a2, unint64_t a3, int a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = sub_1005DA65C(a1, a2, a3);
  if (v8 > a4 || v8 < v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  v13 = v10;
  v11 = sub_1000206B4();
  return sub_10004345C(v11, a2, &v13);
}

BOOL sub_1005D9288(void *a1, const char *a2, double a3, double a4, double a5)
{
  v9 = sub_1005DA8A4(a1, a2, a3);
  if (a5 < v9 || a4 > v9)
  {
    v9 = a3;
  }

  v13 = v9;
  v11 = sub_1000206B4();
  return sub_100116D68(v11, a2, &v13);
}

id sub_1005D92F0(void *a1, uint64_t a2)
{
  v3 = [a1 assetNamed:a2];
  if (!v3)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v7 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "nil asset for %@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC8E8();
    }

    return 0;
  }

  v4 = v3;
  if (![v3 location])
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "nil asset location for %@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC7F8();
    }

    return 0;
  }

  v5 = [v4 location];

  return [v5 URLByAppendingPathComponent:@"untrusted.json"];
}

_TtC10CLAONSense28CLAONSenseKappaConfigService *sub_1005D94A8(void *a1)
{
  v5 = 0;
  v1 = [[_TtC10CLAONSense28CLAONSenseKappaConfigService alloc] initWithQueue:*a1 error:&v5 objCCallback:&stru_102462B50];
  if (v5)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v2 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error initializing CLAONSenseKappaConfigService. , Error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }
    }

    v3 = qword_1025D4348;
    if (os_signpost_enabled(qword_1025D4348))
    {
      *buf = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error initializing CLAONSenseKappaConfigService. ", "{msg%{public}.0s:Error initializing CLAONSenseKappaConfigService. , Error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  sub_1005D8008();
  return v1;
}

void sub_1005D9650(id a1, NSDictionary *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (qword_1025D4340 != -1)
  {
    sub_1018DBF90();
  }

  v4 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Entered SMA objc cb", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DC9D8();
  }

  v5 = [+[UAFAssetSetManager sharedManager](UAFAssetSetManager "sharedManager")];
  v6 = v5;
  if (v5)
  {
    v7 = sub_1005D92F0(v5, @"com.apple.aonsense.safety.generic");
    if (v7)
    {
      v8 = sub_1005D92F0(v6, @"com.apple.aonsense.safety.country");
      v13 = @"UAFUsages";
      v14 = a2;
      if (sub_1005D99AC(v7, v8, [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]))
      {
        sub_1005D8988();
      }

      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Error reading and combining configs", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DCAFC();
      }
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "nil baseUrl", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DCBE8();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Error retrieving asset set", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DCCD4();
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1005D998C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018DCAC4(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005D99AC(void *a1, void *a2, void *a3)
{
  v5 = sub_1005D9B9C(a1);
  if (v5)
  {
    if (a2)
    {
      v6 = sub_1005D9B9C(a2);
      if (v6)
      {
        v7 = v6;
        if (qword_1025D4340 != -1)
        {
          sub_1018DBF90();
        }

        v8 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Found config for country. Overlaying asset.", &v12, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018DCDC0();
        }

        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = sub_1005D9E10;
        v15 = &unk_10245EB08;
        v16 = v5;
        [v7 enumerateKeysAndObjectsUsingBlock:&v12];
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"anomalydetectiond"];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1005D9E10;
    v15 = &unk_10245EB08;
    v16 = v9;
    [a3 enumerateKeysAndObjectsUsingBlock:&v12];
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "No base asset", &v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DCEA4();
    }
  }

  return v5;
}

id sub_1005D9B9C(void *a1)
{
  v13 = 0;
  v2 = [NSData dataWithContentsOfURL:a1 options:0 error:&v13];
  if (qword_1025D4340 != -1)
  {
    sub_1018DC090();
  }

  v3 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    v4 = [a1 path];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "fileUrl %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DCF88(a1);
  }

  if (v13)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v5 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v6 = [a1 path];
      v7 = [v13 localizedDescription];
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "%@: json read failed with error %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DD0A8(a1, &v13);
    }
  }

  else
  {
    v12 = 0;
    result = [NSJSONSerialization JSONObjectWithData:v2 options:1 error:&v12];
    if (!v12)
    {
      return result;
    }

    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v10 = [a1 path];
      v11 = [v12 localizedDescription];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "%@: json parse failed with error %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DD1CC(a1, &v12);
    }
  }

  return 0;
}

id sub_1005D9E10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D9E10;
    v10[3] = &unk_10245EB08;
    v10[4] = v7;
    return [a3 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 setObject:a3 forKeyedSubscript:a2];
  }
}

float sub_1005D9F80(void *a1, uint64_t a2, float a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD2F0();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      return v9;
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v13, 0xCu);
      }

      a3 = 0.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD3E0();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD4D0();
    }
  }

  return a3;
}

id sub_1005DA1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD5C0();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 BOOLValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD6B0();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD7A0();
    }
  }

  return a3;
}

id sub_1005DA414(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD890();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 unsignedShortValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD980();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDA70();
    }
  }

  return a3;
}

id sub_1005DA65C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDB60();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 intValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DDC50();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDD40();
    }
  }

  return a3;
}

double sub_1005DA8A4(void *a1, uint64_t a2, double a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDE30();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      return v9;
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v13, 0xCu);
      }

      a3 = 0.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DDF20();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE010();
    }
  }

  return a3;
}

uint64_t sub_1005DAAF0(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2112;
  *(v3 + 14) = result;
  return result;
}

void sub_1005DAB14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_102462BC0;
  sub_100536F74(a1 + 8, "CLFileUpdate", 1, 1);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0;
  v8 = [objc_msgSend(a2 "silo")];
  *(a1 + 128) = 0u;
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 72) = _Q1;
  *(a1 + 88) = _Q1;
  *(a1 + 104) = _Q1;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  [*(a1 + 24) silo];
  [*(a1 + 24) silo];
  operator new();
}

void sub_1005DAF4C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 232);
  *(v1 + 232) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 224);
  *(v1 + 224) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  v7 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_10053700C(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1005DB07C(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onDownloaded, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1005DC1D4(a3, v5, a2);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DB240(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*(v1 + 8) + 16))(v1 + 8);
  sub_10001A3E8();
  if (sub_10001CF3C() && *(v1 + 240) == 1 && (*(v1 + 241) & 1) != 0 || [objc_msgSend(objc_msgSend(*(v1 + 24) "vendor")])
  {
    v2 = (v1 + 152);
    v3 = (v1 + 152);
    if (*(v1 + 175) < 0)
    {
      v3 = *v2;
    }

    v4 = (v1 + 200);
    v5 = v1 + 200;
    if (*(v1 + 223) < 0)
    {
      v5 = *v4;
    }

    if ((*(**(v1 + 48) + 16))(*(v1 + 48), v3, v5, v1 + 72))
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v6 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (v1 + 152);
        if (*(v1 + 175) < 0)
        {
          v7 = *v2;
        }

        v8 = v1 + 200;
        if (*(v1 + 223) < 0)
        {
          v8 = *v4;
        }

        *buf = 136446466;
        v21 = v7;
        v22 = 2082;
        v23 = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLFU,downloading from %{public}s to %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      *(v1 + 120) = 1;
      v9 = 0;
      *(v1 + 104) = CFAbsoluteTimeGetCurrent();
      v10 = 1;
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v11 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (v1 + 152);
        if (*(v1 + 175) < 0)
        {
          v12 = *v2;
        }

        v13 = v1 + 200;
        if (*(v1 + 223) < 0)
        {
          v13 = *v4;
        }

        *buf = 136446466;
        v21 = v12;
        v22 = 2082;
        v23 = v13;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU,could not download from %{public}s to %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v9 = 0;
      v10 = 3;
    }
  }

  else
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v14 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (v1 + 152);
      if (*(v1 + 175) < 0)
      {
        v15 = *v15;
      }

      *buf = 136380675;
      v21 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "CLFU,data reachability is not available - not downloading %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v10 = 0;
    v9 = 1;
  }

  result = (*(*(v1 + 8) + 24))(v1 + 8);
  if ((v9 & 1) == 0)
  {
    return (*(v1 + 32))(v1, v10, *(v1 + 40));
  }

  return result;
}

void sub_1005DB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1005DB84C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005DC108(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005DBA18(uint64_t a1, int *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005DBD4C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DBBE8(uint64_t a1)
{
  *a1 = off_102462BC0;
  sub_1005DD8B0(a1);

  v2 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10053700C(a1 + 8);
  return a1;
}

void sub_1005DBD14(uint64_t a1)
{
  sub_1005DBBE8(a1);

  operator delete();
}

uint64_t sub_1005DBD4C(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v7 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v8 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    *buf = 67109120;
    v17 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLFU,onCompanionNotification, notification, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DE164(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (*a3 == 5)
  {
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      *(a1 + 241) = *a4;
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v10 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 241);
        v12 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v12 = *v12;
        }

        *buf = 67240450;
        v17 = v11;
        v18 = 2082;
        v19 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLFU,fCompanionIsNearby,%{public}d,fDownloadDst,%{public}s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      if (*(a1 + 241) == 1)
      {
        sub_100254FFC(a1);
      }
    }
  }

  return (*(*v7 + 24))(v7);
}

void sub_1005DC0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DC108(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (*a3 == 6 && *(a4 + 4) != 0)
  {
    sub_100254FFC(a1);
  }

  return (*(*v7 + 24))(v7);
}

void sub_1005DC1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DC1D4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  *&v62[1] = a1 + 8;
  (*(v5 + 16))(a1 + 8);
  v63 = 256;
  v6[112] = 0;
  if (a3)
  {
    v8 = (a1 + 200);
    v9 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v9 = *v8;
    }

    v10 = (a1 + 176);
    v11 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v11 = *v10;
    }

    rename(v9, v11, v7);
    if (v12)
    {
      v13 = *__error();
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v14 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
      {
        v15 = (a1 + 200);
        if (*(a1 + 223) < 0)
        {
          v15 = *v8;
        }

        v16 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v16 = *v10;
        }

        *buf = 136446722;
        *v67 = v15;
        *&v67[8] = 2082;
        *&v67[10] = v16;
        *&v67[18] = 1026;
        *&v67[20] = v13;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLFU,could not rename %{public}s to %{public}s,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        if (*(a1 + 223) < 0)
        {
          v8 = *v8;
        }

        if (*(a1 + 199) < 0)
        {
          v10 = *v10;
        }

        v64 = 136446722;
        *v65 = v8;
        *&v65[8] = 2082;
        *&v65[10] = v10;
        *&v65[18] = 1026;
        *&v65[20] = v13;
        v48 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v48);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      v17 = 3;
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v32 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v33 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v33 = *v10;
        }

        *buf = 136446210;
        *v67 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "CLFU,download completed to %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v52 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v52 = *v10;
        }

        v64 = 136446210;
        *v65 = v52;
        v53 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      v62[0] = 0.0;
      if (sub_100256384(a1, v62))
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v34 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
        {
          v35 = (a1 + 200);
          if (*(a1 + 223) < 0)
          {
            v35 = *v8;
          }

          v36 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v36 = *v10;
          }

          *buf = 136446722;
          *v67 = v35;
          *&v67[8] = 2082;
          *&v67[10] = v36;
          *&v67[18] = 2050;
          *&v67[20] = v62[0];
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLFU,newly downloaded %{public}s file is now %{public}s (time %{public}.3f)", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          if (*(a1 + 223) < 0)
          {
            v8 = *v8;
          }

          if (*(a1 + 199) < 0)
          {
            v10 = *v10;
          }

          v64 = 136446722;
          *v65 = v8;
          *&v65[8] = 2082;
          *&v65[10] = v10;
          *&v65[18] = 2050;
          *&v65[20] = v62[0];
          v56 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }

        v37 = sub_1000206B4();
        v38 = (a1 + 128);
        if (*(a1 + 151) < 0)
        {
          v38 = *v38;
        }

        sub_100116D68(v37, v38, v62);
        v39 = sub_1000206B4();
        (*(*v39 + 944))(v39);
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v42 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v43 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v43 = *v10;
          }

          *buf = 136446210;
          *v67 = v43;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU, could not get modified time for %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          if (*(a1 + 199) < 0)
          {
            v10 = *v10;
          }

          v64 = 136446210;
          *v65 = v10;
          v57 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v57);
          if (v57 != buf)
          {
            free(v57);
          }
        }
      }

      *(a1 + 96) = 0xBFF0000000000000;
      v17 = 2;
    }

    *(a1 + 112) = 0xBFF0000000000000;
    *(a1 + 64) = 0;
    sub_100254FFC(a1);
  }

  else
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v18 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v19 = *v19;
      }

      v20 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v20 = *v20;
      }

      *buf = 136380931;
      *v67 = v19;
      *&v67[8] = 2082;
      *&v67[10] = v20;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU, could not download from %{private}s to %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v45 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v45 = *v45;
      }

      v46 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v46 = *v46;
      }

      v64 = 136380931;
      *v65 = v45;
      *&v65[8] = 2082;
      *&v65[10] = v46;
      v47 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v21 = [objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")];
    if (v21)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v23 = sub_1004E9660(*(a1 + 64), 10, 4);
      if (v21 == 2)
      {
        v24 = *(a1 + 88);
        if (v24 > 0.0 && v23 > v24)
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v25 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 64);
            v27 = *(a1 + 88);
            v28 = (a1 + 152);
            if (*(a1 + 175) < 0)
            {
              v28 = *v28;
            }

            *buf = 134349827;
            *v67 = v23;
            *&v67[8] = 1026;
            *&v67[10] = v26;
            *&v67[14] = 2050;
            *&v67[16] = v27;
            *&v67[24] = 2081;
            *&v67[26] = v28;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "CLFU,delay %{public}.3f for retry count %{public}d exceeds current update period of %{public}.3f, setting delay to half the current update period for %{private}s", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v58 = *(a1 + 64);
            v59 = *(a1 + 88);
            v60 = (a1 + 152);
            if (*(a1 + 175) < 0)
            {
              v60 = *v60;
            }

            v64 = 134349827;
            *v65 = v23;
            *&v65[8] = 1026;
            *&v65[10] = v58;
            *&v65[14] = 2050;
            *&v65[16] = v59;
            *&v65[24] = 2081;
            *&v65[26] = v60;
            v61 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v61);
            if (v61 != buf)
            {
              free(v61);
            }
          }

          v23 = *(a1 + 88) * 0.5;
        }
      }

      *(a1 + 112) = Current + v23;
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v29 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 64);
        v31 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v31 = *v31;
        }

        *buf = 67240707;
        *v67 = v30;
        *&v67[4] = 2081;
        *&v67[6] = v31;
        *&v67[14] = 2050;
        *&v67[16] = v23;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "CLFU,retry count %{public}d, will re-download for %{private}s after delay of %{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v49 = *(a1 + 64);
        v50 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v50 = *v50;
        }

        v64 = 67240707;
        *v65 = v49;
        *&v65[4] = 2081;
        *&v65[6] = v50;
        *&v65[14] = 2050;
        *&v65[16] = v23;
        v51 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }

      ++*(a1 + 64);
      [*(a1 + 56) setNextFireTime:*(a1 + 112)];
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v40 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v41 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v41 = *v41;
        }

        *buf = 136380675;
        *v67 = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "CLFU,data reachability is not available - not retrying %{private}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v54 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v54 = *v54;
        }

        v64 = 136380675;
        *v65 = v54;
        v55 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }
    }

    v17 = 3;
  }

  (*(*v6 + 24))(v6);
  return (*(a1 + 32))(a1, v17, *(a1 + 40));
}

void sub_1005DCF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DCFEC(uint64_t a1, char *a2, char *a3, double *a4)
{
  v8 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (v8[112] == 1)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v9 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v10 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v10 = *v10;
      }

      *buf = 136380675;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#Warning,CLFU,%{private}s downloading in progress, cannot change update settings", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v11);
LABEL_55:
    if (v11 != buf)
    {
      free(v11);
    }

LABEL_45:
    v23 = 0;
    goto LABEL_46;
  }

  sub_100006044((a1 + 152), a2);
  v12 = (a1 + 176);
  sub_100006044((a1 + 176), a3);
  v13 = *a4;
  if (*a4 <= 0.0)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v14 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
    {
      v15 = a1 + 152;
      if (*(a1 + 175) < 0)
      {
        v15 = *(a1 + 152);
      }

      *buf = 136380675;
      *&buf[4] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLFU,%{private}s download timeout must be greater than 0. Forcing to 30 seconds.", buf, 0xCu);
    }

    v16 = sub_10000A100(121, 0);
    v13 = 30.0;
    if (v16)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }

      v13 = 30.0;
    }
  }

  *(a1 + 72) = v13;
  std::operator+<char>();
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 128) = *buf;
  *(a1 + 144) = v29;
  if (*(a1 + 199) >= 0)
  {
    v17 = *(a1 + 199);
  }

  else
  {
    v17 = *(a1 + 184);
  }

  v18 = buf;
  sub_100070148(buf, v17 + 5);
  if (v29 < 0)
  {
    v18 = *buf;
  }

  if (v17)
  {
    if (*(a1 + 199) >= 0)
    {
      v19 = (a1 + 176);
    }

    else
    {
      v19 = *(a1 + 176);
    }

    memmove(v18, v19, v17);
  }

  strcpy(&v18[v17], ".temp");
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 200) = *buf;
  *(a1 + 216) = v29;
  v20 = (a1 + 176);
  if (*(a1 + 199) < 0)
  {
    v20 = *v12;
  }

  v21 = getuid();
  v22 = getgid();
  if (!sub_1004E667C(v20, v21, v22))
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v24 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      v25 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v25 = *v12;
      }

      *buf = 136446210;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "CLFU,could not create path %{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v11);
    goto LABEL_55;
  }

  v23 = 1;
LABEL_46:
  (*(*v8 + 24))(v8);
  return v23;
}

void sub_1005DD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD610(uint64_t a1, void *a2)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (sub_100255D4C(a1))
  {
    *(a1 + 96) = *a2;
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v6 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v6 = *v6;
      }

      v7 = *a2;
      *buf = 136446466;
      v13 = v6;
      v14 = 2050;
      v15 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLFU,file %{public}s,setting next update before deadline: %{public}.3fs (override)", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::updateBefore(const CFAbsoluteTime &)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v8 = *(a1 + 56);
    [v8 nextFireTime];
    if (*(a1 + 96) < v9)
    {
      v9 = *(a1 + 96);
    }

    [v8 setNextFireTime:v9];
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DD87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD8B0(uint64_t a1)
{
  v2 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  [*(v2[27] + 16) unregister:*(v2[27] + 8) forNotification:6];
  [*(*(a1 + 232) + 16) unregister:*(*(a1 + 232) + 8) forNotification:5];
  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v3 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v4 = *v4;
    }

    *buf = 136380675;
    v16 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLFU,unregistered for kNotificationCompanionConnectionUpdate for %{private}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::cancelUpdate()", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (*(a1 + 120) == 1)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v6 = *v6;
      }

      *buf = 136380675;
      v16 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,stopping download of %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::cancelUpdate()", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    (*(**(a1 + 48) + 24))(*(a1 + 48));
    *(a1 + 120) = 0;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0xBFF0000000000000;
  [*(a1 + 56) setNextFireDelay:1.79769313e308];
  return (*(*v2 + 24))(v2);
}

void sub_1005DDC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDCB8(uint64_t a1, unint64_t *a2)
{
  v4 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v5.n128_u64[0] = *a2;
  if (*a2 > v4[13])
  {
    *(a1 + 112) = v5.n128_u64[0];
  }

  return (*(*v4 + 24))(v4, v5);
}

uint64_t sub_1005DDD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(v4 + 167) < 0)
  {
    sub_100007244(a2, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    *a2 = *(v4 + 144);
    *(a2 + 16) = *(v4 + 160);
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DDE0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(v4 + 191) < 0)
  {
    sub_100007244(a2, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    *a2 = *(v4 + 168);
    *(a2 + 16) = *(v4 + 184);
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DDEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDEF8(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  [v3[6] nextFireTime];
  *a2 = v4;
  (*(*v3 + 3))(v3);
  return 1;
}

void sub_1005DDF94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1005DE15C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E5DC0(a1);
}

void sub_1005DE1BC(uint64_t a1, void *a2)
{
  v4 = [NSNumber numberWithInteger:a2[1]];
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"CLMiLoConnectionReturnCode"];
  v6 = a2[1];
  if (v6 <= 6)
  {
    if (v6 <= 3)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            goto LABEL_40;
          }

          v7 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
          v8 = off_1024B3330;
          goto LABEL_39;
        }

        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v19 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v20 = [objc_msgSend(*(a1 + 72) "UUIDString")];
          *buf = 68289282;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2082;
          v37 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MiLoConnectionSubscription, createServiceFailed, connectionToken:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
LABEL_40:
        sub_1005E02DC();
      }

      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3D8();
      }

      v16 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
      {
        v17 = [objc_msgSend(*(a1 + 72) "UUIDString")];
        *buf = 68289794;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2082;
        v37 = v17;
        v38 = 2082;
        v39 = [objc_msgSend(v9 "UUIDString")];
        v40 = 2050;
        v41 = a1;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MiLoConnectionSubscription, didCreateService, connectionToken:%{public, location:escape_only}s, serviceIdentifier:%{public, location:escape_only}s, self:%{public}p}", buf, 0x30u);
      }

LABEL_53:
      [v5 setObject:v9 forKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
      goto LABEL_40;
    }

    if (v6 == 4)
    {
      [v5 setObject:objc_msgSend([NSUUID alloc] forKeyedSubscript:{"initWithUUIDBytes:", a2 + 40), @"CLMiLoConnectionServiceIdentifier"}];
    }

    else if (v6 == 5)
    {
      v23 = objc_alloc_init(NSMutableArray);
      v24 = a2[43];
      if (a2[44] != v24)
      {
        v25 = a2[46];
        v26 = a2[47];
        v27 = (v24 + 8 * (v25 / 0x38));
        v28 = (*v27 + 72 * (v25 % 0x38));
        v29 = *(v24 + 8 * ((v26 + v25) / 0x38)) + 72 * ((v26 + v25) % 0x38);
        while (v28 != v29)
        {
          v30 = sub_1005DFD58(v28);
          [v23 addObject:v30];

          v28 += 9;
          if ((v28 - *v27) == 4032)
          {
            v31 = v27[1];
            ++v27;
            v28 = v31;
          }
        }
      }

      [v5 setObject:v23 forKeyedSubscript:@"CLMiLoConnectionServiceDescriptors"];

      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v6 <= 9)
  {
    if (v6 == 7)
    {
      v18 = sub_1005DFE6C((a2 + 2));
      [v5 setObject:v18 forKeyedSubscript:@"CLMiLoConnectionServiceStatus"];

      goto LABEL_40;
    }

    if (v6 == 8)
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if ([v9 isEqual:*(a1 + 80)])
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v21 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
          *buf = 68289538;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2082;
          v37 = v22;
          v38 = 2082;
          v39 = [objc_msgSend(v9 "UUIDString")];
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, clear fConnectedServiceIdentifier, class:%{public, location:escape_only}s, ServiceId:%{public, location:escape_only}s}", buf, 0x26u);
        }

        *(a1 + 80) = 0;
      }
    }

    else
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if (!*(a1 + 80))
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v10 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
          *buf = 68289538;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2082;
          v37 = v11;
          v38 = 2082;
          v39 = [objc_msgSend(v9 "UUIDString")];
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, restore fConnectedServiceIdentifier, class:%{public, location:escape_only}s, ServiceId:%{public, location:escape_only}s}", buf, 0x26u);
        }

        *(a1 + 80) = [v9 copy];
      }
    }

    goto LABEL_53;
  }

  if (v6 == 10)
  {
    [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
    v7 = [[NSUUID alloc] initWithUUIDBytes:a2 + 48];
    v8 = off_1024B3350;
    goto LABEL_39;
  }

  if (v6 == 12)
  {
LABEL_37:
    v7 = [NSNumber numberWithInteger:a2[39]];
    v8 = off_1024B3328;
LABEL_39:
    [v5 setObject:v7 forKeyedSubscript:*v8];
    goto LABEL_40;
  }

  if (v6 != 13)
  {
    goto LABEL_40;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v12 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    v13 = a2[1];
    *buf = 68289282;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 1026;
    LODWORD(v37) = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onMiLoServiceEvent, unexpected event type, miloServiceEventType data:%{public}d}", buf, 0x18u);
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }
  }

  v14 = qword_1025D46D8;
  if (os_signpost_enabled(qword_1025D46D8))
  {
    v15 = a2[1];
    *buf = 68289282;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 1026;
    LODWORD(v37) = v15;
    _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onMiLoServiceEvent, unexpected event type", "{msg%{public}.0s:onMiLoServiceEvent, unexpected event type, miloServiceEventType data:%{public}d}", buf, 0x18u);
  }
}

id sub_1005DEAA8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E5FF4(a1);
}

void sub_1005DEB08(uint64_t a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v3 = sub_1005E0360(a2);
  [v4 setObject:v3 forKeyedSubscript:@"CLMiLoConnectionPredictionUpdate"];

  sub_1005E09A0();
}

id sub_1005DEC78(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E61F8(a1);
}

void sub_1005DECD8(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v7 = 68289282;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:onMiLoServiceDebugResponse, Event Type:%{public}d}", &v7, 0x18u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v7 = v5;
  v6 = sub_1005E0A24(a2);
  [v5 setObject:v6 forKeyedSubscript:@"CLMiLoConnectionDebugEventResponse"];

  sub_1005E0B60();
}

id sub_1005DEEFC(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005E63FC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1005E65D4(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1005DEF98(uint64_t a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v3 = [[CLMiLoConnectionStatus alloc] initWithConnectionState:*a2];
  [v4 setObject:v3 forKeyedSubscript:@"CLMiLoConnectionStatusEvent"];

  sub_1005E0BE4();
}

id sub_1005DF124(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E6860(a1);
}

void sub_1005DF184(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithInteger:*a2];
  v4 = +[NSMutableDictionary dictionary];
  v5 = objc_alloc_init(NSMutableArray);
  v6 = *(a2 + 56);
  if (*(a2 + 64) != v6)
  {
    v7 = *(a2 + 80);
    v8 = (v6 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = *(v6 + (((*(a2 + 88) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a2 + 88) + v7) & 0x1FF);
    while (v9 != v10)
    {
      v11 = [CLMiLoFingerprintError alloc];
      v12 = *v9++;
      v13 = [v11 initWithFingerprintErrorEnum:v12];
      [v5 addObject:v13];

      if ((v9 - *v8) == 4096)
      {
        v14 = v8[1];
        ++v8;
        v9 = v14;
      }
    }
  }

  v15 = [[CLMiLoFingerprintMetaInfo alloc] initWithNumWiFiAccessPoints:+[NSNumber numberWithUnsignedInt:](NSNumber numBLESources:"numberWithUnsignedInt:" numUWBSources:*(a2 + 32)) requestIdentifier:+[NSNumber numberWithUnsignedInt:](NSNumber errors:{"numberWithUnsignedInt:", *(a2 + 36)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a2 + 40)), objc_msgSend([NSUUID alloc], "initWithUUIDBytes:", a2 + 16), v5}];

  [v4 setObject:v3 forKeyedSubscript:@"CLMiLoConnectionReturnCode"];
  [v4 setObject:v15 forKeyedSubscript:@"CLMiLoConnectionRecordingMetaInfo"];

  sub_1005E02DC();
}

id sub_1005DF440(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E6A64(a1);
}

void sub_1005DF4A0(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v7 = 68289282;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:onMiLoGenericEventResponse, Event Type:%{public}d}", &v7, 0x18u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v7 = v5;
  v6 = sub_1005E0C68(a2);
  [v5 setObject:v6 forKeyedSubscript:@"CLMiLoConnectionGenericEventResponse"];

  sub_1005E0DE0();
}

void sub_1005DF5F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v5 = off_102462C58;
  *(v5 + 48) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 128) = 0;
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Initialize CLMiLoConnectionSubscription", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DE414(buf);
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMiLoConnectionSubscription::CLMiLoConnectionSubscription(Delegate *, id<CLIntersiloUniverse>, CLClientManagerAuthorizationContext *, CLClientKeyPath *)", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  sub_100E71364();
}

void sub_1005DF87C(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

void sub_1005DF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE458();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLMiLoConnectionSubscription::onMiLoServiceEventNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE46C();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMiLoConnectionSubscription::onMiLoServiceEventNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DFAA4(uint64_t a1)
{
  *a1 = off_102462C58;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 80))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(*a1 - 8) + 8);
      v5 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v12[0] = 68289538;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v4 & 0x7FFFFFFFFFFFFFFFLL;
      v17 = 2082;
      v18 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to a connected service in Dtor of, class:%{public, location:escape_only}s, serviceId:%{public, location:escape_only}s}", v12, 0x26u);
    }

    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 64);
    v8 = [NSString stringWithUTF8String:v6];
    v9 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v9 = *v9;
    }

    [v7 disconnectToServiceForClient:v8 withServiceIdentifier:*(a1 + 80) withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];

    *(a1 + 80) = 0;
  }

  [*(a1 + 64) unregisterForMiloServiceEventUpdatesForClient:*(a1 + 56) withToken:*(a1 + 72)];
  [*(a1 + 64) unregisterForMiloPredictionEventUpdates:*(a1 + 56)];

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  [*(a1 + 56) setValid:0];

  *(a1 + 56) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_100114E74(a1);
  return a1;
}

void sub_1005DFD10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1005DFD20(uint64_t a1)
{
  sub_1005DFAA4(a1);

  operator delete();
}

id sub_1005DFD58(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = a1[4];
  if (a1[5] != v3)
  {
    v4 = a1[7];
    v5 = (v3 + 8 * (v4 >> 9));
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v3 + (((a1[8] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[8] + v4) & 0x1FF);
    while (v6 != v7)
    {
      v8 = [CLMiLoLocationType alloc];
      v9 = *v6++;
      v10 = [v8 initWithLocationTypeEnum:v9];
      [v2 addObject:v10];

      if ((v6 - *v5) == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
      }
    }
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:a1];
  v13 = [[CLMiLoServiceDescriptor alloc] initWithServiceIdentifier:v12 serviceType:a1[2] locationTypes:v2];

  return v13;
}

id sub_1005DFE6C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 88);
  if (*(a1 + 96) != v3)
  {
    v4 = *(a1 + 112);
    v5 = (v3 + 8 * (v4 >> 9));
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v3 + (((*(a1 + 120) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 120) + v4) & 0x1FF);
    while (v6 != v7)
    {
      v8 = [CLMiLoLocationType alloc];
      v9 = *v6++;
      v10 = [v8 initWithLocationTypeEnum:v9];
      [v2 addObject:v10];

      if ((v6 - *v5) == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
      }
    }
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:a1 + 56];
  v13 = [[CLMiLoServiceDescriptor alloc] initWithServiceIdentifier:v12 serviceType:*(a1 + 72) locationTypes:v2];

  v14 = objc_alloc_init(NSMutableArray);
  v15 = *(a1 + 16);
  if (*(a1 + 24) != v15)
  {
    v16 = *(a1 + 40);
    v17 = (v15 + 8 * (v16 >> 9));
    v18 = (*v17 + 8 * (v16 & 0x1FF));
    v19 = *(v15 + (((*(a1 + 48) + v16) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 48) + v16) & 0x1FF);
    while (v18 != v19)
    {
      v20 = [CLMiLoServiceSuspendReason alloc];
      v21 = *v18++;
      v22 = [v20 initWithSuspendReasonEnum:v21];
      [v14 addObject:v22];

      if ((v18 - *v17) == 4096)
      {
        v23 = v17[1];
        ++v17;
        v18 = v23;
      }
    }
  }

  v24 = objc_alloc_init(NSMutableArray);
  v25 = *(a1 + 184);
  v26 = *(a1 + 192);
  while (v25 != v26)
  {
    v27 = [CLMiLoServiceQualityReason alloc];
    v28 = *v25++;
    v29 = [v27 initWithQualityReasonEnum:v28];
    [v24 addObject:v29];
  }

  v30 = [[CLMiLoServiceQualityInfo alloc] initWithQuality:*(a1 + 176) andReasons:v24];

  if (*(a1 + 144))
  {
    v31 = [NSUUID alloc];
    if ((*(a1 + 144) & 1) == 0)
    {
      goto LABEL_27;
    }

    v32 = [v31 initWithUUIDBytes:a1 + 128];
  }

  else
  {
    v32 = 0;
  }

  if (*(a1 + 160) == 1)
  {
    v33 = [CLMiLoLocationType alloc];
    if (*(a1 + 160))
    {
      v47 = [v33 initWithLocationTypeEnum:*(a1 + 152)];
      goto LABEL_21;
    }

LABEL_27:
    sub_100173BA0();
  }

  v47 = 0;
LABEL_21:
  v48 = v32;
  v49 = v30;
  v34 = [NSError alloc];
  v46 = [v34 initWithDomain:kCLErrorDomainPrivate code:*(a1 + 168) userInfo:0];
  v35 = objc_alloc_init(NSMutableArray);
  v36 = *(a1 + 216);
  if (*(a1 + 224) != v36)
  {
    v37 = *(a1 + 240);
    v38 = (v36 + 8 * (v37 >> 8));
    v39 = *v38 + 16 * v37;
    v40 = *(v36 + (((*(a1 + 248) + v37) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 248) + v37);
    while (v39 != v40)
    {
      v41 = [[NSUUID alloc] initWithUUIDBytes:v39];
      [v35 addObject:v41];

      v39 += 16;
      if (v39 - *v38 == 4096)
      {
        v42 = v38[1];
        ++v38;
        v39 = v42;
      }
    }
  }

  v43 = [[CLMiLoServiceMetaInfo alloc] initWithNumClustersLearnedInModel:+[NSNumber numberWithUnsignedInt:](NSNumber numRecordingTriggersAtCurrentLOI:"numberWithUnsignedInt:" numInputValidFingerprints:*(a1 + 256)) numInputValidFingerprintsLabeled:+[NSNumber numberWithUnsignedInt:](NSNumber numInputValidFingerprintsUnlabeled:"numberWithUnsignedInt:" numFingerprintsBeforePruning:*(a1 + 260)) numFingerprintsAfterPruning:+[NSNumber numberWithUnsignedInt:](NSNumber numWiFiAccessPoints:"numberWithUnsignedInt:" numBLESources:*(a1 + 264)) numUWBSources:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 272)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 268)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 276)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 280)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 284)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 288)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 292))}];
  v44 = [[CLMiLoServiceStatus alloc] initWithServiceState:*a1 suspendReasons:v14 serviceDescriptor:v13 currentLocationOfInterestUuid:v48 currentLocationOfInterestType:v47 error:v46 serviceQualityInfo:v49 places:v35 metaInfo:v43];

  return v44;
}

void sub_1005E0348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0360(void *a1)
{
  v54 = objc_alloc_init(NSMutableArray);
  v2 = a1[1];
  v51 = a1;
  if (a1[2] != v2)
  {
    v3 = a1[4];
    v4 = (v2 + 8 * (v3 / 0x49));
    v5 = (*v4 + 56 * (v3 % 0x49));
    v52 = *(v2 + 8 * ((a1[5] + v3) / 0x49)) + 56 * ((a1[5] + v3) % 0x49);
    while (v5 != v52)
    {
      v55 = v4;
      v6 = objc_alloc_init(NSMutableArray);
      v7 = v5[1];
      if (v5[2] != v7)
      {
        v8 = v5[4];
        v9 = (v7 + 8 * (v8 >> 7));
        v10 = *v9 + 32 * (v8 & 0x7F);
        v11 = *(v7 + (((v5[5] + v8) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v5[5] + v8) & 0x7F);
        while (v10 != v11)
        {
          v12 = [[NSUUID alloc] initWithUUIDBytes:v10];
          v13 = [[CLMiLoPlace alloc] initWithPlaceIdentifier:v12 score:+[NSNumber numberWithDouble:](NSNumber confidence:"numberWithDouble:" placeMetadata:{*(v10 + 16)), *(v10 + 24), 0}];

          [v6 addObject:v13];
          v10 += 32;
          if (v10 - *v9 == 4096)
          {
            v14 = v9[1];
            ++v9;
            v10 = v14;
          }
        }
      }

      v15 = [[CLMiLoServicePlacePrediction alloc] initWithPlaces:v6 serviceType:v5[6]];

      [v54 addObject:v15];
      v5 += 7;
      v4 = v55;
      if ((v5 - *v55) == 4088)
      {
        v4 = v55 + 1;
        v5 = v55[1];
      }
    }
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = a1[13];
  if (a1[14] != v17)
  {
    v18 = a1[16];
    v19 = (v17 + 8 * (v18 / 0x66));
    v20 = *v19 + 40 * (v18 % 0x66);
    v21 = *(v17 + 8 * ((v51[17] + v18) / 0x66)) + 40 * ((v51[17] + v18) % 0x66);
    while (v20 != v21)
    {
      v22 = v20;
      if (*(v20 + 23) < 0)
      {
        v22 = *v20;
      }

      v23 = [[CLMiLoPredictionDeviceDistanceIndication alloc] initWithDeviceIdentifier:+[NSString stringWithUTF8String:](NSString uwbRange:"stringWithUTF8String:" bleRSSI:{v22), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(v20 + 24)), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(v20 + 32))}];
      [v16 addObject:v23];

      v20 += 40;
      if (v20 - *v19 == 4080)
      {
        v24 = v19[1];
        ++v19;
        v20 = v24;
      }
    }
  }

  v56 = [[CLMiLoPredictionCloseDeviceList alloc] initWithCloseDeviceList:v16];

  v25 = objc_alloc_init(NSMutableArray);
  v26 = v51[7];
  if (v51[8] != v26)
  {
    v27 = v51[10];
    v28 = (v26 + 8 * (v27 >> 7));
    v29 = *v28 + 32 * (v27 & 0x7F);
    v30 = *(v26 + (((v51[11] + v27) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v51[11] + v27) & 0x7F);
    while (v29 != v30)
    {
      v31 = [[NSUUID alloc] initWithUUIDBytes:v29];
      v32 = [[CLMiLoPlace alloc] initWithPlaceIdentifier:v31 score:+[NSNumber numberWithDouble:](NSNumber confidence:"numberWithDouble:" placeMetadata:{*(v29 + 16)), *(v29 + 24), 0}];

      [v25 addObject:v32];
      v29 += 32;
      if (v29 - *v28 == 4096)
      {
        v33 = v28[1];
        ++v28;
        v29 = v33;
      }
    }
  }

  v53 = [[CLMiLoServicePredictionLocationSimilarityList alloc] initWithPlaces:v25];

  v34 = [NSError alloc];
  v50 = [v34 initWithDomain:kCLErrorDomainPrivate code:v51[18] userInfo:0];
  v35 = [[NSUUID alloc] initWithUUIDBytes:v51 + 19];
  v36 = objc_alloc_init(NSMutableArray);
  v37 = objc_alloc_init(NSMutableArray);
  v38 = v51[23];
  if (v51[24] != v38)
  {
    v39 = v51[26];
    v40 = (v38 + 8 * (v39 >> 9));
    v41 = (*v40 + 8 * (v39 & 0x1FF));
    v42 = *(v38 + (((v51[27] + v39) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v51[27] + v39) & 0x1FF);
    while (v41 != v42)
    {
      v43 = [[CLMiLoPlaceConfidenceReason alloc] initWithConfidenceReasonEnum:*v41];
      [v36 addObject:v43];

      v44 = *v41;
      if (*v41 <= 7uLL && ((0xFBu >> v44) & 1) != 0)
      {
        v45 = [[CLMiLoFingerprintError alloc] initWithFingerprintErrorEnum:qword_101C81038[v44]];
        [v37 addObject:v45];
      }

      if ((++v41 - *v40) == 4096)
      {
        v46 = v40[1];
        ++v40;
        v41 = v46;
      }
    }
  }

  v47 = [[CLMiLoFingerprintMetaInfo alloc] initWithNumWiFiAccessPoints:+[NSNumber numberWithUnsignedInt:](NSNumber numBLESources:"numberWithUnsignedInt:" numUWBSources:*(v51 + 56)) requestIdentifier:+[NSNumber numberWithUnsignedInt:](NSNumber errors:{"numberWithUnsignedInt:", *(v51 + 57)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(v51 + 58)), v35, v37}];

  v48 = [[CLMiLoPrediction alloc] initWithPlacePredictions:v54 locationSimilarityList:v53 closeDeviceList:v56 error:v50 requestIdentifier:v35 predictionTime:+[NSDate date](NSDate confidence:"date") placeConfidenceReasons:v51[21] localizationFingerprintMetaInfo:{v36, v47}];
  return v48;
}

void sub_1005E0A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0A24(uint64_t a1)
{
  v2 = [[NSUUID alloc] initWithUUIDBytes:a1 + 16];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:kCLErrorDomainPrivate code:*(a1 + 8) userInfo:0];
  v5 = 0;
  if (*(a1 + 104) == 1)
  {
    v6 = [CLMiLoExportDatabaseTableResult alloc];
    if (*(a1 + 55) >= 0)
    {
      v7 = a1 + 32;
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = [NSString stringWithUTF8String:v7];
    if (*(a1 + 79) >= 0)
    {
      v9 = a1 + 56;
    }

    else
    {
      v9 = *(a1 + 56);
    }

    v10 = [NSString stringWithUTF8String:v9];
    v13 = *(a1 + 80);
    v12 = a1 + 80;
    v11 = v13;
    if (*(v12 + 23) >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v5 = [v6 initWithExportDir:v8 fileName:v10 sandboxExtensionTok:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  }

  v15 = [[CLMiLoDebugResponse alloc] initWithExportDatabaseTablesResult:v5 requestIdentifier:v2 error:v4];

  return v15;
}

void sub_1005E0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0C68(uint64_t *a1)
{
  v2 = [NSError alloc];
  v3 = [v2 initWithDomain:kCLErrorDomainPrivate code:a1[1] userInfo:0];
  v4 = [CLMiLoGenericEventResponse alloc];
  v5 = *a1;
  v6 = *(a1 + 39);
  v9 = a1[2];
  v8 = a1 + 2;
  v7 = v9;
  if (v6 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [v4 initWithEventType:v5 withDescription:+[NSString stringWithUTF8String:](NSString withError:{"stringWithUTF8String:", v10), v3}];
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v12 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289538;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = [v11 eventType];
    v19 = 2082;
    v20 = [objc_msgSend(v11 "genericEventDescription")];
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:created GenericEventResponse with, EventType:%{public}lu, Description:%{public, location:escape_only}s}", v14, 0x26u);
  }

  return v11;
}

void sub_1005E0E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E0E64@<X0>(uint64_t a1@<X8>)
{
  v24[0] = off_102462D40;
  v24[1] = sub_1005E1820;
  v24[2] = 0;
  v24[3] = v24;
  sub_10000EC00(v25, "kCLConnectionMessageMiLoServiceEvent");
  sub_1005E5D04(&v26, v24);
  v21 = off_102462DF0;
  v22[0] = sub_1005E1968;
  v22[1] = 0;
  v23 = &v21;
  sub_10000EC00(v27, "kCLConnectionMessageMiLoCreateService");
  sub_1005E5D04(&v28, &v21);
  v20[0] = off_102462DF0;
  v20[1] = sub_1005E1D60;
  v20[2] = 0;
  v20[3] = v20;
  sub_10000EC00(v29, "kCLConnectionMessageMiLoDeleteService");
  sub_1005E5D04(&v30, v20);
  v19[0] = off_102462DF0;
  v19[1] = sub_1005E1FF0;
  v19[2] = 0;
  v19[3] = v19;
  sub_10000EC00(v31, "kCLConnectionMessageMiLoQueryMyServices");
  sub_1005E5D04(&v32, v19);
  v18[0] = off_102462DF0;
  v18[1] = sub_1005E21CC;
  v18[2] = 0;
  v18[3] = v18;
  sub_10000EC00(v33, "kCLConnectionMessageMiLoConnectToService");
  sub_1005E5D04(&v34, v18);
  v17[0] = off_102462DF0;
  v17[1] = sub_1005E27C4;
  v17[2] = 0;
  v17[3] = v17;
  sub_10000EC00(v35, "kCLConnectionMessageMiLoDisconnectToService");
  sub_1005E5D04(&v36, v17);
  v16[0] = off_102462DF0;
  v16[1] = sub_1005E3250;
  v16[2] = 0;
  v16[3] = v16;
  sub_10000EC00(v37, "kCLConnectionMessageMiLoSingleShotPrediction");
  sub_1005E5D04(&v38, v16);
  v15[0] = off_102462DF0;
  v15[1] = sub_1005E34E0;
  v15[2] = 0;
  v15[3] = v15;
  sub_10000EC00(v39, "kCLConnectionMessageRequestObservation");
  sub_1005E5D04(&v40, v15);
  v14[0] = off_102462DF0;
  v14[1] = sub_1005E378C;
  v14[2] = 0;
  v14[3] = v14;
  sub_10000EC00(v41, "kCLConnectionMessageLabelSignleObservation");
  sub_1005E5D04(&v42, v14);
  v13[0] = off_102462DF0;
  v13[1] = sub_1005E3A68;
  v13[2] = 0;
  v13[3] = v13;
  sub_10000EC00(v43, "kCLConnectionMessageLabelObservationsBetweenDates");
  sub_1005E5D04(&v44, v13);
  v12[0] = off_102462DF0;
  v12[1] = sub_1005E3DA4;
  v12[2] = 0;
  v12[3] = v12;
  sub_10000EC00(v45, "kCLConnectionMessageRemoveLabels");
  sub_1005E5D04(&v46, v12);
  v11[0] = off_102462DF0;
  v11[1] = sub_1005E4074;
  v11[2] = 0;
  v11[3] = v11;
  sub_10000EC00(v47, "kCLConnectionMessageStartUpdatingMicroLocation");
  sub_1005E5D04(&v48, v11);
  v10[0] = off_102462DF0;
  v10[1] = sub_1005E4344;
  v10[2] = 0;
  v10[3] = v10;
  sub_10000EC00(v49, "kCLConnectionMessageStopUpdatingMicroLocation");
  sub_1005E5D04(&v50, v10);
  v9[0] = off_102462DF0;
  v9[1] = sub_1005E45E4;
  v9[2] = 0;
  v9[3] = v9;
  sub_10000EC00(v51, "kCLConnectionMessageMiLoQueryConnectionStatus");
  sub_1005E5D04(&v52, v9);
  v8[0] = off_102462DF0;
  v8[1] = sub_1005E4770;
  v8[2] = 0;
  v8[3] = v8;
  sub_10000EC00(v53, "kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation");
  sub_1005E5D04(&v54, v8);
  v7[0] = off_102462DF0;
  v7[1] = sub_1005E49DC;
  v7[2] = 0;
  v7[3] = v7;
  sub_10000EC00(v55, "kCLConnectionMessageRemoveCustomLOI");
  sub_1005E5D04(&v56, v7);
  v6[0] = off_102462DF0;
  v6[1] = sub_1005E4C88;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v57, "kCLConnectionMessageRequestModelLearning");
  sub_1005E5D04(&v58, v6);
  v5[0] = off_102462DF0;
  v5[1] = sub_1005E5164;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v59, "kCLConnectionMessageRequestPurgeMiLoData");
  sub_1005E5D04(&v60, v5);
  v4[0] = off_102462DF0;
  v4[1] = sub_1005E5608;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v61, "kCLConnectionMessageRequestMiLoExportDatabaseTables");
  sub_1005E5D04(&v62, v4);
  sub_1005E721C(a1, v25, 19);
  v2 = 133;
  do
  {
    sub_1005E7000(&v24[v2]);
    if (SHIBYTE((&v23)[v2]) < 0)
    {
      operator delete(v22[v2]);
    }

    v2 -= 7;
  }

  while (v2 * 8);
  sub_1005E7000(v4);
  sub_1005E7000(v5);
  sub_1005E7000(v6);
  sub_1005E7000(v7);
  sub_1005E7000(v8);
  sub_1005E7000(v9);
  sub_1005E7000(v10);
  sub_1005E7000(v11);
  sub_1005E7000(v12);
  sub_1005E7000(v13);
  sub_1005E7000(v14);
  sub_1005E7000(v15);
  sub_1005E7000(v16);
  sub_1005E7000(v17);
  sub_1005E7000(v18);
  sub_1005E7000(v19);
  sub_1005E7000(v20);
  sub_1005E7000(&v21);
  return sub_1005E7000(v24);
}

void sub_1005E164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  v71 = -1064;
  v72 = v69;
  do
  {
    v72 = sub_1005E5D84(v72) - 56;
    v71 += 56;
  }

  while (v71);
  sub_1005E7000(&a9);
  sub_1005E7000(&a13);
  sub_1005E7000(&a17);
  sub_1005E7000(&a21);
  sub_1005E7000(&a25);
  sub_1005E7000(&a29);
  sub_1005E7000(&a33);
  sub_1005E7000(&a37);
  sub_1005E7000(&a41);
  sub_1005E7000(&a45);
  sub_1005E7000(&a49);
  sub_1005E7000(&a53);
  sub_1005E7000(&a57);
  sub_1005E7000(&a61);
  sub_1005E7000(&a65);
  sub_1005E7000(&a69);
  sub_1005E7000(&STACK[0x200]);
  sub_1005E7000(&STACK[0x220]);
  sub_1005E7000(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E1820(uint64_t a1, int a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:modifying subscription for kCLConnectionMessageMiLoServiceEvent and kCLConnectionMessageMiLoPredictionEventUpdate, subscribe?:%{public}hhd}", v6, 0x18u);
  }

  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  return sub_1000F3B70(a1);
}

uint64_t sub_1005E1968(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageMiLoCreateService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = DictionaryOfClasses;
    if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceTypeKey"] && objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLocationTypesKey"))
    {
      v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceTypeKey"];
      v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objc_msgSend(v8 error:{"objectForKeyedSubscript:", @"CLMiLoConnectionLocationTypesKey", 0}];
      v11 = objc_opt_class();
      v12 = [v10 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v11, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];
      [v10 finishDecoding];
      v13 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v13 = *v13;
      }

      v14 = *(a1 + 64);
      v15 = [NSString stringWithUTF8String:v13];
      v16 = [v9 integerValue];
      v17 = (a1 + 112);
      if (*(a1 + 135) < 0)
      {
        v17 = *v17;
      }

      [v14 createServiceForClient:v15 withServiceType:v16 locationTypes:v12 connectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v17)}];
      v19 = @"CLMiLoConnectionReturnCode";
      v20 = &off_10254EC18;
      [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      return CLConnectionMessage::sendReply();
    }

    else
    {
      v21[0] = @"CLMiLoConnectionReturnCode";
      v21[1] = @"CLMiLoConnectionErrorMessage";
      v22[0] = &off_10254EBE8;
      v22[1] = &off_10254EC00;
      [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      return CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v24[0] = &off_10254EBE8;
    v23[0] = @"CLMiLoConnectionReturnCode";
    v23[1] = @"CLMiLoConnectionErrorMessage";
    v24[1] = [NSNumber numberWithInteger:*buf];
    [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    return CLConnectionMessage::sendReply();
  }
}

uint64_t sub_1005E1D60(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoDeleteService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254EC30;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_15:
    v14 = 2;
    goto LABEL_16;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254EC30;
    v19[1] = &off_10254EC00;
    v12 = v19;
    v13 = v18;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v9 = *v9;
  }

  v10 = [NSString stringWithUTF8String:v9];
  v11 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) deleteServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v11)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E1FF0(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoQueryMyServices received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    v3 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v3 = *v3;
    }

    v4 = [NSString stringWithUTF8String:v3];
    v5 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v5 = *v5;
    }

    [*(a1 + 64) queryServicesForClient:v4 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v5)}];
    v10 = @"CLMiLoConnectionReturnCode";
    v11 = &off_10254EC18;
    v6 = &v11;
    v7 = &v10;
    v8 = 1;
  }

  else
  {
    v13[0] = &off_10254EC48;
    v12[0] = @"CLMiLoConnectionReturnCode";
    v12[1] = @"CLMiLoConnectionErrorMessage";
    v13[1] = [NSNumber numberWithInteger:*buf];
    v6 = v13;
    v7 = v12;
    v8 = 2;
  }

  [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8, v10, v11];
  return CLConnectionMessage::sendReply();
}

void sub_1005E21CC(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoConnectToService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v29 = 0;
  if ((sub_1005E5ADC(a1, &v29) & 1) == 0)
  {
    v45[0] = &off_10254EC60;
    v44[0] = @"CLMiLoConnectionReturnCode";
    v44[1] = @"CLMiLoConnectionErrorMessage";
    v45[1] = [NSNumber numberWithInteger:v29];
    v18 = v45;
    v19 = v44;
    goto LABEL_18;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = DictionaryOfClasses;
  if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"])
  {
    v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
    v9 = v8;
    if (!*(a1 + 80))
    {
      *(a1 + 80) = [v8 copy];
      v23 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v23 = *v23;
      }

      v24 = [NSString stringWithUTF8String:v23];
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }

      v25 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(NSString *)v24 UTF8String];
        v27 = [objc_msgSend(v9 "UUIDString")];
        *buf = 68289539;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2081;
        *v39 = v26;
        *&v39[8] = 2081;
        *&v39[10] = v27;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoConnectionSubscription::handleConnectToService, connecting to service, clientId:%{private, location:escape_only}s, serviceIdentifier:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v28 = (a1 + 112);
      if (*(a1 + 135) < 0)
      {
        v28 = *v28;
      }

      [*(a1 + 64) connectToServiceForClient:v24 withServiceIdentifier:v9 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v28)}];
      v30 = @"CLMiLoConnectionReturnCode";
      v31 = &off_10254EC18;
      v18 = &v31;
      v19 = &v30;
      v20 = 1;
      goto LABEL_19;
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v10 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v12 = [objc_msgSend(v9 "UUIDString")];
      v13 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      *buf = 68289794;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      *v39 = v11;
      *&v39[8] = 2082;
      *&v39[10] = v12;
      v40 = 2082;
      v41 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:connect to service failed, already has an active connection, class:%{public, location:escape_only}s, requestedServiceIdentifierToConnect:%{public, location:escape_only}s, activeConnectionServiceIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v14 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v15 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v16 = [objc_msgSend(v9 "UUIDString")];
      v17 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      *buf = 68289794;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      *v39 = v15;
      *&v39[8] = 2082;
      *&v39[10] = v16;
      v40 = 2082;
      v41 = v17;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "connect to service failed, already has an active connection", "{msg%{public}.0s:connect to service failed, already has an active connection, class:%{public, location:escape_only}s, requestedServiceIdentifierToConnect:%{public, location:escape_only}s, activeConnectionServiceIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v32[0] = @"CLMiLoConnectionReturnCode";
    v32[1] = @"CLMiLoConnectionErrorMessage";
    v33[0] = &off_10254EC60;
    v33[1] = &off_10254EC78;
    v18 = v33;
    v19 = v32;
LABEL_18:
    v20 = 2;
LABEL_19:
    [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:v20];
    CLConnectionMessage::sendReply();
    return;
  }

  v42[0] = @"CLMiLoConnectionReturnCode";
  v42[1] = @"CLMiLoConnectionErrorMessage";
  v43[0] = &off_10254EC60;
  v43[1] = &off_10254EC00;
  [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  CLConnectionMessage::sendReply();
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v21 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    if ([v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"])
    {
      v22 = [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{@"CLMiLoConnectionServiceIdentifier", "UUIDString"), "UTF8String"}];
    }

    else
    {
      v22 = "";
    }

    *buf = 68289538;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 1026;
    *v39 = v7 != 0;
    *&v39[4] = 2082;
    *&v39[6] = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleConnectToService, mesasge info missing, hasDictionary:%{public}hhd, serviceIdentifier:%{public, location:escape_only}s}", buf, 0x22u);
  }
}

uint64_t sub_1005E27C4(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v56 = 0;
    v57 = 2082;
    v58 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoDisconnectToService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v50 = 0;
  if ((sub_1005E5ADC(a1, &v50) & 1) == 0)
  {
    v74[0] = &off_10254EC90;
    v73[0] = @"CLMiLoConnectionReturnCode";
    v73[1] = @"CLMiLoConnectionErrorMessage";
    v74[1] = [NSNumber numberWithInteger:v50];
    v15 = v74;
    v16 = v73;
LABEL_56:
    v36 = 2;
    goto LABEL_57;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]))
  {
    v71[0] = @"CLMiLoConnectionReturnCode";
    v71[1] = @"CLMiLoConnectionErrorMessage";
    v72[0] = &off_10254EC90;
    v72[1] = &off_10254EC00;
    v15 = v72;
    v16 = v71;
    goto LABEL_56;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v17 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = [NSStringFromClass(v18) UTF8String];
      v20 = (objc_opt_respondsToSelector() & 1) != 0 ? [objc_msgSend(*(a1 + 80) "UUIDString")] : "not available";
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v19;
      v61 = 2082;
      v62 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, requested service identifier to disconnect is not a NSUUID object, class of requested service identifier to disconnect:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v37 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v38 = objc_opt_class();
      v39 = [NSStringFromClass(v38) UTF8String];
      if (objc_opt_respondsToSelector())
      {
        v40 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      }

      else
      {
        v40 = "not available";
      }

      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v39;
      v61 = 2082;
      v62 = v40;
      _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, requested service identifier to disconnect is not a NSUUID object", "{msg%{public}.0s:disconnect to service failed, requested service identifier to disconnect is not a NSUUID object, class of requested service identifier to disconnect:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v69[0] = @"CLMiLoConnectionReturnCode";
    v69[1] = @"CLMiLoConnectionErrorMessage";
    v70[0] = &off_10254EC60;
    v70[1] = &off_10254ECA8;
    v15 = v70;
    v16 = v69;
    goto LABEL_56;
  }

  v9 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v9 = *v9;
  }

  v10 = [NSString stringWithUTF8String:v9];
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v11 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSString *)v10 UTF8String];
    v13 = [objc_msgSend(v8 "UUIDString")];
    *buf = 68289539;
    v56 = 0;
    v57 = 2082;
    v58 = "";
    v59 = 2081;
    v60 = v12;
    v61 = 2081;
    v62 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoConnectionSubscription::handleDisconnectToService, disconnecting, clientId:%{private, location:escape_only}s, serviceIdentifier:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (!*(a1 + 80))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v21 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v23 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v22;
      v61 = 2082;
      v62 = v23;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, doesn't have an active connection, class:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v24 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v25 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v26 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v25;
      v61 = 2082;
      v62 = v26;
      _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, doesn't have an active connection", "{msg%{public}.0s:disconnect to service failed, doesn't have an active connection, class:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v67[0] = @"CLMiLoConnectionReturnCode";
    v67[1] = @"CLMiLoConnectionErrorMessage";
    v68[0] = &off_10254EC60;
    v68[1] = &off_10254ECC0;
    v15 = v68;
    v16 = v67;
    goto LABEL_56;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v27 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = [NSStringFromClass(v28) UTF8String];
      v30 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v29;
      v61 = 2082;
      v62 = v30;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service, connected service identifier is not a NSUUID object, class of connected service identifier:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v31 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v32 = objc_opt_class();
      v33 = [NSStringFromClass(v32) UTF8String];
      v34 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v33;
      v61 = 2082;
      v62 = v34;
      _os_signpost_emit_with_name_impl(dword_100000000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service, connected service identifier is not a NSUUID object", "{msg%{public}.0s:disconnect to service, connected service identifier is not a NSUUID object, class of connected service identifier:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
    }

    *(a1 + 80) = 0;
    v35 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v35 = *v35;
    }

    [*(a1 + 64) disconnectToServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v35)}];
    v65 = @"CLMiLoConnectionReturnCode";
    v66 = &off_10254EC18;
    v15 = &v66;
    v16 = &v65;
    goto LABEL_46;
  }

  if (([v8 isEqual:*(a1 + 80)] & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v42 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v44 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v45 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289794;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v43;
      v61 = 2082;
      v62 = v44;
      v63 = 2082;
      v64 = v45;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, disconnect a not connected service, class:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s, requested service identifierToDisconnect:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v46 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v47 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v48 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v49 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289794;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v47;
      v61 = 2082;
      v62 = v48;
      v63 = 2082;
      v64 = v49;
      _os_signpost_emit_with_name_impl(dword_100000000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, disconnect a not connected service", "{msg%{public}.0s:disconnect to service failed, disconnect a not connected service, class:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s, requested service identifierToDisconnect:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v53[0] = @"CLMiLoConnectionReturnCode";
    v53[1] = @"CLMiLoConnectionErrorMessage";
    v54[0] = &off_10254EC60;
    v54[1] = &off_10254ECA8;
    v15 = v54;
    v16 = v53;
    goto LABEL_56;
  }

  *(a1 + 80) = 0;
  v14 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v14 = *v14;
  }

  [*(a1 + 64) disconnectToServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  v51 = @"CLMiLoConnectionReturnCode";
  v52 = &off_10254EC18;
  v15 = &v52;
  v16 = &v51;
LABEL_46:
  v36 = 1;
LABEL_57:
  [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:v36];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E3250(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v22 = 2082;
    v23 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoSingleShotPrediction received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v20[0] = &off_10254ECD8;
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[1] = [NSNumber numberWithInteger:*buf];
    v11 = v20;
    v12 = v19;
LABEL_14:
    v13 = 2;
    goto LABEL_15;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v17[0] = @"CLMiLoConnectionReturnCode";
    v17[1] = @"CLMiLoConnectionErrorMessage";
    v18[0] = &off_10254ECD8;
    v18[1] = &off_10254ECA8;
    v11 = v18;
    v12 = v17;
    goto LABEL_14;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v10 = *v10;
  }

  [*(a1 + 64) requestSingleShotMiLoPredictionForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v10) withConnectionToken:{v8, v9, *(a1 + 72)}];
  v15 = @"CLMiLoConnectionReturnCode";
  v16 = &off_10254EC18;
  v11 = &v16;
  v12 = &v15;
  v13 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:v13];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E34E0(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRequestObservation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254ECD8;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_14:
    v14 = 2;
    goto LABEL_15;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254ECD8;
    v19[1] = &off_10254ECA8;
    v12 = v19;
    v13 = v18;
    goto LABEL_14;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v11 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) requestObservationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v11) withPlaceIdentifier:v8 withConnectionToken:{v9, v10, *(a1 + 72)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E378C(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageLabelSignleObservation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionPlaceLabelIdentifier"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v11 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionObservationIdentifier"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestLabelSingleObservationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withPlaceIdentifier:v8 withObservationRequestIdentifier:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}