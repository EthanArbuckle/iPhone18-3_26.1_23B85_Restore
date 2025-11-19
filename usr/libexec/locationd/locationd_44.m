uint64_t sub_1002E6904(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102636E38 + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = v5 + 2;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 24);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = sub_1002E6698(*(*(a1 + 16) + 8 * v9), a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(a1 + 24));
  }

  *(a1 + 40) = v8;
  return v8;
}

uint64_t sub_1002E69E0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636E40 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 44), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_102636E40 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_102636E40 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 45), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 47), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 46), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return result;
  }

LABEL_29:
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, v10, a2, a4);
}

uint64_t sub_1002E6B7C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(qword_102636E30 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1002E6BF8(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 24), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, v4, *(v5 + 36), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 40), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 44), v4, a4);
    if ((*(v5 + 56) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 41), v4, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, v7, v4, a4);
}

uint64_t sub_1002E6D48(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636E38 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

id sub_1002E6DD0(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1002E8764;
  v3[3] = &unk_102460E88;
  v3[4] = *a1;
  memset(v4, 0, sizeof(v4));
  sub_100288650(v4, a1[1], a1[2], 0x2E8BA2E8BA2E8BA3 * ((a1[2] - a1[1]) >> 3));
  v1 = [v3 copy];
  v5 = v4;
  sub_1000B96B4(&v5);
  return v1;
}

void sub_1002E6E94(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1000B96B4((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1002E6EAC(uint64_t a1, void *a2)
{
  v2 = a2[4];
  *(a1 + 40) = 0;
  v3 = a1 + 40;
  *(v3 - 8) = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  return sub_100288650(v3, a2[5], a2[6], 0x2E8BA2E8BA2E8BA3 * ((a2[6] - a2[5]) >> 3));
}

void sub_1002E6EE4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453F58;
  sub_1002E6F4C(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1002E6F4C(void *result)
{
  if (qword_102636E40 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_1002E7018(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1002E7050(a1);

  operator delete();
}

void sub_1002E7050(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102453E68;
  if (qword_102636E30 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1002E70DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102453DF0;
  sub_1002AC6F0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002E7144(uint64_t *a1)
{
  sub_1002E717C(a1);

  operator delete();
}

void sub_1002E717C(uint64_t *a1)
{
  *a1 = off_102453EE0;
  if (qword_102636E38 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1002E7214(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002E73F0(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002E73F0(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v70[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100C5D210(*a3);
    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, wifiNotify, %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v24 = sub_100C5D210(*a3);
    *v58 = 136446210;
    *&v58[4] = v24;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v8 = *a3;
  if (*a3 > 4)
  {
    if (v8 > 6)
    {
      if (v8 != 7)
      {
        if (v8 != 12)
        {
          goto LABEL_74;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        sub_100288650(&v53, *(a4 + 14), *(a4 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a4 + 15) - *(a4 + 14)) >> 3));
        if (qword_1025D4630 != -1)
        {
          sub_1018FC728();
        }

        v10 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          v12 = v53;
          v11 = v54;
          v13 = sub_100C5D234(*(a4 + 35));
          *buf = 134218242;
          *&buf[4] = 0x2E8BA2E8BA2E8BA3 * ((v11 - v12) >> 3);
          *&buf[12] = 2082;
          *&buf[14] = v13;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@Wsb, NotificationScanCache, aps, %zu, source, %{public}s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FCB90(buf);
          v29 = v53;
          v28 = v54;
          v30 = sub_100C5D234(*(a4 + 35));
          *v58 = 134218242;
          *&v58[4] = 0x2E8BA2E8BA2E8BA3 * ((v28 - v29) >> 3);
          *&v58[12] = 2082;
          *&v58[14] = v30;
          v31 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        sub_1002E8580(v58);
        v14 = *v58;
        memset(v52, 0, sizeof(v52));
        sub_100288650(v52, v53, v54, 0x2E8BA2E8BA2E8BA3 * ((v54 - v53) >> 3));
        sub_1003152EC(buf, v52, *(a4 + 35));
        sub_100315444(v14, buf);
        if (v68 == 1 && v64 < 0)
        {
          operator delete(v63);
        }

        v56 = buf;
        sub_1000B96B4(&v56);
        v56 = v52;
        sub_1000B96B4(&v56);
        if (*&v58[8])
        {
          sub_100008080(*&v58[8]);
        }

        if (sub_100316DF0(*(a4 + 35)))
        {
          if (qword_1025D4630 != -1)
          {
            sub_1018FC728();
          }

          v15 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
          {
            v16 = sub_100C5D234(*(a4 + 35));
            *buf = 136446210;
            *&buf[4] = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "@Wsb, ignoring NotificationScanCache source %{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018FCB90(buf);
            v32 = sub_100C5D234(*(a4 + 35));
            *v58 = 136446210;
            *&v58[4] = v32;
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v33);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          *buf = &v53;
          sub_1000B96B4(buf);
          goto LABEL_74;
        }

        if (a4[96] == 1 && *(a4 + 12) >= 1)
        {
          sub_1002E80E0(v58, (a4 + 8));
        }

        else
        {
          v58[0] = 0;
          v60 = 0;
        }

        memset(v51, 0, sizeof(v51));
        sub_100288650(v51, v53, v54, 0x2E8BA2E8BA2E8BA3 * ((v54 - v53) >> 3));
        v23 = *(a4 + 35);
        sub_1000FB724(v47, v58);
        sub_1003153D0(buf, v51, v23, v47);
        sub_100317078(v70, buf);
        if (v68 == 1 && v64 < 0)
        {
          operator delete(v63);
        }

        v56 = buf;
        sub_1000B96B4(&v56);
        if (v50 == 1 && v49 < 0)
        {
          operator delete(v48);
        }

        v56 = v51;
        sub_1000B96B4(&v56);
        if (v60 == 1 && v59 < 0)
        {
          operator delete(*&v58[8]);
        }

        *buf = &v53;
        sub_1000B96B4(buf);
LABEL_73:
        sub_100271780(v57, v70);
        sub_1000FFE90();
      }

      sub_10067C708(buf);
      sub_10067EFF4(v70, buf);
      if (v67 == 1 && v62 < 0)
      {
        operator delete(*&buf[8]);
      }

      if (a4[96] != 1 || *(a4 + 12) < 1)
      {
        goto LABEL_72;
      }

      sub_1002E80E0(v34, (a4 + 8));
      sub_1000FB724(buf, v34);
      sub_10067EFF4(v70, buf);
      if (v67 == 1 && v62 < 0)
      {
        operator delete(*&buf[8]);
      }

      if (v37 != 1 || (v36 & 0x80000000) == 0)
      {
LABEL_72:
        sub_10067C788(a3, a4);
        goto LABEL_73;
      }

      v9 = v35;
    }

    else
    {
      if (v8 == 5)
      {
        buf[0] = a4[1];
        sub_10067E9C4(v70, buf);
        goto LABEL_73;
      }

      if (v8 != 6)
      {
        goto LABEL_74;
      }

      sub_10067C708(buf);
      sub_10067EE24(v70, buf);
      if (v67 == 1 && v62 < 0)
      {
        operator delete(*&buf[8]);
      }

      if (a4[96] != 1 || *(a4 + 12) < 1)
      {
        goto LABEL_72;
      }

      sub_1002E80E0(v38, (a4 + 8));
      sub_1000FB724(buf, v38);
      sub_10067EE24(v70, buf);
      if (v67 == 1 && v62 < 0)
      {
        operator delete(*&buf[8]);
      }

      if (v41 != 1 || (v40 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      v9 = v39;
    }

    operator delete(v9);
    goto LABEL_72;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (a4[96] == 1 && *(a4 + 12) >= 1)
      {
        sub_1002E80E0(v58, (a4 + 8));
      }

      else
      {
        v58[0] = 0;
        v60 = 0;
      }

      v20 = a4 + 112;
      v21 = *(a4 + 13);
      sub_1002E8154(v46, *(a4 + 14), *(a4 + 15));
      v46[5] = v21;
      v22 = a4[1];
      sub_1000FB724(v42, v58);
      sub_1002E81D0(buf, v46, v22, v42);
      sub_1002E8238(v70, buf);
      if (v69 == 1 && v66 < 0)
      {
        operator delete(v65);
      }

      sub_100103B14(buf);
      if (v45 == 1 && v44 < 0)
      {
        operator delete(v43);
      }

      sub_100103B14(v46);
      sub_1002E8580(buf);
      sub_1002E85F0(*buf, v20);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (v60 == 1 && v59 < 0)
      {
        operator delete(*&v58[8]);
      }
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_74;
      }

      sub_10067ECC4(v70);
    }

    goto LABEL_73;
  }

  if (v8 == 1)
  {
    v17 = *a4;
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v18 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      if (*a4)
      {
        v19 = "ON";
      }

      else
      {
        v19 = "OFF";
      }

      *buf = 136446210;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "@WifiLogic, wifi power %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      if (*a4)
      {
        v26 = "ON";
      }

      else
      {
        v26 = "OFF";
      }

      *v58 = 136446210;
      *&v58[4] = v26;
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    *buf = v17 ^ 1;
    sub_10067EB44(v70, buf);
    goto LABEL_73;
  }

  if (v8 == 2)
  {
    sub_10067E868(v70);
    goto LABEL_73;
  }

LABEL_74:
  sub_1001039FC(v70);
}

void sub_1002E7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x5A0] = &a71;
  sub_1000B96B4(&STACK[0x5A0]);
  sub_1001039FC(&STACK[0xC08]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E80E0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100007244(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  *(a1 + 88) = 1;
  return a1;
}

uint64_t sub_1002E8154(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_10018583C(a1, v5);
      v5 += 11;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t sub_1002E81D0(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  v8 = sub_10067DFB8(a1, a2);
  *(v8 + 40) = a2[5];
  *(v8 + 48) = a3;
  sub_1000FB724((v8 + 56), a4);
  return a1;
}

void sub_1002E8238(int *a1, uint64_t *a2)
{
  v4 = a2;
  if ((sub_1002E82EC(a1, &v4) & 1) == 0)
  {
    v5 = sub_1002E83E4(&v6, a2);
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_1002E82D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E82EC(uint64_t a1, uint64_t **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 8) >= 0x16)
  {
    if (v4 > 6)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 7)
      {
        v5 = *a2;
        sub_10067E514(a1 + 8, *a2);
        *(a1 + 48) = v5[5];
        *(a1 + 56) = *(v5 + 48);
        sub_1000F8A78(a1 + 64, (v5 + 7));
        return 1;
      }
    }

    else if (v4 < 7)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

uint64_t sub_1002E83E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10067DFB8(a1, a2);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = 0;
  *(v3 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(v3 + 56) = *(a2 + 56);
    v4 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v4;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v5 = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v7;
    *(v3 + 104) = v6;
    *(v3 + 88) = v5;
    *(v3 + 144) = 1;
  }

  return 7;
}

uint64_t sub_1002E8478(uint64_t a1, uint64_t a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  result = sub_10067DFB8(*a1 + 8, a2);
  *(v4 + 48) = *(a2 + 40);
  *(v4 + 56) = *(a2 + 48);
  *(v4 + 64) = 0;
  *(v4 + 152) = 0;
  if (*(a2 + 144) == 1)
  {
    *(v4 + 64) = *(a2 + 56);
    v6 = *(a2 + 64);
    *(v4 + 88) = *(a2 + 80);
    *(v4 + 72) = v6;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v7 = *(a2 + 88);
    v8 = *(a2 + 104);
    v9 = *(a2 + 120);
    *(v4 + 144) = *(a2 + 136);
    *(v4 + 112) = v8;
    *(v4 + 128) = v9;
    *(v4 + 96) = v7;
    *(v4 + 152) = 1;
  }

  **a1 = *(a1 + 8);
  return result;
}

uint64_t sub_1002E8530(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  return sub_100103B14(a2);
}

void sub_1002E8580(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_10265B1B0, memory_order_acquire) & 1) == 0)
  {
    sub_101969A9C();
  }

  if (qword_10265B170 != -1)
  {
    sub_101969B0C();
  }

  v2 = *(&xmmword_10265B1C0 + 1);
  *a1 = xmmword_10265B1C0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_1002E8618(uint64_t result, int a2)
{
  *(result + 48) += a2;
  ++*(result + 60);
  return result;
}

__n128 sub_1002E8634(uint64_t *a1, uint64_t a2)
{
  v3 = sub_10067DFB8(*a1, a2);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = 0;
  *(v3 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(v3 + 56) = *(a2 + 56);
    v5 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v5;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    result = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v7;
    *(v3 + 104) = v6;
    *(v3 + 88) = result;
    *(v3 + 144) = 1;
  }

  return result;
}

void sub_1002E86C8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8264);
  (*(a2 + 16))(&v3, a2);
  (*(*v2 + 32))(v2, &v3);
  v5 = &v4;
  sub_1000B96B4(&v5);
}

void sub_1002E8748(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 8;
  sub_1000B96B4((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1002E8764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return sub_100288650((a2 + 1), a1[5], a1[6], 0x2E8BA2E8BA2E8BA3 * ((a1[6] - a1[5]) >> 3));
}

uint64_t sub_1002E879C(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();

  return sub_1002E50F0(a1 + 520, a2, Current);
}

uint64_t sub_1002E87DC(unint64_t a1)
{
  v1 = 0;
  LODWORD(v2) = 0;
  v3 = 63689;
  do
  {
    v2 = v3 * v2 + (a1 >> v1);
    v3 *= 378551;
    v1 += 8;
  }

  while (v1 != 64);
  return v2;
}

uint64_t sub_1002E8814(uint64_t a1, uint64_t a2)
{
  sub_1002E892C(v11, a2);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  sub_1000FB724(&v14, a2 + 56);
  sub_1001039FC(*a1);
  v4 = *a1;
  sub_10067DFB8(*a1 + 8, v11);
  *(v4 + 48) = v12;
  *(v4 + 56) = v13;
  *(v4 + 64) = 0;
  *(v4 + 152) = 0;
  v5 = v21;
  if (v21 == 1)
  {
    *(v4 + 64) = v14;
    v6 = v16;
    *(v4 + 72) = *__p;
    *(v4 + 88) = v6;
    __p[1] = 0;
    v16 = 0;
    __p[0] = 0;
    v7 = v20;
    v8 = v17;
    v9 = v19;
    *(v4 + 112) = v18;
    *(v4 + 128) = v9;
    *(v4 + 96) = v8;
    *(v4 + 144) = v7;
    *(v4 + 152) = 1;
    v5 = v21;
  }

  **a1 = *(a1 + 8);
  if ((v5 & 1) != 0 && SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100103B14(v11);
}

void sub_1002E8918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100103B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E892C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10018583C(a1, i + 2);
  }

  return a1;
}

uint64_t sub_1002E8AF4(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

double *sub_1002E8B40(void *a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
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
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
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
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
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

void *sub_1002E8CDC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1002EC23C(result, a2);
  }

  return result;
}

void sub_1002E8DA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1002E8E00(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
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
    sub_1002E8DA8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1002AD2D8(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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
  sub_1002EC088(&v14);
  return v8;
}

void sub_1002E8F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002EC088(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E8F30(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1002AD2D8(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

BOOL sub_1002E8F84(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4, unsigned int a5, uint64_t *a6, void *a7)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  if (v9 == v8)
  {
    return 0;
  }

  if (v8[1] == *v8)
  {
    return 0;
  }

  if (a3[1] == *a3)
  {
    return 0;
  }

  v11 = **a3;
  v12 = (*a3)[1];
  v13 = v12 - v11;
  if (v12 == v11)
  {
    return 0;
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  sub_1002E9554(&v76, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  v15 = 0;
  v16 = -1431655765 * ((a3[1] - *a3) >> 3);
  v61 = (v13 >> 3);
  v17 = v13 & 0x7FFFFFFF8;
  v63 = a3;
  while (2)
  {
    v18 = a3;
    v19 = *a7;
    a7[1] = *a7;
    v20 = *v18;
    v64 = v18[1];
    v67 = v15;
    if (*v18 != v64)
    {
      do
      {
        if (a5)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 1.0e10;
          do
          {
            v73 = off_102446D38;
            __src = off_102446D88;
            v25 = sqrt(sub_1002EC288(&__src, v20, &v76[v22]));
            if (v25 < v24)
            {
              v23 = v21;
              v24 = v25;
            }

            v22 += 3;
            ++v21;
          }

          while (3 * a5 != v22);
          v19 = a7[1];
        }

        else
        {
          v23 = 0;
        }

        v26 = a7[2];
        if (v19 >= v26)
        {
          v27 = *a7;
          v28 = v19 - *a7;
          v29 = v28 >> 2;
          v30 = (v28 >> 2) + 1;
          if (v30 >> 62)
          {
            sub_10028C64C();
          }

          v31 = v26 - v27;
          if (v31 >> 1 > v30)
          {
            v30 = v31 >> 1;
          }

          v32 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
          v33 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v32)
          {
            v33 = v30;
          }

          if (v33)
          {
            sub_1000B85D0(a7, v33);
          }

          *(4 * v29) = v23;
          v19 = (4 * v29 + 4);
          memcpy(0, v27, v28);
          v34 = *a7;
          *a7 = 0;
          a7[1] = v19;
          a7[2] = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v19++ = v23;
        }

        v15 = v67;
        a7[1] = v19;
        v20 += 3;
      }

      while (v20 != v64);
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    sub_1002E9554(&v73, v76, v77, 0xAAAAAAAAAAAAAAABLL * (v77 - v76));
    a3 = v63;
    if (!a5)
    {
      goto LABEL_49;
    }

    v35 = 0;
    do
    {
      __p = 0;
      sub_1002EC328(&__src, v61);
      if (!v16)
      {
LABEL_39:
        v45 = &v76[3 * v35];
        if (&__src != v45)
        {
          sub_1002EC400(&__src, *v45, v45[1], (v45[1] - *v45) >> 3);
        }

        goto LABEL_44;
      }

      v36 = 0;
      v37 = 0.0;
      do
      {
        if (v35 != *(*a7 + 4 * v36))
        {
          goto LABEL_37;
        }

        v38 = &(*v63)[3 * v36];
        v69 = 0;
        v70 = 0;
        __p = 0;
        sub_1002AD2D8(&__p, *v38, v38[1], (v38[1] - *v38) >> 3);
        v39 = *(*a4 + 8 * v36);
        v40 = __p;
        if (v17)
        {
          v37 = v37 + v39;
          v41 = __src;
          v42 = v61;
          v43 = __p;
          do
          {
            v44 = *v43++;
            *v41 = *v41 + v39 * v44;
            ++v41;
            --v42;
          }

          while (v42);
        }

        else
        {
          v37 = v37 + v39;
          if (!__p)
          {
            goto LABEL_37;
          }
        }

        v69 = v40;
        operator delete(v40);
LABEL_37:
        ++v36;
      }

      while (v36 != v16);
      if (v37 == 0.0)
      {
        goto LABEL_39;
      }

      if (v17)
      {
        v46 = __src;
        v47 = v61;
        do
        {
          *v46 = *v46 / v37;
          ++v46;
          --v47;
        }

        while (v47);
      }

LABEL_44:
      v48 = &v76[3 * v35];
      v49 = __src;
      if (v48 != &__src)
      {
        sub_1002EC400(v48, __src, v72, (v72 - __src) >> 3);
        v49 = __src;
      }

      if (v49)
      {
        v72 = v49;
        operator delete(v49);
      }

      ++v35;
    }

    while (v35 != a5);
LABEL_49:
    v50 = v76;
    v65 = v77;
    if (v76 == v77)
    {
      v51 = 0;
      v54 = v76;
    }

    else
    {
      LODWORD(v51) = 0;
      do
      {
        v53 = v73;
        v52 = v74;
        if (v73 != v74)
        {
          do
          {
            __src = off_102446D38;
            __p = off_102446D88;
            if (sqrt(sub_1002EC288(&__p, v53, v50)) < 0.05)
            {
              LODWORD(v51) = v51 + 1;
            }

            v53 += 3;
          }

          while (v53 != v52);
        }

        v50 += 3;
      }

      while (v50 != v65);
      v50 = v76;
      v54 = v77;
      v51 = v51;
      a3 = v63;
      v15 = v67;
    }

    v55 = 0xAAAAAAAAAAAAAAABLL * (v54 - v50);
    __src = &v73;
    sub_1002EC52C(&__src);
    v56 = v55 == v51;
    if (v55 == v51)
    {
      v57 = v15;
    }

    else
    {
      v57 = v15 + 1;
    }

    if (v55 != v51)
    {
      v58 = v15 > 0x31;
      v15 = v57;
      if (!v58)
      {
        continue;
      }
    }

    break;
  }

  if (&v76 != a6 && v55 == v51)
  {
    sub_1002EC5D8(a6, v76, v77, 0xAAAAAAAAAAAAAAABLL * (v77 - v76));
  }

  v73 = &v76;
  sub_1002EC52C(&v73);
  return v56;
}

void sub_1002E94F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, char a27)
{
  a24 = &a27;
  sub_1002EC52C(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9554(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002EC23C(result, a4);
  }

  return result;
}

void sub_1002E95BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1002EC52C(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002E95DC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1002AD2D8(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1002EC2F0(v8);
  return v4;
}

void *sub_1002E9690(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002E96E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002E96E8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10075559C(v5, v5 + 1, v4 + 8);
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

double sub_1002E9798(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a2, a4) >= 0.00000001 || vabdd_f64(a3, a5) >= 0.00000001)
  {
    v11 = 0.0;
    *buf = 0;
    v8 = sub_1001063B0(a1, buf, &v11, &v10, a2, a3, 0.0, a4, a5, 0.0);
    result = -1.0;
    if (v8)
    {
      v9 = atan2(v11, *buf);
      if (v9 < 0.0)
      {
        v9 = v9 + 6.28318531;
      }

      return v9 * 57.2957795;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AFC3A8();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning, same coordinates input", buf, 2u);
    }

    v6 = sub_10000A100(121, 2);
    result = -1.0;
    if (v6)
    {
      sub_101AFC8E0();
      return -1.0;
    }
  }

  return result;
}

uint64_t sub_1002E98BC(double *a1, double *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v6 = fabs(*a1) <= 90.0 && (v5 = a1[1], v5 <= 180.0) && v5 >= -180.0;
  [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v6), @"isWifiHarvestCentroidValid"}];
  v8 = fabs(*a2) <= 90.0 && (v7 = a2[1], v7 <= 180.0) && v7 >= -180.0;
  [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v8), @"isGpsHarvestCentroidValid"}];
  if (fabs(*a1) <= 90.0)
  {
    v9 = a1[1];
    if (fabs(v9) <= 180.0 && fabs(*a2) <= 90.0)
    {
      v10 = a2[1];
      if (fabs(v10) <= 180.0)
      {
        [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", sub_100117154(*a1, v9, *a2, v10)), @"wifiHarvestCentroidAndGpsHarvestCentroidDistance"}];
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_101AAE158();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Submitting CoreAnalytics event for associated AP harvest centroid comparisons, %{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAE16C();
  }

  return AnalyticsSendEventLazy();
}

double *sub_1002E9B38(double *result, uint64_t a2, uint64_t *a3)
{
  if (fabs(*result) <= 90.0)
  {
    v3 = result;
    if (fabs(result[1]) <= 180.0)
    {
      result = sub_100072814(a2);
      if (result)
      {
        sub_1001ADFA4(v3, v10);
        sub_1001AB7A0(v10, v11);
        Current = CFAbsoluteTimeGetCurrent();
        sub_10031BC20(v10, a2);
        result = sub_10031BC54(v10, v11);
        if (result)
        {
          v6 = +[NSMutableDictionary dictionary];
          sub_1010CFFFC(v10, v11);
          [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"horizontalError"}];
          *&v7 = sub_1010D0010(v10, buf).n128_u64[0];
          [v6 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v14, v7), @"referenceLocationType"}];
          if (*(a3 + 23) >= 0)
          {
            v8 = a3;
          }

          else
          {
            v8 = *a3;
          }

          [v6 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v8), @"harvestType"}];
          if (qword_1025D4620 != -1)
          {
            sub_101AAE26C();
          }

          v9 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v6;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Submitting CoreAnalytics event for associated AP harvest centroid error, %{public}@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AAE294();
          }

          return AnalyticsSendEventLazy();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002E9D94(int a1)
{
  if ((a1 + 1) >= 0xF)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A37F44();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67240192;
      v6[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "@WifiService_Type, unsupported scan type %{public}d", v6, 8u);
    }

    v4 = sub_10000A100(121, 0);
    LOBYTE(v1) = 0;
    if (v4)
    {
      sub_101A38054();
      LOBYTE(v1) = 0;
    }
  }

  else
  {
    v1 = 0x2000u >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t sub_1002E9F10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != 1 || *(a2 + 48) != 12)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *(a2 + 16);
  if (v7)
  {
    while (1)
    {
      if (*(a1 + 32))
      {
        v8 = *(v7 + 14);
        v9 = a1 + 32;
        v10 = *(a1 + 32);
        do
        {
          if (*(v10 + 28) >= v8)
          {
            v9 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 28) < v8));
        }

        while (v10);
        if (v9 != a1 + 32 && *(v9 + 28) <= v8)
        {
          return 0;
        }
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    if (qword_1025D4630 != -1)
    {
      sub_101ACAA88();
    }

    v11 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "@WifiChannel, time-based 5GHz, reset channel selector due to no APs", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ACAA9C();
    }

    if (*(a1 + 72) == 1)
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        *(a1 + 56) = v12;
        operator delete(v12);
      }

      sub_1003C93BC(a1 + 24, *(a1 + 32));
      *(a1 + 72) = 0;
    }

    return 1;
  }
}

double sub_1002EA134(uint64_t a1, __int128 *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v9 = a2 - 6;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 5);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v85 = *(a2 - 10);
      v86 = *(i + 56);
      if (v85 > v86 || v85 == v86 && ((v198 = *(a2 - 18), v199 = *(i + 24), v198 > v199) || v198 == v199 && (result = *(a2 - 7), result < *(i + 40))))
      {
        v250 = *i;
        v261 = *(i + 16);
        *v285 = *(i + 64);
        *&v285[16] = *(i + 80);
        v269 = *(i + 32);
        v277 = *(i + 48);
        v88 = *(a2 - 3);
        v87 = *(a2 - 2);
        v89 = *(a2 - 4);
        *(i + 73) = *(a2 - 23);
        *(i + 48) = v88;
        *(i + 64) = v87;
        *(i + 32) = v89;
        v90 = *(a2 - 5);
        *i = *v9;
        *(i + 16) = v90;
        *v9 = v250;
        *(a2 - 5) = v261;
        result = *&v269;
        *(a2 - 23) = *&v285[9];
        *(a2 - 3) = v277;
        *(a2 - 2) = *v285;
        *(a2 - 4) = v269;
      }

      return result;
    }

LABEL_9:
    if (v11 <= 2303)
    {
      v106 = (i + 96);
      v108 = i == a2 || v106 == a2;
      if (a4)
      {
        if (v108)
        {
          return result;
        }

        v109 = 0;
        v110 = i;
        while (2)
        {
          v111 = v110;
          v110 = v106;
          v112 = *(v111 + 152);
          v113 = *(v111 + 56);
          if (v112 > v113)
          {
            v114 = *(v111 + 120);
            goto LABEL_151;
          }

          if (v112 == v113)
          {
            v114 = *(v111 + 120);
            v126 = *(v111 + 24);
            if (v114 > v126 || v114 == v126 && (result = *(v111 + 136), result < *(v111 + 40)))
            {
LABEL_151:
              v226 = *(v110 + 16);
              v222 = *v110;
              v237 = *(v111 + 124);
              v241 = *(v111 + 132);
              v115 = *(v111 + 136);
              v116 = *(v111 + 144);
              *v254 = *(v111 + 156);
              *&v254[16] = *(v111 + 172);
              v117 = *(v111 + 64);
              *(v110 + 48) = *(v111 + 48);
              *(v110 + 64) = v117;
              *(v110 + 73) = *(v111 + 73);
              v118 = *(v111 + 32);
              *(v110 + 16) = *(v111 + 16);
              *(v110 + 32) = v118;
              v119 = i;
              *v110 = *v111;
              if (v111 != i)
              {
                v120 = v109;
                while (1)
                {
                  v121 = (i + v120);
                  v122 = *(i + v120 - 40);
                  if (v112 <= v122)
                  {
                    if (v112 != v122)
                    {
                      v119 = i + v120;
                      goto LABEL_167;
                    }

                    v123 = *(i + v120 - 72);
                    if (v114 <= v123 && (v114 != v123 || v115 >= *(i + v120 - 56)))
                    {
                      break;
                    }
                  }

                  v111 -= 96;
                  v124 = *(v121 - 3);
                  v121[2] = *(v121 - 4);
                  v121[3] = v124;
                  v121[4] = *(v121 - 2);
                  *(v121 + 73) = *(v121 - 23);
                  v125 = *(v121 - 5);
                  *v121 = *(v121 - 6);
                  v121[1] = v125;
                  v120 -= 96;
                  if (!v120)
                  {
                    v119 = i;
                    goto LABEL_167;
                  }
                }

                v119 = v111;
              }

LABEL_167:
              *(v119 + 16) = v226;
              *v119 = v222;
              *(v119 + 24) = v114;
              *(v119 + 28) = v237;
              *(v119 + 36) = v241;
              *(v119 + 40) = v115;
              *(v119 + 48) = v116;
              *(v119 + 56) = v112;
              *(v119 + 60) = *v254;
              result = *&v254[13];
              *(v119 + 73) = *&v254[13];
            }
          }

          v106 = (v110 + 96);
          v109 += 96;
          if ((v110 + 96) == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v108)
      {
        return result;
      }

      while (2)
      {
        v202 = a1;
        a1 = v106;
        v203 = *(v202 + 152);
        v204 = *(v202 + 56);
        if (v203 <= v204)
        {
          if (v203 == v204)
          {
            v205 = *(v202 + 120);
            v215 = *(v202 + 24);
            if (v205 > v215)
            {
              goto LABEL_250;
            }

            if (v205 == v215)
            {
              result = *(v202 + 136);
              if (result < *(v202 + 40))
              {
                goto LABEL_250;
              }
            }
          }
        }

        else
        {
          v205 = *(v202 + 120);
LABEL_250:
          v228 = *(a1 + 16);
          v225 = *a1;
          v240 = *(v202 + 124);
          v243 = *(v202 + 132);
          v206 = *(v202 + 136);
          v207 = *(v202 + 144);
          v208 = *(v202 + 156);
          v209 = *(v202 + 172);
          v210 = a1;
          *v257 = HIDWORD(v208);
          *&v257[4] = v209;
          while (1)
          {
            v211 = *(v210 - 3);
            v210[2] = *(v210 - 4);
            v210[3] = v211;
            v210[4] = *(v210 - 2);
            *(v210 + 73) = *(v210 - 23);
            v212 = *(v210 - 5);
            *v210 = *(v210 - 6);
            v210[1] = v212;
            v213 = *(v210 - 34);
            if (v203 <= v213)
            {
              if (v203 != v213)
              {
                break;
              }

              v214 = *(v210 - 42);
              if (v205 <= v214 && (v205 != v214 || v206 >= *(v210 - 19)))
              {
                break;
              }
            }

            v210 -= 6;
          }

          *(v210 - 10) = v228;
          *(v210 - 6) = v225;
          *(v210 - 18) = v205;
          *(v210 - 15) = v243;
          *(v210 - 68) = v240;
          *(v210 - 7) = v206;
          *(v210 - 6) = v207;
          *(v210 - 10) = v203;
          result = *&v208;
          *(v210 - 23) = *&v257[1];
          *(v210 - 36) = v208;
        }

        v106 = (a1 + 96);
        if ((a1 + 96) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v127 = (v12 - 2) >> 1;
      v128 = v127;
      while (2)
      {
        v129 = v128;
        if (v127 >= v128)
        {
          v130 = (2 * v128) | 1;
          v131 = i + 96 * v130;
          if (2 * v129 + 2 < v12)
          {
            v132 = *(v131 + 56);
            v133 = *(v131 + 152);
            if (v132 > v133 || v132 == v133 && ((v134 = *(v131 + 24), v135 = *(v131 + 120), v134 > v135) || v134 == v135 && *(v131 + 40) < *(v131 + 136)))
            {
              v131 += 96;
              v130 = 2 * v129 + 2;
            }
          }

          v136 = i + 96 * v129;
          v137 = *(v131 + 56);
          v138 = *(v136 + 56);
          if (v137 <= v138)
          {
            if (v137 == v138)
            {
              v139 = *(v131 + 24);
              v140 = *(v136 + 24);
              if (v139 <= v140)
              {
                if (v139 != v140)
                {
                  goto LABEL_186;
                }

                v140 = *(v131 + 24);
                if (*(v131 + 40) >= *(v136 + 40))
                {
                  goto LABEL_186;
                }
              }
            }

            else
            {
              v140 = *(v136 + 24);
LABEL_186:
              v227 = *(v136 + 16);
              v223 = *v136;
              v242 = *(v136 + 36);
              v238 = *(v136 + 28);
              v141 = *(v136 + 40);
              v142 = *(v136 + 48);
              *v255 = *(v136 + 60);
              *&v255[16] = *(v136 + 76);
              v143 = *(v131 + 16);
              *v136 = *v131;
              for (*(v136 + 16) = v143; ; *(v136 + 16) = v155)
              {
                v144 = *(v131 + 32);
                v145 = *(v131 + 48);
                v146 = *(v131 + 64);
                *(v136 + 73) = *(v131 + 73);
                *(v136 + 48) = v145;
                *(v136 + 64) = v146;
                *(v136 + 32) = v144;
                if (v127 < v130)
                {
                  goto LABEL_202;
                }

                v136 = v131;
                v147 = 2 * v130;
                v130 = (2 * v130) | 1;
                v131 = i + 96 * v130;
                v148 = v147 + 2;
                if (v148 < v12)
                {
                  v149 = *(v131 + 56);
                  v150 = *(v131 + 152);
                  if (v149 > v150 || v149 == v150 && ((v151 = *(v131 + 24), v152 = *(v131 + 120), v151 > v152) || v151 == v152 && *(v131 + 40) < *(v131 + 136)))
                  {
                    v131 += 96;
                    v130 = v148;
                  }
                }

                v153 = *(v131 + 56);
                if (v153 > v138)
                {
                  break;
                }

                if (v153 == v138)
                {
                  v154 = *(v131 + 24);
                  if (v154 > v140 || v154 == v140 && *(v131 + 40) < v141)
                  {
                    break;
                  }
                }

                v155 = *(v131 + 16);
                *v136 = *v131;
              }

              v131 = v136;
LABEL_202:
              *(v131 + 16) = v227;
              *v131 = v223;
              *(v131 + 24) = v140;
              *(v131 + 28) = v238;
              *(v131 + 36) = v242;
              *(v131 + 40) = v141;
              *(v131 + 48) = v142;
              *(v131 + 56) = v138;
              *(v131 + 60) = *v255;
              *(v131 + 73) = *&v255[13];
            }
          }
        }

        v128 = v129 - 1;
        if (v129)
        {
          continue;
        }

        break;
      }

      v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
      while (2)
      {
        v157 = 0;
        v256 = *i;
        v265 = *(i + 16);
        *v289 = *(i + 64);
        *&v289[16] = *(i + 80);
        v273 = *(i + 32);
        v281 = *(i + 48);
        v158 = i;
        do
        {
          v159 = v158;
          v160 = v158 + 96 * v157;
          v158 = v160 + 96;
          v161 = 2 * v157;
          v157 = (2 * v157) | 1;
          v162 = v161 + 2;
          if (v162 < v156)
          {
            v163 = *(v160 + 152);
            v164 = *(v160 + 248);
            if (v163 > v164 || v163 == v164 && ((v165 = *(v160 + 120), v166 = *(v160 + 216), v165 > v166) || v165 == v166 && *(v160 + 136) < *(v160 + 232)))
            {
              v158 = v160 + 192;
              v157 = v162;
            }
          }

          v167 = *(v158 + 16);
          *v159 = *v158;
          v159[1] = v167;
          v168 = *(v158 + 32);
          v169 = *(v158 + 48);
          v170 = *(v158 + 64);
          *(v159 + 73) = *(v158 + 73);
          v159[3] = v169;
          v159[4] = v170;
          v159[2] = v168;
        }

        while (v157 <= ((v156 - 2) >> 1));
        a2 -= 6;
        if (v158 == a2)
        {
          *v158 = v256;
          *(v158 + 16) = v265;
          result = *&v273;
          *(v158 + 73) = *&v289[9];
          *(v158 + 48) = v281;
          *(v158 + 64) = *v289;
          *(v158 + 32) = v273;
        }

        else
        {
          v171 = a2[1];
          *v158 = *a2;
          *(v158 + 16) = v171;
          v172 = a2[2];
          v173 = a2[3];
          v174 = a2[4];
          *(v158 + 73) = *(a2 + 73);
          *(v158 + 48) = v173;
          *(v158 + 64) = v174;
          *(v158 + 32) = v172;
          *(a2 + 73) = *&v289[9];
          a2[3] = v281;
          a2[4] = *v289;
          a2[2] = v273;
          result = *&v256;
          *a2 = v256;
          a2[1] = v265;
          v175 = v158 - i + 96;
          if (v175 >= 97)
          {
            v176 = 0xAAAAAAAAAAAAAAABLL * (v175 >> 5) - 2;
            v177 = v176 >> 1;
            v178 = (i + 96 * (v176 >> 1));
            v179 = *(v178 + 14);
            v180 = *(v158 + 56);
            if (v179 > v180)
            {
              v181 = *(v158 + 24);
              goto LABEL_218;
            }

            if (v179 == v180)
            {
              v196 = *(v178 + 6);
              v181 = *(v158 + 24);
              if (v196 > v181 || v196 == v181 && (result = *(v178 + 5), v181 = *(v178 + 6), result < *(v158 + 40)))
              {
LABEL_218:
                v246 = *(v158 + 16);
                v239 = *v158;
                v231 = *(v158 + 28);
                v234 = *(v158 + 36);
                v182 = *(v158 + 40);
                v183 = *(v158 + 48);
                *v224 = *(v158 + 60);
                *&v224[16] = *(v158 + 76);
                v184 = v178[2];
                v185 = *(v178 + 73);
                v186 = v178[4];
                *(v158 + 48) = v178[3];
                *(v158 + 64) = v186;
                *(v158 + 73) = v185;
                *(v158 + 32) = v184;
                v187 = v178[1];
                *v158 = *v178;
                *(v158 + 16) = v187;
                if (v176 >= 2)
                {
                  while (1)
                  {
                    v188 = v178;
                    v189 = v177 - 1;
                    v177 = (v177 - 1) >> 1;
                    v178 = (i + 96 * v177);
                    v190 = *(v178 + 14);
                    if (v190 <= v180)
                    {
                      if (v190 != v180)
                      {
                        break;
                      }

                      v191 = *(v178 + 6);
                      if (v191 <= v181 && (v191 != v181 || *(v178 + 5) >= v182))
                      {
                        break;
                      }
                    }

                    v192 = v178[1];
                    *v188 = *v178;
                    v188[1] = v192;
                    v193 = v178[2];
                    v194 = v178[3];
                    v195 = v178[4];
                    *(v188 + 73) = *(v178 + 73);
                    v188[3] = v194;
                    v188[4] = v195;
                    v188[2] = v193;
                    if (v189 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  v178 = v188;
                }

LABEL_233:
                *(v178 + 2) = v246;
                *v178 = v239;
                *(v178 + 6) = v181;
                *(v178 + 28) = v231;
                *(v178 + 9) = v234;
                *(v178 + 5) = v182;
                *(v178 + 6) = v183;
                *(v178 + 14) = v180;
                *(v178 + 60) = *v224;
                result = *&v224[13];
                *(v178 + 73) = *&v224[13];
              }
            }
          }
        }

        if (v156-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v13 = v12 >> 1;
    v14 = (i + 96 * (v12 >> 1));
    if (v11 <= 0x3000)
    {
      sub_10064C7B4((a1 + 96 * v13), a1, a2 - 6);
    }

    else
    {
      sub_10064C7B4(a1, (a1 + 96 * v13), a2 - 6);
      v15 = 3 * v13;
      v16 = (a1 + 96 * v13 - 96);
      sub_10064C7B4((a1 + 96), v16, a2 - 12);
      v17 = (a1 + 96 + 32 * v15);
      sub_10064C7B4((a1 + 192), v17, a2 - 18);
      sub_10064C7B4(v16, v14, v17);
      v247 = *a1;
      v258 = *(a1 + 16);
      *v282 = *(a1 + 64);
      *&v282[16] = *(a1 + 80);
      v266 = *(a1 + 32);
      v274 = *(a1 + 48);
      v19 = v14[3];
      v18 = v14[4];
      v20 = v14[2];
      *(a1 + 73) = *(v14 + 73);
      *(a1 + 48) = v19;
      *(a1 + 64) = v18;
      *(a1 + 32) = v20;
      v21 = v14[1];
      *a1 = *v14;
      *(a1 + 16) = v21;
      *v14 = v247;
      v14[1] = v258;
      *(v14 + 73) = *&v282[9];
      v14[3] = v274;
      v14[4] = *v282;
      v14[2] = v266;
    }

    --a3;
    if (a4)
    {
      v22 = *(a1 + 56);
LABEL_23:
      v25 = 0;
      v244 = *(a1 + 16);
      v235 = *a1;
      v26 = *(a1 + 24);
      v229 = *(a1 + 28);
      v232 = *(a1 + 36);
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      *v220 = *(a1 + 60);
      *&v220[16] = *(a1 + 76);
      while (1)
      {
        v29 = *(a1 + v25 + 152);
        if (v29 <= v22)
        {
          if (v29 != v22)
          {
            break;
          }

          v30 = *(a1 + v25 + 120);
          if (v30 <= v26 && (v30 != v26 || *(a1 + v25 + 136) >= v27))
          {
            break;
          }
        }

        v25 += 96;
      }

      v31 = a1 + v25 + 96;
      if (v25)
      {
        v32 = *(a2 - 10);
        v33 = a2 - 7;
        v34 = (a2 - 6);
        if (v32 <= v22)
        {
          do
          {
            if (v32 == v22)
            {
              v35 = *(v33 - 4);
              if (v35 > v26)
              {
                goto LABEL_54;
              }

              if (v35 == v26 && *v33 < v27)
              {
                break;
              }
            }

            v34 -= 12;
            v32 = *(v33 - 20);
            v33 -= 12;
          }

          while (v32 <= v22);
LABEL_37:
          v34 = v33 - 5;
        }
      }

      else
      {
        v34 = a2;
        if (v31 < a2)
        {
          v36 = *(a2 - 10);
          v34 = (a2 - 6);
          if (v36 <= v22)
          {
            v33 = a2 - 7;
            v34 = (a2 - 6);
            while (1)
            {
              v37 = v33 - 5;
              if (v36 != v22)
              {
                goto LABEL_50;
              }

              v38 = *(v33 - 4);
              if (v38 > v26)
              {
                break;
              }

              if (v38 == v26)
              {
                if (*v33 < v27 || v31 >= v37)
                {
                  break;
                }
              }

              else
              {
LABEL_50:
                if (v31 >= v37)
                {
                  v34 = v33 - 5;
                  break;
                }
              }

              v34 -= 12;
              v36 = *(v33 - 20);
              v33 -= 12;
              if (v36 > v22)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_54:
      i = v31;
      if (v31 < v34)
      {
        v40 = v34;
        do
        {
          v248 = *i;
          v259 = *(i + 16);
          *v283 = *(i + 64);
          *&v283[16] = *(i + 80);
          v267 = *(i + 32);
          v275 = *(i + 48);
          v42 = v40[3];
          v41 = v40[4];
          v43 = v40[2];
          *(i + 73) = *(v40 + 73);
          *(i + 48) = v42;
          *(i + 64) = v41;
          *(i + 32) = v43;
          v44 = v40[1];
          *i = *v40;
          *(i + 16) = v44;
          *v40 = v248;
          v40[1] = v259;
          *(v40 + 73) = *&v283[9];
          v40[3] = v275;
          v40[4] = *v283;
          v40[2] = v267;
          do
          {
            do
            {
              i += 96;
              v45 = *(i + 56);
            }

            while (v45 > v22);
            if (v45 != v22)
            {
              break;
            }

            v46 = *(i + 24);
          }

          while (v46 > v26 || v46 == v26 && *(i + 40) < v27);
          v47 = (v40 - 6);
          v48 = *(v40 - 10);
          if (v48 <= v22)
          {
            v49 = v40 - 7;
            do
            {
              if (v48 == v22)
              {
                v50 = *(v49 - 4);
                if (v50 > v26)
                {
                  break;
                }

                if (v50 == v26 && *v49 < v27)
                {
                  goto LABEL_70;
                }
              }

              v47 -= 12;
              v48 = *(v49 - 20);
              v49 -= 12;
            }

            while (v48 <= v22);
            v47 = v49 - 5;
          }

LABEL_70:
          v40 = v47;
        }

        while (i < v47);
      }

      v51 = (i - 96);
      if (i - 96 != a1)
      {
        v52 = *(i - 80);
        *a1 = *v51;
        *(a1 + 16) = v52;
        v53 = *(i - 64);
        v54 = *(i - 48);
        v55 = *(i - 32);
        *(a1 + 73) = *(i - 23);
        *(a1 + 48) = v54;
        *(a1 + 64) = v55;
        *(a1 + 32) = v53;
      }

      *(i - 80) = v244;
      *v51 = v235;
      *(i - 72) = v26;
      *(i - 60) = v232;
      *(i - 68) = v229;
      *(i - 56) = v27;
      *(i - 48) = v28;
      *(i - 40) = v22;
      *(i - 23) = *&v220[13];
      *(i - 36) = *v220;
      if (v31 < v34)
      {
        goto LABEL_76;
      }

      v56 = sub_10064CED4(a1, i - 96);
      if (sub_10064CED4(i, a2))
      {
        a2 = (i - 96);
        if (v56)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v56)
      {
LABEL_76:
        sub_1002EA134(a1, i - 96, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v22 = *(a1 - 40);
      v23 = *(a1 + 56);
      if (v22 > v23)
      {
        v22 = *(a1 + 56);
        goto LABEL_23;
      }

      if (v22 == v23)
      {
        v24 = *(a1 - 72);
        v57 = *(a1 + 24);
        if (v24 > v57)
        {
          goto LABEL_23;
        }

        if (v24 == v57)
        {
          if (*(a1 - 56) < *(a1 + 40))
          {
            goto LABEL_23;
          }

          v57 = *(a1 - 72);
        }
      }

      else
      {
        v57 = *(a1 + 24);
      }

      v245 = *(a1 + 16);
      v236 = *a1;
      v233 = *(a1 + 36);
      v230 = *(a1 + 28);
      v58 = *(a1 + 40);
      v59 = *(a1 + 48);
      *v221 = *(a1 + 60);
      *&v221[16] = *(a1 + 76);
      v60 = *(a2 - 10);
      if (v23 > v60 || v23 == v60 && ((v67 = *(a2 - 18), v57 > v67) || v57 == v67 && v58 < *(a2 - 7)))
      {
        i = a1 + 96;
        v61 = *(a1 + 152);
        if (v23 <= v61)
        {
          v62 = a1 + 136;
          do
          {
            if (v23 == v61)
            {
              v63 = *(v62 - 16);
              if (v57 > v63)
              {
                goto LABEL_87;
              }

              if (v57 == v63 && v58 < *v62)
              {
                break;
              }
            }

            i += 96;
            v61 = *(v62 + 112);
            v62 += 96;
          }

          while (v23 <= v61);
          i = v62 - 40;
        }
      }

      else
      {
        for (i = a1 + 96; i < a2; i += 96)
        {
          v68 = *(i + 56);
          if (v23 > v68)
          {
            break;
          }

          if (v23 == v68)
          {
            v69 = *(i + 24);
            if (v57 > v69 || v57 == v69 && v58 < *(i + 40))
            {
              break;
            }
          }
        }
      }

LABEL_87:
      v64 = a2;
      if (i < a2)
      {
        for (j = a2 - 7; ; j -= 12)
        {
          if (v23 <= v60)
          {
            if (v23 != v60)
            {
              break;
            }

            v66 = *(j - 4);
            if (v57 <= v66 && (v57 != v66 || v58 >= *j))
            {
              break;
            }
          }

          v60 = *(j - 20);
        }

        v64 = j - 5;
      }

      while (i < v64)
      {
        v249 = *i;
        v260 = *(i + 16);
        *v284 = *(i + 64);
        *&v284[16] = *(i + 80);
        v268 = *(i + 32);
        v276 = *(i + 48);
        v71 = *(v64 + 3);
        v70 = *(v64 + 4);
        v72 = *(v64 + 2);
        *(i + 73) = *(v64 + 73);
        *(i + 48) = v71;
        *(i + 64) = v70;
        *(i + 32) = v72;
        v73 = *(v64 + 1);
        *i = *v64;
        *(i + 16) = v73;
        *v64 = v249;
        *(v64 + 1) = v260;
        *(v64 + 73) = *&v284[9];
        *(v64 + 3) = v276;
        *(v64 + 4) = *v284;
        *(v64 + 2) = v268;
        v74 = i + 96;
        v75 = *(i + 152);
        if (v23 <= v75)
        {
          v76 = i + 136;
          do
          {
            if (v23 == v75)
            {
              v77 = *(v76 - 16);
              if (v57 > v77)
              {
                break;
              }

              if (v57 == v77 && v58 < *v76)
              {
                goto LABEL_109;
              }
            }

            v74 += 96;
            v75 = *(v76 + 112);
            v76 += 96;
          }

          while (v23 <= v75);
          i = v76 - 40;
        }

        else
        {
LABEL_109:
          i = v74;
        }

        do
        {
          do
          {
            v64 -= 12;
            v78 = *(v64 + 14);
          }

          while (v23 > v78);
          if (v23 != v78)
          {
            break;
          }

          v79 = *(v64 + 6);
        }

        while (v57 > v79 || v57 == v79 && v58 < v64[5]);
      }

      v80 = (i - 96);
      if (i - 96 != a1)
      {
        v81 = *(i - 80);
        *a1 = *v80;
        *(a1 + 16) = v81;
        v82 = *(i - 64);
        v83 = *(i - 48);
        v84 = *(i - 32);
        *(a1 + 73) = *(i - 23);
        *(a1 + 48) = v83;
        *(a1 + 64) = v84;
        *(a1 + 32) = v82;
      }

      a4 = 0;
      *(i - 80) = v245;
      *v80 = v236;
      *(i - 72) = v57;
      *(i - 60) = v233;
      *(i - 68) = v230;
      *(i - 56) = v58;
      *(i - 48) = v59;
      *(i - 40) = v23;
      result = *v221;
      *(i - 23) = *&v221[13];
      *(i - 36) = *v221;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v91 = (i + 192);
      result = sub_10064C7B4(i, (i + 96), (i + 192));
      v92 = *(a2 - 10);
      v93 = *(i + 248);
      if (v92 > v93 || v92 == v93 && ((v200 = *(a2 - 18), v201 = *(i + 216), v200 > v201) || v200 == v201 && (result = *(a2 - 7), result < *(i + 232))))
      {
        v270 = *(i + 224);
        v278 = *(i + 240);
        *v286 = *(i + 256);
        *&v286[16] = *(i + 272);
        v251 = *v91;
        v262 = *(i + 208);
        v94 = *(a2 - 5);
        *v91 = *v9;
        *(i + 208) = v94;
        v96 = *(a2 - 3);
        v95 = *(a2 - 2);
        v97 = *(a2 - 4);
        *(i + 265) = *(a2 - 23);
        *(i + 240) = v96;
        *(i + 256) = v95;
        *(i + 224) = v97;
        *v9 = v251;
        *(a2 - 5) = v262;
        result = *&v270;
        *(a2 - 23) = *&v286[9];
        *(a2 - 3) = v278;
        *(a2 - 2) = *v286;
        *(a2 - 4) = v270;
        v98 = *(i + 248);
        v99 = *(i + 152);
        if (v98 > v99 || v98 == v99 && ((v216 = *(i + 216), v217 = *(i + 120), v216 > v217) || v216 == v217 && (result = *(i + 232), result < *(i + 136))))
        {
          v271 = *(i + 128);
          v279 = *(i + 144);
          *v287 = *(i + 160);
          *&v287[16] = *(i + 176);
          v252 = *(i + 96);
          v263 = *(i + 112);
          v100 = *(i + 240);
          *(i + 128) = *(i + 224);
          *(i + 144) = v100;
          *(i + 160) = *(i + 256);
          *(i + 169) = *(i + 265);
          v101 = *(i + 208);
          *(i + 96) = *v91;
          *(i + 112) = v101;
          *v91 = v252;
          *(i + 208) = v263;
          *(i + 265) = *&v287[9];
          result = *&v279;
          *(i + 240) = v279;
          *(i + 256) = *v287;
          *(i + 224) = v271;
          v102 = *(i + 152);
          v103 = *(i + 56);
          if (v102 > v103 || v102 == v103 && ((v218 = *(i + 120), v219 = *(i + 24), v218 > v219) || v218 == v219 && (result = *(i + 136), result < *(i + 40))))
          {
            v253 = *i;
            v264 = *(i + 16);
            *v288 = *(i + 64);
            *&v288[16] = *(i + 80);
            v272 = *(i + 32);
            v280 = *(i + 48);
            *(i + 73) = *(i + 169);
            v104 = *(i + 160);
            *(i + 48) = *(i + 144);
            *(i + 64) = v104;
            v105 = *(i + 128);
            *(i + 16) = *(i + 112);
            *(i + 32) = v105;
            *i = *(i + 96);
            *(i + 96) = v253;
            *(i + 112) = v264;
            result = *&v272;
            *(i + 169) = *&v288[9];
            *(i + 144) = v280;
            *(i + 160) = *v288;
            *(i + 128) = v272;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_10064CA7C(i, i + 96, i + 192, (i + 288), a2 - 6);
    }

    goto LABEL_9;
  }

  return sub_10064C7B4(i, (i + 96), a2 - 6);
}

uint64_t sub_1002EB388(uint64_t *a1)
{
  v141 = 0;
  v2 = 0uLL;
  __src = 0u;
  v139 = 0;
  v138 = 0u;
  v137 = 0;
  *__p = 0u;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *(&__src + 1);
      if (*(&__src + 1) >= v141)
      {
        v7 = __src;
        v8 = *(&__src + 1) - __src;
        v9 = (*(&__src + 1) - __src) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v11 = v141 - __src;
        if ((v141 - __src) >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1000B9708(&__src, v12);
        }

        *(8 * v9) = *(v3 + 16);
        v6 = 8 * v9 + 8;
        memcpy(0, v7, v8);
        v13 = __src;
        *&__src = 0;
        *(&__src + 1) = v6;
        v141 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        **(&__src + 1) = *(v3 + 16);
        v6 = v5 + 8;
      }

      *(&__src + 1) = v6;
      v142[0] = *(v3 + 16);
      memset(buf, 0, sizeof(buf));
      sub_1002EBFD4(buf, v142, &v142[1], 1uLL);
      sub_1002EC048(&v138, buf);
      v14 = *(v3 + 84);
      v15 = __p[1];
      if (__p[1] >= v137)
      {
        v17 = __p[0];
        v18 = __p[1] - __p[0];
        v19 = (__p[1] - __p[0]) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v21 = v137 - __p[0];
        if ((v137 - __p[0]) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_1000B9708(__p, v22);
        }

        *(8 * v19) = v14;
        v16 = (8 * v19 + 8);
        memcpy(0, v17, v18);
        v23 = __p[0];
        __p[0] = 0;
        __p[1] = v16;
        v137 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *__p[1] = v14;
        v16 = v15 + 8;
      }

      __p[1] = v16;
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v3 += 96;
    }

    while (v3 != v4);
    v2 = __src;
  }

  sub_1002EC1B8(v134, v2, *(&v2 + 1));
  v24 = __src;
  v25 = __src + 8;
  v26 = *__src;
  if (__src != *(&__src + 1) && v25 != *(&__src + 1))
  {
    v27 = *__src;
    v28 = __src + 8;
    v29 = __src;
    v30 = (__src + 8);
    do
    {
      v31 = *v30++;
      v32 = v31;
      if (v27 < v31)
      {
        v27 = v32;
        v29 = v28;
      }

      v28 = v30;
    }

    while (v30 != *(&__src + 1));
    v33 = *v29;
    v34 = (__src + 8);
    do
    {
      v35 = *v34++;
      v36 = v35;
      if (v35 < v26)
      {
        v26 = v36;
        v24 = v25;
      }

      v25 = v34;
    }

    while (v34 != *(&__src + 1));
    v26 = v33;
  }

  v37 = *v24;
  if (v26 - v37 >= *(sub_1000F7F38() + 25))
  {
    v38 = *(sub_1000F7F38() + 44);
  }

  else
  {
    v38 = 2;
  }

  v39 = (*(&__src + 1) - __src) >> 3;
  if (v135 < v38)
  {
    v38 = v135;
  }

  if (v38 >= v39)
  {
    v40 = (v39 - 1);
  }

  else
  {
    v40 = v38;
  }

  if (v40 < 2)
  {
    v41 = 0;
    goto LABEL_89;
  }

  v125 = v40;
  sub_1002E8CDC(&v132, v40);
  v42 = v132;
  v43 = v133;
  if (v132 != v133)
  {
    v44 = 0;
    v45 = (0xAAAAAAAAAAAAAAABLL * ((*(&v138 + 1) - v138) >> 3) - 1) / v125;
    do
    {
      v46 = *(v138 + 24 * (++v44 * v45));
      v48 = v42[1];
      v47 = v42[2];
      if (v48 >= v47)
      {
        v50 = *v42;
        v51 = v48 - *v42;
        v52 = (v51 >> 3) + 1;
        if (v52 >> 61)
        {
          sub_10028C64C();
        }

        v53 = v47 - v50;
        if (v53 >> 2 > v52)
        {
          v52 = v53 >> 2;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          sub_1000B9708(v42, v54);
        }

        v55 = (8 * (v51 >> 3));
        *v55 = *v46;
        v49 = v55 + 1;
        memcpy(0, v50, v51);
        v56 = *v42;
        *v42 = 0;
        v42[1] = v49;
        v42[2] = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v48 = *v46;
        v49 = v48 + 1;
      }

      v42[1] = v49;
      v42 += 3;
    }

    while (v42 != v43);
  }

  v129 = 0;
  v130 = 0;
  v131 = 0;
  memset(v128, 0, sizeof(v128));
  if (!sub_1002E8F84(buf, &v132, &v138, __p, v125, v128, &v129))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v66 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, MultiModal, detection failed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LOWORD(v142[0]) = 0;
      v121 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLLocationCalculator::detectMultiModalDistribution(const std::vector<CLWifiAccessPoint> &)", "%s\n", v121);
      if (v121 != buf)
      {
        free(v121);
      }
    }

    v41 = 0;
    goto LABEL_86;
  }

  *buf = 0;
  sub_1002EC328(&v126, v125);
  v57 = v126;
  if (*(&v138 + 1) != v138)
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((*(&v138 + 1) - v138) >> 3);
    v59 = __p[0];
    v60 = v129;
    if (v58 <= 1)
    {
      v58 = 1;
    }

    do
    {
      v61 = *v59++;
      v62 = v61;
      LODWORD(v61) = *v60++;
      v57[LODWORD(v61)] = v62 + v57[LODWORD(v61)];
      --v58;
    }

    while (v58);
  }

  if (v57 == v127)
  {
    goto LABEL_77;
  }

  v63 = 0;
  v64 = v57;
  do
  {
    v65 = *v64++;
    if (v65 != 0.0)
    {
      ++v63;
    }
  }

  while (v64 != v127);
  if (v63 < 2)
  {
    goto LABEL_77;
  }

  if (v63 != 2)
  {
    if (v57 == v127)
    {
      v81 = v57;
    }

    else
    {
      v80 = v57 + 1;
      v81 = v57;
      if (v57 + 1 != v127)
      {
        v82 = *v57;
        v81 = v57;
        v83 = v57 + 1;
        do
        {
          v84 = *v83++;
          v85 = v84;
          if (v82 < v84)
          {
            v82 = v85;
            v81 = v80;
          }

          v80 = v83;
        }

        while (v83 != v127);
      }
    }

    v142[0] = 0;
    sub_1002EC328(buf, v125);
    v86 = 0;
    v87 = v128[0];
    v88 = *(v128[0] + 24 * ((v81 - v57) >> 3));
    v89 = *buf;
    do
    {
      v90 = *v87;
      v87 += 3;
      v89[v86++] = vabdd_f64(*v90, *v88);
    }

    while (v125 != v86);
    v91 = v89 + 1;
    v92 = v89 == *&buf[8] || v91 == *&buf[8];
    v93 = v89;
    if (!v92)
    {
      v94 = *v89;
      v93 = v89;
      v95 = v89 + 1;
      do
      {
        v96 = *v95++;
        v97 = v96;
        if (v94 < v96)
        {
          v94 = v97;
          v93 = v91;
        }

        v91 = v95;
      }

      while (v95 != *&buf[8]);
    }

    memset(v142, 0, 24);
    v98 = *(&v138 + 1);
    v99 = v138;
    if (*(&v138 + 1) != v138)
    {
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = (v93 - v89) >> 3;
      do
      {
        if (*(v129 + v102) != v103)
        {
          v104 = (*a1 + v100);
          if (v101 >= v142[2])
          {
            v109 = v142[0];
            v110 = v101 - v142[0];
            v111 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v142[0]) >> 5);
            v112 = v111 + 1;
            if (v111 + 1 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v142[2] - v142[0]) >> 5) > v112)
            {
              v112 = 0x5555555555555556 * ((v142[2] - v142[0]) >> 5);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v142[2] - v142[0]) >> 5) >= 0x155555555555555)
            {
              v113 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v113 = v112;
            }

            if (v113)
            {
              sub_1001A4428(v142, v113);
            }

            v114 = (32 * ((v101 - v142[0]) >> 5));
            v115 = v104[1];
            *v114 = *v104;
            v114[1] = v115;
            v116 = v104[2];
            v117 = v104[3];
            v118 = v104[5];
            v114[4] = v104[4];
            v114[5] = v118;
            v114[2] = v116;
            v114[3] = v117;
            v101 = (96 * v111 + 96);
            v119 = (96 * v111 - v110);
            memcpy(v119, v109, v110);
            v120 = v142[0];
            v142[0] = v119;
            v142[1] = v101;
            v142[2] = 0;
            if (v120)
            {
              operator delete(v120);
            }
          }

          else
          {
            v105 = v104[1];
            *v101 = *v104;
            *(v101 + 1) = v105;
            v106 = v104[2];
            v107 = v104[3];
            v108 = v104[5];
            *(v101 + 4) = v104[4];
            *(v101 + 5) = v108;
            *(v101 + 2) = v106;
            *(v101 + 3) = v107;
            v101 += 96;
          }

          v142[1] = v101;
          v98 = *(&v138 + 1);
          v99 = v138;
        }

        ++v102;
        v100 += 96;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v98 - v99) >> 3) > v102);
    }

    v41 = sub_1002EB388(v142);
    if (v142[0])
    {
      v142[1] = v142[0];
      operator delete(v142[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_78;
  }

  if (vabdd_f64(**v128[0], **(v128[0] + 24)) < *(sub_1000F7F38() + 23))
  {
    v68 = *v126;
    v69 = *(v126 + 1);
    if (v68 + v69 >= *(sub_1000F7F38() + 24))
    {
      goto LABEL_77;
    }
  }

  v70 = v126;
  if (v126 != v127)
  {
    v71 = (v126 + 8);
    if (v126 + 8 != v127)
    {
      v72 = *v126;
      v73 = (v126 + 8);
      do
      {
        v74 = *v73++;
        v75 = v74;
        if (v72 < v74)
        {
          v72 = v75;
          v70 = v71;
        }

        v71 = v73;
      }

      while (v73 != v127);
    }
  }

  v76 = *v70;
  if (v76 >= *(sub_1000F7F38() + 24))
  {
LABEL_77:
    v41 = 0;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v77 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v78 = **v128[0];
      v79 = **(v128[0] + 24);
      *buf = 134349568;
      *&buf[4] = v78;
      *&buf[12] = 2050;
      *&buf[14] = v79;
      *&buf[22] = 2050;
      v144 = v76;
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, MultiModal, detected, max cluster centers, %{public}0.3f, %{public}0.3f, max weight, %{public}0.3f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v122 = **v128[0];
      v123 = **(v128[0] + 24);
      LODWORD(v142[0]) = 134349568;
      *(v142 + 4) = v122;
      WORD2(v142[1]) = 2050;
      *(&v142[1] + 6) = v123;
      HIWORD(v142[2]) = 2050;
      v142[3] = *&v76;
      v124 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLLocationCalculator::detectMultiModalDistribution(const std::vector<CLWifiAccessPoint> &)", "%s\n", v124);
      if (v124 != buf)
      {
        free(v124);
      }
    }

    v41 = 1;
  }

LABEL_78:
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_86:
  *buf = v128;
  sub_1002EC52C(buf);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  *buf = &v132;
  sub_1002EC52C(buf);
LABEL_89:
  sub_1003C93BC(v134, v134[1]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *buf = &v138;
  sub_1002EC52C(buf);
  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }

  return v41;
}

void sub_1002EBEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  a43 = &a17;
  sub_1002EC52C(&a43);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  a43 = &a23;
  sub_1002EC52C(&a43);
  sub_1003C93BC(&a26, a27);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  a43 = &a32;
  sub_1002EC52C(&a43);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002EBFD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_1002EC02C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002EC048(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1002E8E00(a1, a2);
  }

  else
  {
    sub_1002E8F30(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002EC088(uint64_t a1)
{
  sub_1002EC0C0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002EC0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_1002EC120(void *a1, double *a2, double *a3)
{
  v3 = *sub_1002E8B40(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1002EC1B8(void *a1, double *a2, double *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1002EC120(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_1002EC23C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1002E8DA8(a1, a2);
  }

  sub_10028C64C();
}

double sub_1002EC288(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 != a3[1] - *a3)
  {
    sub_101870938();
  }

  if (v4 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 3;
  result = 0.0;
  do
  {
    v9 = *(v3 + 8 * v6) - *(*a3 + 8 * v6);
    result = result + v9 * v9;
    ++v6;
  }

  while (v7 > v6);
  return result;
}

uint64_t sub_1002EC2F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038AFD8(a1);
  }

  return a1;
}

void *sub_1002EC328(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100187DB8(result, a2);
  }

  return result;
}

void sub_1002EC3E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002EC400(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_100187DB8(v6, v10);
    }

    sub_10028C64C();
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

void sub_1002EC52C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002EC580(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1002EC580(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1002EC5D8(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1002EC750(a1);
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

      sub_1002EC23C(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_10038B028(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_10038B028(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_1002E95DC(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1002EC750(uint64_t *a1)
{
  if (*a1)
  {
    sub_1002EC580(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1002EC790(uint64_t *a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018F28B0();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = -1431655765 * ((a1[1] - *a1) >> 5);
    *buf = 67174657;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, reject outlier, num input accessPointWithWeights, %{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F2BA4(a1);
  }

  __src = 0;
  v125 = 0;
  v126 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    goto LABEL_58;
  }

  v8 = 0;
  do
  {
    if (*(v6 + 84) > 0.0)
    {
      if (v8 >= v126)
      {
        v13 = __src;
        v14 = v8 - __src;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __src) >> 5);
        v16 = v15 + 1;
        if (v15 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v126 - __src) >> 5) > v16)
        {
          v16 = 0x5555555555555556 * ((v126 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v126 - __src) >> 5) >= 0x155555555555555)
        {
          v17 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_1001A4428(&__src, v17);
        }

        v18 = (32 * ((v8 - __src) >> 5));
        v19 = *(v6 + 16);
        *v18 = *v6;
        v18[1] = v19;
        v20 = *(v6 + 32);
        v21 = *(v6 + 48);
        v22 = *(v6 + 80);
        v18[4] = *(v6 + 64);
        v18[5] = v22;
        v18[2] = v20;
        v18[3] = v21;
        v8 = (96 * v15 + 96);
        v23 = (96 * v15 - v14);
        memcpy(v18 - v14, v13, v14);
        v24 = __src;
        __src = v23;
        v125 = v8;
        v126 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v9 = *(v6 + 16);
        *v8 = *v6;
        *(v8 + 1) = v9;
        v10 = *(v6 + 32);
        v11 = *(v6 + 48);
        v12 = *(v6 + 80);
        *(v8 + 4) = *(v6 + 64);
        *(v8 + 5) = v12;
        *(v8 + 2) = v10;
        *(v8 + 3) = v11;
        v8 += 96;
      }

      v125 = v8;
    }

    v6 += 96;
  }

  while (v6 != v7);
  if (__src == v8)
  {
LABEL_58:
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v50 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, reject outlier, accessPointsWithValidWeights is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LOWORD(v127) = 0;
      v51 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::rejectOutlierAltitudes(const std::vector<CLWifiAccessPoint> &, std::vector<CLWifiAccessPoint> &)", "%s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174657;
      *&buf[4] = -1431655765 * ((v125 - __src) >> 5);
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, reject outlier, num accessPointsWithValidWeights, %{private}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v127 = 67174657;
      LODWORD(v128) = -1431655765 * ((v125 - __src) >> 5);
      v110 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::rejectOutlierAltitudes(const std::vector<CLWifiAccessPoint> &, std::vector<CLWifiAccessPoint> &)", "%s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }

    __p = 0;
    v122 = 0;
    v123 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v27 = __src;
    v28 = v125;
    if (__src == v125)
    {
      v49 = 0.0;
    }

    else
    {
      v29 = 0.0;
      do
      {
        v30 = v122;
        if (v122 >= v123)
        {
          v32 = __p;
          v33 = v122 - __p;
          v34 = (v122 - __p) >> 3;
          v35 = v34 + 1;
          if ((v34 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v36 = v123 - __p;
          if ((v123 - __p) >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1000B9708(&__p, v37);
          }

          *(8 * v34) = *(v27 + 2);
          v31 = 8 * v34 + 8;
          memcpy(0, v32, v33);
          v38 = __p;
          __p = 0;
          v122 = v31;
          v123 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v122 = *(v27 + 2);
          v31 = (v30 + 8);
        }

        v122 = v31;
        v39 = v27[21];
        v40 = v119;
        if (v119 >= v120)
        {
          v42 = v118;
          v43 = v119 - v118;
          v44 = (v119 - v118) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v46 = v120 - v118;
          if ((v120 - v118) >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_1000B9708(&v118, v47);
          }

          *(8 * v44) = v39;
          v41 = 8 * v44 + 8;
          memcpy(0, v42, v43);
          v48 = v118;
          v118 = 0;
          v119 = v41;
          v120 = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v119 = v39;
          v41 = (v40 + 1);
        }

        v119 = v41;
        v29 = v29 + v27[21];
        v27 += 24;
      }

      while (v27 != v28);
      v26 = 0.5;
      v49 = v29 * 0.5;
    }

    v52 = sub_1002ED49C(&__p, &v118, v26);
    v53 = v52;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v54 = __src;
    v55 = v125;
    if (__src != v125)
    {
      do
      {
        v56 = vabdd_f64(v54[2], v53);
        v136 = *(v54 + 2);
        v137 = *(v54 + 3);
        v138 = *(v54 + 4);
        v139 = *(v54 + 5);
        *buf = *v54;
        *&buf[16] = *(v54 + 1);
        v57 = v113;
        if (v113 >= v114)
        {
          v59 = 0x4EC4EC4EC4EC4EC5 * ((v113 - v112) >> 3);
          v60 = v59 + 1;
          if ((v59 + 1) > 0x276276276276276)
          {
            sub_10028C64C();
          }

          if (0x9D89D89D89D89D8ALL * ((v114 - v112) >> 3) > v60)
          {
            v60 = 0x9D89D89D89D89D8ALL * ((v114 - v112) >> 3);
          }

          if ((0x4EC4EC4EC4EC4EC5 * ((v114 - v112) >> 3)) >= 0x13B13B13B13B13BLL)
          {
            v61 = 0x276276276276276;
          }

          else
          {
            v61 = v60;
          }

          if (v61)
          {
            sub_1002EE5C8(&v112, v61);
          }

          v62 = 8 * ((v113 - v112) >> 3);
          *v62 = v56;
          *(v62 + 8) = *buf;
          *(v62 + 40) = v136;
          *(v62 + 56) = v137;
          *(v62 + 72) = v138;
          *(v62 + 88) = v139;
          *(v62 + 24) = *&buf[16];
          v58 = (104 * v59 + 104);
          memcpy((104 * v59 - (v113 - v112)), v112, v113 - v112);
          v63 = v112;
          v112 = (104 * v59 - (v113 - v112));
          v113 = v58;
          v114 = 0;
          if (v63)
          {
            operator delete(v63);
          }
        }

        else
        {
          *v113 = v56;
          *(v57 + 5) = v136;
          *(v57 + 7) = v137;
          *(v57 + 9) = v138;
          *(v57 + 11) = v139;
          *(v57 + 1) = *buf;
          v52 = *&buf[16];
          *(v57 + 3) = *&buf[16];
          v58 = v57 + 13;
        }

        v113 = v58;
        v64 = v116;
        if (v116 >= v117)
        {
          v66 = v115;
          v67 = v116 - v115;
          v68 = (v116 - v115) >> 3;
          v69 = v68 + 1;
          if ((v68 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v70 = v117 - v115;
          if ((v117 - v115) >> 2 > v69)
          {
            v69 = v70 >> 2;
          }

          v71 = v70 >= 0x7FFFFFFFFFFFFFF8;
          v72 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v71)
          {
            v72 = v69;
          }

          if (v72)
          {
            sub_1000B9708(&v115, v72);
          }

          *(8 * v68) = v56;
          v65 = 8 * v68 + 8;
          memcpy(0, v66, v67);
          v73 = v115;
          v115 = 0;
          v116 = v65;
          v117 = 0;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v116 = v56;
          v65 = (v64 + 1);
        }

        v116 = v65;
        v54 += 12;
      }

      while (v54 != v55);
    }

    v74 = sub_1002ED49C(&v115, &v118, v52);
    v75 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v113 - v112) >> 3));
    v76 = v74 + v74;
    if (v113 == v112)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75;
    }

    if (v76 >= 5.0)
    {
      v78 = v76;
    }

    else
    {
      v78 = 5.0;
    }

    sub_1002EE624(v112, v113, v77, 1);
    v79 = vcvtd_n_f64_u64(0xAAAAAAAAAAAAAAABLL * ((v125 - __src) >> 5), 1uLL);
    v80 = v112;
    v81 = v113;
    if (v112 != v113)
    {
      v82 = 0;
      v83 = 0.0;
      while (vabdd_f64(v80[3], v53) > v78)
      {
        if (v79 <= v82 || v83 >= v49)
        {
          v85 = *(a2 + 8);
          v86 = *(a2 + 16);
          if (v85 >= v86)
          {
            v87 = 0xAAAAAAAAAAAAAAABLL * ((v85 - *a2) >> 5);
            v88 = v87 + 1;
            if (v87 + 1 > 0x2AAAAAAAAAAAAAALL)
            {
              goto LABEL_154;
            }

            v89 = 0xAAAAAAAAAAAAAAABLL * ((v86 - *a2) >> 5);
            if (2 * v89 > v88)
            {
              v88 = 2 * v89;
            }

            if (v89 >= 0x155555555555555)
            {
              v90 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v90 = v88;
            }

            if (v90)
            {
              sub_1001A4428(a2, v90);
            }

            goto LABEL_124;
          }

LABEL_114:
          v92 = *(v80 + 3);
          *v85 = *(v80 + 1);
          v85[1] = v92;
          v93 = *(v80 + 5);
          v94 = *(v80 + 7);
          v95 = *(v80 + 11);
          v85[4] = *(v80 + 9);
          v85[5] = v95;
          v85[2] = v93;
          v85[3] = v94;
          v96 = (v85 + 6);
          goto LABEL_126;
        }

        ++v82;
        v83 = v83 + *(v80 + 23);
LABEL_127:
        v80 += 13;
        if (v80 == v81)
        {
          goto LABEL_128;
        }
      }

      v85 = *(a2 + 8);
      v91 = *(a2 + 16);
      if (v85 < v91)
      {
        goto LABEL_114;
      }

      v87 = 0xAAAAAAAAAAAAAAABLL * ((v85 - *a2) >> 5);
      v97 = v87 + 1;
      if (v87 + 1 > 0x2AAAAAAAAAAAAAALL)
      {
LABEL_154:
        sub_10028C64C();
      }

      v98 = 0xAAAAAAAAAAAAAAABLL * ((v91 - *a2) >> 5);
      if (2 * v98 > v97)
      {
        v97 = 2 * v98;
      }

      if (v98 >= 0x155555555555555)
      {
        v90 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v90 = v97;
      }

      if (v90)
      {
        sub_1001A4428(a2, v90);
      }

LABEL_124:
      v99 = 96 * v87;
      v100 = 96 * v90;
      v101 = *(v80 + 3);
      *v99 = *(v80 + 1);
      *(v99 + 16) = v101;
      v102 = *(v80 + 5);
      v103 = *(v80 + 7);
      v104 = *(v80 + 11);
      *(v99 + 64) = *(v80 + 9);
      *(v99 + 80) = v104;
      *(v99 + 32) = v102;
      *(v99 + 48) = v103;
      v96 = 96 * v87 + 96;
      v105 = *(a2 + 8) - *a2;
      v106 = 96 * v87 - v105;
      memcpy((v99 - v105), *a2, v105);
      v107 = *a2;
      *a2 = v106;
      *(a2 + 8) = v96;
      *(a2 + 16) = v100;
      if (v107)
      {
        operator delete(v107);
      }

LABEL_126:
      *(a2 + 8) = v96;
      goto LABEL_127;
    }

LABEL_128:
    if (qword_1025D4620 == -1)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    }

    else
    {
      sub_1018F29C8();
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v109 = p_info[197];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134284289;
      *&buf[4] = v53;
      *&buf[12] = 2049;
      *&buf[14] = v78;
      *&buf[22] = 2049;
      *&buf[24] = v79;
      LOWORD(v136) = 2049;
      *(&v136 + 2) = v49;
      _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, reject outlier, medianAltitude, %{private}.2f, maxDeviationFromMedian, %{private}.2f, maxNumApsToReject, %{private}.1f, maxWeightsToReject, %{private}.2f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v127 = 134284289;
      v128 = v53;
      v129 = 2049;
      v130 = v78;
      v131 = 2049;
      v132 = v79;
      v133 = 2049;
      v134 = v49;
      v111 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::rejectOutlierAltitudes(const std::vector<CLWifiAccessPoint> &, std::vector<CLWifiAccessPoint> &)", "%s\n", v111);
      if (v111 != buf)
      {
        free(v111);
      }
    }

    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }

    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    if (__p)
    {
      v122 = __p;
      operator delete(__p);
    }
  }

  if (__src)
  {
    v125 = __src;
    operator delete(__src);
  }
}

void sub_1002ED3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double sub_1002ED49C(uint64_t *a1, uint64_t *a2, double a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6 - *a1 != a2[1] - *a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F2B24();
    }

    v29 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v44 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v45 = 1024;
      v46 = 480;
      v47 = 2080;
      v48 = "values.size() == weights.size()";
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "Assert Failed, %s, %d, %s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018F2B38();
      }

      v37 = 136315650;
      v38 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v39 = 1024;
      v40 = 480;
      v41 = 2080;
      v42 = "values.size() == weights.size()";
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "static double CLLocationCalculator::findWeightedMedian(const std::vector<double> &, const std::vector<double> &)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    sub_1004E5DF8();
    v5 = *a1;
    v6 = a1[1];
  }

  if (v6 == v5)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F2B38();
    }

    v30 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v44 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v45 = 1024;
      v46 = 481;
      v47 = 2080;
      v48 = "values.size() > 0";
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "Assert Failed, %s, %d, %s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018F2B38();
      }

      v37 = 136315650;
      v38 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v39 = 1024;
      v40 = 481;
      v41 = 2080;
      v42 = "values.size() > 0";
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "static double CLLocationCalculator::findWeightedMedian(const std::vector<double> &, const std::vector<double> &)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    sub_1004E5DF8();
    v5 = *a1;
    v6 = a1[1];
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  if (v6 == v5)
  {
    v7 = 0;
    v19 = 0;
    v20 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = 0.0;
    do
    {
      v11 = *(v5 + 8 * v8);
      v12 = *(v9 + 8 * v8);
      if (v7 >= v36)
      {
        v13 = (v7 - __p) >> 4;
        if ((v13 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v14 = (v36 - __p) >> 3;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v36 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_1003E5FE8(&__p, v15);
        }

        v16 = (16 * v13);
        *v16 = v11;
        v16[1] = v12;
        v7 = 16 * v13 + 16;
        v17 = v16 - (v35 - __p);
        memcpy(v17, __p, v35 - __p);
        v18 = __p;
        __p = v17;
        v35 = v7;
        v36 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = v11;
        *(v7 + 8) = v12;
        v7 += 16;
      }

      v35 = v7;
      v9 = *a2;
      v10 = v10 + *(*a2 + 8 * v8++);
      v5 = *a1;
    }

    while (v8 < (a1[1] - *a1) >> 3);
    v19 = __p;
    a3 = 0.5;
    v20 = v10 * 0.5;
  }

  v21 = 126 - 2 * __clz((v7 - v19) >> 4);
  if (v7 == v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_1002EDC84(v19, v7, buf, v22, 1, a3);
  v23 = __p;
  if (__p == v35)
  {
LABEL_27:
    if (qword_1025D48A0 != -1)
    {
      sub_1018F2B38();
    }

    v26 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v44 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v45 = 1024;
      v46 = 501;
      v47 = 2080;
      v48 = "false";
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "Assert Failed, %s, %d, %s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F2B60(buf);
      v37 = 136315650;
      v38 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLLocationCalculator.mm";
      v39 = 1024;
      v40 = 501;
      v41 = 2080;
      v42 = "false";
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "static double CLLocationCalculator::findWeightedMedian(const std::vector<double> &, const std::vector<double> &)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    sub_1004E5DF8();
    v23 = __p;
    v27 = 1.79769313e308;
    if (!__p)
    {
      return v27;
    }

LABEL_33:
    v35 = v23;
    operator delete(v23);
    return v27;
  }

  v24 = 0.0;
  v25 = __p;
  while (1)
  {
    v24 = v24 + v25[1];
    if (v24 >= v20)
    {
      break;
    }

    v25 += 2;
    if (v25 == v35)
    {
      goto LABEL_27;
    }
  }

  v27 = *v25;
  if (__p)
  {
    goto LABEL_33;
  }

  return v27;
}

void sub_1002EDB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002EDB88(uint64_t result, double *a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = (result + 16);
  if ((result + 16) == a2)
  {
    return result;
  }

  v5 = 0;
  v6 = result;
  do
  {
    v7 = v4;
    result = sub_1002EE588(v4, v6);
    if (result != 0xFF)
    {
      goto LABEL_16;
    }

    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    v10 = *(v6 + 8);
    *(v6 + 16) = *v6;
    *(v7 + 1) = v10;
    v11 = v3;
    if (v6 == v3)
    {
      goto LABEL_15;
    }

    v12 = v5;
    while (1)
    {
      v13 = *(v3 + v12 - 16);
      if (v8 != v13)
      {
        if (v8 >= v13)
        {
          v11 = (v3 + v12);
          goto LABEL_15;
        }

        v14 = *(v3 + v12 - 8);
        goto LABEL_12;
      }

      v14 = *(v3 + v12 - 8);
      if (v9 >= v14)
      {
        break;
      }

LABEL_12:
      v6 -= 16;
      v15 = (v3 + v12);
      *v15 = v13;
      v15[1] = v14;
      v12 -= 16;
      if (!v12)
      {
        v11 = v3;
        goto LABEL_15;
      }
    }

    v11 = v6;
LABEL_15:
    *v11 = v8;
    v11[1] = v9;
LABEL_16:
    v4 = v7 + 2;
    v5 += 16;
    v6 = v7;
  }

  while (v7 + 2 != a2);
  return result;
}

double sub_1002EDC84(double *a1, double *a2, uint64_t a3, uint64_t a4, char a5, double result)
{
LABEL_1:
  v9 = a2 - 2;
  v86 = a2 - 1;
  v87 = a2 - 6;
  v88 = a2 - 4;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v82 = sub_1002EE588(v9, v10);
        if (v82 == -1)
        {
          v83 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v83;
          result = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      v76 = ~sub_1002EE588(v10 + 2, v10);
      v77 = sub_1002EE588(v9, v10 + 2);
      if (v76)
      {
        if (v77 != -1)
        {
          return result;
        }

        v78 = *(v10 + 2);
        v10[2] = *(a2 - 2);
        *(a2 - 2) = v78;
        v79 = *(v10 + 3);
        v86 = v10 + 3;
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v79;
        if (sub_1002EE588(v10 + 2, v10) != 0xFF)
        {
          return result;
        }

        v80 = *v10;
        *v10 = v10[2];
        v10[2] = v80;
        v81 = v10 + 1;
      }

      else
      {
        v81 = v10 + 1;
        v84 = *v10;
        if (v77 == -1)
        {
          *v10 = *(a2 - 2);
        }

        else
        {
          v85 = *(v10 + 1);
          v10[3] = v10[1];
          v81 = v10 + 3;
          v10[2] = v84;
          *v10 = v85;
          if (sub_1002EE588(v9, v10 + 2) != 0xFF)
          {
            return result;
          }

          v84 = v10[2];
          v10[2] = *(a2 - 2);
        }

        *(a2 - 2) = v84;
      }

      result = *v81;
      *v81 = *v86;
      *v86 = result;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {

      return sub_10064ADC4(v10, (v10 + 2), (v10 + 4), (v10 + 6), v9);
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_1002EDB88(v10, a2);
      }

      else
      {

        sub_10064AEE4(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_10064B58C(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    v90 = v12;
    if (v13 >= 0x81)
    {
      v16 = ~sub_1002EE588(&v10[2 * (v13 >> 1)], v10);
      v17 = sub_1002EE588(v9, v15);
      if (v16)
      {
        if (v17 == -1)
        {
          v18 = *v15;
          *v15 = *(a2 - 2);
          *(a2 - 2) = v18;
          v19 = v15 + 1;
          v20 = *(v15 + 1);
          v15[1] = *(a2 - 1);
          *(a2 - 1) = v20;
          if (sub_1002EE588(v15, v10) == 0xFF)
          {
            v21 = *v10;
            *v10 = *v15;
            v22 = (v10 + 1);
            *v15 = v21;
            goto LABEL_29;
          }
        }
      }

      else
      {
        v22 = (v10 + 1);
        v30 = *v10;
        if (v17 == -1)
        {
          *v10 = *v9;
        }

        else
        {
          v31 = *(v10 + 1);
          *v10 = *v15;
          *(v15 + 1) = v31;
          v22 = (v15 + 1);
          *v15 = v30;
          if (sub_1002EE588(v9, v15) != 0xFF)
          {
            goto LABEL_30;
          }

          v30 = *v15;
          *v15 = *v9;
        }

        *v9 = v30;
        v19 = a2 - 1;
LABEL_29:
        v34 = *v22;
        *v22 = *v19;
        *v19 = v34;
      }

LABEL_30:
      v35 = v15 - 2;
      v36 = ~sub_1002EE588(v15 - 2, a1 + 2);
      v37 = sub_1002EE588(v88, v15 - 2);
      if (v36)
      {
        if (v37 == -1)
        {
          v38 = *v35;
          *v35 = *(a2 - 4);
          *(a2 - 4) = v38;
          v39 = v15 - 1;
          v40 = *(v15 - 1);
          *(v15 - 1) = *(a2 - 3);
          *(a2 - 3) = v40;
          if (sub_1002EE588(v15 - 2, a1 + 2) == 0xFF)
          {
            v41 = *(a1 + 2);
            a1[2] = *v35;
            *v35 = v41;
            v42 = a1 + 3;
            goto LABEL_41;
          }
        }
      }

      else
      {
        v43 = a1[2];
        v42 = a1 + 3;
        if (v37 == -1)
        {
          v45 = a2 - 4;
          a1[2] = *v88;
        }

        else
        {
          v44 = *v42;
          *(a1 + 1) = *v35;
          *(v15 - 1) = v44;
          v42 = v15 - 1;
          *v35 = v43;
          if (sub_1002EE588(v88, v15 - 2) != 0xFF)
          {
            goto LABEL_42;
          }

          v43 = *v35;
          v45 = a2 - 4;
          *v35 = *v88;
        }

        *v45 = v43;
        v39 = a2 - 3;
LABEL_41:
        v46 = *v42;
        *v42 = *v39;
        *v39 = v46;
      }

LABEL_42:
      v47 = a3;
      v48 = &a1[2 * v14 + 2];
      v49 = ~sub_1002EE588(v48, a1 + 4);
      v50 = sub_1002EE588(v87, v48);
      if (v49)
      {
        if (v50 == -1)
        {
          v51 = *v48;
          *v48 = *(a2 - 6);
          *(a2 - 6) = v51;
          v52 = v48 + 1;
          v53 = *(v48 + 1);
          v48[1] = *(a2 - 5);
          *(a2 - 5) = v53;
          if (sub_1002EE588(&a1[2 * v14 + 2], a1 + 4) == 0xFF)
          {
            v54 = *(a1 + 4);
            a1[4] = *v48;
            *v48 = v54;
            v55 = (a1 + 5);
            goto LABEL_51;
          }
        }
      }

      else
      {
        v56 = a1[4];
        v55 = (a1 + 5);
        if (v50 == -1)
        {
          v58 = a2 - 6;
          a1[4] = *v87;
        }

        else
        {
          v57 = *v55;
          *(a1 + 2) = *v48;
          *(v48 + 1) = v57;
          v55 = (v48 + 1);
          *v48 = v56;
          if (sub_1002EE588(v87, &a1[2 * v14 + 2]) != 0xFF)
          {
            goto LABEL_52;
          }

          v56 = *v48;
          v58 = a2 - 6;
          *v48 = *v87;
        }

        *v58 = v56;
        v52 = a2 - 5;
LABEL_51:
        v59 = *v55;
        *v55 = *v52;
        *v52 = v59;
      }

LABEL_52:
      v60 = ~sub_1002EE588(v15, v15 - 2);
      v61 = sub_1002EE588(&a1[2 * v14 + 2], v15);
      if (v60)
      {
        a3 = v47;
        v9 = a2 - 2;
        if (v61 == -1)
        {
          v62 = *v15;
          *v15 = *v48;
          *v48 = v62;
          if (sub_1002EE588(v15, v15 - 2) == 0xFF)
          {
            v63 = *v35;
            *v35 = *v15;
            v64 = v15 - 1;
            *v15 = v63;
            goto LABEL_61;
          }
        }
      }

      else
      {
        v65 = *v35;
        a3 = v47;
        if (v61 == -1)
        {
          *v35 = *v48;
          *v48 = v65;
          v64 = v15 - 1;
          v9 = a2 - 2;
        }

        else
        {
          v66 = *v15;
          v15[1] = *(v15 - 1);
          *v15 = v65;
          *v35 = v66;
          v9 = a2 - 2;
          if (sub_1002EE588(&a1[2 * v14 + 2], v15) != 0xFF)
          {
            goto LABEL_62;
          }

          v67 = *v15;
          *v15 = *v48;
          *v48 = v67;
          v64 = v15 + 1;
        }

        ++v14;
LABEL_61:
        v68 = &a1[2 * v14];
        v69 = *v64;
        *v64 = v68[1];
        *(v68 + 1) = v69;
      }

LABEL_62:
      v70 = *a1;
      *a1 = *v15;
      v28 = (a1 + 1);
      *v15 = v70;
      v29 = v15 + 1;
LABEL_63:
      v71 = *v28;
      *v28 = *v29;
      *v29 = v71;
      goto LABEL_64;
    }

    v23 = ~sub_1002EE588(v10, &v10[2 * (v13 >> 1)]);
    v24 = sub_1002EE588(v9, v10);
    if (!v23)
    {
      v28 = (v15 + 1);
      v32 = *v15;
      if (v24 == -1)
      {
        *v15 = *v9;
      }

      else
      {
        v33 = *(v15 + 1);
        *v15 = *v10;
        *(v10 + 1) = v33;
        v28 = (v10 + 1);
        *v10 = v32;
        if (sub_1002EE588(v9, v10) != 0xFF)
        {
          goto LABEL_64;
        }

        v32 = *v10;
        *v10 = *v9;
      }

      *v9 = v32;
      v29 = a2 - 1;
      goto LABEL_63;
    }

    if (v24 == -1)
    {
      v25 = *v10;
      *v10 = *(a2 - 2);
      *(a2 - 2) = v25;
      v26 = *(v10 + 1);
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v26;
      if (sub_1002EE588(v10, v15) == 0xFF)
      {
        v27 = *v15;
        *v15 = *v10;
        *v10 = v27;
        v28 = (v15 + 1);
        v29 = v10 + 1;
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && sub_1002EE588(a1 - 2, a1) != 0xFF)
    {
      v10 = sub_10064AFA0(a1, a2);
      v73 = v90;
      goto LABEL_71;
    }

    v72 = sub_10064B0D8(a1, a2);
    v73 = v90;
    if ((v74 & 1) == 0)
    {
      goto LABEL_69;
    }

    v75 = sub_10064B1FC(a1, v72);
    v10 = v72 + 2;
    if (sub_10064B1FC((v72 + 2), a2))
    {
      a4 = -v90;
      a2 = v72;
      if (v75)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v90 + 1;
    if (!v75)
    {
LABEL_69:
      sub_1002EDC84(a1, v72, a3, -v90, a5 & 1);
      v10 = v72 + 2;
LABEL_71:
      a5 = 0;
      a4 = -v73;
      goto LABEL_2;
    }
  }

  return sub_10064ABEC(v10, (v10 + 2), (v10 + 4), v9);
}

uint64_t sub_1002EE588(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    LODWORD(v2) = -127;
  }

  if (*a1 > *a2)
  {
    LODWORD(v2) = 1;
  }

  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = v2;
  }

  if (!v2)
  {
    v3 = a1[1];
    v4 = a2[1];
    if (v3 == v4)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      LODWORD(v2) = -127;
    }

    if (v3 > v4)
    {
      LODWORD(v2) = 1;
    }

    if (v3 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

void sub_1002EE5C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1002EE624(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = (a2 - 96);
  v8 = (a2 - 200);
  v279 = (a2 - 312);
  v9 = (a2 - 304);
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v10) >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v188 = *(a2 - 104);
      v189 = *v10;
      if (v188 > *v10)
      {
        *v10 = v188;
        *(a2 - 104) = v189;
        goto LABEL_113;
      }

      return;
    }

LABEL_9:
    if (v11 <= 2495)
    {
      v197 = v10 + 104;
      v199 = v10 == a2 || v197 == a2;
      if (a4)
      {
        if (!v199)
        {
          v200 = 0;
          v201 = v10;
          do
          {
            v202 = v197;
            v203 = *(v201 + 104);
            if (v203 > *v201)
            {
              v323 = *(v201 + 112);
              v357 = *(v201 + 128);
              *&v459[9] = *(v201 + 185);
              v425 = *(v201 + 160);
              *v459 = *(v201 + 176);
              v391 = *(v201 + 144);
              v204 = v200;
              v205 = *v201;
              while (1)
              {
                v206 = v10 + v204;
                *(v206 + 104) = v205;
                v207 = *(v10 + v204 + 56);
                *(v206 + 144) = *(v10 + v204 + 40);
                *(v206 + 160) = v207;
                *(v206 + 176) = *(v10 + v204 + 72);
                *(v206 + 185) = *(v10 + v204 + 81);
                v208 = *(v10 + v204 + 24);
                *(v206 + 112) = *(v10 + v204 + 8);
                *(v206 + 128) = v208;
                if (!v204)
                {
                  break;
                }

                v205 = *(v206 - 104);
                v204 -= 104;
                if (v203 <= v205)
                {
                  v209 = (v10 + v204 + 104);
                  goto LABEL_133;
                }
              }

              v209 = v10;
LABEL_133:
              *v209 = v203;
              *(v206 + 24) = v357;
              *(v206 + 8) = v323;
              *(v206 + 81) = *&v459[9];
              *(v206 + 72) = *v459;
              *(v206 + 56) = v425;
              *(v206 + 40) = v391;
            }

            v197 = v202 + 104;
            v200 += 104;
            v201 = v202;
          }

          while (v202 + 104 != a2);
        }
      }

      else if (!v199)
      {
        v264 = (v10 + 112);
        do
        {
          v265 = v197;
          v266 = *(a1 + 104);
          if (v266 > *a1)
          {
            v328 = *(a1 + 112);
            v362 = *(a1 + 128);
            *&v464[9] = *(a1 + 185);
            v430 = *(a1 + 160);
            *v464 = *(a1 + 176);
            v396 = *(a1 + 144);
            v267 = v264;
            v268 = *a1;
            do
            {
              *(v267 - 1) = v268;
              v269 = *(v267 - 56);
              v267[2] = *(v267 - 72);
              v267[3] = v269;
              v267[4] = *(v267 - 40);
              *(v267 + 73) = *(v267 - 31);
              v270 = *(v267 - 88);
              *v267 = *(v267 - 104);
              v267[1] = v270;
              v268 = *(v267 - 27);
              v267 = (v267 - 104);
            }

            while (v266 > v268);
            *(v267 - 1) = v266;
            *v267 = v328;
            v267[1] = v362;
            *(v267 + 73) = *&v464[9];
            v267[3] = v430;
            v267[4] = *v464;
            v267[2] = v396;
          }

          v197 = v265 + 104;
          v264 = (v264 + 104);
          a1 = v265;
        }

        while (v265 + 104 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return;
      }

      v210 = (v12 - 2) >> 1;
      v211 = v210;
      do
      {
        v212 = v211;
        if (v210 >= v211)
        {
          v213 = (2 * v211) | 1;
          v214 = v10 + 104 * v213;
          if (2 * v212 + 2 < v12 && *v214 > *(v214 + 104))
          {
            v214 += 104;
            v213 = 2 * v212 + 2;
          }

          v215 = v10 + 104 * v212;
          v216 = *v214;
          v217 = *v215;
          if (*v214 <= *v215)
          {
            v324 = *(v215 + 8);
            v358 = *(v215 + 24);
            *&v460[9] = *(v215 + 81);
            v426 = *(v215 + 56);
            *v460 = *(v215 + 72);
            v392 = *(v215 + 40);
            do
            {
              v218 = v215;
              v215 = v214;
              *v218 = v216;
              v219 = *(v214 + 8);
              *(v218 + 24) = *(v214 + 24);
              *(v218 + 8) = v219;
              v220 = *(v214 + 40);
              v221 = *(v214 + 56);
              v222 = *(v214 + 72);
              *(v218 + 81) = *(v214 + 81);
              *(v218 + 72) = v222;
              *(v218 + 56) = v221;
              *(v218 + 40) = v220;
              if (v210 < v213)
              {
                break;
              }

              v223 = 2 * v213;
              v213 = (2 * v213) | 1;
              v214 = v10 + 104 * v213;
              v224 = v223 + 2;
              if (v224 < v12 && *v214 > *(v214 + 104))
              {
                v214 += 104;
                v213 = v224;
              }

              v216 = *v214;
            }

            while (*v214 <= v217);
            *v215 = v217;
            *(v215 + 24) = v358;
            *(v215 + 8) = v324;
            *(v215 + 81) = *&v460[9];
            *(v215 + 72) = *v460;
            *(v215 + 56) = v426;
            *(v215 + 40) = v392;
          }
        }

        v211 = v212 - 1;
      }

      while (v212);
      v225 = 0x4EC4EC4EC4EC4EC5 * (v11 >> 3);
      while (2)
      {
        v226 = 0;
        v227 = *v10;
        v283 = *(v10 + 8);
        v286 = *(v10 + 24);
        *&v295[9] = *(v10 + 81);
        v292 = *(v10 + 56);
        *v295 = *(v10 + 72);
        v289 = *(v10 + 40);
        v228 = v10;
        do
        {
          v229 = v228;
          v230 = v228 + 104 * v226;
          v228 = v230 + 104;
          v231 = 2 * v226;
          v226 = (2 * v226) | 1;
          v232 = v231 + 2;
          if (v232 < v225)
          {
            v234 = *(v230 + 208);
            v233 = v230 + 208;
            if (*(v233 - 104) > v234)
            {
              v228 = v233;
              v226 = v232;
            }
          }

          *v229 = *v228;
          v235 = *(v228 + 8);
          *(v229 + 24) = *(v228 + 24);
          *(v229 + 8) = v235;
          v236 = *(v228 + 40);
          v237 = *(v228 + 56);
          v238 = *(v228 + 72);
          *(v229 + 81) = *(v228 + 81);
          *(v229 + 72) = v238;
          *(v229 + 56) = v237;
          *(v229 + 40) = v236;
        }

        while (v226 <= ((v225 - 2) >> 1));
        if (v228 != a2 - 104)
        {
          *v228 = *(a2 - 104);
          v239 = *(a2 - 96);
          *(v228 + 24) = *(a2 - 80);
          *(v228 + 8) = v239;
          v240 = *(a2 - 64);
          v241 = *(a2 - 48);
          v242 = *(a2 - 32);
          *(v228 + 81) = *(a2 - 23);
          *(v228 + 72) = v242;
          *(v228 + 56) = v241;
          *(v228 + 40) = v240;
          *(a2 - 104) = v227;
          *(a2 - 96) = v283;
          *(a2 - 80) = v286;
          *(a2 - 23) = *&v295[9];
          *(a2 - 48) = v292;
          *(a2 - 32) = *v295;
          *(a2 - 64) = v289;
          v243 = v228 - v10 + 104;
          if (v243 >= 105)
          {
            v244 = (0x4EC4EC4EC4EC4EC5 * (v243 >> 3) - 2) >> 1;
            v245 = v10 + 104 * v244;
            v246 = *v245;
            v247 = *v228;
            if (*v245 > *v228)
            {
              v325 = *(v228 + 8);
              v359 = *(v228 + 24);
              *&v461[9] = *(v228 + 81);
              v427 = *(v228 + 56);
              *v461 = *(v228 + 72);
              v393 = *(v228 + 40);
              do
              {
                v248 = v228;
                v228 = v245;
                *v248 = v246;
                v249 = *(v245 + 8);
                *(v248 + 24) = *(v245 + 24);
                *(v248 + 8) = v249;
                v250 = *(v245 + 40);
                v251 = *(v245 + 56);
                v252 = *(v245 + 72);
                *(v248 + 81) = *(v245 + 81);
                *(v248 + 72) = v252;
                *(v248 + 56) = v251;
                *(v248 + 40) = v250;
                if (!v244)
                {
                  break;
                }

                v244 = (v244 - 1) >> 1;
                v245 = v10 + 104 * v244;
                v246 = *v245;
              }

              while (*v245 > v247);
              *v228 = v247;
              *(v228 + 24) = v359;
              *(v228 + 8) = v325;
              v253 = v393;
              v254 = v427;
              v255 = *v461;
              v256 = *&v461[9];
LABEL_165:
              *(v228 + 81) = v256;
              *(v228 + 72) = v255;
              *(v228 + 56) = v254;
              *(v228 + 40) = v253;
            }
          }

          a2 -= 104;
          v187 = v225-- <= 2;
          if (v187)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v228 = v227;
      *(v228 + 24) = v286;
      *(v228 + 8) = v283;
      v253 = v289;
      v254 = v292;
      v255 = *v295;
      v256 = *&v295[9];
      goto LABEL_165;
    }

    v13 = v12 >> 1;
    v14 = v10 + 104 * (v12 >> 1);
    v15 = *(a2 - 104);
    if (v11 >= 0x3401)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 <= *v10)
      {
        if (v15 > v16)
        {
          *v14 = v15;
          *(a2 - 104) = v16;
          v298 = *(v14 + 8);
          v332 = *(v14 + 24);
          *v434 = *(v14 + 72);
          *&v434[16] = *(v14 + 88);
          v366 = *(v14 + 40);
          v400 = *(v14 + 56);
          v29 = *(a2 - 48);
          v28 = *(a2 - 32);
          v30 = *(a2 - 23);
          *(v14 + 40) = *(a2 - 64);
          *(v14 + 81) = v30;
          *(v14 + 72) = v28;
          *(v14 + 56) = v29;
          v31 = *v7;
          *(v14 + 24) = *(a2 - 80);
          *(v14 + 8) = v31;
          *v7 = v298;
          *(a2 - 80) = v332;
          *(a2 - 23) = *&v434[9];
          *(a2 - 48) = v400;
          *(a2 - 32) = *v434;
          *(a2 - 64) = v366;
          v32 = *v10;
          if (*v14 > *v10)
          {
            *v10 = *v14;
            *v14 = v32;
            v299 = *(v10 + 8);
            v333 = *(v10 + 24);
            *v435 = *(v10 + 72);
            *&v435[16] = *(v10 + 88);
            v367 = *(v10 + 40);
            v401 = *(v10 + 56);
            v33 = *(v14 + 56);
            v34 = *(v14 + 72);
            v35 = *(v14 + 81);
            *(v10 + 40) = *(v14 + 40);
            *(v10 + 81) = v35;
            *(v10 + 72) = v34;
            *(v10 + 56) = v33;
            v36 = *(v14 + 8);
            *(v10 + 24) = *(v14 + 24);
            *(v10 + 8) = v36;
            *(v14 + 24) = v333;
            *(v14 + 8) = v299;
            *(v14 + 81) = *&v435[9];
            *(v14 + 72) = *v435;
            *(v14 + 56) = v401;
            *(v14 + 40) = v367;
          }
        }
      }

      else
      {
        if (v15 > v16)
        {
          *v10 = v15;
          *(a2 - 104) = v17;
          v296 = *(v10 + 8);
          v330 = *(v10 + 24);
          *v432 = *(v10 + 72);
          *&v432[16] = *(v10 + 88);
          v364 = *(v10 + 40);
          v398 = *(v10 + 56);
          v19 = *(a2 - 48);
          v18 = *(a2 - 32);
          v20 = *(a2 - 23);
          *(v10 + 40) = *(a2 - 64);
          *(v10 + 81) = v20;
          *(v10 + 72) = v18;
          *(v10 + 56) = v19;
          v21 = *v7;
          *(v10 + 24) = *(a2 - 80);
          *(v10 + 8) = v21;
          goto LABEL_26;
        }

        *v10 = v16;
        *v14 = v17;
        v302 = *(v10 + 8);
        v336 = *(v10 + 24);
        *v438 = *(v10 + 72);
        *&v438[16] = *(v10 + 88);
        v370 = *(v10 + 40);
        v404 = *(v10 + 56);
        v46 = *(v14 + 56);
        v47 = *(v14 + 72);
        v48 = *(v14 + 81);
        *(v10 + 40) = *(v14 + 40);
        *(v10 + 81) = v48;
        *(v10 + 72) = v47;
        *(v10 + 56) = v46;
        v49 = *(v14 + 8);
        *(v10 + 24) = *(v14 + 24);
        *(v10 + 8) = v49;
        *(v14 + 24) = v336;
        *(v14 + 8) = v302;
        *(v14 + 81) = *&v438[9];
        *(v14 + 72) = *v438;
        *(v14 + 56) = v404;
        *(v14 + 40) = v370;
        v50 = *(a2 - 104);
        v51 = *v14;
        if (v50 > *v14)
        {
          *v14 = v50;
          *(a2 - 104) = v51;
          v296 = *(v14 + 8);
          v330 = *(v14 + 24);
          *v432 = *(v14 + 72);
          *&v432[16] = *(v14 + 88);
          v364 = *(v14 + 40);
          v398 = *(v14 + 56);
          v53 = *(a2 - 48);
          v52 = *(a2 - 32);
          v54 = *(a2 - 23);
          *(v14 + 40) = *(a2 - 64);
          *(v14 + 81) = v54;
          *(v14 + 72) = v52;
          *(v14 + 56) = v53;
          v55 = *v7;
          *(v14 + 24) = *(a2 - 80);
          *(v14 + 8) = v55;
LABEL_26:
          *v7 = v296;
          *(a2 - 80) = v330;
          *(a2 - 23) = *&v432[9];
          *(a2 - 48) = v398;
          *(a2 - 32) = *v432;
          *(a2 - 64) = v364;
        }
      }

      v56 = v10 + 104 * v13;
      v58 = *(v56 - 104);
      v57 = v56 - 104;
      v59 = v58;
      v60 = *(v10 + 104);
      v61 = *(a2 - 208);
      if (v58 <= v60)
      {
        if (v61 > v59)
        {
          *v57 = v61;
          *(a2 - 208) = v59;
          v304 = *(v57 + 8);
          v338 = *(v57 + 24);
          *v440 = *(v57 + 72);
          *&v440[16] = *(v57 + 88);
          v372 = *(v57 + 40);
          v406 = *(v57 + 56);
          v67 = *(a2 - 152);
          v66 = *(a2 - 136);
          v68 = *(a2 - 127);
          *(v57 + 40) = *(a2 - 168);
          *(v57 + 81) = v68;
          *(v57 + 72) = v66;
          *(v57 + 56) = v67;
          v69 = *v8;
          *(v57 + 24) = *(a2 - 184);
          *(v57 + 8) = v69;
          *v8 = v304;
          *(a2 - 184) = v338;
          *(a2 - 127) = *&v440[9];
          *(a2 - 152) = v406;
          *(a2 - 136) = *v440;
          *(a2 - 168) = v372;
          v70 = *(v10 + 104);
          if (*v57 > v70)
          {
            *(v10 + 104) = *v57;
            *v57 = v70;
            v373 = *(v10 + 144);
            v407 = *(v10 + 160);
            *v441 = *(v10 + 176);
            *&v441[16] = *(v10 + 192);
            v305 = *(v10 + 112);
            v339 = *(v10 + 128);
            v71 = *(v57 + 24);
            *(v10 + 112) = *(v57 + 8);
            *(v10 + 128) = v71;
            v72 = *(v57 + 56);
            v73 = *(v57 + 72);
            v74 = *(v57 + 40);
            *(v10 + 185) = *(v57 + 81);
            *(v10 + 160) = v72;
            *(v10 + 176) = v73;
            *(v10 + 144) = v74;
            *(v57 + 24) = v339;
            *(v57 + 8) = v305;
            *(v57 + 81) = *&v441[9];
            *(v57 + 72) = *v441;
            *(v57 + 56) = v407;
            *(v57 + 40) = v373;
          }
        }
      }

      else
      {
        if (v61 > v59)
        {
          *(v10 + 104) = v61;
          *(a2 - 208) = v60;
          v371 = *(v10 + 144);
          v405 = *(v10 + 160);
          *v439 = *(v10 + 176);
          *&v439[16] = *(v10 + 192);
          v303 = *(v10 + 112);
          v337 = *(v10 + 128);
          v62 = *(a2 - 184);
          *(v10 + 112) = *v8;
          *(v10 + 128) = v62;
          v64 = *(a2 - 152);
          v63 = *(a2 - 136);
          v65 = *(a2 - 168);
          *(v10 + 185) = *(a2 - 127);
          *(v10 + 160) = v64;
          *(v10 + 176) = v63;
          *(v10 + 144) = v65;
          goto LABEL_38;
        }

        *(v10 + 104) = v59;
        *v57 = v60;
        v375 = *(v10 + 144);
        v409 = *(v10 + 160);
        *v443 = *(v10 + 176);
        *&v443[16] = *(v10 + 192);
        v307 = *(v10 + 112);
        v341 = *(v10 + 128);
        v85 = *(v57 + 24);
        *(v10 + 112) = *(v57 + 8);
        *(v10 + 128) = v85;
        v86 = *(v57 + 56);
        v87 = *(v57 + 72);
        v88 = *(v57 + 40);
        *(v10 + 185) = *(v57 + 81);
        *(v10 + 160) = v86;
        *(v10 + 176) = v87;
        *(v10 + 144) = v88;
        *(v57 + 24) = v341;
        *(v57 + 8) = v307;
        *(v57 + 81) = *&v443[9];
        *(v57 + 72) = *v443;
        *(v57 + 56) = v409;
        *(v57 + 40) = v375;
        v89 = *(a2 - 208);
        v90 = *v57;
        if (v89 > *v57)
        {
          *v57 = v89;
          *(a2 - 208) = v90;
          v303 = *(v57 + 8);
          v337 = *(v57 + 24);
          *v439 = *(v57 + 72);
          *&v439[16] = *(v57 + 88);
          v371 = *(v57 + 40);
          v405 = *(v57 + 56);
          v92 = *(a2 - 152);
          v91 = *(a2 - 136);
          v93 = *(a2 - 127);
          *(v57 + 40) = *(a2 - 168);
          *(v57 + 81) = v93;
          *(v57 + 72) = v91;
          *(v57 + 56) = v92;
          v94 = *v8;
          *(v57 + 24) = *(a2 - 184);
          *(v57 + 8) = v94;
LABEL_38:
          *v8 = v303;
          *(a2 - 184) = v337;
          *(a2 - 127) = *&v439[9];
          *(a2 - 152) = v405;
          *(a2 - 136) = *v439;
          *(a2 - 168) = v371;
        }
      }

      v95 = v10 + 104 * v13;
      v97 = *(v95 + 104);
      v96 = v95 + 104;
      v98 = v97;
      v99 = *(v10 + 208);
      v100 = *v279;
      if (v97 <= v99)
      {
        if (v100 > v98)
        {
          *v96 = v100;
          *v279 = v98;
          v309 = *(v96 + 8);
          v343 = *(v96 + 24);
          *v445 = *(v96 + 72);
          *&v445[16] = *(v96 + 88);
          v377 = *(v96 + 40);
          v411 = *(v96 + 56);
          v107 = *(a2 - 256);
          v106 = *(a2 - 240);
          v108 = *(a2 - 231);
          *(v96 + 40) = *(a2 - 272);
          *(v96 + 81) = v108;
          *(v96 + 72) = v106;
          *(v96 + 56) = v107;
          v109 = *v9;
          *(v96 + 24) = *(a2 - 288);
          *(v96 + 8) = v109;
          *v9 = v309;
          *(a2 - 288) = v343;
          *(a2 - 231) = *&v445[9];
          *(a2 - 256) = v411;
          *(a2 - 240) = *v445;
          *(a2 - 272) = v377;
          v110 = *(v10 + 208);
          if (*v96 > v110)
          {
            *(v10 + 208) = *v96;
            *v96 = v110;
            v378 = *(v10 + 248);
            v412 = *(v10 + 264);
            *v446 = *(v10 + 280);
            *&v446[16] = *(v10 + 296);
            v310 = *(v10 + 216);
            v344 = *(v10 + 232);
            v111 = *(v96 + 8);
            *(v10 + 232) = *(v96 + 24);
            *(v10 + 216) = v111;
            v112 = *(v96 + 56);
            v113 = *(v96 + 72);
            v114 = *(v96 + 81);
            *(v10 + 248) = *(v96 + 40);
            *(v10 + 289) = v114;
            *(v10 + 264) = v112;
            *(v10 + 280) = v113;
            *(v96 + 24) = v344;
            *(v96 + 8) = v310;
            *(v96 + 81) = *&v446[9];
            *(v96 + 72) = *v446;
            *(v96 + 56) = v412;
            *(v96 + 40) = v378;
          }
        }
      }

      else
      {
        v101 = (v10 + 216);
        if (v100 > v98)
        {
          *(v10 + 208) = v100;
          *v279 = v99;
          v376 = *(v10 + 248);
          v410 = *(v10 + 264);
          *v444 = *(v10 + 280);
          *&v444[16] = *(v10 + 296);
          v308 = *v101;
          v342 = *(v10 + 232);
          v102 = *(a2 - 288);
          *v101 = *v9;
          *(v10 + 232) = v102;
          v104 = *(a2 - 256);
          v103 = *(a2 - 240);
          v105 = *(a2 - 272);
          *(v10 + 289) = *(a2 - 231);
          *(v10 + 264) = v104;
          *(v10 + 280) = v103;
          *(v10 + 248) = v105;
          goto LABEL_47;
        }

        *(v10 + 208) = v98;
        *v96 = v99;
        v379 = *(v10 + 248);
        v413 = *(v10 + 264);
        *v447 = *(v10 + 280);
        *&v447[16] = *(v10 + 296);
        v311 = *v101;
        v345 = *(v10 + 232);
        v115 = *(v96 + 24);
        *v101 = *(v96 + 8);
        *(v10 + 232) = v115;
        v116 = *(v96 + 56);
        v117 = *(v96 + 72);
        v118 = *(v96 + 40);
        *(v10 + 289) = *(v96 + 81);
        *(v10 + 264) = v116;
        *(v10 + 280) = v117;
        *(v10 + 248) = v118;
        *(v96 + 24) = v345;
        *(v96 + 8) = v311;
        *(v96 + 81) = *&v447[9];
        *(v96 + 72) = *v447;
        *(v96 + 56) = v413;
        *(v96 + 40) = v379;
        v119 = *v96;
        if (*v279 > *v96)
        {
          *v96 = *v279;
          *v279 = v119;
          v308 = *(v96 + 8);
          v342 = *(v96 + 24);
          *v444 = *(v96 + 72);
          *&v444[16] = *(v96 + 88);
          v376 = *(v96 + 40);
          v410 = *(v96 + 56);
          v121 = *(a2 - 256);
          v120 = *(a2 - 240);
          v122 = *(a2 - 231);
          *(v96 + 40) = *(a2 - 272);
          *(v96 + 81) = v122;
          *(v96 + 72) = v120;
          *(v96 + 56) = v121;
          v123 = *v9;
          *(v96 + 24) = *(a2 - 288);
          *(v96 + 8) = v123;
LABEL_47:
          *v9 = v308;
          *(a2 - 288) = v342;
          *(a2 - 231) = *&v444[9];
          *(a2 - 256) = v410;
          *(a2 - 240) = *v444;
          *(a2 - 272) = v376;
        }
      }

      v124 = *v14;
      v125 = *v57;
      v126 = *v96;
      if (*v14 <= *v57)
      {
        if (v126 > v124)
        {
          *v14 = v126;
          *v96 = v124;
          v313 = *(v14 + 8);
          v347 = *(v14 + 24);
          *v449 = *(v14 + 72);
          *&v449[16] = *(v14 + 88);
          v381 = *(v14 + 40);
          v415 = *(v14 + 56);
          *(v14 + 81) = *(v96 + 81);
          *(v14 + 72) = *(v96 + 72);
          *(v14 + 56) = *(v96 + 56);
          *(v14 + 40) = *(v96 + 40);
          *(v14 + 8) = *(v96 + 8);
          *(v14 + 24) = *(v96 + 24);
          *(v96 + 81) = *&v449[9];
          *(v96 + 72) = *v449;
          *(v96 + 24) = v347;
          *(v96 + 8) = v313;
          *(v96 + 56) = v415;
          *(v96 + 40) = v381;
          v127 = *v57;
          if (*v14 > *v57)
          {
            *v57 = *v14;
            *v14 = v127;
            v314 = *(v57 + 8);
            v348 = *(v57 + 24);
            *v450 = *(v57 + 72);
            *&v450[16] = *(v57 + 88);
            v382 = *(v57 + 40);
            v416 = *(v57 + 56);
            *(v57 + 81) = *(v14 + 81);
            *(v57 + 72) = *(v14 + 72);
            *(v57 + 56) = *(v14 + 56);
            *(v57 + 40) = *(v14 + 40);
            *(v57 + 8) = *(v14 + 8);
            *(v57 + 24) = *(v14 + 24);
            *(v14 + 81) = *&v450[9];
            *(v14 + 72) = *v450;
            *(v14 + 24) = v348;
            *(v14 + 8) = v314;
            *(v14 + 56) = v416;
            *(v14 + 40) = v382;
          }
        }
      }

      else
      {
        if (v126 > v124)
        {
          *v57 = v126;
          *v96 = v125;
          v312 = *(v57 + 8);
          v346 = *(v57 + 24);
          *v448 = *(v57 + 72);
          *&v448[16] = *(v57 + 88);
          v380 = *(v57 + 40);
          v414 = *(v57 + 56);
          *(v57 + 81) = *(v96 + 81);
          *(v57 + 72) = *(v96 + 72);
          *(v57 + 56) = *(v96 + 56);
          *(v57 + 40) = *(v96 + 40);
          *(v57 + 8) = *(v96 + 8);
          *(v57 + 24) = *(v96 + 24);
          goto LABEL_56;
        }

        *v57 = v124;
        *v14 = v125;
        v315 = *(v57 + 8);
        v349 = *(v57 + 24);
        *v451 = *(v57 + 72);
        *&v451[16] = *(v57 + 88);
        v383 = *(v57 + 40);
        v417 = *(v57 + 56);
        *(v57 + 81) = *(v14 + 81);
        *(v57 + 72) = *(v14 + 72);
        *(v57 + 56) = *(v14 + 56);
        *(v57 + 40) = *(v14 + 40);
        *(v57 + 8) = *(v14 + 8);
        *(v57 + 24) = *(v14 + 24);
        *(v14 + 81) = *&v451[9];
        *(v14 + 72) = *v451;
        *(v14 + 24) = v349;
        *(v14 + 8) = v315;
        *(v14 + 56) = v417;
        *(v14 + 40) = v383;
        v128 = *v14;
        if (*v96 > *v14)
        {
          *v14 = *v96;
          *v96 = v128;
          v312 = *(v14 + 8);
          v346 = *(v14 + 24);
          *v448 = *(v14 + 72);
          *&v448[16] = *(v14 + 88);
          v380 = *(v14 + 40);
          v414 = *(v14 + 56);
          *(v14 + 81) = *(v96 + 81);
          *(v14 + 72) = *(v96 + 72);
          *(v14 + 56) = *(v96 + 56);
          *(v14 + 40) = *(v96 + 40);
          *(v14 + 8) = *(v96 + 8);
          *(v14 + 24) = *(v96 + 24);
LABEL_56:
          *(v96 + 81) = *&v448[9];
          *(v96 + 72) = *v448;
          *(v96 + 24) = v346;
          *(v96 + 8) = v312;
          *(v96 + 56) = v414;
          *(v96 + 40) = v380;
        }
      }

      v129 = *v10;
      *v10 = *v14;
      *v14 = v129;
      v316 = *(v10 + 8);
      v350 = *(v10 + 24);
      *v452 = *(v10 + 72);
      *&v452[16] = *(v10 + 88);
      v384 = *(v10 + 40);
      v418 = *(v10 + 56);
      v130 = *(v14 + 56);
      v131 = *(v14 + 72);
      v132 = *(v14 + 81);
      *(v10 + 40) = *(v14 + 40);
      *(v10 + 81) = v132;
      *(v10 + 72) = v131;
      *(v10 + 56) = v130;
      v133 = *(v14 + 8);
      *(v10 + 24) = *(v14 + 24);
      *(v10 + 8) = v133;
      *(v14 + 24) = v350;
      *(v14 + 8) = v316;
      *(v14 + 81) = *&v452[9];
      *(v14 + 72) = *v452;
      *(v14 + 56) = v418;
      *(v14 + 40) = v384;
      goto LABEL_58;
    }

    v22 = *v10;
    v23 = *v14;
    if (*v10 <= *v14)
    {
      if (v15 > v22)
      {
        *v10 = v15;
        *(a2 - 104) = v22;
        v300 = *(v10 + 8);
        v334 = *(v10 + 24);
        *v436 = *(v10 + 72);
        *&v436[16] = *(v10 + 88);
        v368 = *(v10 + 40);
        v402 = *(v10 + 56);
        v38 = *(a2 - 48);
        v37 = *(a2 - 32);
        v39 = *(a2 - 23);
        *(v10 + 40) = *(a2 - 64);
        *(v10 + 81) = v39;
        *(v10 + 72) = v37;
        *(v10 + 56) = v38;
        v40 = *v7;
        *(v10 + 24) = *(a2 - 80);
        *(v10 + 8) = v40;
        *v7 = v300;
        *(a2 - 80) = v334;
        *(a2 - 23) = *&v436[9];
        *(a2 - 48) = v402;
        *(a2 - 32) = *v436;
        *(a2 - 64) = v368;
        v41 = *v14;
        if (*v10 > *v14)
        {
          *v14 = *v10;
          *v10 = v41;
          v301 = *(v14 + 8);
          v335 = *(v14 + 24);
          *v437 = *(v14 + 72);
          *&v437[16] = *(v14 + 88);
          v369 = *(v14 + 40);
          v403 = *(v14 + 56);
          v42 = *(v10 + 56);
          v43 = *(v10 + 72);
          v44 = *(v10 + 81);
          *(v14 + 40) = *(v10 + 40);
          *(v14 + 81) = v44;
          *(v14 + 72) = v43;
          *(v14 + 56) = v42;
          v45 = *(v10 + 8);
          *(v14 + 24) = *(v10 + 24);
          *(v14 + 8) = v45;
          *(v10 + 24) = v335;
          *(v10 + 8) = v301;
          *(v10 + 81) = *&v437[9];
          *(v10 + 72) = *v437;
          *(v10 + 56) = v403;
          *(v10 + 40) = v369;
        }
      }

      goto LABEL_58;
    }

    if (v15 <= v22)
    {
      *v14 = v22;
      *v10 = v23;
      v306 = *(v14 + 8);
      v340 = *(v14 + 24);
      *v442 = *(v14 + 72);
      *&v442[16] = *(v14 + 88);
      v374 = *(v14 + 40);
      v408 = *(v14 + 56);
      v75 = *(v10 + 56);
      v76 = *(v10 + 72);
      v77 = *(v10 + 81);
      *(v14 + 40) = *(v10 + 40);
      *(v14 + 81) = v77;
      *(v14 + 72) = v76;
      *(v14 + 56) = v75;
      v78 = *(v10 + 8);
      *(v14 + 24) = *(v10 + 24);
      *(v14 + 8) = v78;
      *(v10 + 24) = v340;
      *(v10 + 8) = v306;
      *(v10 + 81) = *&v442[9];
      *(v10 + 72) = *v442;
      *(v10 + 56) = v408;
      *(v10 + 40) = v374;
      v79 = *(a2 - 104);
      v80 = *v10;
      if (v79 <= *v10)
      {
        goto LABEL_58;
      }

      *v10 = v79;
      *(a2 - 104) = v80;
      v297 = *(v10 + 8);
      v331 = *(v10 + 24);
      *v433 = *(v10 + 72);
      *&v433[16] = *(v10 + 88);
      v365 = *(v10 + 40);
      v399 = *(v10 + 56);
      v82 = *(a2 - 48);
      v81 = *(a2 - 32);
      v83 = *(a2 - 23);
      *(v10 + 40) = *(a2 - 64);
      *(v10 + 81) = v83;
      *(v10 + 72) = v81;
      *(v10 + 56) = v82;
      v84 = *v7;
      *(v10 + 24) = *(a2 - 80);
      *(v10 + 8) = v84;
    }

    else
    {
      *v14 = v15;
      *(a2 - 104) = v23;
      v297 = *(v14 + 8);
      v331 = *(v14 + 24);
      *v433 = *(v14 + 72);
      *&v433[16] = *(v14 + 88);
      v365 = *(v14 + 40);
      v399 = *(v14 + 56);
      v25 = *(a2 - 48);
      v24 = *(a2 - 32);
      v26 = *(a2 - 23);
      *(v14 + 40) = *(a2 - 64);
      *(v14 + 81) = v26;
      *(v14 + 72) = v24;
      *(v14 + 56) = v25;
      v27 = *v7;
      *(v14 + 24) = *(a2 - 80);
      *(v14 + 8) = v27;
    }

    *v7 = v297;
    *(a2 - 80) = v331;
    *(a2 - 23) = *&v433[9];
    *(a2 - 48) = v399;
    *(a2 - 32) = *v433;
    *(a2 - 64) = v365;
LABEL_58:
    --a3;
    v134 = *v10;
    if ((a4 & 1) != 0 || *(v10 - 104) > v134)
    {
      v135 = 0;
      v281 = *(v10 + 8);
      v284 = *(v10 + 24);
      *&v293[9] = *(v10 + 81);
      v290 = *(v10 + 56);
      *v293 = *(v10 + 72);
      v287 = *(v10 + 40);
      do
      {
        v136 = *(v10 + v135 + 104);
        v135 += 104;
      }

      while (v136 > v134);
      v137 = v10 + v135;
      v138 = a2;
      if (v135 == 104)
      {
        v138 = a2;
        do
        {
          if (v137 >= v138)
          {
            break;
          }

          v140 = *(v138 - 13);
          v138 -= 13;
        }

        while (v140 <= v134);
      }

      else
      {
        do
        {
          v139 = *(v138 - 13);
          v138 -= 13;
        }

        while (v139 <= v134);
      }

      if (v137 >= v138)
      {
        v10 += v135;
      }

      else
      {
        v141 = *v138;
        v10 += v135;
        v142 = v138;
        do
        {
          *v10 = v141;
          *v142 = v136;
          v317 = *(v10 + 8);
          v351 = *(v10 + 24);
          *v453 = *(v10 + 72);
          *&v453[16] = *(v10 + 88);
          v385 = *(v10 + 40);
          v419 = *(v10 + 56);
          v143 = *(v142 + 7);
          v144 = *(v142 + 9);
          v145 = *(v142 + 81);
          *(v10 + 40) = *(v142 + 5);
          *(v10 + 81) = v145;
          *(v10 + 72) = v144;
          *(v10 + 56) = v143;
          v146 = *(v142 + 1);
          *(v10 + 24) = *(v142 + 3);
          *(v10 + 8) = v146;
          *(v142 + 3) = v351;
          *(v142 + 1) = v317;
          *(v142 + 81) = *&v453[9];
          *(v142 + 9) = *v453;
          *(v142 + 7) = v419;
          *(v142 + 5) = v385;
          do
          {
            v147 = *(v10 + 104);
            v10 += 104;
            v136 = v147;
          }

          while (v147 > v134);
          do
          {
            v148 = *(v142 - 13);
            v142 -= 13;
            v141 = v148;
          }

          while (v148 <= v134);
        }

        while (v10 < v142);
      }

      if (v10 - 104 != a1)
      {
        *a1 = *(v10 - 104);
        v149 = *(v10 - 96);
        *(a1 + 24) = *(v10 - 80);
        *(a1 + 8) = v149;
        v150 = *(v10 - 64);
        v151 = *(v10 - 48);
        v152 = *(v10 - 32);
        *(a1 + 81) = *(v10 - 23);
        *(a1 + 72) = v152;
        *(a1 + 56) = v151;
        *(a1 + 40) = v150;
      }

      *(v10 - 104) = v134;
      *(v10 - 96) = v281;
      *(v10 - 80) = v284;
      *(v10 - 23) = *&v293[9];
      *(v10 - 48) = v290;
      *(v10 - 32) = *v293;
      *(v10 - 64) = v287;
      if (v137 < v138)
      {
        goto LABEL_81;
      }

      v153 = sub_10064BE3C(a1, v10 - 104);
      if (sub_10064BE3C(v10, a2))
      {
        a2 = v10 - 104;
        if (v153)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v153)
      {
LABEL_81:
        sub_1002EE624(a1, v10 - 104, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v282 = *(v10 + 8);
      v285 = *(v10 + 24);
      *&v294[9] = *(v10 + 81);
      v291 = *(v10 + 56);
      *v294 = *(v10 + 72);
      v288 = *(v10 + 40);
      if (v134 <= *(a2 - 104))
      {
        v155 = v10 + 104;
        do
        {
          v10 = v155;
          if (v155 >= a2)
          {
            break;
          }

          v155 += 104;
        }

        while (v134 <= *v10);
      }

      else
      {
        do
        {
          v154 = *(v10 + 104);
          v10 += 104;
        }

        while (v134 <= v154);
      }

      v156 = a2;
      if (v10 < a2)
      {
        v156 = a2;
        do
        {
          v157 = *(v156 - 104);
          v156 -= 104;
        }

        while (v134 > v157);
      }

      if (v10 < v156)
      {
        v158 = *v10;
        v159 = *v156;
        do
        {
          *v10 = v159;
          *v156 = v158;
          v318 = *(v10 + 8);
          v352 = *(v10 + 24);
          *v454 = *(v10 + 72);
          *&v454[16] = *(v10 + 88);
          v386 = *(v10 + 40);
          v420 = *(v10 + 56);
          v160 = *(v156 + 56);
          v161 = *(v156 + 72);
          v162 = *(v156 + 81);
          *(v10 + 40) = *(v156 + 40);
          *(v10 + 81) = v162;
          *(v10 + 72) = v161;
          *(v10 + 56) = v160;
          v163 = *(v156 + 8);
          *(v10 + 24) = *(v156 + 24);
          *(v10 + 8) = v163;
          *(v156 + 24) = v352;
          *(v156 + 8) = v318;
          *(v156 + 81) = *&v454[9];
          *(v156 + 72) = *v454;
          *(v156 + 56) = v420;
          *(v156 + 40) = v386;
          do
          {
            v164 = *(v10 + 104);
            v10 += 104;
            v158 = v164;
          }

          while (v134 <= v164);
          do
          {
            v165 = *(v156 - 104);
            v156 -= 104;
            v159 = v165;
          }

          while (v134 > v165);
        }

        while (v10 < v156);
      }

      if (v10 - 104 != a1)
      {
        *a1 = *(v10 - 104);
        v166 = *(v10 - 96);
        *(a1 + 24) = *(v10 - 80);
        *(a1 + 8) = v166;
        v167 = *(v10 - 64);
        v168 = *(v10 - 48);
        v169 = *(v10 - 32);
        *(a1 + 81) = *(v10 - 23);
        *(a1 + 72) = v169;
        *(a1 + 56) = v168;
        *(a1 + 40) = v167;
      }

      a4 = 0;
      *(v10 - 104) = v134;
      *(v10 - 96) = v282;
      *(v10 - 80) = v285;
      *(v10 - 23) = *&v294[9];
      *(v10 - 48) = v291;
      *(v10 - 32) = *v294;
      *(v10 - 64) = v288;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      sub_10064B9BC(v10, v10 + 104, v10 + 208, a2 - 104);
      return;
    }

    if (v12 == 5)
    {
      sub_10064B9BC(v10, v10 + 104, v10 + 208, v10 + 312);
      v170 = *(a2 - 104);
      v171 = *(v10 + 312);
      if (v170 <= v171)
      {
        return;
      }

      *(v10 + 312) = v170;
      *(a2 - 104) = v171;
      v172 = (v10 + 320);
      v387 = *(v10 + 352);
      v421 = *(v10 + 368);
      *v455 = *(v10 + 384);
      *&v455[16] = *(v10 + 400);
      v319 = *(v10 + 320);
      v353 = *(v10 + 336);
      v173 = *(a2 - 80);
      *(v10 + 320) = *(a2 - 96);
      *(v10 + 336) = v173;
      v175 = *(a2 - 48);
      v174 = *(a2 - 32);
      v176 = *(a2 - 64);
      *(v10 + 393) = *(a2 - 23);
      *(v10 + 368) = v175;
      *(v10 + 384) = v174;
      *(v10 + 352) = v176;
      *(a2 - 96) = v319;
      *(a2 - 80) = v353;
      *(a2 - 23) = *&v455[9];
      *(a2 - 48) = v421;
      *(a2 - 32) = *v455;
      *(a2 - 64) = v387;
      v177 = *(v10 + 312);
      v178 = *(v10 + 208);
      if (v177 <= v178)
      {
        return;
      }

      *(v10 + 312) = v178;
      v179 = (v10 + 216);
      v388 = *(v10 + 248);
      v422 = *(v10 + 264);
      *v456 = *(v10 + 280);
      *&v456[16] = *(v10 + 296);
      v320 = *(v10 + 216);
      v354 = *(v10 + 232);
      v180 = *(v10 + 368);
      *(v10 + 248) = *(v10 + 352);
      v181 = *(v10 + 384);
      *(v10 + 264) = v180;
      *(v10 + 280) = v181;
      *(v10 + 289) = *(v10 + 393);
      v182 = *(v10 + 336);
      *(v10 + 216) = *v172;
      *(v10 + 232) = v182;
      *v172 = v320;
      *(v10 + 336) = v354;
      *(v10 + 393) = *&v456[9];
      *(v10 + 368) = v422;
      *(v10 + 384) = *v456;
      *(v10 + 352) = v388;
      v183 = *(v10 + 104);
      *(v10 + 208) = v177;
      if (v177 <= v183)
      {
        return;
      }

      *(v10 + 208) = v183;
      v389 = *(v10 + 144);
      v423 = *(v10 + 160);
      *v457 = *(v10 + 176);
      *&v457[16] = *(v10 + 192);
      v321 = *(v10 + 112);
      v355 = *(v10 + 128);
      v184 = *(v10 + 264);
      *(v10 + 144) = *(v10 + 248);
      *(v10 + 160) = v184;
      *(v10 + 176) = *(v10 + 280);
      *(v10 + 185) = *(v10 + 289);
      v185 = *(v10 + 232);
      *(v10 + 112) = *v179;
      *(v10 + 128) = v185;
      *v179 = v321;
      *(v10 + 232) = v355;
      *(v10 + 289) = *&v457[9];
      *(v10 + 264) = v423;
      *(v10 + 280) = *v457;
      *(v10 + 248) = v389;
      v186 = *v10;
      v187 = v177 <= *v10;
      *(v10 + 104) = v177;
      if (v187)
      {
        return;
      }

LABEL_171:
      *v10 = v177;
      *(v10 + 104) = v186;
      v327 = *(v10 + 8);
      v361 = *(v10 + 24);
      *v463 = *(v10 + 72);
      *&v463[16] = *(v10 + 88);
      v395 = *(v10 + 40);
      v429 = *(v10 + 56);
      *(v10 + 81) = *(v10 + 185);
      v261 = *(v10 + 160);
      *(v10 + 72) = *(v10 + 176);
      v262 = *(v10 + 128);
      v263 = *(v10 + 144);
      *(v10 + 56) = v261;
      *(v10 + 40) = v263;
      *(v10 + 8) = *(v10 + 112);
      *(v10 + 24) = v262;
      *(v10 + 112) = v327;
      *(v10 + 128) = v361;
      *(v10 + 185) = *&v463[9];
      *(v10 + 160) = v429;
      *(v10 + 176) = *v463;
      *(v10 + 144) = v395;
      return;
    }

    goto LABEL_9;
  }

  v190 = *(v10 + 104);
  v191 = *v10;
  v192 = *(a2 - 104);
  if (v190 > *v10)
  {
    if (v192 <= v190)
    {
      *v10 = v190;
      *(v10 + 104) = v191;
      v329 = *(v10 + 8);
      v363 = *(v10 + 24);
      *v465 = *(v10 + 72);
      *&v465[16] = *(v10 + 88);
      v397 = *(v10 + 40);
      v431 = *(v10 + 56);
      *(v10 + 81) = *(v10 + 185);
      v271 = *(v10 + 160);
      *(v10 + 72) = *(v10 + 176);
      v272 = *(v10 + 128);
      v273 = *(v10 + 144);
      *(v10 + 56) = v271;
      *(v10 + 40) = v273;
      *(v10 + 8) = *(v10 + 112);
      *(v10 + 24) = v272;
      *(v10 + 112) = v329;
      *(v10 + 128) = v363;
      *(v10 + 185) = *&v465[9];
      *(v10 + 160) = v431;
      *(v10 + 176) = *v465;
      *(v10 + 144) = v397;
      v274 = *(a2 - 104);
      if (v274 <= v191)
      {
        return;
      }

      *(v10 + 104) = v274;
      *(a2 - 104) = v191;
      v390 = *(v10 + 144);
      v424 = *(v10 + 160);
      *v458 = *(v10 + 176);
      *&v458[16] = *(v10 + 192);
      v322 = *(v10 + 112);
      v356 = *(v10 + 128);
      v275 = *(a2 - 80);
      *(v10 + 112) = *(a2 - 96);
      *(v10 + 128) = v275;
      v277 = *(a2 - 48);
      v276 = *(a2 - 32);
      v278 = *(a2 - 64);
      *(v10 + 185) = *(a2 - 23);
      *(v10 + 160) = v277;
      *(v10 + 176) = v276;
      *(v10 + 144) = v278;
    }

    else
    {
      *v10 = v192;
      *(a2 - 104) = v191;
LABEL_113:
      v322 = *(v10 + 8);
      v356 = *(v10 + 24);
      *v458 = *(v10 + 72);
      *&v458[16] = *(v10 + 88);
      v390 = *(v10 + 40);
      v424 = *(v10 + 56);
      v194 = *(a2 - 48);
      v193 = *(a2 - 32);
      v195 = *(a2 - 23);
      *(v10 + 40) = *(a2 - 64);
      *(v10 + 81) = v195;
      *(v10 + 72) = v193;
      *(v10 + 56) = v194;
      v196 = *(a2 - 96);
      *(v10 + 24) = *(a2 - 80);
      *(v10 + 8) = v196;
    }

    *(a2 - 96) = v322;
    *(a2 - 80) = v356;
    *(a2 - 23) = *&v458[9];
    *(a2 - 48) = v424;
    *(a2 - 32) = *v458;
    *(a2 - 64) = v390;
    return;
  }

  if (v192 > v190)
  {
    *(v10 + 104) = v192;
    *(a2 - 104) = v190;
    v394 = *(v10 + 144);
    v428 = *(v10 + 160);
    *v462 = *(v10 + 176);
    *&v462[16] = *(v10 + 192);
    v326 = *(v10 + 112);
    v360 = *(v10 + 128);
    v257 = *(a2 - 80);
    *(v10 + 112) = *(a2 - 96);
    *(v10 + 128) = v257;
    v259 = *(a2 - 48);
    v258 = *(a2 - 32);
    v260 = *(a2 - 64);
    *(v10 + 185) = *(a2 - 23);
    *(v10 + 160) = v259;
    *(v10 + 176) = v258;
    *(v10 + 144) = v260;
    *(a2 - 96) = v326;
    *(a2 - 80) = v360;
    *(a2 - 23) = *&v462[9];
    *(a2 - 48) = v428;
    *(a2 - 32) = *v462;
    *(a2 - 64) = v394;
    v177 = *(v10 + 104);
    v186 = *v10;
    if (v177 > *v10)
    {
      goto LABEL_171;
    }
  }
}

double sub_1002F018C(uint64_t *a1, double a2)
{
  v2 = a1 + 1;
  if (*a1 == a1[1])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F28B0();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, calculate uncertainty, empty accessPointWithWeights", buf, 2u);
    }

    v29 = -1.0;
    if (sub_10000A100(121, 2))
    {
      sub_1018F2A34();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F28B0();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = -1431655765 * ((a1[1] - *a1) >> 5);
      *buf = 67174657;
      LODWORD(v57) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, calculate uncertainty, num accessPointWithWeights, %{private}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F28C4(v2, a1);
    }

    __src = 0;
    v46 = 0;
    v47 = 0;
    v7 = *a1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      goto LABEL_33;
    }

    v9 = 0;
    do
    {
      if (*(v7 + 84) > 0.0)
      {
        if (v9 >= v47)
        {
          v14 = __src;
          v15 = v9 - __src;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __src) >> 5);
          v17 = v16 + 1;
          if (v16 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v47 - __src) >> 5) > v17)
          {
            v17 = 0x5555555555555556 * ((v47 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v47 - __src) >> 5) >= 0x155555555555555)
          {
            v18 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_1001A4428(&__src, v18);
          }

          v19 = (32 * ((v9 - __src) >> 5));
          v20 = *(v7 + 16);
          *v19 = *v7;
          v19[1] = v20;
          v21 = *(v7 + 32);
          v22 = *(v7 + 48);
          v23 = *(v7 + 80);
          v19[4] = *(v7 + 64);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v9 = (96 * v16 + 96);
          v24 = (96 * v16 - v15);
          memcpy(v19 - v15, v14, v15);
          v25 = __src;
          __src = v24;
          v46 = v9;
          v47 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v10 = *(v7 + 16);
          *v9 = *v7;
          *(v9 + 1) = v10;
          v11 = *(v7 + 32);
          v12 = *(v7 + 48);
          v13 = *(v7 + 80);
          *(v9 + 4) = *(v7 + 64);
          *(v9 + 5) = v13;
          *(v9 + 2) = v11;
          *(v9 + 3) = v12;
          v9 += 96;
        }

        v46 = v9;
      }

      v7 += 96;
    }

    while (v7 != v8);
    if (__src == v9)
    {
LABEL_33:
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v30 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, calculate uncertainty, accessPointsWithValidWeights is empty", buf, 2u);
      }

      v29 = -1.0;
      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        LOWORD(v48) = 0;
        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static double CLLocationCalculator::calculateWifiVerticalAccuracy(const std::vector<CLWifiAccessPoint> &, double)", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67174657;
        LODWORD(v57) = -1431655765 * ((v46 - __src) >> 5);
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, calculate uncertainty, num accessPointsWithValidWeights, %{private}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v48 = 67174657;
        LODWORD(v49) = -1431655765 * ((v46 - __src) >> 5);
        v43 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static double CLLocationCalculator::calculateWifiVerticalAccuracy(const std::vector<CLWifiAccessPoint> &, double)", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      v27 = __src;
      if (v46 - __src == 96)
      {
        v28 = *(__src + 5);
        v29 = v28 * *(sub_1000F7F38() + 32);
      }

      else
      {
        if (__src == v46)
        {
          v35 = 0.0;
          v34 = 0.0;
          v33 = 0.0;
        }

        else
        {
          v33 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          do
          {
            v36 = v27[21];
            v35 = v35 + v36;
            v34 = v34 + v36 * v36;
            v33 = v33 + v36 * ((*(v27 + 2) - a2) * (*(v27 + 2) - a2));
            v27 += 24;
          }

          while (v27 != v46);
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018F29C8();
        }

        v37 = v35 - v34 / v35;
        v38 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134284289;
          v57 = v35;
          v58 = 2049;
          v59 = v34;
          v60 = 2049;
          v61 = v33;
          v62 = 2049;
          v63 = v35 - v34 / v35;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, calculate uncertainty, dSumWeightV, %{private}.2f, dSumWeightVSquare, %{private}.2f, dSumWeightedDeviation, %{private}.2f, altVarianceDivisor, %{private}.2f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F29F0(buf);
          v48 = 134284289;
          v49 = v35;
          v50 = 2049;
          v51 = v34;
          v52 = 2049;
          v53 = v33;
          v54 = 2049;
          v55 = v35 - v34 / v35;
          v44 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static double CLLocationCalculator::calculateWifiVerticalAccuracy(const std::vector<CLWifiAccessPoint> &, double)", "%s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        v29 = -1.0;
        if (v35 > 0.0 && v37 > 0.0)
        {
          v39 = *(sub_1000F7F38() + 32);
          v40 = sub_1000F7F38();
          v41 = sqrt(v33 / v37) * v39;
          if (v41 >= *(v40 + 27))
          {
            v29 = v41;
          }

          else
          {
            v29 = *(v40 + 27);
          }
        }
      }
    }

    if (__src)
    {
      v46 = __src;
      operator delete(__src);
    }
  }

  return v29;
}

void sub_1002F08B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F08F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10024A2CC(result, a4);
  }

  return result;
}

void sub_1002F0950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002F096C(double **a1, double a2, long double a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a1 + 12);
  v8 = **a1;
  if (*a1 == v6 || v7 == v6)
  {
    v10 = v5[1];
    v11 = **a1;
  }

  else
  {
    v12 = **a1;
    v13 = (*a1 + 12);
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 12;
      v17 = v16;
      if (v12 < v16)
      {
        v12 = v17;
        v14 = v13;
      }

      v13 = v15;
    }

    while (v15 != v6);
    v18 = *v14;
    v19 = (*a1 + 12);
    v20 = *a1;
    v21 = v19;
    do
    {
      v22 = *v21;
      v21 += 12;
      v23 = v22;
      if (v22 < v8)
      {
        v8 = v23;
        v20 = v19;
      }

      v19 = v21;
    }

    while (v21 != v6);
    v11 = *v20;
    v24 = (*a1 + 12);
    v25 = *a1;
    do
    {
      if (v25[1] < *(v24 + 8))
      {
        v25 = v24;
      }

      v24 += 96;
    }

    while (v24 != v6);
    v10 = v25[1];
    do
    {
      if (*(v7 + 8) < v5[1])
      {
        v5 = v7;
      }

      v7 += 96;
    }

    while (v7 != v6);
    v8 = v18;
  }

  v26 = v5[1];
  if ((atomic_load_explicit(&qword_10265C0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265C0D8))
  {
    sub_10018D404(xmmword_10265C0B0);
    __cxa_guard_release(&qword_10265C0D8);
  }

  return sub_100109D18(xmmword_10265C0B0, v11, v26, v8, v10, a2) > a3;
}

BOOL sub_1002F0AF0(uint64_t a1, double *a2, double *a3)
{
  v6 = sub_1000F7F38();
  v7 = *(v6 + 7) * *a3 * (*(v6 + 7) * *a3);
  *(a1 + 56) = v7;
  v8 = v7 + *(a1 + 24);
  if (v8 > 0.0)
  {
    v9 = *a2 - *(a1 + 16);
    v10 = v7 + *(a1 + 24);
    if (v9 * v9 / v8 > *(sub_1000F7F38() + 20))
    {
      v11 = 1.0;
      do
      {
        v11 = v11 * *(sub_1000F7F38() + 21);
        v12 = *(a1 + 8) + *(a1 + 96) * (v11 * *(a1 + 96)) * *(a1 + 32);
        *(a1 + 24) = v12;
        v10 = v12 + *(a1 + 56);
      }

      while (v9 * v9 / v10 > *(sub_1000F7F38() + 20));
    }

    *(a1 + 72) = *(a1 + 64);
    v13 = (a1 + 72);
    v14 = *(a1 + 24);
    v15 = *(a1 + 16) + v14 / v10 * v9;
    *(a1 + 8) = v14 * (1.0 - v14 / v10);
    if (*(a1 + 88) == 0.0)
    {
      *(a1 + 104) = *(a1 + 104) + v15 - *a1;
    }

    *a1 = v15;
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v17 = *v13;
      v19 = 134283521;
      v20 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, updated, timestamp, %{private}0.3f", &v19, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B419F0();
    }
  }

  return v8 > 0.0;
}

uint64_t sub_1002F0CDC(float64x2_t **a1, double *a2, double *a3)
{
  v7 = (*a1)->f64[1];
  v6 = (*a1)[1].f64[0];
  v8 = (*a1)->f64[0];
  v9 = v8 - v6;
  v10 = v8 + v6;
  __src = 0;
  v55 = 0;
  v56 = 0;
  __p = 0;
  v52 = 0;
  v53 = 0;
  if (v8 - v6 <= v8 + v6)
  {
    v11 = 0;
    do
    {
      if (v11 >= v56)
      {
        v12 = __src;
        v13 = v11 - __src;
        v14 = (v11 - __src) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v16 = v56 - __src;
        if ((v56 - __src) >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_1000B9708(&__src, v17);
        }

        v18 = (v11 - __src) >> 3;
        v19 = (8 * v14);
        v20 = (8 * v14 - 8 * v18);
        *v19 = v9;
        v11 = v19 + 1;
        memcpy(v20, v12, v13);
        v21 = __src;
        __src = v20;
        v55 = v11;
        v56 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v11++ = v9;
      }

      v55 = v11;
      v9 = v9 + 1.0;
    }

    while (v9 <= v10);
  }

  v22 = v7 - v6;
  v23 = v6 + v7;
  if (v22 <= v23)
  {
    v24 = v52;
    do
    {
      if (v24 >= v53)
      {
        v25 = __p;
        v26 = v24 - __p;
        v27 = (v24 - __p) >> 3;
        v28 = v27 + 1;
        if ((v27 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v29 = v53 - __p;
        if ((v53 - __p) >> 2 > v28)
        {
          v28 = v29 >> 2;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          sub_1000B9708(&__p, v30);
        }

        v31 = (v24 - __p) >> 3;
        v32 = (8 * v27);
        v33 = (8 * v27 - 8 * v31);
        *v32 = v22;
        v24 = v32 + 1;
        memcpy(v33, v25, v26);
        v34 = __p;
        __p = v33;
        v52 = v24;
        v53 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v24++ = v22;
      }

      v52 = v24;
      v22 = v22 + 1.0;
    }

    while (v22 <= v23);
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v46 = 0.0;
  v47 = 0.0;
  if ((sub_1002F1040(&__src, a1, &v48, &v47, 1) & 1) == 0)
  {
    v44 = 0;
    v36 = v48;
    if (!v48)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v35 = sub_1002F1040(&__p, a1, &v48, &v46, 0);
  v36 = v48;
  if (!v35)
  {
    v44 = 0;
    if (!v48)
    {
      goto LABEL_42;
    }

LABEL_41:
    v49 = v36;
    operator delete(v36);
    goto LABEL_42;
  }

  v38 = v46;
  v37 = v47;
  *a2 = v47;
  a2[1] = v38;
  v39 = 0.0;
  if (v36 != v49)
  {
    v40 = v36;
    do
    {
      v41 = *v40;
      v42 = v40[1];
      v40 += 2;
      v43 = (v37 - v41) * (v37 - v41) + (v38 - v42) * (v38 - v42);
      if (v39 < v43)
      {
        v39 = v43;
      }
    }

    while (v40 != v49);
  }

  *a3 = sqrt(v39) / 3.0;
  v44 = 1;
  if (v36)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v55 = __src;
    operator delete(__src);
  }

  return v44;
}

void sub_1002F0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

uint64_t sub_1002F1040(double **a1, float64x2_t **a2, const void **a3, double *a4, int a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    return 0;
  }

  v10 = 0.0;
  v11 = 0.0;
  do
  {
    sub_1002F1438(a2, a5, __p, *v5);
    v44 = 0.0;
    v45 = 0.0;
    if (!sub_1002F17E0(a2, __p, a5, &v44, &v45))
    {
      goto LABEL_51;
    }

    v12 = a3[1];
    v13 = a3[2];
    if (!a5)
    {
      v15 = v44;
      v17 = *v5;
      if (v12 >= v13)
      {
        v22 = *a3;
        v23 = v12 - *a3;
        v24 = v23 >> 4;
        v25 = (v23 >> 4) + 1;
        if (v25 >> 60)
        {
          sub_10028C64C();
        }

        if ((v13 - v22) >> 3 > v25)
        {
          v25 = (v13 - v22) >> 3;
        }

        if (v13 - v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          sub_1003E5FE8(a3, v25);
        }

        v33 = (16 * v24);
        v13 = 0;
        *v33 = v44;
        v33[1] = v17;
        v16 = (16 * v24 + 16);
        memcpy(0, v22, v23);
        v34 = *a3;
        *a3 = 0;
        a3[1] = v16;
        a3[2] = 0;
        if (v34)
        {
          operator delete(v34);
          v13 = a3[2];
        }
      }

      else
      {
        *v12 = v44;
        *(v12 + 1) = v17;
        v16 = (v12 + 2);
      }

      a3[1] = v16;
      v29 = v45;
      v35 = *v5;
      if (v16 < v13)
      {
        *v16 = v45;
        v16[1] = v35;
        goto LABEL_38;
      }

      v30 = *a3;
      v31 = v16 - *a3;
      v37 = (v31 >> 4) + 1;
      if (v37 >> 60)
      {
        sub_10028C64C();
      }

      if ((v13 - v30) >> 3 > v37)
      {
        v37 = (v13 - v30) >> 3;
      }

      if (v13 - v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v37 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        sub_1003E5FE8(a3, v37);
      }

      v38 = v31 >> 4;
      v39 = (16 * (v31 >> 4));
      *v39 = v45;
      v39[1] = v35;
LABEL_48:
      v36 = v39 + 2;
      v40 = &v39[-2 * v38];
      memcpy(v40, v30, v31);
      v41 = *a3;
      *a3 = v40;
      a3[1] = v36;
      a3[2] = 0;
      if (v41)
      {
        operator delete(v41);
      }

      goto LABEL_50;
    }

    v14 = *v5;
    v15 = v44;
    if (v12 >= v13)
    {
      v18 = *a3;
      v19 = v12 - *a3;
      v20 = v19 >> 4;
      v21 = (v19 >> 4) + 1;
      if (v21 >> 60)
      {
        sub_10028C64C();
      }

      if ((v13 - v18) >> 3 > v21)
      {
        v21 = (v13 - v18) >> 3;
      }

      if (v13 - v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        sub_1003E5FE8(a3, v21);
      }

      v26 = 16 * v20;
      v13 = 0;
      *v26 = v14;
      *(v26 + 8) = v15;
      v16 = (16 * v20 + 16);
      memcpy(0, v18, v19);
      v27 = *a3;
      *a3 = 0;
      a3[1] = v16;
      a3[2] = 0;
      if (v27)
      {
        operator delete(v27);
        v13 = a3[2];
      }
    }

    else
    {
      *v12 = v14;
      *(v12 + 1) = v15;
      v16 = (v12 + 2);
    }

    a3[1] = v16;
    v28 = *v5;
    v29 = v45;
    if (v16 >= v13)
    {
      v30 = *a3;
      v31 = v16 - *a3;
      v32 = (v31 >> 4) + 1;
      if (v32 >> 60)
      {
        sub_10028C64C();
      }

      if ((v13 - v30) >> 3 > v32)
      {
        v32 = (v13 - v30) >> 3;
      }

      if (v13 - v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        sub_1003E5FE8(a3, v32);
      }

      v38 = v31 >> 4;
      v39 = (16 * (v31 >> 4));
      *v39 = v28;
      v39[1] = v29;
      goto LABEL_48;
    }

    *v16 = v28;
    v16[1] = v29;
LABEL_38:
    v36 = v16 + 2;
LABEL_50:
    a3[1] = v36;
    v10 = v10 + (v29 - v15) * *v5;
    v11 = v11 + v29 - v15;
LABEL_51:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    ++v5;
  }

  while (v5 != v6);
  if (v11 != 0.0)
  {
    *a4 = v10 / v11;
    return 1;
  }

  return 0;
}

void sub_1002F1400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F1438(void *a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v8 = 0;
    v9 = (*a1 + 8);
    do
    {
      v10 = v9 - 1;
      if (a2)
      {
        v11 = v9 - 1;
      }

      else
      {
        v11 = v9;
      }

      v12 = v9[1];
      if (vabdd_f64(*v11, a4) > v12)
      {
        goto LABEL_53;
      }

      v13 = sqrt(v12 * v12 - (a4 - *v11) * (a4 - *v11));
      v14 = a3[2];
      if (a2)
      {
        v15 = v13 + *v9;
        if (v8 >= v14)
        {
          v19 = *a3;
          v20 = v8 - *a3;
          v21 = v20 >> 4;
          v22 = (v20 >> 4) + 1;
          if (v22 >> 60)
          {
            sub_10028C64C();
          }

          if ((v14 - v19) >> 3 > v22)
          {
            v22 = (v14 - v19) >> 3;
          }

          if (v14 - v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            sub_1003E5FE8(a3, v22);
          }

          v27 = (16 * v21);
          v14 = 0;
          *v27 = a4;
          v27[1] = v15;
          v16 = (16 * v21 + 16);
          memcpy(0, v19, v20);
          v28 = *a3;
          *a3 = 0;
          a3[1] = v16;
          a3[2] = 0;
          if (v28)
          {
            operator delete(v28);
            v14 = a3[2];
          }
        }

        else
        {
          *v8 = a4;
          v8[1] = v15;
          v16 = v8 + 2;
        }

        a3[1] = v16;
        v29 = *v9 - v13;
        if (v16 >= v14)
        {
          v30 = *a3;
          v31 = v16 - *a3;
          v32 = (v31 >> 4) + 1;
          if (v32 >> 60)
          {
            sub_10028C64C();
          }

          if ((v14 - v30) >> 3 > v32)
          {
            v32 = (v14 - v30) >> 3;
          }

          if (v14 - v30 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            sub_1003E5FE8(a3, v32);
          }

          v37 = v31 >> 4;
          v38 = (16 * (v31 >> 4));
          *v38 = a4;
          v38[1] = v29;
LABEL_50:
          v8 = v38 + 2;
          v39 = &v38[-2 * v37];
          memcpy(v39, v30, v31);
          v40 = *a3;
          *a3 = v39;
          a3[1] = v8;
          a3[2] = 0;
          if (v40)
          {
            operator delete(v40);
          }

          goto LABEL_52;
        }

        *v16 = a4;
        v16[1] = v29;
        v8 = v16 + 2;
      }

      else
      {
        v17 = v13 + *v10;
        if (v8 >= v14)
        {
          v23 = *a3;
          v24 = v8 - *a3;
          v25 = v24 >> 4;
          v26 = (v24 >> 4) + 1;
          if (v26 >> 60)
          {
            sub_10028C64C();
          }

          if ((v14 - v23) >> 3 > v26)
          {
            v26 = (v14 - v23) >> 3;
          }

          if (v14 - v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v26 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            sub_1003E5FE8(a3, v26);
          }

          v33 = (16 * v25);
          v14 = 0;
          *v33 = v17;
          v33[1] = a4;
          v18 = (16 * v25 + 16);
          memcpy(0, v23, v24);
          v34 = *a3;
          *a3 = 0;
          a3[1] = v18;
          a3[2] = 0;
          if (v34)
          {
            operator delete(v34);
            v14 = a3[2];
          }
        }

        else
        {
          *v8 = v17;
          v8[1] = a4;
          v18 = v8 + 2;
        }

        a3[1] = v18;
        v35 = *v10 - v13;
        if (v18 >= v14)
        {
          v30 = *a3;
          v31 = v18 - *a3;
          v36 = (v31 >> 4) + 1;
          if (v36 >> 60)
          {
            sub_10028C64C();
          }

          if ((v14 - v30) >> 3 > v36)
          {
            v36 = (v14 - v30) >> 3;
          }

          if (v14 - v30 >= 0x7FFFFFFFFFFFFFF0)
          {
            v36 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v36)
          {
            sub_1003E5FE8(a3, v36);
          }

          v37 = v31 >> 4;
          v38 = (16 * (v31 >> 4));
          *v38 = v35;
          v38[1] = a4;
          goto LABEL_50;
        }

        *v18 = v35;
        v18[1] = a4;
        v8 = v18 + 2;
      }

LABEL_52:
      a3[1] = v8;
LABEL_53:
      v41 = v9 + 2;
      v9 += 3;
    }

    while (v41 != v5);
  }
}

void sub_1002F17A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F17E0(float64x2_t **a1, float64x2_t **a2, int a3, double *a4, double *a5)
{
  *a5 = -1.79769313e308;
  *a4 = 1.79769313e308;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *a1;
    v9 = a1[1];
    v10 = 1;
    if (!a3)
    {
      v10 = 0;
    }

    do
    {
      if (v8 == v9)
      {
LABEL_8:
        v13 = v5->f64[v10];
        v14 = *a5;
        if (*a5 < v13)
        {
          v14 = v5->f64[v10];
        }

        *a5 = v14;
        if (v13 >= *a4)
        {
          v13 = *a4;
        }

        *a4 = v13;
        v7 = 1;
      }

      else
      {
        v11 = v8;
        while (1)
        {
          v12 = vsubq_f64(*v11, *v5);
          if (vaddvq_f64(vmulq_f64(v12, v12)) - v11[1].f64[0] * v11[1].f64[0] >= 0.01)
          {
            break;
          }

          v11 = (v11 + 24);
          if (v11 == v9)
          {
            goto LABEL_8;
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return v7 & 1;
}

uint64_t sub_1002F2D4C(uint64_t result, char a2)
{
  *(result + 96) = 1;
  *(result + 97) = a2;
  return result;
}

uint64_t sub_1002F2D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002E892C(a1, a2);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  sub_1000FB724((v4 + 56), a2 + 56);
  return a1;
}

void sub_1002F328C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100BE169C(&a18);
  sub_1007BE994(v18);
  _Unwind_Resume(a1);
}

void sub_1002F32E4(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 6456) <= 0 && *(a1 + 6460) <= 0;
  if (v6 && !sub_1001E37A4((a1 + 6096)))
  {
    if (qword_1025D4630 != -1)
    {
      sub_101A18894();
    }

    v24 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#alsquery, skip, no location or spectator clients, and location request is not atypical", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A18914();
    }
  }

  else
  {
    if (a2[1] == 1)
    {
      v7 = sub_1002E9D94(*a2);
    }

    else
    {
      v7 = 0;
    }

    v8 = vabdd_f64(*(a1 + 6440), *(a1 + 6256));
    v39 = v7;
    if (v8 >= 4.0 || sub_1001E37A4((a1 + 6096)))
    {
      goto LABEL_19;
    }

    if (v7)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101A18894();
      }

      v9 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "proceed #alsquery eval due to 5GHz scan, since_last_query_secs, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A18B28(v8);
      }

LABEL_19:
      if (*a2 == *(a1 + 6504))
      {
        v10 = a2[1];
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_100189470((a1 + 6096)) | *(a1 + 6300);
      v46 = 0u;
      v47 = 0u;
      v48 = 1065353216;
      v12 = *(a1 + 6284);
      if (v12 || (v11 & 1) != 0)
      {
        for (i = *(*(a1 + 3264) + 16); i; i = *i)
        {
          *buf = i[2];
          sub_100188540(&v46, buf);
        }

        if (qword_1025D4630 != -1)
        {
          sub_101A188EC();
        }

        v14 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = *(&v47 + 1);
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#alsquery number of aps in scan history, %lu", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A188A8(buf);
          v63 = 134217984;
          *v64 = *(&v47 + 1);
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "HandleEvent::alsRequestResultPair CL::Wifi1::Policies::AlsQuery::HandleEvent::defaultAlsRequestLogicUsedWhenComputingLocation(const Input &, const std::optional<CLWifiService_Type::ScanType> &) const", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }
      }

      else if (&v46 != (a1 + 1232))
      {
        v48 = *(a1 + 1264);
        sub_100103B9C(&v46, *(a1 + 1248), 0);
      }

      if (sub_100103C94(a1 + 3312) && (sub_10018A9B8(a1 + 3312) & 1) == 0)
      {
        *buf = sub_10018D3FC(a1 + 3312);
        sub_100188540(&v46, buf);
      }

      v15 = *(a1 + 1216);
      v16 = *(a1 + 1256);
      if (*(a1 + 3256))
      {
        v17 = "alwayson";
      }

      else
      {
        v17 = "emergency";
      }

      if ((*(a1 + 3256) | v11))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 != 0;
        if (v16)
        {
          v17 = "nonstandard";
        }

        else
        {
          v17 = "allknown";
        }

        if (!v12 && v16)
        {
          if (*(a1 + 6476) == 1 && *(a1 + 1572))
          {
            v18 = 0;
            v17 = "watch";
          }

          else if (*(a1 + 1596))
          {
            v18 = 0;
            v17 = "personalized_wifi1";
          }

          else if (*(a1 + 1597))
          {
            v18 = 1;
            v17 = "unknown_associated_ap";
          }

          else if (*(a1 + 1632))
          {
            v18 = 0;
            v17 = "sufficient";
          }

          else if (sub_1001883B8((a1 + 6096)) || sub_1001E3C20((a1 + 6096)))
          {
            v18 = 0;
            v17 = "cpi";
          }

          else if (*(a1 + 1436) < 0.0 || *(a1 + 1572) < 2u || v15 < v16)
          {
            if (v15)
            {
              v30 = v10;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              v18 = 0;
              v17 = "defer5Ghz";
            }

            else
            {
              v18 = v15 < 4;
              if (v15 >= 4)
              {
                v17 = "default";
              }

              else
              {
                v17 = "unknownratio";
              }
            }
          }

          else
          {
            v18 = 0;
            v17 = "knownratio";
          }
        }
      }

      if (qword_1025D4630 != -1)
      {
        sub_101A188EC();
      }

      v19 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *&buf[4] = v18;
        *&buf[8] = 2080;
        *&buf[10] = v17;
        *&buf[18] = 1024;
        *&buf[20] = v11 & 1;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#alsquery, do_query, %d, reason, %s, E911, %d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A188A8(buf);
        v63 = 67109634;
        *v64 = v18;
        *&v64[4] = 2080;
        *&v64[6] = v17;
        v65 = 1024;
        LODWORD(v66) = v11 & 1;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "HandleEvent::alsRequestResultPair CL::Wifi1::Policies::AlsQuery::HandleEvent::defaultAlsRequestLogicUsedWhenComputingLocation(const Input &, const std::optional<CLWifiService_Type::ScanType> &) const", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      if (qword_1025D4630 != -1)
      {
        sub_101A188EC();
      }

      v20 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 6284);
        v22 = *(a1 + 1296);
        *buf = 67241730;
        *&buf[4] = v18;
        *&buf[8] = 2082;
        *&buf[10] = v17;
        *&buf[18] = 2050;
        *&buf[20] = *(&v47 + 1);
        *&buf[28] = 1026;
        *&buf[30] = v21;
        v53 = 2050;
        v54 = v15;
        v55 = 2050;
        v56 = v16;
        v57 = 2050;
        __p = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WifiFlow, alsrequest, %{public}d, %{public}s, aps, %{public}lu, type, %{public}d, vni, %{public}ld, %{public}ld, %{public}ld", buf, 0x40u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A188A8(buf);
        v32 = *(a1 + 6284);
        v33 = *(a1 + 1296);
        v63 = 67241730;
        *v64 = v18;
        *&v64[4] = 2082;
        *&v64[6] = v17;
        v65 = 2050;
        v66 = *(&v47 + 1);
        v67 = 1026;
        v68 = v32;
        v69 = 2050;
        v70 = v15;
        v71 = 2050;
        v72 = v16;
        v73 = 2050;
        v74 = v33;
        v34 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "HandleEvent::alsRequestResultPair CL::Wifi1::Policies::AlsQuery::HandleEvent::defaultAlsRequestLogicUsedWhenComputingLocation(const Input &, const std::optional<CLWifiService_Type::ScanType> &) const", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      if (!v18)
      {
        LOBYTE(v63) = 0;
        v76 = 0;
        sub_1002F40B4(buf, &v63);
        sub_1002F40B4(a3, buf);
        *(a3 + 88) = 0;
        *(a3 + 112) = 0;
        if (v60 == 1)
        {
          if (v59 < 0)
          {
            operator delete(__p);
          }

          sub_1004906DC(buf);
        }

        goto LABEL_112;
      }

      LOBYTE(v63) = 0;
      v76 = 0;
      v23 = *(a1 + 6284);
      if (v39)
      {
        sub_10000EC00(buf, v17);
        v43 = 2;
        if ((buf[23] & 0x80000000) != 0)
        {
LABEL_91:
          sub_100007244(&v44, *buf, *&buf[8]);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          goto LABEL_93;
        }
      }

      else
      {
        sub_10000EC00(buf, v17);
        v43 = 1;
        if ((buf[23] & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      v44 = *buf;
      v45 = *&buf[16];
LABEL_93:
      sub_100103020(v42, &v46);
      sub_100BE1700(buf, v42, v23 == 0, v23 != 1, &v43);
      sub_100BE149C(&v63, buf);
      if (v59 < 0)
      {
        operator delete(__p);
      }

      sub_1004906DC(buf);
      sub_1004906DC(v42);
      if (qword_1025D4630 != -1)
      {
        sub_101A188EC();
      }

      v27 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v28 = *(&v47 + 1);
        sub_1009ED844(&v43, v49);
        v29 = SHIBYTE(v49[2]) >= 0 ? v49 : v49[0];
        *buf = 134218754;
        *&buf[4] = v28;
        *&buf[12] = 1024;
        *&buf[14] = v23 == 0;
        *&buf[18] = 1024;
        *&buf[20] = v23 != 1;
        *&buf[24] = 2082;
        *&buf[26] = v29;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#alsquery, create_request, %lu, use_cache, %d, query_nearbys, %d, config, %{public}s", buf, 0x22u);
        if (SHIBYTE(v49[2]) < 0)
        {
          operator delete(v49[0]);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A188A8(buf);
        v35 = *(&v47 + 1);
        sub_1009ED844(&v43, v40);
        if (v41 >= 0)
        {
          v36 = v40;
        }

        else
        {
          v36 = v40[0];
        }

        LODWORD(v49[0]) = 134218754;
        *(v49 + 4) = v35;
        WORD2(v49[1]) = 1024;
        *(&v49[1] + 6) = v23 == 0;
        WORD1(v49[2]) = 1024;
        HIDWORD(v49[2]) = v23 != 1;
        v50 = 2082;
        v51 = v36;
        v37 = _os_log_send_and_compose_impl();
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "HandleEvent::alsRequestResultPair CL::Wifi1::Policies::AlsQuery::HandleEvent::defaultAlsRequestLogicUsedWhenComputingLocation(const Input &, const std::optional<CLWifiService_Type::ScanType> &) const", "%s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      sub_10000EC00(v49, v17);
      sub_1000FA2C8(buf, &v63);
      v61 = *v49;
      v62 = v49[2];
      memset(v49, 0, sizeof(v49));
      sub_1002F40B4(a3, buf);
      *(a3 + 88) = v61;
      *(a3 + 104) = v62;
      v62 = 0;
      v61 = 0uLL;
      *(a3 + 112) = 1;
      if (v60)
      {
        if (v59 < 0)
        {
          operator delete(__p);
        }

        sub_1004906DC(buf);
      }

      if (SHIBYTE(v49[2]) < 0)
      {
        operator delete(v49[0]);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
      }

LABEL_112:
      if (v76 == 1)
      {
        if (v75 < 0)
        {
          operator delete(v74);
        }

        sub_1004906DC(&v63);
      }

      v26 = &v46;
LABEL_117:
      sub_1004906DC(v26);
      return;
    }

    if (qword_1025D4630 != -1)
    {
      sub_101A18894();
    }

    v25 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "blocking #alsquery, too soon, since_last_query_secs, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A18A18(v8);
    }
  }

  LOBYTE(v63) = 0;
  v76 = 0;
  sub_1002F40B4(buf, &v63);
  sub_1002F40B4(a3, buf);
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  if (v60 == 1)
  {
    if (v59 < 0)
    {
      operator delete(__p);
    }

    sub_1004906DC(buf);
  }

  if (v76 == 1)
  {
    if (v75 < 0)
    {
      operator delete(v74);
    }

    v26 = &v63;
    goto LABEL_117;
  }
}